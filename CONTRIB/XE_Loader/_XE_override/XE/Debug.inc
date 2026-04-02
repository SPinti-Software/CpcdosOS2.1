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
* FuncTable_Impl is the ExeLoader custom implementation. 
* Main goal is to be portable which does not relying on system functions
* 
*/

#ifndef HDef_Debug
#define HDef_Debug


int exe_err = 0;

#include <setjmp.h> 
#include <signal.h>

jmp_buf jumpsignal; 

#define Use_LongJump

//GDB will automaticly break here (with Cwc compiler)
fn void GDB_Func_Break(){} //raise(SIGTRAP)? void __debugbreak();?
fn void GDB_Func_ExecuteCmds(){} 

void GDB_Send_AddSymbolFile(const char* _path, void* _text_adress){
	//err_printl("Cmd[GDB]:add-symbol-file \"%s\" 0x%p\n", _path, _text_adress);
	fprintf(stderr,"Cmd[GDB]:add-symbol-file \"%s\" 0x%p\n", _path, _text_adress);
	fflush(stderr);
	GDB_Func_ExecuteCmds();
}

void signalHandler(int signum) {
	_printf("\n Interrupt signal received: ");
	// cleanup and close up stuff here
	switch (signum) {
	case SIGTERM:
		_printf("SIGTERM, termination request, sent to the program ");
		break;
	case SIGSEGV:
		_printf("SIGSEGV, invalid memory access (segmentation fault) ");
		break;
	case SIGINT:
		_printf("SIGINT, external interrupt, usually initiated by the user ");
		break;
	case SIGILL:
		_printf("SIGILL, invalid program image, such as invalid instruction ");
		break;
	case SIGABRT:
		_printf("SIGABRT, abnormal termination condition, as is e.g. initiated by std::abort()");
		break;
	case SIGFPE:
		_printf("SIGFPE, erroneous arithmetic operation such as divide by zero");
		break;
	default:
		_printf("UNKNOW");
		break;
	}
	exe_err = signum;
	longjmp(jumpsignal, 1);
	//exit(signum);
}

 void registerSignal() {
	/* //No sigaction on Windows !?
	int *foo = NULL;
		struct sigaction sa;
		memset(&sa, 0, sizeof(struct sigaction));
		sigemptyset(&sa.sa_mask);
		sa.sa_sigaction = segfault_sigaction;
		sa.sa_flags   = SA_SIGINFO;
		sigaction(SIGSEGV, NULL, NULL);
	*/
	for (int i = 1; i < 32; i++) {
		signal(i, signalHandler);
	}
}

#ifdef ImWin
	#include "XE/Module/PE/win.h"
	void MemVirtualQueryInfo(LPCVOID* _adr, int _size){

		MEMORY_BASIC_INFORMATION meminf;
		LPCVOID* _end =	_adr + (_size>>2);
		
		_printl("--========= VirtualQuery(adr: %p, size: [%.2fM, 0x%p], end: 0x%p):", _adr, (_size/1024./1024.), _size,  _end);
		
		while (VirtualQuery(_adr, &meminf,  sizeof(MEMORY_BASIC_INFORMATION)) != 0){
			
			//static const char* eState = {"MEM_COMMIT", "MEM_RESERVE", , "MEM_FREE"};>>3
			
			_printl("----------");
			_printl("memeinf->BaseAddress: %p",	 		meminf.BaseAddress);	
			_printl("memeinf->AllocationBase: %p",	 	meminf.AllocationBase);
			
			//// PAGE PROTECT ////
			char* eProt = (char*)"UNKNOW";
			switch(meminf.AllocationProtect){
				case PAGE_EXECUTE:
					eProt = (char*)"PAGE_EXECUTE";break;
				case PAGE_EXECUTE_READ:
					eProt = (char*)"PAGE_EXECUTE_READ";break;
				case PAGE_EXECUTE_READWRITE:
					eProt = (char*)"PAGE_EXECUTE_READWRITE";break;
				case PAGE_EXECUTE_WRITECOPY:
					eProt = (char*)"PAGE_EXECUTE_WRITECOPY";break;
				case PAGE_NOACCESS:
					eProt = (char*)"PAGE_NOACCESS";break;
				case PAGE_READONLY:
					eProt = (char*)"PAGE_READONLY";break;
				case PAGE_READWRITE:
					eProt = (char*)"PAGE_READWRITE";break;
				case PAGE_WRITECOPY:
					eProt = (char*)"PAGE_WRITECOPY";break;	
			}
			_printl("memeinf->AllocationProtect: %s [%p]",	 		eProt,	meminf.AllocationProtect);
			_printl("memeinf->RegionSize: [%.2fM, 0x%p]",	 			meminf.RegionSize/1024./1024., meminf.RegionSize);
			
			//// State ////
			char* eState = (char*)"UNKNOW";
			switch(meminf.State){
				case MEM_COMMIT:
					eState = (char*)"MEM_COMMIT";break;
				case MEM_RESERVE:
					eState = (char*)"MEM_RESERVE";break;
				case MEM_COMMIT | MEM_RESERVE:
					eState = (char*)"MEM_COMMIT | MEM_RESERVE";break;
				case MEM_FREE:
					eState = (char*)"MEM_FREE";break;
			}
			_printl("memeinf->State: %s [%p]",	 			eState,	meminf.State);
			
			//// PAGE PROTECT ////
			char* ePProt = (char*)"UNKNOW";
			switch(meminf.Protect){
				case PAGE_NOACCESS:
					ePProt = (char*)"PAGE_NOACCESS";break;
				case PAGE_READONLY:
					ePProt = (char*)"PAGE_READONLY";break;
				case PAGE_READWRITE:
					ePProt = (char*)"PAGE_READWRITE";break;
				case PAGE_WRITECOPY:
					ePProt = (char*)"PAGE_WRITECOPY";break;
			}
			_printl("memeinf->Protect: %s [%p]",	 		ePProt,	meminf.Protect);
			
			//// TYPE ////
			char* eType = (char*)"UNKNOW";
			switch(meminf.Type){
				case MEM_IMAGE:
					eType = (char*)"MEM_IMAGE";break;
				case MEM_MAPPED:
					eType = (char*)"MEM_MAPPED";break;
				case MEM_PRIVATE:
					eType = (char*)"MEM_PRIVATE";break;
			}
			_printl("memeinf->Type: %s [%p]",	 			eType,	meminf.Type);
			//////////////
			_printl("----------");
			
			/*
			//if(VirtualFree(meminf.BaseAddress,0 , MEM_DECOMMIT)){
			if(VirtualFree(meminf.BaseAddress,0 , MEM_RELEASE)){
				_printl("Freed Successfully");
			}else{
				OutputLastError("VirtualFree Errror: ");
			}
			*/
			
			_adr += (meminf.RegionSize>>2);
			if(_adr >= _end){
				break;
			}
		}
	}
#else
	void MemVirtualQueryInfo(LPCVOID* _adr, int _size){
		dbg_printl("MemVirtualQueryInfo not implemented");
	}
#endif



#endif
