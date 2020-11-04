/* Copyright (C) 2015 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2011 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2003 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2001 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1998 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1997 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1996 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1995 DJ Delorie, see COPYING.DJ for details */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

#ifdef __DJGPP__
#include <io.h>
#endif

#ifndef SEEK_SET
#define SEEK_SET 0
#endif

#include "../../include/stubinfo.h"

unsigned long size_of_stubinfo = 0;
char *client_stub_info;
static unsigned long exe_start = 0;
static unsigned char buf[4];

void find_info(char *filename)
{  
  FILE *f;
  unsigned char header[4];
  unsigned char test_magic[16];

  f = fopen(filename, "rb");
  if (f == 0)
  {
    char buf[100];
    sprintf(buf, "Fatal error in stubedit reading %s", filename);
    perror(buf);
    exit(1);
  }

  if (fseek(f, 8L, SEEK_SET) != 0 ||
      fread(&buf, 1, 2, f) != 2)
  {
    printf("Error: %s could not read\n", filename);
    exit(1);
  }

  exe_start = buf[0]*16 + buf[1]*16*256;

  if (fseek(f, exe_start, SEEK_SET) != 0 ||
      fread(test_magic, 1, 16, f) != 16 ||
      memcmp(test_magic, "go32stub", 8) != 0)
  {
    printf("Error: %s is not a go32 v2.0 or higher stub\n", filename);
    exit(1);
  }

  fread(header, 4, 1, f);
  size_of_stubinfo = (header[0]) | (header[1]<<8)
                   | (header[2])<<16 | (header[3]<<24);

  fseek(f, exe_start, SEEK_SET);
  client_stub_info = (char *)malloc(size_of_stubinfo);
  fread(client_stub_info, size_of_stubinfo, 1, f);

  fclose(f);
  return;
}

void store_info(char *filename)
{
  FILE *f;
  f = fopen(filename, "r+b");
  if (f == 0)
  {
    char buf[100];
    sprintf(buf, "Fatal error in stubedit writing %s", filename);
    perror(buf);
    exit(1);
  }
  fseek(f, exe_start, SEEK_SET);
  fwrite(client_stub_info, 1, size_of_stubinfo, f);
  fclose(f);
}

char *pose_question(char *question, char *default_answer)
{
  static char response[200];
  char *ptr;
  printf("%s ? [%s] ", question, default_answer);
  fflush(stdout);
  ptr = fgets(response, sizeof(response), stdin);
  if (!ptr)
    return 0;
  for (; *ptr; ++ptr)
  {
    if (*ptr == '\n')
    {
      *ptr = '\0';
      break;
    }
  }
  if (response[0] == '\0')
    return 0;
  return response;
}

typedef void (*PerFunc)(void *address_of_field, char *buffer, ...);

void str_v2s(void *addr, char *buf, int len)
{
  if (*(char *)addr == 0)
    strcpy(buf, "\"\"");
  else
  {
    buf[len] = 0;
    strncpy(buf, (char *)addr, len);
  }
}

void str_s2v(void *addr, char *buf, int len)
{
  if (strcmp(buf, "\"\"") == 0)
    *(char *)addr = 0;
  else
  {
    ((char *)addr)[len-1] = 0;
    strncpy((char *)addr, buf, len);
  }
}

void str_v2s8(void *addr, char *buf)
{
  str_v2s(addr, buf, 8);
}

void str_s2v8(void *addr, char *buf)
{
  str_s2v(addr, buf, 8);
}

void str_v2s16(void *addr, char *buf)
{
  str_v2s(addr, buf, 16);
}

void str_s2v16(void *addr, char *buf)
{
  str_s2v(addr, buf, 16);
}

void num_v2s(void *addr, char *buf)
{
  unsigned char *c = (unsigned char *)addr;
  unsigned long v = c[0] + (c[1]<<8) + (c[2]<<16) + (c[3]<<24);
  sprintf(buf, "%#lx (%ldk)", v, v / 1024L);
}

void num_s2v(void *addr, char *buf, int max)
{
  unsigned char *c = (unsigned char *)addr;
  unsigned long r = 0;
  char s = 0;
  sscanf(buf, "%li%c", &r, &s);
  switch (s)
  {
    case 'k':
    case 'K':
      r *= 1024L;
      break;
    case 'm':
    case 'M':
      r *= 1048576L;
      break;
  }
  if (max && r > (unsigned long)max) {
    printf("Warning: %ld reduced to %d\n", r, max);
    r = max;
  }
  c[0] = r;
  c[1] = r>>8;
  c[2] = r>>16;
  c[3] = r>>24;
}

struct {
  char *short_name;
  char *long_name;
  unsigned long offset_of_field;
  PerFunc val2string;
  PerFunc string2val;
  int max;
} per_field[] = {
  {
    "minstack",
    "Minimum amount of stack space (bytes/K/M)",
    STUBINFO_MINSTACK,
    (PerFunc)num_v2s, (PerFunc)num_s2v, 0
  },
  {
    "bufsize",
    "Size of real-memory transfer buffer (bytes/K/M)",
    STUBINFO_MINKEEP,
    (PerFunc)num_v2s, (PerFunc)num_s2v, 0xfe00
  },
  {
    "runfile",
    "Base name of file to actually run (max 8 chars, \"\"=self)",
    STUBINFO_BASENAME,
    (PerFunc)str_v2s8, (PerFunc)str_s2v8, 0
  },
  {
    "argv0",
    "Value to pass as file component of argv[0] (max 16 chars, \"\"=default)",
    STUBINFO_ARGV0,
    (PerFunc)str_v2s16, (PerFunc)str_s2v16, 0
  },
  {
    "dpmi",
    "Program to load to provide DPMI services (if needed)",
    STUBINFO_DPMI_SERVER,
    (PerFunc)str_v2s16, (PerFunc)str_s2v16, 0
  }
};

#define NUM_FIELDS (sizeof(per_field) / sizeof(per_field[0]))

#define HFORMAT "%-16s %s\n"

void give_help(void)
{
  size_t i;
  fprintf(stderr, "Usage: stubedit [-v] [-h] filename.exe [field=value . . . ]\n");
  fprintf(stderr, "-h = give help   -v = view info  field=value means set w/o prompt\n");
  fprintf(stderr, HFORMAT, "-field-", "-description-");

  for (i=0; i < NUM_FIELDS; i++)
    fprintf(stderr, HFORMAT, per_field[i].short_name, per_field[i].long_name);
  exit(1);
}

int main(int argc, char **argv)
{
  int view_only = 0;
  size_t i;
  int need_to_save;

  if (argc > 1 && strcmp(argv[1], "-h") == 0)
    give_help();

  if (argc > 1 && strcmp(argv[1], "-v") == 0)
  {
    view_only = 1;
    argc--;
    argv++;
  }

  if (argc < 2)
    give_help();

  find_info(argv[1]);

  if (view_only)
  {
    char buf[100];
    fprintf(stderr, HFORMAT, "-value-", "-field description-");
    for (i=0; i<NUM_FIELDS; i++)
    {
      if (per_field[i].offset_of_field < size_of_stubinfo)
      {
        per_field[i].val2string(client_stub_info + per_field[i].offset_of_field, buf);
        fprintf(stderr, HFORMAT, buf, per_field[i].long_name);
      }
    }
    exit(0);
  }

  if (argc > 2)
  {
    int got, got_any = 0;
    size_t f;
    char fname[100], fval[100];
    for (i=2; i < (size_t)argc; i++)
    {
      fname[0] = 0;
      fval[0] = 0;
      sscanf(argv[i], "%[^=]=%s", fname, fval);
      got = 0;
      for (f=0; f<NUM_FIELDS; f++)
      {
        if (strcmp(per_field[f].short_name, fname) == 0)
        {
          got = 1;
          got_any = 1;
          if (per_field[i].offset_of_field < size_of_stubinfo)
          {
            per_field[f].string2val(client_stub_info + per_field[f].offset_of_field, fval, per_field[f].max);
          }
          else
            fprintf(stderr, "Warning: This stub does not support field %s\n", fname);
        }
      }
      if (!got)
      {
        fprintf(stderr, "Error: %s is not a valid field name.\n", fname);
        give_help();
      }
    }
    if (got_any)
      store_info(argv[1]);
    return 0;
  }

  need_to_save = 0;
  for (i=0; i<NUM_FIELDS; i++)
  {
    char buf[100], *resp;
    if (per_field[i].offset_of_field < size_of_stubinfo)
    {
      per_field[i].val2string(client_stub_info + per_field[i].offset_of_field, buf);
      if ((resp = pose_question(per_field[i].long_name, buf)) != 0)
      {
        per_field[i].string2val(client_stub_info + per_field[i].offset_of_field, resp, per_field[i].max);
        need_to_save = 1;
      }
    }
  }
  if (need_to_save)
    store_info(argv[1]);

  return 0;
}
