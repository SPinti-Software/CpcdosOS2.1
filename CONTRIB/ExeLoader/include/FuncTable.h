/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *   - Sebastien FAVIER
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html

* Description:
* 
* Remap system function to custom ones 
*
*
* Usefull declaration                ------------------------    decorated
//void __cdecl foo(void);            ----------------------->    _foo
//void __cdecl foo(int a);           ----------------------->    _foo
//void __cdecl foo(int a, int b);    ----------------------->    _foo
//void __stdcall foo(void);          ----------------------->    _foo@0
//void __stdcall foo(int a);         ----------------------->    _foo@4
//void __stdcall foo(int a, int b);  ----------------------->    _foo@8
//void __fastcall foo(void);         ----------------------->    @foo@0
//void __fastcall foo(int a);        ----------------------->    @foo@4
//void __fastcall foo(int a, int b); ----------------------->    @foo@8
*
*/
#ifndef EXELOADER_FuncTable_H
#define EXELOADER_FuncTable_H

#include "ExeLoader.h"
/*
#ifndef ImWin
#define InCpcDosCore
#include "CPC_WPR.h"
#endif // ImWin
*/
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include <errno.h>
#include <conio.h>
#include <cassert>
#include <cstdarg>
#include <setjmp.h>
#include <stdlib.h>  

#include "FuncTable/DummyTable.h"

#include "FuncTable/FuncTable_Memory.h"
#include "FuncTable/FuncTable_Thread.h"
#include "FuncTable/FuncTable_Sys.h"
#include "FuncTable/FuncTable_Pipe.h"
#include "FuncTable/FuncTable_Imp.h"
//#include "FuncTable/FuncTable_Remap_Common.h"
//#include "FuncTable/FuncTable_Remap_Windows.h"
	
#ifndef UseWinFunc
	//onCpcDos
//	#include "FuncTableRemap_CpcDos.h"
#endif


extern "C" ULONG __chkstk();

extern "C" void __register_frame(void* ptr);
extern "C" void __deregister_frame(void* ptr);

extern "C" void* _aligned_malloc(size_t size,size_t alignment);
extern "C" void  _aligned_free(void *memblock);
extern "C" void* _aligned_realloc(void *memblock,size_t size,size_t alignment);
extern "C" UINT ___lc_codepage_func(void);

#define _IOB_ENTRIES_ 20
FILE iob[_IOB_ENTRIES_] = {}; //TODO -> to test
 char *__initenv = NULL;     /* pointer to initial environment block */
 //__initenv = _environ = malloc(count * sizeof(char*));

 sFunc aTableFunc[] = {
 ////////// CPC DOS ///////////////////
//#include "FuncTable/CpcDosFuncTable.h"
//////////////////////////////////////
{"",			"func_NotImplemented" 		,(FUNC_) func_NotImplemented }, //Must be first

{"","__initenv" 	,(FUNC_) &__initenv }, //TODO -> to test //Special
{"","_iob" 		,(FUNC_) iob }, 	  //TODO -> to test //Special


{"",			"GetProcAddress" 			,(FUNC_) imp_GetProcAddress }, 	//Special
{"",			"LoadLibraryA"    			,(FUNC_) imp_LoadLibraryA },  	//Special
{"",			"LoadLibraryW"    			,(FUNC_) imp_LoadLibraryW},  	//Special
{"",			"LoadLibraryExA"    		,(FUNC_) imp_LoadLibraryExA},  	//Special
{"",			"LoadLibraryExW"    		,(FUNC_) imp_LoadLibraryExW},  	//Special
{"",			"FreeLibrary"    			,(FUNC_) imp_FreeLibrary},  	
//{"LoadLibraryExW"  			,(FUNC_) LoadLibraryExW }, 			//TODO

{"",			"CommandLineToArgvW"  		,(FUNC_) imp_CommandLineToArgvW },
{"",			"GetCommandLineA"  			,(FUNC_) imp_GetCommandLineA },
{"",			"GetCommandLineW"  			,(FUNC_) imp_GetCommandLineW },
//{"chkstk"  					,(FUNC_) imp_chkstk },
#ifdef ImWin
{"",			"chkstk"  					,(FUNC_) __chkstk },
#endif

#ifdef USE_Platform_RegisterFrame
{"",			"__register_frame"  	,(FUNC_) __register_frame },
{"",			"__deregister_frame"  	,(FUNC_) __deregister_frame },
#else
{"",			"__register_frame"  	,(FUNC_) imp_register_frame },
{"",			"__deregister_frame"  	,(FUNC_) imp_deregister_frame },
#endif


#ifdef USE_Platform_AlignedAlloc
{"",			"_aligned_malloc"	,(FUNC_) _aligned_malloc },
{"",			"_aligned_realloc"	,(FUNC_) _aligned_realloc },
{"",			"_aligned_free"  	,(FUNC_) _aligned_free },
#else
{"",			"_aligned_malloc"	,(FUNC_) imp_aligned_malloc },
{"",			"_aligned_realloc"	,(FUNC_) imp_aligned_realloc },
{"",			"_aligned_free"  	,(FUNC_) imp_aligned_free },
#endif

/////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////// FUNC TABLE /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////

/////////// CRT /////////////
{"",			"_initterm"  		,(FUNC_) imp_initterm },
{"",			"_initterm_e"  	,(FUNC_) imp_initterm_e },
{"",			"__set_app_type"  	,(FUNC_) imp_set_app_type },
{"",			"__p__fmode"  		,(FUNC_) imp_p__fmode },
{"",			"__lconv_init"  	,(FUNC_) imp_lconv_init },
{"",			"__p__acmdln"  	,(FUNC_) imp_p__acmdln },
{"",			"__getmainargs"  	,(FUNC_) imp_getmainargs },
{"",			"__p__environ"  	,(FUNC_) imp_p__environ },

#ifdef Func_Win 
{"",			"_onexit"  		,(FUNC_) _onexit },
#else
{"",			"_onexit"  		,(FUNC_) imp_onexit },
#endif

#ifdef Func_Win 
{"",			"___lc_codepage_func"  ,(FUNC_) ___lc_codepage_func },
#else
{"",			"___lc_codepage_func"  ,(FUNC_) imp_lc_codepage_func },
#endif



{"",			"localeconv"  ,(FUNC_) pipe_localeconv },


/////////////////////////////

//Temp

//{"wcscpy"  				,(FUNC_) wcscpy },
{"",			"sscanf"  				,(FUNC_) sscanf },
{"",			"bsearch"  			,(FUNC_) bsearch },

//{"GetModuleFileNameW"  	,(FUNC_) GetModuleFileNameW },
//{"_open"  				,(FUNC_) imp_open },

/*
{"",			"InitOnceExecuteOnce"  		,(FUNC_) InitOnceExecuteOnce },
{"",			"SleepConditionVariableCS"  	,(FUNC_) thread_SleepConditionVariableCS },
{"",			"InitializeConditionVariable"  ,(FUNC_) InitializeConditionVariable },
{"",			"WakeAllConditionVariable"  	,(FUNC_) WakeAllConditionVariable },
{"",			"WakeConditionVariable"  		,(FUNC_) thread_WakeConditionVariable },
*/

{"",			"CreateSemaphoreA"  		,(FUNC_) th_CreateSemaphoreA },
{"",			"CreateSemaphoreW"  		,(FUNC_) th_CreateSemaphoreW },
{"",			"WaitForSingleObject"  		,(FUNC_) th_WaitForSingleObject },
{"",			"ReleaseSemaphore"  		,(FUNC_) th_ReleaseSemaphore },


//{"_fdopen"  			,(FUNC_) _fdopen },

//
//Temp







//////// Implemented ////////////////////////////////////////


{"",			"_strdup"  		,(FUNC_) imp_strdup },
{"",			"strncpy"  		,(FUNC_) imp_strncpy },
{"",			"isspace"  		,(FUNC_) imp_isspace },
{"",			"isupper"  		,(FUNC_ )imp_isupper },
{"",			"islower"  		,(FUNC_) imp_islower },

{"",			"_lock"  			,(FUNC_) imp_lock },
{"",			"_unlock"  		,(FUNC_) imp_unlock },

{"",			"_vscprintf"  		,(FUNC_) imp_vscprintf },
////////////////////////////////////////////////////////////

////// Special func WGL ////////////////////////////////////
{"",			"GetPixelFormat"  		,(FUNC_) pipe_GetPixelFormat }, 
{"",			"SetPixelFormat"  		,(FUNC_) pipe_SetPixelFormat }, 
{"",			"ChoosePixelFormat"  	,(FUNC_) pipe_ChoosePixelFormat },
{"",			"DescribePixelFormat"  ,(FUNC_) pipe_DescribePixelFormat },
{"",			"SwapBuffers"  		,(FUNC_) pipe_SwapBuffers },
////////////////////////////////////////////////////////////

///////////////// System //////////////
{"",			"GetDpiForMonitor"  		,(FUNC_) sys_GetDpiForMonitor }, //Shcore.dll
{"",			"SetProcessDpiAwareness"  	,(FUNC_) sys_SetProcessDpiAwareness }, //Shcore.dll
{"",			"SetProcessDPIAware"  		,(FUNC_) sys_SetProcessDPIAware }, //Shcore.dll
////////////////////////////////////////

{"",			"VirtualAlloc"  			,(FUNC_) pipe_VirtualAlloc },
{"",			"VirtualFree"  				,(FUNC_) pipe_VirtualFree },
{"",			"VirtualProtect"  			,(FUNC_) pipe_VirtualProtect },
{"",			"HeapCreate"  				,(FUNC_) mem_HeapCreate },
{"",			"HeapAlloc"  				,(FUNC_) mem_HeapAlloc },
{"",			"HeapFree"  				,(FUNC_) mem_HeapFree },

{"",			"FlushInstructionCache"		,(FUNC_) pipe_FlushInstructionCache },
	
{"",			"setvbuf"  					,(FUNC_) pipe_setvbuf },
{"",			"_set_error_mode" 			,(FUNC_) pipe_set_error_mode },

{"",			"RegisterClassW"  			,(FUNC_) pipe_RegisterClassW }, 
{"",			"AdjustWindowRectEx"  		,(FUNC_) pipe_AdjustWindowRectEx }, 

{"",			"DispatchMessageA"  		,(FUNC_) pipe_DispatchMessageA }, 

{"",			"GetSystemInfo"  			,(FUNC_) pipe_GetSystemInfo }, 
{"",			"GetNativeSystemInfo"  		,(FUNC_) pipe_GetNativeSystemInfo }, 
{"",			"WindowFromDC"  			,(FUNC_) pipe_WindowFromDC }, 
{"",			"ClientToScreen"  			,(FUNC_) pipe_ClientToScreen }, 

{"",			"StretchDIBits"  			,(FUNC_) pipe_StretchDIBits },

{"",			"CallNextHookEx"  			,(FUNC_) pipe_CallNextHookEx },
{"",			"EnumDisplaySettingsA" 		,(FUNC_) pipe_EnumDisplaySettingsA },

{"",			"CreateToolhelp32Snapshot"  ,(FUNC_) pipe_CreateToolhelp32Snapshot },
{"",			"Thread32First"  			,(FUNC_) th_Thread32First },
{"",			"Thread32Next"  			,(FUNC_) th_Thread32Next },

{"",			"ShowWindow"  				,(FUNC_) pipe_ShowWindow },

{"",			"SetWindowsHookExA" 		,(FUNC_) pipe_SetWindowsHookExA },
{"",			"GetModuleHandleA" 			,(FUNC_) pipe_GetModuleHandleA },
{"",			"GetModuleHandleW"  		,(FUNC_) pipe_GetModuleHandleW },

{"",			"GetDC"  					,(FUNC_) sys_GetDC },
{"",			"CloseHandle"  				,(FUNC_) pipe_CloseHandle },

{"",			"LoadCursorA" 				,(FUNC_) pipe_LoadCursorA },
{"",			"LoadCursorW" 				,(FUNC_) pipe_LoadCursorW },
{"",			"LoadIconA"   				,(FUNC_) pipe_LoadIconA },
{"",			"LoadIconW"   				,(FUNC_) pipe_LoadIconW },


{"",			"ScreenToClient"  			,(FUNC_) pipe_ScreenToClient },
{"",			"WideCharToMultiByte"  		,(FUNC_) pipe_WideCharToMultiByte },
{"",			"MultiByteToWideChar"  		,(FUNC_) pipe_MultiByteToWideChar },

{"",			"GetCursorInfo"  			,(FUNC_) pipe_GetCursorInfo },
{"",			"SetWindowPos"  			,(FUNC_) pipe_SetWindowPos },

{"",			"MonitorFromRect" 			,(FUNC_) pipe_MonitorFromRect },
{"",			"GetMonitorInfoW"  			,(FUNC_) pipe_GetMonitorInfoW },


{"",			"OutputDebugStringA"  		,(FUNC_) pipe_OutputDebugStringA },
{"",			"OutputDebugStringW"  		,(FUNC_) pipe_OutputDebugStringW },

{"",			"GetConsoleWindow"  		,(FUNC_) pipe_GetConsoleWindow },

{"",			"GetStdHandle"  						,(FUNC_) pipe_GetStdHandle },
{"",			"GetConsoleScreenBufferInfo"			,(FUNC_) pipe_GetConsoleScreenBufferInfo },


{"",			"InitializeCriticalSectionEx" 			,(FUNC_) pipe_InitializeCriticalSectionEx },
{"",			"IsProcessorFeaturePresent" 			,(FUNC_) pipe_IsProcessorFeaturePresent },
{"",			"InitializeCriticalSectionAndSpinCount"	,(FUNC_) pipe_InitializeCriticalSectionAndSpinCount },


{"",			"InitializeSListHead"			,(FUNC_) sys_InitializeSListHead },

/*
//!WINBASEAPI LPVOID WINAPI HeapAlloc (HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
//!WINBASEAPI HANDLE WINAPI HeapCreate (DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize);
//!WINBASEAPI HANDLE WINAPI GetProcessHeap (VOID)
//!WINBASEAPI LPVOID WINAPI HeapReAlloc (HANDLE hHeap, DWORD dwFlags, LPVOID lpMem, SIZE_T dwBytes)
//!WINBASEAPI WINBOOL WINAPI HeapFree (HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
//!WINBASEAPI SIZE_T WINAPI HeapSize (HANDLE hHeap, DWORD dwFlags, LPCVOID lpMem)
{"",			"GetProcessHeap"  	,(FUNC_) win_GetProcessHeap },
{"",			"HeapCreate"  		,(FUNC_) win_HeapCreate },
{"",			"HeapAlloc"  		,(FUNC_) win_HeapAlloc },
{"",			"HeapReAlloc"  		,(FUNC_) win_HeapReAlloc },
{"",			"HeapFree"  			,(FUNC_) win_HeapFree },
{"",			"HeapSize"  			,(FUNC_) win_HeapSize },
*/


//{"FreeLibrary"  		,(FUNC_) FreeLibrary },
//{"localeconv"  ,(FUNC_) localeconv },
//{"setlocale"  ,(FUNC_) setlocale },

{"",			"setlocale"  				,(FUNC_) pipe_setlocale },
{"",			"getenv"  					,(FUNC_) pipe_getenv },

{"",			"IsDebuggerPresent"  	 	,(FUNC_) pipe_IsDebuggerPresent },
{"",			"UnhandledExceptionFilter" 	,(FUNC_) pipe_UnhandledExceptionFilter },

{"",			"GetCurrentProcess"  		,(FUNC_) pipe_GetCurrentProcess },
{"",			"TerminateProcess"  		,(FUNC_) pipe_TerminateProcess },
{"",			"GetStartupInoA"  			,(FUNC_) pipe_GetStartupInfoA },
{"",			"GetStartupInoW"  			,(FUNC_) pipe_GetStartupInfoW },


//Windows

{"",			"CreateWindowExW"  				,(FUNC_) pipe_CreateWindowExW },
{"",			"GetClientRect"  				,(FUNC_) sys_GetClientRect },
{"",			"GetWindowRect"  				,(FUNC_) sys_GetWindowRect },

//Win Ini
{"",			"QueryPerformanceFrequency"  	,(FUNC_) sys_QueryPerformanceFrequency },
{"",			"QueryPerformanceCounter"  		,(FUNC_) sys_QueryPerformanceCounter },
{"",			"GetTickCount"  				,(FUNC_) sys_GetTickCount },
{"",			"GetCurrentThread"  			,(FUNC_) th_GetCurrentThread },
{"",			"GetCurrentThreadId"  			,(FUNC_) sys_GetCurrentThreadId },
{"",			"GetThreadPriority"  			,(FUNC_) th_GetThreadPriority },
{"",			"GetCurrentProcessId"  			,(FUNC_) sys_GetCurrentProcessId },
{"",			"GetSystemTimeAsFileTime"  		,(FUNC_) sys_GetSystemTimeAsFileTime },
{"",			"SetUnhandledExceptionFilter"  	,(FUNC_) sys_SetUnhandledExceptionFilter },
{"",			"CreateEventA"  				,(FUNC_) sys_CreateEventA },
{"",			"CreateEventW"  				,(FUNC_) sys_CreateEventW },

/////////
{"",			"TranslateMessage" 				,(FUNC_) sys_TranslateMessage },
{"",			"DispatchMessageW" 				,(FUNC_) sys_DispatchMessageW },
{"",			"DispatchMessageA" 				,(FUNC_) sys_DispatchMessageA },
{"",			"PeekMessageA"					,(FUNC_) sys_PeekMessageA },
{"",			"PeekMessageW"					,(FUNC_) sys_PeekMessageW },



{"",			"InitializeCriticalSection" 	,(FUNC_) th_InitializeCriticalSection },
{"",			"EnterCriticalSection" 			,(FUNC_) th_EnterCriticalSection },
{"",			"TryEnterCriticalSection" 		,(FUNC_) th_TryEnterCriticalSection },
{"",			"LeaveCriticalSection" 			,(FUNC_) th_LeaveCriticalSection },
{"",			"DeleteCriticalSection" 		,(FUNC_) th_DeleteCriticalSection },

{"",			"EnumerateLoadedModules64" 		,(FUNC_) sys_EnumerateLoadedModules64 },


{"",			"GetModuleFileNameA" 			,(FUNC_) sys_GetModuleFileNameA },
{"",			"GetModuleFileNameW" 			,(FUNC_) sys_GetModuleFileNameW },

{"",			"GetEnvironmentStrings" 		,(FUNC_) sys_GetEnvironmentStrings },
{"",			"GetEnvironmentStringsW" 		,(FUNC_) sys_GetEnvironmentStringsW },
{"",			"FreeEnvironmentStringsA" 		,(FUNC_) sys_FreeEnvironmentStringsA },
{"",			"FreeEnvironmentStringsW" 		,(FUNC_) sys_FreeEnvironmentStringsW },


{"",			"SetErrorMode"  			,(FUNC_) sys_SetErrorMode },

{"",			"DefWindowProcW"  			,(FUNC_) sys_DefWindowProcW },
{"",			"Sleep"						,(FUNC_) th_Sleep },

{"",			"GetLastError"  			,(FUNC_) sys_GetLastError },
{"",			"SetLastError"  			,(FUNC_) sys_SetLastError },
{"",			"GetFileType"  				,(FUNC_) sys_GetFileType },
{"",			"GetCurrentDirectoryA"  	,(FUNC_) sys_GetCurrentDirectoryA },
{"",			"GetCurrentDirectoryW"  	,(FUNC_) sys_GetCurrentDirectoryW },
{"",			"VerSetConditionMask"  		,(FUNC_) sys_VerSetConditionMask },
{"",			"VerifyVersionInfoW"  		,(FUNC_) sys_VerifyVersionInfoW },
{"",			"DuplicateHandle"  			,(FUNC_) pipe_DuplicateHandle },
{"",			"GetKeyState"  				,(FUNC_) sys_GetKeyState },
{"",			"TrackMouseEvent"  			,(FUNC_) sys_TrackMouseEvent },



{"",			"_get_osfhandle"  			,(FUNC_) imp_get_osfhandle },
{"",			"_lseek"  					,(FUNC_) imp_lseek },
{"",			"_write"  					,(FUNC_) imp_write},
{"",			"_isatty"  					,(FUNC_) imp_isatty},




{"",			"_vsnprintf"  	,(FUNC_) imp_vsnprintf },
{"",			"_snwprintf"  	,(FUNC_) imp_snwprintf },
{"",			"fwprintf"  	,(FUNC_) imp_fwprintf },



{"",			"abort"  		,(FUNC_) imp_abort }, 

{"",			"_stricmp"  ,(FUNC_) imp_stricmp },





#ifdef USE_Platform_LocalAlloc
{"",			"LocalAlloc"  		,(FUNC_) LocalAlloc },
{"",			"LocalReAlloc"		,(FUNC_) LocalReAlloc },
{"",			"LocalSize"  		,(FUNC_) LocalSize },
{"",			"LocalFree"  		,(FUNC_) LocalFree },
#else
{"",			"LocalAlloc"  		,(FUNC_) imp_LocalAlloc },
{"",			"LocalReAlloc"		,(FUNC_) imp_LocalReAlloc },
{"",			"LocalSize"  		,(FUNC_) imp_LocalSize },
{"",			"LocalFree"  		,(FUNC_) imp_LocalFree },
#endif



#ifdef USE_Platform_ThreadStorage
{"",			"TlsAlloc"  		,(FUNC_) TlsAlloc },
{"",			"TlsGetValue" 		,(FUNC_) TlsGetValue },
{"",			"TlsSetValue"  		,(FUNC_) TlsSetValue },
{"",			"TlsFree"  			,(FUNC_) TlsFree },
#else
{"",			"TlsAlloc"  		,(FUNC_) th_TlsAlloc },
{"",			"TlsGetValue"  		,(FUNC_) th_TlsGetValue },
{"",			"TlsSetValue"  		,(FUNC_) th_TlsSetValue },
{"",			"TlsFree"  			,(FUNC_) th_TlsFree },
#endif



//Todo a implémenter
#ifdef InCpcDosCore
#else
/*
	/// UNICODE (not supported on CpcDos)
	{"",			"wcslen"  ,(FUNC_) wcslen },
	{"",			"_strnicmp"  ,(FUNC_) _strnicmp },
	{"",			"fwprintf"  ,(FUNC_) fwprintf },
	{"",			"_vsnprintf"  ,(FUNC_) _vsnprintf },
	{"",			"fputwc"  ,(FUNC_) fputwc },
	{"",			"putwc"  ,(FUNC_) putwc },
	{"",			"getwc"  ,(FUNC_) getwc },

	{"",			"_stricmp"  ,(FUNC_) _stricmp }, //Use stricmp?
	{"",			"GetFileAttributesW"  ,(FUNC_) GetFileAttributesW },
	*/
	
#endif

//{"setbuf"  ,(FUNC_) My_setbuf }, //!!!! Warning Dangerous function!
//{"LocalFree"  			,(FUNC_) LocalFree },








/*
{"",			"_write"  		,(FUNC_) fwrite }, //??
{"",			"_snwprintf"  	,(FUNC_) snprintf },//??
{"",			"wcscpy"  		,(FUNC_) strcpy },  //??
*/


{"",			"malloc"  	,(FUNC_) imp_malloc },
{"",			"calloc"  	,(FUNC_) imp_calloc },
{"",			"realloc"  ,(FUNC_) imp_realloc },
{"",			"free"  	,(FUNC_) imp_free },




{"",			"_snprintf"  		,(FUNC_) snprintf },
{"",			"_beginthreadex"  ,(FUNC_) th_beginthreadex },
{"",			"_errno"  			,(FUNC_) imp_errno },









/////////////////////////////////////////////
/////////// DIRECT MAPPING //////////////////
/// *safe enough for a direct replacement* ///
/////////////////////////////////////////////
/////////////////////////////////////////////

{"",			"vfprintf"  ,(FUNC_) vfprintf },
{"",			"scanf"  ,(FUNC_) scanf },

/////////// LOG ////////////////////
{"",			"printf"  	,(FUNC_) imp_printf },


{"",			"fflush"  	,(FUNC_) imp_fflush },
{"",			"fwrite"  	,(FUNC_) imp_fwrite },

{"",			"fprintf"  ,(FUNC_) imp_fprintf },
{"",			"sprintf"  ,(FUNC_) imp_sprintf },


{"",			"putc"  	,(FUNC_) imp_putc },
{"",			"fputc"  	,(FUNC_) imp_fputc },
{"",			"puts"  	,(FUNC_) imp_puts },
{"",			"fputs"  	,(FUNC_) imp_fputs },
{"",			"putchar"  ,(FUNC_) imp_putchar },

////////////////////////////////////

/////////// MEM ////////////////////
{"",			"memcmp"  		,(FUNC_) memcmp },
{"",			"memmove"  	,(FUNC_) memmove },
{"",			"memcpy"  		,(FUNC_) memcpy },
{"",			"memset"  		,(FUNC_) memset },
////////////////////////////////////

/////////// STRING ///////////////
//#ifdef ImWin
//{"wcslen"  	,(FUNC_) wcslen }, //Not in DJGPP
//#endif
{"",			"wcslen"  	,(FUNC_) wcslen_ }, //Not in DJGPP



{"",			"isalnum"  ,(FUNC_) isalnum},


{"",			"strcmp"  	,(FUNC_) strcmp },
{"",			"stricmp"	,(FUNC_) stricmp },

{"",			"strcat"  	,(FUNC_) strcat },
{"",			"strchr"  	,(FUNC_) strchr },
{"",			"strcpy"  	,(FUNC_) strcpy },
{"",			"strncmp"  ,(FUNC_) strncmp },
{"",			"strtok"  	,(FUNC_) strtok },
{"",			"strtol"  	,(FUNC_) strtol },
{"",			"time"  	,(FUNC_) time },
{"",			"strrchr"  ,(FUNC_) strrchr },
{"",			"srand"  	,(FUNC_) srand },
{"",			"atoi"  	,(FUNC_) atoi },
{"",			"isdigit"  ,(FUNC_) isdigit },
{"",			"strstr"  	,(FUNC_) strstr },
{"",			"strlen"  	,(FUNC_) strlen },
{"",			"memchr"  	,(FUNC_) memchr },
{"",			"tolower"  ,(FUNC_) tolower },
////////////////////////////////

/////////// CHAR ////////////////
{"",			"getc"  	,(FUNC_) getc },
{"",			"fgetc"  	,(FUNC_) fgetc },
{"",			"getchar"  ,(FUNC_) getchar },
{"",			"getch"  	,(FUNC_) getch },
/////////////////////////////////

/////////// MATH ////////////////
{"",			"floor"  	,(FUNC_) floor },
{"",			"ceil"  	,(FUNC_) ceil },
{"",			"ceil"  	,(FUNC_) ceil },
{"",			"fabs"  	,(FUNC_) fabs  }, 
{"",			"qsort"  	,(FUNC_) qsort },
{"",			"tan"  	,(FUNC_) tan },
{"",			"rand"  	,(FUNC_) rand },
{"",			"abs"  	,(FUNC_) imp_abs }, 
/////////////////////////////////

/////////// FILE ////////////////
{"",			"fopen"  	,(FUNC_) fopen },
{"",			"fclose"  	,(FUNC_) fclose },
{"",			"fseek"  	,(FUNC_) fseek },
{"",			"ftell"  	,(FUNC_) ftell },
{"",			"rewind"  	,(FUNC_) rewind },
/////////////////////////////////

};

#endif //EXELOADER_FuncTable_H