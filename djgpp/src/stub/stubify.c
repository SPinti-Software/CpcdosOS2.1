/* Copyright (C) 2003 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1999 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1996 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 1995 DJ Delorie, see COPYING.DJ for details */
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <string.h>
#include <unistd.h>
#ifdef __DJGPP__
#include <io.h>
#include <libc/dosio.h>
#include <go32.h>
#include <dpmi.h>
#include <errno.h>
#endif

#ifdef __DJGPP__
#ifndef __tb_size
#define __tb_size _go32_info_block.size_of_transfer_buffer
#endif
#endif

#ifndef O_BINARY
#define O_BINARY 0
#endif

#ifndef SEEK_SET
#define SEEK_SET 0
#endif

/* Option string that marks what to send to stubedit (stub options). */
#define STUB_OPTIONS "-stubparams="

const unsigned char stub_bytes[] = {
#include "stub.h"
};

#define v_printf if(verbose)printf
int verbose=0;

char *generate=NULL;
char *stubparams=NULL;

unsigned long
get32(unsigned char *ptr)
{
  return ptr[0] | (ptr[1]<<8) | (ptr[2]<<16) | (ptr[3]<<24);
}

unsigned short
get16(unsigned char *ptr)
{
  return ptr[0] | (ptr[1]<<8);
}

void stubedit(const char *filename)
{
  if( stubparams )
  {
    int i;
    char *stubedit_str = malloc( sizeof("stubedit ")-1
			   +strlen(filename)
			   +1 /* space */
			   +strlen(stubparams)
			   +1 ); /* For NULL. */
    if( stubedit_str )
    {
      sprintf(stubedit_str, "stubedit %s %s",
	      filename, stubparams);
      v_printf("Running '%s'\n", stubedit_str);
      i = system(stubedit_str);
      if( i )
      {
	fprintf(stderr, "%s: call to stubedit failed"
		"(stubedit exit status was %d)\n", filename, i);
      }
      
      free( stubedit_str );
    }
    else
    {
      fprintf(stderr, "%s: failed using %s (out of memory)\n", filename, 
	      STUB_OPTIONS);
    }
  }
}

void coff2exe(char *fname)
{
  char ifilename[256];
  char ofilename[256];
  int ifile;
  int ofile;
  char *ofname, *ofext;
  char buf[4096];
  int rbytes, used_temp = 0, i, n;
  long coffset=0;
  unsigned char filehdr_buf[20];
  int max_file_size = 0;
  int coff_file_size = 0;
  int drop_last_four_bytes = 0;

  strcpy(ifilename, fname);
  strcpy(ofilename, fname);
  ofext = 0;
  for (ofname=ofilename; *ofname; ofname++)
  {
    if (strchr("/\\:", *ofname))
      ofext = 0;
    if (*ofname == '.')
      ofext = ofname;
  }
  if (ofext == 0)
    ofext = ofilename + strlen(ofilename);
  strcpy(ofext, ".exe");
  if (access(ofilename, 0) == 0)
    for (ofile=0; ofile<999; ofile++)
    {
      used_temp = 1;
      sprintf(ofext, ".%03d", ofile);
      if (access(ofilename, 0))
	break;
    }
  else
    used_temp = 0;

  ifile = open(ifilename, O_RDONLY|O_BINARY);
  if (ifile < 0)
  {
    perror(fname);
    return;
  }
  while (1)
  {
    lseek(ifile, coffset, SEEK_SET);
    read(ifile, buf, 6);
    if (buf[0] == 'M' && buf[1] == 'Z') /* stubbed already, skip stub */
    {
      int blocks = (unsigned char)buf[4] + (unsigned char)buf[5] * 256;
      int partial = (unsigned char)buf[2] + (unsigned char)buf[3] * 256;
      coffset += blocks * 512;
      if (partial)
	coffset += partial - 512;
    }
    else if (buf[0] == 0x4c && buf[1] == 0x01) /* it's a COFF */
    {
      break;
    }
    else
    {
      fprintf(stderr, "Warning: input file is neither COFF nor stubbed COFF\n");
      break;
    }
  }

  coff_file_size = lseek(ifile, 0, SEEK_END) - coffset;
  lseek(ifile, coffset, SEEK_SET);

  read(ifile, filehdr_buf, 20); /* get the COFF header */
  lseek(ifile, get16(filehdr_buf+16), SEEK_CUR); /* skip optional header */
  n = get16(filehdr_buf + 2);
  for (i=0; i<n; i++) /* for each COFF section */
  {
    int addr, size, flags;
    unsigned char coffsec_buf[40];
    read(ifile, coffsec_buf, 40);
    size = get32(coffsec_buf+16);
    addr = get32(coffsec_buf+20);
    flags = get32(coffsec_buf+36);
    if (flags & 0x60) /* text or data */
    {
      int maybe_file_size = size + addr;
      if (max_file_size < maybe_file_size)
	max_file_size = maybe_file_size;
    }
  }
  if (coff_file_size == max_file_size + 4)
    /* it was built with "gcc -s" and has four too many bytes */
    drop_last_four_bytes = 1;

  lseek(ifile, coffset, SEEK_SET);

  ofile = open(ofilename, O_WRONLY|O_CREAT|O_TRUNC|O_BINARY, 0777);
  if (ofile < 0)
  {
    perror(ofilename);
    return;
  }
  v_printf("stubify: %s -> %s", ifilename, ofilename);
  if (used_temp)
  {
    strcpy(ifilename, ofilename);
    strcpy(ofext, ".exe");
    v_printf(" -> %s", ofilename);
  }
  v_printf("\n");

  write(ofile, stub_bytes, sizeof(stub_bytes));
  
#ifdef __DJGPP__
  /* if 0 bytes are read (or an error occurs, the loop will be broken from */
  while (1) {
    __dpmi_regs r;
    int wb;
    /* bypass the normal read routine to avoid the unnecessary copying of the
     * file contents into extended memory (the data is not actually being
     * used, only copied from one file to another, and so easy access from gcc
     * compiled code is not needed).
     */
    r.x.ax = 0x3f00; /* dos read from file handle function */
    r.x.bx = ifile;
    r.x.cx = __tb_size; /* number of bytes to read */
    r.x.dx = __tb & 15; /* transfer buffer offset */
    r.x.ds = __tb / 16; /* transfer buffer segment */
    __dpmi_int(0x21, &r);
    if (r.x.flags & 1)
      errno = __doserr_to_errno(r.x.ax);
    if ((rbytes=(r.x.flags & 1) ? -1 : r.x.ax) <= 0)
      break;
#else
  while ((rbytes=read(ifile, buf, 4096)) > 0)
  {
    int wb;
#endif

    if (drop_last_four_bytes && rbytes < 4096)
      rbytes -= 4;

#ifdef __DJGPP__
    /* bypass the normal write routine to avoid the unnecessary copying of the
     * file contents from extended memory.
     */
    r.x.ax = 0x4000; /* dos write to file handle function */
    r.x.bx = ofile;
    r.x.cx = rbytes; /* number of bytes to write */
    r.x.dx = __tb & 15; /* transfer buffer offset */
    r.x.ds = __tb / 16; /* transfer buffer segment */
    __dpmi_int(0x21, &r);
    wb = (r.x.flags & 1) ? -1 : r.x.ax;
    if (r.x.flags & 1)
      errno = __doserr_to_errno(r.x.ax);
#else
    wb = write(ofile, buf, rbytes);
#endif
    if (wb < 0)
    {
      perror(ofilename);
      close(ifile);
      close(ofile);
      unlink(ofilename);
      exit(1);
    }
    if (wb < rbytes)
    {
      fprintf(stderr, "%s: disk full\n", ofilename);
      close(ifile);
      close(ofile);
      unlink(ofilename);
      exit(1);
    }
  }

  close(ifile);
  close(ofile);

  if (used_temp)
  {
    unlink(ofilename);
#ifdef __DJGPP__
    if (_rename(ifilename, ofilename))
#else
    if (rename(ifilename, ofilename))
#endif
    {
      fprintf(stderr, "rename of %s to %s failed.\n", ifilename, ofilename);
      perror("The error was");
    }
  }

  stubedit(ofilename);
}

void print_help(void)
{
  fprintf(stderr, "Usage: stubify [-v] [-g] [%sparam[,param...] <program>\n"
	  "<program> may be COFF or stubbed .exe, and may be COFF with .exe extension.\n"
	  "Resulting file will have .exe\n"
	  "-v -> verbose\n"
	  "-g -> generate a stub\n"
	  "%sparam[,param...] -> pass param[ param...] to stubedit (commas are\n"
	  "      converted into spaces); see stubedit documentation for what param can be\n"
	  "\nThis program is NOT shareware or public domain.  It is copyrighted.\n"
	  "It is redistributable but only as part of a complete package.  If you\n"
	  "have a copy of this program, the place that you got it from is\n"
	  "responsible for making sure you are able to get its sources as well.\n",
	  STUB_OPTIONS, STUB_OPTIONS );
}

int main(int argc, char **argv)
{
  int i;

  while (argc > 1 && argv[1][0] == '-')
  {
    if (strcmp(argv[1], "-v")==0)
    {
      verbose = 1;
      argv++;
      argc--;
    }
    else if (strcmp(argv[1], "-g")==0)
    {
      if (argc < 2)
      {
	fprintf(stderr, "-g option requires file name\n");
	return 1;
      }
      generate = argv[2];
      argv += 2;
      argc -= 2;
    }
    else if (! strncmp(argv[1], STUB_OPTIONS, sizeof(STUB_OPTIONS)-1))
    {
      int j = 0;
      i = sizeof(STUB_OPTIONS)-1;
      stubparams = malloc( strlen(&(argv[1][i])) + 1 );
      while (argv[1][i])
      {
	if (argv[1][i] == ',')
	{
	  stubparams[j] = ' ';
	}
	else
	{
	  stubparams[j] = argv[1][i];
	}
	i++;
	j++;
      }
      stubparams[j] = 0;
      argv++;
      argc--;
    }
    else
    {
      fprintf(stderr, "Unknow option: %s\n", argv[1]);
      print_help();
      return 1;
    }
  }
	
  v_printf("stubify for djgpp V2.X executables, Copyright (C) 1995-2003 DJ Delorie\n");
  if (generate)
  {
    char ofilename[256], *ofname, *ofext=0;
    int ofile;

    strcpy(ofilename, generate);
    for (ofname=ofilename; *ofname; ofname++)
    {
      if (strchr("/\\:", *ofname))
	ofext = 0;
      if (*ofname == '.')
	ofext = ofname;
    }
    if (ofext == 0)
      ofext = ofilename + strlen(ofilename);
    strcpy(ofext, ".exe");
    
    ofile = open(ofilename, O_WRONLY|O_CREAT|O_TRUNC|O_BINARY, 0666);
    if (ofile < 0)
    {
      fprintf(stderr, "Cannot open output file to generate\n");
      perror(ofilename);
      return 1;
    }
    v_printf("stubify: generate %s\n", generate);

    write(ofile, stub_bytes, sizeof(stub_bytes));
    close(ofile);
    stubedit(ofilename);
  }
  else
  {
    if (argc < 2)
    {
      print_help();
      return 1;
    }

    for (i=1; i<argc; i++)
      coff2exe(argv[i]);
  }

  return 0;
}

