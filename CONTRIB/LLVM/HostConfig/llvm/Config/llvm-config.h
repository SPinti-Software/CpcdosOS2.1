/*===------- llvm/Config/llvm-config.h - llvm configuration -------*- C -*-===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is distributed under the University of Illinois Open Source      */
/* License. See LICENSE.TXT for details.                                      */
/*                                                                            */
/*===----------------------------------------------------------------------===*/

/* This file enumerates variables from the LLVM configuration so that they
   can be in exported headers and won't override package specific directives.
   This is a C header that can be included in the llvm-c headers. */







#define WIN32_ELMCB_PCSTR const char*

#ifndef LLVM_CONFIG_H
#define LLVM_CONFIG_H


/*
LLVM runs much more quickly when it’s optimized and assertions are removed. However, such a build is currently incompatible with users who build without defining NDEBUG, and the lack of assertions makes it hard to debug problems in user code. We recommend allowing users to install both optimized and debug versions of LLVM in parallel. The following configure flags are relevant:

--disable-assertions
    Builds LLVM with NDEBUG defined. Changes the LLVM ABI. Also available by setting DISABLE_ASSERTIONS=0|1 in make‘s environment. This defaults to enabled regardless of the optimization setting, but it slows things down.
--enable-debug-symbols
    Builds LLVM with -g. Also available by setting DEBUG_SYMBOLS=0|1 in make‘s environment. This defaults to disabled when optimizing, so you should turn it back on to let users debug their programs.
--enable-optimized
    (For svn checkouts) Builds LLVM with -O2 and, by default, turns off debug symbols. Also available by setting ENABLE_OPTIMIZED=0|1 in make‘s environment. This defaults to enabled when not in a checkout.
*/

//Debug
//#define NDEBUG

//--with-oprofile // Depend on libopagent (>=version 0.9.4) to let the LLVM JIT tell oprofile about function addresses and line numbers.
//--enable-libffi Depend on libffi to allow the LLVM interpreter to call external functions.

/////////mingw shit//////////
#include <string.h>
#include <stdlib.h>     /* malloc, free, rand */
inline char *strdup (const char *s) {
    char *d = (char*)malloc (strlen (s) + 1);   // Allocate memory
    if (d != NULL) strcpy (d,s);         // Copy string if okay
    return d;                            // Return new memory
}
//is blank missing
inline int isblank2(char _nChar){
    if(_nChar == ' ' || _nChar == '\t'){
        return 1;
    }
    return 0;
}
////////////////////////////////////////

/* Define if this is Win32ish platform */
#define LLVM_ON_WIN32 1


/* Installation directory for binary executables */
/* #undef LLVM_BINDIR */

/* Time at which LLVM was configured */
/* #undef LLVM_CONFIGTIME */

/* Installation directory for data files */
/* #undef LLVM_DATADIR */

/*
i686-pc-win32 => i686-pc-windows-msvc
i686-pc-mingw32 => i686-pc-windows-gnu
i686-pc-cygwin => i686-pc-windows-cygnus
*/
/* Target triple LLVM will generate code for by default */
//#define LLVM_DEFAULT_TARGET_TRIPLE "x86_64-pc-win32"
//#define LLVM_DEFAULT_TARGET_TRIPLE "i686-pc-mingw32-elf"
#define LLVM_DEFAULT_TARGET_TRIPLE "i686-pc-windows-gnu-elf"
//#define LLVM_DEFAULT_TARGET_TRIPLE "i686-pc-mingw32"

/* Installation directory for documentation */
/* #undef LLVM_DOCSDIR */

/* Define if LLVM is built with asserts and checks that change the layout of
   client-visible data structures.  */
/* #undef LLVM_ENABLE_ABI_BREAKING_CHECKS */

/* Define if threads enabled */
//#define LLVM_ENABLE_THREADS 1
#define LLVM_ENABLE_THREADS 0

/* Installation directory for config files */
/* #undef LLVM_ETCDIR */

/* Has gcc/MSVC atomic intrinsics */
#define LLVM_HAS_ATOMICS 1

/* Host triple LLVM will be executed on */
//#define LLVM_HOST_TRIPLE "x86_64-pc-win32"
#define LLVM_HOST_TRIPLE "i686-pc-windows-gnu-elf"
//#define LLVM_HOST_TRIPLE "i686-pc-mingw32"

/* Installation directory for include files */
/* #undef LLVM_INCLUDEDIR */

/* Installation directory for .info files */
/* #undef LLVM_INFODIR */

/* Installation directory for man pages */
/* #undef LLVM_MANDIR */

/* LLVM architecture name for the native architecture, if available */
#define LLVM_NATIVE_ARCH X86

/* LLVM name for the native AsmParser init function, if available */
#define LLVM_NATIVE_ASMPARSER LLVMInitializeX86AsmParser

/* LLVM name for the native AsmPrinter init function, if available */
#define LLVM_NATIVE_ASMPRINTER LLVMInitializeX86AsmPrinter

/* LLVM name for the native Disassembler init function, if available */
#define LLVM_NATIVE_DISASSEMBLER LLVMInitializeX86Disassembler

/* LLVM name for the native Target init function, if available */
#define LLVM_NATIVE_TARGET LLVMInitializeX86Target

/* LLVM name for the native TargetInfo init function, if available */
#define LLVM_NATIVE_TARGETINFO LLVMInitializeX86TargetInfo

/* LLVM name for the native target MC init function, if available */
#define LLVM_NATIVE_TARGETMC LLVMInitializeX86TargetMC

/* Define if this is Unixish platform */
/* #undef LLVM_ON_UNIX */



/* Installation prefix directory */
#define LLVM_PREFIX "C:/Program Files/LLVM"

/* Define if we have the Intel JIT API runtime support library */
/* #undef LLVM_USE_INTEL_JITEVENTS */

/* Define if we have the oprofile JIT-support library */
/* #undef LLVM_USE_OPROFILE */

/* Major version of the LLVM API */
#define LLVM_VERSION_MAJOR 3

/* Minor version of the LLVM API */
#define LLVM_VERSION_MINOR 9

/* Patch version of the LLVM API */
#define LLVM_VERSION_PATCH 0

/* LLVM version string */
#define LLVM_VERSION_STRING "3.9.0svn-r257997"

/* Define if we link Polly to the tools */
/* #undef LINK_POLLY_INTO_TOOLS */

#endif
