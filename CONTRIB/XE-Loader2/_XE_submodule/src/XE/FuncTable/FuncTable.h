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
* Remap system function to custom ones 
*
*/

#ifndef EXELOADER_FuncTable_H
#define EXELOADER_FuncTable_H

#include "XE/XE.h"
#include "XE/XEGI/XEGI.h"

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <errno.h>
#include <conio.h>
#include <assert.h>
#include <stdarg.h>
#include <setjmp.h>
#include <locale.h>
#include <ctype.h>

#include "XE/FuncTable/DummyTable.h"

#include "XE/FT_Custom.inc"

#include "XE/FuncTable/FT_mem.h"
#include "XE/Module/PE/FT_pe.h"
#include "XE/Module/ELF/FT_elf.h"

#include "FT_impl.h"


//extern "C" ULONG __chkstk();
fn void __register_frame(void* ptr);
fn void __deregister_frame(void* ptr);
//fn void __unwind_resume(void* object);


#ifdef HAVE_OPERATOR_NEW_INT
fn uint8_t* _Znwj(uint32_t);//new
fn uint8_t* _Znaj(uint32_t);//ne
#endif

#ifdef HAVE_OPERATOR_NEW_LONG
fn uint8_t* _Znwm(uint32_t);//new
fn uint8_t* _Znam(uint32_t);//new
#endif

fn void _ZdlPv(uint8_t*);//delete
fn long __divdi3 (long a, long b);

/*
fn void* _aligned_malloc(size_t size,size_t alignment);
fn void  _aligned_free(void *memblock);
fn void* _aligned_realloc(void *memblock,size_t size,size_t alignment);
*/

//Linux
int optind = 1;
char* optarg = 0;

fn UINT ___lc_codepage_func(void);

#define _IOB_ENTRIES_ 20
FILE iob[_IOB_ENTRIES_] = {}; //TODO -> to test

FILE* stdout_; //Not used?
FILE* stderr_; //Not used?

 sFunc aTableFunc[] = {
 ////////// CPC DOS ///////////////////
//#include "FuncTable/CpcDosFuncTable.h"
//////////////////////////////////////
{"",			"func_NotImplemented" 		,(FUNC_) func_NotImplemented }, //Must be first
	
	//////////////////////////////
	//////// .ht files ///////////
	//////////////////////////////
	#include "XE/FT_Custom.ht" // Custom Override //
	#include "XE/FuncTable/FuncTable.ht"
	#include "XE/Module/ELF/FT_elf.ht"
	#include "XE/Module/PE/FT_pe.ht"
	//////////////////////////////
	//////////////////////////////
};

void func_who(int id){
	err_print("Out of table: %s : %s(), %d", aDummyFunc[id].DLL,  aDummyFunc[id].Who, id );
	#ifndef NO_GDB_BreakOn_out_of_table
	fn void GDB_Func_Break();
	GDB_Func_Break();
	#endif
}

void* 
	Module_GetFunction(const char* _sModule, const char*  _sFunc) 
{
	unsigned int _nSize = sizeof(aTableFunc) /  sizeof(sFunc);
	for (unsigned int i=0; i < _nSize; i++) {
		if (strcmp(_sFunc, aTableFunc[i].sFuncName) == 0) {
			if(aTableFunc[i].sLib[0] == 0){ 
				//Any Lib
				{
					_printl("Found %s: --> %s [LOADED]",  _sModule, _sFunc);
					return (FARPROC)aTableFunc[i].dFunc;
				}
			}else{ 
				//Lib is specified
				if (strcmp(_sModule, aTableFunc[i].sLib) == 0) {
					_printl("Found %s: --> %s [LOADED]",  _sModule, _sFunc);
					return (FARPROC)aTableFunc[i].dFunc;
				}
			}
		}
	}

	static unsigned int current = 0;
	current++;

	warn_print("Warning, %s:  ---------   %s ",  _sModule, _sFunc);
	
	aDummyFunc[current].Who = _sFunc;
	aDummyFunc[current].DLL = _sModule;

	if (current >=  sizeof(aDummyFunc) / sizeof( aDummyFunc[0] )) {current = 0;}

   return (void*)aDummyFunc[current].dFunc;
}

#endif
