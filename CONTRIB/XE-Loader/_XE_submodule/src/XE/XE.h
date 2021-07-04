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
*/
#ifndef HDef_XE
#define HDef_XE

#include "XE/_Config.h"

#include "Xternal/Xternal.h"


//!Sys/File.inc//
typedef struct File{
	char*  data;
	char*  path;
	size_t size;
}File;
File Xe_LoadFile(const char* _sFullPath);
//!-----------!//

typedef struct{
  enum key_t { Host, Cookie, Agent } key;
  char value[128];
} header_t;


//!Module//
#define _(_) XE_Type_##_
#define XE_Type_(_)(XE_Type_){XE_Type_##_}
_enum_{
	_(UNKNOW),
	_(EXE),
	_(ELF),
	_(DLL),
	_(SO),
}enum_
#undef _
#define _(_)XE_Arch_##_
#define XE_Arch_(_)(XE_Arch_){XE_Arch_##_}
_enum_{
	_(UNKNOW),
	_(X32),
	_(X64),
}enum_
#undef _

typedef struct XE_Module{
	File file;
	char* name;
	void* handle;
	void* section_text;
	bool have_reloc;
	int exe_ret;
	XE_Type_ type;
	XE_Arch_ arch;
}XE_Module;

ARRAY(XE_aModule, XE_Module, 512);
//ARRAY(XE_aLibList, MEMORYMODULE*, 50);


// -- Instance -- //
extern XE_aModule aModule;
#define aModule(fn, ...) XE_aModule_##fn(&aModule, ##__VA_ARGS__)
//!-----------!//

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

#include "Module/PE/win.h"

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

typedef struct {const char* sLib; const char* sFuncName;FUNC_ dFunc;} sFunc;

typedef void (*FUNC_Version)(int _nMajor, int _nMinor);

/// Generic Func Ptr ///
typedef bool (*funcPtr_bool)(void*);
typedef int  (*funcPtr_int)(void*);
typedef int  (*funcPtrPtr_int)(void*,void*);
typedef bool (*funcPtrIntPtr_bool)(void*,int,void*);
typedef int  (*funcPtrIntIntPtr_int)(void*,int,int,void*);

/// Log ///
#define showfunc_unimplt(name, ...) warn_print("-->Call not implemented func: " name , __VA_ARGS__);
#define showfunc(name, ...) 		_printl( "-->Call: " name , __VA_ARGS__);
#define showfunc_ret(name, ...) 	_printl("-->Return: " name , __VA_ARGS__);
#define showinf(name, ...) 			info_print("---: " name , __VA_ARGS__);

extern int xe_arg_nb;
extern char* xe_arg;
extern HINSTANCE xe_hInstance;

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


struct MEMORYMODULE;
struct XE_Module* Xe_AddLibrary(const char* _sPath);

void 
	MemVirtualQueryInfo(LPCVOID* _adr, int _size);
export XE_Module* 
	Xe_Load(const char* _sPath);
int 
	Xe_ExecuteMain(XE_Module* _module);
//FILE
void 
	Xe_FreeFile(File* file);
File 
	Xe_LoadFile(const char* _sFullPath);


//TODO UTF16 length 1101 1000 0000 0001 1101 1100 0011 0111
//U' = yyyyyyyyyyxxxxxxxxxx  // U - 0x10000
//W1 = 110110yyyyyyyyyy      // 0xD800 + yyyyyyyyyy
//W2 = 110111xxxxxxxxxx      // 0xDC00 + xxxxxxxxxx
//U+D800 to U+DFFF -> no code point
inl size_t 
	utf16_len(const wchar_t* s){
	size_t ln = 0;
	size_t sur = 0;
	if(!s)return 0;
	while (s[ln] != L'\0'){
		if(s[ln] & 0xD000 == 0xD000){
			sur++;
		}
		++ln;
	}return ln - sur/2;
}
inl size_t 
	wcslen_(const wchar_t* s){
	size_t ln = 0;
	if(!s)return 0;
	while (s[ln] != L'\0'){
		++ln;
	}return ln;
}

#include "XE/Utils/ConvertUTF.h"
inl char* W4CStr_(char* _dest, const UTF32_t*  _src, size_t len){
	const UTF32_t* input = (const UTF32_t*)_src;
	
	UTF8_t* utf8 = _dest;//+1 for null terminating char
	
	UTF8_t* outStart = (UTF8_t*)utf8;
	ConversionResult res =	ConvertUTF32toUTF8(&input, &input[len/4], &utf8, &utf8[len], lenientConversion);
	//Possible value of res: conversionOK || sourceExhausted || targetExhausted
	
	#ifdef D_Debug
	if(res == sourceExhausted) {err_print("sourceExhausted");}
	if(res == targetExhausted) {err_print("targetExhausted");}
	#endif
	
	*utf8 = 0; //Terminate string
	
	return (char*)outStart;
}
inl char* W2CStr_(char* _dest, const wchar_t*  _src, size_t len){
	const UTF16_t* input = (const UTF16_t*)_src;
	
	UTF8_t* utf8 = _dest;//+1 for null terminating char
	
	UTF8_t* outStart = (UTF8_t*)utf8;
	ConversionResult res =	ConvertUTF16toUTF8(&input, &input[len/2], &utf8, &utf8[len], lenientConversion);
	//Possible value of res: conversionOK || sourceExhausted || targetExhausted
	
	#ifdef D_Debug
	if(res == sourceExhausted) {err_print("sourceExhausted");}
	if(res == targetExhausted) {err_print("targetExhausted");}
	#endif
	
	*utf8 = 0; //Terminate string
	
	return (char*)outStart;
}
inl char*  W2CStr(view_t* _dest, view_t*  _src){
	return W2CStr_(_dest->data, (wchar_t*)_src->data, _src->size);
}
inl char* CStrW2_(wchar_t* _dest, const char*  _src, size_t len, size_t destlen){
	const UTF8_t* input = (const UTF8_t*)_src;
	
	UTF16_t* utf16 = _dest;//+1 for null terminating char
	
	UTF16_t* outStart = (UTF16_t*)utf16;
	ConversionResult res =	ConvertUTF8toUTF16(&input, &input[len], &utf16, &utf16[destlen], lenientConversion);
	//Possible value of res: conversionOK || sourceExhausted || targetExhausted
	
	#ifdef D_Debug
	if(res == sourceExhausted) {err_print("sourceExhausted");}
	if(res == targetExhausted) {err_print("targetExhausted");}
	#endif
	
	*utf16 = 0; //Terminate string
	
	return (char*)outStart;
}
//Use x4 size to be sure we can fit all char in UTF8 (length UTF16 x 4), 
//using wcslen_ can take extra space (x2 for surogate) but it's more optimised vs utf16_len
#define Vla_WstrC(_name, _wstr)        	  \
	int _len__ = wcslen_(_wstr)*4;        \
	char _name[_len__];                	  \
	W2CStr_(_name, _wstr,_len__);
	

	
#endif //!-----!//
