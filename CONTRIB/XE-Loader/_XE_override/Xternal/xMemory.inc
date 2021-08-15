/*  -== Xternal ==-
 *
 *  Utility and functions that rely on external libs for common usage
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
#include "Xternal/xMemory.h"
#include "Xternal/xIO.h"

#include <stdlib.h>
#include <string.h>

#ifdef D_MemoryCheck
uint nFPtr_Instance_Counted = 0;
static uint nAlloc_Count = 0;
static uint nAllocated = 0;
static uint nFreed = 0;
static void Alloc_Add(){
	nAlloc_Count++;
	nAllocated++;
}
static  void Alloc_Sub(){
	nAlloc_Count--;
	nFreed++;
}
fn int atExit_ShowMemLeak(){
	int ret = 0;
	_printl("I: -- ====== MEM CHECK ======= --");
	if(nAlloc_Count == 0){
		_printl("P: -- No Memory Leak -- [Allocated: %d]", nAllocated);
	}else{
		_printl("W: Has Memory leak! Leaked: %d [Allocated: %d, nFreed: %d]", nAlloc_Count, nAllocated, nFreed);
		ret = 1;
	}
	_printl("I: -- Total FPtr instance counted -- [Counted: %d]", nFPtr_Instance_Counted);
	return ret;
}
#endif


fn void* xx_malloc(size_t size){
	#ifdef D_MemoryCheck
	Alloc_Add();
	#endif
	
	void* ret = malloc(size);
		
	#ifdef D_Debug
	if(!ret) {
		err_print("Unable to malloc: size[%d]", size);
	}
	#endif
	
	return ret;
};
fn void* x_malloc(size_t num, size_t size){
	return xx_malloc(num * size);
};
fn void* x_calloc(size_t num, size_t size){
	#ifdef D_MemoryCheck
	Alloc_Add();
	#endif
	
	#if HAVE_Calloc
		return calloc(num, size);
	#else
		void* ret = malloc(size*num);
		 memset(ret, 0, size*num);
	#endif
	
	#ifdef D_Debug
	if(!ret) {
		err_print("Unable to calloc: num[%d] size[%d]", num, size);
	}
	#endif
	
	return ret;
};
fn void* x_mallocpy(void* src, size_t num, size_t size){
	#ifdef D_MemoryCheck
	Alloc_Add();
	#endif
	void* ptr =  malloc(num * size);
	return _memcpy(ptr,src, num * size);
};
fn void  _free(void* ptr){
	#ifdef D_MemoryCheck
	Alloc_Sub();
	#endif
	#ifndef D_TestIf_UsingFreedMemory
	free(ptr);
	#endif
};
fn void* _realloc(void* ptr, size_t size){
	#ifdef D_MemoryCheck
	if(ptr == 0){
	nAlloc_Count++;
	nAllocated++;
	}
	#endif
	return realloc(ptr, size);
};

#ifdef D_NO_INTRINSIC
fn void* x_memset (void* ptr, int value, size_t num ){return memset(ptr,value,num);};
fn void* x_memmove(void* destination, const void * source, size_t num ){return memmove(destination,source,num);};
fn void* x_memcpy (void* destination, const void * source, size_t num ){return memcpy(destination,source,num);};
#endif
