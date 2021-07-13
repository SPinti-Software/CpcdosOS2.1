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
#if defined(__DJGPP__) || defined(USE_ATTRIBUTE_CALL_TYPE) 
#define  CallType_C	  	__attribute__((cdecl))
#define  CallType_Std 	__attribute__((stdcall))
#else
#define  CallType_C	  	__cdecl
#define  CallType_Std 	__stdcall
#endif


#ifdef __cplusplus
#define fn extern "C" 	CallType_C 
#define func_std extern "C" CallType_Std 
#else
#define fn 	 CallType_C 
#define func_std CallType_Std 
#endif

#ifdef D_Dynamic_Export
	#define export __declspec(dllexport) fn
#elif D_Dynamic_Link
	#define export __declspec(dllimport) fn
#else
	 #define export fn
#endif
#define _enum_  typedef struct {enum  
#define enum_ val;}_();
//////////////////////////////////
//////////////////////////////////
//////////////////////////////////

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
	int exe_ret;
	XE_Type_ type;
	XE_Arch_ arch;
}XE_Module;

//////////////
//////////////
extern "C" int cpc_xe_loader_main(const char* _sPath);
extern "C" XE_Module* Xe_Load(const char* _sPath);
extern "C" int Xe_ExecuteMain(XE_Module* _module);
extern "C" int End(XE_Module* _mainModule);
//////////////
//////////////