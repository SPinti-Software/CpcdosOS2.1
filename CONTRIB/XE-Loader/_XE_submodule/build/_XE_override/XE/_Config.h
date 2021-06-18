 /*  -== XE-Loader ==-
 *
 *  Load [.exe .elf / .dll .so] from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky 
 *  
 * Copyright (c) 2021 - V·Liance
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 *
 * Description:
 * 
 * Here you can change the behavior of XE-Loader 
 *
*/
#ifndef EXELOADER_Config_H
#define EXELOADER_Config_H

#if ImWin
#define Func_Win
#endif

#define Func_Win //Temp
#undef Func_Win //Temp

////////////////////////////////////////////////////
/////////////  CUSTOM SETTINGS  ////////////////////
////////////////////////////////////////////////////

#define VirtualLoadPE

#define USE_Direct_Mapping

//Use the Windows Standard LoadLibraryA or undef to use the ExeLaoder AddLibrary similar to loading .exe from memory
//#define USE_Windows_LoadLibrary
//#define USE_Windows_GetProcAddress

//Show when function are called from the fonction table, with is parameters
#define Show_FuncTable

//Some function are irrelevant and may be annoying, but sometime we need it for debugging purpose
//#define Show_AllFuncTable

//Use the standard Widows VirtualAlloc allocation or the more portable ExeLoader version
//#define USE_Windows_VirtualAlloc

//Use standard TlsAlloc instead of the Exeloader one
#define USE_Platform_ThreadStorage

#define USE_Platform_Atomic

#define USE_WinThread

//Use standard Windows LocalAlloc
//#define USE_Platform_LocalAlloc

//Use standard compiler AlignedAlloc
//#define USE_Platform_AlignedAlloc

//#define USE_Platform_RegisterFrame

#define USE_Window_LastError

#define NO_Windows_Sleep

#define HAVE_OPERATOR_NEW_INT

//#define No_Main

//#define USE_PRINTF

#define SIMULATE_MULTI_THREAD_TO_SINGLE_WORKER_TERMINATE_ON_SLEEP

#define ShowPixView 
#define USE_Transparent_PixView 

//#define No_FullWinHeader
//#define NoSetLastError //USE_Window_LastError?
/*

#define No_vswprintf
#define No_wprintf

//#define CpcDos //TODO
#define USE_sbrk
#define USE_limit_on_vsnprintf  2147483647 
#define NO_Windows_Sleep
#undef USE_WinThread

#define No_FullWinHeader

*/

#ifndef MAX_ORDINAL_FUNC
#define MAX_ORDINAL_FUNC 512
#endif

////////////////////////////////////////////////////
////////////////////////////////////////////////////
////////////////////////////////////////////////////

#ifndef Func_Win
#undef USE_Windows_LoadLibrary
#undef USE_Windows_VirtualAlloc
#endif

#ifdef Show_AllFuncTable
	#undef Show_FuncTable
	#define Show_FuncTable
#endif

#ifdef InCpcDosCore
	#undef USE_Platform_ThreadStorage
#endif

#ifdef __DJGPP__
	#undef ShowPixView
	#undef ImWin
	#define No_vswprintf
	#define No_wprintf
	#define NoSetLastError
	#define CpcDos //TODO
	#define USE_sbrk
	#define USE_limit_on_vsnprintf  2147483647 /*INT_MAX*/
	#define NO_Windows_Sleep
	#undef USE_WinThread
	#define No_FullWinHeader
	#undef USE_Window_LastError
	#undef USE_Platform_Atomic
	#undef USE_Platform_ThreadStorage
	#undef VirtualLoadPE
	#undef HAVE_OPERATOR_NEW_INT
	#define HAVE_OPERATOR_NEW_LONG
	#define SIMULATE_MULTI_THREAD_TO_SINGLE_WORKER_TERMINATE_ON_SLEEP
	//#define No_Main
#endif

//TEST for dosbox -- Temp
// #ifdef __DJGPP__
// #undef No_Main
// #undef CpcDos
// #endif

///--=== ELF ===---////
#define SIZEOF_VOID_P 4
#ifdef _WIN64
//must use -m64
#define GELFLOAD_ARCH_x86_64 1
#else
#define GELFLOAD_ARCH_i386 1
#endif
#define PREFIX
//////////////////////////////

#endif //EXELOADER_Config_H
