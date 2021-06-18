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
*
* This file may contain portions of codes created by Joachim Bauch:
*
* Joachim Bauch. All Rights Reserved.
* The Original Code is MemoryModule.c
*
 * Copyright (c) 2004-2012 by Joachim Bauch / mail@joachim-bauch.de
  * http://www.joachim-bauch.de
  *
  * The contents of this file are subject to the Mozilla Public License Version
  * 1.1 (the "License"); you may not use this file except in compliance with
  * the License. You may obtain a copy of the License at
  * http://www.mozilla.org/MPL/
  *
  * Software distributed under the License is distributed on an "AS IS" basis,
  * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
  * for the specific language governing rights and limitations under the
  * License.
*/
#ifndef HDEF_PE_Loader
#define HDEF_PE_Loader
 
#include "XE/XE.h"
#include "win.h"

extern char aOrdinalFunc[MAX_ORDINAL_FUNC][4]; //SpecialCharOrdinal"%" Ordinal"FFFF" "" := char
extern int	  aOrdinalFunc_size;

#define GET_HEADER_DICTIONARY(module, idx)  &(module)->headers->OptionalHeader.DataDirectory[idx]
#define ALIGN_DOWN(address, alignment)      (LPVOID)((uintptr_t)(address) & ~((alignment) - 1))
#define ALIGN_VALUE_UP(value, alignment)    (((value) + (alignment) - 1) & ~((alignment) - 1))


typedef void *HMEMORYRSRC;
typedef void *HCUSTOMMODULE;


typedef BOOL (WINAPI *DllEntryProc)(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpReserved);
typedef int (WINAPI *ExeEntryProc)(void);

typedef struct {
	LPVOID address;
	LPVOID alignedAddress;
	DWORD size;
	DWORD characteristics;
	BOOL last;
} SECTIONFINALIZEDATA, *PSECTIONFINALIZEDATA;

typedef struct MEMORYMODULE {
	PIMAGE_NT_HEADERS headers;
	unsigned char *codeBase;
	HCUSTOMMODULE *modules;
	int numModules;
	BOOL initialized;
	BOOL isDLL;
	BOOL isRelocated;
	DWORD pageSize;
	ExeEntryProc exeEntry;
	DllEntryProc dllEntry;
	void* section_text;
} MEMORYMODULE;


LPVOID 	
	MyMemoryDefaultAlloc(LPVOID address, SIZE_T size, DWORD allocationType, DWORD protect);
HCUSTOMMODULE 
	MyMemoryDefaultLoadLibrary(LPCSTR filename);
FARPROC 
	MyMemoryDefaultGetProcAddress(HCUSTOMMODULE module, LPCSTR name);
void 
	MyMemoryDefaultFreeLibrary(HCUSTOMMODULE module);
BOOL 
	MyMemoryDefaultFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType);
	
	
/////////////////////////////
	
struct XE_Module;
struct XE_Module* 
	Load_Module_PE(struct XE_Module* _module);
	
MEMORYMODULE*
	Load_Module_PE_MEM(void* data, size_t size);

FARPROC MemGetProcAddress(MEMORYMODULE*, LPCSTR);

void MemFreeLibrary(MEMORYMODULE*);

int MemCallEntryPoint(MEMORYMODULE*);

#endif //!---!//
