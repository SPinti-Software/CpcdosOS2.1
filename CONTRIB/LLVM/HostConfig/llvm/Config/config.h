
#ifndef CLANG_CONFIG_H
#define CLANG_CONFIG_H

	#include "llvm-config.h" //Remvmoe bug inclusion


	#define HAVE_LIBPSAPI 1 // #error "libpsapi.a should be present"
	#define HAVE_LIBSHELL32 1 // #error "libshell32.a should be present"


	#define HAVE_ISINF_IN_MATH_H 1
	#define HAVE_ISNAN_IN_MATH_H 1
	#include <unistd.h> //Error handling :::write error **
    #include <stdio.h>


	/* Bug report URL. */
	#define BUG_REPORT_URL "http://llvm.org/bugs/"

	/* Default OpenMP runtime used by -fopenmp. */
	#define CLANG_DEFAULT_OPENMP_RUNTIME "libomp"

	/* Multilib suffix for libdir. */
	#define CLANG_LIBDIR_SUFFIX ""

	/* Relative directory for resource files */
	#define CLANG_RESOURCE_DIR ""

	/* Directories clang will search for headers */
	#define C_INCLUDE_DIRS ""

	/* Default <path> to all compiler invocations for --sysroot=<path>. */
	#define DEFAULT_SYSROOT ""

	/* Directory where gcc is installed. */
	#define GCC_INSTALL_PREFIX ""

	/* Define if we have libxml2 */
	/* #undef CLANG_HAVE_LIBXML */

	/* The LLVM product name and version */
	#define BACKEND_PACKAGE_STRING "LLVM 3.9.0svn-r257997"

	/* Linker version detected at compile time. */
	/* #undef HOST_LINK_VERSION */

	#define PACKAGE_NAME   "LLVM_VER_3_8"
	#define PACKAGE_VERSION   "X.X.X"

#endif
