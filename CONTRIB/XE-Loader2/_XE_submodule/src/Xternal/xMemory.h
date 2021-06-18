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
#ifndef HDef_xMemory
#define HDef_xMemory
#include "Xternal/Types.h"

fn void* xx_malloc   (size_t size);
fn void*  x_malloc   (size_t num, size_t size);
fn void*  x_calloc   (size_t num, size_t size);
fn void*  x_mallocpy (void* src, size_t num, size_t size);
fn void*   _realloc  (void* ptr, size_t size);
fn void    _free     (void* ptr);


#define _malloc(num, type) (type*)x_malloc(num, sizeof(type))
#define _calloc(num, type) (type*)x_calloc(num, sizeof(type))


#ifdef D_NO_INTRINSIC
	GzFunc void* x_memmove ( void* destination, const void * source, size_t num );
	GzFunc void* x_memset ( void* ptr, int value, size_t num );						 //intrinsic
	GzFunc void* x_memcpy ( void* destination, const void * source, size_t num ); 	 //intrinsic
	#define _memmove x_memmove
	#define _memset  x_memset
	#define _memcpy  x_memcpy
#else
	#include <stdlib.h>
	#define _memmove memmove
	#define _memset  memset
	#define _memcpy  memcpy
#endif


#define _mallocpy(src, num, type) (type*)x_mallocpy((type*)src, num, sizeof(type))


#ifdef D_MemoryCheck
fn int atExit_ShowMemLeak();
#else 
#define atExit_ShowMemLeak() 0
#endif


#endif
