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


//! void * _aligned_malloc(size_t size,size_t alignment)
inline void* imp_aligned_malloc(size_t size,size_t alignment){
	showfunc_opt("aligned_malloc( size: %d, alignment: %d )", size,alignment);
	void* p1; // original block
    void** p2; // aligned block
    int offset = alignment - 1 + sizeof(void*);
    if ((p1 = (void*)malloc(size + offset)) == NULL)
    {
       return NULL;
    }
    p2 = (void**)(((size_t)(p1) + offset) & ~(alignment - 1));
    p2[-1] = p1;
    return p2;
}
//!void _aligned_free (void *memblock)
inline void imp_aligned_free(void *memblock){
	showfunc_opt("aligned_free( memblock: %p )", memblock);
	if(memblock != 0){
		free(((void**)memblock)[-1]);
	}
}
//! void * _aligned_realloc(void *memblock,size_t size,size_t alignment);
inline void* imp_aligned_realloc(void *memblock,size_t size,size_t alignment){
	showfunc_opt("aligned_realloc( size: %d, alignment: %d )", size,alignment);
	imp_aligned_free(memblock);
	return imp_aligned_malloc(size, alignment);
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

//!HANDLE WINAPI HeapCreate (DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize)
HANDLE WINAPI mem_HeapCreate(DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize){
	showfunc_opt("HeapCreate( flOptions %d, dwInitialSize: %d, dwMaximumSize:%d )", flOptions, dwInitialSize, dwMaximumSize);
	#ifdef USE_Windows_VirtualAlloc
    return HeapCreate(flOptions, dwInitialSize, dwMaximumSize); 
	#else
	if(dwInitialSize == 0){
		//If this parameter is 0 [dwInitialSize], the function commits one page. To determine the size of a page on the host computer, use the GetSystemInfo function. => page size:4K
		dwInitialSize = 1024*4;
	}
	//return instance_AllocManager.ManagedCalloc(	dwInitialSize, sizeof(char));
	return 0; //TODO create an class!?
	#endif
}
 
//!LPVOID WINAPI HeapAlloc (HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
LPVOID WINAPI mem_HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes){
	showfunc_opt("HeapAlloc( hHeap %p, dwFlags: %d, dwBytes:%d )", hHeap, dwFlags, dwBytes);
	#ifdef USE_Windows_VirtualAlloc
    return HeapAlloc(hHeap, dwFlags, dwBytes); 
	#else
	//return hHeap; //Already allocated by HeapCreate!?
	return instance_AllocManager.ManagedCalloc(	dwBytes, sizeof(char));
	#endif
	
}
//!WINBOOL WINAPI HeapFree (HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
 WINBOOL WINAPI mem_HeapFree (HANDLE hHeap, DWORD dwFlags, LPVOID lpMem){
	showfunc_opt("HeapFree( hHeap %p, dwFlags: %d, lpMem:%d )", hHeap, dwFlags, lpMem);
	#ifdef USE_Windows_VirtualAlloc
    return HeapFree(hHeap, dwFlags, lpMem); 
	#else
	return instance_AllocManager.ManagedFree(hHeap);
	//return true;
	#endif
	
}



 /*
    LPVOID WINAPI HeapAlloc (HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
   LPVOID WINAPI HeapReAlloc (HANDLE hHeap, DWORD dwFlags, LPVOID lpMem, SIZE_T dwBytes)
   WINBOOL WINAPI HeapFree (HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
 //  SIZE_T WINAPI HeapSize (HANDLE hHeap, DWORD dwFlags, LPCVOID lpMem)
 */