// SPinti Software

// For CPinti Core
// Created : 20 Mars 2020
// Updated : 15 Avril 2020


#include <stdlib.h>
#include <stdio.h>

#include "ManagedAlloc.h"

// Temporaire!
void* 			m_allocation		(size_t size_mem);
void* 			c_allocation		(size_t size_mem, size_t nb_elem);
void 			f_allocation		(void* pointer);
void* 			r_allocation		(void* pointeur, size_t taille);
void* 			m_memset			(void* pointeur, int valeur, size_t taille);
unsigned long 	get_free_memory		();



void ManagedAlloc::ManagedAlloc_(size_t alloc_max, const char* filename)
{
	// Creer une instance unique pour chaque process
	Alloc_Array = (alloc_array*) m_allocation(alloc_max);
	
	this->managed_alloc_max = (int) alloc_max;
	this->name_ = filename;
}

int ManagedAlloc::ManagedAlloc_clean()
{
	// Afficher le dumpmemory AVANT
	dump_memory();
	
	fprintf(stdout, "-----------------------------------------");
	fprintf(stdout, "[%s] ManagedAlloc_clean()\n", this->name_);
	
	
	// Vider la memoire 
	for(int index = 0; index < this->managed_alloc_max; index++)
	{
		if(this->Alloc_Array[index].address != NULL)
		{
			// Liberer la memoire
			f_allocation(this->Alloc_Array[index].address); // , __FILE__, __LINE__);
			fprintf(stdout, "%d : [0x%p] freed!\n", index, (void*) this->Alloc_Array[index].address);
		}
	}
	
	// Reafficher le dumpmemory APRES
	dump_memory();
	
	return 0;
}

bool ManagedAlloc::ManagedFree(void* ptr)
{
	// Vider un emplacement connu
	// fprintf(stdout, "[%s] ManagedFree() [0x%p]\n", this->name_, (void*) ptr);
	if(ptr != 0)
		for(int index = 0; index < this->managed_alloc_max; index++)
			if(this->Alloc_Array[index].address == ptr)
			{
				f_allocation(ptr); // , __FILE__, __LINE__);
				
				// Eviter de depasser les limites
				if(this->NombreFree < 4294967000)
				{
					this->NombreFree++;
				}
				
				
				this->Alloc_Array[index].address = 0;
				return true;
			}
	
	return false;
}

void* ManagedAlloc::ManagedMalloc(size_t size__)
{
	// Chercher un emplacement vide et malloc dedans!
	// fprintf(stdout, "[%s] ManagedMalloc() %d ", this->name_, (int) size__);
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index].address == 0)
		{
			this->Alloc_Array[index].address = m_allocation(size__); // , __FILE__, __LINE__);

			// Eviter de depasser les limites
			if(this->nb_alloc_do < 4294967000)
			{
				this->NombreMalloc++;
				this->nb_alloc_do++;
			}
			
			// fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index].address, index);
			return this->Alloc_Array[index].address;
		}
	
	// Plus de places
	return NULL;
	
}

void* ManagedAlloc::ManagedCalloc(size_t size__, size_t sizeElem__)
{
	// Chercher un emplacement vide et malloc dedans!
	
	// fprintf(stdout, "[%s] ManagedCalloc() %d ", this->name_, (int) size__);
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index].address == 0)
		{
			
			this->Alloc_Array[index].address = c_allocation(size__, sizeElem__); // , __FILE__, __LINE__);
			
			// Eviter de depasser les limites
			if(this->nb_alloc_do < 4294967000)
			{
				this->NombreCalloc++;
				this->nb_alloc_do++;
			}
			
			// fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index].address, index);
			return this->Alloc_Array[index].address;
		}
	
	// Plus de places
	return NULL;
}
 
void* ManagedAlloc::ManagedRealloc(void* ptr, size_t size__)
{
	// Chercher l'alloc connu, l'effacer et le remplacer
	
	// fprintf(stdout, "[%s] ManagedRealloc() %d ", this->name_, (int) size__);
	
	for(int index = 0; index < this->managed_alloc_max; index++)
		if(this->Alloc_Array[index].address == ptr)
		{
			// Pointeur trouve! On lui donne et on recupere la nouvelle adresse!
			this->Alloc_Array[index].address = r_allocation(ptr, size__); // , __FILE__, __LINE__);
			
			// Eviter de depasser les limites
			if(this->NombreRealloc < 4294967000)
			{
				this->NombreRealloc++;
			}
			
			// fprintf(stdout, "Wrote in [0x%p] -> %d\n", this->Alloc_Array[index].address, index);
			return this->Alloc_Array[index].address;
		}
	
	// Plus de places
	return NULL;
}

void ManagedAlloc::dump_memory(void)
{
	fprintf(stdout, "-----------------------------\n");
	fprintf(stdout, "- Dumpmemory - Leak checker -\n");
	fprintf(stdout, "-----------------------------\n");
	
	fprintf(stdout, " Found :\n");
	for(int b = 0; b < managed_alloc_max; b++)
	{
		if(this->Alloc_Array[b].address != 0)
			fprintf(stdout, " %d [WARNING] No freed at [0x%p]", b, (void*) this->Alloc_Array[b].address);
	}
	
	fprintf(stdout, " Results : \n");
	fprintf(stdout, " %u total memory allocations\n", nb_alloc_do);
	fprintf(stdout, " * malloc()  x%d\n", NombreMalloc);
	fprintf(stdout, " * calloc()  x%d\n", NombreCalloc);
	fprintf(stdout, " * free()    x%d\n", NombreFree);
	fprintf(stdout, " * realloc() x%d\n", NombreRealloc);
	

	fprintf(stdout, " End of list\n");
}


