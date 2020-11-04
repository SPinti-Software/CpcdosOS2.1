#include <memory>
#include <vector>
#include <cstring>
#include <cstdlib>
#include <stdio.h>
#include <stdlib.h>
#include "debug.h"
#include "func_cpi.h"

#include "cpinti.h"
/* 

char *buckets[32] = {0};
int bucket2size[32] = {0};

static inline int size2bucket(int size)
{
  int rv = 0x1f;
  int bit = ~0x10;
  int i;

  if (size < 4) size = 4;
  size = (size+3)&~3;

  for (i=0; i<5; i++)
  {
    if (bucket2size[rv&bit] >= size)
      rv &= bit;
    bit>>=1;
  }
  return rv;
}

static void init_buckets()
{
  unsigned b;
  for (b=0; b<32; b++)
    bucket2size[b] = (1<<b);
}

char * test_malloc(int size)
{
  char *rv;
  int b;

  if (bucket2size[0] == 0)
    init_buckets();

  b = size2bucket(size);
  if (buckets[b])
  {
    rv = buckets[b];
    buckets[b] = *(char **)rv;
    return rv;
  }

  size = bucket2size[b]+4;
  rv = (char *)sbrk(size);

  *(int *)rv = b;
  rv += 4;
  return rv;
}

void test_free(char *ptr)
{
  int b = *(int *)(ptr-4);
  *(char **)ptr = buckets[b];
  buckets[b] = ptr;
}

char * test_realloc(char *ptr, int size)
{
  char *newptr;
  int oldsize = bucket2size[*(int *)(ptr-4)];
  if (size <= oldsize)
    return ptr;
  newptr = (char *)test_malloc(size);
  memcpy(ptr, newptr, oldsize);
  test_free(ptr);
  return newptr;

}




void* cpc_malloc(unsigned int taille, char const*nomFichier, int NumeroLigne) 
{
	// Remplacement du malloc du C/C++ par celui du Cpcdos
	
	std::string taille_STR = cpinti::Func_Cpinti::to_string((unsigned int) taille);
	std::string NumLigne_STR = cpinti::Func_Cpinti::to_string((unsigned int) NumeroLigne);
	std::string nomFichier_STR = std::string(nomFichier);
	
	nomFichier_STR = nomFichier_STR.substr(nomFichier_STR.rfind("\\"));
	
	cpinti_dbg::CPINTI_DEBUG("Allocation memoire : " + taille_STR + " octets ... ", 
								"Memory allocation :" + taille_STR + " bytes ... ",
								"cpc_malloc", nomFichier_STR + ":" + NumLigne_STR, Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
								
	// void* resultat = test_malloc(taille);

	// ALLOCATEUR allocc = new ALLOCATEUR();
	// allocc.taille(taille);
	
	// void* resultat = (void*) allocc.get()
	
	
	// std::string ADR = "0x" + cpinti::Func_Cpinti::to_str_hex((unsigned int) resultat);
	
	// cpinti_dbg::CPINTI_DEBUG("OK [0x" + ADR + "]", 
							 // "OK [0x" + ADR + "]",
							// "", "", Ligne_saute, Alerte_action, Date_sans, Ligne_r_normal);
	
	return 0;
	

}

void* cpc_calloc(unsigned int taille, char const*nomFichier, int NumeroLigne) 
{
	// Remplacement du malloc du C/C++ par celui du Cpcdos
	
	std::string taille_STR = cpinti::Func_Cpinti::to_string((unsigned int) taille);
	std::string NumLigne_STR = cpinti::Func_Cpinti::to_string((unsigned int) NumeroLigne);
	std::string nomFichier_STR = std::string(nomFichier);
	
	nomFichier_STR = nomFichier_STR.substr(nomFichier_STR.rfind("\\"));
	
	cpinti_dbg::CPINTI_DEBUG("Callocation memoire : " + taille_STR + " octets ... ", 
								"Memory callocation :" + taille_STR + " bytes ... ",
								"cpc_malloc", nomFichier_STR + ":" + NumLigne_STR, Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
							
		
	// void* resultat = std::memset(test_malloc(taille), '\0', taille);
	
	// std::allocator<void*> (alloc, taille);
	
	// void* resultat = ::operator new(taille);
	
	// resultat = ::memset(resultat, 0, taille);
	
	// ALLOCATEUR allocc = new ALLOCATEUR();
	// allocc.taille(taille);
	// allocc.clear();
	
	// void* resultat = (void*) allocc.get()

	
	// std::string ADR = "0x" + cpinti::Func_Cpinti::to_str_hex((unsigned int) resultat);
	
	// cpinti_dbg::CPINTI_DEBUG("OK [0x" + ADR + "]", 
							 // "OK [0x" + ADR + "]",
							// "", "", Ligne_saute, Alerte_action, Date_sans, Ligne_r_normal);
						
	
	return 0;
	
}

void* cpc_realloc(void* Pointeur, int taille, char const*nomFichier, int NumeroLigne) 
{
	// Remplacement du malloc du C/C++ par celui du Cpcdos
	
	std::string Pointeur_STR = cpinti::Func_Cpinti::to_string((unsigned int) Pointeur);
	std::string NumLigne_STR = cpinti::Func_Cpinti::to_string((unsigned int) NumeroLigne);
	std::string taille_STR = cpinti::Func_Cpinti::to_string((unsigned int) taille);
	std::string nomFichier_STR = std::string(nomFichier);
	
	nomFichier_STR = nomFichier_STR.substr(nomFichier_STR.rfind("\\"));
	
	std::string ADR1 = "0x" + cpinti::Func_Cpinti::to_str_hex((unsigned int) Pointeur);
	
	cpinti_dbg::CPINTI_DEBUG("Reallocation memoire : [0x" + ADR1 + "] " + taille_STR + " octets ... ", 
								"Memory reallocation : [0x" + ADR1 + "] " + taille_STR + " bytes ... ",
								"cpc_malloc", nomFichier_STR + ":" + NumLigne_STR, Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
							
		
	// void* resultat = test_realloc((char*)Pointeur, taille);
	
	// ALLOCATEUR allocc = new ALLOCATEUR();
	// allocc.taille(taille);
	// allocc.clear();
	
	// void* resultat = (void*) allocc.get()
	
	// std::memcpy(resultat, Pointeur, taille);
	
	// ::operator delete(Pointeur);
	
	// std::string ADR2 = "0x" + cpinti::Func_Cpinti::to_str_hex((unsigned int) resultat);
	
	// cpinti_dbg::CPINTI_DEBUG("OK [0x" + ADR2 + "]", 
							 // "OK [0x" + ADR2 + "]",
							// "", "", Ligne_saute, Alerte_action, Date_sans, Ligne_r_normal);
							
	
	return 0;
	
}

void cpc_free(void* Pointeur, char const*nomFichier, int NumeroLigne) 
{
	// Remplacement du malloc du C/C++ par celui du Cpcdos
	
	std::string Pointeur_STR = cpinti::Func_Cpinti::to_string((unsigned int) Pointeur);
	std::string NumLigne_STR = cpinti::Func_Cpinti::to_string((unsigned int) NumeroLigne);
	std::string nomFichier_STR = std::string(nomFichier);
	
	nomFichier_STR = nomFichier_STR.substr(nomFichier_STR.rfind("\\"));
	
	cpinti_dbg::CPINTI_DEBUG("Deallocation memoire :" + Pointeur_STR, 
								"Memory deallocation :" + Pointeur_STR,
								"KERNEL", nomFichier_STR + ":" + NumLigne_STR, Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
	

	// test_free((char*)Pointeur);
	// ::operator delete(Pointeur);
}





 */