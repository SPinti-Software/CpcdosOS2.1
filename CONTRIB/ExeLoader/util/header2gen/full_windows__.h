#ifndef HDEF_LibRT_Windows
#define HDEF_LibRT_Windows

#ifndef __cdecl
#define __cdecl
#endif



//#include <sal.h> 

#ifdef _GDI32_
#undef WINGDIAPI 
#define WINGDIAPI 
//#define WINAPI
#define GL_EXPORT __declspec(dllexport) __cdecl
#else
#define WINGDIAPI DECLSPEC_IMPORT
#define GL_EXPORT WINAPI
#endif


#ifndef DECLSPEC_IMPORT
#define DECLSPEC_IMPORT
#endif
#ifndef _CRTIMP
#define _CRTIMP 
#endif
#ifndef __MINGW_IMPORT
#define __MINGW_IMPORT
#endif
	
#ifdef __cplusplus
extern "C" {
#endif

#ifndef HDEF_WindowsH
#define HDEF_WindowsH


///// Windows Include /////
/*
#undef UNICODE
#define UNICODE
#undef _UNICODE
#define _UNICODE
*/

#define _CRT_ABS_DEFINED
#ifndef _WIN32_WINNT
	#define _WIN32_WINNT 0x0501
#endif
#ifndef _WIN32_IE
	#define _WIN32_IE 0x0501
#endif
#if 0 /* expanded by -frewrite-includes */
#include <windows.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#ifndef _WINDOWS_
#define _WINDOWS_

#if 0 /* expanded by -frewrite-includes */
#include <_mingw.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC__MINGW_H
#define _INC__MINGW_H

#define MINGW_HAS_SECURE_API 1

#if 0 /* expanded by -frewrite-includes */
#include "_mingw_mac.h"
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC_CRTDEFS_MACRO
#define _INC_CRTDEFS_MACRO

#define __STRINGIFY(x) #x
#define __MINGW64_STRINGIFY(x) \
  __STRINGIFY(x)

#define __MINGW64_VERSION_MAJOR 5
#define __MINGW64_VERSION_MINOR 0

/* This macro holds an monotonic increasing value, which indicates
   a specific fix/patch is present on trunk.  This value isn't related to
   minor/major version-macros.  It is increased on demand, if a big
   fix was applied to trunk.  This macro gets just increased on trunk.  For
   other branches its value won't be modified.  */

#define __MINGW64_VERSION_RC 0

#define __MINGW64_VERSION_STR	\
  __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) \
  "." \
  __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR)

#define __MINGW64_VERSION_STATE "alpha"

/* mingw.org's version macros: these make gcc to define
   MINGW32_SUPPORTS_MT_EH and to use the _CRT_MT global
   and the __mingwthr_key_dtor() function from the MinGW
   CRT in its private gthr-win32.h header. */
#define __MINGW32_MAJOR_VERSION 3
#define __MINGW32_MINOR_VERSION 11

#ifdef _WIN64
   /* MS does not prefix symbols by underscores for 64-bit.  */
#  ifndef __MINGW_USE_UNDERSCORE_PREFIX
     /* As we have to support older gcc version, which are using underscores
      as symbol prefix for x64, we have to check here for the user label
      prefix defined by gcc. */
#    ifdef __USER_LABEL_PREFIX__
#      pragma push_macro ("_")
#      undef _
#      define _ 1
#      if (__USER_LABEL_PREFIX__ + 0) != 0
#        define __MINGW_USE_UNDERSCORE_PREFIX 1
#      else
#        define __MINGW_USE_UNDERSCORE_PREFIX 0
#      endif
#      undef _
#      pragma pop_macro ("_")
#    else /* ! __USER_LABEL_PREFIX__ */
#      define __MINGW_USE_UNDERSCORE_PREFIX 0
#    endif /* __USER_LABEL_PREFIX__ */
#  endif
#else /* ! ifdef _WIN64 */
   /* For 32-bits we have always to prefix by underscore.  */
#  undef __MINGW_USE_UNDERSCORE_PREFIX
#  define __MINGW_USE_UNDERSCORE_PREFIX 1
#endif /* ifdef _WIN64 */

#if __MINGW_USE_UNDERSCORE_PREFIX == 0
#  define __MINGW_IMP_SYMBOL(sym) __imp_##sym
#  define __MINGW_IMP_LSYMBOL(sym) __imp_##sym
#  define __MINGW_USYMBOL(sym) sym
#  define __MINGW_LSYMBOL(sym) _##sym
#else /* ! if __MINGW_USE_UNDERSCORE_PREFIX == 0 */
#  define __MINGW_IMP_SYMBOL(sym) _imp__##sym
#  define __MINGW_IMP_LSYMBOL(sym) __imp__##sym
#  define __MINGW_USYMBOL(sym) _##sym
#  define __MINGW_LSYMBOL(sym) sym
#endif /* if __MINGW_USE_UNDERSCORE_PREFIX == 0 */

/* Set VC specific compiler target macros.  */
#if defined(__x86_64) && defined(_X86_)
#  undef _X86_	/* _X86_ is not for __x86_64 */
#endif

#if defined(_X86_) && !defined(_M_IX86) && !defined(_M_IA64) \
   && !defined(_M_AMD64) && !defined(__x86_64)
#  if defined(__i486__)
#    define _M_IX86 400
#  elif defined(__i586__)
#    define _M_IX86 500
#  else
     /* This gives wrong (600 instead of 300) value if -march=i386 is specified
      but we cannot check for__i386__ as it is defined for all 32-bit CPUs. */
#    define _M_IX86 600
#  endif
#endif /* if defined(_X86_) && !defined(_M_IX86) && !defined(_M_IA64) ... */

#if defined(__x86_64) && !defined(_M_IX86) && !defined(_M_IA64) \
   && !defined(_M_AMD64)
#  define _M_AMD64 100
#  define _M_X64 100
#endif

#if defined(__ia64__) && !defined(_M_IX86) && !defined(_M_IA64) \
   && !defined(_M_AMD64) && !defined(_X86_) && !defined(__x86_64)
#  define _M_IA64 100
#endif

#if defined(__arm__) && !defined(_M_ARM)
#  define _M_ARM 100
#  ifndef _ARM_
#    define _ARM_ 1
#  endif
#endif

#ifndef __PTRDIFF_TYPE__
#  ifdef _WIN64
#    define __PTRDIFF_TYPE__ long long int
#  else
#    define __PTRDIFF_TYPE__ long int
#  endif
#endif

#ifndef __SIZE_TYPE__
#  ifdef _WIN64
#    define __SIZE_TYPE__ long long unsigned int
#  else
#    define __SIZE_TYPE__ long unsigned int
#  endif
#endif

#ifndef __WCHAR_TYPE__
#  define __WCHAR_TYPE__ unsigned short
#endif

#ifndef __WINT_TYPE__
#  define __WINT_TYPE__ unsigned short
#endif

#undef __MINGW_EXTENSION

#ifdef __WIDL__
#  define __MINGW_EXTENSION
#else
#  if defined(__GNUC__) || defined(__GNUG__)
#    define __MINGW_EXTENSION __extension__
#  else
#    define __MINGW_EXTENSION
#  endif
#endif /* __WIDL__ */

/* Special case nameless struct/union.  */
#ifndef __C89_NAMELESS
#  define __C89_NAMELESS __MINGW_EXTENSION
#  define __C89_NAMELESSSTRUCTNAME
#  define __C89_NAMELESSSTRUCTNAME1
#  define __C89_NAMELESSSTRUCTNAME2
#  define __C89_NAMELESSSTRUCTNAME3
#  define __C89_NAMELESSSTRUCTNAME4
#  define __C89_NAMELESSSTRUCTNAME5
#  define __C89_NAMELESSUNIONNAME
#  define __C89_NAMELESSUNIONNAME1
#  define __C89_NAMELESSUNIONNAME2
#  define __C89_NAMELESSUNIONNAME3
#  define __C89_NAMELESSUNIONNAME4
#  define __C89_NAMELESSUNIONNAME5
#  define __C89_NAMELESSUNIONNAME6
#  define __C89_NAMELESSUNIONNAME7
#  define __C89_NAMELESSUNIONNAME8
#endif

#ifndef __GNU_EXTENSION
#  define __GNU_EXTENSION __MINGW_EXTENSION
#endif

/* MinGW-w64 has some additional C99 printf/scanf feature support.
   So we add some helper macros to ease recognition of them.  */
#define __MINGW_HAVE_ANSI_C99_PRINTF 1
#define __MINGW_HAVE_WIDE_C99_PRINTF 1
#define __MINGW_HAVE_ANSI_C99_SCANF 1
#define __MINGW_HAVE_WIDE_C99_SCANF 1

#ifdef __MINGW_USE_BROKEN_INTERFACE
#  define __MINGW_POISON_NAME(__IFACE) __IFACE
#else
#  define __MINGW_POISON_NAME(__IFACE) \
     __IFACE##_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect
#endif

#ifndef __MSABI_LONG
#  ifndef __LP64__
#    define __MSABI_LONG(x) x ## l
#  else
#    define __MSABI_LONG(x) x
#  endif
#endif

#if __GNUC__
#  define __MINGW_GCC_VERSION	(__GNUC__ * 10000 + \
      __GNUC_MINOR__	* 100	+ \
      __GNUC_PATCHLEVEL__)
#else
#  define __MINGW_GCC_VERSION 0
#endif

#if defined (__GNUC__) && defined (__GNUC_MINOR__)
#  define __MINGW_GNUC_PREREQ(major, minor) \
      (__GNUC__ > (major) \
      || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))
#else
#  define __MINGW_GNUC_PREREQ(major, minor) 0
#endif

#if defined (_MSC_VER)
#  define __MINGW_MSC_PREREQ(major, minor) \
      (_MSC_VER >= (major * 100 + minor * 10))
#else
#  define __MINGW_MSC_PREREQ(major, minor) 0
#endif

#ifdef __MINGW_MSVC_COMPAT_WARNINGS
#  if __MINGW_GNUC_PREREQ (4, 5)
#    define __MINGW_ATTRIB_DEPRECATED_STR(X) \
       __attribute__ ((__deprecated__ (X)))
#  else
#    define __MINGW_ATTRIB_DEPRECATED_STR(X) \
       __MINGW_ATTRIB_DEPRECATED
#  endif
#else
#  define __MINGW_ATTRIB_DEPRECATED_STR(X)
#endif /* ifdef __MINGW_MSVC_COMPAT_WARNINGS */

#define __MINGW_SEC_WARN_STR \
  "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation"

#define __MINGW_MSVC2005_DEPREC_STR \
  "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation"

#if !defined (_CRT_NONSTDC_NO_DEPRECATE)
#  define __MINGW_ATTRIB_DEPRECATED_MSVC2005 \
      __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR)
#else
#  define __MINGW_ATTRIB_DEPRECATED_MSVC2005
#endif

#if !defined (_CRT_SECURE_NO_WARNINGS) || (_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES == 0)
#  define __MINGW_ATTRIB_DEPRECATED_SEC_WARN \
      __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR)
#else
#  define __MINGW_ATTRIB_DEPRECATED_SEC_WARN
#endif

#define __MINGW_MS_PRINTF(__format,__args) \
  __attribute__((__format__(ms_printf, __format,__args)))

#define __MINGW_MS_SCANF(__format,__args) \
  __attribute__((__format__(ms_scanf,  __format,__args)))

#define __MINGW_GNU_PRINTF(__format,__args) \
  __attribute__((__format__(gnu_printf,__format,__args)))

#define __MINGW_GNU_SCANF(__format,__args) \
  __attribute__((__format__(gnu_scanf, __format,__args)))

#undef __mingw_ovr

#ifdef __cplusplus
#  define __mingw_ovr  inline __cdecl
#elif defined (__GNUC__)
#  define __mingw_ovr static \
      __attribute__ ((__unused__)) __inline__ __cdecl
#else
#  define __mingw_ovr static __cdecl
#endif /* __cplusplus */

#endif	/* _INC_CRTDEFS_MACRO */
#if 0 /* expanded by -frewrite-includes */
#include "_mingw_secapi.h"
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
 
#ifndef _INC_MINGW_SECAPI
#define _INC_MINGW_SECAPI

/* http://msdn.microsoft.com/en-us/library/ms175759%28v=VS.100%29.aspx */
#if defined(__cplusplus) && (MINGW_HAS_SECURE_API == 1)
#ifndef _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES
#define _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES 1         /* default to 1 */
#endif /*_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES*/
#ifndef _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY
#define _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY 0  /* default to 0 */
#endif /*_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY*/
#ifndef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 0       /* default to 0 */
#endif /* _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES */
#ifndef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT 0 /* default to 0 */
#endif /* _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT */
#ifndef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY 0 /* default to 0 */
#endif /* _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY */
#else
/* Templates won't work in C, will break if secure API is not enabled, disabled */
#undef _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES
#undef _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY
#undef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES
#undef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT
#undef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY
#define _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES 0
#define _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY 0
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 0
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT 0
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY 0
#endif /*defined(__cplusplus) && (MINGW_HAS_SECURE_API == 1)*/

#define __MINGW_CRT_NAME_CONCAT2(sym) ::sym##_s

#ifdef __cplusplus
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
#endif /*__cplusplus*/

/* https://blogs.msdn.com/b/sdl/archive/2010/02/16/vc-2010-and-memcpy.aspx?Redirected=true */
/* fallback on default implementation if we can't know the size of the destination */
#if (_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY == 1)
#define __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3)\
  extern "C" {_CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;}\
  extern "C++" {\
    template <size_t __size, typename __dsttype> inline\
    typename __if_array < (__size > 1), void * >::__type __cdecl __func(\
    __dsttype (&__arg1)[__size],\
    __type2 __attrib2 (__arg2),\
    __type3 __attrib3 (__arg3)) {\
      return __MINGW_CRT_NAME_CONCAT2(__func) (__arg1,__size * sizeof(__dsttype),__arg2,__arg3) == 0 ? __arg1 : NULL;\
    }\
  }
#else
#define __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3)\
  _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;
#endif

#endif /*_INC_MINGW_SECAPI*/

/* Include _cygwin.h if we're building a Cygwin application. */
#ifdef __CYGWIN__
#if 0 /* expanded by -frewrite-includes */
#include "_cygwin.h"
#endif /* expanded by -frewrite-includes */
#endif

/* Target specific macro replacement for type "long".  In the Windows API,
   the type long is always 32 bit, even if the target is 64 bit (LLP64).
   On 64 bit Cygwin, the type long is 64 bit (LP64).  So, to get the right
   sized definitions and declarations, all usage of type long in the Windows
   headers have to be replaced by the below defined macro __LONG32. */
#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

/* C/C++ specific language defines.  */
#ifdef _WIN64
#ifdef __stdcall
#undef __stdcall
#endif
#define __stdcall
#endif

#ifndef __GNUC__
# ifndef __MINGW_IMPORT
#  define __MINGW_IMPORT  __declspec(dllimport)
# endif
# ifndef _CRTIMP
#  define _CRTIMP  __declspec(dllimport)
# endif
# define __DECLSPEC_SUPPORTED
# define __attribute__(x) /* nothing */
#else /* __GNUC__ */
# ifdef __declspec
#  ifndef __MINGW_IMPORT
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#   define __MINGW_IMPORT  extern __attribute__ ((__dllimport__))
#  endif
#  ifndef _CRTIMP
#    undef __USE_CRTIMP
#    if !defined (_CRTBLD) && !defined (_SYSCRT)
#      define __USE_CRTIMP 1
#    endif
#    ifdef __USE_CRTIMP
#      define _CRTIMP  __attribute__ ((__dllimport__))
#    else
#      define _CRTIMP
#    endif
#  endif
#  define __DECLSPEC_SUPPORTED
# else /* __declspec */
#  undef __DECLSPEC_SUPPORTED
#  undef __MINGW_IMPORT
#  ifndef _CRTIMP
#   define _CRTIMP
#  endif
# endif /* __declspec */
#endif /* __GNUC__ */

#ifdef _MSC_VER
#define USE___UUIDOF	1
#else
#define USE___UUIDOF	0
#endif

#if !defined(_MSC_VER) && !defined(_inline)
#define _inline __inline
#endif

#ifdef __cplusplus
# define __CRT_INLINE inline
#elif defined(_MSC_VER)
# define __CRT_INLINE __inline
#else
# if ( __MINGW_GNUC_PREREQ(4, 3)  &&  __STDC_VERSION__ >= 199901L) \
     || (defined (__clang__))
#  define __CRT_INLINE extern inline __attribute__((__gnu_inline__))
# else
#  define __CRT_INLINE extern __inline__
# endif
#endif

#if !defined(__MINGW_INTRIN_INLINE) && defined(__GNUC__)
#define __MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif

#ifndef __CYGWIN__
#ifdef __NO_INLINE__
#undef __CRT__NO_INLINE
#define __CRT__NO_INLINE 1
#endif
#endif

#ifdef __cplusplus
# define __UNUSED_PARAM(x)
#else
# ifdef __GNUC__
#  define __UNUSED_PARAM(x) x __attribute__ ((__unused__))
# else
#  define __UNUSED_PARAM(x) x
# endif
#endif

#ifndef __GNUC__
# ifdef _MSC_VER
#  define __restrict__  __restrict
# else
#  define __restrict__	/* nothing */
# endif
#endif /* !__GNUC__ */

#if __MINGW_GNUC_PREREQ (3,1) && !defined __GNUG__
# define __restrict_arr __restrict
#elif defined(_MSC_VER)
# define __restrict_arr __restrict
#else
# ifdef __GNUC__
#  define __restrict_arr        /* Not supported in old GCC.  */
# else
#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
#   define __restrict_arr       restrict
#  else
#   define __restrict_arr       /* Not supported.  */
#  endif
# endif
#endif

#ifdef __GNUC__
#define __MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))
#define __MINGW_ATTRIB_CONST __attribute__ ((__const__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_NORETURN __declspec(noreturn)
#define __MINGW_ATTRIB_CONST
#else
#define __MINGW_ATTRIB_NORETURN
#define __MINGW_ATTRIB_CONST
#endif

#if __MINGW_GNUC_PREREQ (3, 0)
#define __MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))
#define __MINGW_ATTRIB_PURE __attribute__ ((__pure__))
#elif __MINGW_MSC_PREREQ(14, 0)
#define __MINGW_ATTRIB_MALLOC __declspec(noalias) __declspec(restrict)
#define __MINGW_ATTRIB_PURE
#else
#define __MINGW_ATTRIB_MALLOC
#define __MINGW_ATTRIB_PURE
#endif

/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))
#else
#define __MINGW_ATTRIB_NONNULL(arg)
#endif /* GNUC >= 3.3 */

#ifdef __GNUC__
#define __MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))
#else
#define __MINGW_ATTRIB_UNUSED
#endif /* ATTRIBUTE_UNUSED */

#if  __MINGW_GNUC_PREREQ (3, 1)
#define __MINGW_ATTRIB_USED __attribute__ ((__used__))
#define __MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_USED
#define __MINGW_ATTRIB_DEPRECATED __declspec(deprecated)
#else
#define __MINGW_ATTRIB_USED __MINGW_ATTRIB_UNUSED
#define __MINGW_ATTRIB_DEPRECATED
#endif /* GNUC >= 3.1 */

#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_NOTHROW __attribute__ ((__nothrow__))
#elif __MINGW_MSC_PREREQ(12, 0) && defined (__cplusplus)
#define __MINGW_NOTHROW __declspec(nothrow)
#else
#define __MINGW_NOTHROW
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ ("0")))
#else
#define __MINGW_ATTRIB_NO_OPTIMIZE
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_PRAGMA_PARAM(x) _Pragma (#x)
#elif __MINGW_MSC_PREREQ (13, 1)
#define __MINGW_PRAGMA_PARAM(x) __pragma (x)
#else
#define __MINGW_PRAGMA_PARAM(x)
#endif

#define __MINGW_BROKEN_INTERFACE(x) \
  __MINGW_PRAGMA_PARAM(message ("Interface " _CRT_STRINGIZE(x) \
  " has unverified layout."))

#ifndef __MSVCRT_VERSION__
/*  High byte is the major version, low byte is the minor. */
# define __MSVCRT_VERSION__ 0x0700
#endif


#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif

#ifndef _INT128_DEFINED
#define _INT128_DEFINED
#ifdef __GNUC__
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
#ifdef _WIN64
#if (__clang_major__ > 3 || (__clang_major__ == 3 && __clang_minor__ >= 1)) && \
    !defined(__SIZEOF_INT128__) /* clang >= 3.1 has __int128 but no size macro */
#define __SIZEOF_INT128__ 16
#endif
#ifndef __SIZEOF_INT128__
typedef int __int128 __attribute__ ((__mode__ (TI)));
#endif
#endif
#endif /* __GNUC__ */
#endif /* _INT128_DEFINED */

#ifdef __GNUC__
#define __ptr32
#define __ptr64
#ifndef __unaligned
#define __unaligned
#endif
#ifndef __w64
#define __w64
#endif
#ifdef __cplusplus
#define __forceinline inline __attribute__((__always_inline__))
#else
#define __forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif /* __cplusplus */
#endif /* __GNUC__ */


#ifndef __nothrow
#ifdef __cplusplus
#define __nothrow __declspec(nothrow)
#else
#define __nothrow
#endif
#endif /* __nothrow */

#if 0 /* expanded by -frewrite-includes */
#include <vadefs.h>	/* other headers depend on this include */
#endif /* expanded by -frewrite-includes */
/* ===-------- vadefs.h ---------------------------------------------------===
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */

/* Only include this if we are aiming for MSVC compatibility. */
#ifndef _MSC_VER
#if 0 /* expanded by -frewrite-includes */
#include_next <vadefs.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#ifndef _INC_VADEFS
#define _INC_VADEFS

#if 0 /* expanded by -frewrite-includes */
#include <_mingw.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC__MINGW_H
#define _INC__MINGW_H

#define MINGW_HAS_SECURE_API 1

#if 0 /* expanded by -frewrite-includes */
#include "_mingw_mac.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "_mingw_secapi.h"
#endif /* expanded by -frewrite-includes */

/* Include _cygwin.h if we're building a Cygwin application. */
#ifdef __CYGWIN__
#if 0 /* expanded by -frewrite-includes */
#include "_cygwin.h"
#endif /* expanded by -frewrite-includes */
#endif

/* Target specific macro replacement for type "long".  In the Windows API,
   the type long is always 32 bit, even if the target is 64 bit (LLP64).
   On 64 bit Cygwin, the type long is 64 bit (LP64).  So, to get the right
   sized definitions and declarations, all usage of type long in the Windows
   headers have to be replaced by the below defined macro __LONG32. */
#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

/* C/C++ specific language defines.  */
#ifdef _WIN64
#ifdef __stdcall
#undef __stdcall
#endif
#define __stdcall
#endif

#ifndef __GNUC__
# ifndef __MINGW_IMPORT
#  define __MINGW_IMPORT  __declspec(dllimport)
# endif
# ifndef _CRTIMP
#  define _CRTIMP  __declspec(dllimport)
# endif
# define __DECLSPEC_SUPPORTED
# define __attribute__(x) /* nothing */
#else /* __GNUC__ */
# ifdef __declspec
#  ifndef __MINGW_IMPORT
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#   define __MINGW_IMPORT  extern __attribute__ ((__dllimport__))
#  endif
#  ifndef _CRTIMP
#    undef __USE_CRTIMP
#    if !defined (_CRTBLD) && !defined (_SYSCRT)
#      define __USE_CRTIMP 1
#    endif
#    ifdef __USE_CRTIMP
#      define _CRTIMP  __attribute__ ((__dllimport__))
#    else
#      define _CRTIMP
#    endif
#  endif
#  define __DECLSPEC_SUPPORTED
# else /* __declspec */
#  undef __DECLSPEC_SUPPORTED
#  undef __MINGW_IMPORT
#  ifndef _CRTIMP
#   define _CRTIMP
#  endif
# endif /* __declspec */
#endif /* __GNUC__ */

#ifdef _MSC_VER
#define USE___UUIDOF	1
#else
#define USE___UUIDOF	0
#endif

#if !defined(_MSC_VER) && !defined(_inline)
#define _inline __inline
#endif

#ifdef __cplusplus
# define __CRT_INLINE inline
#elif defined(_MSC_VER)
# define __CRT_INLINE __inline
#else
# if ( __MINGW_GNUC_PREREQ(4, 3)  &&  __STDC_VERSION__ >= 199901L) \
     || (defined (__clang__))
#  define __CRT_INLINE extern inline __attribute__((__gnu_inline__))
# else
#  define __CRT_INLINE extern __inline__
# endif
#endif

#if !defined(__MINGW_INTRIN_INLINE) && defined(__GNUC__)
#define __MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif

#ifndef __CYGWIN__
#ifdef __NO_INLINE__
#undef __CRT__NO_INLINE
#define __CRT__NO_INLINE 1
#endif
#endif

#ifdef __cplusplus
# define __UNUSED_PARAM(x)
#else
# ifdef __GNUC__
#  define __UNUSED_PARAM(x) x __attribute__ ((__unused__))
# else
#  define __UNUSED_PARAM(x) x
# endif
#endif

#ifndef __GNUC__
# ifdef _MSC_VER
#  define __restrict__  __restrict
# else
#  define __restrict__	/* nothing */
# endif
#endif /* !__GNUC__ */

#if __MINGW_GNUC_PREREQ (3,1) && !defined __GNUG__
# define __restrict_arr __restrict
#elif defined(_MSC_VER)
# define __restrict_arr __restrict
#else
# ifdef __GNUC__
#  define __restrict_arr        /* Not supported in old GCC.  */
# else
#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
#   define __restrict_arr       restrict
#  else
#   define __restrict_arr       /* Not supported.  */
#  endif
# endif
#endif

#ifdef __GNUC__
#define __MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))
#define __MINGW_ATTRIB_CONST __attribute__ ((__const__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_NORETURN __declspec(noreturn)
#define __MINGW_ATTRIB_CONST
#else
#define __MINGW_ATTRIB_NORETURN
#define __MINGW_ATTRIB_CONST
#endif

#if __MINGW_GNUC_PREREQ (3, 0)
#define __MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))
#define __MINGW_ATTRIB_PURE __attribute__ ((__pure__))
#elif __MINGW_MSC_PREREQ(14, 0)
#define __MINGW_ATTRIB_MALLOC __declspec(noalias) __declspec(restrict)
#define __MINGW_ATTRIB_PURE
#else
#define __MINGW_ATTRIB_MALLOC
#define __MINGW_ATTRIB_PURE
#endif

/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))
#else
#define __MINGW_ATTRIB_NONNULL(arg)
#endif /* GNUC >= 3.3 */

#ifdef __GNUC__
#define __MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))
#else
#define __MINGW_ATTRIB_UNUSED
#endif /* ATTRIBUTE_UNUSED */

#if  __MINGW_GNUC_PREREQ (3, 1)
#define __MINGW_ATTRIB_USED __attribute__ ((__used__))
#define __MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_USED
#define __MINGW_ATTRIB_DEPRECATED __declspec(deprecated)
#else
#define __MINGW_ATTRIB_USED __MINGW_ATTRIB_UNUSED
#define __MINGW_ATTRIB_DEPRECATED
#endif /* GNUC >= 3.1 */

#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_NOTHROW __attribute__ ((__nothrow__))
#elif __MINGW_MSC_PREREQ(12, 0) && defined (__cplusplus)
#define __MINGW_NOTHROW __declspec(nothrow)
#else
#define __MINGW_NOTHROW
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ ("0")))
#else
#define __MINGW_ATTRIB_NO_OPTIMIZE
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_PRAGMA_PARAM(x) _Pragma (#x)
#elif __MINGW_MSC_PREREQ (13, 1)
#define __MINGW_PRAGMA_PARAM(x) __pragma (x)
#else
#define __MINGW_PRAGMA_PARAM(x)
#endif

#define __MINGW_BROKEN_INTERFACE(x) \
  __MINGW_PRAGMA_PARAM(message ("Interface " _CRT_STRINGIZE(x) \
  " has unverified layout."))

#ifndef __MSVCRT_VERSION__
/*  High byte is the major version, low byte is the minor. */
# define __MSVCRT_VERSION__ 0x0700
#endif


#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif

#ifndef _INT128_DEFINED
#define _INT128_DEFINED
#ifdef __GNUC__
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
#ifdef _WIN64
#if (__clang_major__ > 3 || (__clang_major__ == 3 && __clang_minor__ >= 1)) && \
    !defined(__SIZEOF_INT128__) /* clang >= 3.1 has __int128 but no size macro */
#define __SIZEOF_INT128__ 16
#endif
#ifndef __SIZEOF_INT128__
typedef int __int128 __attribute__ ((__mode__ (TI)));
#endif
#endif
#endif /* __GNUC__ */
#endif /* _INT128_DEFINED */

#ifdef __GNUC__
#define __ptr32
#define __ptr64
#ifndef __unaligned
#define __unaligned
#endif
#ifndef __w64
#define __w64
#endif
#ifdef __cplusplus
#define __forceinline inline __attribute__((__always_inline__))
#else
#define __forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif /* __cplusplus */
#endif /* __GNUC__ */

#if !defined(_WIN32) && !defined(__CYGWIN__)
#error Only Win32 target is supported!
#endif

#ifndef __nothrow
#ifdef __cplusplus
#define __nothrow __declspec(nothrow)
#else
#define __nothrow
#endif
#endif /* __nothrow */

#if 0 /* expanded by -frewrite-includes */
#include <vadefs.h>	/* other headers depend on this include */
#endif /* expanded by -frewrite-includes */

#ifndef _CRT_STRINGIZE
#define __CRT_STRINGIZE(_Value) #_Value
#define _CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)
#endif /* _CRT_STRINGIZE */

#ifndef _CRT_WIDE
#define __CRT_WIDE(_String) L ## _String
#define _CRT_WIDE(_String) __CRT_WIDE(_String)
#endif /* _CRT_WIDE */

#ifndef _W64
#define _W64
#endif

#ifndef _CRTIMP_NOIA64
#ifdef __ia64__
#define _CRTIMP_NOIA64
#else
#define _CRTIMP_NOIA64 _CRTIMP
#endif
#endif /* _CRTIMP_NOIA64 */

#ifndef _CRTIMP2
#define _CRTIMP2 _CRTIMP
#endif

#ifndef _CRTIMP_ALTERNATIVE
#define _CRTIMP_ALTERNATIVE _CRTIMP
#define _CRT_ALTERNATIVE_IMPORTED
#endif /* _CRTIMP_ALTERNATIVE */

#ifndef _MRTIMP2
#define _MRTIMP2  _CRTIMP
#endif

/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#if !defined (_DLL) && defined (__GNUC__)
#define _DLL
#endif

#ifndef _MT
#define _MT
#endif

#ifndef _MCRTIMP
#define _MCRTIMP _CRTIMP
#endif

#ifndef _CRTIMP_PURE
#define _CRTIMP_PURE _CRTIMP
#endif

#ifndef _PGLOBAL
#define _PGLOBAL
#endif

#ifndef _AGLOBAL
#define _AGLOBAL
#endif

#define _SECURECRT_FILL_BUFFER_PATTERN 0xFD
#define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)

#ifndef _CRT_INSECURE_DEPRECATE_MEMORY
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#endif

#ifndef _CRT_INSECURE_DEPRECATE_GLOBALS
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#endif

#ifndef _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_MANAGED_HEAP_DEPRECATE
#endif

#ifndef _CRT_OBSOLETE
#define _CRT_OBSOLETE(_NewItem)
#endif

#ifndef __WIDL__

#if defined (_WIN32) && !defined (_WIN64) && !defined (__MINGW_USE_VC2005_COMPAT)
#ifndef _USE_32BIT_TIME_T
#define _USE_32BIT_TIME_T
#endif
#endif

#ifndef _CONST_RETURN
#define _CONST_RETURN
#endif

#ifndef UNALIGNED
#if defined(_M_IA64) || defined(_M_AMD64)
#define UNALIGNED __unaligned
#else
#define UNALIGNED
#endif
#endif /* UNALIGNED */

#ifndef _CRT_ALIGN
#ifdef  _MSC_VER
#define _CRT_ALIGN(x) __declspec(align(x))
#else /* __GNUC__ */
#define _CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))
#endif
#endif /* _CRT_ALIGN */

#endif /* __WIDL__ */

#ifndef __CRTDECL
#define __CRTDECL __cdecl
#endif

#define _ARGMAX 100

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

#ifndef _CRT_UNUSED
#define _CRT_UNUSED(x) (void)x
#endif

/* MSVC defines _NATIVE_NULLPTR_SUPPORTED when nullptr is supported. We emulate it here for GCC. */
#if __MINGW_GNUC_PREREQ(4, 6)
#if defined(__GNUC__) && (defined(__GXX_EXPERIMENTAL_CXX0X__) || __cplusplus >= 201103L)
#define _NATIVE_NULLPTR_SUPPORTED
#endif
#endif

/* We are activating __USE_MINGW_ANSI_STDIO for various define indicators.
   Note that we enable it also for _GNU_SOURCE in C++, but not for C case. */
#if (defined (_POSIX) || defined (_POSIX_SOURCE) || defined (_POSIX_C_SOURCE) \
     || defined (_ISOC99_SOURCE) \
     || defined (_XOPEN_SOURCE) || defined (_XOPEN_SOURCE_EXTENDED) \
     || (defined (_GNU_SOURCE) && defined (__cplusplus)) \
     || defined (_SVID_SOURCE)) \
    && !defined(__USE_MINGW_ANSI_STDIO)
/* Enable __USE_MINGW_ANSI_STDIO if _POSIX defined
 * and If user did _not_ specify it explicitly... */
#  define __USE_MINGW_ANSI_STDIO			1
#endif

/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#undef  _CRT_glob
#define _CRT_glob _dowildcard


#if defined(_MSC_VER) && !defined(_MSC_EXTENSIONS)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSSTRUCT) && \
   !defined(NONAMELESSUNION)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSUNION)  && \
   !defined(NONAMELESSSTRUCT)
#define NONAMELESSSTRUCT	1
#endif

#ifndef __ANONYMOUS_DEFINED
#define __ANONYMOUS_DEFINED
#define _ANONYMOUS_UNION  __MINGW_EXTENSION
#define _ANONYMOUS_STRUCT __MINGW_EXTENSION
#ifndef NONAMELESSUNION
#define _UNION_NAME(x)
#define _STRUCT_NAME(x)
#else /* NONAMELESSUNION */
#define _UNION_NAME(x)  x
#define _STRUCT_NAME(x) x
#endif
#endif	/* __ANONYMOUS_DEFINED */

#ifndef DUMMYUNIONNAME
# ifdef NONAMELESSUNION
#  define DUMMYUNIONNAME  u
#  define DUMMYUNIONNAME1 u1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2 u2
#  define DUMMYUNIONNAME3 u3
#  define DUMMYUNIONNAME4 u4
#  define DUMMYUNIONNAME5 u5
#  define DUMMYUNIONNAME6 u6
#  define DUMMYUNIONNAME7 u7
#  define DUMMYUNIONNAME8 u8
#  define DUMMYUNIONNAME9 u9
# else /* NONAMELESSUNION */
#  define DUMMYUNIONNAME
#  define DUMMYUNIONNAME1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2
#  define DUMMYUNIONNAME3
#  define DUMMYUNIONNAME4
#  define DUMMYUNIONNAME5
#  define DUMMYUNIONNAME6
#  define DUMMYUNIONNAME7
#  define DUMMYUNIONNAME8
#  define DUMMYUNIONNAME9
# endif
#endif	/* DUMMYUNIONNAME */

#ifndef DUMMYSTRUCTNAME
# ifdef NONAMELESSUNION
#  define DUMMYSTRUCTNAME  s
#  define DUMMYSTRUCTNAME1 s1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2 s2
#  define DUMMYSTRUCTNAME3 s3
#  define DUMMYSTRUCTNAME4 s4
#  define DUMMYSTRUCTNAME5 s5
# else
#  define DUMMYSTRUCTNAME
#  define DUMMYSTRUCTNAME1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2
#  define DUMMYSTRUCTNAME3
#  define DUMMYSTRUCTNAME4
#  define DUMMYSTRUCTNAME5
# endif
#endif /* DUMMYSTRUCTNAME */


/* Macros for __uuidof template-based emulation */
#if defined(__cplusplus) && (USE___UUIDOF == 0)

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)           \
    extern "C++" {                                                      \
    template<> inline const GUID &__mingw_uuidof<type>() {              \
        static const IID __uuid_inst = {l,w1,w2, {b1,b2,b3,b4,b5,b6,b7,b8}}; \
        return __uuid_inst;                                             \
    }                                                                   \
    template<> inline const GUID &__mingw_uuidof<type*>() {             \
        return __mingw_uuidof<type>();                                  \
    }                                                                   \
    }

#define __uuidof(type) __mingw_uuidof<__typeof(type)>()

#else

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MINGW_INTRIN_INLINE
#if !defined (__clang__)
void __cdecl __debugbreak(void);
__MINGW_INTRIN_INLINE void __cdecl __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}
#endif
#endif

/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);

#ifdef __cplusplus
}
#endif

#endif /* _INC__MINGW_H */

#ifndef MINGW_SDK_INIT
#define MINGW_SDK_INIT

#ifdef MINGW_HAS_SECURE_API
#define __STDC_SECURE_LIB__ 200411L
#define __GOT_SECURE_LIB__ __STDC_SECURE_LIB__
#endif

#ifndef __WIDL__
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_directx.h"
#endif /* expanded by -frewrite-includes */
#if 1

#define __MINGW_HAS_DXSDK 1

#ifndef MINGW_HAS_DDRAW_H
#define MINGW_HAS_DDRAW_H 1
#define MINGW_DDRAW_VERSION	7
#endif

#else

#undef __MINGW_HAS_DXSDK
#undef MINGW_HAS_DDRAW_H
#undef MINGW_DDRAW_VERSION

#endif
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_ddk.h"
#endif /* expanded by -frewrite-includes */
#ifndef MINGW_DDK_H
#define MINGW_DDK_H
#if 1
#define MINGW_HAS_DDK_H 1
#endif
#endif
#endif

#endif /* MINGW_SDK_INIT */

#ifndef __WIDL__
#undef _CRT_PACKING
#define _CRT_PACKING 8
#pragma pack(push,_CRT_PACKING)
#endif

#ifdef __cplusplus
extern "C" {
#endif

#if defined (__GNUC__)
#ifndef __GNUC_VA_LIST
#define __GNUC_VA_LIST
  typedef __builtin_va_list __gnuc_va_list;
#endif
#endif /* __GNUC__ */

#ifndef _VA_LIST_DEFINED	/* if stdargs.h didn't define it */
#define _VA_LIST_DEFINED
#if defined(__GNUC__)
  typedef __gnuc_va_list va_list;
#elif defined(_MSC_VER)
  typedef char *  va_list;
#elif !defined(__WIDL__)
#error VARARGS not implemented for this compiler
#endif
#endif /* _VA_LIST_DEFINED */

#ifdef __cplusplus
#define _ADDRESSOF(v) (&reinterpret_cast<const char &>(v))
#else
#define _ADDRESSOF(v) (&(v))
#endif

#if defined (__GNUC__)
/* Use GCC builtins */

#define _crt_va_start(v,l)	__builtin_va_start(v,l)
#define _crt_va_arg(v,l)	__builtin_va_arg(v,l)
#define _crt_va_end(v)		__builtin_va_end(v)
#define _crt_va_copy(d,s)	__builtin_va_copy(d,s)

#elif defined(_MSC_VER)
/* MSVC specific */

#if defined(_M_IA64)
#define _VA_ALIGN 8
#define _SLOTSIZEOF(t) ((sizeof(t) + _VA_ALIGN - 1) & ~(_VA_ALIGN - 1))
#define _VA_STRUCT_ALIGN 16
#define _ALIGNOF(ap) ((((ap)+_VA_STRUCT_ALIGN - 1) & ~(_VA_STRUCT_ALIGN -1)) - (ap))
#define _APALIGN(t,ap) (__alignof(t) > 8 ? _ALIGNOF((uintptr_t) ap) : 0)
#else
#define _SLOTSIZEOF(t) (sizeof(t))
#define _APALIGN(t,ap) (__alignof(t))
#endif

#if defined(_M_IX86)

#define _INTSIZEOF(n) ((sizeof(n) + sizeof(int) - 1) & ~(sizeof(int) - 1))
#define _crt_va_start(v,l)	((v) = (va_list)_ADDRESSOF(l) + _INTSIZEOF(l))
#define _crt_va_arg(v,l)	(*(l *)(((v) += _INTSIZEOF(l)) - _INTSIZEOF(l)))
#define _crt_va_end(v)		((v) = (va_list)0)
#define _crt_va_copy(d,s)	((d) = (s))

#elif defined(_M_AMD64)

#define _PTRSIZEOF(n) ((sizeof(n) + sizeof(void*) - 1) & ~(sizeof(void*) - 1))
#define _ISSTRUCT(t)  ((sizeof(t) > sizeof(void*)) || (sizeof(t) & (sizeof(t) - 1)) != 0)
#define _crt_va_start(v,l)	((v) = (va_list)_ADDRESSOF(l) + _PTRSIZEOF(l))
#define _crt_va_arg(v,t)	_ISSTRUCT(t) ?						\
				 (**(t**)(((v) += sizeof(void*)) - sizeof(void*))) :	\
				 ( *(t *)(((v) += sizeof(void*)) - sizeof(void*)))
#define _crt_va_end(v)		((v) = (va_list)0)
#define _crt_va_copy(d,s)	((d) = (s))

#elif defined(_M_IA64)

#error VARARGS not implemented for IA64

#else

#error VARARGS not implemented for this TARGET

#endif /* cpu ifdefs */

#endif /* compiler ifdefs */

#ifdef __cplusplus
}
#endif

#ifndef __WIDL__
#pragma pack(pop)
#endif

#endif /* _INC_VADEFS */

#else

#ifndef __clang_vadefs_h
#define __clang_vadefs_h

#if 0 /* expanded by -frewrite-includes */
#include_next <vadefs.h>
#endif /* expanded by -frewrite-includes */

/* Override macros from vadefs.h with definitions that work with Clang. */
#ifdef _crt_va_start
#undef _crt_va_start
#define _crt_va_start(ap, param) __builtin_va_start(ap, param)
#endif
#ifdef _crt_va_end
#undef _crt_va_end
#define _crt_va_end(ap)          __builtin_va_end(ap)
#endif
#ifdef _crt_va_arg
#undef _crt_va_arg
#define _crt_va_arg(ap, type)    __builtin_va_arg(ap, type)
#endif

/* VS 2015 switched to double underscore names, which is an improvement, but now
 * we have to intercept those names too.
 */
#ifdef __crt_va_start
#undef __crt_va_start
#define __crt_va_start(ap, param) __builtin_va_start(ap, param)
#endif
#ifdef __crt_va_end
#undef __crt_va_end
#define __crt_va_end(ap)          __builtin_va_end(ap)
#endif
#ifdef __crt_va_arg
#undef __crt_va_arg
#define __crt_va_arg(ap, type)    __builtin_va_arg(ap, type)
#endif

#endif
#endif

#ifndef _CRT_STRINGIZE
#define __CRT_STRINGIZE(_Value) #_Value
#define _CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)
#endif /* _CRT_STRINGIZE */

#ifndef _CRT_WIDE
#define __CRT_WIDE(_String) L ## _String
#define _CRT_WIDE(_String) __CRT_WIDE(_String)
#endif /* _CRT_WIDE */

#ifndef _W64
#define _W64
#endif

#ifndef _CRTIMP_NOIA64
#ifdef __ia64__
#define _CRTIMP_NOIA64
#else
#define _CRTIMP_NOIA64 _CRTIMP
#endif
#endif /* _CRTIMP_NOIA64 */

#ifndef _CRTIMP2
#define _CRTIMP2 _CRTIMP
#endif

#ifndef _CRTIMP_ALTERNATIVE
#define _CRTIMP_ALTERNATIVE _CRTIMP
#define _CRT_ALTERNATIVE_IMPORTED
#endif /* _CRTIMP_ALTERNATIVE */

#ifndef _MRTIMP2
#define _MRTIMP2  _CRTIMP
#endif

/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#if !defined (_DLL) && defined (__GNUC__)
#define _DLL
#endif

#ifndef _MT
#define _MT
#endif

#ifndef _MCRTIMP
#define _MCRTIMP _CRTIMP
#endif

#ifndef _CRTIMP_PURE
#define _CRTIMP_PURE _CRTIMP
#endif

#ifndef _PGLOBAL
#define _PGLOBAL
#endif

#ifndef _AGLOBAL
#define _AGLOBAL
#endif

#define _SECURECRT_FILL_BUFFER_PATTERN 0xFD
#define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)

#ifndef _CRT_INSECURE_DEPRECATE_MEMORY
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#endif

#ifndef _CRT_INSECURE_DEPRECATE_GLOBALS
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#endif

#ifndef _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_MANAGED_HEAP_DEPRECATE
#endif

#ifndef _CRT_OBSOLETE
#define _CRT_OBSOLETE(_NewItem)
#endif

#ifndef __WIDL__

#if defined (_WIN32) && !defined (_WIN64) && !defined (__MINGW_USE_VC2005_COMPAT)
#ifndef _USE_32BIT_TIME_T
#define _USE_32BIT_TIME_T
#endif
#endif

#ifndef _CONST_RETURN
#define _CONST_RETURN
#endif

#ifndef UNALIGNED
#if defined(_M_IA64) || defined(_M_AMD64)
#define UNALIGNED __unaligned
#else
#define UNALIGNED
#endif
#endif /* UNALIGNED */

#ifndef _CRT_ALIGN
#ifdef  _MSC_VER
#define _CRT_ALIGN(x) __declspec(align(x))
#else /* __GNUC__ */
#define _CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))
#endif
#endif /* _CRT_ALIGN */

#endif /* __WIDL__ */

#ifndef __CRTDECL
#define __CRTDECL __cdecl
#endif

#define _ARGMAX 100

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

#ifndef _CRT_UNUSED
#define _CRT_UNUSED(x) (void)x
#endif

/* MSVC defines _NATIVE_NULLPTR_SUPPORTED when nullptr is supported. We emulate it here for GCC. */
#if __MINGW_GNUC_PREREQ(4, 6)
#if defined(__GNUC__) && (defined(__GXX_EXPERIMENTAL_CXX0X__) || __cplusplus >= 201103L)
#define _NATIVE_NULLPTR_SUPPORTED
#endif
#endif

/* We are activating __USE_MINGW_ANSI_STDIO for various define indicators.
   Note that we enable it also for _GNU_SOURCE in C++, but not for C case. */
#if (defined (_POSIX) || defined (_POSIX_SOURCE) || defined (_POSIX_C_SOURCE) \
     || defined (_ISOC99_SOURCE) \
     || defined (_XOPEN_SOURCE) || defined (_XOPEN_SOURCE_EXTENDED) \
     || (defined (_GNU_SOURCE) && defined (__cplusplus)) \
     || defined (_SVID_SOURCE)) \
    && !defined(__USE_MINGW_ANSI_STDIO)
/* Enable __USE_MINGW_ANSI_STDIO if _POSIX defined
 * and If user did _not_ specify it explicitly... */
#  define __USE_MINGW_ANSI_STDIO			1
#endif

/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#undef  _CRT_glob
#define _CRT_glob _dowildcard


#if defined(_MSC_VER) && !defined(_MSC_EXTENSIONS)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSSTRUCT) && \
   !defined(NONAMELESSUNION)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSUNION)  && \
   !defined(NONAMELESSSTRUCT)
#define NONAMELESSSTRUCT	1
#endif

#ifndef __ANONYMOUS_DEFINED
#define __ANONYMOUS_DEFINED
#define _ANONYMOUS_UNION  __MINGW_EXTENSION
#define _ANONYMOUS_STRUCT __MINGW_EXTENSION
#ifndef NONAMELESSUNION
#define _UNION_NAME(x)
#define _STRUCT_NAME(x)
#else /* NONAMELESSUNION */
#define _UNION_NAME(x)  x
#define _STRUCT_NAME(x) x
#endif
#endif	/* __ANONYMOUS_DEFINED */

#ifndef DUMMYUNIONNAME
# ifdef NONAMELESSUNION
#  define DUMMYUNIONNAME  u
#  define DUMMYUNIONNAME1 u1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2 u2
#  define DUMMYUNIONNAME3 u3
#  define DUMMYUNIONNAME4 u4
#  define DUMMYUNIONNAME5 u5
#  define DUMMYUNIONNAME6 u6
#  define DUMMYUNIONNAME7 u7
#  define DUMMYUNIONNAME8 u8
#  define DUMMYUNIONNAME9 u9
# else /* NONAMELESSUNION */
#  define DUMMYUNIONNAME
#  define DUMMYUNIONNAME1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2
#  define DUMMYUNIONNAME3
#  define DUMMYUNIONNAME4
#  define DUMMYUNIONNAME5
#  define DUMMYUNIONNAME6
#  define DUMMYUNIONNAME7
#  define DUMMYUNIONNAME8
#  define DUMMYUNIONNAME9
# endif
#endif	/* DUMMYUNIONNAME */

#ifndef DUMMYSTRUCTNAME
# ifdef NONAMELESSUNION
#  define DUMMYSTRUCTNAME  s
#  define DUMMYSTRUCTNAME1 s1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2 s2
#  define DUMMYSTRUCTNAME3 s3
#  define DUMMYSTRUCTNAME4 s4
#  define DUMMYSTRUCTNAME5 s5
# else
#  define DUMMYSTRUCTNAME
#  define DUMMYSTRUCTNAME1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2
#  define DUMMYSTRUCTNAME3
#  define DUMMYSTRUCTNAME4
#  define DUMMYSTRUCTNAME5
# endif
#endif /* DUMMYSTRUCTNAME */


/* Macros for __uuidof template-based emulation */
#if defined(__cplusplus) && (USE___UUIDOF == 0)

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)           \
    extern "C++" {                                                      \
    template<> inline const GUID &__mingw_uuidof<type>() {              \
        static const IID __uuid_inst = {l,w1,w2, {b1,b2,b3,b4,b5,b6,b7,b8}}; \
        return __uuid_inst;                                             \
    }                                                                   \
    template<> inline const GUID &__mingw_uuidof<type*>() {             \
        return __mingw_uuidof<type>();                                  \
    }                                                                   \
    }

#define __uuidof(type) __mingw_uuidof<__typeof(type)>()

#else

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MINGW_INTRIN_INLINE
#if !defined (__clang__)
void __cdecl __debugbreak(void);
__MINGW_INTRIN_INLINE void __cdecl __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}
#endif
#endif

/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);

#ifdef __cplusplus
}
#endif

#endif /* _INC__MINGW_H */

#ifndef MINGW_SDK_INIT
#define MINGW_SDK_INIT

#ifdef MINGW_HAS_SECURE_API
#define __STDC_SECURE_LIB__ 200411L
#define __GOT_SECURE_LIB__ __STDC_SECURE_LIB__
#endif

#ifndef __WIDL__
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_directx.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_ddk.h"
#endif /* expanded by -frewrite-includes */
#endif

#endif /* MINGW_SDK_INIT */
#if 0 /* expanded by -frewrite-includes */
#include <sdkddkver.h>
#endif /* expanded by -frewrite-includes */
/**
 * sdkddkver.h: Version definitions for SDK and DDK. Originally
 * from ReactOS PSDK/DDK, this file is in the public domain:
 *
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC_SDKDDKVER
#define _INC_SDKDDKVER

/* _WIN32_WINNT */
#define _WIN32_WINNT_NT4		0x0400
#define _WIN32_WINNT_WIN2K		0x0500
#define _WIN32_WINNT_WINXP		0x0501
#define _WIN32_WINNT_WS03		0x0502
#define _WIN32_WINNT_WIN6		0x0600
#define _WIN32_WINNT_VISTA		0x0600
#define _WIN32_WINNT_WS08		0x0600
#define _WIN32_WINNT_LONGHORN		0x0600
#define _WIN32_WINNT_WIN7		0x0601
#define _WIN32_WINNT_WIN8		0x0602
#define _WIN32_WINNT_WINBLUE            0x0603

/* _WIN32_IE */
#define _WIN32_IE_IE20			0x0200
#define _WIN32_IE_IE30			0x0300
#define _WIN32_IE_IE302			0x0302
#define _WIN32_IE_IE40			0x0400
#define _WIN32_IE_IE401			0x0401
#define _WIN32_IE_IE50			0x0500
#define _WIN32_IE_IE501			0x0501
#define _WIN32_IE_IE55			0x0550
#define _WIN32_IE_IE60			0x0600
#define _WIN32_IE_IE60SP1		0x0601
#define _WIN32_IE_IE60SP2		0x0603
#define _WIN32_IE_IE70			0x0700
#define _WIN32_IE_IE80			0x0800
#define _WIN32_IE_IE90                  0x0900
#define _WIN32_IE_IE100                 0x0a00

/* Mappings Between IE Version  and Windows Version */
#define _WIN32_IE_NT4			_WIN32_IE_IE20
#define _WIN32_IE_NT4SP1		_WIN32_IE_IE20
#define _WIN32_IE_NT4SP2		_WIN32_IE_IE20
#define _WIN32_IE_NT4SP3		_WIN32_IE_IE302
#define _WIN32_IE_NT4SP4		_WIN32_IE_IE401
#define _WIN32_IE_NT4SP5		_WIN32_IE_IE401
#define _WIN32_IE_NT4SP6		_WIN32_IE_IE50
#define _WIN32_IE_WIN98			_WIN32_IE_IE401
#define _WIN32_IE_WIN98SE		_WIN32_IE_IE50
#define _WIN32_IE_WINME			_WIN32_IE_IE55
#define _WIN32_IE_WIN2K			_WIN32_IE_IE501
#define _WIN32_IE_WIN2KSP1		_WIN32_IE_IE501
#define _WIN32_IE_WIN2KSP2		_WIN32_IE_IE501
#define _WIN32_IE_WIN2KSP3		_WIN32_IE_IE501
#define _WIN32_IE_WIN2KSP4		_WIN32_IE_IE501
#define _WIN32_IE_XP			_WIN32_IE_IE60
#define _WIN32_IE_XPSP1			_WIN32_IE_IE60SP1
#define _WIN32_IE_XPSP2			_WIN32_IE_IE60SP2
#define _WIN32_IE_WS03			0x0602
#define _WIN32_IE_WS03SP1		_WIN32_IE_IE60SP2
#define _WIN32_IE_WIN6			_WIN32_IE_IE70
#define _WIN32_IE_LONGHORN		_WIN32_IE_IE70
#define _WIN32_IE_WIN7			_WIN32_IE_IE80
#define _WIN32_IE_WIN8                  _WIN32_IE_IE100
#define _WIN32_IE_WINBLUE               _WIN32_IE_IE100

/* NTDDI_VERSION */
#ifndef NTDDI_WIN2K
#define NTDDI_WIN2K			0x05000000
#endif
#ifndef NTDDI_WIN2KSP1
#define NTDDI_WIN2KSP1			0x05000100
#endif
#ifndef NTDDI_WIN2KSP2
#define NTDDI_WIN2KSP2			0x05000200
#endif
#ifndef NTDDI_WIN2KSP3
#define NTDDI_WIN2KSP3			0x05000300
#endif
#ifndef NTDDI_WIN2KSP4
#define NTDDI_WIN2KSP4			0x05000400
#endif

#ifndef NTDDI_WINXP
#define NTDDI_WINXP			0x05010000
#endif
#ifndef NTDDI_WINXPSP1
#define NTDDI_WINXPSP1			0x05010100
#endif
#ifndef NTDDI_WINXPSP2
#define NTDDI_WINXPSP2			0x05010200
#endif
#ifndef NTDDI_WINXPSP3
#define NTDDI_WINXPSP3			0x05010300
#endif
#ifndef NTDDI_WINXPSP4
#define NTDDI_WINXPSP4			0x05010400
#endif

#define NTDDI_WS03			0x05020000
#define NTDDI_WS03SP1			0x05020100
#define NTDDI_WS03SP2			0x05020200
#define NTDDI_WS03SP3			0x05020300
#define NTDDI_WS03SP4			0x05020400

#define NTDDI_WIN6			0x06000000
#define NTDDI_WIN6SP1			0x06000100
#define NTDDI_WIN6SP2			0x06000200
#define NTDDI_WIN6SP3			0x06000300
#define NTDDI_WIN6SP4			0x06000400

#define NTDDI_VISTA			NTDDI_WIN6
#define NTDDI_VISTASP1			NTDDI_WIN6SP1
#define NTDDI_VISTASP2			NTDDI_WIN6SP2
#define NTDDI_VISTASP3			NTDDI_WIN6SP3
#define NTDDI_VISTASP4			NTDDI_WIN6SP4
#define NTDDI_LONGHORN			NTDDI_VISTA

#define NTDDI_WS08			NTDDI_WIN6SP1
#define NTDDI_WS08SP2			NTDDI_WIN6SP2
#define NTDDI_WS08SP3			NTDDI_WIN6SP3
#define NTDDI_WS08SP4			NTDDI_WIN6SP4

#define NTDDI_WIN7			0x06010000
#define NTDDI_WIN8                      0x06020000
#define NTDDI_WINBLUE                   0x06030000

/* Version Fields in NTDDI_VERSION */
#define OSVERSION_MASK			0xFFFF0000U
#define SPVERSION_MASK			0x0000FF00
#define SUBVERSION_MASK			0x000000FF

/* Macros to Extract Version Fields From NTDDI_VERSION */
#define OSVER(Version)			((Version) & OSVERSION_MASK)
#define SPVER(Version)			(((Version) & SPVERSION_MASK) >> 8)
#define SUBVER(Version)			(((Version) & SUBVERSION_MASK))

/* Macros to get the NTDDI for a given WIN32 */
#define NTDDI_VERSION_FROM_WIN32_WINNT2(Version)	Version##0000
#define NTDDI_VERSION_FROM_WIN32_WINNT(Version)		NTDDI_VERSION_FROM_WIN32_WINNT2(Version)

/* Select Default WIN32_WINNT Value */
#if !defined(_WIN32_WINNT) && !defined(_CHICAGO_)
#define _WIN32_WINNT	_WIN32_WINNT_WS03
#endif

/* Choose NTDDI Version */
#ifndef NTDDI_VERSION
#ifdef _WIN32_WINNT
#define NTDDI_VERSION	NTDDI_VERSION_FROM_WIN32_WINNT(_WIN32_WINNT)
#else
#define NTDDI_VERSION	NTDDI_WS03
#endif
#endif

/* Choose WINVER Value */
#ifndef WINVER
#ifdef _WIN32_WINNT
#define WINVER		_WIN32_WINNT
#else
#define WINVER		0x0502
#endif
#endif

/* Choose IE Version */
#ifndef _WIN32_IE
#ifdef _WIN32_WINNT
#if (_WIN32_WINNT <= _WIN32_WINNT_NT4)
#define _WIN32_IE	_WIN32_IE_IE50
#elif (_WIN32_WINNT <= _WIN32_WINNT_WIN2K)
#define _WIN32_IE	_WIN32_IE_IE501
#elif (_WIN32_WINNT <= _WIN32_WINNT_WINXP)
#define _WIN32_IE	_WIN32_IE_IE60
#elif (_WIN32_WINNT <= _WIN32_WINNT_WS03)
#define _WIN32_IE	_WIN32_IE_WS03
#elif (_WIN32_WINNT <= _WIN32_WINNT_VISTA)
#define _WIN32_IE       _WIN32_IE_LONGHORN
#elif (_WIN32_WINNT <= _WIN32_WINNT_WIN7)
#define _WIN32_IE       _WIN32_IE_WIN7
#elif (_WIN32_WINNT <= _WIN32_WINNT_WIN8)
#define _WIN32_IE       _WIN32_IE_WIN8
#else
#define _WIN32_IE       0x0a00
#endif
#else
#define _WIN32_IE	0x0700
#endif
#endif

/* Make Sure NTDDI_VERSION and _WIN32_WINNT Match */
#if ((OSVER(NTDDI_VERSION) == NTDDI_WIN2K) && (_WIN32_WINNT != _WIN32_WINNT_WIN2K)) || \
    ((OSVER(NTDDI_VERSION) == NTDDI_WINXP) && (_WIN32_WINNT != _WIN32_WINNT_WINXP)) || \
    ((OSVER(NTDDI_VERSION) == NTDDI_WS03) && (_WIN32_WINNT != _WIN32_WINNT_WS03))   || \
    ((OSVER(NTDDI_VERSION) == NTDDI_WINXP) && (_WIN32_WINNT != _WIN32_WINNT_WINXP))
#error NTDDI_VERSION and _WIN32_WINNT mismatch!
#endif

#endif /* _INC_SDKDDKVER */

/* Some kludge for Obj-C.
   For Obj-C the 'interface' is a keyword, but interface is used
   in midl-code too.  To resolve this conflict for at least the
   main windows API header, we define it here temporary.  */
#ifdef __OBJC__
#pragma push_macro("interface")
#undef interface
#define interface struct
#endif

#ifndef _INC_WINDOWS
#define _INC_WINDOWS

#if defined(RC_INVOKED) && !defined(NOWINRES)

#if 0 /* expanded by -frewrite-includes */
#include <winresrc.h>
#endif /* expanded by -frewrite-includes */
#else

#ifdef RC_INVOKED
#define NOATOM
#define NOGDI
#define NOGDICAPMASKS
#define NOMETAFILE
#define NOMINMAX
#define NOMSG
#define NOOPENFILE
#define NORASTEROPS
#define NOSCROLL
#define NOSOUND
#define NOSYSMETRICS
#define NOTEXTMETRIC
#define NOWH
#define NOCOMM
#define NOKANJI
#define NOCRYPT
#define NOMCX
#endif

#if defined(__x86_64) && \
  !(defined(_X86_) || defined(__i386__) || defined(_IA64_))
#if !defined(_AMD64_)
#define _AMD64_
#endif
#endif /* _AMD64_ */

#if defined(__ia64__) && \
  !(defined(_X86_) || defined(__x86_64) || defined(_AMD64_))
#if !defined(_IA64_)
#define _IA64_
#endif
#endif /* _IA64_ */

#ifndef RC_INVOKED
#if 0 /* expanded by -frewrite-includes */
#include <excpt.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#ifndef _INC_EXCPT
#define _INC_EXCPT

#if 0 /* expanded by -frewrite-includes */
#include <crtdefs.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC_CRTDEFS
#define _INC_CRTDEFS

#if 0 /* expanded by -frewrite-includes */
#include <_mingw.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC__MINGW_H
#define _INC__MINGW_H

#define MINGW_HAS_SECURE_API 1

#if 0 /* expanded by -frewrite-includes */
#include "_mingw_mac.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "_mingw_secapi.h"
#endif /* expanded by -frewrite-includes */

/* Include _cygwin.h if we're building a Cygwin application. */
#ifdef __CYGWIN__
#if 0 /* expanded by -frewrite-includes */
#include "_cygwin.h"
#endif /* expanded by -frewrite-includes */
#endif

/* Target specific macro replacement for type "long".  In the Windows API,
   the type long is always 32 bit, even if the target is 64 bit (LLP64).
   On 64 bit Cygwin, the type long is 64 bit (LP64).  So, to get the right
   sized definitions and declarations, all usage of type long in the Windows
   headers have to be replaced by the below defined macro __LONG32. */
#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

/* C/C++ specific language defines.  */
#ifdef _WIN64
#ifdef __stdcall
#undef __stdcall
#endif
#define __stdcall
#endif

#ifndef __GNUC__
# ifndef __MINGW_IMPORT
#  define __MINGW_IMPORT  __declspec(dllimport)
# endif
# ifndef _CRTIMP
#  define _CRTIMP  __declspec(dllimport)
# endif
# define __DECLSPEC_SUPPORTED
# define __attribute__(x) /* nothing */
#else /* __GNUC__ */
# ifdef __declspec
#  ifndef __MINGW_IMPORT
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#   define __MINGW_IMPORT  extern __attribute__ ((__dllimport__))
#  endif
#  ifndef _CRTIMP
#    undef __USE_CRTIMP
#    if !defined (_CRTBLD) && !defined (_SYSCRT)
#      define __USE_CRTIMP 1
#    endif
#    ifdef __USE_CRTIMP
#      define _CRTIMP  __attribute__ ((__dllimport__))
#    else
#      define _CRTIMP
#    endif
#  endif
#  define __DECLSPEC_SUPPORTED
# else /* __declspec */
#  undef __DECLSPEC_SUPPORTED
#  undef __MINGW_IMPORT
#  ifndef _CRTIMP
#   define _CRTIMP
#  endif
# endif /* __declspec */
#endif /* __GNUC__ */

#ifdef _MSC_VER
#define USE___UUIDOF	1
#else
#define USE___UUIDOF	0
#endif

#if !defined(_MSC_VER) && !defined(_inline)
#define _inline __inline
#endif

#ifdef __cplusplus
# define __CRT_INLINE inline
#elif defined(_MSC_VER)
# define __CRT_INLINE __inline
#else
# if ( __MINGW_GNUC_PREREQ(4, 3)  &&  __STDC_VERSION__ >= 199901L) \
     || (defined (__clang__))
#  define __CRT_INLINE extern inline __attribute__((__gnu_inline__))
# else
#  define __CRT_INLINE extern __inline__
# endif
#endif

#if !defined(__MINGW_INTRIN_INLINE) && defined(__GNUC__)
#define __MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif

#ifndef __CYGWIN__
#ifdef __NO_INLINE__
#undef __CRT__NO_INLINE
#define __CRT__NO_INLINE 1
#endif
#endif

#ifdef __cplusplus
# define __UNUSED_PARAM(x)
#else
# ifdef __GNUC__
#  define __UNUSED_PARAM(x) x __attribute__ ((__unused__))
# else
#  define __UNUSED_PARAM(x) x
# endif
#endif

#ifndef __GNUC__
# ifdef _MSC_VER
#  define __restrict__  __restrict
# else
#  define __restrict__	/* nothing */
# endif
#endif /* !__GNUC__ */

#if __MINGW_GNUC_PREREQ (3,1) && !defined __GNUG__
# define __restrict_arr __restrict
#elif defined(_MSC_VER)
# define __restrict_arr __restrict
#else
# ifdef __GNUC__
#  define __restrict_arr        /* Not supported in old GCC.  */
# else
#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
#   define __restrict_arr       restrict
#  else
#   define __restrict_arr       /* Not supported.  */
#  endif
# endif
#endif

#ifdef __GNUC__
#define __MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))
#define __MINGW_ATTRIB_CONST __attribute__ ((__const__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_NORETURN __declspec(noreturn)
#define __MINGW_ATTRIB_CONST
#else
#define __MINGW_ATTRIB_NORETURN
#define __MINGW_ATTRIB_CONST
#endif

#if __MINGW_GNUC_PREREQ (3, 0)
#define __MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))
#define __MINGW_ATTRIB_PURE __attribute__ ((__pure__))
#elif __MINGW_MSC_PREREQ(14, 0)
#define __MINGW_ATTRIB_MALLOC __declspec(noalias) __declspec(restrict)
#define __MINGW_ATTRIB_PURE
#else
#define __MINGW_ATTRIB_MALLOC
#define __MINGW_ATTRIB_PURE
#endif

/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))
#else
#define __MINGW_ATTRIB_NONNULL(arg)
#endif /* GNUC >= 3.3 */

#ifdef __GNUC__
#define __MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))
#else
#define __MINGW_ATTRIB_UNUSED
#endif /* ATTRIBUTE_UNUSED */

#if  __MINGW_GNUC_PREREQ (3, 1)
#define __MINGW_ATTRIB_USED __attribute__ ((__used__))
#define __MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_USED
#define __MINGW_ATTRIB_DEPRECATED __declspec(deprecated)
#else
#define __MINGW_ATTRIB_USED __MINGW_ATTRIB_UNUSED
#define __MINGW_ATTRIB_DEPRECATED
#endif /* GNUC >= 3.1 */

#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_NOTHROW __attribute__ ((__nothrow__))
#elif __MINGW_MSC_PREREQ(12, 0) && defined (__cplusplus)
#define __MINGW_NOTHROW __declspec(nothrow)
#else
#define __MINGW_NOTHROW
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ ("0")))
#else
#define __MINGW_ATTRIB_NO_OPTIMIZE
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_PRAGMA_PARAM(x) _Pragma (#x)
#elif __MINGW_MSC_PREREQ (13, 1)
#define __MINGW_PRAGMA_PARAM(x) __pragma (x)
#else
#define __MINGW_PRAGMA_PARAM(x)
#endif

#define __MINGW_BROKEN_INTERFACE(x) \
  __MINGW_PRAGMA_PARAM(message ("Interface " _CRT_STRINGIZE(x) \
  " has unverified layout."))

#ifndef __MSVCRT_VERSION__
/*  High byte is the major version, low byte is the minor. */
# define __MSVCRT_VERSION__ 0x0700
#endif


#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif

#ifndef _INT128_DEFINED
#define _INT128_DEFINED
#ifdef __GNUC__
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
#ifdef _WIN64
#if (__clang_major__ > 3 || (__clang_major__ == 3 && __clang_minor__ >= 1)) && \
    !defined(__SIZEOF_INT128__) /* clang >= 3.1 has __int128 but no size macro */
#define __SIZEOF_INT128__ 16
#endif
#ifndef __SIZEOF_INT128__
typedef int __int128 __attribute__ ((__mode__ (TI)));
#endif
#endif
#endif /* __GNUC__ */
#endif /* _INT128_DEFINED */

#ifdef __GNUC__
#define __ptr32
#define __ptr64
#ifndef __unaligned
#define __unaligned
#endif
#ifndef __w64
#define __w64
#endif
#ifdef __cplusplus
#define __forceinline inline __attribute__((__always_inline__))
#else
#define __forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif /* __cplusplus */
#endif /* __GNUC__ */

#if !defined(_WIN32) && !defined(__CYGWIN__)
#error Only Win32 target is supported!
#endif

#ifndef __nothrow
#ifdef __cplusplus
#define __nothrow __declspec(nothrow)
#else
#define __nothrow
#endif
#endif /* __nothrow */

#if 0 /* expanded by -frewrite-includes */
#include <vadefs.h>	/* other headers depend on this include */
#endif /* expanded by -frewrite-includes */

#ifndef _CRT_STRINGIZE
#define __CRT_STRINGIZE(_Value) #_Value
#define _CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)
#endif /* _CRT_STRINGIZE */

#ifndef _CRT_WIDE
#define __CRT_WIDE(_String) L ## _String
#define _CRT_WIDE(_String) __CRT_WIDE(_String)
#endif /* _CRT_WIDE */

#ifndef _W64
#define _W64
#endif

#ifndef _CRTIMP_NOIA64
#ifdef __ia64__
#define _CRTIMP_NOIA64
#else
#define _CRTIMP_NOIA64 _CRTIMP
#endif
#endif /* _CRTIMP_NOIA64 */

#ifndef _CRTIMP2
#define _CRTIMP2 _CRTIMP
#endif

#ifndef _CRTIMP_ALTERNATIVE
#define _CRTIMP_ALTERNATIVE _CRTIMP
#define _CRT_ALTERNATIVE_IMPORTED
#endif /* _CRTIMP_ALTERNATIVE */

#ifndef _MRTIMP2
#define _MRTIMP2  _CRTIMP
#endif

/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#if !defined (_DLL) && defined (__GNUC__)
#define _DLL
#endif

#ifndef _MT
#define _MT
#endif

#ifndef _MCRTIMP
#define _MCRTIMP _CRTIMP
#endif

#ifndef _CRTIMP_PURE
#define _CRTIMP_PURE _CRTIMP
#endif

#ifndef _PGLOBAL
#define _PGLOBAL
#endif

#ifndef _AGLOBAL
#define _AGLOBAL
#endif

#define _SECURECRT_FILL_BUFFER_PATTERN 0xFD
#define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)

#ifndef _CRT_INSECURE_DEPRECATE_MEMORY
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#endif

#ifndef _CRT_INSECURE_DEPRECATE_GLOBALS
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#endif

#ifndef _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_MANAGED_HEAP_DEPRECATE
#endif

#ifndef _CRT_OBSOLETE
#define _CRT_OBSOLETE(_NewItem)
#endif

#ifndef __WIDL__

#if defined (_WIN32) && !defined (_WIN64) && !defined (__MINGW_USE_VC2005_COMPAT)
#ifndef _USE_32BIT_TIME_T
#define _USE_32BIT_TIME_T
#endif
#endif

#ifndef _CONST_RETURN
#define _CONST_RETURN
#endif

#ifndef UNALIGNED
#if defined(_M_IA64) || defined(_M_AMD64)
#define UNALIGNED __unaligned
#else
#define UNALIGNED
#endif
#endif /* UNALIGNED */

#ifndef _CRT_ALIGN
#ifdef  _MSC_VER
#define _CRT_ALIGN(x) __declspec(align(x))
#else /* __GNUC__ */
#define _CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))
#endif
#endif /* _CRT_ALIGN */

#endif /* __WIDL__ */

#ifndef __CRTDECL
#define __CRTDECL __cdecl
#endif

#define _ARGMAX 100

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

#ifndef _CRT_UNUSED
#define _CRT_UNUSED(x) (void)x
#endif

/* MSVC defines _NATIVE_NULLPTR_SUPPORTED when nullptr is supported. We emulate it here for GCC. */
#if __MINGW_GNUC_PREREQ(4, 6)
#if defined(__GNUC__) && (defined(__GXX_EXPERIMENTAL_CXX0X__) || __cplusplus >= 201103L)
#define _NATIVE_NULLPTR_SUPPORTED
#endif
#endif

/* We are activating __USE_MINGW_ANSI_STDIO for various define indicators.
   Note that we enable it also for _GNU_SOURCE in C++, but not for C case. */
#if (defined (_POSIX) || defined (_POSIX_SOURCE) || defined (_POSIX_C_SOURCE) \
     || defined (_ISOC99_SOURCE) \
     || defined (_XOPEN_SOURCE) || defined (_XOPEN_SOURCE_EXTENDED) \
     || (defined (_GNU_SOURCE) && defined (__cplusplus)) \
     || defined (_SVID_SOURCE)) \
    && !defined(__USE_MINGW_ANSI_STDIO)
/* Enable __USE_MINGW_ANSI_STDIO if _POSIX defined
 * and If user did _not_ specify it explicitly... */
#  define __USE_MINGW_ANSI_STDIO			1
#endif

/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#undef  _CRT_glob
#define _CRT_glob _dowildcard


#if defined(_MSC_VER) && !defined(_MSC_EXTENSIONS)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSSTRUCT) && \
   !defined(NONAMELESSUNION)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSUNION)  && \
   !defined(NONAMELESSSTRUCT)
#define NONAMELESSSTRUCT	1
#endif

#ifndef __ANONYMOUS_DEFINED
#define __ANONYMOUS_DEFINED
#define _ANONYMOUS_UNION  __MINGW_EXTENSION
#define _ANONYMOUS_STRUCT __MINGW_EXTENSION
#ifndef NONAMELESSUNION
#define _UNION_NAME(x)
#define _STRUCT_NAME(x)
#else /* NONAMELESSUNION */
#define _UNION_NAME(x)  x
#define _STRUCT_NAME(x) x
#endif
#endif	/* __ANONYMOUS_DEFINED */

#ifndef DUMMYUNIONNAME
# ifdef NONAMELESSUNION
#  define DUMMYUNIONNAME  u
#  define DUMMYUNIONNAME1 u1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2 u2
#  define DUMMYUNIONNAME3 u3
#  define DUMMYUNIONNAME4 u4
#  define DUMMYUNIONNAME5 u5
#  define DUMMYUNIONNAME6 u6
#  define DUMMYUNIONNAME7 u7
#  define DUMMYUNIONNAME8 u8
#  define DUMMYUNIONNAME9 u9
# else /* NONAMELESSUNION */
#  define DUMMYUNIONNAME
#  define DUMMYUNIONNAME1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2
#  define DUMMYUNIONNAME3
#  define DUMMYUNIONNAME4
#  define DUMMYUNIONNAME5
#  define DUMMYUNIONNAME6
#  define DUMMYUNIONNAME7
#  define DUMMYUNIONNAME8
#  define DUMMYUNIONNAME9
# endif
#endif	/* DUMMYUNIONNAME */

#ifndef DUMMYSTRUCTNAME
# ifdef NONAMELESSUNION
#  define DUMMYSTRUCTNAME  s
#  define DUMMYSTRUCTNAME1 s1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2 s2
#  define DUMMYSTRUCTNAME3 s3
#  define DUMMYSTRUCTNAME4 s4
#  define DUMMYSTRUCTNAME5 s5
# else
#  define DUMMYSTRUCTNAME
#  define DUMMYSTRUCTNAME1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2
#  define DUMMYSTRUCTNAME3
#  define DUMMYSTRUCTNAME4
#  define DUMMYSTRUCTNAME5
# endif
#endif /* DUMMYSTRUCTNAME */


/* Macros for __uuidof template-based emulation */
#if defined(__cplusplus) && (USE___UUIDOF == 0)

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)           \
    extern "C++" {                                                      \
    template<> inline const GUID &__mingw_uuidof<type>() {              \
        static const IID __uuid_inst = {l,w1,w2, {b1,b2,b3,b4,b5,b6,b7,b8}}; \
        return __uuid_inst;                                             \
    }                                                                   \
    template<> inline const GUID &__mingw_uuidof<type*>() {             \
        return __mingw_uuidof<type>();                                  \
    }                                                                   \
    }

#define __uuidof(type) __mingw_uuidof<__typeof(type)>()

#else

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MINGW_INTRIN_INLINE
#if !defined (__clang__)
void __cdecl __debugbreak(void);
__MINGW_INTRIN_INLINE void __cdecl __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}
#endif
#endif

/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);

#ifdef __cplusplus
}
#endif

#endif /* _INC__MINGW_H */

#ifndef MINGW_SDK_INIT
#define MINGW_SDK_INIT

#ifdef MINGW_HAS_SECURE_API
#define __STDC_SECURE_LIB__ 200411L
#define __GOT_SECURE_LIB__ __STDC_SECURE_LIB__
#endif

#ifndef __WIDL__
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_directx.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_ddk.h"
#endif /* expanded by -frewrite-includes */
#endif

#endif /* MINGW_SDK_INIT */

#ifndef __WIDL__
#undef _CRT_PACKING
#define _CRT_PACKING 8
#pragma pack(push,_CRT_PACKING)
#endif

#ifdef __ERRCODE_DEFINED_MS
/* #define __ERRCODE_DEFINED_MS */
typedef int errcode;
#endif

#ifndef _CRTNOALIAS
#define _CRTNOALIAS
#endif

#ifndef _CRTRESTRICT
#define _CRTRESTRICT
#endif


#ifndef _WCHAR_T_DEFINED
#define _WCHAR_T_DEFINED
#if !defined(__cplusplus) && !defined(__WIDL__)
typedef unsigned short wchar_t;
#endif /* C++ */
#endif /* _WCHAR_T_DEFINED */

#ifndef _WCTYPE_T_DEFINED
#define _WCTYPE_T_DEFINED
#ifndef _WINT_T
#define _WINT_T
typedef unsigned short wint_t;
typedef unsigned short wctype_t;
#endif /* _WINT_T */
#endif /* _WCTYPE_T_DEFINED */

#ifndef _ERRCODE_DEFINED
#define _ERRCODE_DEFINED
typedef int errno_t;
#endif

#ifndef _TIME32_T_DEFINED
#define _TIME32_T_DEFINED
typedef long __time32_t;
#endif

#ifndef _TIME64_T_DEFINED
#define _TIME64_T_DEFINED
__MINGW_EXTENSION typedef __int64 __time64_t;
#endif /* _TIME64_T_DEFINED */

#ifdef _USE_32BIT_TIME_T
#ifdef _WIN64
#error You cannot use 32-bit time_t (_USE_32BIT_TIME_T) with _WIN64
#undef _USE_32BIT_TIME_T
#endif
#endif /* _USE_32BIT_TIME_T */

#ifndef _TIME_T_DEFINED
#define _TIME_T_DEFINED
#ifdef _USE_32BIT_TIME_T
typedef __time32_t time_t;
#else
typedef __time64_t time_t;
#endif
#endif /* _TIME_T_DEFINED */

#ifndef _CRT_SECURE_CPP_NOTHROW
#define _CRT_SECURE_CPP_NOTHROW throw()
#endif

#if defined(__cplusplus) && _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret,__func,__dsttype,__dst) \
  extern "C++" { \
    template <size_t __size> \
    inline __ret __cdecl __func(__dsttype (&__dst)[__size]) { \
        return __func(__dst,__size); \
    } \
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret,__func,__dsttype,__dst,__type1,__arg1) \
  extern "C++" {\
    template <size_t __size> \
    inline __ret __cdecl __func(__dsttype (&__dst)[__size], __type1 __arg1) { \
        return __func(__dst,__size,__arg1);  \
    }\
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2)\
  extern "C++" {\
    template <size_t __size> inline\
    __ret __cdecl __func(__dsttype (&__dst)[__size], __type1 __arg1, __type2 __arg2) { \
        return __func(__dst,__size,__arg1,__arg2);  \
    }\
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \
  extern "C++" { \
    template <size_t __size> inline \
    __ret __cdecl __func(__dsttype (&__dst)[__size], __type1 __arg1, __type2 __arg2, __type3 __arg3) { \
        return __func(__dst,__size,__arg1,__arg2,__arg3); \
    }\
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3,__type4,__arg4) \
  extern "C++" { \
    template <size_t __size> inline \
    __ret __cdecl __func(__dsttype (&__dst)[__size], __type1 __arg1, __type2 __arg2, __type3 __arg3, __type4 __arg4) { \
        return __func(__dst,__size,__arg1,__arg2,__arg3,__arg4); \
    }\
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1) \
  extern "C++" { \
    template <size_t __size> inline \
      __ret __cdecl __func(__type0 __arg0, __dsttype (&__dst)[__size], __type1 __arg1) { \
      return __func(__arg0, __dst, __size, __arg1); \
    } \
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \
  extern "C++" { \
    template <size_t __size> inline \
    __ret __cdecl __func(__type0 __arg0, __dsttype (&__dst)[__size], __type1 __arg1, __type2 __arg2) { \
      return __func(__arg0, __dst, __size, __arg1, __arg2); \
    } \
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \
  extern "C++" { \
    template <size_t __size> inline \
      __ret __cdecl __func(__type0 __arg0, __dsttype (&__dst)[__size], __type1 __arg1, __type2 __arg2, __type3 __arg3) { \
      return __func(__arg0, __dst, __size, __arg1, __arg2, __arg3); \
    } \
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret,__func,__type1,__arg1,__type2,__arg2,__dsttype,__dst) \
  extern "C++" { \
    template <size_t __size> inline \
    __ret __cdecl __func(__type1 __arg1, __type2 __arg2, __dsttype (&__dst)[__size]) { \
      return __func(__arg1, __arg2, __dst, __size); \
    } \
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1) \
  extern "C++" {\
    template <size_t __size> \
    inline __ret __cdecl __func(__dsttype (&__dst)[__size], __type1 __arg1, ...) { \
      va_list __vaargs; \
      _crt_va_start(__vaargs, __arg1); \
      __ret __retval = __vfunc(__dst,__size,__arg1,__vaargs); \
      _crt_va_end(__vaargs); \
      return __retval; \
    }\
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \
  extern "C++" {\
    template <size_t __size> \
    inline __ret __cdecl __func(__dsttype (&__dst)[__size], __type1 __arg1, __type2 __arg2, ...) { \
      va_list __vaargs; \
      _crt_va_start(__vaargs, __arg2); \
      __ret __retval = __vfunc(__dst,__size,__arg1,__arg2,__vaargs); \
      _crt_va_end(__vaargs); \
      return __retval; \
    }\
  }

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret,__func,__dsttype,__src) \
  extern "C++" { \
    template <size_t __drive_size, size_t __dir_size, size_t __name_size, size_t __ext_size> inline \
    __ret __cdecl __func(const __dsttype *__src, __dsttype (&__drive)[__drive_size], __dsttype (&__dir)[__dir_size], __dsttype (&__name)[__name_size], __dsttype (&__ext)[__ext_size]) { \
        return __func(__src, __drive, __drive_size, __dir, __dir_size, __name, __name_size, __ext, __ext_size); \
    } \
  }

#else

#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret,__func,__dsttype,__dst)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret,__func,__dsttype,__dst,__type1,__arg1)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3,__type4,__arg4)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret,__func,__type1,__arg1,__type2,__arg2,__dsttype,__dst)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1,__type2,__arg2)
#define __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret,__func,__dsttype,__src)

#endif

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(__ret_type, __ret_policy, __decl_spec, __name, __dst_attr, __dst_type, __dst) \
    __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name##_s, __dst_attr, __dst_type, __dst)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1(__ret_type, __ret_policy, __decl_spec, __name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1) \
    __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2(__ret_type, __ret_policy, __decl_spec, __name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2) \
    __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3(__ret_type, __ret_policy, __decl_spec, __name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3) \
    __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4(__ret_type, __ret_policy, __decl_spec, __name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3, __arg4_type, __arg4) \
    __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type, __ret_policy, __decl_spec, __func_name, __func_name##_s, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3, __arg4_type, __arg4)

#if defined(__cplusplus) && _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES

#define __RETURN_POLICY_SAME(__func_call, __dst) return (__func_call)
#define __RETURN_POLICY_DST(__func_call, __dst) return ((__func_call) == 0 ? __dst : 0)
#define __RETURN_POLICY_VOID(__func_call, __dst) (__func_call); return
#define __EMPTY_DECLSPEC

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __dst_attr, __dst_type, __dst) \
    __inline __ret_type __CRTDECL __insecure_##__name(__dst_attr __dst_type *__dst) \
    { \
        __decl_spec __ret_type __cdecl __name(__dst_type *__dst); \
        return __name(__dst); \
    } \
    extern "C++" { \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(_T &__dst) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type*>(__dst)); \
    } \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(const _T &__dst) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type *>(__dst)); \
    } \
    template <> \
    inline __ret_type __CRTDECL __name(__dst_type *&__dst) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(__dst); \
    } \
    template <size_t __size> \
    inline __ret_type __CRTDECL __name(__dst_type (&__dst)[__size]) _CRT_SECURE_CPP_NOTHROW { \
        __ret_policy(__sec_name(__dst, __size), __dst); \
    } \
    }

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __sec_dst_type, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2) \
    __inline __ret_type __CRTDECL __insecure_##__name(__dst_attr __dst_type *__dst, __arg1_type __arg1, __arg2_type __arg2) \
    { \
        __decl_spec __ret_type __cdecl __name(__dst_type *__dst, __arg1_type, __arg2_type); \
        return __name(__dst, __arg1, __arg2); \
    } \
    extern "C++" { \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(_T &__dst, __arg1_type __arg1, __arg2_type __arg2) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type*>(__dst), __arg1, __arg2); \
    } \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(const _T &__dst, __arg1_type __arg1, __arg2_type __arg2) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type *>(__dst), __arg1, __arg2); \
    } \
    template <> \
    inline __ret_type __CRTDECL __name(__dst_type *&__dst, __arg1_type __arg1, __arg2_type __arg2) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(__dst, __arg1, __arg2); \
    } \
    template <size_t __size> \
    inline __ret_type __CRTDECL __name(__sec_dst_type (&__dst)[__size], __arg1_type __arg1, __arg2_type __arg2) _CRT_SECURE_CPP_NOTHROW { \
        __ret_policy(__sec_name(__dst, __size), __dst); \
    } \
    }

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __sec_dst_type, __dst_attr, __dst_type, __dst, __arg1_type, __arg1) \
    __inline __ret_type __CRTDECL __insecure_##__name(__dst_attr __dst_type *__dst, __arg1_type __arg1) \
    { \
        __decl_spec __ret_type __cdecl __name(__dst_type *__dst, __arg1_type); \
        return __name(__dst, __arg1); \
    } \
    extern "C++" { \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(_T &__dst, __arg1_type __arg1) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type*>(__dst), __arg1); \
    } \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(const _T &__dst, __arg1_type __arg1) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type *>(__dst), __arg1); \
    } \
    template <> \
    inline __ret_type __CRTDECL __name(__dst_type *&__dst, __arg1_type __arg1) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(__dst, __arg1); \
    } \
    template <size_t __size> \
    inline __ret_type __CRTDECL __name(__sec_dst_type (&__dst)[__size], __arg1_type __arg1) _CRT_SECURE_CPP_NOTHROW { \
        __ret_policy(__sec_name(__dst, __size), __dst); \
    } \
    }

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __sec_dst_type, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3) \
    __inline __ret_type __CRTDECL __insecure_##__name(__dst_attr __dst_type *__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3) \
    { \
        __decl_spec __ret_type __cdecl __name(__dst_type *__dst, __arg1_type, __arg2_type, __arg3_type); \
        return __name(__dst, __arg1, __arg2, __arg3); \
    } \
    extern "C++" { \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(_T &__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type*>(__dst), __arg1, __arg2, __arg3); \
    } \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(const _T &__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type *>(__dst), __arg1, __arg2, __arg3); \
    } \
    template <> \
    inline __ret_type __CRTDECL __name(__dst_type *&__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(__dst, __arg1, __arg2, __arg3); \
    } \
    template <size_t __size> \
    inline __ret_type __CRTDECL __name(__sec_dst_type (&__dst)[__size], __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3) _CRT_SECURE_CPP_NOTHROW { \
        __ret_policy(__sec_name(__dst, __size), __dst); \
    } \
    }

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __sec_dst_type, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3, __arg4_type, __arg4) \
    __inline __ret_type __CRTDECL __insecure_##__name(__dst_attr __dst_type *__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3, __arg4_type __arg4) \
    { \
        __decl_spec __ret_type __cdecl __name(__dst_type *__dst, __arg1_type, __arg2_type, __arg3_type, __arg4_type); \
        return __name(__dst, __arg1, __arg2, __arg3, __arg4); \
    } \
    extern "C++" { \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(_T &__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3, __arg4_type __arg4) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type*>(__dst), __arg1, __arg2, __arg3, __arg4); \
    } \
    template <typename _T> \
    inline __ret_type __CRTDECL __name(const _T &__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3, __arg4_type __arg4) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(static_cast<__dst_type *>(__dst), __arg1, __arg2, __arg3, __arg4); \
    } \
    template <> \
    inline __ret_type __CRTDECL __name(__dst_type *&__dst, __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3, __arg4_type __arg4) _CRT_SECURE_CPP_NOTHROW { \
        return __insecure_##__name(__dst, __arg1, __arg2, __arg3, __arg4); \
    } \
    template <size_t __size> \
    inline __ret_type __CRTDECL __name(__sec_dst_type (&__dst)[__size], __arg1_type __arg1, __arg2_type __arg2, __arg3_type __arg3, __arg4_type __arg4) _CRT_SECURE_CPP_NOTHROW { \
        __ret_policy(__sec_name(__dst, __size)); \
    } \
    }

#else

#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __dst_attr, __dst_type, __dst)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3)
#define __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX(__ret_type, __ret_policy, __decl_spec, __name, __sec_name, __dst_attr, __dst_type, __dst, __arg1_type, __arg1, __arg2_type, __arg2, __arg3_type, __arg3, __arg4_type, __arg4)

#endif

struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;

#ifndef _TAGLC_ID_DEFINED
#define _TAGLC_ID_DEFINED
typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;
#endif /* _TAGLC_ID_DEFINED */

#ifndef _THREADLOCALEINFO
#define _THREADLOCALEINFO
typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;
#endif /* _THREADLOCALEINFO */

#ifndef __crt_typefix
#define __crt_typefix(ctype)
#endif

#ifndef __WIDL__
#pragma pack(pop)
#endif

#endif /* _INC_CRTDEFS */

#pragma pack(push,_CRT_PACKING)

#ifdef __cplusplus
extern "C" {
#endif

  struct _EXCEPTION_POINTERS;

#ifndef EXCEPTION_DISPOSITION
#define EXCEPTION_DISPOSITION   int
#endif
#define ExceptionContinueExecution 0
#define ExceptionContinueSearch 1
#define ExceptionNestedException 2
#define ExceptionCollidedUnwind 3
#define ExceptionExecuteHandler 4

#if (defined(_X86_) && !defined(__x86_64))
  struct _EXCEPTION_RECORD;
  struct _CONTEXT;

  EXCEPTION_DISPOSITION __cdecl _except_handler(struct _EXCEPTION_RECORD *_ExceptionRecord,void *_EstablisherFrame,struct _CONTEXT *_ContextRecord,void *_DispatcherContext);
#elif defined(__ia64__)

  typedef struct _EXCEPTION_POINTERS *Exception_info_ptr;
  struct _EXCEPTION_RECORD;
  struct _CONTEXT;
  struct _DISPATCHER_CONTEXT;

  __MINGW_EXTENSION _CRTIMP EXCEPTION_DISPOSITION __cdecl __C_specific_handler (struct _EXCEPTION_RECORD *_ExceptionRecord,unsigned __int64 _MemoryStackFp,unsigned __int64 _BackingStoreFp,struct _CONTEXT *_ContextRecord,struct _DISPATCHER_CONTEXT *_DispatcherContext,unsigned __int64 _GlobalPointer);
#elif defined(__x86_64)

  struct _EXCEPTION_RECORD;
  struct _CONTEXT;
#endif

#define GetExceptionCode _exception_code
#define exception_code _exception_code
#define GetExceptionInformation (struct _EXCEPTION_POINTERS *)_exception_info
#define exception_info (struct _EXCEPTION_POINTERS *)_exception_info
#define AbnormalTermination _abnormal_termination
#define abnormal_termination _abnormal_termination

  unsigned long __cdecl _exception_code(void);
  void *__cdecl _exception_info(void);
  int __cdecl _abnormal_termination(void);

#define EXCEPTION_EXECUTE_HANDLER 1
#define EXCEPTION_CONTINUE_SEARCH 0
#define EXCEPTION_CONTINUE_EXECUTION -1

  /* CRT stuff */
  typedef void (__cdecl * _PHNDLR)(int);

  struct _XCPT_ACTION {
    unsigned long XcptNum;
    int SigNum;
    _PHNDLR XcptAction;
  };

  extern struct _XCPT_ACTION _XcptActTab[];
  extern int _XcptActTabCount;
  extern int _XcptActTabSize;
  extern int _First_FPE_Indx;
  extern int _Num_FPE;

  int __cdecl __CppXcptFilter(unsigned long _ExceptionNum,struct _EXCEPTION_POINTERS * _ExceptionPtr);
  int __cdecl _XcptFilter(unsigned long _ExceptionNum,struct _EXCEPTION_POINTERS * _ExceptionPtr);

  /*
  * The type of function that is expected as an exception handler to be
  * installed with __try1.
  */
  typedef EXCEPTION_DISPOSITION (*PEXCEPTION_HANDLER)(struct _EXCEPTION_RECORD*, void*, struct _CONTEXT*, void*);

#if !defined (HAVE_NO_SEH) && defined (__MINGW_EXCPT_DEFINE_PSDK)
  /*
  * This is not entirely necessary, but it is the structure installed by
  * the __try1 primitive below.
  */
  typedef struct _EXCEPTION_REGISTRATION {
    struct _EXCEPTION_REGISTRATION *prev;
    EXCEPTION_DISPOSITION (*handler)(struct _EXCEPTION_RECORD*, void*, struct _CONTEXT*, void*);
  } EXCEPTION_REGISTRATION, *PEXCEPTION_REGISTRATION;

  typedef EXCEPTION_REGISTRATION EXCEPTION_REGISTRATION_RECORD;
  typedef PEXCEPTION_REGISTRATION PEXCEPTION_REGISTRATION_RECORD;
#endif

#if (defined(_X86_) && !defined(__x86_64))
#define __try1(pHandler) \
  __asm__ __volatile__ ("pushl %0;pushl %%fs:0;movl %%esp,%%fs:0;" : : "g" (pHandler));

#define	__except1	\
  __asm__ __volatile__ ("movl (%%esp),%%eax;movl %%eax,%%fs:0;addl $8,%%esp;" \
  : : : "%eax");
#elif defined(__x86_64)
#define __try1(pHandler) \
    __asm__ __volatile__ ("\t.l_startw:\n" \
    "\t.seh_handler __C_specific_handler, @except\n" \
    "\t.seh_handlerdata\n" \
    "\t.long 1\n" \
    "\t.rva .l_startw, .l_endw, " __MINGW64_STRINGIFY(__MINGW_USYMBOL(pHandler)) " ,.l_endw\n" \
    "\t.text" \
    );
#define __except1 \
    asm ("\tnop\n" \
    "\t.l_endw: nop\n");
#else
#define __try1(pHandler)
#define __except1
#endif

#ifdef __cplusplus
}
#endif

#pragma pack(pop)
#endif
#if 0 /* expanded by -frewrite-includes */
#include <stdarg.h>
#endif /* expanded by -frewrite-includes */
/*===---- stdarg.h - Variable argument handling ----------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */

#if !defined(__STDARG_H) && !defined(_STDARG_H)
#define __STDARG_H
#define _STDARG_H

#ifndef _VA_LIST
typedef __builtin_va_list va_list;
#define _VA_LIST
#endif
#define va_start(ap, param) __builtin_va_start(ap, param)
#define va_end(ap)          __builtin_va_end(ap)
#define va_arg(ap, type)    __builtin_va_arg(ap, type)

/* GCC always defines __va_copy, but does not define va_copy unless in c99 mode
 * or -ansi is not specified, since it was not part of C90.
 */
#define __va_copy(d,s) __builtin_va_copy(d,s)

#if __STDC_VERSION__ >= 199901L || __cplusplus >= 201103L || !defined(__STRICT_ANSI__)
#define va_copy(dest, src)  __builtin_va_copy(dest, src)
#endif

/* Hack required to make standard headers work, at least on Ubuntu */
#ifndef __GNUC_VA_LIST
#define __GNUC_VA_LIST 1
#endif
typedef __builtin_va_list __gnuc_va_list;

#endif /* __STDARG_H */
#endif

#if 0 /* expanded by -frewrite-includes */
#include <windef.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER within this package.
 */
#ifndef _WINDEF_
#define _WINDEF_

#if 0 /* expanded by -frewrite-includes */
#include <minwindef.h>
#endif /* expanded by -frewrite-includes */
#ifndef _MINWINDEF_
#define _MINWINDEF_

#if 0 /* expanded by -frewrite-includes */
#include <_mingw.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC__MINGW_H
#define _INC__MINGW_H

#define MINGW_HAS_SECURE_API 1

#if 0 /* expanded by -frewrite-includes */
#include "_mingw_mac.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "_mingw_secapi.h"
#endif /* expanded by -frewrite-includes */

/* Include _cygwin.h if we're building a Cygwin application. */
#ifdef __CYGWIN__
#if 0 /* expanded by -frewrite-includes */
#include "_cygwin.h"
#endif /* expanded by -frewrite-includes */
#endif

/* Target specific macro replacement for type "long".  In the Windows API,
   the type long is always 32 bit, even if the target is 64 bit (LLP64).
   On 64 bit Cygwin, the type long is 64 bit (LP64).  So, to get the right
   sized definitions and declarations, all usage of type long in the Windows
   headers have to be replaced by the below defined macro __LONG32. */
#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

/* C/C++ specific language defines.  */
#ifdef _WIN64
#ifdef __stdcall
#undef __stdcall
#endif
#define __stdcall
#endif

#ifndef __GNUC__
# ifndef __MINGW_IMPORT
#  define __MINGW_IMPORT  __declspec(dllimport)
# endif
# ifndef _CRTIMP
#  define _CRTIMP  __declspec(dllimport)
# endif
# define __DECLSPEC_SUPPORTED
# define __attribute__(x) /* nothing */
#else /* __GNUC__ */
# ifdef __declspec
#  ifndef __MINGW_IMPORT
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#   define __MINGW_IMPORT  extern __attribute__ ((__dllimport__))
#  endif
#  ifndef _CRTIMP
#    undef __USE_CRTIMP
#    if !defined (_CRTBLD) && !defined (_SYSCRT)
#      define __USE_CRTIMP 1
#    endif
#    ifdef __USE_CRTIMP
#      define _CRTIMP  __attribute__ ((__dllimport__))
#    else
#      define _CRTIMP
#    endif
#  endif
#  define __DECLSPEC_SUPPORTED
# else /* __declspec */
#  undef __DECLSPEC_SUPPORTED
#  undef __MINGW_IMPORT
#  ifndef _CRTIMP
#   define _CRTIMP
#  endif
# endif /* __declspec */
#endif /* __GNUC__ */

#ifdef _MSC_VER
#define USE___UUIDOF	1
#else
#define USE___UUIDOF	0
#endif

#if !defined(_MSC_VER) && !defined(_inline)
#define _inline __inline
#endif

#ifdef __cplusplus
# define __CRT_INLINE inline
#elif defined(_MSC_VER)
# define __CRT_INLINE __inline
#else
# if ( __MINGW_GNUC_PREREQ(4, 3)  &&  __STDC_VERSION__ >= 199901L) \
     || (defined (__clang__))
#  define __CRT_INLINE extern inline __attribute__((__gnu_inline__))
# else
#  define __CRT_INLINE extern __inline__
# endif
#endif

#if !defined(__MINGW_INTRIN_INLINE) && defined(__GNUC__)
#define __MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif

#ifndef __CYGWIN__
#ifdef __NO_INLINE__
#undef __CRT__NO_INLINE
#define __CRT__NO_INLINE 1
#endif
#endif

#ifdef __cplusplus
# define __UNUSED_PARAM(x)
#else
# ifdef __GNUC__
#  define __UNUSED_PARAM(x) x __attribute__ ((__unused__))
# else
#  define __UNUSED_PARAM(x) x
# endif
#endif

#ifndef __GNUC__
# ifdef _MSC_VER
#  define __restrict__  __restrict
# else
#  define __restrict__	/* nothing */
# endif
#endif /* !__GNUC__ */

#if __MINGW_GNUC_PREREQ (3,1) && !defined __GNUG__
# define __restrict_arr __restrict
#elif defined(_MSC_VER)
# define __restrict_arr __restrict
#else
# ifdef __GNUC__
#  define __restrict_arr        /* Not supported in old GCC.  */
# else
#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
#   define __restrict_arr       restrict
#  else
#   define __restrict_arr       /* Not supported.  */
#  endif
# endif
#endif

#ifdef __GNUC__
#define __MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))
#define __MINGW_ATTRIB_CONST __attribute__ ((__const__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_NORETURN __declspec(noreturn)
#define __MINGW_ATTRIB_CONST
#else
#define __MINGW_ATTRIB_NORETURN
#define __MINGW_ATTRIB_CONST
#endif

#if __MINGW_GNUC_PREREQ (3, 0)
#define __MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))
#define __MINGW_ATTRIB_PURE __attribute__ ((__pure__))
#elif __MINGW_MSC_PREREQ(14, 0)
#define __MINGW_ATTRIB_MALLOC __declspec(noalias) __declspec(restrict)
#define __MINGW_ATTRIB_PURE
#else
#define __MINGW_ATTRIB_MALLOC
#define __MINGW_ATTRIB_PURE
#endif

/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))
#else
#define __MINGW_ATTRIB_NONNULL(arg)
#endif /* GNUC >= 3.3 */

#ifdef __GNUC__
#define __MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))
#else
#define __MINGW_ATTRIB_UNUSED
#endif /* ATTRIBUTE_UNUSED */

#if  __MINGW_GNUC_PREREQ (3, 1)
#define __MINGW_ATTRIB_USED __attribute__ ((__used__))
#define __MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_USED
#define __MINGW_ATTRIB_DEPRECATED __declspec(deprecated)
#else
#define __MINGW_ATTRIB_USED __MINGW_ATTRIB_UNUSED
#define __MINGW_ATTRIB_DEPRECATED
#endif /* GNUC >= 3.1 */

#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_NOTHROW __attribute__ ((__nothrow__))
#elif __MINGW_MSC_PREREQ(12, 0) && defined (__cplusplus)
#define __MINGW_NOTHROW __declspec(nothrow)
#else
#define __MINGW_NOTHROW
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ ("0")))
#else
#define __MINGW_ATTRIB_NO_OPTIMIZE
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_PRAGMA_PARAM(x) _Pragma (#x)
#elif __MINGW_MSC_PREREQ (13, 1)
#define __MINGW_PRAGMA_PARAM(x) __pragma (x)
#else
#define __MINGW_PRAGMA_PARAM(x)
#endif

#define __MINGW_BROKEN_INTERFACE(x) \
  __MINGW_PRAGMA_PARAM(message ("Interface " _CRT_STRINGIZE(x) \
  " has unverified layout."))

#ifndef __MSVCRT_VERSION__
/*  High byte is the major version, low byte is the minor. */
# define __MSVCRT_VERSION__ 0x0700
#endif


#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif

#ifndef _INT128_DEFINED
#define _INT128_DEFINED
#ifdef __GNUC__
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
#ifdef _WIN64
#if (__clang_major__ > 3 || (__clang_major__ == 3 && __clang_minor__ >= 1)) && \
    !defined(__SIZEOF_INT128__) /* clang >= 3.1 has __int128 but no size macro */
#define __SIZEOF_INT128__ 16
#endif
#ifndef __SIZEOF_INT128__
typedef int __int128 __attribute__ ((__mode__ (TI)));
#endif
#endif
#endif /* __GNUC__ */
#endif /* _INT128_DEFINED */

#ifdef __GNUC__
#define __ptr32
#define __ptr64
#ifndef __unaligned
#define __unaligned
#endif
#ifndef __w64
#define __w64
#endif
#ifdef __cplusplus
#define __forceinline inline __attribute__((__always_inline__))
#else
#define __forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif /* __cplusplus */
#endif /* __GNUC__ */

#if !defined(_WIN32) && !defined(__CYGWIN__)
#error Only Win32 target is supported!
#endif

#ifndef __nothrow
#ifdef __cplusplus
#define __nothrow __declspec(nothrow)
#else
#define __nothrow
#endif
#endif /* __nothrow */

#if 0 /* expanded by -frewrite-includes */
#include <vadefs.h>	/* other headers depend on this include */
#endif /* expanded by -frewrite-includes */

#ifndef _CRT_STRINGIZE
#define __CRT_STRINGIZE(_Value) #_Value
#define _CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)
#endif /* _CRT_STRINGIZE */

#ifndef _CRT_WIDE
#define __CRT_WIDE(_String) L ## _String
#define _CRT_WIDE(_String) __CRT_WIDE(_String)
#endif /* _CRT_WIDE */

#ifndef _W64
#define _W64
#endif

#ifndef _CRTIMP_NOIA64
#ifdef __ia64__
#define _CRTIMP_NOIA64
#else
#define _CRTIMP_NOIA64 _CRTIMP
#endif
#endif /* _CRTIMP_NOIA64 */

#ifndef _CRTIMP2
#define _CRTIMP2 _CRTIMP
#endif

#ifndef _CRTIMP_ALTERNATIVE
#define _CRTIMP_ALTERNATIVE _CRTIMP
#define _CRT_ALTERNATIVE_IMPORTED
#endif /* _CRTIMP_ALTERNATIVE */

#ifndef _MRTIMP2
#define _MRTIMP2  _CRTIMP
#endif

/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#if !defined (_DLL) && defined (__GNUC__)
#define _DLL
#endif

#ifndef _MT
#define _MT
#endif

#ifndef _MCRTIMP
#define _MCRTIMP _CRTIMP
#endif

#ifndef _CRTIMP_PURE
#define _CRTIMP_PURE _CRTIMP
#endif

#ifndef _PGLOBAL
#define _PGLOBAL
#endif

#ifndef _AGLOBAL
#define _AGLOBAL
#endif

#define _SECURECRT_FILL_BUFFER_PATTERN 0xFD
#define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)

#ifndef _CRT_INSECURE_DEPRECATE_MEMORY
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#endif

#ifndef _CRT_INSECURE_DEPRECATE_GLOBALS
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#endif

#ifndef _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_MANAGED_HEAP_DEPRECATE
#endif

#ifndef _CRT_OBSOLETE
#define _CRT_OBSOLETE(_NewItem)
#endif

#ifndef __WIDL__

#if defined (_WIN32) && !defined (_WIN64) && !defined (__MINGW_USE_VC2005_COMPAT)
#ifndef _USE_32BIT_TIME_T
#define _USE_32BIT_TIME_T
#endif
#endif

#ifndef _CONST_RETURN
#define _CONST_RETURN
#endif

#ifndef UNALIGNED
#if defined(_M_IA64) || defined(_M_AMD64)
#define UNALIGNED __unaligned
#else
#define UNALIGNED
#endif
#endif /* UNALIGNED */

#ifndef _CRT_ALIGN
#ifdef  _MSC_VER
#define _CRT_ALIGN(x) __declspec(align(x))
#else /* __GNUC__ */
#define _CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))
#endif
#endif /* _CRT_ALIGN */

#endif /* __WIDL__ */

#ifndef __CRTDECL
#define __CRTDECL __cdecl
#endif

#define _ARGMAX 100

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

#ifndef _CRT_UNUSED
#define _CRT_UNUSED(x) (void)x
#endif

/* MSVC defines _NATIVE_NULLPTR_SUPPORTED when nullptr is supported. We emulate it here for GCC. */
#if __MINGW_GNUC_PREREQ(4, 6)
#if defined(__GNUC__) && (defined(__GXX_EXPERIMENTAL_CXX0X__) || __cplusplus >= 201103L)
#define _NATIVE_NULLPTR_SUPPORTED
#endif
#endif

/* We are activating __USE_MINGW_ANSI_STDIO for various define indicators.
   Note that we enable it also for _GNU_SOURCE in C++, but not for C case. */
#if (defined (_POSIX) || defined (_POSIX_SOURCE) || defined (_POSIX_C_SOURCE) \
     || defined (_ISOC99_SOURCE) \
     || defined (_XOPEN_SOURCE) || defined (_XOPEN_SOURCE_EXTENDED) \
     || (defined (_GNU_SOURCE) && defined (__cplusplus)) \
     || defined (_SVID_SOURCE)) \
    && !defined(__USE_MINGW_ANSI_STDIO)
/* Enable __USE_MINGW_ANSI_STDIO if _POSIX defined
 * and If user did _not_ specify it explicitly... */
#  define __USE_MINGW_ANSI_STDIO			1
#endif

/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#undef  _CRT_glob
#define _CRT_glob _dowildcard


#if defined(_MSC_VER) && !defined(_MSC_EXTENSIONS)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSSTRUCT) && \
   !defined(NONAMELESSUNION)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSUNION)  && \
   !defined(NONAMELESSSTRUCT)
#define NONAMELESSSTRUCT	1
#endif

#ifndef __ANONYMOUS_DEFINED
#define __ANONYMOUS_DEFINED
#define _ANONYMOUS_UNION  __MINGW_EXTENSION
#define _ANONYMOUS_STRUCT __MINGW_EXTENSION
#ifndef NONAMELESSUNION
#define _UNION_NAME(x)
#define _STRUCT_NAME(x)
#else /* NONAMELESSUNION */
#define _UNION_NAME(x)  x
#define _STRUCT_NAME(x) x
#endif
#endif	/* __ANONYMOUS_DEFINED */

#ifndef DUMMYUNIONNAME
# ifdef NONAMELESSUNION
#  define DUMMYUNIONNAME  u
#  define DUMMYUNIONNAME1 u1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2 u2
#  define DUMMYUNIONNAME3 u3
#  define DUMMYUNIONNAME4 u4
#  define DUMMYUNIONNAME5 u5
#  define DUMMYUNIONNAME6 u6
#  define DUMMYUNIONNAME7 u7
#  define DUMMYUNIONNAME8 u8
#  define DUMMYUNIONNAME9 u9
# else /* NONAMELESSUNION */
#  define DUMMYUNIONNAME
#  define DUMMYUNIONNAME1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2
#  define DUMMYUNIONNAME3
#  define DUMMYUNIONNAME4
#  define DUMMYUNIONNAME5
#  define DUMMYUNIONNAME6
#  define DUMMYUNIONNAME7
#  define DUMMYUNIONNAME8
#  define DUMMYUNIONNAME9
# endif
#endif	/* DUMMYUNIONNAME */

#ifndef DUMMYSTRUCTNAME
# ifdef NONAMELESSUNION
#  define DUMMYSTRUCTNAME  s
#  define DUMMYSTRUCTNAME1 s1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2 s2
#  define DUMMYSTRUCTNAME3 s3
#  define DUMMYSTRUCTNAME4 s4
#  define DUMMYSTRUCTNAME5 s5
# else
#  define DUMMYSTRUCTNAME
#  define DUMMYSTRUCTNAME1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2
#  define DUMMYSTRUCTNAME3
#  define DUMMYSTRUCTNAME4
#  define DUMMYSTRUCTNAME5
# endif
#endif /* DUMMYSTRUCTNAME */


/* Macros for __uuidof template-based emulation */
#if defined(__cplusplus) && (USE___UUIDOF == 0)

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)           \
    extern "C++" {                                                      \
    template<> inline const GUID &__mingw_uuidof<type>() {              \
        static const IID __uuid_inst = {l,w1,w2, {b1,b2,b3,b4,b5,b6,b7,b8}}; \
        return __uuid_inst;                                             \
    }                                                                   \
    template<> inline const GUID &__mingw_uuidof<type*>() {             \
        return __mingw_uuidof<type>();                                  \
    }                                                                   \
    }

#define __uuidof(type) __mingw_uuidof<__typeof(type)>()

#else

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MINGW_INTRIN_INLINE
#if !defined (__clang__)
void __cdecl __debugbreak(void);
__MINGW_INTRIN_INLINE void __cdecl __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}
#endif
#endif

/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);

#ifdef __cplusplus
}
#endif

#endif /* _INC__MINGW_H */

#ifndef MINGW_SDK_INIT
#define MINGW_SDK_INIT

#ifdef MINGW_HAS_SECURE_API
#define __STDC_SECURE_LIB__ 200411L
#define __GOT_SECURE_LIB__ __STDC_SECURE_LIB__
#endif

#ifndef __WIDL__
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_directx.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_ddk.h"
#endif /* expanded by -frewrite-includes */
#endif

#endif /* MINGW_SDK_INIT */
#if 0 /* expanded by -frewrite-includes */
#include <winapifamily.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER within this package.
 */

#ifndef _INC_WINAPIFAMILY
#define _INC_WINAPIFAMILY

#define WINAPI_PARTITION_DESKTOP 0x1
#define WINAPI_PARTITION_APP     0x2    

#define WINAPI_FAMILY_APP WINAPI_PARTITION_APP
#define WINAPI_FAMILY_DESKTOP_APP (WINAPI_PARTITION_DESKTOP \
				   | WINAPI_PARTITION_APP)    

/* WINAPI_FAMILY can be either desktop + App, or App.  */
#ifndef WINAPI_FAMILY
#define WINAPI_FAMILY WINAPI_FAMILY_DESKTOP_APP
#endif

#define WINAPI_FAMILY_PARTITION(v) ((WINAPI_FAMILY & v) == v)
#define WINAPI_FAMILY_ONE_PARTITION(vset, v) ((WINAPI_FAMILY & vset) == v)

#endif 
#if 0 /* expanded by -frewrite-includes */
#include <specstrings.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#define __specstrings

#if 0 /* expanded by -frewrite-includes */
#include <sal.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef SAL_HXX
#define SAL_HXX

#ifdef __GNUC__
#  define __inner_checkReturn __attribute__((warn_unused_result))
#elif defined(_MSC_VER)
#  define __inner_checkReturn __declspec("SAL_checkReturn")
#else
#  define __inner_checkReturn
#endif

#define __checkReturn __inner_checkReturn

#define _In_
#define _In_opt_
#define _Out_
#define _Inout_

#define _Struct_size_bytes_(size)

#endif


#ifdef __cplusplus
#ifndef __nothrow
#define __nothrow __declspec(nothrow)
#endif
extern "C" {
#else
#ifndef __nothrow
#define __nothrow
#endif
#endif

#define SAL__deref_in
#define SAL__deref_in_ecount(size)
#define SAL__deref_in_bcount(size)

#define SAL__deref_in_opt
#define SAL__deref_in_ecount_opt(size)
#define SAL__deref_in_bcount_opt(size)

#define SAL__deref_opt_in
#define SAL__deref_opt_in_ecount(size)
#define SAL__deref_opt_in_bcount(size)

#define SAL__deref_opt_in_opt
#define SAL__deref_opt_in_ecount_opt(size)
#define SAL__deref_opt_in_bcount_opt(size)

#define SAL__out_awcount(expr,size)
#define SAL__in_awcount(expr,size)

/* Renamed __null to SAL__null for avoiding private keyword conflicts between
   gcc and MS world.  */
#define SAL__null
#define SAL__notnull
#define SAL__maybenull
#define SAL__readonly
#define SAL__notreadonly
#define SAL__maybereadonly
#define SAL__valid
#define SAL__notvalid
#define SAL__maybevalid
#define SAL__readableTo(extent)
#define SAL__elem_readableTo(size)
#define SAL__byte_readableTo(size)
#define SAL__writableTo(size)
#define SAL__elem_writableTo(size)
#define SAL__byte_writableTo(size)
#define SAL__deref
#define SAL__pre
#define SAL__post
#define SAL__precond(expr)
#define SAL__postcond(expr)
#define SAL__exceptthat
#define SAL__execeptthat
#define SAL__inner_success(expr)
#define SAL__inner_checkReturn
#define SAL__inner_typefix(ctype)
#define SAL__inner_override
#define SAL__inner_callback
#define SAL__inner_blocksOn(resource)
#define SAL__inner_fallthrough_dec
#define SAL__inner_fallthrough
#define __refparam
#define SAL__inner_control_entrypoint(category)
#define SAL__inner_data_entrypoint(category)

#define SAL__ecount(size)
#define SAL__bcount(size)

#define SAL__in
#define SAL__in_opt
#define SAL__in_nz
#define SAL__in_nz_opt
#define SAL__in_z
#define SAL__in_z_opt
#define SAL__in_ecount(size)
#define SAL__in_ecount_nz(size)
#define SAL__in_ecount_z(size)
#define SAL__in_bcount(size)
#define SAL__in_bcount_z(size)
#define SAL__in_bcount_nz(size)
#define SAL__in_ecount_opt(size)
#define SAL__in_bcount_opt(size)
#define SAL__in_ecount_z_opt(size)
#define SAL__in_bcount_z_opt(size)
#define SAL__in_ecount_nz_opt(size)
#define SAL__in_bcount_nz_opt(size)

#define SAL__out
#define SAL__out_ecount(size)
#define SAL__out_z
#define SAL__out_nz
#define SAL__out_nz_opt
#define SAL__out_z_opt
#define SAL__out_ecount_part(size,length)
#define SAL__out_ecount_full(size)
#define SAL__out_ecount_nz(size)
#define SAL__out_ecount_z(size)
#define SAL__out_ecount_part_z(size,length)
#define SAL__out_ecount_full_z(size)
#define SAL__out_bcount(size)
#define SAL__out_bcount_part(size,length)
#define SAL__out_bcount_full(size)
#define SAL__out_bcount_z(size)
#define SAL__out_bcount_part_z(size,length)
#define SAL__out_bcount_full_z(size)
#define SAL__out_bcount_nz(size)

#define SAL__inout
#define SAL__inout_ecount(size)
#define SAL__inout_bcount(size)
#define SAL__inout_ecount_part(size,length)
#define SAL__inout_bcount_part(size,length)
#define SAL__inout_ecount_full(size)
#define SAL__inout_bcount_full(size)
#define SAL__inout_z
#define SAL__inout_ecount_z(size)
#define SAL__inout_bcount_z(size)
#define SAL__inout_nz
#define SAL__inout_ecount_nz(size)
#define SAL__inout_bcount_nz(size)
#define SAL__ecount_opt(size)
#define SAL__bcount_opt(size)
#define SAL__out_opt
#define SAL__out_ecount_opt(size)
#define SAL__out_bcount_opt(size)
#define SAL__out_ecount_part_opt(size,length)
#define SAL__out_bcount_part_opt(size,length)
#define SAL__out_ecount_full_opt(size)
#define SAL__out_bcount_full_opt(size)
#define SAL__out_ecount_z_opt(size)
#define SAL__out_bcount_z_opt(size)
#define SAL__out_ecount_part_z_opt(size,length)
#define SAL__out_bcount_part_z_opt(size,length)
#define SAL__out_ecount_full_z_opt(size)
#define SAL__out_bcount_full_z_opt(size)
#define SAL__out_ecount_nz_opt(size)
#define SAL__out_bcount_nz_opt(size)
#define SAL__inout_opt
#define SAL__inout_ecount_opt(size)
#define SAL__inout_bcount_opt(size)
#define SAL__inout_ecount_part_opt(size,length)
#define SAL__inout_bcount_part_opt(size,length)
#define SAL__inout_ecount_full_opt(size)
#define SAL__inout_bcount_full_opt(size)
#define SAL__inout_z_opt
#define SAL__inout_ecount_z_opt(size)
#define SAL__inout_bcount_z_opt(size)
#define SAL__inout_nz_opt
#define SAL__inout_ecount_nz_opt(size)
#define SAL__inout_bcount_nz_opt(size)
#define SAL__deref_ecount(size)
#define SAL__deref_bcount(size)
#define SAL__deref_out
#define SAL__deref_out_ecount(size)
#define SAL__deref_out_bcount(size)
#define SAL__deref_out_ecount_part(size,length)
#define SAL__deref_out_bcount_part(size,length)
#define SAL__deref_out_ecount_full(size)
#define SAL__deref_out_bcount_full(size)
#define SAL__deref_out_z
#define SAL__deref_out_ecount_z(size)
#define SAL__deref_out_bcount_z(size)
#define SAL__deref_out_nz
#define SAL__deref_out_ecount_nz(size)
#define SAL__deref_out_bcount_nz(size)
#define SAL__deref_inout
#define SAL__deref_inout_ecount(size)
#define SAL__deref_inout_bcount(size)
#define SAL__deref_inout_ecount_part(size,length)
#define SAL__deref_inout_bcount_part(size,length)
#define SAL__deref_inout_ecount_full(size)
#define SAL__deref_inout_bcount_full(size)
#define SAL__deref_inout_z
#define SAL__deref_inout_ecount_z(size)
#define SAL__deref_inout_bcount_z(size)
#define SAL__deref_inout_nz
#define SAL__deref_inout_ecount_nz(size)
#define SAL__deref_inout_bcount_nz(size)
#define SAL__deref_ecount_opt(size)
#define SAL__deref_bcount_opt(size)
#define SAL__deref_out_opt
#define SAL__deref_out_ecount_opt(size)
#define SAL__deref_out_bcount_opt(size)
#define SAL__deref_out_ecount_part_opt(size,length)
#define SAL__deref_out_bcount_part_opt(size,length)
#define SAL__deref_out_ecount_full_opt(size)
#define SAL__deref_out_bcount_full_opt(size)
#define SAL__deref_out_z_opt
#define SAL__deref_out_ecount_z_opt(size)
#define SAL__deref_out_bcount_z_opt(size)
#define SAL__deref_out_nz_opt
#define SAL__deref_out_ecount_nz_opt(size)
#define SAL__deref_out_bcount_nz_opt(size)
#define SAL__deref_inout_opt
#define SAL__deref_inout_ecount_opt(size)
#define SAL__deref_inout_bcount_opt(size)
#define SAL__deref_inout_ecount_part_opt(size,length)
#define SAL__deref_inout_bcount_part_opt(size,length)
#define SAL__deref_inout_ecount_full_opt(size)
#define SAL__deref_inout_bcount_full_opt(size)
#define SAL__deref_inout_z_opt
#define SAL__deref_inout_ecount_z_opt(size)
#define SAL__deref_inout_bcount_z_opt(size)
#define SAL__deref_inout_nz_opt
#define SAL__deref_inout_ecount_nz_opt(size)
#define SAL__deref_inout_bcount_nz_opt(size)
#define SAL__deref_opt_ecount(size)
#define SAL__deref_opt_bcount(size)
#define SAL__deref_opt_out
#define SAL__deref_opt_out_z
#define SAL__deref_opt_out_ecount(size)
#define SAL__deref_opt_out_bcount(size)
#define SAL__deref_opt_out_ecount_part(size,length)
#define SAL__deref_opt_out_bcount_part(size,length)
#define SAL__deref_opt_out_ecount_full(size)
#define SAL__deref_opt_out_bcount_full(size)
#define SAL__deref_opt_inout
#define SAL__deref_opt_inout_ecount(size)
#define SAL__deref_opt_inout_bcount(size)
#define SAL__deref_opt_inout_ecount_part(size,length)
#define SAL__deref_opt_inout_bcount_part(size,length)
#define SAL__deref_opt_inout_ecount_full(size)
#define SAL__deref_opt_inout_bcount_full(size)
#define SAL__deref_opt_inout_z
#define SAL__deref_opt_inout_ecount_z(size)
#define SAL__deref_opt_inout_bcount_z(size)
#define SAL__deref_opt_inout_nz
#define SAL__deref_opt_inout_ecount_nz(size)
#define SAL__deref_opt_inout_bcount_nz(size)
#define SAL__deref_opt_ecount_opt(size)
#define SAL__deref_opt_bcount_opt(size)
#define SAL__deref_opt_out_opt
#define SAL__deref_opt_out_ecount_opt(size)
#define SAL__deref_opt_out_bcount_opt(size)
#define SAL__deref_opt_out_ecount_part_opt(size,length)
#define SAL__deref_opt_out_bcount_part_opt(size,length)
#define SAL__deref_opt_out_ecount_full_opt(size)
#define SAL__deref_opt_out_bcount_full_opt(size)
#define SAL__deref_opt_out_z_opt
#define SAL__deref_opt_out_ecount_z_opt(size)
#define SAL__deref_opt_out_bcount_z_opt(size)
#define SAL__deref_opt_out_nz_opt
#define SAL__deref_opt_out_ecount_nz_opt(size)
#define SAL__deref_opt_out_bcount_nz_opt(size)
#define SAL__deref_opt_inout_opt
#define SAL__deref_opt_inout_ecount_opt(size)
#define SAL__deref_opt_inout_bcount_opt(size)
#define SAL__deref_opt_inout_ecount_part_opt(size,length)
#define SAL__deref_opt_inout_bcount_part_opt(size,length)
#define SAL__deref_opt_inout_ecount_full_opt(size)
#define SAL__deref_opt_inout_bcount_full_opt(size)
#define SAL__deref_opt_inout_z_opt
#define SAL__deref_opt_inout_ecount_z_opt(size)
#define SAL__deref_opt_inout_bcount_z_opt(size)
#define SAL__deref_opt_inout_nz_opt
#define SAL__deref_opt_inout_ecount_nz_opt(size)
#define SAL__deref_opt_inout_bcount_nz_opt(size)

#define SAL__success(expr)
#define SAL__nullterminated
#define SAL__nullnullterminated
#define SAL__reserved
#define SAL__checkReturn
#define SAL__typefix(ctype)
#define SAL__override
#define SAL__callback
#define SAL__format_string
#define SAL__blocksOn(resource)
#define SAL__control_entrypoint(category)
#define SAL__data_entrypoint(category)

#ifndef __fallthrough
#define __fallthrough
#endif

#ifndef __analysis_assume
#define __analysis_assume(expr)
#endif

#ifndef __CLR_OR_THIS_CALL
#define __CLR_OR_THIS_CALL
#endif

#ifndef __CLRCALL_OR_CDECL
#define __CLRCALL_OR_CDECL __cdecl
#endif

#ifndef __STDC_WANT_SECURE_LIB__
#define __STDC_WANT_SECURE_LIB__ 0
#endif

#ifndef _CRT_SECURE_NO_DEPRECATE
#define _CRT_SECURE_NO_DEPRECATE
#endif

#ifndef RC_INVOKED
#ifndef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 0
#endif
#ifndef _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT 0
#endif
#ifndef _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES
#define _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES 0
#endif
#endif

#ifndef DECLSPEC_ADDRSAFE
#if (_MSC_VER >= 1200) && (defined(_M_ALPHA) || defined(_M_AXP64))
#define DECLSPEC_ADDRSAFE  __declspec(address_safe)
#else
#define DECLSPEC_ADDRSAFE
#endif
#endif /* DECLSPEC_ADDRSAFE */

#ifdef __cplusplus
}
#endif

#if WINAPI_FAMILY_PARTITION (WINAPI_PARTITION_APP)

#if !defined (STRICT) && !defined (NO_STRICT)
#define STRICT 1
#endif

#ifndef WIN32
#define WIN32
#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifndef BASETYPES
#define BASETYPES
  typedef unsigned __LONG32 ULONG;
  typedef ULONG *PULONG;
  typedef unsigned short USHORT;
  typedef USHORT *PUSHORT;
  typedef unsigned char UCHAR;
  typedef UCHAR *PUCHAR;
  typedef char *PSZ;
#endif

#define MAX_PATH 260

#ifndef NULL
#ifdef __cplusplus
#ifndef _WIN64
#define NULL 0
#else
#define NULL 0LL
#endif
#else
#define NULL ((void *)0)
#endif
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef TRUE
#define TRUE 1
#endif

#ifndef _NO_W32_PSEUDO_MODIFIERS
#ifndef IN
#define IN
#endif

#ifndef OUT
#define OUT
#endif

#ifndef OPTIONAL
#define OPTIONAL
#endif
#endif /* _NO_W32_PSEUDO_MODIFIERS */

#undef far
#undef near
#undef pascal

#define far
#define near
#if defined(_ARM_)
#define pascal
#else
#define pascal __stdcall
#endif

#define cdecl
#ifndef CDECL
#define CDECL
#endif

#ifndef CALLBACK
#if defined(_ARM_)
#define CALLBACK
#else
#define CALLBACK __stdcall
#endif
#endif

#ifndef WINAPI
#if defined(_ARM_)
#define WINAPI
#else
#define WINAPI __stdcall
#endif
#endif

#define WINAPIV __cdecl
#define APIENTRY WINAPI
#if defined(_ARM_)
#define APIPRIVATE
#define PASCAL
#else
#define APIPRIVATE __stdcall
#define PASCAL __stdcall
#endif

#ifndef WINAPI_INLINE
#define WINAPI_INLINE WINAPI
#endif

#undef FAR
#undef NEAR
#define FAR
#define NEAR

#ifndef CONST
#define CONST const
#endif

#ifndef _DEF_WINBOOL_
#define _DEF_WINBOOL_
typedef int WINBOOL;
#pragma push_macro("BOOL")
#undef BOOL
#if !defined(__OBJC__) && !defined(__OBJC_BOOL) && !defined(__objc_INCLUDE_GNU) && !defined(_NO_BOOL_TYPEDEF)
  typedef int BOOL;
#endif
#define BOOL WINBOOL
typedef BOOL *PBOOL;
typedef BOOL *LPBOOL;
#pragma pop_macro("BOOL")
#endif /* _DEF_WINBOOL_ */

  typedef unsigned char BYTE;
  typedef unsigned short WORD;
  typedef unsigned __LONG32 DWORD;
  typedef float FLOAT;
  typedef FLOAT *PFLOAT;
  typedef BYTE *PBYTE;
  typedef BYTE *LPBYTE;
  typedef int *PINT;
  typedef int *LPINT;
  typedef WORD *PWORD;
  typedef WORD *LPWORD;
  typedef __LONG32 *LPLONG;
  typedef DWORD *PDWORD;
  typedef DWORD *LPDWORD;
  typedef void *LPVOID;
#ifndef _LPCVOID_DEFINED
#define _LPCVOID_DEFINED
  typedef CONST void *LPCVOID;
#endif
  typedef int INT;
  typedef unsigned int UINT;
  typedef unsigned int *PUINT;

#ifndef NT_INCLUDED
#if 0 /* expanded by -frewrite-includes */
#include <winnt.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER within this package.
 */

#ifndef _WINNT_
#define _WINNT_

#if 0 /* expanded by -frewrite-includes */
#include <_mingw_unicode.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#if !defined(_INC_CRT_UNICODE_MACROS)
/* _INC_CRT_UNICODE_MACROS defined based on UNICODE flag */

#if defined(UNICODE)
# define _INC_CRT_UNICODE_MACROS 1
# define __MINGW_NAME_AW(func) func##W
# define __MINGW_NAME_AW_EXT(func,ext) func##W##ext
# define __MINGW_NAME_UAW(func) func##_W
# define __MINGW_NAME_UAW_EXT(func,ext) func##_W_##ext
# define __MINGW_STRING_AW(str) L##str	/* same as TEXT() from winnt.h */
# define __MINGW_PROCNAMEEXT_AW "W"
#else
# define _INC_CRT_UNICODE_MACROS 2
# define __MINGW_NAME_AW(func) func##A
# define __MINGW_NAME_AW_EXT(func,ext) func##A##ext
# define __MINGW_NAME_UAW(func) func##_A
# define __MINGW_NAME_UAW_EXT(func,ext) func##_A_##ext
# define __MINGW_STRING_AW(str) str	/* same as TEXT() from winnt.h */
# define __MINGW_PROCNAMEEXT_AW "A"
#endif

#define __MINGW_TYPEDEF_AW(type)	\
    typedef __MINGW_NAME_AW(type) type;
#define __MINGW_TYPEDEF_UAW(type)	\
    typedef __MINGW_NAME_UAW(type) type;

#endif /* !defined(_INC_CRT_UNICODE_MACROS) */

#ifdef __cplusplus
extern "C" {
#endif

#if 0 /* expanded by -frewrite-includes */
#include <_mingw.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC__MINGW_H
#define _INC__MINGW_H

#define MINGW_HAS_SECURE_API 1

#if 0 /* expanded by -frewrite-includes */
#include "_mingw_mac.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "_mingw_secapi.h"
#endif /* expanded by -frewrite-includes */

/* Include _cygwin.h if we're building a Cygwin application. */
#ifdef __CYGWIN__
#if 0 /* expanded by -frewrite-includes */
#include "_cygwin.h"
#endif /* expanded by -frewrite-includes */
#endif

/* Target specific macro replacement for type "long".  In the Windows API,
   the type long is always 32 bit, even if the target is 64 bit (LLP64).
   On 64 bit Cygwin, the type long is 64 bit (LP64).  So, to get the right
   sized definitions and declarations, all usage of type long in the Windows
   headers have to be replaced by the below defined macro __LONG32. */
#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

/* C/C++ specific language defines.  */
#ifdef _WIN64
#ifdef __stdcall
#undef __stdcall
#endif
#define __stdcall
#endif

#ifndef __GNUC__
# ifndef __MINGW_IMPORT
#  define __MINGW_IMPORT  __declspec(dllimport)
# endif
# ifndef _CRTIMP
#  define _CRTIMP  __declspec(dllimport)
# endif
# define __DECLSPEC_SUPPORTED
# define __attribute__(x) /* nothing */
#else /* __GNUC__ */
# ifdef __declspec
#  ifndef __MINGW_IMPORT
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#   define __MINGW_IMPORT  extern __attribute__ ((__dllimport__))
#  endif
#  ifndef _CRTIMP
#    undef __USE_CRTIMP
#    if !defined (_CRTBLD) && !defined (_SYSCRT)
#      define __USE_CRTIMP 1
#    endif
#    ifdef __USE_CRTIMP
#      define _CRTIMP  __attribute__ ((__dllimport__))
#    else
#      define _CRTIMP
#    endif
#  endif
#  define __DECLSPEC_SUPPORTED
# else /* __declspec */
#  undef __DECLSPEC_SUPPORTED
#  undef __MINGW_IMPORT
#  ifndef _CRTIMP
#   define _CRTIMP
#  endif
# endif /* __declspec */
#endif /* __GNUC__ */

#ifdef _MSC_VER
#define USE___UUIDOF	1
#else
#define USE___UUIDOF	0
#endif

#if !defined(_MSC_VER) && !defined(_inline)
#define _inline __inline
#endif

#ifdef __cplusplus
# define __CRT_INLINE inline
#elif defined(_MSC_VER)
# define __CRT_INLINE __inline
#else
# if ( __MINGW_GNUC_PREREQ(4, 3)  &&  __STDC_VERSION__ >= 199901L) \
     || (defined (__clang__))
#  define __CRT_INLINE extern inline __attribute__((__gnu_inline__))
# else
#  define __CRT_INLINE extern __inline__
# endif
#endif

#if !defined(__MINGW_INTRIN_INLINE) && defined(__GNUC__)
#define __MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif

#ifndef __CYGWIN__
#ifdef __NO_INLINE__
#undef __CRT__NO_INLINE
#define __CRT__NO_INLINE 1
#endif
#endif

#ifdef __cplusplus
# define __UNUSED_PARAM(x)
#else
# ifdef __GNUC__
#  define __UNUSED_PARAM(x) x __attribute__ ((__unused__))
# else
#  define __UNUSED_PARAM(x) x
# endif
#endif

#ifndef __GNUC__
# ifdef _MSC_VER
#  define __restrict__  __restrict
# else
#  define __restrict__	/* nothing */
# endif
#endif /* !__GNUC__ */

#if __MINGW_GNUC_PREREQ (3,1) && !defined __GNUG__
# define __restrict_arr __restrict
#elif defined(_MSC_VER)
# define __restrict_arr __restrict
#else
# ifdef __GNUC__
#  define __restrict_arr        /* Not supported in old GCC.  */
# else
#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
#   define __restrict_arr       restrict
#  else
#   define __restrict_arr       /* Not supported.  */
#  endif
# endif
#endif

#ifdef __GNUC__
#define __MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))
#define __MINGW_ATTRIB_CONST __attribute__ ((__const__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_NORETURN __declspec(noreturn)
#define __MINGW_ATTRIB_CONST
#else
#define __MINGW_ATTRIB_NORETURN
#define __MINGW_ATTRIB_CONST
#endif

#if __MINGW_GNUC_PREREQ (3, 0)
#define __MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))
#define __MINGW_ATTRIB_PURE __attribute__ ((__pure__))
#elif __MINGW_MSC_PREREQ(14, 0)
#define __MINGW_ATTRIB_MALLOC __declspec(noalias) __declspec(restrict)
#define __MINGW_ATTRIB_PURE
#else
#define __MINGW_ATTRIB_MALLOC
#define __MINGW_ATTRIB_PURE
#endif

/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))
#else
#define __MINGW_ATTRIB_NONNULL(arg)
#endif /* GNUC >= 3.3 */

#ifdef __GNUC__
#define __MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))
#else
#define __MINGW_ATTRIB_UNUSED
#endif /* ATTRIBUTE_UNUSED */

#if  __MINGW_GNUC_PREREQ (3, 1)
#define __MINGW_ATTRIB_USED __attribute__ ((__used__))
#define __MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_USED
#define __MINGW_ATTRIB_DEPRECATED __declspec(deprecated)
#else
#define __MINGW_ATTRIB_USED __MINGW_ATTRIB_UNUSED
#define __MINGW_ATTRIB_DEPRECATED
#endif /* GNUC >= 3.1 */

#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_NOTHROW __attribute__ ((__nothrow__))
#elif __MINGW_MSC_PREREQ(12, 0) && defined (__cplusplus)
#define __MINGW_NOTHROW __declspec(nothrow)
#else
#define __MINGW_NOTHROW
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ ("0")))
#else
#define __MINGW_ATTRIB_NO_OPTIMIZE
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_PRAGMA_PARAM(x) _Pragma (#x)
#elif __MINGW_MSC_PREREQ (13, 1)
#define __MINGW_PRAGMA_PARAM(x) __pragma (x)
#else
#define __MINGW_PRAGMA_PARAM(x)
#endif

#define __MINGW_BROKEN_INTERFACE(x) \
  __MINGW_PRAGMA_PARAM(message ("Interface " _CRT_STRINGIZE(x) \
  " has unverified layout."))

#ifndef __MSVCRT_VERSION__
/*  High byte is the major version, low byte is the minor. */
# define __MSVCRT_VERSION__ 0x0700
#endif


#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif

#ifndef _INT128_DEFINED
#define _INT128_DEFINED
#ifdef __GNUC__
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
#ifdef _WIN64
#if (__clang_major__ > 3 || (__clang_major__ == 3 && __clang_minor__ >= 1)) && \
    !defined(__SIZEOF_INT128__) /* clang >= 3.1 has __int128 but no size macro */
#define __SIZEOF_INT128__ 16
#endif
#ifndef __SIZEOF_INT128__
typedef int __int128 __attribute__ ((__mode__ (TI)));
#endif
#endif
#endif /* __GNUC__ */
#endif /* _INT128_DEFINED */

#ifdef __GNUC__
#define __ptr32
#define __ptr64
#ifndef __unaligned
#define __unaligned
#endif
#ifndef __w64
#define __w64
#endif
#ifdef __cplusplus
#define __forceinline inline __attribute__((__always_inline__))
#else
#define __forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif /* __cplusplus */
#endif /* __GNUC__ */

#if !defined(_WIN32) && !defined(__CYGWIN__)
#error Only Win32 target is supported!
#endif

#ifndef __nothrow
#ifdef __cplusplus
#define __nothrow __declspec(nothrow)
#else
#define __nothrow
#endif
#endif /* __nothrow */

#if 0 /* expanded by -frewrite-includes */
#include <vadefs.h>	/* other headers depend on this include */
#endif /* expanded by -frewrite-includes */

#ifndef _CRT_STRINGIZE
#define __CRT_STRINGIZE(_Value) #_Value
#define _CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)
#endif /* _CRT_STRINGIZE */

#ifndef _CRT_WIDE
#define __CRT_WIDE(_String) L ## _String
#define _CRT_WIDE(_String) __CRT_WIDE(_String)
#endif /* _CRT_WIDE */

#ifndef _W64
#define _W64
#endif

#ifndef _CRTIMP_NOIA64
#ifdef __ia64__
#define _CRTIMP_NOIA64
#else
#define _CRTIMP_NOIA64 _CRTIMP
#endif
#endif /* _CRTIMP_NOIA64 */

#ifndef _CRTIMP2
#define _CRTIMP2 _CRTIMP
#endif

#ifndef _CRTIMP_ALTERNATIVE
#define _CRTIMP_ALTERNATIVE _CRTIMP
#define _CRT_ALTERNATIVE_IMPORTED
#endif /* _CRTIMP_ALTERNATIVE */

#ifndef _MRTIMP2
#define _MRTIMP2  _CRTIMP
#endif

/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#if !defined (_DLL) && defined (__GNUC__)
#define _DLL
#endif

#ifndef _MT
#define _MT
#endif

#ifndef _MCRTIMP
#define _MCRTIMP _CRTIMP
#endif

#ifndef _CRTIMP_PURE
#define _CRTIMP_PURE _CRTIMP
#endif

#ifndef _PGLOBAL
#define _PGLOBAL
#endif

#ifndef _AGLOBAL
#define _AGLOBAL
#endif

#define _SECURECRT_FILL_BUFFER_PATTERN 0xFD
#define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)

#ifndef _CRT_INSECURE_DEPRECATE_MEMORY
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#endif

#ifndef _CRT_INSECURE_DEPRECATE_GLOBALS
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#endif

#ifndef _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_MANAGED_HEAP_DEPRECATE
#endif

#ifndef _CRT_OBSOLETE
#define _CRT_OBSOLETE(_NewItem)
#endif

#ifndef __WIDL__

#if defined (_WIN32) && !defined (_WIN64) && !defined (__MINGW_USE_VC2005_COMPAT)
#ifndef _USE_32BIT_TIME_T
#define _USE_32BIT_TIME_T
#endif
#endif

#ifndef _CONST_RETURN
#define _CONST_RETURN
#endif

#ifndef UNALIGNED
#if defined(_M_IA64) || defined(_M_AMD64)
#define UNALIGNED __unaligned
#else
#define UNALIGNED
#endif
#endif /* UNALIGNED */

#ifndef _CRT_ALIGN
#ifdef  _MSC_VER
#define _CRT_ALIGN(x) __declspec(align(x))
#else /* __GNUC__ */
#define _CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))
#endif
#endif /* _CRT_ALIGN */

#endif /* __WIDL__ */

#ifndef __CRTDECL
#define __CRTDECL __cdecl
#endif

#define _ARGMAX 100

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

#ifndef _CRT_UNUSED
#define _CRT_UNUSED(x) (void)x
#endif

/* MSVC defines _NATIVE_NULLPTR_SUPPORTED when nullptr is supported. We emulate it here for GCC. */
#if __MINGW_GNUC_PREREQ(4, 6)
#if defined(__GNUC__) && (defined(__GXX_EXPERIMENTAL_CXX0X__) || __cplusplus >= 201103L)
#define _NATIVE_NULLPTR_SUPPORTED
#endif
#endif

/* We are activating __USE_MINGW_ANSI_STDIO for various define indicators.
   Note that we enable it also for _GNU_SOURCE in C++, but not for C case. */
#if (defined (_POSIX) || defined (_POSIX_SOURCE) || defined (_POSIX_C_SOURCE) \
     || defined (_ISOC99_SOURCE) \
     || defined (_XOPEN_SOURCE) || defined (_XOPEN_SOURCE_EXTENDED) \
     || (defined (_GNU_SOURCE) && defined (__cplusplus)) \
     || defined (_SVID_SOURCE)) \
    && !defined(__USE_MINGW_ANSI_STDIO)
/* Enable __USE_MINGW_ANSI_STDIO if _POSIX defined
 * and If user did _not_ specify it explicitly... */
#  define __USE_MINGW_ANSI_STDIO			1
#endif

/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#undef  _CRT_glob
#define _CRT_glob _dowildcard


#if defined(_MSC_VER) && !defined(_MSC_EXTENSIONS)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSSTRUCT) && \
   !defined(NONAMELESSUNION)
#define NONAMELESSUNION		1
#endif
#if defined(NONAMELESSUNION)  && \
   !defined(NONAMELESSSTRUCT)
#define NONAMELESSSTRUCT	1
#endif

#ifndef __ANONYMOUS_DEFINED
#define __ANONYMOUS_DEFINED
#define _ANONYMOUS_UNION  __MINGW_EXTENSION
#define _ANONYMOUS_STRUCT __MINGW_EXTENSION
#ifndef NONAMELESSUNION
#define _UNION_NAME(x)
#define _STRUCT_NAME(x)
#else /* NONAMELESSUNION */
#define _UNION_NAME(x)  x
#define _STRUCT_NAME(x) x
#endif
#endif	/* __ANONYMOUS_DEFINED */

#ifndef DUMMYUNIONNAME
# ifdef NONAMELESSUNION
#  define DUMMYUNIONNAME  u
#  define DUMMYUNIONNAME1 u1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2 u2
#  define DUMMYUNIONNAME3 u3
#  define DUMMYUNIONNAME4 u4
#  define DUMMYUNIONNAME5 u5
#  define DUMMYUNIONNAME6 u6
#  define DUMMYUNIONNAME7 u7
#  define DUMMYUNIONNAME8 u8
#  define DUMMYUNIONNAME9 u9
# else /* NONAMELESSUNION */
#  define DUMMYUNIONNAME
#  define DUMMYUNIONNAME1	/* Wine uses this variant */
#  define DUMMYUNIONNAME2
#  define DUMMYUNIONNAME3
#  define DUMMYUNIONNAME4
#  define DUMMYUNIONNAME5
#  define DUMMYUNIONNAME6
#  define DUMMYUNIONNAME7
#  define DUMMYUNIONNAME8
#  define DUMMYUNIONNAME9
# endif
#endif	/* DUMMYUNIONNAME */

#ifndef DUMMYSTRUCTNAME
# ifdef NONAMELESSUNION
#  define DUMMYSTRUCTNAME  s
#  define DUMMYSTRUCTNAME1 s1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2 s2
#  define DUMMYSTRUCTNAME3 s3
#  define DUMMYSTRUCTNAME4 s4
#  define DUMMYSTRUCTNAME5 s5
# else
#  define DUMMYSTRUCTNAME
#  define DUMMYSTRUCTNAME1	/* Wine uses this variant */
#  define DUMMYSTRUCTNAME2
#  define DUMMYSTRUCTNAME3
#  define DUMMYSTRUCTNAME4
#  define DUMMYSTRUCTNAME5
# endif
#endif /* DUMMYSTRUCTNAME */


/* Macros for __uuidof template-based emulation */
#if defined(__cplusplus) && (USE___UUIDOF == 0)

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)           \
    extern "C++" {                                                      \
    template<> inline const GUID &__mingw_uuidof<type>() {              \
        static const IID __uuid_inst = {l,w1,w2, {b1,b2,b3,b4,b5,b6,b7,b8}}; \
        return __uuid_inst;                                             \
    }                                                                   \
    template<> inline const GUID &__mingw_uuidof<type*>() {             \
        return __mingw_uuidof<type>();                                  \
    }                                                                   \
    }

#define __uuidof(type) __mingw_uuidof<__typeof(type)>()

#else

#define __CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __MINGW_INTRIN_INLINE
#if !defined (__clang__)
void __cdecl __debugbreak(void);
__MINGW_INTRIN_INLINE void __cdecl __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}
#endif
#endif

/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);

#ifdef __cplusplus
}
#endif

#endif /* _INC__MINGW_H */

#ifndef MINGW_SDK_INIT
#define MINGW_SDK_INIT

#ifdef MINGW_HAS_SECURE_API
#define __STDC_SECURE_LIB__ 200411L
#define __GOT_SECURE_LIB__ __STDC_SECURE_LIB__
#endif

#ifndef __WIDL__
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_directx.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "sdks/_mingw_ddk.h"
#endif /* expanded by -frewrite-includes */
#endif

#endif /* MINGW_SDK_INIT */
#if 0 /* expanded by -frewrite-includes */
#include <ctype.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#ifndef _INC_CTYPE
#define _INC_CTYPE

#if 0 /* expanded by -frewrite-includes */
#include <crtdefs.h>
#endif /* expanded by -frewrite-includes */

#ifdef __cplusplus
extern "C" {
#endif

#ifndef WEOF
#define WEOF (wint_t)(0xFFFF)
#endif

#ifndef _CRT_CTYPEDATA_DEFINED
#define _CRT_CTYPEDATA_DEFINED
#ifndef _CTYPE_DISABLE_MACROS

#ifndef __PCTYPE_FUNC
#define __PCTYPE_FUNC __pctype_func()
#ifdef _MSVCRT_
#define __pctype_func()	(_pctype)
#else
#define __pctype_func()	(* __MINGW_IMP_SYMBOL(_pctype))
#endif
#endif

#ifndef _pctype
#ifdef _MSVCRT_
  extern unsigned short *_pctype;
#else
  extern unsigned short ** __MINGW_IMP_SYMBOL(_pctype);
#define _pctype (* __MINGW_IMP_SYMBOL(_pctype))
#endif
#endif

#endif
#endif

#ifndef _CRT_WCTYPEDATA_DEFINED
#define _CRT_WCTYPEDATA_DEFINED
#ifndef _CTYPE_DISABLE_MACROS
#ifndef _wctype
#ifdef _MSVCRT_
  extern unsigned short *_wctype;
#else
  extern unsigned short ** __MINGW_IMP_SYMBOL(_wctype);
#define _wctype (* __MINGW_IMP_SYMBOL(_wctype))
#endif
#endif
#ifdef _MSVCRT_
#define __pwctype_func() (_pwctype)
#ifndef _pwctype
  extern unsigned short *_pwctype;
#endif
#else
#define __pwctype_func() (* __MINGW_IMP_SYMBOL(_pwctype))
#ifndef _pwctype
  extern unsigned short ** __MINGW_IMP_SYMBOL(_pwctype);
#define _pwctype (* __MINGW_IMP_SYMBOL(_pwctype))
#endif
#endif
#endif
#endif

  /* CRT stuff */
#if 1
  extern const unsigned char __newclmap[];
  extern const unsigned char __newcumap[];
  extern pthreadlocinfo __ptlocinfo;
  extern pthreadmbcinfo __ptmbcinfo;
  extern int __globallocalestatus;
  extern int __locale_changed;
  extern struct threadlocaleinfostruct __initiallocinfo;
  extern _locale_tstruct __initiallocalestructinfo;
  pthreadlocinfo __cdecl __updatetlocinfo(void);
  pthreadmbcinfo __cdecl __updatetmbcinfo(void);
#endif

#define _UPPER 0x1
#define _LOWER 0x2
#define _DIGIT 0x4
#define _SPACE 0x8

#define _PUNCT 0x10
#define _CONTROL 0x20
#define _BLANK 0x40
#define _HEX 0x80

#define _LEADBYTE 0x8000
#define _ALPHA (0x0100|_UPPER|_LOWER)

#ifndef _CTYPE_DEFINED
#define _CTYPE_DEFINED

  _CRTIMP int __cdecl _isctype(int _C,int _Type);
  _CRTIMP int __cdecl _isctype_l(int _C,int _Type,_locale_t _Locale);
  _CRTIMP int __cdecl isalpha(int _C);
  _CRTIMP int __cdecl _isalpha_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isupper(int _C);
  _CRTIMP int __cdecl _isupper_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl islower(int _C);
  _CRTIMP int __cdecl _islower_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isdigit(int _C);
  _CRTIMP int __cdecl _isdigit_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isxdigit(int _C);
  _CRTIMP int __cdecl _isxdigit_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isspace(int _C);
  _CRTIMP int __cdecl _isspace_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl ispunct(int _C);
  _CRTIMP int __cdecl _ispunct_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isalnum(int _C);
  _CRTIMP int __cdecl _isalnum_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isprint(int _C);
  _CRTIMP int __cdecl _isprint_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl isgraph(int _C);
  _CRTIMP int __cdecl _isgraph_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl iscntrl(int _C);
  _CRTIMP int __cdecl _iscntrl_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl toupper(int _C);
  _CRTIMP int __cdecl tolower(int _C);
  _CRTIMP int __cdecl _tolower(int _C);
  _CRTIMP int __cdecl _tolower_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl _toupper(int _C);
  _CRTIMP int __cdecl _toupper_l(int _C,_locale_t _Locale);
  _CRTIMP int __cdecl __isascii(int _C);
  _CRTIMP int __cdecl __toascii(int _C);
  _CRTIMP int __cdecl __iscsymf(int _C);
  _CRTIMP int __cdecl __iscsym(int _C);

#if (defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L) || !defined (NO_OLDNAMES) || defined (__cplusplus)
int __cdecl isblank(int _C);
#endif
#endif

#ifndef _WCTYPE_DEFINED
#define _WCTYPE_DEFINED

  int __cdecl iswalpha(wint_t _C);
  _CRTIMP int __cdecl _iswalpha_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswupper(wint_t _C);
  _CRTIMP int __cdecl _iswupper_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswlower(wint_t _C);
  _CRTIMP int __cdecl _iswlower_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswdigit(wint_t _C);
  _CRTIMP int __cdecl _iswdigit_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswxdigit(wint_t _C);
  _CRTIMP int __cdecl _iswxdigit_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswspace(wint_t _C);
  _CRTIMP int __cdecl _iswspace_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswpunct(wint_t _C);
  _CRTIMP int __cdecl _iswpunct_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswalnum(wint_t _C);
  _CRTIMP int __cdecl _iswalnum_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswprint(wint_t _C);
  _CRTIMP int __cdecl _iswprint_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswgraph(wint_t _C);
  _CRTIMP int __cdecl _iswgraph_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswcntrl(wint_t _C);
  _CRTIMP int __cdecl _iswcntrl_l(wint_t _C,_locale_t _Locale);
  int __cdecl iswascii(wint_t _C);
  int __cdecl isleadbyte(int _C);
  _CRTIMP int __cdecl _isleadbyte_l(int _C,_locale_t _Locale);
  wint_t __cdecl towupper(wint_t _C);
  _CRTIMP wint_t __cdecl _towupper_l(wint_t _C,_locale_t _Locale);
  wint_t __cdecl towlower(wint_t _C);
  _CRTIMP wint_t __cdecl _towlower_l(wint_t _C,_locale_t _Locale);
  /*
  int __cdecl iswctype(wint_t _C,wctype_t _Type);
  _CRTIMP int __cdecl _iswctype_l(wint_t _C,wctype_t _Type,_locale_t _Locale);
  _CRTIMP int __cdecl __iswcsymf(wint_t _C);
  _CRTIMP int __cdecl _iswcsymf_l(wint_t _C,_locale_t _Locale);
  _CRTIMP int __cdecl __iswcsym(wint_t _C);
  _CRTIMP int __cdecl _iswcsym_l(wint_t _C,_locale_t _Locale);
  int __cdecl is_wctype(wint_t _C,wctype_t _Type);
*/
#if (defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L) || !defined (NO_OLDNAMES)
int __cdecl iswblank(wint_t _C);
#endif
#endif

#ifndef _CTYPE_DISABLE_MACROS

#ifndef MB_CUR_MAX
#define MB_CUR_MAX ___mb_cur_max_func()
#ifndef __mb_cur_max
#ifdef _MSVCRT_
  extern int __mb_cur_max;
#define __mb_cur_max	__mb_cur_max
#else
  extern int * __MINGW_IMP_SYMBOL(__mb_cur_max);
#define __mb_cur_max	(* __MINGW_IMP_SYMBOL(__mb_cur_max))
#endif
#endif
#define ___mb_cur_max_func() (__mb_cur_max)
#endif

#define __chvalidchk(a,b) (__PCTYPE_FUNC[(a)] & (b))
#define _chvalidchk_l(_Char,_Flag,_Locale) (!_Locale ? __chvalidchk(_Char,_Flag) : ((_locale_t)_Locale)->locinfo->pctype[_Char] & (_Flag))
#define _ischartype_l(_Char,_Flag,_Locale) (((_Locale)!=NULL && (((_locale_t)(_Locale))->locinfo->mb_cur_max) > 1) ? _isctype_l(_Char,(_Flag),_Locale) : _chvalidchk_l(_Char,_Flag,_Locale))
#define _isalpha_l(_Char,_Locale) _ischartype_l(_Char,_ALPHA,_Locale)
#define _isupper_l(_Char,_Locale) _ischartype_l(_Char,_UPPER,_Locale)
#define _islower_l(_Char,_Locale) _ischartype_l(_Char,_LOWER,_Locale)
#define _isdigit_l(_Char,_Locale) _ischartype_l(_Char,_DIGIT,_Locale)
#define _isxdigit_l(_Char,_Locale) _ischartype_l(_Char,_HEX,_Locale)
#define _isspace_l(_Char,_Locale) _ischartype_l(_Char,_SPACE,_Locale)
#define _ispunct_l(_Char,_Locale) _ischartype_l(_Char,_PUNCT,_Locale)
#define _isalnum_l(_Char,_Locale) _ischartype_l(_Char,_ALPHA|_DIGIT,_Locale)
#define _isprint_l(_Char,_Locale) _ischartype_l(_Char,_BLANK|_PUNCT|_ALPHA|_DIGIT,_Locale)
#define _isgraph_l(_Char,_Locale) _ischartype_l(_Char,_PUNCT|_ALPHA|_DIGIT,_Locale)
#define _iscntrl_l(_Char,_Locale) _ischartype_l(_Char,_CONTROL,_Locale)
#define _tolower(_Char) ((_Char)-'A'+'a')
#define _toupper(_Char) ((_Char)-'a'+'A')
#define __isascii(_Char) ((unsigned)(_Char) < 0x80)
#define __toascii(_Char) ((_Char) & 0x7f)

#ifndef _WCTYPE_INLINE_DEFINED
#define _WCTYPE_INLINE_DEFINED

#undef _CRT_WCTYPE_NOINLINE
#ifndef __cplusplus
#define iswalpha(_c) (iswctype(_c,_ALPHA))
#define iswupper(_c) (iswctype(_c,_UPPER))
#define iswlower(_c) (iswctype(_c,_LOWER))
#define iswdigit(_c) (iswctype(_c,_DIGIT))
#define iswxdigit(_c) (iswctype(_c,_HEX))
#define iswspace(_c) (iswctype(_c,_SPACE))
#define iswpunct(_c) (iswctype(_c,_PUNCT))
#define iswalnum(_c) (iswctype(_c,_ALPHA|_DIGIT))
#define iswprint(_c) (iswctype(_c,_BLANK|_PUNCT|_ALPHA|_DIGIT))
#define iswgraph(_c) (iswctype(_c,_PUNCT|_ALPHA|_DIGIT))
#define iswcntrl(_c) (iswctype(_c,_CONTROL))
#define iswascii(_c) ((unsigned)(_c) < 0x80)
#define _iswalpha_l(_c,_p) (_iswctype_l(_c,_ALPHA,_p))
#define _iswupper_l(_c,_p) (_iswctype_l(_c,_UPPER,_p))
#define _iswlower_l(_c,_p) (_iswctype_l(_c,_LOWER,_p))
#define _iswdigit_l(_c,_p) (_iswctype_l(_c,_DIGIT,_p))
#define _iswxdigit_l(_c,_p) (_iswctype_l(_c,_HEX,_p))
#define _iswspace_l(_c,_p) (_iswctype_l(_c,_SPACE,_p))
#define _iswpunct_l(_c,_p) (_iswctype_l(_c,_PUNCT,_p))
#define _iswalnum_l(_c,_p) (_iswctype_l(_c,_ALPHA|_DIGIT,_p))
#define _iswprint_l(_c,_p) (_iswctype_l(_c,_BLANK|_PUNCT|_ALPHA|_DIGIT,_p))
#define _iswgraph_l(_c,_p) (_iswctype_l(_c,_PUNCT|_ALPHA|_DIGIT,_p))
#define _iswcntrl_l(_c,_p) (_iswctype_l(_c,_CONTROL,_p))
#endif
#endif

#define __iscsymf(_c) (isalpha(_c) || ((_c)=='_'))
#define __iscsym(_c) (isalnum(_c) || ((_c)=='_'))
#define __iswcsymf(_c) (iswalpha(_c) || ((_c)=='_'))
#define __iswcsym(_c) (iswalnum(_c) || ((_c)=='_'))
#define _iscsymf_l(_c,_p) (_isalpha_l(_c,_p) || ((_c)=='_'))
#define _iscsym_l(_c,_p) (_isalnum_l(_c,_p) || ((_c)=='_'))
#define _iswcsymf_l(_c,_p) (_iswalpha_l(_c,_p) || ((_c)=='_'))
#define _iswcsym_l(_c,_p) (_iswalnum_l(_c,_p) || ((_c)=='_'))
#endif

#ifndef	NO_OLDNAMES
#ifndef _CTYPE_DEFINED
  int __cdecl isascii(int _C) __MINGW_ATTRIB_DEPRECATED_MSVC2005;
  int __cdecl toascii(int _C) __MINGW_ATTRIB_DEPRECATED_MSVC2005;
  int __cdecl iscsymf(int _C) __MINGW_ATTRIB_DEPRECATED_MSVC2005;
  int __cdecl iscsym(int _C) __MINGW_ATTRIB_DEPRECATED_MSVC2005;
#else
#define isascii __isascii
#define toascii __toascii
#define iscsymf __iscsymf
#define iscsym __iscsym
#endif
#endif

#ifdef __cplusplus
}
#endif
#endif
#if 0 /* expanded by -frewrite-includes */
#include <excpt.h>
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include <winapifamily.h>
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include <apiset.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER within this package.
 */

#ifndef _API_SET_H_
#define _API_SET_H_

#if 0 /* expanded by -frewrite-includes */
#include <_mingw.h>
#endif /* expanded by -frewrite-includes */
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the mingw-w64 runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

#ifndef _INC__MINGW_H
#define _INC__MINGW_H

#define MINGW_HAS_SECURE_API 1

#if 0 /* expanded by -frewrite-includes */
#include "_mingw_mac.h"
#endif /* expanded by -frewrite-includes */
#if 0 /* expanded by -frewrite-includes */
#include "_mingw_secapi.h"
#endif /* expanded by -frewrite-includes */

/* Include _cygwin.h if we're building a Cygwin application. */
#ifdef __CYGWIN__
#if 0 /* expanded by -frewrite-includes */
#include "_cygwin.h"
#endif /* expanded by -frewrite-includes */
#endif

/* Target specific macro replacement for type "long".  In the Windows API,
   the type long is always 32 bit, even if the target is 64 bit (LLP64).
   On 64 bit Cygwin, the type long is 64 bit (LP64).  So, to get the right
   sized definitions and declarations, all usage of type long in the Windows
   headers have to be replaced by the below defined macro __LONG32. */
#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

/* C/C++ specific language defines.  */
#ifdef _WIN64
#ifdef __stdcall
#undef __stdcall
#endif
#define __stdcall
#endif

#ifndef __GNUC__
# ifndef __MINGW_IMPORT
#  define __MINGW_IMPORT  __declspec(dllimport)
# endif
# ifndef _CRTIMP
#  define _CRTIMP  __declspec(dllimport)
# endif
# define __DECLSPEC_SUPPORTED
# define __attribute__(x) /* nothing */
#else /* __GNUC__ */
# ifdef __declspec
#  ifndef __MINGW_IMPORT
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#   define __MINGW_IMPORT  extern __attribute__ ((__dllimport__))
#  endif
#  ifndef _CRTIMP
#    undef __USE_CRTIMP
#    if !defined (_CRTBLD) && !defined (_SYSCRT)
#      define __USE_CRTIMP 1
#    endif
#    ifdef __USE_CRTIMP
#      define _CRTIMP  __attribute__ ((__dllimport__))
#    else
#      define _CRTIMP
#    endif
#  endif
#  define __DECLSPEC_SUPPORTED
# else /* __declspec */
#  undef __DECLSPEC_SUPPORTED
#  undef __MINGW_IMPORT
#  ifndef _CRTIMP
#   define _CRTIMP
#  endif
# endif /* __declspec */
#endif /* __GNUC__ */

#ifdef _MSC_VER
#define USE___UUIDOF	1
#else
#define USE___UUIDOF	0
#endif

#if !defined(_MSC_VER) && !defined(_inline)
#define _inline __inline
#endif

#ifdef __cplusplus
# define __CRT_INLINE inline
#elif defined(_MSC_VER)
# define __CRT_INLINE __inline
#else
# if ( __MINGW_GNUC_PREREQ(4, 3)  &&  __STDC_VERSION__ >= 199901L) \
     || (defined (__clang__))
#  define __CRT_INLINE extern inline __attribute__((__gnu_inline__))
# else
#  define __CRT_INLINE extern __inline__
# endif
#endif

#if !defined(__MINGW_INTRIN_INLINE) && defined(__GNUC__)
#define __MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif

#ifndef __CYGWIN__
#ifdef __NO_INLINE__
#undef __CRT__NO_INLINE
#define __CRT__NO_INLINE 1
#endif
#endif

#ifdef __cplusplus
# define __UNUSED_PARAM(x)
#else
# ifdef __GNUC__
#  define __UNUSED_PARAM(x) x __attribute__ ((__unused__))
# else
#  define __UNUSED_PARAM(x) x
# endif
#endif

#ifndef __GNUC__
# ifdef _MSC_VER
#  define __restrict__  __restrict
# else
#  define __restrict__	/* nothing */
# endif
#endif /* !__GNUC__ */

#if __MINGW_GNUC_PREREQ (3,1) && !defined __GNUG__
# define __restrict_arr __restrict
#elif defined(_MSC_VER)
# define __restrict_arr __restrict
#else
# ifdef __GNUC__
#  define __restrict_arr        /* Not supported in old GCC.  */
# else
#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
#   define __restrict_arr       restrict
#  else
#   define __restrict_arr       /* Not supported.  */
#  endif
# endif
#endif

#ifdef __GNUC__
#define __MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))
#define __MINGW_ATTRIB_CONST __attribute__ ((__const__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_NORETURN __declspec(noreturn)
#define __MINGW_ATTRIB_CONST
#else
#define __MINGW_ATTRIB_NORETURN
#define __MINGW_ATTRIB_CONST
#endif

#if __MINGW_GNUC_PREREQ (3, 0)
#define __MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))
#define __MINGW_ATTRIB_PURE __attribute__ ((__pure__))
#elif __MINGW_MSC_PREREQ(14, 0)
#define __MINGW_ATTRIB_MALLOC __declspec(noalias) __declspec(restrict)
#define __MINGW_ATTRIB_PURE
#else
#define __MINGW_ATTRIB_MALLOC
#define __MINGW_ATTRIB_PURE
#endif

/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))
#else
#define __MINGW_ATTRIB_NONNULL(arg)
#endif /* GNUC >= 3.3 */

#ifdef __GNUC__
#define __MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))
#else
#define __MINGW_ATTRIB_UNUSED
#endif /* ATTRIBUTE_UNUSED */

#if  __MINGW_GNUC_PREREQ (3, 1)
#define __MINGW_ATTRIB_USED __attribute__ ((__used__))
#define __MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))
#elif __MINGW_MSC_PREREQ(12, 0)
#define __MINGW_ATTRIB_USED
#define __MINGW_ATTRIB_DEPRECATED __declspec(deprecated)
#else
#define __MINGW_ATTRIB_USED __MINGW_ATTRIB_UNUSED
#define __MINGW_ATTRIB_DEPRECATED
#endif /* GNUC >= 3.1 */

#if  __MINGW_GNUC_PREREQ (3, 3)
#define __MINGW_NOTHROW __attribute__ ((__nothrow__))
#elif __MINGW_MSC_PREREQ(12, 0) && defined (__cplusplus)
#define __MINGW_NOTHROW __declspec(nothrow)
#else
#define __MINGW_NOTHROW
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ ("0")))
#else
#define __MINGW_ATTRIB_NO_OPTIMIZE
#endif

#if __MINGW_GNUC_PREREQ (4, 4)
#define __MINGW_PRAGMA_PARAM(x) _Pragma (#x)
#elif __MINGW_MSC_PREREQ (13, 1)
#define __MINGW_PRAGMA_PARAM(x) __pragma (x)
#else
#define __MINGW_PRAGMA_PARAM(x)
#endif

#define __MINGW_BROKEN_INTERFACE(x) \
  __MINGW_PRAGMA_PARAM(message ("Interface " _CRT_STRINGIZE(x) \
  " has unverified layout."))

#ifndef __MSVCRT_VERSION__
/*  High byte is the major version, low byte is the minor. */
# define __MSVCRT_VERSION__ 0x0700
#endif


#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif

#ifndef _INT128_DEFINED
#define _INT128_DEFINED
#ifdef __GNUC__
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
#ifdef _WIN64
#if (__clang_major__ > 3 || (__clang_major__ == 3 && __clang_minor__ >= 1)) && \
    !defined(__SIZEOF_INT128__) /* clang >= 3.1 has __int128 but no size macro */
#define __SIZEOF_INT128__ 16
#endif
#ifndef __SIZEOF_INT128__
typedef int __int128 __attribute__ ((__mode__ (TI)));
#endif
#endif
#endif /* __GNUC__ */
#endif /* _INT128_DEFINED */

#ifdef __GNUC__
#define __ptr32
#define __ptr64
#ifndef __unaligned
#define __unaligned
#endif
#ifndef __w64
#define __w64
#endif
#ifdef __cplusplus
#define __forceinline inline __attribute__((__always_inline__))
#else
#define __forceinline extern __inline__ __attribute__((__always_inline__,__gnu_inline__))
#endif /* __cplusplus */
#endif /* __GNUC__ */

#if !defined(_WIN32) && !defined(__CYGWIN__)
#error Only Win32 target is supported!
#endif

#ifndef __nothrow
#ifdef __cplusplus
#define __nothrow __declspec(nothrow)
#else
#define __nothrow
#endif
#endif /* __nothrow */

#if 0 /* expanded by -frewrite-includes */
#include <vadefs.h>	/* other headers depend on this include */
#endif /* expanded by -frewrite-includes */

#ifndef _CRT_STRINGIZE
#define __CRT_STRINGIZE(_Value) #_Value
#define _CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)
#endif /* _CRT_STRINGIZE */

#ifndef _CRT_WIDE
#define __CRT_WIDE(_String) L ## _String
#define _CRT_WIDE(_String) __CRT_WIDE(_String)
#endif /* _CRT_WIDE */

#ifndef _W64
#define _W64
#endif

#ifndef _CRTIMP_NOIA64
#ifdef __ia64__
#define _CRTIMP_NOIA64
#else
#define _CRTIMP_NOIA64 _CRTIMP
#endif
#endif /* _CRTIMP_NOIA64 */

#ifndef _CRTIMP2
#define _CRTIMP2 _CRTIMP
#endif

#ifndef _CRTIMP_ALTERNATIVE
#define _CRTIMP_ALTERNATIVE _CRTIMP
#define _CRT_ALTERNATIVE_IMPORTED
#endif /* _CRTIMP_ALTERNATIVE */

#ifndef _MRTIMP2
#define _MRTIMP2  _CRTIMP
#endif

/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#if !defined (_DLL) && defined (__GNUC__)
#define _DLL
#endif

#ifndef _MT
#define _MT
#endif

#ifndef _MCRTIMP
#define _MCRTIMP _CRTIMP
#endif

#ifndef _CRTIMP_PURE
#define _CRTIMP_PURE _CRTIMP
#endif

#ifndef _PGLOBAL
#define _PGLOBAL
#endif

#ifndef _AGLOBAL
#define _AGLOBAL
#endif

#define _SECURECRT_FILL_BUFFER_PATTERN 0xFD
#define _CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)

#ifndef _CRT_INSECURE_DEPRECATE_MEMORY
#define _CRT_INSECURE_DEPRECATE_MEMORY(_Replacement)
#endif

#ifndef _CRT_INSECURE_DEPRECATE_GLOBALS
#define _CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement)
#endif

#ifndef _CRT_MANAGED_HEAP_DEPRECATE
#define _CRT_MANAGED_HEAP_DEPRECATE
#endif

#ifndef _CRT_OBSOLETE
#define _CRT_OBSOLETE(_NewItem)
#endif

#define REGISTERWORDENUMPROC __MINGW_NAME_AW(REGISTERWORDENUMPROC)
#define ImmConfigureIME __MINGW_NAME_AW(ImmConfigureIME)
#define ImmEscape __MINGW_NAME_AW(ImmEscape)
#define ImmGetConversionList __MINGW_NAME_AW(ImmGetConversionList)
#define ImmIsUIMessage __MINGW_NAME_AW(ImmIsUIMessage)
#define ImmRegisterWord __MINGW_NAME_AW(ImmRegisterWord)
#define ImmUnregisterWord __MINGW_NAME_AW(ImmUnregisterWord)
#define ImmGetRegisterWordStyle __MINGW_NAME_AW(ImmGetRegisterWordStyle)
#define ImmEnumRegisterWord __MINGW_NAME_AW(ImmEnumRegisterWord)
#define ImmGetImeMenuItems __MINGW_NAME_AW(ImmGetImeMenuItems)

  WINBOOL WINAPI ImmConfigureIMEA(HKL,HWND,DWORD,LPVOID);
  WINBOOL WINAPI ImmConfigureIMEW(HKL,HWND,DWORD,LPVOID);
  LRESULT WINAPI ImmEscapeA(HKL,HIMC,UINT,LPVOID);
  LRESULT WINAPI ImmEscapeW(HKL,HIMC,UINT,LPVOID);
  DWORD WINAPI ImmGetConversionListA(HKL,HIMC,LPCSTR,LPCANDIDATELIST,DWORD dwBufLen,UINT uFlag);
  DWORD WINAPI ImmGetConversionListW(HKL,HIMC,LPCWSTR,LPCANDIDATELIST,DWORD dwBufLen,UINT uFlag);
  WINBOOL WINAPI ImmNotifyIME(HIMC,DWORD dwAction,DWORD dwIndex,DWORD dwValue);
  WINBOOL WINAPI ImmGetStatusWindowPos(HIMC,LPPOINT);
  WINBOOL WINAPI ImmSetStatusWindowPos(HIMC,LPPOINT);
  WINBOOL WINAPI ImmGetCompositionWindow(HIMC,LPCOMPOSITIONFORM);
  WINBOOL WINAPI ImmSetCompositionWindow(HIMC,LPCOMPOSITIONFORM);
  WINBOOL WINAPI ImmGetCandidateWindow(HIMC,DWORD,LPCANDIDATEFORM);
  WINBOOL WINAPI ImmSetCandidateWindow(HIMC,LPCANDIDATEFORM);
  WINBOOL WINAPI ImmIsUIMessageA(HWND,UINT,WPARAM,LPARAM);
  WINBOOL WINAPI ImmIsUIMessageW(HWND,UINT,WPARAM,LPARAM);
  UINT WINAPI ImmGetVirtualKey(HWND);
  WINBOOL WINAPI ImmRegisterWordA(HKL,LPCSTR lpszReading,DWORD,LPCSTR lpszRegister);
  WINBOOL WINAPI ImmRegisterWordW(HKL,LPCWSTR lpszReading,DWORD,LPCWSTR lpszRegister);
  WINBOOL WINAPI ImmUnregisterWordA(HKL,LPCSTR lpszReading,DWORD,LPCSTR lpszUnregister);
  WINBOOL WINAPI ImmUnregisterWordW(HKL,LPCWSTR lpszReading,DWORD,LPCWSTR lpszUnregister);
  UINT WINAPI ImmGetRegisterWordStyleA(HKL,UINT nItem,LPSTYLEBUFA);
  UINT WINAPI ImmGetRegisterWordStyleW(HKL,UINT nItem,LPSTYLEBUFW);
  UINT WINAPI ImmEnumRegisterWordA(HKL,REGISTERWORDENUMPROCA,LPCSTR lpszReading,DWORD,LPCSTR lpszRegister,LPVOID);
  UINT WINAPI ImmEnumRegisterWordW(HKL,REGISTERWORDENUMPROCW,LPCWSTR lpszReading,DWORD,LPCWSTR lpszRegister,LPVOID);
  WINBOOL WINAPI ImmDisableIME(DWORD);
  WINBOOL WINAPI ImmEnumInputContext(DWORD idThread,IMCENUMPROC lpfn,LPARAM lParam);
  DWORD WINAPI ImmGetImeMenuItemsA(HIMC,DWORD,DWORD,LPIMEMENUITEMINFOA,LPIMEMENUITEMINFOA,DWORD);
  DWORD WINAPI ImmGetImeMenuItemsW(HIMC,DWORD,DWORD,LPIMEMENUITEMINFOW,LPIMEMENUITEMINFOW,DWORD);
  WINBOOL WINAPI ImmDisableTextFrameService(DWORD idThread);

#define IMC_GETCANDIDATEPOS 0x0007
#define IMC_SETCANDIDATEPOS 0x0008
#define IMC_GETCOMPOSITIONFONT 0x0009
#define IMC_SETCOMPOSITIONFONT 0x000A
#define IMC_GETCOMPOSITIONWINDOW 0x000B
#define IMC_SETCOMPOSITIONWINDOW 0x000C
#define IMC_GETSTATUSWINDOWPOS 0x000F
#define IMC_SETSTATUSWINDOWPOS 0x0010
#define IMC_CLOSESTATUSWINDOW 0x0021
#define IMC_OPENSTATUSWINDOW 0x0022

#define NI_OPENCANDIDATE 0x0010
#define NI_CLOSECANDIDATE 0x0011
#define NI_SELECTCANDIDATESTR 0x0012
#define NI_CHANGECANDIDATELIST 0x0013
#define NI_FINALIZECONVERSIONRESULT 0x0014
#define NI_COMPOSITIONSTR 0x0015
#define NI_SETCANDIDATE_PAGESTART 0x0016
#define NI_SETCANDIDATE_PAGESIZE 0x0017
#define NI_IMEMENUSELECTED 0x0018

#define ISC_SHOWUICANDIDATEWINDOW 0x00000001
#define ISC_SHOWUICOMPOSITIONWINDOW 0x80000000
#define ISC_SHOWUIGUIDELINE 0x40000000
#define ISC_SHOWUIALLCANDIDATEWINDOW 0x0000000F
#define ISC_SHOWUIALL 0xC000000F

#define CPS_COMPLETE 0x0001
#define CPS_CONVERT 0x0002
#define CPS_REVERT 0x0003
#define CPS_CANCEL 0x0004

#define MOD_ALT 0x0001
#define MOD_CONTROL 0x0002
#define MOD_SHIFT 0x0004

#define MOD_LEFT 0x8000
#define MOD_RIGHT 0x4000

#define MOD_ON_KEYUP 0x0800
#define MOD_IGNORE_ALL_MODIFIER 0x0400

#define IME_CHOTKEY_IME_NONIME_TOGGLE 0x10
#define IME_CHOTKEY_SHAPE_TOGGLE 0x11
#define IME_CHOTKEY_SYMBOL_TOGGLE 0x12

#define IME_JHOTKEY_CLOSE_OPEN 0x30

#define IME_KHOTKEY_SHAPE_TOGGLE 0x50
#define IME_KHOTKEY_HANJACONVERT 0x51
#define IME_KHOTKEY_ENGLISH 0x52

#define IME_THOTKEY_IME_NONIME_TOGGLE 0x70
#define IME_THOTKEY_SHAPE_TOGGLE 0x71
#define IME_THOTKEY_SYMBOL_TOGGLE 0x72

#define IME_HOTKEY_DSWITCH_FIRST 0x100
#define IME_HOTKEY_DSWITCH_LAST 0x11F

#define IME_HOTKEY_PRIVATE_FIRST 0x200
#define IME_ITHOTKEY_RESEND_RESULTSTR 0x200
#define IME_ITHOTKEY_PREVIOUS_COMPOSITION 0x201
#define IME_ITHOTKEY_UISTYLE_TOGGLE 0x202
#define IME_ITHOTKEY_RECONVERTSTRING 0x203
#define IME_HOTKEY_PRIVATE_LAST 0x21F

#define GCS_COMPREADSTR 0x0001
#define GCS_COMPREADATTR 0x0002
#define GCS_COMPREADCLAUSE 0x0004
#define GCS_COMPSTR 0x0008
#define GCS_COMPATTR 0x0010
#define GCS_COMPCLAUSE 0x0020
#define GCS_CURSORPOS 0x0080
#define GCS_DELTASTART 0x0100
#define GCS_RESULTREADSTR 0x0200
#define GCS_RESULTREADCLAUSE 0x0400
#define GCS_RESULTSTR 0x0800
#define GCS_RESULTCLAUSE 0x1000

#define CS_INSERTCHAR 0x2000
#define CS_NOMOVECARET 0x4000

#define IMEVER_0310 0x0003000A
#define IMEVER_0400 0x00040000

#define IME_PROP_AT_CARET 0x00010000
#define IME_PROP_SPECIAL_UI 0x00020000
#define IME_PROP_CANDLIST_START_FROM_1 0x00040000
#define IME_PROP_UNICODE 0x00080000
#define IME_PROP_COMPLETE_ON_UNSELECT 0x00100000

#define UI_CAP_2700 0x00000001
#define UI_CAP_ROT90 0x00000002
#define UI_CAP_ROTANY 0x00000004

#define SCS_CAP_COMPSTR 0x00000001
#define SCS_CAP_MAKEREAD 0x00000002
#define SCS_CAP_SETRECONVERTSTRING 0x00000004

#define SELECT_CAP_CONVERSION 0x00000001
#define SELECT_CAP_SENTENCE 0x00000002

#define GGL_LEVEL 0x00000001
#define GGL_INDEX 0x00000002
#define GGL_STRING 0x00000003
#define GGL_PRIVATE 0x00000004

#define GL_LEVEL_NOGUIDELINE 0x00000000
#define GL_LEVEL_FATAL 0x00000001
#define GL_LEVEL_ERROR 0x00000002
#define GL_LEVEL_WARNING 0x00000003
#define GL_LEVEL_INFORMATION 0x00000004

#define GL_ID_UNKNOWN 0x00000000
#define GL_ID_NOMODULE 0x00000001
#define GL_ID_NODICTIONARY 0x00000010
#define GL_ID_CANNOTSAVE 0x00000011
#define GL_ID_NOCONVERT 0x00000020
#define GL_ID_TYPINGERROR 0x00000021
#define GL_ID_TOOMANYSTROKE 0x00000022
#define GL_ID_READINGCONFLICT 0x00000023
#define GL_ID_INPUTREADING 0x00000024
#define GL_ID_INPUTRADICAL 0x00000025
#define GL_ID_INPUTCODE 0x00000026
#define GL_ID_INPUTSYMBOL 0x00000027
#define GL_ID_CHOOSECANDIDATE 0x00000028
#define GL_ID_REVERSECONVERSION 0x00000029
#define GL_ID_PRIVATE_FIRST 0x00008000
#define GL_ID_PRIVATE_LAST 0x0000FFFF

#define IGP_GETIMEVERSION (DWORD)(-4)
#define IGP_PROPERTY 0x00000004
#define IGP_CONVERSION 0x00000008
#define IGP_SENTENCE 0x0000000c
#define IGP_UI 0x00000010
#define IGP_SETCOMPSTR 0x00000014
#define IGP_SELECT 0x00000018

#define SCS_SETSTR (GCS_COMPREADSTR|GCS_COMPSTR)
#define SCS_CHANGEATTR (GCS_COMPREADATTR|GCS_COMPATTR)
#define SCS_CHANGECLAUSE (GCS_COMPREADCLAUSE|GCS_COMPCLAUSE)
#define SCS_SETRECONVERTSTRING 0x00010000
#define SCS_QUERYRECONVERTSTRING 0x00020000

#define ATTR_INPUT 0x00
#define ATTR_TARGET_CONVERTED 0x01
#define ATTR_CONVERTED 0x02
#define ATTR_TARGET_NOTCONVERTED 0x03
#define ATTR_INPUT_ERROR 0x04
#define ATTR_FIXEDCONVERTED 0x05

#define CFS_DEFAULT 0x0000
#define CFS_RECT 0x0001
#define CFS_POINT 0x0002
#define CFS_FORCE_POSITION 0x0020
#define CFS_CANDIDATEPOS 0x0040
#define CFS_EXCLUDE 0x0080

#define GCL_CONVERSION 0x0001
#define GCL_REVERSECONVERSION 0x0002
#define GCL_REVERSE_LENGTH 0x0003

#define IME_CMODE_ALPHANUMERIC 0x0000
#define IME_CMODE_NATIVE 0x0001
#define IME_CMODE_CHINESE IME_CMODE_NATIVE

#define IME_CMODE_HANGEUL IME_CMODE_NATIVE
#define IME_CMODE_HANGUL IME_CMODE_NATIVE
#define IME_CMODE_JAPANESE IME_CMODE_NATIVE
#define IME_CMODE_KATAKANA 0x0002
#define IME_CMODE_LANGUAGE 0x0003
#define IME_CMODE_FULLSHAPE 0x0008
#define IME_CMODE_ROMAN 0x0010
#define IME_CMODE_CHARCODE 0x0020
#define IME_CMODE_HANJACONVERT 0x0040
#define IME_CMODE_SOFTKBD 0x0080
#define IME_CMODE_NOCONVERSION 0x0100
#define IME_CMODE_EUDC 0x0200
#define IME_CMODE_SYMBOL 0x0400
#define IME_CMODE_FIXED 0x0800
#define IME_CMODE_RESERVED 0xF0000000

#define IME_SMODE_NONE 0x0000
#define IME_SMODE_PLAURALCLAUSE 0x0001
#define IME_SMODE_SINGLECONVERT 0x0002
#define IME_SMODE_AUTOMATIC 0x0004
#define IME_SMODE_PHRASEPREDICT 0x0008
#define IME_SMODE_CONVERSATION 0x0010
#define IME_SMODE_RESERVED 0x0000F000

#define IME_CAND_UNKNOWN 0x0000
#define IME_CAND_READ 0x0001
#define IME_CAND_CODE 0x0002
#define IME_CAND_MEANING 0x0003
#define IME_CAND_RADICAL 0x0004
#define IME_CAND_STROKE 0x0005

#define IMN_CLOSESTATUSWINDOW 0x0001
#define IMN_OPENSTATUSWINDOW 0x0002
#define IMN_CHANGECANDIDATE 0x0003
#define IMN_CLOSECANDIDATE 0x0004
#define IMN_OPENCANDIDATE 0x0005
#define IMN_SETCONVERSIONMODE 0x0006
#define IMN_SETSENTENCEMODE 0x0007
#define IMN_SETOPENSTATUS 0x0008
#define IMN_SETCANDIDATEPOS 0x0009
#define IMN_SETCOMPOSITIONFONT 0x000A
#define IMN_SETCOMPOSITIONWINDOW 0x000B
#define IMN_SETSTATUSWINDOWPOS 0x000C
#define IMN_GUIDELINE 0x000D
#define IMN_PRIVATE 0x000E

#define IMR_COMPOSITIONWINDOW 0x0001
#define IMR_CANDIDATEWINDOW 0x0002
#define IMR_COMPOSITIONFONT 0x0003
#define IMR_RECONVERTSTRING 0x0004
#define IMR_CONFIRMRECONVERTSTRING 0x0005
#define IMR_QUERYCHARPOSITION 0x0006
#define IMR_DOCUMENTFEED 0x0007

#define IMM_ERROR_NODATA (-1)
#define IMM_ERROR_GENERAL (-2)

#define IME_CONFIG_GENERAL 1
#define IME_CONFIG_REGISTERWORD 2
#define IME_CONFIG_SELECTDICTIONARY 3

#define IME_ESC_QUERY_SUPPORT 0x0003
#define IME_ESC_RESERVED_FIRST 0x0004
#define IME_ESC_RESERVED_LAST 0x07FF
#define IME_ESC_PRIVATE_FIRST 0x0800
#define IME_ESC_PRIVATE_LAST 0x0FFF

#define IME_ESC_SEQUENCE_TO_INTERNAL 0x1001
#define IME_ESC_GET_EUDC_DICTIONARY 0x1003
#define IME_ESC_SET_EUDC_DICTIONARY 0x1004
#define IME_ESC_MAX_KEY 0x1005
#define IME_ESC_IME_NAME 0x1006
#define IME_ESC_SYNC_HOTKEY 0x1007
#define IME_ESC_HANJA_MODE 0x1008
#define IME_ESC_AUTOMATA 0x1009
#define IME_ESC_PRIVATE_HOTKEY 0x100a
#define IME_ESC_GETHELPFILENAME 0x100b

#define IME_REGWORD_STYLE_EUDC 0x00000001
#define IME_REGWORD_STYLE_USER_FIRST 0x80000000
#define IME_REGWORD_STYLE_USER_LAST 0xFFFFFFFF

#define IACE_CHILDREN 0x0001
#define IACE_DEFAULT 0x0010
#define IACE_IGNORENOCONTEXT 0x0020

#define IGIMIF_RIGHTMENU 0x0001

#define IGIMII_CMODE 0x0001
#define IGIMII_SMODE 0x0002
#define IGIMII_CONFIGURE 0x0004
#define IGIMII_TOOLS 0x0008
#define IGIMII_HELP 0x0010
#define IGIMII_OTHER 0x0020
#define IGIMII_INPUTTOOLS 0x0040

#define IMFT_RADIOCHECK 0x00001
#define IMFT_SEPARATOR 0x00002
#define IMFT_SUBMENU 0x00004

#define IMFS_GRAYED MFS_GRAYED
#define IMFS_DISABLED MFS_DISABLED
#define IMFS_CHECKED MFS_CHECKED
#define IMFS_HILITE MFS_HILITE
#define IMFS_ENABLED MFS_ENABLED
#define IMFS_UNCHECKED MFS_UNCHECKED
#define IMFS_UNHILITE MFS_UNHILITE
#define IMFS_DEFAULT MFS_DEFAULT

#define SOFTKEYBOARD_TYPE_T1 0x0001
#define SOFTKEYBOARD_TYPE_C1 0x0002
#endif

#ifdef __cplusplus
}
#endif
#endif
#endif

#endif
#endif

/* Restore old value of interface for Obj-C.  See above.  */
#ifdef __OBJC__
#pragma pop_macro("interface")
#endif

#endif
///////////////////////////
/*
#include <stdio.h>
#undef _CRTIMP
#define _CRTIMP
_CRTIMP  wchar_t* __cdecl  fgetws (wchar_t*, int, FILE*);
_CRTIMP  int __cdecl 	fputws (const wchar_t*, FILE*);
_CRTIMP   wint_t __cdecl 	getwc (FILE*);
_CRTIMP   wint_t __cdecl 	getwchar (void);
_CRTIMP   wchar_t* __cdecl  _getws (wchar_t*);
_CRTIMP   wint_t __cdecl 	putwc (wint_t, FILE*);
_CRTIMP  int __cdecl 	_putws (const wchar_t*);
_CRTIMP  wint_t __cdecl 	putwchar (wint_t);
_CRTIMP  FILE* __cdecl 	_wfdopen(int, const wchar_t *);
_CRTIMP  FILE* __cdecl 	_wfopen (const wchar_t*, const wchar_t*);
_CRTIMP  FILE* __cdecl 	_wfreopen (const wchar_t*, const wchar_t*, FILE*);
_CRTIMP  FILE* __cdecl 	_wfsopen (const wchar_t*, const wchar_t*, int);
_CRTIMP  wchar_t* __cdecl  _wtmpnam (wchar_t*);
_CRTIMP  wchar_t* __cdecl  _wtempnam (const wchar_t*, const wchar_t*);
_CRTIMP  int __cdecl 	_wrename (const wchar_t*, const wchar_t*);
_CRTIMP   int __cdecl 	_wremove (const wchar_t*);
//  void __cdecl 	_wperror (const wchar_t*);
_CRTIMP FILE* __cdecl 	_wpopen (const wchar_t*, const wchar_t*);
*/
#endif

#ifdef __cplusplus
}
#endif
#endif
