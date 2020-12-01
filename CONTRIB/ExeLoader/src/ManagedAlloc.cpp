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

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "ManagedAlloc.h"

//#include "..\..\..\OS2.1\CPinti\include\leakchk.h"

void ManagedAlloc::ManagedAlloc_(int alloc_max, const char* name)
{
	// Creer une instance unique pour chaque process
	this->managed_alloc_max = alloc_max;
	this->name = name;
}

int ManagedAlloc::ManagedAlloc_clean()
{
	fprintf(stdout, "[%s] ManagedAlloc_clean()\n", this->name);
	// Vider la memoire 
	for(int index = 0; index < this->managed_alloc_max; index++)
	{
		if(this->Alloc_Array[index] != 0)
		{
			// Liberer la memoire
			free(this->Alloc_Array[index]);
			fprintf(stdout, "%d : [0x%p] freed!\n", index, (void*) this->Alloc_Array[index]);
		}
	}
	return 0;
}

bool ManagedAlloc::ManagedFree(void* ptr)
{
	// Vider un emplacement connu
	fprintf(stdout, "[%s] ManagedFree() [0x%p]\n", this->name, (void*) ptr);
	if(ptr != 0)
		#ifdef USE_sbrk
		if(ptr < sbrk(0)){
		#endif
			for(int index = 0; index < this->managed_alloc_max; index++)
				if(this->Alloc_Array[index] == ptr)
				{
					free(ptr);
					this->Alloc_Array[index] = 0;
					return true;
				
				}
		#ifdef USE_sbrk
		}else{
			fprintf(stdout, "[%s] ManagedFree() !! WARNING SEGMENT VIOLATION !! Max memory zone [0x%p]\n", this->name, sbrk(0));
		}
		#endif
	return false;
}

void* ManagedAlloc::ManagedMalloc(size_t size__)
{
	// Chercher un emplacement vide et malloc dedans!
	fprintf(stdout, "[%s] ManagedMalloc() %d ", this->name, (int) size__);
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index] == 0)
		{
			this->Alloc_Array[index] = malloc(size__);
			fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index], index);
			return this->Alloc_Array[index];
		}
	
	// Plus de places
	return malloc(size__);
	
}

void* ManagedAlloc::ManagedCalloc(size_t numElem__, size_t sizeElem__)
{
	// Chercher un emplacement vide et malloc dedans!
	fprintf(stdout, "[%s] ManagedCalloc() %d ", this->name, (int) numElem__*sizeElem__);
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index] == 0)
		{
			this->Alloc_Array[index] = calloc(numElem__, sizeElem__);
			fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index], index);
			return this->Alloc_Array[index];
		}
	
	// Plus de places
	return calloc(numElem__, sizeElem__);
}


