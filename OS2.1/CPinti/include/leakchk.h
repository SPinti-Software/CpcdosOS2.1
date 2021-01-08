// stb_leakcheck.h - v0.6 - quick & dirty malloc leak-checking - public domain
// LICENSE
//
//   See end of file.

// #define STB_LEAKCHECK_IMPLEMENTATION

// #ifndef STB_LEAKCHECK_IMPLEMENTATION
// #define STB_LEAKCHECK_IMPLEMENTATION // don't implement more than once

 
#ifdef malloc
#undef malloc
#undef calloc
#undef free
#undef realloc
#endif

#ifndef STB_LEAKCHECK_SHOWALL
#define STB_LEAKCHECK_SHOWALL
#endif

#ifndef STB_LEAKCHECK_OUTPUT_PIPE
#define STB_LEAKCHECK_OUTPUT_PIPE stdout
#endif

#include <assert.h>
#include <string.h>


typedef struct malloc_info stb_leakcheck_malloc_info;

struct malloc_info
{
   const char *file;
   long line;
   size_t size;
   stb_leakcheck_malloc_info *next,*prev;
};

static stb_leakcheck_malloc_info *mi_head;


#include <stdlib.h> // we want to define the macros *after* stdlib to avoid a slew of errors

#define malloc(sz)    		stb_leakcheck_malloc(sz, __FILE__, __LINE__)
#define calloc(sz, e_sz)    stb_leakcheck_calloc(sz, e_sz, __FILE__, __LINE__)
#define free(p)       		stb_leakcheck_free(p, __FILE__, __LINE__)
#define realloc(p,sz) 		stb_leakcheck_realloc(p,sz, __FILE__, __LINE__)

extern void * stb_leakcheck_malloc(size_t sz, const char *file, long line);
extern void * stb_leakcheck_calloc(size_t sz, size_t e_sz, const char *file, long line);
extern void * stb_leakcheck_realloc(void *ptr, size_t sz, const char *file, long line);
extern void   stb_leakcheck_free(void *ptr, const char *file, long line);
// extern void   stb_leakcheck_memset(void *b, char c, long len, const char *file, long line);
extern void   stb_leakcheck_dumpmem(void);


