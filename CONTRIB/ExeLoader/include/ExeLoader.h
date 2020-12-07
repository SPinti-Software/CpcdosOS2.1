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
 *
 */
#ifndef EXELOADER_Exeloader_H
#define EXELOADER_Exeloader_H

#include "_Config.h"

#include <cstdlib> 
#include <cstdio> 
#include <cstring>
#include <cstdarg>
#include <csignal>
#include <memory>

#include <wchar.h>
#include "ConvertUTF.h"

extern void _EXE_LOADER_DEBUG(int alert, const char* format_FR, const char* format_EN, ...);
//#define _EXE_LOADER_DEBUG_S(_msg, ...)  _EXE_LOADER_DEBUG(0, _msg, _msg);
#define _EXE_LOADER_DEBUG_(_msg, ...)  _EXE_LOADER_DEBUG(0, _msg, _msg,  __VA_ARGS__);


#include "FuncPrototype/win.h"
#include "MemoryModule.h"


#ifdef CpcDos
	#include "FuncPrototype/CPC_WPR.h"
	//#include "Lib_GZ/SysUtils/CpcDosHeader.h"
#endif


#ifndef STDCALL
	#define STDCALL __stdcall
#endif

#ifndef FuncTableStructure
	#define FuncTableStructure
	typedef void* (*FUNC_)();
	typedef struct {
		const char* sFuncName;
		FUNC_* dFunc;
	} FuncTable;
	#undef PFUNC_
	#define PFUNC_ FUNC_*
#endif

#define Func(_func) (void*)(&_func)
#define DEREF_32(name) *(DWORD *)(name)
#define BLOCKSIZE 100


extern HMEMORYMODULE AddLibrary(const char* _sPath); //ExeLoader.cpp
extern DWORD My_GetLastError();

extern  FARPROC MyMemoryDefaultGetProcAddress(HCUSTOMMODULE module, LPCSTR name, void *userdata);
extern MemoryModule* memory_module;
extern bool is_in_aLibList(HMEMORYMODULE _handle);

extern "C" bool fStartExeLoader(const char* Source_File);

typedef void* (*FUNC_)();
typedef struct {const char* sFuncName;FUNC_ dFunc;} sFunc;

/// Main Func Ptr ///s
typedef int (*addNumberProc)(int, int);
typedef void (*testFunc)();
typedef int (*mainFunc)();
typedef int (*mainFunc2)(int argc, char* argv[]);
typedef int (WINAPI *winMain)(HINSTANCE hInstance, HINSTANCE hPrevInstance, PWSTR pCmdLine, int nCmdShow);
//int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PWSTR pCmdLine, int nCmdShow);


typedef void (*FUNC_Version)(int _nMajor, int _nMinor);

/// Generic Func Ptr ///
typedef bool (*funcPtr_bool)(void*);
typedef int  (*funcPtr_int)(void*);
typedef int  (*funcPtrPtr_int)(void*,void*);
typedef bool (*funcPtrIntPtr_bool)(void*,int,void*);
typedef int  (*funcPtrIntIntPtr_int)(void*,int,int,void*);

/// Log ///
#define showfunc_unimplt(name, ...) _EXE_LOADER_DEBUG(0, "\n-->Appel de Fonction non implémenté: " name, "\n-->Call not implemented func: " name , __VA_ARGS__);
#define showfunc(name, ...) _EXE_LOADER_DEBUG(0, "\n-->Appel de: " name, "\n-->Call: " name , __VA_ARGS__);
#define showfunc_ret(name, ...) _EXE_LOADER_DEBUG(0, "\n-->Retour: " name, "\n-->Return: " name , __VA_ARGS__);
#define showinf(name, ...) _EXE_LOADER_DEBUG(0, "\n--: " name, "\n---: " name , __VA_ARGS__);



extern int exe_arg_nb;
extern char** exe_arg;
extern HINSTANCE hExeloader;
//extern HWND hwnd_View;

typedef struct {
	HBITMAP hbmp;
	HWND hwnd_View;
	void* pixels;
	int idx;
	int width;
	int height;
	int id_context; // cpcdos
} ContextInf;
extern int aContext_count;
extern ContextInf aContext[50];

HWND pixView_createWindow( HINSTANCE hInstance, ContextInf* _context);
void pixView_update(ContextInf* _context);
void pixView_MakeSurface(ContextInf* _context);

#ifdef Show_AllFuncTable
#define showfunc_opt showfunc
#else
#define showfunc_opt
#endif

#ifndef Show_FuncTable
#undef showfunc
#define showfunc
#undef showfunc_ret
#define showfunc_ret
#undef showfunc_unimplt
#define showfunc_unimplt
#undef showfunc_opt
#define showfunc_opt
#endif


inline static size_t wcslen_(const wchar_t *s){
	size_t ln = 0;
	while (s[ln] != L'\0'){
		if (s[++ln] == L'\0')return ln;
		if (s[++ln] == L'\0')return ln;
		if (s[++ln] == L'\0')return ln;
		++ln;
	}return ln;
}

/// STRING ///
class WStr {
  public:
	wchar_t* src;
	size_t 	 len;
	UTF8*    utf8;
	
	WStr(const wchar_t* _src):utf8(0) {
		src = (wchar_t*)_src;
		len =  wcslen_(src);
	}
	
	inline char* ToCStr(){
		const UTF16* input = (const UTF16*)src;
		UTF8* utf8 = (UTF8*)malloc(len+1);//+1 for null terminating char
		
		UTF8* outStart = (UTF8*)utf8;
		ConversionResult res =	ConvertUTF16toUTF8(&input, &input[len], &utf8, &utf8[len], ConversionFlags::lenientConversion);
		//Possible value of res: conversionOK || sourceExhausted || targetExhausted
		*utf8 = 0; //Terminate string
		return (char*)outStart;
	}
	
	~WStr(){
		free(utf8);
	}
};
////////////////

#ifndef No_vswprintf
#define vswprintf_ARG(format, dest, max, ret)va_list _arg_;va_start (_arg_, format);int ret = vswprintf((wchar_t*)dest, max, format, _arg_);va_end (_arg_);
#else
#define msg_no_vswprintf L"\nWarning[No vswprintf]"
#define vswprintf_ARG(format, dest, max, ret) int ret = sizeof(msg_no_vswprintf);if(ret<max){memcpy(dest, msg_no_vswprintf,ret);};
#endif

#ifndef No_vsnprintf
#define vsnprintf_ARG(format, dest, max, ret)va_list _arg_;va_start (_arg_, format);int ret = vsnprintf((char*)dest, max, format, _arg_);va_end (_arg_);
#else
#define msg_no_vsnprintf L"\nWarning[No No_vsnprintf]"
#define vsnprintf_ARG(format, dest, max, ret) int ret = sizeof(msg_no_vsnprintf);if(ret<max){memcpy(dest, msg_no_vsnprintf,ret);};
#endif


#endif //EXELOADER_Exeloader_H