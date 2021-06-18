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
 
#include "PE_Loader.h"
#include "XE/FuncTable/FuncTable.h"

char aOrdinalFunc[MAX_ORDINAL_FUNC][4] = {0}; //SpecialCharOrdinal"%" Ordinal"FFFF" "" := char
int	 aOrdinalFunc_size = 0;

#if ImWin
#define SetLastError_ SetLastError
#else
#define SetLastError_(exp)
#endif


#ifdef DEBUG_OUTPUT
static void
	OutputLastError(const char *msg) 
{
	LPVOID tmp;
	char *tmpmsg;
	FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
		NULL, GetLastError(), MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPTSTR)&tmp, 0, NULL);
	tmpmsg = (char *)LocalAlloc(LPTR, strlen(msg) + strlen((char*)tmp) + 3);
	sprintf(tmpmsg, "%s: %s", msg, tmp);
	_printl("%s: ", tmpmsg);
	LocalFree(tmpmsg);
	LocalFree(tmp);
}
#endif


static BOOL
	CheckSize(size_t size, size_t expected) 
{
	if (size < expected) {
		SetLastError_(ERROR_INVALID_DATA);
		return false;
	}
	return true;
}

static BOOL 
	CopySections(
		const unsigned char *data, size_t size, 
		PIMAGE_NT_HEADERS old_headers, 
		MEMORYMODULE* module
		)
{
	int i, section_size;
	unsigned char *codeBase = module->codeBase;
	unsigned char *dest;
	module->section_text = 0;
	PIMAGE_SECTION_HEADER section = IMAGE_FIRST_SECTION(module->headers);
	for (i=0; i < module->headers->FileHeader.NumberOfSections; i++, section++) {
		if (section->SizeOfRawData == 0) {
			// section doesn't contain data in the dll itself, but may define
			// uninitialized data
			section_size = old_headers->OptionalHeader.SectionAlignment;
			if (section_size > 0) {
			
				dest = (unsigned char *)MyMemoryDefaultAlloc(codeBase + section->VirtualAddress,
					section_size,
					MEM_COMMIT,
					PAGE_READWRITE);
				if (dest == NULL) {
					return false;
				}

				// Always use position from file to support alignments smaller
				// than page size.
				dest = codeBase + section->VirtualAddress;
				section->Misc.PhysicalAddress = (DWORD) (uintptr_t) dest;
				memset(dest, 0, section_size);
			}

			// section is empty
			continue;
		}

		if (!CheckSize(size, section->PointerToRawData + section->SizeOfRawData)) {
			return false;
		}


		_printl(" codeBase: %p VirtualAddress: %p, both: %p ",codeBase, section->VirtualAddress, codeBase + section->VirtualAddress);
		// commit memory block and copy data from dll
		
		unsigned char *test = 0;
		dest = (unsigned char *)MyMemoryDefaultAlloc(codeBase + section->VirtualAddress,
							section->SizeOfRawData,
							MEM_COMMIT,
							PAGE_READWRITE);
		if (dest == NULL) {
			return false;
		}

		// Always use position from file to support alignments smaller
		// than page size.
		dest = codeBase + section->VirtualAddress;
		memcpy(dest, data + section->PointerToRawData, section->SizeOfRawData);
		section->Misc.PhysicalAddress = (DWORD) (uintptr_t) dest;
		
		if( strcmp( (char*)section->Name, ".text") == 0){
			module->section_text = dest;
		}
		_printl("-----COPY section [%s]: dest[0x%p], src[0x%p], size[%d]", section->Name , dest,  data + section->PointerToRawData, section->SizeOfRawData );
	}
	return true;
}

static int 
ProtectionFlags[2][2][2] = {
	{
		// not executable
		{PAGE_NOACCESS, PAGE_WRITECOPY},
		{PAGE_READONLY, PAGE_READWRITE},
	}, {
		// executable
		{PAGE_EXECUTE, PAGE_EXECUTE_WRITECOPY},
		{PAGE_EXECUTE_READ, PAGE_EXECUTE_READWRITE},
	},
};
 
static DWORD
	GetRealSectionSize(MEMORYMODULE* module, PIMAGE_SECTION_HEADER section) 
{
	DWORD size = section->SizeOfRawData;
	if (size == 0) {
		if (section->Characteristics & IMAGE_SCN_CNT_INITIALIZED_DATA) {
			size = module->headers->OptionalHeader.SizeOfInitializedData;
		} else if (section->Characteristics & IMAGE_SCN_CNT_UNINITIALIZED_DATA) {
			size = module->headers->OptionalHeader.SizeOfUninitializedData;
		}
	}
	return size;
}

static BOOL
	FinalizeSection(MEMORYMODULE* module, PSECTIONFINALIZEDATA sectionData) 
{
	if (sectionData->size == 0) {
		return true;
	}

	if (sectionData->characteristics & IMAGE_SCN_MEM_DISCARDABLE) {
		// section is not needed any more and can safely be freed
		if (sectionData->address == sectionData->alignedAddress &&
			(sectionData->last ||
			 module->headers->OptionalHeader.SectionAlignment == module->pageSize ||
			 (sectionData->size % module->pageSize) == 0)
		   ) {
			// Only allowed to decommit whole pages
			MyMemoryDefaultFree(sectionData->address, sectionData->size, MEM_DECOMMIT);
		}
		return true;
	}

	// determine protection flags based on characteristics
	bool executable = (sectionData->characteristics & IMAGE_SCN_MEM_EXECUTE) != 0;
	bool readable =   (sectionData->characteristics & IMAGE_SCN_MEM_READ) != 0;
	bool writeable =  (sectionData->characteristics & IMAGE_SCN_MEM_WRITE) != 0;
	DWORD protect = ProtectionFlags[executable][readable][writeable];
	if (sectionData->characteristics & IMAGE_SCN_MEM_NOT_CACHED) {
		protect |= PAGE_NOCACHE;
	}

#ifdef USE_Windows_VirtualAlloc
	// change memory access flags
	DWORD oldProtect;
	if (VirtualProtect(sectionData->address, sectionData->size, protect, &oldProtect) == 0) {
		#ifdef DEBUG_OUTPUT
		OutputLastError("Error protecting memory page");
		#endif
		return false;
	}
#endif

	return true;
}

static BOOL
	FinalizeSections(MEMORYMODULE* module) 
{
	int i;
	PIMAGE_SECTION_HEADER section = IMAGE_FIRST_SECTION(module->headers);
#ifdef _WIN64
	uintptr_t imageOffset = (module->headers->OptionalHeader.ImageBase & 0xffffffff00000000);
#else
	#define imageOffset 0
#endif
	SECTIONFINALIZEDATA sectionData;
	sectionData.address = (LPVOID)((uintptr_t)section->Misc.PhysicalAddress | imageOffset);
	sectionData.alignedAddress = ALIGN_DOWN(sectionData.address, module->pageSize);
	sectionData.size = GetRealSectionSize(module, section);
	sectionData.characteristics = section->Characteristics;
	sectionData.last = false;
	section++;

	// Change section access flags
	for (i=1; i < module->headers->FileHeader.NumberOfSections; i++, section++) {
		LPVOID sectionAddress = (LPVOID)((uintptr_t)section->Misc.PhysicalAddress | imageOffset);
		LPVOID alignedAddress = ALIGN_DOWN(sectionAddress, module->pageSize);
		DWORD sectionSize = GetRealSectionSize(module, section);
		// Use same access flags for all sections with same page
		if (sectionData.alignedAddress == alignedAddress || (uintptr_t) sectionData.address + sectionData.size > (uintptr_t) alignedAddress) {
			// page shared with previous one
			if ((section->Characteristics & IMAGE_SCN_MEM_DISCARDABLE) == 0 || (sectionData.characteristics & IMAGE_SCN_MEM_DISCARDABLE) == 0) {
				sectionData.characteristics = (sectionData.characteristics | section->Characteristics) & ~IMAGE_SCN_MEM_DISCARDABLE;
			} else {
				sectionData.characteristics |= section->Characteristics;
			}
			sectionData.size = (((uintptr_t)sectionAddress) + sectionSize) - (uintptr_t) sectionData.address;
			continue;
		}

		if (!FinalizeSection(module, &sectionData)) {
			return false;
		}
		sectionData.address = sectionAddress;
		sectionData.alignedAddress = alignedAddress;
		sectionData.size = sectionSize;
		sectionData.characteristics = section->Characteristics;
	}
	sectionData.last = true;
	if (!FinalizeSection(module, &sectionData)) {
		return false;
	}
#ifndef _WIN64
#undef imageOffset
#endif
	return true;
}

static BOOL 
	ExecuteTLS(MEMORYMODULE* module) 
{
	unsigned char *codeBase = module->codeBase;
	PIMAGE_TLS_DIRECTORY tls;
	PIMAGE_TLS_CALLBACK* callback;

	PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY(module, IMAGE_DIRECTORY_ENTRY_TLS);
	if (directory->VirtualAddress == 0) {
		return true;
	}

	tls = (PIMAGE_TLS_DIRECTORY) (codeBase + directory->VirtualAddress);
	callback = (PIMAGE_TLS_CALLBACK *) tls->AddressOfCallBacks;
	if (callback) {
		while (*callback) {
			(*callback)((LPVOID) codeBase, DLL_PROCESS_ATTACH, NULL);
			callback++;
		}
	}
	return true;
}
  
static BOOL 
	PerformBaseRelocation(MEMORYMODULE* module, ptrdiff_t delta) 
{
	unsigned char *codeBase = module->codeBase;
	PIMAGE_BASE_RELOCATION relocation;

	PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY(module, IMAGE_DIRECTORY_ENTRY_BASERELOC);
	if (directory->Size == 0) {
		return (delta == 0);
	}

	relocation = (PIMAGE_BASE_RELOCATION) (codeBase + directory->VirtualAddress);
	_printl("Perform Relocation of %d VirtualAddress", relocation->VirtualAddress );
	
	for (; relocation->VirtualAddress > 0; ) {
		DWORD i;
		unsigned char *dest = codeBase + relocation->VirtualAddress;
		unsigned short *relInfo = (unsigned short *)((unsigned char *)relocation + IMAGE_SIZEOF_BASE_RELOCATION);
		for (i=0; i < ((relocation->SizeOfBlock - IMAGE_SIZEOF_BASE_RELOCATION) / 2); i++, relInfo++) {
			DWORD *patchAddrHL;
#ifdef _WIN64
			ULONGLONG *patchAddr64;
#endif
			int type, offset;

			// the upper 4 bits define the type of relocation
			type = *relInfo >> 12;
			// the lower 12 bits define the offset
			offset = *relInfo & 0xfff;

			switch (type) {
			case IMAGE_REL_BASED_ABSOLUTE:
				// skip relocation
				break;

			case IMAGE_REL_BASED_HIGHLOW:
				// change complete 32 bit address
				patchAddrHL = (DWORD *) (dest + offset);
				*patchAddrHL += (DWORD) delta;
				break;

#ifdef _WIN64
			case IMAGE_REL_BASED_DIR64:
				patchAddr64 = (ULONGLONG *) (dest + offset);
				*patchAddr64 += (ULONGLONG) delta;
				break;
#endif

			default:
				// _printl("Unknown relocation: %d\n", type);
				break;
			}
		}
		// advance to next relocation block
		relocation = (PIMAGE_BASE_RELOCATION) (((char *) relocation) + relocation->SizeOfBlock);
	}
	return true;
}

static BOOL 
	BuildImportTable(MEMORYMODULE* module) 
{
	unsigned char *codeBase = module->codeBase;
	PIMAGE_IMPORT_DESCRIPTOR importDesc;
	BOOL result = true;

	PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY(module, IMAGE_DIRECTORY_ENTRY_IMPORT);
	if (directory->Size == 0) {
		return true;
	}

	importDesc = (PIMAGE_IMPORT_DESCRIPTOR) (codeBase + directory->VirtualAddress);

#ifdef ImWin
	for (; !IsBadReadPtr(importDesc, sizeof(IMAGE_IMPORT_DESCRIPTOR)) && importDesc->Name; importDesc++) {
#else
	for (; importDesc->Name; importDesc++) {
#endif

		uintptr_t *thunkRef;
		FARPROC *funcRef;
		HCUSTOMMODULE *tmp;

		HCUSTOMMODULE handle = MyMemoryDefaultLoadLibrary((LPCSTR) (codeBase + importDesc->Name));
		if (handle == NULL) {
			#ifdef ImWin
			SetLastError_(ERROR_MOD_NOT_FOUND);
			#endif
			result = false;
			break;
		}
		_printl(" New LIB[%p]: %s", handle, (LPCSTR) (codeBase + importDesc->Name));
		_printl(" Module Nb.%d of %d bytes", (module->numModules+1), (module->numModules+1)*(sizeof(HCUSTOMMODULE)));
	   
		tmp = _calloc(module->numModules+1, HCUSTOMMODULE);

		if (tmp == 0) {
			MyMemoryDefaultFreeLibrary(handle);
			#ifdef ImWin
			SetLastError_(ERROR_OUTOFMEMORY);
			#endif
			result = false;
			break;
		}
		module->modules = tmp;

		module->modules[module->numModules++] = handle;
		if (importDesc->OriginalFirstThunk) {
			thunkRef = (uintptr_t *) (codeBase + importDesc->OriginalFirstThunk);
			funcRef = (FARPROC *) (codeBase + importDesc->FirstThunk);
		} else {
			// no hint table
			thunkRef = (uintptr_t *) (codeBase + importDesc->FirstThunk);
			funcRef = (FARPROC *) (codeBase + importDesc->FirstThunk);
		}
		for (; *thunkRef; thunkRef++, funcRef++) {
			if (IMAGE_SNAP_BY_ORDINAL(*thunkRef)) {
				char* _sOrdinal = aOrdinalFunc[aOrdinalFunc_size];aOrdinalFunc_size++;
				_sOrdinal[0] = '#';
				short _ordinal = (short)IMAGE_ORDINAL(*thunkRef);
				if(_ordinal > 9999){
					showinf("Error, No support for Ordinal > 9999","");
					*funcRef = (FARPROC)aDummyFunc[0].dFunc;
				}else{
					sprintf(&_sOrdinal[1], "%d", _ordinal);
					*funcRef = MyMemoryDefaultGetProcAddress(handle, (LPCSTR)_sOrdinal);
				}
			} else {
				PIMAGE_IMPORT_BY_NAME thunkData = (PIMAGE_IMPORT_BY_NAME) (codeBase + (*thunkRef));
				*funcRef = MyMemoryDefaultGetProcAddress(handle, (LPCSTR)&thunkData->Name);
			}
			if (*funcRef == 0) {
				MyMemoryDefaultFreeLibrary(handle);
				result = false;
				break;
			}
		}
		
		if (!result) {
			MyMemoryDefaultFreeLibrary(handle);
			#ifdef ImWin
			SetLastError_(ERROR_PROC_NOT_FOUND);
			#endif
			break;
		}
		MyMemoryDefaultFreeLibrary(handle);
	}
	return result;
}

LPVOID 
	MyMemoryDefaultAlloc(LPVOID address, SIZE_T size, DWORD allocationType, DWORD protect) 
{
	#ifdef VirtualLoadPE
		_printl("Virtual Allocation!: 0x%p  size: %d, allocationType: 0x%p, protect: 0x%p", address, size, allocationType, protect);
		
		if(allocationType == MEM_RESERVE | MEM_COMMIT){
			//(Process in 2 Step) => if it's already reserved we can commit without error
			LPVOID _ret =  VirtualAlloc(address, size, MEM_RESERVE, protect);
			allocationType = MEM_COMMIT;
		}
		
		LPVOID _ret =  VirtualAlloc(address, size, allocationType, protect);
		if(_ret == 0){
			#ifdef DEBUG_OUTPUT
			OutputLastError("Virtual Allocation ERROR");
			#endif
		}
		return _ret;
	#else
	// return VirtualAlloc(address, size, allocationType, protect);
	// return _calloc(1, size);
	 return _calloc(size, byte_t);
	//return AllocManager.ManagedCalloc(1, size); //Must initialised to zero
	#endif
}

BOOL 
	MyMemoryDefaultFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)  
{
	#ifdef VirtualLoadPE
		return VirtualFree(lpAddress, dwSize, dwFreeType);
	#else
	 //   return VirtualFree(lpAddress, dwSize, dwFreeType);
		_free(lpAddress);
		//AllocManager.ManagedFree(lpAddress);
		return true;
	#endif
}

bool fMainExeLoader(const char* _sPath);

HCUSTOMMODULE 
	MyMemoryDefaultLoadLibrary(LPCSTR filename) 
{
	//result = LoadLibraryA(filename);
	//return (HCUSTOMMODULE) result;

	HMODULE result;
	
	_printl("------ [DLL] Import:%s \n",   filename);

	MEMORYMODULE* _oModule =  _calloc(1, MEMORYMODULE);
	_oModule->isDLL = true;
	_oModule->codeBase = (unsigned char*)filename;

	return (HCUSTOMMODULE*)_oModule;
}






//void *findELFSymbol(const char *nm, struct ELF_File *onlyin, int localin, int notin, ElfNative_Sym **syminto)
//typedef int (WINAPI *FARPROC) ();









FARPROC 
	MyMemoryDefaultGetProcAddress(HCUSTOMMODULE module, LPCSTR name) 
{
	//return (FARPROC) GetProcAddress((HMODULE) module, name);
	MEMORYMODULE* _oDll = (MEMORYMODULE*)module;
	char* sDllName = (char*)"";
	if (_oDll != 0) {
	   sDllName =  (char*)_oDll->codeBase;
	}
	return Module_GetFunction(sDllName, name);
}

void 
	MyMemoryDefaultFreeLibrary(HCUSTOMMODULE module)
{
	// FreeLibrary((HMODULE) module);
}


XE_Module* 
	Load_Module_PE(XE_Module* _module) 
{
	MEMORYMODULE* m = Load_Module_PE_MEM( _module->file.data, _module->file.size);
	_module->handle = m;
	
	PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY(m, IMAGE_DIRECTORY_ENTRY_EXPORT);
	PIMAGE_EXPORT_DIRECTORY exports = (PIMAGE_EXPORT_DIRECTORY) ( m->codeBase + directory->VirtualAddress);
	_module->name =  (char*) ( m->codeBase + exports->Name);
	_module->have_reloc = m->isRelocated;
		
	if(m->isDLL){
		_module->type = XE_Type_(DLL);
	}
	
	_module->section_text = m->section_text;
	return _module;
}

MEMORYMODULE* 
	Load_Module_PE_MEM(void* data, size_t size) 
{
	MEMORYMODULE* result = NULL;
	PIMAGE_DOS_HEADER dos_header;
	PIMAGE_NT_HEADERS old_header;
	unsigned char *code, *headers;
	ptrdiff_t locationDelta;
	SYSTEM_INFO sysInfo;
	PIMAGE_SECTION_HEADER section;
	DWORD i;
	size_t optionalSectionSize;
	size_t lastSectionEnd = 0;
	size_t alignedImageSize;

	if (!CheckSize(size, sizeof(IMAGE_DOS_HEADER))) {
		warn_print("Warning, no IMAGE_DOS_HEADER");
		return NULL;
	}
	
	dos_header = (PIMAGE_DOS_HEADER)data;
	if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
		#ifdef ImWin
		SetLastError_(ERROR_BAD_EXE_FORMAT);
		#endif
		warn_print("Warning, no IMAGE_DOS_SIGNATURE");
		return NULL;
	}


	if (!CheckSize(size, dos_header->e_lfanew + sizeof(IMAGE_NT_HEADERS))) {
		return NULL;
	}
	old_header = (PIMAGE_NT_HEADERS)&((const unsigned char *)(data))[dos_header->e_lfanew];
	if (old_header->Signature != IMAGE_NT_SIGNATURE) {
		SetLastError_(ERROR_BAD_EXE_FORMAT);
		warn_print("Warning, no IMAGE_NT_SIGNATURE");
		return NULL;
	}

#ifdef _WIN64
	if (old_header->FileHeader.Machine != IMAGE_FILE_MACHINE_AMD64) {
#else
	if (old_header->FileHeader.Machine != IMAGE_FILE_MACHINE_I386) {
#endif
		if(old_header->FileHeader.Machine == IMAGE_FILE_MACHINE_I386){
			warn_print("Warning, executable is 32 bit: IMAGE_FILE_MACHINE_I386");
			return NULL;
		}else if (old_header->FileHeader.Machine == IMAGE_FILE_MACHINE_AMD64){
			warn_print("Warning, executable is 64 bit: IMAGE_FILE_MACHINE_AMD64");
			return NULL;
		}else{
			SetLastError_(ERROR_BAD_EXE_FORMAT);
			warn_print("Warning, no IMAGE_FILE_MACHINE_I386: %p", old_header->FileHeader.Machine);
			return NULL;
		}
	}

	if (old_header->OptionalHeader.SectionAlignment & 1) {
		// Only support section alignments that are a multiple of 2
		SetLastError_(ERROR_BAD_EXE_FORMAT);
		warn_print("Warning, Only support section alignments that are a multiple of 2");
		return NULL;
	}

	section = IMAGE_FIRST_SECTION(old_header);
	optionalSectionSize = old_header->OptionalHeader.SectionAlignment;
	for (i=0; i < old_header->FileHeader.NumberOfSections; i++, section++) {
		size_t endOfSection;
		if (section->SizeOfRawData == 0) {
			// Section without data in the DLL
			endOfSection = section->VirtualAddress + optionalSectionSize;
		} else {
			endOfSection = section->VirtualAddress + section->SizeOfRawData;
		}

		if (endOfSection > lastSectionEnd) {
			lastSectionEnd = endOfSection;
		}
	}

	int dwPageSize;

#ifdef ImWin
	GetNativeSystemInfo(&sysInfo);
	dwPageSize = sysInfo.dwPageSize;
#else
	dwPageSize = 4096;  // TODO
#endif

	alignedImageSize = ALIGN_VALUE_UP(old_header->OptionalHeader.SizeOfImage, dwPageSize);
	_printl("old_header->OptionalHeader.SizeOfImage: %d", old_header->OptionalHeader.SizeOfImage);
	_printl("alignedImageSize: %d", alignedImageSize);
	_printl("lastSectionEnd: %d", lastSectionEnd);
	_printl("dwPageSize: %d", dwPageSize);
	_printl("ALIGN_VALUE_UP_bef: %d", ALIGN_VALUE_UP(old_header->OptionalHeader.SizeOfImage, dwPageSize));
	_printl("ALIGN_VALUE_UP: %d", ALIGN_VALUE_UP(lastSectionEnd, dwPageSize));
	if (alignedImageSize != ALIGN_VALUE_UP(lastSectionEnd, dwPageSize)) {
		SetLastError_(ERROR_BAD_EXE_FORMAT);
		_printl("Warning, alignedImageSize");
	}

	code = (unsigned char *)MyMemoryDefaultAlloc((LPVOID)(old_header->OptionalHeader.ImageBase),
		alignedImageSize,
		MEM_RESERVE | MEM_COMMIT, 
		PAGE_READWRITE);

	if (code == NULL) {

		MemVirtualQueryInfo((LPCVOID*)old_header->OptionalHeader.ImageBase, alignedImageSize);
			
		// try to allocate memory at arbitrary position
		code = (unsigned char *)MyMemoryDefaultAlloc(NULL,
			alignedImageSize,
			MEM_RESERVE | MEM_COMMIT,
			PAGE_READWRITE);
			
		if (code == NULL) {
			SetLastError_(ERROR_OUTOFMEMORY);
			warn_print("Warning, OUTOFMEMORY");
			return NULL;
		}else{
			warn_print("Warning, try to allocate memory at arbitrary position: %p", code);
		}
	}

#ifdef Use_HeapAlloc
	result = (MEMORYMODULE*)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(MEMORYMODULE));
#else
	result = (MEMORYMODULE*)_calloc(1, MEMORYMODULE);
#endif

	if (result == NULL) {
		MyMemoryDefaultFree(code, 0, MEM_RELEASE);
		SetLastError_(ERROR_OUTOFMEMORY);
		warn_print("Warning, OUTOFMEMORY!");
		return NULL;
	}

	_printl("-+-------------- New codeBase: %p ", (code ) );

	result->codeBase = code;
	result->isDLL = (old_header->FileHeader.Characteristics & IMAGE_FILE_DLL) != 0;

	result->pageSize = dwPageSize;

	if (!CheckSize(size, old_header->OptionalHeader.SizeOfHeaders)) {
		_printl("Warning, !CheckSize");
		goto error;
	}

	// commit memory for headers
	headers = (unsigned char *)MyMemoryDefaultAlloc(code,
		old_header->OptionalHeader.SizeOfHeaders,
		MEM_COMMIT,
		PAGE_READWRITE);

	// copy PE header to code
	memcpy(headers, dos_header, old_header->OptionalHeader.SizeOfHeaders);
	
	result->headers = (PIMAGE_NT_HEADERS)&((const unsigned char *)(headers))[dos_header->e_lfanew];

	// update position
	result->headers->OptionalHeader.ImageBase = (uintptr_t)code;
	

	// copy sections from DLL file block to new memory location
	if (!CopySections((const unsigned char *) data, size, old_header, result)) {
		_printl("Warning, !CopySections");
		goto error;
	}

	// adjust base address of imported data
	result->isRelocated = false;
	locationDelta = (ptrdiff_t)(result->headers->OptionalHeader.ImageBase - old_header->OptionalHeader.ImageBase);
	if (locationDelta != 0) {
		result->isRelocated = PerformBaseRelocation(result, locationDelta);
	}else{
		result->isRelocated = true; //Not reloacated but already good
	}
	if(!result->isRelocated) {
		warn_print("Warning, ! Not relocated (Probably no .reloc section)");
	}

	// load required dlls and adjust function table of imports
	if (!BuildImportTable(result)) {
		warn_print("Warning, !BuildImportTable");
		goto error;
	}

	// mark memory pages depending on section headers and release
	// sections that are marked as "discardable"
	if (!FinalizeSections(result)) {
		warn_print("Warning, !FinalizeSections");
		goto error;
	}

#ifdef PE_ExecuteTLS
	if (!ExecuteTLS(result)){
		warn_print("Warning, !ExecuteTLS");
		goto error;
	}
#endif

	// get entry point of loaded library
	if (result->headers->OptionalHeader.AddressOfEntryPoint != 0) {
		if (result->isDLL) {
			_printl("File format : Library");
			DllEntryProc DllEntry = (DllEntryProc)(LPVOID)(code + result->headers->OptionalHeader.AddressOfEntryPoint);
			result->dllEntry = DllEntry;
			
			/* TODO: notify library about attaching to process
			BOOL successfull = (*DllEntry)((HINSTANCE)code, DLL_PROCESS_ATTACH, 0);
			if (!successfull) {
				SetLastError_(ERROR_DLL_INIT_FAILED);
				goto error;
			}
			*/
			result->initialized = true;
		} else {
			_printl( "File format : Windows execuable");
			result->exeEntry = (ExeEntryProc)(LPVOID)(code + result->headers->OptionalHeader.AddressOfEntryPoint);
		}
	} else {
		result->exeEntry = NULL;
	}
	
	return (MEMORYMODULE*)result;

error:
	// cleanup
	MemFreeLibrary(result);
	_printl("Error!");
	return NULL;
}

FARPROC 
	MemGetProcAddress(MEMORYMODULE* module, LPCSTR name) 
{
	unsigned char *codeBase = ((MEMORYMODULE*)module)->codeBase;
	DWORD idx = 0;
	PIMAGE_EXPORT_DIRECTORY exports;
	PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY((MEMORYMODULE*)module, IMAGE_DIRECTORY_ENTRY_EXPORT);
	if (directory->Size == 0) {
		// no export table found
		_printl("Warning, Non export table found");
		SetLastError_(ERROR_PROC_NOT_FOUND);
		return NULL;
	}

	exports = (PIMAGE_EXPORT_DIRECTORY) (codeBase + directory->VirtualAddress);
	if (exports->NumberOfNames == 0 || exports->NumberOfFunctions == 0) {
		// DLL doesn't export anything
		SetLastError_(ERROR_PROC_NOT_FOUND);
		_printl("Warning, Nothing exported");
		return NULL;
	}

	// search function name in list of exported names
	DWORD i;
	DWORD *nameRef = (DWORD *) (codeBase + exports->AddressOfNames);
	WORD *ordinal = (WORD *) (codeBase + exports->AddressOfNameOrdinals);
	BOOL found = false;
	for (i=0; i < exports->NumberOfNames; i++, nameRef++, ordinal++) {
	
		//_printl("Search[%s]: %s", name, (const char *) (codeBase + (*nameRef)));
		if (strcmp(name, (const char *) (codeBase + (*nameRef))) == 0) {
			idx = *ordinal;
			found = true;
			break;
		}
	}

	if (!found) {
		// exported symbol not found
		_printl("Warning, Not found");
		SetLastError_(ERROR_PROC_NOT_FOUND);
		return NULL;
	}
	
	if (idx > exports->NumberOfFunctions) {
		// name <-> ordinal number don't match
		SetLastError_(ERROR_PROC_NOT_FOUND);
		_printl("Warning, Not found!");
		return NULL;
	}

	// AddressOfFunctions contains the RVAs to the "real" functions
	return (FARPROC)(LPVOID)(codeBase + (*(DWORD *) (codeBase + exports->AddressOfFunctions + (idx*4))));
}

void 
	MemFreeLibrary(MEMORYMODULE* mod) 
{
	MEMORYMODULE* module = (MEMORYMODULE*)mod;

	if (module == NULL) {
		return;
	}
	if (module->initialized) {
		// notify library about detaching from process
		DllEntryProc DllEntry = (DllEntryProc)(LPVOID)(module->codeBase + module->headers->OptionalHeader.AddressOfEntryPoint);
		(*DllEntry)((HINSTANCE)module->codeBase, DLL_PROCESS_DETACH, 0);
	}

	if (module->modules != NULL) {
		// free previously opened libraries
		int i;
		for (i=0; i < module->numModules; i++) {
			if (module->modules[i] != NULL) {
				MyMemoryDefaultFreeLibrary(module->modules[i]);
			}
		}

		_free(module->modules);
		// free(module->modules);
	}

	if (module->codeBase != NULL) {
		MyMemoryDefaultFree(module->codeBase, 0, MEM_RELEASE);
	}
	
	if (module->headers != NULL) {
		MyMemoryDefaultFree(module->headers, 0, MEM_RELEASE);
	}


	#ifdef Use_HeapAlloc
		HeapFree(GetProcessHeap(), 0, module);
	#else
		MyMemoryDefaultFree(module, 0, MEM_RELEASE);
	#endif
}

int 
	MemCallEntryPoint(MEMORYMODULE* mod) 
{
	MEMORYMODULE* module = (MEMORYMODULE*)mod;
	
	_printl( "Adresse %p ", module->exeEntry);

	//if (module == NULL || module->isDLL || module->exeEntry == NULL || !module->isRelocated) {
	if (module == NULL || module->isDLL || module->exeEntry == NULL ) {
		_printl( "ARF.....");
		return -1;
	}

	_printl( "EXECUTION..... %p ", module->exeEntry);
	return module->exeEntry();
}
