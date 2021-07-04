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
#include "XE/XE.h"
#include "stdio.h"

extern void registerSignal();

static int 
	End(XE_Module* _mainModule)
{
	for(int i = 0; i < aModule.size; i++){
		XE_Module _module = aModule.data[i];
		Xe_FreeFile(&_module.file);
	}
	atExit_ShowMemLeak();
	dbg_printl(" -== END ==- \n");
	return _mainModule?_mainModule->exe_ret:0;
}



#ifndef No_Main
#ifdef ImWin
#include "XE/Module/PE/win.h"
HINSTANCE xe_hInstance = 0;
int WINAPI 
	WinMain (HINSTANCE _hInstance, HINSTANCE _hPrevInstance, LPSTR _lpCmdLine, int _nShowCmd)
{
	dbg_printl("-== XE-Loader ==- ");
	setbuf(stdout, NULL);//Required to see every printf
	setbuf(stderr, NULL);//Required to see every printf
		
	#ifdef D_Debug
	//Check if Virtual Space for 32bit app is available
	MemVirtualQueryInfo((LPCVOID*)0x00400000, 2 *1024*1024);//2M
	MemVirtualQueryInfo((LPCVOID*)0x08040000, 2 *1024*1024);//2M
	#endif
	
	xe_hInstance = _hInstance;
	registerSignal();
		
	XE_Module* m = 
	Xe_Load(_lpCmdLine);  // argv[0] is path
	Xe_ExecuteMain(m);
	
	return End(m);
}
#else //!ImWin
int 
	main(int argc, char* argv[]) 
{
	dbg_printl("-== XE-Loader ==- ");
	setbuf(stdout, NULL);//Required to see every printf
	setbuf(stderr, NULL);//Required to see every printf
	registerSignal();
	
	XE_Module*  m =  
	Xe_Load(argv[1]);  // argv[0] is path
	Xe_ExecuteMain(m);
	
	return End(m);
}

#endif
#endif //!No_Main!//


