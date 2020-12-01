/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *   - Sebastien FAVIER
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 */

#include "ExeLoader.h"
#ifndef EXELOADER_ManagedAlloc
#define EXELOADER_ManagedAlloc

	class ManagedAlloc
	{
		public:
		int   managed_alloc_max = 1024; //Must be first for aggregate initialization
		void* Alloc_Array[4096] = {0};
		const char* name;
		
		void  ManagedAlloc_			(int alloc_max, const char* name);
		bool  ManagedFree			(void* ptr);
		int   ManagedAlloc_clean	();
		void* ManagedMalloc			(size_t size__);
		void* ManagedCalloc			(size_t size__, size_t sizeElem__);
	};
#endif //EXELOADER_ManagedAlloc
