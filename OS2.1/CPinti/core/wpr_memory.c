/*	
	======================================
	==       CPinti ---> wrapper MEM   ==
	======================================
	
	Developpe entierement par SPinti Software

	Description
		Module permettant l'acces aux fonctionnalites 
		 d'ecriture, lecture des fichiers sur support
	
	Creation 
		13/04/2020


	Mise a jour
		16/04/2020

*/
#include <strings.h>
#include <stdlib.h>
#include <stdio.h>
#include <dpmi.h>
#include <string.h>
#include <unistd.h>
#include "cpinti.h"
#include "debug.h"
#include "func_cpi.h"

#include "ManagedAlloc.h"

#include "mem_page.h"

const int MAX_ManagedAlloc_BLOCS = 4000000; // 4 Mo de table
const int MAX_MemoryTables_BLOCS = 4000000; // 4 Mo RAM

static int				Nb_alloc_before_alloc 	= 0;
 

extern "C" void* 	cpc_malloc	(size_t mem_size);
extern "C" void* 	cpc_calloc	(size_t mem_size, size_t NbElem);
extern "C" void 	cpc_free	(void* pointer);
extern "C" void*	cpc_realloc	(void* pointeur, size_t taille);
extern "C" void* 	cpc_memset	(void* pointeur, int valeur, size_t taille);
extern "C" char* 	cpc_strcpy	(char* destination, const char* source);
extern "C" char* 	cpc_strncpy (char* destination, const char* source, size_t taille);
extern "C" char* 	cpc_strncat	(char* destination, const char* source, size_t num);
extern "C" int 		cpc_clean	();
extern "C" void 	cpc_printf	(const char* txt);



bool initialized = false;


// void *__stack_chk_guard = (void *)0xdeadbeef;

void __stack_chk_fail(void)
{
    CODE_ERREUR = 4;
	fprintf(stdout, "Stack smashing detected.\n");
	
    abort();
}



void cpc_printf(const char* txt)
{
	// fprintf(stdout, txt);
	// FILE* fichier = fopen("fb_debug.txt", "a");
	// fprintf(fichier, txt);
	// fclose(fichier);
	
}

ManagedAlloc 	internal_AllocManager;




void affiche();
void affiche()
{
	
}

void* cpc_malloc(size_t mem_size)
{

	// nombre_malloc++;


	return m_allocation(mem_size);
	 
	
	if(initialized == false)
	{
		// Lancer une instance du ManagedAlloc
		internal_AllocManager.ManagedAlloc_(MAX_ManagedAlloc_BLOCS, (const char*) __FILE__);
		initialized = true;
	}
	
	return internal_AllocManager.ManagedMalloc(mem_size);
	
}

void* cpc_calloc(size_t mem_size, size_t NbElem)
{
	
	
	// nombre_calloc++;

	
	return	c_allocation(mem_size, NbElem);;
	
	
	if(initialized == false)
	{
		// Lancer une instance du ManagedAlloc
		internal_AllocManager.ManagedAlloc_(MAX_ManagedAlloc_BLOCS, (const char*) __FILE__);
		initialized = true;
	}
	
	return internal_AllocManager.ManagedCalloc(mem_size, NbElem);
	
}

void cpc_free(void* pointer)
{
	 

	// nombre_free++;
		

	f_allocation(pointer);
	return;
	
	internal_AllocManager.ManagedFree(pointer);
}

void* cpc_realloc(void* pointeur, size_t taille)
{
	
	// nombre_realloc++;
	// if(nombre_malloc <= Nb_alloc_before_alloc)
	// {
		// return __real_realloc(pointeur, taille);
	// }
	
	return r_allocation(pointeur, taille);
	
	if(initialized == false)
	{
		// Lancer une instance du ManagedAlloc
		internal_AllocManager.ManagedAlloc_(MAX_ManagedAlloc_BLOCS, (const char*) __FILE__);
		initialized = true;
	}
	
	return internal_AllocManager.ManagedRealloc(pointeur, taille);
	
}

void* cpc_memset(void* pointeur, int valeur, size_t taille)
{
	return m_memset(pointeur, valeur, taille);
	
	
	if(initialized == false)
	{
		// Lancer une instance du ManagedAlloc
		internal_AllocManager.ManagedAlloc_(MAX_ManagedAlloc_BLOCS, (const char*) __FILE__);
		initialized = true;
	}
	
	return m_memset(pointeur, valeur, taille);
	
}

char* cpc_strcpy (char* destination, const char* source)
{
	return m_strcpy(destination, source);
}

char* cpc_strncpy (char* destination, const char* source, size_t taille)
{
	return m_strncpy(destination, source, taille);
}

char* cpc_strncat (char* destination, const char* source, size_t num)
{
	return m_strncat(destination, source, num);
}


int cpc_clean()
{
	return internal_AllocManager.ManagedAlloc_clean();
}


////////////////////////////////////////////////////////////////
///                  ALLOCATION MEMOIRE                      ///
////////////////////////////////////////////////////////////////

void initialiser_memoire()
{  
	// Signaler que la memoire est initialise
	memoire_initialise = true;
	
	// Initialiser un bloc de memoire
	if(MEM_DEBUG) fprintf(stdout, "Initialiser_memoire() ... \n");
	
	// Initialiser et mettre a jour la memoire libre
	get_free_memory(); 
	 
	Addresse_before_alloc = sbrk(0);
	
	/* Petits calculs pour pré-departager la memoire RAM
		MEMOIRE RAM / 1024    		= Nombre pages
		(MEMOIRE RAM / 1024) * 4	= Allocations
	 
	*/
	// Page_MAX = ((unsigned int) (MEMOIRE_LIBRE_ACTUEL / Page_Size));
	
	// Alloc_per_page_MAX = ((unsigned int) Page_MAX*12);
	 
	Page_MAX = (unsigned int) 100;
	
	// 5 tableau de base
	Alloc_nb_MAX = (unsigned int) 1000000;
	 
	if(MEM_DEBUG) fprintf(stdout, " * Creating  memory table structure ... ");
	// Preparer la structure d'allocation memoire
	mem_table_ptr = (_mem_alloc_t*) exp_segment(Alloc_nb_MAX * sizeof(_mem_alloc_t));
	
	// Initialiser la memoire a zero
	m_memset(mem_table_ptr, 37, Alloc_nb_MAX * sizeof(_mem_alloc_t));// %
	
	// Forcer l'initialisation de la taille a ZERO
	for(unsigned int b = 0; b < Alloc_nb_MAX; b++)
		mem_table_ptr[b].taille = 0;
	
	if(MEM_DEBUG) fprintf(stdout, "[OK]\n");

	if(MEM_DEBUG) fprintf(stdout, " * Creating page structure ... ");
	
	// Initialiser la structure "page" en memoire
	page = (_page_t*) exp_segment(Page_MAX * sizeof(_page_t));
	
	// Initialiser la memoire a zero
	m_memset(page, 38, Page_MAX * sizeof(_page_t)); 
	
	if(MEM_DEBUG) fprintf(stdout, "[OK]\n");
	
	
	unsigned long point_mem_table = 0;
	// Initialiser les donnees de la structure page
	for(unsigned int b = 0; b < Page_MAX; b++)
	{		
		/** Identification **/
		page[b].num_page 		= b;
		page[b].PID				= 0;
		page[b].libre 			= true;
		
		/** Info memoire **/
		page[b].taille			= Page_Size;
		page[b].mem_free		= page[b].taille;
		page[b].mem_used		= 0;
		page[b].mem_free_abs	= page[b].taille;
		page[b].alloc_idx		= 0;
		
		/** Page memoire **/
		page[b].offset_debut 	= NULL;	// Debut offset d'allocation
		page[b].offset_fin 		= NULL;	// Fin offset d'allocation

		/** Allocations **/
		page[b].mem_table		= NULL; // Pointeur sur la structure de la table de memoire
	
	}


	
	if(MEM_DEBUG) fprintf(stdout, "%u configured page(s)  [OK]\n", Page_MAX);
	
	// Aucune page cree, nous allons en creer une
	if(Page_cree == 0)
	{
		if(MEM_DEBUG) fprintf(stdout, "No pages in memory ! We create an factice\n\n");
		
		unsigned int NumPage = creer_page(Page_Size, 0, 0);
		
		if(MEM_DEBUG) fprintf(stdout, "Factice page number %u as been created !\n\n", NumPage);
	}
	
	
	// Verrouiller la page '0' pour qu'il ne soit pas utilisable
	page[0].libre			= false;
	page[0].mem_used 		= page[0].mem_free;
	page[0].mem_free_abs 	= 0;
	page[0].mem_free 		= 0;
	

	
}

void* get_begin_offset_page_addr(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner le pointeur de debut d'une page
	return page[NumPAGE].offset_debut;
}

void* get_end_offset_page_addr(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner le pointeur de debut d'une page
	return page[NumPAGE].offset_fin;
}

size_t get_page_size(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner la taille de la page
	return page[NumPAGE].taille;
}

size_t get_page_mem_free(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner la taille de la page
	return page[NumPAGE].mem_free;
}

size_t get_page_mem_free_abs(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner la taille de la page
	return page[NumPAGE].mem_free_abs;
}

size_t get_page_mem_used(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner la taille de la page
	return page[NumPAGE].mem_used;
}

unsigned int get_number_alloc_page(unsigned int NumPAGE)
{
	// Cette fonction permet de retourner le nombre d'allocations effectues dans la page
	return page[NumPAGE].nombre_alloc;
}


unsigned int get_numbers_of_pages()
{
	// Cette fonction permet de connaitre le nombre de pages crees
	return Page_cree;
}

unsigned int creer_page(size_t taille, unsigned int PID, size_t preference)
{
	// Creer une nouvelle page memoire et renvoie son numero
	
	
	if(MEM_DEBUG) fprintf(stdout, "creer_page(size:%zu, pid:%u, preference:%zu) ... \n\n", taille, PID, preference);
	
	if(Page_cree >= Page_MAX)
	{
		CODE_ERREUR = _ERR_PAGGING_FULL_;
		if(MEM_DEBUG) fprintf(stdout, "\n[ERROR %i] creer_page() : Sorry, you can't create more that %u pages!\n", CODE_ERREUR, Page_MAX);
		
		if(BREAK_ABORT)
			abort();
		else
			break_gdb();
	}

	
	position = 0;
	
	// Parcourir toutes les pages
	for(unsigned int b = 0; b < Page_MAX ; b++)
	{
		if(page[b].libre == true)
		{

			if(MEM_DEBUG) fprintf(stdout, " --> Starting\n");
			
			
			/** Identification **/
			page[b].num_page 		= b;
			page[b].PID				= PID;
			page[b].libre 			= false;
			
			if(MEM_DEBUG) fprintf(stdout, " --> Index attribution : %u\n", page[b].num_page);
			if(MEM_DEBUG) fprintf(stdout, " --> PID attribution   : %u\n", page[b].PID);
			
			// Si exceptionnellement une allocation a besoin d'un espace de stockage plus grande
			if(preference > taille - (IndexZero + magic_flag_size))
			{
				taille = preference + IndexZero + magic_flag_size + 1;
				if(MEM_DEBUG) fprintf(stdout, " !! Allocation have need more memory (Probably due to fictive ZERO area + %u bytes or magic end flag of %u). Redefinition page size to %zu bytes\n", IndexZero, magic_flag_size, taille);
				
			}
			
			/** Info memoire **/
			page[b].taille			= taille;
			
			// Si la taille est IMPAIRE
			if((page[b].taille % 2) == 1)
			{
				if(MEM_DEBUG) fprintf(stdout, " !! Pagging size isn't pair. We adding 1 byte\n");
				taille += 0x00000001;
				page[b].taille = taille;
				
			}
			
			page[b].mem_free		= taille - IndexZero;
			page[b].mem_free_abs	= taille - IndexZero;
			page[b].mem_used		= IndexZero;

			
			if(MEM_DEBUG) fprintf(stdout, " --> Page size         : %zu bytes\n"	, page[b].taille);
			if(MEM_DEBUG) fprintf(stdout, "                       : %zu Ko\n"		, (page[b].taille/1024));
			if(MEM_DEBUG) fprintf(stdout, "                       : %zu Mo\n"		, ((page[b].taille/1024)/1024));
			
			/** Page memoire **/
			

			page[b].offset_debut 	= (void*) exp_segment(page[b].taille);											// Debut offset d'allocation
			page[b].offset_fin 		= (void*) ((unsigned long) page[b].offset_debut + (unsigned long) page[b].taille - 0x00000001);	// Fin offset d'allocation
			
			// if(MEM_DEBUG) fprintf(stdout, " --> Main offset       : 0x%p with %u bytes data structure\n", page[b].offset, sizeof(_page_t));
			if(MEM_DEBUG) fprintf(stdout, " --> Offset begin      : 0x%p\n", page[b].offset_debut);
			if(MEM_DEBUG) fprintf(stdout, " --> Offset end        : 0x%p\n", page[b].offset_fin);
			
			bool trouve = false;
			unsigned int b_t;
			for(b_t = 0; b_t < Alloc_nb_MAX; b_t++)
			{
				if((mem_table_ptr[b_t].taille == 0) && (mem_table_ptr[b_t].tag_ID != 0x21))
				{
					page[b].mem_table		=  (_mem_alloc_t*) &mem_table_ptr[b_t];
					trouve = true;
					break;
				}
			}
			
			// Si pas d'emplacements dispo, STOP!
			if(trouve == false)
			{
				CODE_ERREUR = _ERR_PAGGING_TABLE_FULL_;
				if(MEM_DEBUG) fprintf(stdout, "\n[ERROR %i] creer_page() : Sorry, Maximum memory table is '%u'\n", CODE_ERREUR, Alloc_nb_MAX);
				
				if(BREAK_ABORT)
					abort();
				else
					break_gdb();
			}
			
			// dernier_page_debut = page[b].offset_debut;
			// dernier_page_fin = page[b].offset_fin;

			
			// dernier_page_index = b;
			// dernier_page_table = page[b].mem_table;
			// dernier_page_table_index = b_t;
			
			// dernier_page_taille = taille;
			
			
			// *****
			m_memset(page[b].offset_debut, 0, page[b].taille); // Initialiser TOUTE la memoire a zero
			
			// Mettre des parentheses ASCII au debut et la fin de la page
			m_memset(page[b].offset_debut, 40, 1);
			m_memset(page[b].offset_fin, 41, 1);
			
			
			/** Allocations **/
			position = 1;
			// Initialiser le premier element relative a debut de la page
			page[b].mem_table[0].num_page_parent 	= b;
			position = 2;
			page[b].mem_table[0].tag_ID 			= 0x21; // !
			page[b].mem_table[0].libre 				= false;
			
			page[b].mem_table[0].taille 			= IndexZero;
			
			position = 3;
			page[b].mem_table[0].offset_debut		= (void*) ((unsigned long) page[b].offset_debut 				+ (unsigned long) 0x00000001);
			page[b].mem_table[0].offset_fin			= (void*) ((unsigned long) page[b].mem_table[0].offset_debut 	+ (unsigned long) page[b].mem_table[0].taille - 1);

			page[b].alloc_idx = 1;

			
			// 00000
			m_memset(page[b].mem_table[0].offset_debut, 48, page[b].mem_table[0].taille); // Initialiser TOUTE la memoire a zero
			
			
			// Mettre des parentheses ASCII au debut et la fin de la page
			m_memset((void*) ((unsigned long) page[b].mem_table[0].offset_debut), 91, 1); // [
			m_memset((void*) ((unsigned long) page[b].mem_table[0].offset_fin)	, 93, 1); // ]
				
			if(MEM_DEBUG) {
				fprintf(stdout, " --> First fictive ZERO alloc element table (%u bytes) created in page \n", IndexZero);
				fprintf(stdout, "      begin [0x%p]\n", page[b].mem_table[0].offset_debut);
				fprintf(stdout, "      end   [0x%p]\n", page[b].mem_table[0].offset_fin);
			}
			
			Page_cree++;
			
			if(MEM_DEBUG) fprintf(stdout, "\ncreer_page() [OK]\n");

			
			return b;
		}
	}

	return 0;
}




unsigned int check_allocation_possibility(size_t size_mem)
{
	// Cette fonction permet de verifier s'il est possible d'allouer sur une page existante ou non
	
	unsigned int NumPAGE = 0;
	
	
	// Si la memoire n'a pas ete initialisee
	if (memoire_initialise == false)
		initialiser_memoire();
	
	
	if(MEM_DEBUG) fprintf(stdout, "check_allocation_possibility() - Asking for allocate %zu bytes (+magic flag of %u bytes)\n", size_mem, magic_flag_size);
	
	// Parcourir les pages du PID pour savoir la quelle serait la mieux adaptee en premier lieu
	for(unsigned int b = 0; b < Page_cree; b++)
	{
		dernier_check_free_abs	= page[b].mem_free_abs;
		dernier_check_free		= page[b].mem_free;
		dernier_check_size 		= size_mem;
		dernier_check_index 	= b;
		
		// Si la memoire restante de la page est suffisante
		if(page[b].mem_free_abs >= (size_mem + magic_flag_size))
		{
			
			if(MEM_DEBUG) fprintf(stdout, "check_allocation_possibility() - Using page %u --> begin offset at [0x%p]\n", b, page[b].offset_debut);
			// Alors on la prend suzette!
			NumPAGE = b;

			break;
		}
	}
	
	

	// Pas de pages dispo... Pas grave, suzette va nous la creer pour nous ;)
	if(NumPAGE == 0)
	{
		// Verifier qu'il y a assez de memoire dans la page
	
		if(MEM_DEBUG) fprintf(stdout, "check_allocation_possibility() - No enough memory in all pages. Creating new page!\n");

		NumPAGE = creer_page(Page_Size, 0, size_mem);
		if(NumPAGE > 0)
			if(MEM_DEBUG) fprintf(stdout, "check_allocation_possibility() - New page %u created ! We can continue allocation operation\n", NumPAGE);
	}
	
	
	// Retourner le numero de page
	return NumPAGE;
}

void* check_free_fragmentation(unsigned int NumPAGE, size_t size_mem)
{
	// Cette fonction permet de checker s'il y a pas un "espace libre" entre deux blocs alloués
	//  ceci permet de recycler et combler la fragmentation libre de la memoire RAM d'une PAGE
	
	if(MEM_DEBUG) fprintf(stdout, "check_free_fragmentation() - Checking free fragmentation in %u...\n", NumPAGE);
	for (unsigned int i = 0; i < page[NumPAGE].alloc_idx ; i++)
	{
		if ((page[NumPAGE].mem_table[i].taille >= size_mem) && (page[NumPAGE].mem_table[i].libre == true))
		{
			if(MEM_DEBUG) fprintf(stdout, "check_free_fragmentation() - FOUND ! Fragmentation can be used at %u\n", i);
			
			/** Renseigner les infos identification **/
			page[NumPAGE].mem_table[i].num_page_parent 	= NumPAGE;
			page[NumPAGE].mem_table[i].tag_ID 			= 0x2D; // -
			page[NumPAGE].mem_table[i].libre 			= false;
			
			
			/** Renseigner les infos memoire **/
			page[NumPAGE].mem_table[i].taille 			= size_mem;
			
			page[NumPAGE].mem_free 		-= size_mem; // Reduire la memoire restante
			page[NumPAGE].mem_free_abs 	-= size_mem; // Reduire la memoire restante
			
			page[NumPAGE].mem_used 		+= size_mem; // Augmenter la memoire utilisee

			// On retourne son adresse
			return page[NumPAGE].mem_table[i].offset_debut;
		}
	}
	
	if(MEM_DEBUG) fprintf(stdout, "check_free_fragmentation() - NOT FOUND.\n");
	return NULL;
}

void* check_free_page_fragmentation(unsigned int NumPAGE, size_t size_mem)
{
	// Cette fonction permet de checker s'il y a pas un "espace libre" entre deux pages
	//  ceci permet de recycler et combler la fragmentation libre de la memoire RAM
	
	/** A FAIRE **/
	
	return NULL;
}
void* allocation_in_page(unsigned int NumPAGE, size_t size_mem)
{
	return allocation_in_page(NumPAGE, size_mem, false);
}

void* allocation_in_page(unsigned int NumPAGE, size_t size_mem, bool magicflag)
{
	// Cette fonction permet d'allouer de la memoire dans une page prete a l'accueillir
	if(magicflag == true)
	{
		if(MEM_DEBUG) fprintf(stdout, "--------------------- BEGIN MAGIC FLAG ALLOCATION --------------------- \n");
		if(MEM_DEBUG) fprintf(stdout, "allocation_in_page() - Creating new magic flag allocation (%zu bytes) zone for %u alloc index number in PAGE %u\n", size_mem, page[NumPAGE].alloc_idx, NumPAGE);	
		size_mem = magic_flag_size;
	}
	else
	{
		if(MEM_DEBUG) fprintf(stdout, "--------------------- BEGIN ALLOCATION --------------------- \n");
		if(MEM_DEBUG) fprintf(stdout, "allocation_in_page() - Creating new allocation (%zu bytes) zone for %u alloc index number in PAGE %u\n", size_mem, page[NumPAGE].alloc_idx, NumPAGE);	
	}
	
	
	// Aucune correspondance trouvee, on va creer une nouvelle zone de memoire!

	/** Renseigner les infos identification **/
	page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].num_page_parent 	= NumPAGE;
	page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].tag_ID 			= 0x2B; // +
	page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].libre 				= false;
	
	
	/** Renseigner les infos memoire **/
	page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].taille 			= size_mem;
	
	
	page[NumPAGE].mem_free_abs 	-= size_mem; // Reduire la memoire restante absolue
	page[NumPAGE].mem_free 		-= size_mem; // Reduire la memoire restante
	page[NumPAGE].mem_used 		+= size_mem; // Augmenter la memoire utilisee
	page[NumPAGE].nombre_alloc 	+= 1; // Augmenter la memoire utilisee
	
	 
	// Offset du debut par rapport a l'offset de fin du precedent tableau
	page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut = 
			(void*) ((unsigned long) page[NumPAGE].mem_table[page[NumPAGE].alloc_idx - 1].offset_fin + 
					 (unsigned long) 0x00000001); // offset_fin du tableau precedent, +1 octet
					 
	// Offset de debut + taille
	page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin = 
			(void*) (((unsigned long) page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut + 
					  (unsigned long) size_mem - 0x00000001)); // offset_fin = offset_debut + size memoire
		
	
	dernier_page_sbrk			= act_segment();
		
	dernier_page_debut 			= page[NumPAGE].offset_debut;
	dernier_page_fin 			= page[NumPAGE].offset_fin;
	
	dernier_page_table_debut 	= page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut;
	dernier_page_table_fin 		= page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin;
	
	dernier_page_free			= page[NumPAGE].mem_free;
	dernier_page_size 			= size_mem;
	dernier_page_taille 		= size_mem;
	
	dernier_page_index 			= NumPAGE;
	
	dernier_page_table 			= (void*) &page[NumPAGE].mem_table[page[NumPAGE].alloc_idx];
	
	dernier_page_table_index 	= page[NumPAGE].alloc_idx;
	
	if(page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin > act_segment())
	{
		
		CODE_ERREUR = _ERR_PAGGING_TABLE_OVERFLOW;
		if(MEM_DEBUG) fprintf(stdout, "\n[ERROR %i] creer_page() : Sorry, runtime stopped memory table overflow detected!\nOverflow end table detected at [0x%p] Addressable max is [0x%p]\n", CODE_ERREUR, page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin, dernier_page_sbrk);

		if(BREAK_ABORT)
			abort();
		else
			break_gdb();

	}
	
	if(magicflag == true)
	{
		if(MEM_DEBUG) fprintf(stdout, "allocation_in_page() - Writing magic flag bytes index %u --> Memory offset from [0x%p] to [0x%p] ...", page[NumPAGE].alloc_idx, page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut, page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin);
		strcpy((char*) page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut, (char*) magic_flag);
		if(MEM_DEBUG) fprintf(stdout, "[OK]\n");
	}
	else
	{
		if(MEM_DEBUG) 
		{
			// Mettre le numero d'alloc du debut a la fin
			m_memset(page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut, (int) (48 + page[NumPAGE].alloc_idx) , page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].taille); // Initialiser TOUTE la memoire a zero
			
			// Mettre des crochets ASCII au debut et la fin de la page
			m_memset((void*) ((unsigned long) page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut)	, 91, 1); // [
			m_memset((void*) ((unsigned long) page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin)		, 93, 1); // ]
		}
		else
			m_memset(page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut, 0, page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].taille); // Initialiser TOUTE la memoire a zero
	}
	
		
	
	if(page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut != NULL)
	{

		if(MEM_DEBUG) fprintf(stdout, "allocation_in_page() - For %u --> Memory offset from [0x%p] to [0x%p]\n", page[NumPAGE].alloc_idx, page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_debut, page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].offset_fin);
		
		
		if(magicflag == false)
		{
			LAST_Alloc_table_idx 	= page[NumPAGE].alloc_idx;
			LAST_Alloc_page_idx 	= NumPAGE;
		}
		
		/** Incrementer le nombre max d'alloc **/
		page[NumPAGE].alloc_idx++;

		if(MEM_DEBUG) fprintf(stdout, "allocation_in_page() - [OK]\n\n");
		
		
		// On ajoute le magic flag juste apres
		if(magicflag == false) 
		{
			for(unsigned int bf = 0; bf < magic_flag_nombre_MAX; bf++)
			{
				if(Magic_Flag_used[bf] == false)
				{
					Magic_Flag_used[bf] 	= true;
					
					// Renseigner les informations d'allocation de cette memoire
					Magic_Flag_Page[bf] 	= NumPAGE;
					Magic_Flag_Table[bf] 	= page[NumPAGE].alloc_idx-1;
					
					
					
					Magic_Flag_addr[bf] =  allocation_in_page(NumPAGE, magic_flag_size, true);
					
					page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].index_magicflag = bf;
					
					// Sauvegarder la tracde du stack
					Magic_Flag_stack_0[bf] = __builtin_return_address(0);
					Magic_Flag_stack_1[bf] = __builtin_return_address(1);
					Magic_Flag_stack_2[bf] = __builtin_return_address(2);
					Magic_Flag_stack_3[bf] = __builtin_return_address(3);
					
					if(STAT_DEBUG) nombre_malloc++;
					
					if(MEM_DEBUG) fprintf(stdout, "allocation_in_page() - Magic_Flag_addr[%u] subscribed!\n", bf);
					break;
				}
			}
			
		}
		
		
		
		
		if(magicflag == true)
		{
			if(MEM_DEBUG) fprintf(stdout, "                     END FLAG ALLOCATION\n");
			
			// Retourner le pointeur (-1 pour le alloc_idx++) 
			return page[NumPAGE].mem_table[page[NumPAGE].alloc_idx-1].offset_debut;
		}	
		else
		{
			if(MEM_DEBUG) fprintf(stdout, "----------------------- END ALLOCATION --------------------- \n");
			// Retourner le pointeur (-2 pour le alloc_idx++ du sans flag + avec flag)
			return page[NumPAGE].mem_table[page[NumPAGE].alloc_idx-2].offset_debut;
		}
	}
	else
	{
		// Oops probleme !!
		if(MEM_DEBUG) fprintf(stdout, "[ERROR] allocation_in_page() - Unable to clean memory in the new location\n");
		if(MEM_DEBUG) fprintf(stdout, "----------------------------------------------\n");
		
		// Liberer la zone
		page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].libre = true;
		
		// Et retourner un NULL
		return NULL;
	}
}

unsigned int get_page__where_is_pointer(void* Pointeur)
{
	// Cette fonction permet de savoir dans quelle page le pointeur se situe
	
	for (unsigned int NumPAGE = Page_cree; NumPAGE >= 1; NumPAGE--)
	{
		
		// S'il y a des elements alloue
		if(page[NumPAGE].alloc_idx > 0)
		{
			// Checker si le pointeur se trouve DANS la zone de memoire
			if(( (unsigned long) page[NumPAGE].offset_debut < (unsigned long) Pointeur) &&
				((unsigned long) page[NumPAGE].offset_fin 	> (unsigned long) Pointeur))
			{
				if(MEM_DEBUG) fprintf(stdout, "get_page__where_is_pointer() - page[%u].alloc_idx:%u - [0x%p]\n", NumPAGE, page[NumPAGE].alloc_idx, Pointeur);
				if(MEM_DEBUG) fprintf(stdout, " TROUVE ! \n");
				// On a trouve ou se situe le pointeur
				return NumPAGE;
			}
		}
	}
	
	// Pas trouve!
	return 0;
}


unsigned int get_allocation_table__where_is_pointer(unsigned int NumPAGE, void* Pointeur)
{
	// Cette fonction permet de connaitre le numero d'index d'emplacement de l'allocation par rapport a la page
	
	for(unsigned int index_table = page[NumPAGE].alloc_idx; index_table > 0; index_table--)
	{
		
		
		// On cherche l'emplacement exact du pointeur
		if(page[NumPAGE].mem_table[index_table].offset_debut == Pointeur)
		{
			if(MEM_DEBUG) fprintf(stdout, "get_allocation() - page[%u].mem_table[%u].offset_debut [0x%p] == [0x%p]\n", NumPAGE, index_table, page[NumPAGE].mem_table[index_table].offset_debut, Pointeur);
			if(MEM_DEBUG) fprintf(stdout, " YEAH TROUVE ! \n");
			// emplacement de la structure via pointeur trouve dans la page!
			return index_table;
		}
	}
	
	// Non trouve
	return 0;
}

bool freeing_page(unsigned int NumPAGE)
{
	// Cette fonction permet de nettoyer et liberer une page en memoire RAM
	bool results = false;
	
	if(MEM_DEBUG) fprintf(stdout, "freeing_page() : Try to freeing PAGE [0x%p] at index %u\n", page[NumPAGE].offset_debut, NumPAGE);
	
	// Parcourir tous les tables de memoires
	for(unsigned int index_table = page[NumPAGE].alloc_idx; index_table >= 1 ; index_table--)
	{
		if(MEM_DEBUG) fprintf(stdout, "freeing_page() : Try to freeing ALLOCATION [0x%p] at index %u\n", page[NumPAGE].mem_table[index_table].offset_debut, index_table);
		results = freeing_allocation(NumPAGE, index_table);
		if(MEM_DEBUG)
		{
			if(results == true)
			{
				if(MEM_DEBUG) fprintf(stdout, "freeing_page() : %zu bytes of memory free [0x%p] at index %u\n", page[NumPAGE].mem_table[index_table].taille, page[NumPAGE].mem_table[index_table].offset_debut, index_table);
			}
			else
			{
				if(MEM_DEBUG) fprintf(stdout, "freeing_page() : [ERROR] Unable to freeing memory!");
			}
		}
	}

	
	// Valider la memoire liberee
	if(page[NumPAGE].mem_used == 0)
	{
		if(MEM_DEBUG) fprintf(stdout, "freeing_page() : [WARNING] Residual memory detected ! (%zu bytes)\n", page[NumPAGE].mem_used);
	}
	else
	{
		if(MEM_DEBUG) fprintf(stdout, "freeing_page() : Nice! No residual memory\n");
	}
	
	// Liberer la page
	page[NumPAGE].libre = true;
	page[NumPAGE].alloc_idx = 0;
	page[NumPAGE].nombre_alloc = 0;
	
	// Liberer la memoire
	MEMOIRE_LIBRE_ACTUEL += page[NumPAGE].taille;
	
	// Reduire le nombre de pages crees
	Page_cree--;
		
	// Effacer le contenu entre le debut d'offset et la fin 
	if(m_memset(page[NumPAGE].offset_debut, 0, page[NumPAGE].taille+1) != NULL)
	{

		if(MEM_DEBUG) fprintf(stdout, "freeing_page() : [OK] %zu freed memory. PAGE [0x%p] at index %u\n", page[NumPAGE].taille, page[NumPAGE].offset_debut, NumPAGE);
		return true;
	}
	else
	{
		if(MEM_DEBUG) fprintf(stdout, "freeing_page() : [ERROR] Unable to freeing memory. PAGE [0x%p] at index %u\n", page[NumPAGE].offset_debut, NumPAGE);
		return false;
	}
	
}


bool freeing_allocation(unsigned int NumPAGE, unsigned int index_table)
{
	// Cette fonction permet de liberer une allocation qui se situe dans une page
	
	// if(MEM_DEBUG) fprintf(stdout, "P1\n");
	// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
	// if(MEM_DEBUG) fprintf(stdout, "P2\n");
	
	if(MEM_DEBUG) fprintf(stdout, "freeing_allocation() : page[%u].mem_table[%u].offset_debut : 0x%p\n", NumPAGE, index_table, page[NumPAGE].mem_table[index_table].offset_debut);
	if(m_memset(page[NumPAGE].mem_table[index_table].offset_debut, 0, page[NumPAGE].mem_table[index_table].taille) != NULL)
	{


		// if(MEM_DEBUG) fprintf(stdout, "P3\n");
		// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
		// if(MEM_DEBUG) fprintf(stdout, "P4\n");

		// si c'est le dernier alloc qui est Free, alors on dimunue la derniere memoire absolue
		if((LAST_Alloc_page_idx == NumPAGE) && (LAST_Alloc_table_idx == index_table))
			page[NumPAGE].mem_free_abs += page[NumPAGE].mem_table[index_table].taille;
		
		
		unsigned int index_mf = page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].index_magicflag;
		
		// Il s'agit d'une alloc normale qui contient l'adresse d'un magic flag
		if(index_mf > 0)
		{
			// Alors on nettoie tout ca!
			
			EFFACEMENT = true;

			if(MEM_DEBUG) fprintf(stdout, "index_mf:%u  Page[%u] Table[%u]\n", index_mf, Magic_Flag_Page[index_mf], Magic_Flag_Table[index_mf]);
			
			// Aviter la redondance
			page[NumPAGE].mem_table[page[NumPAGE].alloc_idx].index_magicflag = 0;
			
			freeing_allocation(Magic_Flag_Page[index_mf], Magic_Flag_Table[index_mf]+1);
			
			Magic_Flag_addr		[index_mf] = NULL;
			Magic_Flag_stack_0	[index_mf] = NULL;
			Magic_Flag_stack_1	[index_mf] = NULL;
			Magic_Flag_stack_2	[index_mf] = NULL;
			Magic_Flag_stack_3	[index_mf] = NULL;
			Magic_Flag_Page		[index_mf] = 0;
			Magic_Flag_Table	[index_mf] = 0;
			Magic_Flag_used 	[index_mf] = false;
			EFFACEMENT = false;
		}
				
		// On met a jour la memoire restante DANS la page
		page[NumPAGE].mem_free		+= page[NumPAGE].mem_table[index_table].taille;
		page[NumPAGE].mem_used		-= page[NumPAGE].mem_table[index_table].taille;
		page[NumPAGE].nombre_alloc	-= 1;
		
		
		// Puis on libere l'emplacement
		page[NumPAGE].mem_table[index_table].libre = true;
		
		
		// if(MEM_DEBUG) fprintf(stdout, "P5\n");
		// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
		// if(MEM_DEBUG) fprintf(stdout, "P5\n");
		
		// c'est good!
		return true;
	}
	else
	{
		// Pas good..
		return false;
	}
	
}



void* m_allocation(size_t size_mem)
{
	if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);	
	
	if(STAT_DEBUG) nombre_malloc++;
		
	int org_mem_debug = MEM_DEBUG;
	MEM_DEBUG = false;
	
	// Cette fonction remplace le malloc()
	
	unsigned int NumPAGE = 0;
	void* Allocation_fragment = NULL;

	
	// Retourner un numero de page
	NumPAGE = check_allocation_possibility(size_mem);
	
	
	
	// Si une page est trouvee, alors on va lui trouver un emplacement memoire!
	if(NumPAGE > 0)
	{
		// Verifier s'il y a pas de l'espace entre deux bloc d'allocations)
		Allocation_fragment = check_free_fragmentation(NumPAGE, size_mem);

		
		// S'il y en a pas
		if(Allocation_fragment == (void*) NULL)
		{
			// Pas de fragment libre, on va donc creer une nouvelle allocation
			//  puis retourner l'adresse memoire
			Allocation_fragment = allocation_in_page(NumPAGE, size_mem);
			
			// MEM_DEBUG = org_mem_debug;
			
			nombre_new++;
			
			dernier_malloc = Allocation_fragment;
			dernier_malloc_size = size_mem;
			
			// Chercher un depassement de memoire
			// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
	
			
			return Allocation_fragment;
		}
		else
		{
			// MEM_DEBUG = org_mem_debug;
			
			nombre_fragment++;
			
			dernier_malloc = Allocation_fragment;
			dernier_malloc_size = size_mem;
			
			// Chercher un depassement de memoire
			// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
			
			// S'il y a un fragment libre, on le prend
			return Allocation_fragment;
		}
	}
	else
	{

	
		// Pas de page trouve..
		if(MEM_DEBUG) fprintf(stderr, "\n[ERROR] No memory page avaiable for allocation...\n");
		return NULL;
	}
	
	MEM_DEBUG = org_mem_debug;
}

void* c_allocation(size_t size_mem, size_t size_elm)
{
	if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
	
	if(STAT_DEBUG) nombre_calloc++;
	// Cette fonction remplace le calloc()
	unsigned int NumPAGE = 0;
	void* Allocation_fragment = NULL;

	// Retourner un numero de page
	NumPAGE = check_allocation_possibility(size_mem*size_elm);
	
	// Si une page est trouvee, alors on va lui trouver un emplacement memoire!
	if(NumPAGE > 0)
	{
		// Verifier s'il y a pas de l'espace entre deux bloc d'allocations)
		Allocation_fragment = check_free_fragmentation(NumPAGE, size_mem*size_elm);

		
		// S'il y en a pas
		if(Allocation_fragment == (void*) NULL)
		{
			// Pas de fragment libre, on va donc creer une nouvelle allocation
			//  puis retourner l'adresse memoire
			Allocation_fragment = allocation_in_page(NumPAGE, size_mem*size_elm);
			

			// Initialiser TOUTE la memoire a zero
			m_memset(Allocation_fragment, 0, size_mem*size_elm); 
			
			dernier_calloc = Allocation_fragment;
			dernier_calloc_size = size_mem*size_elm;
			
			// Chercher un depassement de memoire
			// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
			
			return Allocation_fragment;
		}
		else
		{
			// Initialiser TOUTE la memoire a zero
			m_memset(Allocation_fragment, 0, size_mem*size_elm); 
			
			dernier_calloc = Allocation_fragment;
			dernier_calloc_size = size_mem*size_elm;
			
			// Chercher un depassement de memoire
			// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
			
			// S'il y a un fragment libre, on le prend
			return Allocation_fragment;
		}
	}
	else
	{
		// Pas de page trouve..
		if(MEM_DEBUG) fprintf(stderr, "\n[ERROR] No memory page avaiable for allocation...");
	}
	return NULL;
}


void f_allocation(void* pointer)
{
	// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
	
	// Cette fonction est le remplacement de 'free()'
	if(STAT_DEBUG) nombre_free++;
	// Trouver la page du pointeur
	unsigned int NumPAGE = get_page__where_is_pointer(pointer);
	unsigned int NumALLOC = 0;
	
	// Pointeur trouve dans la page
	if(NumPAGE > 0)
	{
		// On cherche l'index de la structure dans cette page
		NumALLOC = get_allocation_table__where_is_pointer(NumPAGE, pointer);
		
		
		if(MEM_DEBUG) fprintf(stdout, "f_allocation() in NumALLOC %u\n", NumALLOC);
		
		// Index du pointeur trouve dans la page
		if(NumALLOC > 0)
		{	
			
			
			// On efface l'allocation
			if(freeing_allocation(NumPAGE, NumALLOC) == true)
			{
				return; // OK
				
				// Chercher un depassement de memoire
				// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
			}
			else
				if(MEM_DEBUG) fprintf(stderr, "\n[ERROR] f_allocation() : Unable to erase memory\n");
		} 
	}
}
 

void* r_allocation(void* pointer, size_t size_elm)
{
	
	// Cette fonction remplace le calloc()

	if(STAT_DEBUG) nombre_realloc++;
	// Cette fonction est un remplacement de 'realloc()'
	
	if(MEM_DEBUG) fprintf(stdout, "r_allocation() : Asking for reallocation of 0x%p\n", pointer);
	
	void    *NouveauPointeur;
	
	// On cree un nouveau pointeur
	NouveauPointeur = m_allocation(size_elm);
	
	// Si un nouvel emplacement a ete cree
	if (NouveauPointeur)
	{
		// Copier de l'ANCIEN --> NOUVEAU emplacement
		memcpy(NouveauPointeur, pointer, size_elm);
	
		if(MEM_DEBUG) fprintf(stdout, "r_allocation() : old:0x%p  new:0x%p\n", pointer, NouveauPointeur);
		
		f_allocation(pointer);
		
		// Chercher un depassement de memoire
		if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
	
		return (NouveauPointeur);
	}

	return NULL;
}

void* m_memset(void* pointeur, int valeur, size_t taille)
{
	if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
	
	// Cette fonction est un remplacement de 'memset()'
	
	if((pointeur != NULL) && (taille > 0))
	{
		unsigned int index;
		unsigned char *memory = (unsigned char*) pointeur, value = valeur;

		for (index = 0; index < taille; index++)
		{
			// printf("index:%u %c\n", index, (char*) memory[index]);
			
			memory[index] = value;
		}
		
		
		// Chercher un depassement de memoire
		// if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);
		

		return (memory);

	}
	return NULL;
}

// test
char* m_strcpy(char* destination, const char* source)
{
	
	if (destination == NULL)
		return NULL;
	
	char *ptr = destination;
	
	while (*source != '\0')
	{
		*destination = *source;
		destination++;
		source++;
	}

	*destination = '\0';
	

	return ptr;
}

char* m_strncpy(char* destination, const char* source, size_t num)
{

	
	if (destination == NULL)
		return NULL;
	
	if (num <= 0)
		return NULL;
	
	
	size_t i = 0;
	while(i++ != num && (*destination++ = *source++));

	return destination;
}

char* m_strncat(char* destination, const char* source, size_t num)
{

	size_t dest_len = strlen(destination);
    size_t i;

   for (i = 0 ; i < num && source[i] != '\0' ; i++)
        destination[dest_len + i] = source[i];
    destination[dest_len + i] = '\0';
	
	// Chercher un depassement de memoire
	if(CHECK_OVERFLOW) check_memory_overflow(__FILE__, __FUNCTION__, __LINE__);

   return destination;
}


unsigned long get_free_memory()
{
	// Cette fonction permet de recuperer la memoire physique restante
	
	if(MEMOIRE_LIBRE_DEPART <= 0)
	{
		// Recuperer la memoire restante depuis dpmi (Plus precis)
		_go32_dpmi_meminfo _meminfo;
		
		int resultat = _go32_dpmi_get_free_memory_information(&_meminfo);
	
		// Recuperer la memoire de base
		MEMOIRE_LIBRE_DEPART = _meminfo.available_memory;
		MEMOIRE_LIBRE_ACTUEL = MEMOIRE_LIBRE_DEPART;
	}
	
	return MEMOIRE_LIBRE_ACTUEL;
}

void* exp_segment(size_t taille)
{
	// Cette fonction permet d'etendre "la zone memoire autorise" 
	//  afin d'eviter un joli SIGSEGV dans la gueule.
	
	// Reduire la memoire libre 
	MEMOIRE_LIBRE_ACTUEL -= (unsigned long) taille;
	

	return sbrk((int) taille);
}

void* act_segment()
{
	// Cette fonction permet de connaitre la derniere adresse memoire
	//  afin d'eviter un joli SIGSEGV dans la gueule.
	
	return sbrk(0);
}

// Pour GDB
// void* malloc(size_t taille)
// {
	// return sbrk((int) taille);
// }
 
void cpc_deb(char *dst, const char *src, unsigned int bytes )
{
	dernier_src = (char*) src;
	dernier_dst = dst;
	dernier_dst_size = bytes;
}


void print_backtrace()
{
	void* adresse_stack;
	fprintf(stderr, "ACTUAL caller stack trace :\n");
	for(unsigned int boucle = 0; boucle < 6; boucle++)
	{
		if(boucle == 0)
			adresse_stack = __builtin_return_address(0);
		if(boucle == 1)
			adresse_stack = __builtin_return_address(1);
		if(boucle == 2)
			adresse_stack = __builtin_return_address(2);
		if(boucle == 3)
			adresse_stack = __builtin_return_address(3);
		if(boucle == 4)
			adresse_stack = __builtin_return_address(4);
		if(boucle == 5)
			adresse_stack = __builtin_return_address(5);
		
		
		fprintf(stderr, " %i : [0x%08x] ", boucle, (unsigned int) adresse_stack);
		

		if((void*) adresse_stack == (void*) print_backtrace) 
			fprintf(stderr, "print_backtrace() --> This runtime for display this.");
		
		if((void*) adresse_stack == (void*) check_memory_overflow) 
			fprintf(stderr, "check_memory_overflow() --> Internal memory checker cpcdos runtime.");
		
		if((void*) adresse_stack == (void*) m_memset) 
			fprintf(stderr, "m_memset() --> Internal memory setting cpcdos runtime.");
		
		if((void*) adresse_stack == (void*) m_allocation) 
			fprintf(stderr, "m_allocation() --> Internal memory allocation cpcdos runtime.");
		
		if((void*) adresse_stack == (void*) c_allocation) 
			fprintf(stderr, "c_allocation() --> Internal memory allocation cpcdos runtime.");
		
		if((void*) adresse_stack == (void*) r_allocation) 
			fprintf(stderr, "r_allocation() --> Internal memory re-allocation cpcdos runtime.");
		
		if((void*) adresse_stack == (void*) creer_page) 
			fprintf(stderr, "creer_page() --> Internal memory pagging cpcdos runtime.");
		
		// if((void*) adresse_stack == (void*) main) 
			// fprintf(stderr, "main() --> Entry point of program.");
		
		if((void*) adresse_stack == (void*) __crt1_startup) 
		{
			fprintf(stderr, "crt1_startup() --> CRT Runtime.\n");
			break;
		} 
		fprintf(stderr, "\n");
	} 
	
	fprintf(stderr, "Previous allocation stack trace :\n");
	fprintf(stderr, " 0 : [0x%08x]\n", (unsigned int) Magic_Flag_stack_0[0]);
	fprintf(stderr, " 1 : [0x%08x]\n", (unsigned int) Magic_Flag_stack_1[1]);
	fprintf(stderr, " 2 : [0x%08x]\n", (unsigned int) Magic_Flag_stack_2[2]);
	fprintf(stderr, " 3 : [0x%08x]\n", (unsigned int) Magic_Flag_stack_3[3]);
}

unsigned int check_memory_overflow(const char* fichier, const char* fonction, int ligne)
{
	
	// Cette fonciton permet de verifier l'etat du Magic flag en fin d'allocation
	if(EFFACEMENT == false)
		for(unsigned int b = 1; b < magic_flag_nombre_MAX; b++)
		{
			if(Magic_Flag_used[b] == true)
			{
				
				if(strcmp((char*) Magic_Flag_addr[b], (char*) magic_flag) != 0)
				{
					fprintf(stderr, "[DETECT] check_memory_overflow() : Magic_Flag_addr[%u] = '%s' magic_flag = '%s'\n", b, (char*) Magic_Flag_addr[b], magic_flag);
					
					_overflow_file		= fichier;
					_overflow_function	= fonction;
					_overflow_line		= ligne;
					_overflow_page		= Magic_Flag_Page[b];
					_overflow_table		= Magic_Flag_Table[b];
					
					// C'est pas bon!
					CODE_ERREUR = _ERR_BUFFER_OVERFLOW;
					
					MEM_DEBUG = true;
					
					if(MEM_DEBUG) 
					{
						fprintf(stderr, "\n[ERROR %i] check_memory_overflow() : Memory overflow detected at [0x%p]\n --> Previous allocation from [0x%p] to [0x%p]\n --> Page:%u Table:%u  -  Function:'%s()' [%s:%i]\n\n", 
									CODE_ERREUR, 
									Magic_Flag_addr[b],
									(void*) page[Magic_Flag_Page[b]].mem_table[Magic_Flag_Table[b]].offset_debut, 
									(void*) page[Magic_Flag_Page[b]].mem_table[Magic_Flag_Table[b]].offset_fin, 
									Magic_Flag_Page[b], 
									Magic_Flag_Table[b], 
									fonction, fichier, ligne);
						
						dump_memory("Memory dump - Memory overflow area", (const void*) page[Magic_Flag_Page[b]].mem_table[Magic_Flag_Table[b]].offset_fin - 64, 128);
						
						print_backtrace();
									
						
					}
					
					if(BREAK_ABORT)
						abort();
					else
						break_gdb();
					
					return b;
				}
			}
		}
	
	return 0;
}

void break_gdb(){ }


void dump_page(unsigned int NumPAGE)
{
	printf(" **** Dumping page %u ****\n", NumPAGE);
	dump_memory("dump_page()", get_begin_offset_page_addr(NumPAGE), (const int) get_page_size(NumPAGE));
	printf(" **** END of dumping page %u ****\n", NumPAGE);
}
 
void dump_memory (const char * descritpion, const void * adresse, const int taille) 
{
    int i;
    unsigned char buff[17];
    const unsigned char * pc = (const unsigned char *)adresse;

	printf("   ==  D U M P   M E M O R Y  == \n\n");
	
    // Descritpion
    if (descritpion != NULL)
        printf ("%s:\n", descritpion);

    // Verifier taille
    if (taille == 0) {
        printf("  ZERO LENGTH\n");
        return;
    }
    else if (taille < 0) {
        printf("  NEGATIVE LENGTH: %d\n", taille);
        return;
    }

 
	// Octets par octets
    for (i = 0; i < taille; i++) {
        // Par multiple de 16 bits, on retourne a la ligne

        if ((i % 16) == 0) {
            // Pour ne pas afficher l'octet "\0"

            if (i != 0)
                printf ("  %s\n", buff);
			
			// Offset
            printf (" 0x%p -", (void*) ((unsigned long) adresse + (unsigned long) i));
        }

        // Le code hexa
        printf (" %02x", pc[i]);

        // Et le caractere ASCII affichable

		// Les non printables seront affiches par un .
        if ((pc[i] < 0x20) || (pc[i] > 0x7e))
            buff[i % 16] = '.';
        else
            buff[i % 16] = pc[i];
        buff[(i % 16) + 1] = '\0';
    }

    // Si le dernier segment c'est pas de 16 bits, on affiche les derniers caracteres
    while ((i % 16) != 0) {
        printf ("   ");
        i++;
    }

    // Et afficher le buffer final   
    printf ("  %s\n", buff);
	
	printf (" - END OF LIST -\n");
}

