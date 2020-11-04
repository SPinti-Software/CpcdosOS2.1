// SPinti Software
// 20 Mars 2020


#include <stdlib.h>
#include <stdio.h>

#include "ManagedAlloc.h"

#include "leakchk.h"

void ManagedAlloc::ManagedAlloc_(int alloc_max, const char* filename)
{
	// Creer une instance unique pour chaque process
	this->managed_alloc_max = alloc_max;
	this->name_ = filename;
}

int ManagedAlloc::ManagedAlloc_clean()
{
	fprintf(stdout, "[%s] ManagedAlloc_clean()\n", this->name_);
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
	// fprintf(stdout, "[%s] ManagedFree() [0x%p]\n", this->name_, (void*) ptr);
	if(ptr != 0)
		for(int index = 0; index < this->managed_alloc_max; index++)
			if(this->Alloc_Array[index] == ptr)
			{
				free(ptr);
				this->Alloc_Array[index] = 0;
				return true;
			}
	
	return false;
}

void* ManagedAlloc::ManagedMalloc(size_t size__)
{
	// Chercher un emplacement vide et malloc dedans!
	// fprintf(stdout, "[%s] ManagedMalloc() %d ", this->name_, (int) size__);
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index] == 0)
		{
			this->Alloc_Array[index] = malloc(size__);
			// fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index], index);
			return this->Alloc_Array[index];
		}
	
	// Plus de places
	return malloc(size__);
	
}

void* ManagedAlloc::ManagedCalloc(size_t size__, size_t sizeElem__)
{
	// Chercher un emplacement vide et malloc dedans!
	// fprintf(stdout, "[%s] ManagedCalloc() %d ", this->name_, (int) size__);
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index] == 0)
		{
			this->Alloc_Array[index] = calloc(size__, sizeElem__);
			// fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index], index);
			return this->Alloc_Array[index];
		}
	
	// Plus de places
	return malloc(size__);
}


