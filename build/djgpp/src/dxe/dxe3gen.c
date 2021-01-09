/* Copyright (C) 2015 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2013 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2012 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2011 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2003 DJ Delorie, see COPYING.DJ for details */
/* Copyright (C) 2003 Borca Daniel <dborca@yahoo.com>
 * Copyright (C) 2000 Andrew Zabolotny <bit@eltech.ru>
 * Partly based on work by Charles Sandmann and DJ Delorie.
 * Usage of this library is not restricted in any way.
 * ABSOLUTELY no warranties.  Contributed to the DJGPP project.
 */

/*
    Program exit codes:
       0: o.k.
      -1: wrong command line
      -2: i/o error
      -3: unresolved symbols
      otherwise the exit code of GNU ld is returned
*/

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#if defined (__GNUC__) && (__GNUC__ > 2 || (__GNUC__ == 2 && __GNUC_MINOR__ >= 8))
# define __gnuc_extension__  __extension__
#else
# define __gnuc_extension__
#endif

#define DEBUG_SUPPORT_PRINT_SYMBOL_TABLE           0  /*  Prints coff symbols table entries.  Always commited as 0.  */
#define DEBUG_SUPPORT_PRINT_RELOCATION_DIRECTIVES  0  /*  Prints coff relocation directives.  Always commited as 0.  */

#if defined(DEBUG_SUPPORT_PRINT_SYMBOL_TABLE) && DEBUG_SUPPORT_PRINT_SYMBOL_TABLE == 1
# define DEBUG_PRINT_SYMBOL_TABLE_PROLOG()                                                   \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       printf("           e_value       e_scnum    e_sclass            symbol name\n"        \
              "-----------------------------------------------------------------------\n");  \
    })                                                                                       \
  )

# define DEBUG_PRINT_SYMBOL_TABLE_ENTRY(i, symbol_table_entry, symbol_name)                  \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       printf("[%3d]    0x%08lx    0x%08x    %7s    %02d    %s\n",                           \
              (i),                                                                           \
              (symbol_table_entry)[(i)].e_value,                                             \
              (symbol_table_entry)[(i)].e_scnum,                                             \
              (symbol_table_entry)[(i)].e_sclass == C_NULL    ? "C_NULL" :                   \
              (symbol_table_entry)[(i)].e_sclass == C_AUTO    ? "C_AUTO" :                   \
              (symbol_table_entry)[(i)].e_sclass == C_EXT     ? "C_EXT" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_STAT    ? "C_STAT" :                   \
              (symbol_table_entry)[(i)].e_sclass == C_REG     ? "C_REG" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_EXTDEF  ? "C_EXTDEF" :                 \
              (symbol_table_entry)[(i)].e_sclass == C_LABEL   ? "C_LABEL" :                  \
              (symbol_table_entry)[(i)].e_sclass == C_ULABEL  ? "C_ULABEL" :                 \
              (symbol_table_entry)[(i)].e_sclass == C_MOS     ? "C_MOS" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_ARG     ? "C_ARG" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_STRTAG  ? "C_STRTAG" :                 \
              (symbol_table_entry)[(i)].e_sclass == C_MOU     ? "C_MOU" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_UNTAG   ? "C_UNTAG" :                  \
              (symbol_table_entry)[(i)].e_sclass == C_TPDEF   ? "C_TPDEF" :                  \
              (symbol_table_entry)[(i)].e_sclass == C_USTATIC ? "C_USTATIC" :                \
              (symbol_table_entry)[(i)].e_sclass == C_ENTAG   ? "C_ENTAG" :                  \
              (symbol_table_entry)[(i)].e_sclass == C_MOE     ? "C_MOE" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_REGPARM ? "C_REGPARM" :                \
              (symbol_table_entry)[(i)].e_sclass == C_FIELD   ? "C_FIELD" :                  \
              (symbol_table_entry)[(i)].e_sclass == C_AUTOARG ? "C_AUTOARG" :                \
              (symbol_table_entry)[(i)].e_sclass == C_LASTENT ? "C_LASTENT" :                \
              (symbol_table_entry)[(i)].e_sclass == C_BLOCK   ? "C_BLOCK " :                 \
              (symbol_table_entry)[(i)].e_sclass == C_FCN     ? "C_FCN" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_EOS     ? "C_EOS" :                    \
              (symbol_table_entry)[(i)].e_sclass == C_FILE    ? "C_FILE" :                   \
              (symbol_table_entry)[(i)].e_sclass == C_LINE    ? "C_LINE" :                   \
              (symbol_table_entry)[(i)].e_sclass == C_ALIAS   ? "C_ALIAS" :                  \
              (symbol_table_entry)[(i)].e_sclass == C_HIDDEN  ? "C_HIDDEN" :                 \
              (symbol_table_entry)[(i)].e_sclass == C_EFCN    ? "C_EFCN" : "Unknown",        \
              (symbol_table_entry)[(i)].e_numaux,                                            \
              (symbol_name));                                                                \
    })                                                                                       \
  )

# define DEBUG_PRINT_SYMBOL_TABLE_EPILOG()                                                   \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       printf("\n");                                                                         \
    })                                                                                       \
  )
#else   /*  !DEBUG_SUPPORT_PRINT_SYMBOL_TABLE  */
# define DEBUG_PRINT_SYMBOL_TABLE_PROLOG()                                                   \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       (void)0;                                                                              \
    })                                                                                       \
  )

# define DEBUG_PRINT_SYMBOL_TABLE_ENTRY(i, symbol_table_entry, symbol_name)                  \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       (void)0;                                                                              \
    })                                                                                       \
  )

# define DEBUG_PRINT_SYMBOL_TABLE_EPILOG()                                                   \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       (void)0;                                                                              \
    })                                                                                       \
  )
#endif  /*  !DEBUG_SUPPORT_PRINT_SYMBOL_TABLE  */


#if defined(DEBUG_SUPPORT_PRINT_RELOCATION_DIRECTIVES) && DEBUG_SUPPORT_PRINT_RELOCATION_DIRECTIVES == 1
# define DEBUG_PRINT_RELOCATION_DIRECTIVE_PROLOG()                                           \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       printf("           r_vaddr   r_symndx    r_type\n"                                    \
              "------------------------------------------\n");                               \
    })                                                                                       \
  )

# define DEBUG_PRINT_RELOCATION_DIRECTIVE(i, relocation_directive)                           \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       printf("[%3d]    0x%08lX    %03ld    %6s\n",                                          \
              (i),                                                                           \
              (relocation_directive)[(i)].r_vaddr,                                           \
              (relocation_directive)[(i)].r_symndx,                                          \
              (relocation_directive)[(i)].r_type == RELOC_REL32 ? "RELOC_REL32" :            \
              (relocation_directive)[(i)].r_type == RELOC_ADDR32 ? "RELOC_ADDR32" :          \
              "Unknown");                                                                    \
    })                                                                                       \
  )

# define DEBUG_PRINT_RELOCATION_DIRECTIVE_EPILOG()                                           \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       printf("\n");                                                                         \
    })                                                                                       \
  )
#else   /*  !DEBUG_SUPPORT_PRINT_RELOCATION_DIRECTIVES  */
# define DEBUG_PRINT_RELOCATION_DIRECTIVE_PROLOG()                                           \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       (void)0;                                                                              \
    })                                                                                       \
  )

# define DEBUG_PRINT_RELOCATION_DIRECTIVE(i, relocation_directive)                           \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       (void)0;                                                                              \
    })                                                                                       \
  )

# define DEBUG_PRINT_RELOCATION_DIRECTIVE_EPILOG()                                           \
  (__gnuc_extension__                                                                        \
    ({                                                                                       \
       (void)0;                                                                              \
    })                                                                                       \
  )
#endif  /*  !DEBUG_SUPPORT_PRINT_RELOCATION_DIRECTIVES  */


/* Cross compile tool names */
#ifndef DXE_CC
#define DXE_CC  "gcc"
#endif
#ifndef DXE_AS
#define DXE_AS  "as"
#endif
#ifndef DXE_AR
#define DXE_AR  "ar"
#endif
#ifndef DXE_LD
#define DXE_LD  "ld"
#endif
#ifndef DXE_SC
#define DXE_SC  "dxe.ld"
#endif

#ifdef _POSIX_SOURCE
/* Linux violates POSIX.1 and defines this, but it shouldn't.. */
#undef _POSIX_SOURCE
#endif

/* Always include local copies of sys/dxe.h and coff.h because of
 * NATIVE_TYPES stuff. */
#include "../../include/sys/dxe.h"
#include "../../include/coff.h"

#define VERSION  "1.0.3"

#define TEMP_BASE    "dxe_tmp"       /* 7 chars, 1 char suffix */
#define TEMP_O_FILE  TEMP_BASE".o"
#define TEMP_S_FILE  TEMP_BASE".s"

#define VALID_RELOC(r)  ((r.r_type != RELOC_REL32) && (r.r_symndx != (ULONG32)-1))

#define IS_SLASH(path)          (((path) == '/') || ((path) == '\\'))
#define IS_DIR_SEPARATOR(path)  (IS_SLASH(path) || ((path) == ':'))

#define NUMBER_OF_LINKER_ARGS             10
#define NUMBER_OF_ADDITIONAL_LOADED_LIBS  0

#define IS_VALID_CIE(id)        ((id) == 0)
#define IS_zR_AUGMENTATION(s)   (s[0] == 'z' && s[1] == 'R' && s[2] == '\0')


typedef enum
{
  FALSE = 0,
  TRUE = !FALSE
} BOOL;



static const char *progname;

static
#include "fini1.h"
static
#include "fini2.h"
static
#include "fini3.h"
static
#include "fini4.h"
static
#include "fini5.h"

static
#include "init1.h"
static
#include "init2.h"
static
#include "init3.h"
static
#include "init4.h"
static
#include "init5.h"

static struct
{
  void *data;
  int size;
} inits[5] = {
  {init1, sizeof(init1)},
  {init2, sizeof(init2)},
  {init3, sizeof(init3)},
  {init4, sizeof(init4)},
  {init5, sizeof(init5)}
}, finis[5] = {
  {fini1, sizeof(fini1)},
  {fini2, sizeof(fini2)},
  {fini3, sizeof(fini3)},
  {fini4, sizeof(fini4)},
  {fini5, sizeof(fini5)}
};


/* Command-line options */
static struct
{
  BOOL legacy;                  /* legacy DXE1 */
  BOOL unresolved;              /* allow unresolved symbols in output */
  BOOL autoresolve;             /* imbed the resolution table into implib */
  BOOL verbose;                 /* verbose output */
  BOOL showdep;                 /* show dependencies */
  BOOL showexp;                 /* show exported symbols */
  BOOL showunres;               /* show unresolved symbols */
  char *output;                 /* output file name */
  int objcount;                 /* number of object files given on command line */
  char *implib;                 /* name of import library */
  char *dxefile;                /* the name of dxe file on command line */
  char *description;            /* a description of the module */
  unsigned int num_prefix;      /* number of exported prefixes */
  unsigned int max_prefix;      /* maximal number of exported prefixes */
  char **export_prefix;         /* exported symbol prefixes */
  unsigned int num_excl;        /* number of excluded prefixes */
  unsigned int max_excl;        /* maximal number of excluded prefixes */
  char **excl_prefix;           /* excluded symbol prefixes */
  unsigned int num_deps;        /* number of deps */
  unsigned int max_deps;        /* maximal number of deps */
  char **deps;                  /* deps */
} opt = {
  FALSE,
  FALSE,
  FALSE,
  FALSE,
  FALSE,
  FALSE,
  FALSE,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
  0,
  0,
  NULL,
  0,
  0,
  NULL,
  0,
  0,
  NULL
};


static char *libdir;
/* build tools */
static char *dxe_cc; /* default: "gcc" */
static char *dxe_as; /* default: "as" */
static char *dxe_ar; /* default: "ar" */
static char *dxe_ld; /* default: "ld" */
/* linker script */
static char *dxe_sc; /* default: "dxe.ld" */


/* Desc: replaces backslash with slash in a path
 *
 * In  : path string
 * Out : path string
 *
 * Note: -
 */
static void canonicalize_path(char *path)
{
  if (path)
  {
    char *scan;

    for (scan = path; *scan; scan++)
      if (*scan == '\\')
        *scan = '/';
  }
}



/* Desc: remove temporary files
 *
 * In  : -
 * Out : -
 *
 * Note: this function is called upon exit
 */
static void exit_cleanup(void)
{
  remove(TEMP_O_FILE);
  remove(TEMP_S_FILE);
}



/* Desc: return the filespec's base name (w/o extension)
 *
 * In  : filespec
 * Out : static string
 *
 * Note: -
 */
static char *base_name(const char *path)
{
  char *scan;
  static char p[FILENAME_MAX];

  scan = strchr(path, 0);
  while ((scan > path) && !IS_DIR_SEPARATOR(scan[-1]))
    scan--;

  scan = strcpy(p, scan);

  while (*scan == '.')
    scan++;

  if ((scan = strrchr(scan, '.')) != NULL)
    *scan = '\0';

  return p;
}



/* Desc: display program version
 *
 * In  : -
 * Out : -
 *
 * Note: -
 */
static void display_version(void)
{
  printf("dxe3gen version " VERSION "\n");
}



/* Desc: display help
 *
 * In  : -
 * Out : -
 *
 * Note: -
 */
static void display_help(void)
{
  display_version();
  printf("Usage: dxe3gen [-o output.dxe] [options] [object-files] [ld-options]\n");
  printf("   or: dxe3gen -1 output.dxe symbol input.o [input2.o ... -lgcc -lc]\n");
  printf("Create a dynamically-loadable executable module for DJGPP\n\n");
  printf("-o output.dxe\tDefine the name of output DXE file\n");
  printf("-P module.dxe\tSpecify dependency module (cumulative)\n");
  printf("-I import.a\tCreate an import library for given DXE file\n");
  printf("-Y import.a\tCreate an autoresolved import library for given DXE file\n");
  printf("-D description\tSet module description string\n");
  printf("-E prefix\tExport only symbols that start with <prefix> (cumulative)\n");
  printf("-X prefix\tExclude symbols that start with <prefix> (cumulative)\n");
  printf("-U\t\tAllow unresolved symbols in DXE file\n");
  printf("-V\t\tVerbose output (minimal output by default)\n");
  printf("--show-dep\tShow dependencies for specified module\n");
  printf("--show-exp\tShow symbols exported by the DXE module\n");
  printf("--show-unres\tShow unresolved symbols in the DXE module\n");
  printf("[ld-options]\tAny other options are passed unchanged to ld\n\n");
  printf("-1\t\tSwitch into legacy mode (disables all other options)\n\n");
  printf("You should provide appropriate environment at load-time for unresolved modules.\n");
  exit(-1);
}



/* Desc: process the DXE_?? environment variables
 *
 * In  : -
 * Out : -
 *
 * Note: -
 */
static void process_env(void)
{
  const char *e;

  dxe_cc = (e = getenv("DXE_CC")) ? strdup(e) : strdup(DXE_CC);
  dxe_as = (e = getenv("DXE_AS")) ? strdup(e) : strdup(DXE_AS);
  dxe_ar = (e = getenv("DXE_AR")) ? strdup(e) : strdup(DXE_AR);
  dxe_ld = (e = getenv("DXE_LD")) ? strdup(e) : strdup(DXE_LD);
  dxe_sc = (e = getenv("DXE_SC")) ? strdup(e) : strdup(DXE_SC);

  if ((e = getenv("DXE_LD_LIBRARY_PATH")))
    libdir = strdup(e);
  else if ((e = getenv("DJDIR")))
  {
    size_t sz = strlen(e) + 5U;
    libdir = malloc(sz);
    strcpy(libdir, e);
    strcat(libdir, "/lib");
    canonicalize_path(libdir);
  }
  else
    libdir = NULL;
}


/* Desc: process command line args
 *
 * In  : no of arguments, argument list, ptr to store linker args
 * Out : -
 *
 * Note: -
 */
static void process_args(int argc, char *argv[], const char *new_argv[])
{
  int i, new_argc = NUMBER_OF_LINKER_ARGS;

  if (!libdir)
  {
    fprintf(stderr, "Error: neither DXE_LD_LIBRARY_PATH nor DJDIR are set in environment\n");
    exit(1);
  }

  new_argv[0] = dxe_ld;
  new_argv[1] = "-X";
  new_argv[2] = "-S";
  new_argv[3] = "-r";
  new_argv[4] = "-o";
  new_argv[5] = TEMP_O_FILE;
  new_argv[6] = "-L";
  new_argv[7] = libdir;
  new_argv[8] = "-T";
  new_argv[9] = dxe_sc;

  if (!strcmp(base_name(argv[0]), "dxegen"))
    /* invoked as `dxegen' */
    opt.legacy = TRUE;
  else if ((argc > 1) && !strcmp(argv[1], "-1"))
  {
    /* invoked as `dxe3gen -1' */
    opt.legacy = TRUE;
    argc--;
    argv++;
  }

  if (opt.legacy)
  {
    /* legacy mode */
    progname = "dxegen";
    if (argc < 4)
    {
      printf("Usage: %s output.dxe symbol input.o [input2.o ... -lgcc -lc]\n", progname);
      exit(-1);
    }

    opt.max_prefix = 16;
    opt.export_prefix = (char **)malloc(opt.max_prefix * sizeof(char *));
    opt.num_prefix = 1;
    opt.output = argv[1];
    opt.export_prefix[0] = argv[2];
    for (i = 3; i < argc; i++)
    {
      char *dot;
      new_argv[new_argc++] = argv[i];
      if ((dot = strrchr(argv[i], '.')))
      {
        if (!strcasecmp(dot, ".o") || !strcasecmp(dot, ".a"))
          opt.objcount++;
      }
    }
  }
  else
  {
    /* standard mode */
    for (i = 1; i < argc; i++)
    {
      if (!strcmp(argv[i], "-h") || !strcmp(argv[i], "--help"))
        display_help();
      else if (!strcmp(argv[i], "-U"))
        opt.unresolved = TRUE;
      else if (!strcmp(argv[i], "-o"))
        opt.output = argv[++i];
      else if (!strcmp(argv[i], "-V"))
        opt.verbose = TRUE;
      else if (!strcmp(argv[i], "-D"))
        opt.description = argv[++i];
      else if (!strcmp(argv[i], "-I"))
        opt.implib = argv[++i];
      else if (!strcmp(argv[i], "-Y"))
      {
        opt.implib = argv[++i];
        opt.autoresolve = TRUE;
      }
      else if (!strcmp(argv[i], "-E"))
      {
        if (opt.num_prefix >= opt.max_prefix)
        {
          opt.max_prefix += 16;
          opt.export_prefix = (char **)realloc(opt.export_prefix, opt.max_prefix * sizeof(char *));
        }
        opt.export_prefix[opt.num_prefix++] = argv[++i];
      }
      else if (!strcmp(argv[i], "-X"))
      {
        if (opt.num_excl >= opt.max_excl)
        {
           opt.max_excl += 16;
           opt.excl_prefix = (char **)realloc(opt.excl_prefix, opt.max_excl * sizeof(char *));
        }
        opt.excl_prefix[opt.num_excl++] = argv[++i];
      }
      else if (!strcmp(argv[i], "-P"))
      {
        if (opt.num_deps >= opt.max_deps)
        {
          opt.max_deps += 16;
          opt.deps = (char **)realloc(opt.deps, opt.max_deps * sizeof(char *));
        }
        opt.deps[opt.num_deps++] = argv[++i];
      }
      else if (!strcmp(argv[i], "--show-dep"))
        opt.showdep = TRUE;
      else if (!strcmp(argv[i], "--show-exp"))
        opt.showexp = TRUE;
      else if (!strcmp(argv[i], "--show-unres"))
        opt.showunres = TRUE;
      else
      {
        char *dot = strrchr(argv[i], '.');
        new_argv[new_argc++] = argv[i];
        if (dot)
        {
          if (!strcasecmp(dot, ".o") || !strcasecmp(dot, ".a"))
            opt.objcount++;
          else if (!strcasecmp(dot, ".dxe") || !strcasecmp(dot, ".so"))
            opt.dxefile = argv[i];
        }
      }
    }
  }

  new_argv[new_argc] = NULL;
}

static int my_spawn(const char **argv)
{
  char cmd[65536];
  strcpy(cmd, argv[0]);

  for (argv++; argv[0]; argv++)
  {
    strcat(cmd, " ");
    strcat(cmd, argv[0]);
  }

  return system(cmd);
}



/* Desc: check if the augmentation string is different from 'zR'
 * in on of the object files that will be linked into the DXE file.
 * If the augmentation string in the CIE is different to zR, it is
 * assumed that the programing language offers exception handling
 * and the [de]register info symbols must be resolved by linking
 * the application with a language/compiler specific library like
 * libgcc that will provide working version of the __[de]register_frame_info
 * functions.  Else the symbols will be autoresolved using the
 * dummy functions compiled into this program.
 *
 * In  : linker command line to provide list of object files to scan
 * Out : TRUE if different from 'zR' augmentation else FALSE
 *
 * Note: -
 */
static BOOL have_EH_support(const char *argv[])
{
  BOOL found_zR_augmentation = FALSE;
  int i;

  for (i = 0; argv[i]; i++)
  {
    const char *dot = strrchr(argv[i], '.');

    if (dot && !strcasecmp(dot, ".o") && strcasecmp(dot - sizeof TEMP_BASE + 1, TEMP_O_FILE))
    {
      FILE *f = fopen(argv[i], "rb");

      if (f == NULL)
      {
        fprintf(stderr, "%s: cannot open object file `%s' for reading\n", progname, argv[i]);
        exit(-2);
      }
      else
      {
        FILHDR fh;
        SYMENT *sym;
        char *strings;
        ULONG32 stsz;
        unsigned int n;

        /* Read file header */
        fread(&fh, FILHSZ, 1, f);

        /* Read all symbols */
        sym = (SYMENT *)malloc(fh.f_nsyms * sizeof(SYMENT));
        fseek(f, fh.f_symptr, SEEK_SET);
        fread(sym, SYMESZ, fh.f_nsyms, f);

        /* Read symbol name table */
        fread(&stsz, sizeof(stsz), 1, f);
        strings = (char *)malloc(stsz);
        fread(strings + 4, 1, stsz - 4, f);
        strings[0] = 0;

        /* Find .eh_frame section */
        for (found_zR_augmentation = TRUE, n = 0; n < fh.f_nsyms; n += 1 + sym[n].e_numaux)
        {
          char tmp[E_SYMNMLEN + 1], *name;

          if (sym[n].e.e.e_zeroes)
          {
            memcpy(tmp, sym[n].e.e_name, E_SYMNMLEN);
            tmp[E_SYMNMLEN] = 0;
            name = tmp;
          }
          else
            name = strings + sym[n].e.e.e_offset;

          if (!strcmp(name, ".eh_frame"))
          {
            SCNHDR eh_frame_scnhdr;

            /* Skip file header, optional header and all other section
               headers existing before the .eh_frame section header */
            fseek(f, FILHSZ + fh.f_opthdr + (sym[n].e_scnum - 1) * (size_t)SCNHSZ, SEEK_SET);

            /* Read the .eh_frame section header and
               extract the CIE (Common Information Entry) */
            if (fread(&eh_frame_scnhdr, (size_t)SCNHSZ, 1, f) == 1
                && !fseek(f, eh_frame_scnhdr.s_scnptr, SEEK_SET))
            {
              /*
               * To read the first few fields of the CIE record
               * the struct dwarf_cie as defined in unwind-dw2-fde.h
               * of gcc 4.6.1 is used.  If this structure changes
               * then this code will need to be adjusted accordingly.
               * For a reference about the possible values of the
               * augmentation string look at LSB-Core-generic.pdf.
               */


              typedef          int  sword __attribute__ ((mode (SI)));
              typedef unsigned int  uword __attribute__ ((mode (SI)));
#if 0
              /*  Pacify the compiler.  */
              typedef unsigned int  uaddr __attribute__ ((mode (pointer)));
              typedef          int  saddr __attribute__ ((mode (pointer)));
#endif
              typedef unsigned char ubyte;

              struct dwarf_cie
              {
                uword length;
                sword CIE_id;
                ubyte version;
                unsigned char augmentation[0];
              } __attribute__ ((packed, aligned (__alignof__ (void *))));


              /* If it is a CIE, read the augmentation string */
              struct dwarf_cie cie;
              fread(&cie, sizeof(cie), 1, f);
              if (IS_VALID_CIE(cie.CIE_id) && !IS_zR_AUGMENTATION(cie.augmentation))
              {
                /*
                 * At least one of the object files linked into
                 * the DXE module requires exception handling.
                 * The application must be linked with libgcc.a
                 * to provide the required frame unwinding functionality.
                 * Stop checking other object files.
                 */
                found_zR_augmentation = FALSE;
                break;
              }
            }
          }
        }

        free(strings);
        free(sym);
      }

      fclose(f);
    }
  }

  return !found_zR_augmentation;
}



/* Desc: run linker to obtain relocatable output
 *
 * In  : linker command line, ptr to store output header
 * Out : file ptr of resulting file
 *
 * Note: -
 */
static FILE *run_ld(const char *argv[], FILHDR *fh)
{
  int rv;
  FILE *f;

  if ((rv = my_spawn(argv)) != 0)
  {
    if (rv == -1)
      perror("ld");
    exit(rv);
  }

  if ((f = fopen(TEMP_O_FILE, "rb")) == NULL)
  {
    fprintf(stderr, "%s: cannot open linker output file `%s'\n", progname, TEMP_O_FILE);
    exit(-2);
  }
  else
    atexit(exit_cleanup);


  fread(fh, FILHSZ, 1, f);
  if (fh->f_nscns != 1)
  {
    fclose(f);
    fprintf(stderr, "%s: linker output file has more than one section\n", TEMP_O_FILE);
    exit(-2);
  }


  if (!opt.legacy)
  {
    unsigned int i;
    ULONG32 stsz;
    SYMENT *sym;
    char *strings;
    LONG32 frame_begin = -1, frame_end = -1;
    LONG32 first_ctor = -1, last_ctor = -1, first_dtor = -1, last_dtor = -1;
    BOOL resolve_register_deregister_info_symbols = FALSE;

    int init, fini;

    /* Read all symbols */
    sym = (SYMENT *)malloc(fh->f_nsyms * sizeof(SYMENT));
    fseek(f, fh->f_symptr, SEEK_SET);
    fread(sym, SYMESZ, fh->f_nsyms, f);

    /* Read symbol name table */
    fread(&stsz, sizeof(stsz), 1, f);
    strings = (char *)malloc(stsz);
    fread(strings + 4, 1, stsz - 4, f);
    strings[0] = 0;

    for (i = 0; i < fh->f_nsyms; i += 1 + sym[i].e_numaux)
    {
      char tmp[E_SYMNMLEN + 1], *name;

      if (sym[i].e.e.e_zeroes)
      {
        memcpy(tmp, sym[i].e.e_name, E_SYMNMLEN);
        tmp[E_SYMNMLEN] = 0;
        name = tmp;
      }
      else
        name = strings + sym[i].e.e.e_offset;

      if (!strcmp(name, "___EH_FRAME_BEGIN__"))
        frame_begin = sym[i].e_value;
      else if (!strcmp(name, "___EH_FRAME_END__"))
        frame_end = sym[i].e_value;
      else if (!strcmp(name, ".eh_frame"))
        resolve_register_deregister_info_symbols = !have_EH_support(argv);
      else if (!strcmp(name, "djgpp_first_ctor"))
        first_ctor = sym[i].e_value;
      else if (!strcmp(name, "djgpp_last_ctor"))
        last_ctor = sym[i].e_value;
      else if (!strcmp(name, "djgpp_first_dtor"))
        first_dtor = sym[i].e_value;
      else if (!strcmp(name, "djgpp_last_dtor"))
        last_dtor = sym[i].e_value;
    }


    /*
     * 3 = ctor + frame
     * 2 = frame
     * 1 = ctor
     * 0 = <none>
     */
    if (frame_begin != frame_end)
    {
      init = resolve_register_deregister_info_symbols ? (first_ctor != last_ctor) ? 5 : 4 : (first_ctor != last_ctor) ? 3 : 2;
      fini = resolve_register_deregister_info_symbols ? (first_ctor != last_ctor) ? 5 : 4 : (first_ctor != last_ctor) ? 3 : 2;
    }
    else
    {
      init = (first_ctor != last_ctor) ? 1 : 0;
      fini = (first_dtor != last_dtor) ? 1 : 0;
    }

    if ((init > 0) || (fini > 0))
    {
      fclose(f);

      for (i = 0; argv[i]; i++)
        ;

      if (init > 0)
      {
        f = fopen(TEMP_BASE"i.o", "wb");
        fwrite(inits[init - 1].data, inits[init - 1].size, 1, f);
        fclose(f);
        argv[i++] = TEMP_BASE"i.o";
      }
      if (fini > 0)
      {
        f = fopen(TEMP_BASE"f.o", "wb");
        fwrite(finis[fini - 1].data, finis[fini - 1].size, 1, f);
        fclose(f);
        argv[i++] = TEMP_BASE"f.o";
      }
      argv[i] = NULL;

      rv = my_spawn(argv);

      if (init > 0)
        remove(TEMP_BASE"i.o");
      if (fini > 0)
        remove(TEMP_BASE"f.o");

      if (rv)
      {
        if (rv == -1)
          perror("ld");
        exit(rv);
      }

      f = fopen(TEMP_O_FILE, "rb");
      fread(fh, FILHSZ, 1, f);
    }
    else
      fseek(f, FILHSZ, SEEK_SET);

    free(strings);
    free(sym);
  }

  return f;
}



/* Desc: write DXE
 *
 * In  : input handle, output handle, input file header
 * Out : 0 if success
 *
 * Note: -
 */
static int write_dxe(FILE *inf, FILE *outf, FILHDR *fh)
{
  dxe3_header dh;
  unsigned int startbss;
  char *data;
  SYMENT *sym;
  ULONG32 stsz;
  char *strings;
  RELOC *relocs;
  unsigned int i, j, errcount;
  size_t hdrsize;

  /* Exported symbols table */
  char *expsym_table = NULL;
  size_t expsym_size = 0, expsym_maxsize = 0;
  /* Unresolved symbols table */
  char *unres_table = NULL;
  size_t unres_size = 0, unres_maxsize = 0;

  /* Get the section header */
  SCNHDR sc;
  fseek(inf, fh->f_opthdr, SEEK_CUR);
  fread(&sc, SCNHSZ, 1, inf);

  dh.magic = DXE_MAGIC;
  dh.element_size = -1;
  dh.nrelocs = sc.s_nreloc;
  dh.n_exp_syms = 0;
  dh.exp_table = sizeof(dh);
  dh.n_deps = opt.num_deps;
  dh.n_unres_syms = 0;
  dh.sec_size = sc.s_size;
  dh.flags = 0;
  dh.major = 1;
  dh.minor = 0;
  dh.hdr_size = sizeof(dh);
  dh._init = dh._fini = -1;

  /* keep track of the BSS start */
  startbss = dh.sec_size;

  /* Read section data */
  data = (char *)malloc(sc.s_size);
  fseek(inf, sc.s_scnptr, SEEK_SET);
  fread(data, sc.s_size, 1, inf);

  /* Read all symbols */
  sym = (SYMENT *)malloc(fh->f_nsyms * sizeof(SYMENT));
  fseek(inf, fh->f_symptr, SEEK_SET);
  fread(sym, SYMESZ, fh->f_nsyms, inf);

  /* Read symbol name table */
  fread(&stsz, sizeof(stsz), 1, inf);
  strings = (char *)malloc(stsz);
  fread(strings + 4, 1, stsz - 4, inf);
  strings[0] = 0;

  /* Read the relocation table */
  relocs = (RELOC *)malloc(sc.s_nreloc * sizeof(RELOC));
  fseek(inf, sc.s_relptr, SEEK_SET);
  fread(relocs, RELSZ, sc.s_nreloc, inf);

  /* Close input file */
  fclose(inf);

  errcount = 0;

  DEBUG_PRINT_SYMBOL_TABLE_PROLOG();
  for (i = 0; i < fh->f_nsyms; i += 1 + sym[i].e_numaux)
  {
    char tmp[E_SYMNMLEN + 1], *name;
    int namelen;
    size_t newsize;

    if (sym[i].e.e.e_zeroes)
    {
      memcpy(tmp, sym[i].e.e_name, E_SYMNMLEN);
      tmp[E_SYMNMLEN] = 0;
      name = tmp;
    }
    else
      name = strings + sym[i].e.e.e_offset;
    namelen = strlen(name) + 1;

    /* update BSS start */
    if (!strcmp(name, ".bss"))
    {
      if (startbss > sym[i].e_value)
        startbss = sym[i].e_value;
    }

    /* sanity check */
    if (namelen < 2)
      continue;

    DEBUG_PRINT_SYMBOL_TABLE_ENTRY(i, sym, name);

    /* do not process private symbols */
    if (sym[i].e_sclass == C_STAT)
    {
      /* usually, private symbols are discarded anyway.
       * This is because we end up with neither relative,
       * nor absolute relocs pointing to them.  However,
       * C++ causes some trouble, apparently related to
       * weak symbols.  They will have only one absolute
       * reloc to themselves.
       */
    }
    else if (sym[i].e_scnum == 0)
    {
      short int *count;
      LONG32 *rel_relocs, *abs_relocs;
      int n_abs_relocs = 0, n_rel_relocs = 0;

      /* count the amount of relocations pointing to this symbol */
      for (j = 0; j < sc.s_nreloc; j++)
      {
        if (relocs[j].r_symndx == i)
        {
          if (relocs[j].r_type == RELOC_REL32)
            n_rel_relocs++;
          else
            n_abs_relocs++;
        }
      }

      /* If there are no references to this symbol, skip it */
      if (n_rel_relocs == 0 && n_abs_relocs == 0)
        continue;

      /* unresolved symbol */
      dh.n_unres_syms++;

      if (!opt.unresolved)
      {
        fprintf(stderr, "%s: unresolved symbol `%s'\n", progname, name);
        errcount++;
        continue;
      }

      if (n_rel_relocs > 0xFFFF || n_abs_relocs > 0xFFFF)
      {
        fprintf(stderr, "%s: FATAL ERROR: too many relocations for unresolved"
                        " symbol `%s'\n", progname, name);
        fclose(outf);
        remove(opt.output);
        exit(-4);
      }

      newsize = unres_size + 2 * sizeof(short int) + namelen + (n_rel_relocs + n_abs_relocs) * sizeof(LONG32);
      if (newsize > unres_maxsize)
      {
        int addlen = newsize - unres_maxsize + 317;
        if (!((addlen + unres_maxsize) & 1))
          addlen++;

        unres_table = (char *)realloc(unres_table, unres_maxsize += addlen);
        /* in the original code below djgpp 2.03 jumped the gun if the size
         * is simply incremented by 1024
         * unres_table = (char *)realloc(unres_table, unres_maxsize += 1024);
         */
      }
      memcpy(unres_table + unres_size + 2 * sizeof(short int), name, namelen);

      /* Store number of references to this unresolved symbol */
      count = (short int *)(unres_table + unres_size);
      count[0] = n_rel_relocs;
      count[1] = n_abs_relocs;

      rel_relocs = (LONG32 *)(unres_table + unres_size + 2 * sizeof(short int) + namelen);
      abs_relocs = (LONG32 *)(unres_table + newsize);

      unres_size = newsize;

      for (j = 0; j < sc.s_nreloc; j++)
      {
        if (relocs[j].r_symndx == i)
        {
          /* mark the relocation as processed */
          relocs[j].r_symndx = (ULONG32)-1;

          if (relocs[j].r_type == RELOC_REL32)
            *rel_relocs++ = relocs[j].r_vaddr;
          else
            *--abs_relocs = relocs[j].r_vaddr;
        }
      }
      if (opt.verbose)
        printf("unresolved: `%s' (%d references)\n", name, n_rel_relocs + n_abs_relocs);
    }
    else if (sym[i].e_sclass == C_EXT)
    {
      if (!strcmp(name, "_init"))
      {
        dh._init = sym[i].e_value;
        continue;
      }
      if (!strcmp(name, "_fini"))
      {
        dh._fini = sym[i].e_value;
        continue;
      }

      if (!strncmp(name, "__GLOBAL_$", 10)
          || !strcmp(name, "djgpp_first_ctor")
          || !strcmp(name, "djgpp_last_ctor")
          || !strcmp(name, "djgpp_first_dtor")
          || !strcmp(name, "djgpp_last_dtor")
          || !strcmp(name, "___EH_FRAME_BEGIN__")
          || !strcmp(name, "___EH_FRAME_END__"))
         continue;


      if (opt.num_excl)
      {
        BOOL ok = FALSE;
        for (j = 0; j < opt.num_excl; j++)
        {
          if (memcmp(opt.excl_prefix[j], name, strlen(opt.excl_prefix[j])) == 0)
          {
            ok = TRUE;
            break;
          }
        }
        if (ok)
          continue;
      }

      if (opt.num_prefix)
      {
        BOOL ok = FALSE;
        for (j = 0; j < opt.num_prefix; j++)
        {
          if (memcmp(opt.export_prefix[j], name, strlen(opt.export_prefix[j])) == 0)
          {
            ok = TRUE;
            break;
          }
        }
        if (!ok)
          continue;
      }

      /* exported symbol */
      dh.n_exp_syms++;

      if (opt.legacy && (dh.n_exp_syms != 1))
      {
        fprintf(stderr, "%s: multiple symbols with same prefix: `%s'", progname, name);
        errcount++;
      }

      newsize = expsym_size + sizeof(LONG32) + namelen;
      if (newsize > expsym_maxsize)
        expsym_table = (char *)realloc(expsym_table, expsym_maxsize += 1024);


      *(LONG32 *)(expsym_table + expsym_size) = sym[i].e_value;
      memcpy(expsym_table + expsym_size + sizeof(LONG32), name, namelen);
      expsym_size = newsize;
      if (opt.verbose)
        printf("export: `%s'\n", name);
    }
  }
  DEBUG_PRINT_SYMBOL_TABLE_EPILOG();

  if (errcount)
  {
    fclose(outf);
    remove(opt.output);
    exit(-3);
  }

  /* Compute the amount of valid relocations */
  DEBUG_PRINT_RELOCATION_DIRECTIVE_PROLOG();
  for (i = 0; i < sc.s_nreloc; i++)
  {
    DEBUG_PRINT_RELOCATION_DIRECTIVE(i, relocs);
    if (!VALID_RELOC(relocs[i]))
      dh.nrelocs--;
  }
  DEBUG_PRINT_RELOCATION_DIRECTIVE_EPILOG();

  if (opt.legacy)
  {
    if (dh.n_exp_syms != 1)
    {
      fprintf(stderr, "%s: symbol `%s' not found\n", progname, opt.export_prefix[0]);
      fclose(outf);
      remove(opt.output);
      exit(-4);
    }
    dh.element_size = dh.sec_size;
    dh.symbol_offset = *(LONG32 *)expsym_table;
    memset(data + startbss, 0, dh.sec_size - startbss);
    fwrite(&dh, 1, sizeof(dxe_header), outf);
    /* Write the actual code+data+bss section */
    fwrite(data, 1, dh.sec_size, outf);
  }
  else
  {
    /* A small array for padding with zeros */
    char fill[16];
    memset(fill, 0, 16);

    /* [dBorca]
     * when the linker injects BSS space into TEXT, it fills that area with
     * garbage. To ensure BSS will get zeroed, set the end of the in-file
     * section as the start of the BSS (according to dxe.ld, nothing beyond
     * this point is initialized). The rest is up to `dlopen()'
     */
    dh.sec_f_size = startbss;

    /* Compute table sizes */
    dh.exp_size = expsym_size;
    dh.unres_size = unres_size;
    dh.dep_size = 0;
    for (i = 0; i < opt.num_deps; i++)
      dh.dep_size += strlen(opt.deps[i]) + 1;

    /* Compute the offset of .text+.data+.bss sections */
    hdrsize = dh.exp_table + expsym_size;
    dh.symbol_offset = (hdrsize + 15) & ~15UL;
    /* Compute the offset of tables */
    dh.dep_table = dh.symbol_offset + dh.sec_f_size;
    dh.unres_table = dh.dep_table + dh.dep_size;
    dh.reloc_table = dh.unres_table + dh.unres_size;

    /* Output the DXE header */
    fwrite(&dh, 1, sizeof(dh), outf);

    /* Output the exported symbols table */
    fwrite(expsym_table, 1, expsym_size, outf);
    free(expsym_table);

    /* Write the actual code+data+bss section */
    fwrite(fill, 1, dh.symbol_offset - hdrsize, outf);
    fwrite(data, 1, dh.sec_f_size, outf);

    /* Output the dependency table */
    for (i = 0; i < opt.num_deps; i++)
      fwrite(opt.deps[i], 1, strlen(opt.deps[i]) + 1, outf);

    /* Output the unresolved symbols table */
    fwrite(unres_table, 1, unres_size, outf);
    free(unres_table);
  }

  free(data);

  /* Output the relocations */
  for (i = 0; i < sc.s_nreloc; i++)
  {
    if (VALID_RELOC(relocs[i]))
      fwrite(&relocs[i].r_vaddr, 1, sizeof(relocs[0].r_vaddr), outf);
  }

  /* If we have a description string, put it here */
  if (opt.description != NULL)
    fwrite(opt.description, 1, strlen(opt.description) + 1, outf);

  fclose(outf);

  free(strings);
  free(relocs);
  free(sym);

  return 0;
}



/* Desc: open existing DXE3 file
 *
 * In  : filename, ptr to store DXE3 header
 * Out : file handle
 *
 * Note: does not work with legacy DXE
 */
static FILE *open_dxe_file(const char *fname, dxe3_header *dh)
{
  FILE *f;

  if ((f = fopen(fname, "rb")) == NULL)
  {
    fprintf(stderr, "%s: cannot read DXE module `%s'\n", progname, fname);
    exit(-2);
  }

  fread(dh, sizeof(dxe3_header), 1, f);
  if ((dh->magic != DXE_MAGIC) || (dh->element_size != -1))
  {
    fclose(f);
    fprintf(stderr, "%s: the file `%s' is not an extended DXE module\n", progname, fname);
    exit(-2);
  }

  return f;
}



/* Desc: create import library
 *
 * In  : -
 * Out : 0 if success
 *
 * Note: -
 */
static int make_implib(void)
{
  int i;
  int rv;
  char *scan;
  const char *omode;
  char *symtab;
  char basename_fix[FILENAME_MAX]; /* changed size - chan kar heng 20030112 */
  char basename_org[FILENAME_MAX];
  dxe3_header dh;
  char cmdbuf[FILENAME_MAX + 100];
  FILE *implib, *f = open_dxe_file(opt.dxefile, &dh);

  fseek(f, dh.exp_table, SEEK_SET);
  symtab = (char *)malloc(dh.exp_size);
  fread(symtab, dh.exp_size, 1, f);
  fclose(f);

  /* Compute the base name of the library */
  scan = strcpy(basename_fix, strcpy(basename_org, base_name(opt.dxefile)));
  while (*scan)
  {
    char c = *scan;
    /* Convert illegal chars to underscore */
    *scan++ = isalnum(c) ? toupper(c) : '_';
  }

  if (opt.autoresolve)
  {
    /* Fire the resolver. It should take care of the dependencies (if any) */
    strcpy(cmdbuf, "dxe3res -o "TEMP_BASE".c ");
    strcat(cmdbuf, opt.dxefile);
    if ((rv = system(cmdbuf)) != 0)
    {
      if (rv == -1)
        perror("dxe3res");
      exit(rv);
    }

    /* Pre-compile the resolver's output. */
    sprintf(cmdbuf, "%s -o %s -O2 -S %s.c", dxe_cc, TEMP_S_FILE, TEMP_BASE);
    rv = system(cmdbuf);
    remove(TEMP_BASE".c");
    if (rv != 0)
    {
      if (rv == -1)
        perror("gcc");
      exit(rv);
    }

    /* [dBorca]
     * the reason we are doing it in one single file is to make sure the
     * resolution table resides in the very same source with the wrappers,
     * otherwise the linker might get smart... and get rid of it!
     */
    omode = "a";
  }
  else
    omode = "w";

  /* `omode' holds the fopen mode */
  if ((implib = fopen(TEMP_S_FILE, omode)) == NULL)
  {
    free(symtab);
    fprintf(stderr, "%s: cannot open file `%s' for writing\n", progname, TEMP_S_FILE);
    exit(-2);
  }

  fprintf(implib, ".text\n"
                  "Lmodh:	.long	0\n"
                  "Lmodn:	.ascii	\"%s.DXE\\0\"\n"
                  "	.globl	_dlload_%s\n"
                  "_dlload_%s:\n"
                  "	pushl	$Lsyms\n"               /* symbol names */
                  "	pushl	$Lstubs\n"              /* stubs */
                  "	pushl	$Lmodh\n"               /* module handle */
                  "	pushl	$Lmodn\n"               /* module name */
                  "	call	_dlstatbind\n"          /* statically bind */
                  "	addl	$16,%%esp\n"
                  "	ret\n"
                  "	.globl	_dlunload_%s\n"
                  "_dlunload_%s:\n"
                  "	pushl	$Lload\n"               /* loader address */
                  "	pushl	$Lsyms\n"               /* symbol names */
                  "	pushl	$Lstubs\n"              /* stubs */
                  "	pushl	$Lmodh\n"               /* module handle */
                  "	pushl	$Lmodn\n"               /* module name */
                  "	call	_dlstatunbind\n"        /* unbind module */
                  "	addl	$20,%%esp\n"
                  "	ret\n"
                  "Lload:	pushal\n"
                  "	call	_dlload_%s\n"
                  "	popal\n"
                  "	subl	$5,(%%esp)\n"
                  "	ret\n",
                  basename_org, basename_fix, basename_fix, basename_fix, basename_fix, basename_fix);

  /* Emit the names of all imported functions */
  fprintf(implib, "Lsyms:\n");
  for (i = 0, scan = symtab; i < dh.n_exp_syms; i++)
  {
    scan += sizeof(LONG32);
    fprintf(implib, "\t.ascii\t\"%s\\0\"\n", scan);
    scan = strchr(scan, 0) + 1;
  }
  fprintf(implib, "\t.byte\t0\n");

  /* And now emit the stubs */
  for (i = 0, scan = symtab; i < dh.n_exp_syms; i++)
  {
    scan += sizeof(LONG32);
    fprintf(implib, "\t.align\t2,0xcc\n");
    if (i == 0)
      fprintf(implib, "Lstubs:\n");
    fprintf(implib, "\t.globl\t%s\n%s:\n\tcall\tLload\n", scan, scan);
    scan = strchr(scan, 0) + 1;
  }

  fclose(implib);
  free(symtab);

  /* We already have what to clean up */
  atexit(exit_cleanup);

  /* Allright, now run the assembler on the resulting file */
  sprintf(cmdbuf, "%s -o %s %s", dxe_as, TEMP_O_FILE, TEMP_S_FILE);
  if ((rv = system(cmdbuf)) != 0)
  {
    if (rv == -1)
      perror("as");
    exit(rv);
  }

  /* Okey-dokey, let's stuff the object file into the archive */
  sprintf(cmdbuf, "%s crs %s "TEMP_O_FILE, dxe_ar, opt.implib);
  if ((rv = system(cmdbuf)) != 0)
  {
    if (rv == -1)
      perror("ar");
    exit(rv);
  }

  return 0;
}



/* Desc: show DXE3 info
 *
 * In  : filename
 * Out : 0 if success
 *
 * Note: -
 */
static int show_symbols(const char *fname)
{
  int i;
  char *scan;
  char *symtab;
  dxe3_header dh;
  FILE *f = open_dxe_file(fname, &dh);

  scan = symtab = (char *)malloc(dh.exp_size + dh.unres_size + dh.dep_size);
  fseek(f, dh.exp_table, SEEK_SET);
  fread(symtab, dh.exp_size, 1, f);
  fseek(f, dh.unres_table, SEEK_SET);
  fread(symtab + dh.exp_size, dh.unres_size, 1, f);
  fseek(f, dh.dep_table, SEEK_SET);
  fread(symtab + dh.exp_size + dh.unres_size, dh.dep_size, 1, f);
  fclose(f);

  for (i = 0; i < dh.n_exp_syms; i++)
  {
    scan += sizeof(LONG32);
    if (opt.showexp)
      puts(scan);
    scan = strchr(scan, 0) + 1;
  }

  for (i = 0; i < dh.n_unres_syms; i++)
  {
    unsigned short int n1 = ((unsigned short int *)scan)[0];
    unsigned short int n2 = ((unsigned short int *)scan)[1];
    scan += sizeof(short int) * 2;
    if (opt.showunres)
      puts(scan);
    scan = strchr(scan, 0) + 1 + (n1 + n2) * sizeof(LONG32);
  }

  for (i = 0; i < dh.n_deps; i++)
  {
    if (opt.showdep)
      puts(scan);
    scan = strchr(scan, 0) + 1;
  }

  free(symtab);
  return 0;
}



/* Desc: main entry point
 *
 * In  : command-line
 * Out : 0 if success
 *
 * Note: -
 */
int main(int argc, char **argv)
{
  int i;
  int rv;
  const char **new_argv;

  progname = argv[0];
  /* Prepare the command line for ld */
  new_argv = (const char **)malloc((argc - 1 + NUMBER_OF_LINKER_ARGS + NUMBER_OF_ADDITIONAL_LOADED_LIBS + 2 + 1) * sizeof(char *));
  process_env();
  process_args(argc, argv, new_argv);

  if (opt.showdep || opt.showexp || opt.showunres)
  {
    for (i = 1; i < argc; i++)
    {
      if (argv[i][0] != '-')
      {
        char *dot = strchr(argv[i], '.');
        if (dot && (!strcasecmp(dot, ".dxe") || !strcasecmp(dot, ".so")))
        {
          if ((rv = show_symbols(argv[i])) != 0)
            return rv;
        }
      }
    }
    return 0;
  }

  if (!opt.output && (!opt.implib || opt.objcount))
  {
    fprintf(stderr, "%s: no output file name given (-h for help)\n", progname);
    exit(-1);
  }

  if (opt.output && !opt.objcount)
  {
    fprintf(stderr, "%s: no object file(s) given (-h for help)\n", progname);
    exit(-1);
  }

  if (opt.implib)
  {
    if (!opt.dxefile)
      opt.dxefile = opt.output;
    if (!opt.dxefile)
    {
      fprintf(stderr, "%s: no DXE module name given (-h for help)\n", progname);
      exit(-1);
    }
  }

  if (opt.verbose)
  {
    /* print the command line for ld */
    for (i = 0; new_argv[i]; i++)
      printf("%s ", new_argv[i]);
    printf("\n");
  }

  if (opt.objcount)
  {
    /* Run linker */
    FILHDR fh;
    FILE *inf = run_ld(new_argv, &fh);

    /* Now `inf' is an opened single-section COFF module. Create the output file */
    FILE *outf;
    if ((outf = fopen(opt.output, "wb")) == NULL)
    {
      fclose(inf);
      fprintf(stderr, "%s: cannot open file `%s' for writing\n", progname, opt.output);
      exit(-2);
    }

    /* Allright, now write the DXE file and quit */
    if ((rv = write_dxe(inf, outf, &fh)) != 0)
      return rv;
  }

  if (opt.implib)
  {
    if ((rv = make_implib()) != 0)
      return rv;
  }

  return 0;
}
