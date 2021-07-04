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
#include "XE.h"

#include "XE/Module/PE/PE_Loader.h"
#include "XE/Module/ELF/ELF_Loader.h"
void GDB_Send_AddSymbolFile(const char* _path, void* _text_adress);

#include <unistd.h>
#include <stdio.h>
#include <errno.h>

#include "Xternal/xFile.inc"  //Can be overrided
//#include "Xternal/xDebug.inc" //Can be overrided

extern FILE* stdout_; 
extern FILE* stderr_;

int    	xe_arg_nb 	= 0;
char* 	xe_arg 	 	= "\0\0";

XE_aModule aModule = {};


typedef int (*main_func)();
typedef int (*mainArg_func)(int argc, char* argv[]);
typedef int (CallType_Std *winMain_func)(void* hInstance, void* hPrevInstance, void* pCmdLine, int nCmdShow);
int 
	Xe_ExecuteMain(XE_Module* _module)
{
	#define _set(call)  _module->exe_ret = call
	if(!_module)return 0;
	
	
	#ifndef VirtualLoadPE
	if(!_module->have_reloc){
		err_print("Cannot start executable without .reloc section, when Virtual allocation is not supported");
		return 1;
	}
	#endif
	
	switch (_module->type.val)
	{
	_case XE_Type_EXE:
	{
		#ifdef SearchFor_CustomMain
		{	
		_printl("Research 'main_entry()' entry point... ");
		main_func dMain = (main_func)MemGetProcAddress(_module->handle, "main_entry");
		_printl("--=== Execute EXE main_entry ===---");
		if(dMain){return _set( dMain() );}
		}
		{
		_printl("Research 'main()' entry point... ");
		mainArg_func dMain = (mainArg_func)MemGetProcAddress(_module->handle, "main");
		_printl("--=== Execute EXE main ===---");
		if(dMain){return _set( dMain(xe_arg_nb, &xe_arg) );}
		}
		{
		_printl("Research 'WinMain@16()' entry point... ");
		winMain_func dMain = (winMain_func)MemGetProcAddress(_module->handle, "WinMain@16");
		wchar_t* winMainArg = (wchar_t* )L"Test WinMain ARG";
		_printl("--=== Execute EXE WinMain ===---");
		if(dMain){return _set( dMain(0, 0, winMainArg, 0) );}
		}
		#endif
		
		//No export? try calling gentry point
		_printl("Call entry point... ");
		_printl("--=== Execute EXE ===---");
		return  _set( MemCallEntryPoint(_module->handle) );
	}
	_case XE_Type_DLL:
	{		

		MEMORYMODULE* memm = (MEMORYMODULE*)_module->handle;
		
		//_printl("EXECUTION DllMain..... %p", memm->dllEntry);
		_printl("--=== Execute DllMain (TODO) ===---");
		//!BOOL WINAPI DllMain(HINSTANCE hinstDLL,DWORD fdwReason,LPVOID lpReserved ) 
		void* _lpReserved = 0;
		return  _set(! memm->dllEntry((HINSTANCE)memm, DLL_PROCESS_ATTACH, _lpReserved) );
	}
	_case XE_Type_ELF:
	{
		//_printl("--=== Execute ELF ===---");
		//try calling gentry point
		return  _set(CallEntryPoint_ELF(_module->handle) );
	}
	}
	#undef  _set
}

export XE_Module* 
	Xe_Load(const char* _sPath)
{
	setbuf(stdout, NULL);//Required to see every printf
	setbuf(stderr, NULL);//Required to see every printf
	
	stdout_ = (FILE*)stdout;
	stderr_ = (FILE*)stderr;


	dbg_printl(" -- Xe_Load -- [%s]", _sPath);
	if(strlen(_sPath) <= 0){
		err_printl("No Input files");
		return false;
	}
	
	for(int i = 0; i < aModule.size; i++){
		XE_Module _module = aModule.data[i];
		if(_module.name != NULL){
			if(strcmp(_module.name, _sPath) == 0){
				err_printl("File [%s] already loaded", _sPath);
				return false;
			}
		}
	}
	
	File _file = Xe_LoadFile(_sPath);
	if(!_file.data) return false;
	
	//==-- New Module --==//
	XE_Module* _module = aModule(add, (XE_Module){.file=_file}); 
	
			//==-- PE :
	if(*((uint16_t*)_file.data) ==   0x5A4D ){
		dbg_printl("EXE FILE!!");
		_module->type=XE_Type_(EXE); //Or .dll?
		Load_Module_PE(_module);
	}
	else	//==-- ELF :
	if(*((uint32_t*)_file.data) == 0x464C457f ){ //'0x7f'ELF
		dbg_printl("ELF FILE!!");
		_module->type=XE_Type_(ELF); //Or .so?
		Load_Module_ELF(_module);
	}
	else{	//==-- UNKNOW :
		dbg_printl("UNKNOW FILE!!");
		return false;
	}
	
	
	if(_module->section_text != 0){
		GDB_Send_AddSymbolFile(_sPath, _module->section_text );
	}
	
	return _module;
}


funcPtr_bool _dFunc_wglSwapBuffers = 0;
funcPtrPtr_int _dFunc_wglChoosePixelFormat = 0;
funcPtrIntPtr_bool _dFunc_wglSetPixelFormat = 0;
funcPtr_int _dFunc_wglGetPixelFormat = 0;
funcPtrIntIntPtr_int _dFunc_wglDescribePixelFormat = 0;
void 
	GetLibraryExportTable(MEMORYMODULE* module)
{
	unsigned char *codeBase = ((MEMORYMODULE*)module)->codeBase;
	DWORD idx = 0;
	PIMAGE_EXPORT_DIRECTORY exports;
	PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY((MEMORYMODULE*)module, IMAGE_DIRECTORY_ENTRY_EXPORT);
	if (directory->Size == 0) {
		// no export table found
		#ifdef USE_Window_LastError
		SetLastError(ERROR_PROC_NOT_FOUND);
		#endif
		return;
	}

	exports = (PIMAGE_EXPORT_DIRECTORY) (codeBase + directory->VirtualAddress);
	if (exports->NumberOfNames == 0 || exports->NumberOfFunctions == 0) {
		// DLL doesn't export anything
		#ifdef USE_Window_LastError
		SetLastError(ERROR_PROC_NOT_FOUND);
		#endif
		return;
	}

	// search function name in list of exported names
	DWORD i;
	DWORD *nameRef = (DWORD *) (codeBase + exports->AddressOfNames);
	WORD *ordinal = (WORD *) (codeBase + exports->AddressOfNameOrdinals);
	BOOL found = false;
	for (i=0; i < exports->NumberOfNames; i++, nameRef++, ordinal++) {
		LPCSTR funcName = (const char *) (codeBase + (*nameRef));
		_printl( "/===: %s", funcName);
		
		//// Special Function ///
		if (strcmp("wglChoosePixelFormat", funcName) == 0) {
			FARPROC _dFunc = (FARPROC)(LPVOID)(codeBase + (*(DWORD *) (codeBase + exports->AddressOfFunctions + ((*ordinal)*4))));
			_printl("FOUND Special function:%s",funcName);
			_dFunc_wglChoosePixelFormat = (funcPtrPtr_int)_dFunc;
		}
		if (strcmp("wglSetPixelFormat", funcName) == 0) {
			FARPROC _dFunc = (FARPROC)(LPVOID)(codeBase + (*(DWORD *) (codeBase + exports->AddressOfFunctions + ((*ordinal)*4))));
			_printl("FOUND Special function:%s",funcName);
			_dFunc_wglSetPixelFormat = (funcPtrIntPtr_bool)_dFunc;
		}
		if (strcmp("wglGetPixelFormat", funcName) == 0) {
			FARPROC _dFunc = (FARPROC)(LPVOID)(codeBase + (*(DWORD *) (codeBase + exports->AddressOfFunctions + ((*ordinal)*4))));
			_printl("FOUND Special function:%s",funcName);
			_dFunc_wglGetPixelFormat = (funcPtr_int)_dFunc;
		}
		if (strcmp("wglDescribePixelFormat", funcName) == 0) {
			FARPROC _dFunc = (FARPROC)(LPVOID)(codeBase + (*(DWORD *) (codeBase + exports->AddressOfFunctions + ((*ordinal)*4))));
			_printl("FOUND Special function:%s",funcName);
			_dFunc_wglDescribePixelFormat = (funcPtrIntIntPtr_int)_dFunc;
		}
		if (strcmp("wglSwapBuffers", funcName) == 0) {
			FARPROC _dFunc = (FARPROC)(LPVOID)(codeBase + (*(DWORD *) (codeBase + exports->AddressOfFunctions + ((*ordinal)*4))));
			_printl("FOUND Special function:%s",funcName);
			_dFunc_wglSwapBuffers = (funcPtr_bool)_dFunc;
		}
	}
}


XE_Module* 
	Xe_AddLibrary(const char* _sPath) 
{
	_printl("///===============================================================================================================///");
	_printl("///========= AddLibrary: %s", _sPath);
	_printl("///===============================================================================================================///");
	// Charger le fichier en memoire
	
	XE_Module* m = Xe_Load(_sPath);

	_printl("///===============================================================================================================///");
	if(!m || !m->handle){
		err_print("///====== ERROR: Unable to load DLL: %s",  _sPath);
		_printl("///===============================================================================================================///");
		return 0;
	}
	
	MEMORYMODULE* memm = (MEMORYMODULE*)m->handle;
	
	_printl("///====== Loaded: %s",  _sPath);	 
	_printl("///====== Export function table:");				 
	GetLibraryExportTable(memm);
	
	_printl("///===============================================================================================================///");

	Xe_ExecuteMain(m);

	return m;
}
