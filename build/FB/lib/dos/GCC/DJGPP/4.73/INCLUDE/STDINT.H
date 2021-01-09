#ifndef _GCC_WRAP_STDINT_H
#if __STDC_HOSTED__
# if defined(__DJGPP__)
#  include <sys/version.h>
#  if __DJGPP__<2 || (__DJGPP__==2 && __DJGPP_MINOR__<=3)
#   include "stdint-gcc.h"
#  else
#   include_next <stdint.h>
#  endif   	
# else
#  include_next <stdint.h>
# endif
#else
# include "stdint-gcc.h"
#endif
#define _GCC_WRAP_STDINT_H
#endif
