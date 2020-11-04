// Mickael BANVILLE & Sebastien FAVIER
//  ExeLoader pour Cpcdos
// Update 27/10/2016

#include "win.h"

//#define InCpcDosCore
//#undef ImWin

#ifndef ImWin
#define InCpcDosCore
#include "CPC_WPR.h"

#endif // ImWin



//#define InCpcDosCore



//#define WinLastError

#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include <errno.h>
#include <conio.h>

//#include <internal.h>
#include <cassert>
#include <cstdarg>
#include <setjmp.h>
#include <stdlib.h>  
 

#ifdef InCpcDosCore
	#define Use_Custom_ThreadStorage
#endif


#include "FuncTableRemap_Common.h"
#include "FuncTableRemap_Windows.h"
	
#ifndef UseWinFunc
	//onCpcDos
	#include "FuncTableRemap_CpcDos.h"
#endif


#include "..\..\..\OS2.1\CPinti\include\leakchk.h"


//Declaration                        ----------------------->    decorated name
//void __cdecl foo(void);            ----------------------->    _foo
//void __cdecl foo(int a);           ----------------------->    _foo
//void __cdecl foo(int a, int b);    ----------------------->    _foo
//void __stdcall foo(void);          ----------------------->    _foo@0
//void __stdcall foo(int a);         ----------------------->    _foo@4
//void __stdcall foo(int a, int b);  ----------------------->    _foo@8
//void __fastcall foo(void);         ----------------------->    @foo@0
//void __fastcall foo(int a);        ----------------------->    @foo@4
//void __fastcall foo(int a, int b); ----------------------->    @foo@8



typedef void* (*FUNC_)();
typedef struct {
    const char* sFuncName;
    FUNC_ dFunc;
} sFunc;


sFunc aTableFunc[] = {
{"fNotImplemented" ,(FUNC_) fNotImplemented }, //Must be first

{"GetProcAddress" ,(FUNC_) My_GetProcAddress }, //Special

/////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////// FUNC TABLE /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////

#ifdef UseWinFunc

	{"ScreenToClient"  ,(FUNC_) ScreenToClient },
	{"GetCursorInfo"  ,(FUNC_) GetCursorInfo },
	{"SetWindowPos"  ,(FUNC_) SetWindowPos },
	{"MonitorFromRect"  ,(FUNC_) MonitorFromRect },
	{"GetMonitorInfoW"  ,(FUNC_) GetMonitorInfoW },
	{"LoadLibraryExW"  ,(FUNC_) LoadLibraryExW },
	{"InitializeCriticalSectionEx" ,(FUNC_) My_InitializeCriticalSectionEx },
	{"IsProcessorFeaturePresent" ,(FUNC_) My_IsProcessorFeaturePresent },

    {"LoadLibraryExW"  ,(FUNC_) LoadLibraryExW },
  //  {"GetProcAddress"  ,(FUNC_) GetProcAddress },
    {"IsProcessorFeaturePresent"  ,(FUNC_) IsProcessorFeaturePresent },
    {"InitializeCriticalSectionAndSpinCount"  ,(FUNC_) InitializeCriticalSectionAndSpinCount },
    {"HeapAlloc"  ,(FUNC_) HeapAlloc },
    {"GetProcessHeap"  ,(FUNC_) GetProcessHeap },
    {"IsDebuggerPresent"  ,(FUNC_) IsDebuggerPresent },
    {"IsDebuggerPresent"  ,(FUNC_) IsDebuggerPresent },
    {"UnhandledExceptionFilter"  ,(FUNC_) UnhandledExceptionFilter },
    {"GetCurrentProcess"  ,(FUNC_) GetCurrentProcess },
    {"TerminateProcess"  ,(FUNC_) TerminateProcess },
    {"GetStartupInfoW"  ,(FUNC_) GetStartupInfoW },
    {"GetFileType"  ,(FUNC_) GetFileType },
    {"GetStdHandle"  ,(FUNC_) GetStdHandle },

    {"GetACP"  ,(FUNC_) GetACP },
    {"MultiByteToWideChar"  ,(FUNC_) MultiByteToWideChar },
    {"WideCharToMultiByte"  ,(FUNC_) WideCharToMultiByte },
    {"GetStringTypeW"  ,(FUNC_) GetStringTypeW },
    {"GetCommandLineA"  ,(FUNC_) GetCommandLineA },
    {"GetCommandLineW"  ,(FUNC_) GetCommandLineW },
    {"GetCPInfo"  ,(FUNC_) GetCPInfo },
    {"IsValidCodePage"  ,(FUNC_) IsValidCodePage },
    {"InitializeSListHead"  ,(FUNC_) InitializeSListHead },
    {"GetEnvironmentStringsW"  ,(FUNC_) GetEnvironmentStringsW },
    {"FreeEnvironmentStringsW"  ,(FUNC_) FreeEnvironmentStringsW },
    {"HeapFree"  ,(FUNC_) HeapFree },
    {"GetModuleFileNameA"  ,(FUNC_) GetModuleFileNameA },
    {"WriteFile"  ,(FUNC_) WriteFile },

	{"GetCurrentProcessId"  ,(FUNC_)GetCurrentProcessId },
	{"GetCurrentThreadId"  ,(FUNC_)GetCurrentThreadId },
	{"GetTickCount"  ,(FUNC_) GetTickCount },
	{"QueryPerformanceCounter"  ,(FUNC_) QueryPerformanceCounter },
	{"GetSystemTimeAsFileTime"  ,(FUNC_) GetSystemTimeAsFileTime },
	{"SetUnhandledExceptionFilter"  ,(FUNC_) SetUnhandledExceptionFilter },


	{"CreateThread" ,(FUNC_) CreateThread },
	{"EnterCriticalSection" ,(FUNC_) EnterCriticalSection },//BUG
    {"LeaveCriticalSection" ,(FUNC_) LeaveCriticalSection }, //BUG
    {"DeleteCriticalSection" ,(FUNC_) DeleteCriticalSection },
    {"ExitProcess" ,(FUNC_) ExitProcess },
    {"LoadLibraryExW" ,(FUNC_) LoadLibraryExW },
    {"GetSystemTimeAsFileTime" ,(FUNC_) GetSystemTimeAsFileTime },
    {"IsProcessorFeaturePresent" ,(FUNC_) IsProcessorFeaturePresent },
    {"GetModuleHandleA" ,(FUNC_) GetModuleHandleA },
    {"InitializeCriticalSection" ,(FUNC_) InitializeCriticalSection },
  //  {"InitializeCriticalSectionEx" ,(FUNC_) InitializeCriticalSectionEx },


    {"GetCurrentProcessId"  ,(FUNC_) GetCurrentProcessId },
    {"GetModuleHandleW"  ,(FUNC_) GetModuleHandleW },
    {"CreateEventW"  ,(FUNC_) CreateEventW },
    {"IsDBCSLeadByte"  ,(FUNC_) IsDBCSLeadByte },
    {"GetConsoleMode"  ,(FUNC_) GetConsoleMode },
    {"SetConsoleCtrlHandler"  ,(FUNC_) SetConsoleCtrlHandler },
    {"LoadStringW"  ,(FUNC_) LoadStringW },
    {"SetErrorMode"  ,(FUNC_) SetErrorMode },
    {"RegOpenKeyExW"  ,(FUNC_) RegOpenKeyExW },
    {"RegQueryValueExW"  ,(FUNC_) RegQueryValueExW },
    {"RegCloseKey"  ,(FUNC_) RegCloseKey },
    {"GetVersionExW"  ,(FUNC_) GetVersionExW },
    {"GetVersionExW"  ,(FUNC_) GetVersionExW },
    {"LoadLibraryW"  ,(FUNC_) LoadLibraryW },
    {"CreateFileW"  ,(FUNC_) CreateFileW },
    {"GetCurrentDirectoryW"  ,(FUNC_) GetCurrentDirectoryW },
    {"CharUpperW"  ,(FUNC_) CharUpperW },
	{"printf"  ,(FUNC_) printf },
	{"Sleep", 	(FUNC_) Sleep },
	{"GetStdHandle"  ,(FUNC_) GetStdHandle },
	{"GetConsoleWindow"  ,(FUNC_) GetConsoleWindow },
	{"SetConsoleWindowInfo"  ,(FUNC_) SetConsoleWindowInfo },
	{"setlocale"  ,(FUNC_) setlocale },
	{"SetConsoleOutputCP"  ,(FUNC_) SetConsoleOutputCP },
	{"SetConsoleTextAttribute"  ,(FUNC_) SetConsoleTextAttribute },
	{"SetConsoleScreenBufferSize"  ,(FUNC_) SetConsoleScreenBufferSize },
	{"MoveWindow"  ,(FUNC_) MoveWindow },

	{"GetModuleFileNameW"  ,(FUNC_) GetModuleFileNameW },
	{"GetFileAttributesExW"  ,(FUNC_) GetFileAttributesExW },


	{"_wfopen"  ,(FUNC_) _wfopen },

	{"wprintf"  ,(FUNC_) wprintf },
	{"wsprintfW"  ,(FUNC_) wsprintfW }, //Not work??

	{"SetLastError"  ,(FUNC_) SetLastError }, //Required !?
	{"fread"  ,(FUNC_) fread },
	{"MoveWindow"  ,(FUNC_) MoveWindow },
	{"GetModuleFileNameW"  ,(FUNC_) GetModuleFileNameW }, //useless?

	//Windows
	{"SetWindowLongW"  ,(FUNC_) SetWindowLongW },
	{"RegisterClassExW"  ,(FUNC_) RegisterClassExW },
	{"CreateWindowExW"  ,(FUNC_) CreateWindowExW },
	{"ShowWindow"  ,(FUNC_) ShowWindow },
	{"CreateCompatibleDC"  ,(FUNC_) CreateCompatibleDC },
	{"CreateDIBSection"  ,(FUNC_) CreateDIBSection },
	{"SelectObject"  ,(FUNC_) SelectObject },
	{"GetDC"  ,(FUNC_) GetDC },



	//Timer
	{"QueryPerformanceCounter"  ,(FUNC_) QueryPerformanceCounter },
	{"QueryPerformanceFrequency"  ,(FUNC_) QueryPerformanceFrequency },

	{"Sleep"  ,(FUNC_) Sleep },
	{"BitBlt"  ,(FUNC_) BitBlt },

	{"GetClientRect"  ,(FUNC_) GetClientRect },
	{"GetWindowRect"  ,(FUNC_) GetWindowRect },

	{"TranslateMessage"  ,(FUNC_) TranslateMessage },
	{"DispatchMessageW"  ,(FUNC_) DispatchMessageW },
	{"PeekMessageW"  ,(FUNC_) PeekMessageW },
	{"GetWindowLongW"  ,(FUNC_) GetWindowLongW },
	{"DefWindowProcW"  ,(FUNC_) DefWindowProcW },

	{"LoadCursorW"  ,(FUNC_) LoadCursorW },
	{"LoadIconW"  ,(FUNC_) LoadIconW },
	{"MessageBoxW"  ,(FUNC_) MessageBoxW },

	{"fgets"  ,(FUNC_) fgets },

#else  
	////////////////////
	////// CpcDos //////
	////////////////////
  
	//{"abs"  ,(FUNC_) abs_CPC },  ///BUG!!
	
	{"fgets"  ,(FUNC_) cpc_fgets },
	{"_fgets"  ,(FUNC_) cpc_fgets },

	{"GetStdHandle"  ,(FUNC_) My_GetStdHandle },
	{"GetConsoleWindow"  ,(FUNC_) My_GetConsoleWindow },
	{"SetConsoleWindowInfo"  ,(FUNC_) My_SetConsoleWindowInfo },
	{"setlocale"  ,(FUNC_) My_setlocale },
	{"SetConsoleOutputCP"  ,(FUNC_) My_SetConsoleOutputCP },
	{"SetConsoleTextAttribute"  ,(FUNC_) My_SetConsoleTextAttribute },
	{"SetConsoleScreenBufferSize"  ,(FUNC_) My_SetConsoleScreenBufferSize },
	{"MoveWindow"  ,(FUNC_) My_MoveWindow },

	{"GetModuleFileNameW"  ,(FUNC_) My_GetModuleFileNameW },
	{"GetFileAttributesExW"  ,(FUNC_) My_GetFileAttributesExW },



	{"_wfopen"  ,(FUNC_) My_wfopen },

	{"wprintf"  ,(FUNC_) My_wprintf },
	{"wsprintfW"  ,(FUNC_) My_wprintf }, //Not work??


	{"SetLastError"  ,(FUNC_) My_SetLastError }, //Required !?
	{"fread"  ,(FUNC_) fread },

	{"MoveWindow"  ,(FUNC_) Nothing },
	{"GetModuleFileNameW"  ,(FUNC_) Nothing }, //useless?

	//Windows
	{"SetWindowLongW"  ,(FUNC_) My_SetWindowLongW },
	{"RegisterClassExW"  ,(FUNC_) My_RegisterClassExW },
	{"CreateWindowExW"  ,(FUNC_) My_CreateWindowExW },
	{"ShowWindow"  ,(FUNC_) My_ShowWindow },
	{"CreateCompatibleDC"  ,(FUNC_) My_CreateCompatibleDC },
	{"CreateDIBSection"  ,(FUNC_) My_CreateDIBSection },
	{"SelectObject"  ,(FUNC_) My_SelectObject },
	{"GetDC"  ,(FUNC_) My_GetDC },

	{"GetCurrentProcessId "  ,(FUNC_) My_GetCurrentProcessId },
	{"GetTickCount "  ,(FUNC_) clock() },

	//Timer
	{"QueryPerformanceCounter"  ,(FUNC_) My_QueryPerformanceCounter },
	{"QueryPerformanceFrequency"  ,(FUNC_) My_QueryPerformanceFrequency },

	//{"Sleep"  ,(FUNC_) My_Sleep },


	{"BitBlt"  ,(FUNC_) My_BitBlt },

	{"GetClientRect"  ,(FUNC_) My_GetClientRect },
	{"GetWindowRect"  ,(FUNC_) My_GetWindowRect },

	{"TranslateMessage"  ,(FUNC_) My_TranslateMessage },
	{"DispatchMessageW"  ,(FUNC_) My_DispatchMessageW },
	{"PeekMessageW"  ,(FUNC_) My_PeekMessageW },
	{"GetWindowLongW"  ,(FUNC_) My_GetWindowLongW },
	{"DefWindowProcW"  ,(FUNC_) My_DefWindowProcW },

	{"LoadCursorW"  ,(FUNC_) My_LoadCursorW },
	{"LoadIconW"  ,(FUNC_) My_LoadIconW },
	{"MessageBoxW"  ,(FUNC_) My_MessageBoxW },
	
	
	{"kbhit"  ,(FUNC_) kbhit_CPC },
	{"_kbhit"  ,(FUNC_) kbhit_CPC },
	{"usleep", 	(FUNC_) usleep_CPC },
	{"msleep", 	(FUNC_) sleep_CPC }, // idem que Sleep
	{"Sleep", 	(FUNC_) sleep_CPC },
	{"printf"  ,(FUNC_) printf_CPC },
	{"setjmp"  ,(FUNC_) setjmp },
	{"_setjmp"  ,(FUNC_) setjmp },
	{"sigsetjmp"  ,(FUNC_) sigsetjmp },
	{"_sigsetjmp"  ,(FUNC_) sigsetjmp },

	{"longjmp"  ,(FUNC_) longjmp },
	{"_longjmp"  ,(FUNC_) longjmp },
	{"siglongjmp"  ,(FUNC_) siglongjmp },
	{"_siglongjmp"  ,(FUNC_) siglongjmp },  
  
#endif /////////////////////////////////////


{"GetLastError"  ,(FUNC_) My_GetLastError },

{"CreateSemaphoreW"  ,(FUNC_) My_CreateSemaphore },
{"___lc_codepage_func"  ,(FUNC_) My__lc_codepage_func },
{"getenv"  ,(FUNC_) My_getenv },
{"__getmainargs" ,(FUNC_) My_getmainargs },
{"__set_app_type" ,(FUNC_) My_set_app_type },
{"_setmode" ,(FUNC_) My_setmode },
{"__p__environ" ,(FUNC_) My_penviron },
{"__p__fmode" ,(FUNC_) My_pfmode },
{"signal" ,(FUNC_) My__signal },
{"atexit" ,(FUNC_) My_atexit },
{"_cexit" ,(FUNC_) My_cexit },
{"_onexit" ,(FUNC_) My_Onexit },
{"exit" ,(FUNC_) My_exit },
{"GetStartupInfo" ,(FUNC_) My_GetStartupInfo },

{"GetCommandLineA"  ,(FUNC_) My_GetCommandLineA },
{"GetStartupInfoA"  ,(FUNC_) My_GetStartupInfo },
{"GetCurrentThreadId"  ,(FUNC_) My_GetCurrentThreadId },

{"fputc"  ,(FUNC_) My_fputc },
{"WriteConsoleA"  ,(FUNC_) My_WriteConsoleA },

{"realloc"  ,(FUNC_) realloc },
{"memcpy"  ,(FUNC_) memcpy },
{"memset"  ,(FUNC_) memset },
{"free"  ,(FUNC_) free },
{"malloc"  ,(FUNC_) malloc },
{"calloc"  ,(FUNC_) calloc },
{"abort"  ,(FUNC_) abort },
{"scanf"  ,(FUNC_) scanf },
{"fwrite"  ,(FUNC_) fwrite },


{"vfprintf"  ,(FUNC_) vfprintf },





#ifdef Use_Custom_ThreadStorage
	{"TlsAlloc"  ,	 (FUNC_) My_TlsAlloc },
	{"TlsGetValue"  ,(FUNC_) My_TlsGetValue },
	{"TlsSetValue"  ,(FUNC_) My_TlsSetValue },
	{"TlsFree"  	,(FUNC_) My_TlsFree },
#else
	{"TlsAlloc"  ,	 (FUNC_) TlsAlloc },
	{"TlsGetValue"  ,(FUNC_) TlsGetValue },
	{"TlsSetValue"  ,(FUNC_) TlsSetValue },
#endif




//Todo a implémenter
#ifdef InCpcDosCore
	
	{"wcslen"  ,(FUNC_) strlen },
	{"_strnicmp"  ,(FUNC_) strnicmp },
	{"fwprintf"  ,(FUNC_) fprintf },
	{"_vsnprintf"  ,(FUNC_) vsnprintf },
	{"fputwc"  ,(FUNC_)	fputc },
	{"putwc"  ,(FUNC_) putc },
	{"getwc"  ,(FUNC_) getc },

	{"GetFileAttributesW"  ,(FUNC_) fNotImplemented_1 },
	{"_stricmp"  ,(FUNC_) stricmp },
	
	{"_snwprintf"  ,(FUNC_) My_snprintf },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)
	{"snwprintf"  ,(FUNC_) My_snprintf },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)
	
	{"_vsnprintf"  ,(FUNC_) My_vsnprintf },
	{"vsnprintf"  ,(FUNC_) My_vsnprintf },
	
	{"_snprintf"  ,(FUNC_) My_snprintf },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)
	{"snprintf"  ,(FUNC_) My_snprintf },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)
	

#else
	{"wcslen"  ,(FUNC_) wcslen },
	{"_strnicmp"  ,(FUNC_) _strnicmp },
	{"fwprintf"  ,(FUNC_) fwprintf },
	{"_vsnprintf"  ,(FUNC_) _vsnprintf },
	{"fputwc"  ,(FUNC_) fputwc },
	{"putwc"  ,(FUNC_) putwc },
	{"getwc"  ,(FUNC_) getwc },


	{"_stricmp"  ,(FUNC_) _stricmp }, //Use stricmp?
	{"GetFileAttributesW"  ,(FUNC_) GetFileAttributesW },
#endif





{"strcmp"  ,(FUNC_) strcmp },
{"stricmp"  ,(FUNC_) stricmp },

{"memcmp"  ,(FUNC_) memcmp },
{"memmove"  ,(FUNC_) memmove },
{"fputs"  ,(FUNC_) fputs },

{"_write"  ,(FUNC_) fwrite },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)
{"_snwprintf"  ,(FUNC_) snprintf },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)

{"rand"  ,(FUNC_) rand },

{"fopen"  ,(FUNC_) fopen },
{"fclose"  ,(FUNC_) fclose },

//{"setbuf"  ,(FUNC_) setbuf }, //!!!! Not WORK -> CRASH! (Only on windows?)
//{"setbuf"  ,(FUNC_) My_setbuf }, //!!!! Warning Dangerous function!


{"fseek"  ,(FUNC_) fseek },
{"ftell"  ,(FUNC_) ftell },
{"rewind"  ,(FUNC_) rewind },

{"fflush"  ,(FUNC_) fflush },
{"fprintf"  ,(FUNC_) fprintf },
{"sprintf"  ,(FUNC_) sprintf },
{"strcat"  ,(FUNC_) strcat },
{"strchr"  ,(FUNC_) strchr },
{"strcpy"  ,(FUNC_) strcpy },
{"strncmp"  ,(FUNC_) strncmp },
{"strtok"  ,(FUNC_) strtok },
{"strtol"  ,(FUNC_) strtol },
{"time"  ,(FUNC_) time },
{"wcscpy"  ,(FUNC_) strcpy },  // Décommenté le 18 Mars 2020 (Gze_text.exe test)
{"strrchr"  ,(FUNC_) strrchr },
{"srand"  ,(FUNC_) srand },
{"strrchr"  ,(FUNC_) strrchr },



{"getc"  ,(FUNC_) getc },
{"fgetc"  ,(FUNC_) fgetc },
{"putc"  ,(FUNC_) putc },
{"fputc"  ,(FUNC_) fputc },
{"putchar"  ,(FUNC_) putchar },
{"getchar"  ,(FUNC_) getchar },
{"getch"  ,(FUNC_) getch },
{"strlen"  ,(FUNC_) strlen },
{"memchr"  ,(FUNC_) memchr },
{"tolower"  ,(FUNC_) tolower },

//{"_getch"  ,(FUNC_) getch },


//{"localeconv"  ,(FUNC_) My_localeconv },
{"localeconv"  ,(FUNC_) localeconv },


//Math
{"floor"  ,(FUNC_) floor },
{"ceil"  ,(FUNC_) ceil },
{"abs"  ,(FUNC_) My_abs  }, 
{"fabs"  ,(FUNC_) fabs  }, 
{"qsort"  ,(FUNC_) qsort },


///// Thread local Important? ///////
//{"TlsAlloc"  ,(FUNC_) My_TlsAlloc },
//{"TlsGetValue"  ,(FUNC_) My_TlsGetValue },
//{"TlsSetValue"  ,(FUNC_) My_TlsSetValue },




{"isdigit"  ,(FUNC_) isdigit },
{"strstr"  ,(FUNC_) strstr },
{"atoi"  ,(FUNC_) atoi },

{"_lock"  ,(FUNC_) My_lock },

////////// CPC DOS ///////////////////
#include "CpcDosFuncTable.h"
//////////////////////////////////////


{"putchar"  ,(FUNC_) putchar },
{"puts"  ,(FUNC_) puts } //Must be End
};










