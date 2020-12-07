/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html

* Description:
* 
* FuncTable_Impl is the ExeLoader custom implementation. 
* Main goal is to be portable which does not relying on system functions
* 
*/

//!void* malloc( size_t size )
void* imp_malloc( size_t size ){
	showfunc_opt("malloc( size: %d )", size); 
	void* ret =  malloc(size);
	if(!ret){
		showinf("Fail to malloc( size: %d )", size);
	}	
	return ret;
}

//!void *calloc(size_t nitems, size_t size)
void* imp_calloc(size_t nitems, size_t size){
	showfunc_opt("calloc( nitems : %d, size: %d )", nitems, size); 
	return calloc(nitems, size);
}

//!void *realloc(void *ptr, size_t size)
void* imp_realloc(void *ptr, size_t size){
	showfunc_opt("calloc( ptr : %p, size: %d )", ptr, size); 
	return realloc(ptr, size);
}

//!void free (void* ptr)
void imp_free(void* ptr){
	showfunc_opt("free( ptr : %p )", ptr); 
	free(ptr);
}

//==== Local Alloc === //  ** ---- Not tested --- **

//!HLOCAL WINAPI LocalAlloc (UINT uFlags, SIZE_T uBytes)
inline HLOCAL WINAPI imp_LocalAlloc(UINT  uFlags, SIZE_T uBytes){
	showfunc_opt("LocalAlloc( uFlags: %d, uBytes: %d )", uFlags, uBytes);
	SIZE_T* _alloc = (SIZE_T*)instance_AllocManager.ManagedCalloc(uBytes + sizeof(SIZE_T), sizeof(char));
	_alloc[0] = uBytes;
	return (HLOCAL)&_alloc[1];
}

//!SIZE_T WINAPI LocalSize (HLOCAL hMem)
SIZE_T WINAPI imp_LocalSize(HLOCAL hMem){
	showfunc_opt("LocalSize( hMem: %p)", hMem);
	SIZE_T* _alloc = (SIZE_T*)hMem;_alloc--;
	return _alloc[0];
}

//!HLOCAL WINAPI LocalFree (HLOCAL hMem)
inline SIZE_T WINAPI imp_LocalFree(HLOCAL hMem){
	showfunc_opt("LocalFree( hMem: %p)", hMem);
	if(hMem != 0){
		SIZE_T* _alloc = (SIZE_T*)hMem;_alloc--;
		//TODO !crash!?
	//	instance_AllocManager.ManagedFree(_alloc); 
	}
	return 0;
}

//!HLOCAL WINAPI LocalReAlloc (HLOCAL hMem, SIZE_T uBytes, UINT uFlags)
HLOCAL WINAPI imp_LocalReAlloc(HLOCAL hMem, SIZE_T uBytes, UINT uFlags){
	showfunc_opt("LocalReAlloc( hMem: %p, uFlags: %d, uBytes: %d )", hMem, uFlags, uBytes);
	imp_LocalFree(hMem);
	return imp_LocalAlloc(0, uBytes);
}


//!LPVOID VirtualAlloc(LPVOID lpAddress,SIZE_T dwSize,DWORD flAllocationType,DWORD flProtect)
inline LPVOID WINAPI pipe_VirtualAlloc(LPVOID lpAddress,SIZE_T dwSize,DWORD flAllocationType,DWORD flProtect){
	showfunc_opt("VirtualAlloc( lpAddress %p, dwSize: %d, flAllocationType: %d, flProtect:%d )", lpAddress, dwSize, flAllocationType, flProtect);
	#ifdef USE_Windows_VirtualAlloc
	return VirtualAlloc(lpAddress, dwSize, flAllocationType, flProtect); 
	#else
	if((flAllocationType & 0x01000) == 0x01000){
		return instance_AllocManager.ManagedCalloc(dwSize, sizeof(char));
	}else{
		showinf("Warning VirtualAlloc","");
		return 0;//damn VirtualAlloc( lpAddress 00000000, dwSize: 65536, flAllocationType: 12288, flProtect:4 )
	}
	#endif
	
}
  
//!WINBOOL WINAPI VirtualProtect (LPVOID lpAddress, SIZE_T dwSize, DWORD flNewProtect, PDWORD lpflOldProtect)
inline WINBOOL WINAPI pipe_VirtualProtect (LPVOID lpAddress, SIZE_T dwSize, DWORD flNewProtect, PDWORD lpflOldProtect){
	showfunc_opt("VirtualProtect( lpAddress %p, dwSize: %d, flNewProtect: %d, lpflOldProtect:%p )", lpAddress, dwSize, flNewProtect, lpflOldProtect);
	#ifdef USE_Windows_VirtualAlloc
    return VirtualProtect(lpAddress, dwSize, flNewProtect, lpflOldProtect); 
	#else
	return true;
	#endif
}

//!BOOL VirtualFree(LPVOID lpAddress,SIZE_T dwSize,DWORD  dwFreeType)
inline BOOL WINAPI pipe_VirtualFree(LPVOID lpAddress,SIZE_T dwSize,DWORD  dwFreeType){
	showfunc_opt("VirtualFree( lpAddress %p, dwSize: %d, dwFreeType:%d )", lpAddress, dwSize, dwFreeType);
	#ifdef USE_Windows_VirtualAlloc
    return VirtualFree(lpAddress, dwSize, dwFreeType); 
	#else
	if((dwFreeType & 0x08000) == 0x08000){
		return instance_AllocManager.ManagedFree(lpAddress);
	}else{
		return true;
	}
	#endif
}