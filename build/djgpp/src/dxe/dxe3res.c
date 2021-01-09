/* Copyright (C) 2015 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2013 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2003 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2003 Borca Daniel <dborca@yahoo.com>
 * Copyright (C) 2000 Andrew Zabolotny <bit@eltech.ru>
 * Partly based on work by Charles Sandmann and DJ Delorie.
 * Usage of this library is not restricted in any way.
 * ABSOLUTELY no warranties.  Contributed to the DJGPP project.
 */

#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../../include/sys/dxe.h"

#define VERSION "1.0"

#define IS_SLASH(path)          (((path) == '/') || ((path) == '\\'))
#define IS_DIR_SEPARATOR(path)  (IS_SLASH(path) || ((path) == ':'))

#define CLEANUP(code)  do {rv = (code); goto cleanup;} while(0)

#ifdef __DJGPP__
#include <io.h>
#define ACCESS(f) (_chmod(f, 0) != -1)
#else
#include <unistd.h>
#define ACCESS(f) (access(f, R_OK) == 0)
#endif



typedef struct {
  int n, max;
  char **t;
} symset;

/* Exported symbols table entry */
typedef struct
{
  unsigned long offset;
  char name [1];                /* expanded as needed */
} __attribute__((packed)) exp_table_entry;

/* Unresolved symbols table entry */
typedef struct
{
  unsigned short n_rel_relocs;
  unsigned short n_abs_relocs;
  char name [1];                /* expanded as needed */
} __attribute__((packed)) unres_table_entry;



static struct {
  const char *myself;
  const char *outfile;
} opt = {
  NULL,
  NULL
};



/* Desc: return the filespec's base name (w/o extension)
 *
 * In  : conversion flag (=0 unchanged, >0 uppercase, <0 lowercase), filespec
 * Out : static string
 *
 * Note: non-alphanumeric characters are converted to `_'
 */
static char *base_name(int convert, const char *path)
{
  char *scan, *dot;
  static char p[FILENAME_MAX];

  scan = strchr(path, 0);
  while ((scan > path) && !IS_DIR_SEPARATOR(scan[-1]))
    scan--;

  scan = dot = strcpy(p, scan);

  while (*dot == '.')
    dot++;

  if ((dot = strrchr(dot, '.')) != NULL)
    *dot = '\0';

  while (*scan)
  {
    char c = *scan;

    if (convert < 0)
      *scan = tolower(c);
    else if (convert > 0)
      *scan = toupper(c);

    if (!isalnum(c))
      *scan = '_';
    scan++;
  }

  return p;
}



/* Desc: qSort comparator
 *
 * In  : 1st string, 2nd string
 * Out : compare result
 *
 * Note: -
 */
static int cmp(const void *e1, const void *e2)
{
  return strcmp(*(const char * const *)e1, *(const char * const *)e2);
}



/* Desc: eliminate unnecessary symbols from unresolved list
 *
 * In  : unresolveds, exports
 * Out : -
 *
 * Note: -
 */
static void sift(symset *u, symset *e)
{
  int i, j;

  for (i = 0; i < u->n; i = j)
  {
    for (j = i + 1; (j < u->n) && !strcmp(u->t[i], u->t[j]); j++)
      u->t[j] = NULL;
    if (bsearch(&u->t[i], e->t, e->n, sizeof(char *), cmp) != NULL)
      u->t[i] = NULL;
  }
}



/* Desc: build export file
 *
 * In  : out file handle, modules, unresolveds
 * Out : -
 *
 * Note: -
 */
static void dump(FILE *f, symset *m, symset *u)
{
  int i;

  fprintf(f, "#include <sys/dxe.h>\n");

  for (i = 0; i < u->n; i++)
  {
    if (u->t[i] != NULL)
      fprintf(f, "\nextern_asm(%s);", u->t[i]);
  }

  fprintf(f, "\n\nDXE_EXPORT_TABLE_AUTO (");
  for (i = 0; i < m->n; i++)
    fprintf(f, "%s_%s", i ? "" : "___dxe_eta__", base_name(-1, m->t[i]));

  fprintf(f, ")\n");
  for (i = 0; i < u->n; i++)
  {
    if (u->t[i] != NULL)
      fprintf(f, "\tDXE_EXPORT_ASM (%s)\n", u->t[i]);
  }

  fprintf(f, "DXE_EXPORT_END\n");
}



/* Desc: grow a symset by the specified amount
 *
 * In  : symset, increment
 * Out : 0 if success
 *
 * Note: touches `errno'; symset is expanded only if necessary
 */
static int growtable(symset *s, int adjust)
{
  if ((s->n + adjust) > s->max)
  {
    if ((s->t = (char **)realloc(s->t, (s->max = s->n + adjust + 1024) * sizeof(char *))) == NULL)
    {
      errno = ENOMEM;
      return -1;
    }
  }

  return 0;
}



/* Desc: parse modtable, and extract unresolveds and exports
 *
 * In  : DXE3 header, modtable, unresolveds, exports
 * Out : 0 if success
 *
 * Note: -
 */
static int parse(const dxe3_header *dxehdr, char *scan, symset *u, symset *e)
{
  int i;

  if (growtable(e, dxehdr->n_exp_syms) != 0)
    return -1;

  for (i = 0; i < dxehdr->n_exp_syms; i++)
  {
    exp_table_entry *ete = (exp_table_entry *)scan;
    e->t[e->n++] = ete->name;
    scan = strchr(ete->name, 0) + 1;
  }

  if (growtable(u, dxehdr->n_unres_syms) != 0)
    return -1;

  for (i = 0; i < dxehdr->n_unres_syms; i++)
  {
    unres_table_entry *ute = (unres_table_entry *)scan;
    u->t[u->n++] = ute->name;
    scan = strchr(ute->name, 0) + 1 + sizeof(LONG32) * (ute->n_rel_relocs + ute->n_abs_relocs);
  }

  return 0;
}



/* Desc: check for valid DXE signature
 *
 * In  : magic
 * Out : 3 for DXE3 and 0 if unrecognized
 *
 * Note: touches `errno'
 */
static int isdxe(dxe3_header *dh)
{
  if ((dh->magic == DXE_MAGIC) && (dh->element_size == -1))
    return 3;
  else
  {
    errno = ENOEXEC;
    return 0;
  }
}



/* Desc: read from file
 *
 * In  : buffer, number of bytes, file ptr, file offset
 * Out : 0 if failure
 *
 * Note: touches `errno'
 */
static size_t readf(void *buffer, size_t bytes, FILE *f, long offset)
{
  fseek(f, offset, SEEK_SET);
  if (fread(buffer, 1, bytes, f) == bytes)
    return 1;
  else
  {
    errno = EIO;
    return 0;
  }
}



/* Desc: fetch exp_table, unres_table, dep_table and DXE3 header
 *
 * In  : module name, ptr to DXE3 header
 * Out : newly allocated modtable
 *
 * Note: -
 */
static char *gettables(const char *filename, dxe3_header *dxehdr)
{
  FILE *f;
  char *table;
#ifdef __DJGPP__
  char *scan;
  char tempfn[FILENAME_MAX]; /* Temporary filename */

  /* Find the dynamic module along the LD_LIBRARY_PATH */
  if (!ACCESS(filename))
  {
    char *nextscan;
    size_t fnl = strlen(filename) + 1;

    /* LD_LIBRARY_PATH is scanned only for relative paths */
    if (!IS_DIR_SEPARATOR(filename[0]))
    {
      for (scan = getenv("LD_LIBRARY_PATH"); scan && *scan; scan = nextscan + strspn(nextscan, "; \t"))
      {
        char *name;
        nextscan = strchr(scan, ';');
        if (!nextscan) nextscan = strchr (scan, 0);
        if (nextscan - scan > FILENAME_MAX - 12)
          continue;
        memcpy(tempfn, scan, nextscan - scan);
        name = tempfn + (nextscan - scan);
        if (!IS_SLASH(name[-1]))
          *name++ = '/';
        memcpy(name, filename, fnl);
        if (ACCESS(tempfn))
        {
          filename = tempfn;
          goto found;
        }
      }
    }
    errno = ENOENT;
    return NULL;
  }
found:
#endif /* __DJGPP__ */
  if ((f = fopen(filename, "rb")) != NULL)
  {
    if (readf(dxehdr, sizeof(dxe3_header), f, 0) && (isdxe(dxehdr) == 3))
    {
      if ((table = malloc(dxehdr->exp_size + dxehdr->unres_size + dxehdr->dep_size)) != NULL)
      {
        if (readf(table, dxehdr->exp_size, f, dxehdr->exp_table)
            && readf(table + dxehdr->exp_size, dxehdr->unres_size, f, dxehdr->unres_table)
            && readf(table + dxehdr->exp_size + dxehdr->unres_size, dxehdr->dep_size, f, dxehdr->dep_table))
        {
          fclose(f);
          return table;
        }
        free(table);
      }
      else
        errno = ENOMEM;
    }
    fclose(f);
  }

  return NULL;
}



/* Desc: module processor
 *
 * In  : first entry, modules, unresolveds, exports, modtables
 * Out : 0 if success
 *
 * Note: -
 */
static int process(int idx, symset *m, symset *u, symset *e, symset *t)
{
  int i;
  dxe3_header dxehdr;

  if (growtable(t, m->n - idx) != 0)
  {
    perror("t_set");
    return 2;
  }

  for (i = idx, idx = m->n; i < idx; i++)
  {
    if ((t->t[t->n]=gettables(m->t[i], &dxehdr)) == NULL)
    {
      perror(m->t[i]);
      return 3;
    }
    if (parse(&dxehdr, t->t[t->n++], u, e) != 0)
    {
      perror("symbols");
      return 2;
    }

    if (dxehdr.n_deps)
    {
      int j;
      char *scan = t->t[t->n - 1] + dxehdr.exp_size + dxehdr.unres_size;
      for (j = 0; j < dxehdr.n_deps; j++)
      {
        int k, found = 0;
        for (k = 0; k < m->n; k++)
        {
          if (!strcmp(m->t[k], scan))
          {
            found = !0;
            break;
          }
        }
        if (!found)
        {
          if (growtable(m, 1) != 0)
          {
            perror("m_set");
            return 2;
          }
          m->t[m->n++] = scan;
        }
        scan = strchr(scan, 0) + 1;
      }
      if ((j = process(idx, m, u, e, t)) != 0)
        return j;
    }
  }

  return 0;
}



/* Desc: resolver
 *
 * In  : command-line options
 * Out : 0 if success
 *
 * Note: -
 */
static int resolve(int argc, char **argv)
{
  int i, rv;
  FILE *f;
  symset m_set, u_set, e_set, t_set;

  m_set.t = u_set.t = e_set.t = t_set.t = NULL;
  m_set.n = m_set.max = u_set.n = u_set.max = e_set.n = e_set.max = t_set.n = t_set.max = 0;

  for (i = 0; i < argc; i++)
  {
    if (!strcmp(argv[i], "-o"))
    {
      if ((i == (argc - 1)) || (opt.outfile != NULL))
      {
        fprintf(stderr, "%s: bad options (-h for help)\n", opt.myself);
        CLEANUP(1);
      }
      else
      {
        opt.outfile = argv[++i];
        continue;
      }
    }

    if (growtable(&m_set, 1) != 0)
    {
      perror("m_set");
      CLEANUP(2);
    }

    m_set.t[m_set.n++] = argv[i];
  }

  if ((rv = process(0, &m_set, &u_set, &e_set, &t_set)) != 0)
    CLEANUP(rv);

  qsort(u_set.t, u_set.n, sizeof(char *), cmp);
  qsort(e_set.t, e_set.n, sizeof(char *), cmp);
  sift(&u_set, &e_set);

  if (opt.outfile == NULL)
    f = stdout;
  else if ((f = fopen(opt.outfile, "w")) == NULL)
  {
    perror(opt.outfile);
    CLEANUP(4);
  }
  dump(f, &m_set, &u_set);
  if (opt.outfile != NULL)
    fclose(f);

  rv = 0;

cleanup:
  if (m_set.t != NULL) free(m_set.t);
  if (u_set.t != NULL) free(u_set.t);
  if (e_set.t != NULL) free(e_set.t);
  for (i = 0; i < t_set.n; i++)
    free(t_set.t[i]);
  if (t_set.t != NULL) free(t_set.t);

  return rv;
}



/* Desc: main
 *
 * In  : command-line options
 * Out : 0 = success
 *       1 = bad options
 *       2 = not enough memory
 *       3 = module error
 *       4 = write error
 *
 * Note: -
 */
int main(int argc, char **argv)
{
  opt.myself = argv[0];

  switch (argc)
  {
    case 1:
      fprintf(stderr, "%s: bad options (-h for help)\n", opt.myself);
      return 1;
    case 2:
      if (!strcmp(argv[1], "-h"))
      {
        printf("DXE3 resolver v" VERSION " (c) Borca Daniel\nUsage: %s [-o outfile] modules ...\n\n-o outfile\tDefine the name of output C file\n", base_name(0, opt.myself));
        return 0;
      }
    default:
      return resolve(argc - 1, &argv[1]);
  }
}
