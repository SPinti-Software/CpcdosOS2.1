/*	
	======================================
	==  CPinti ---> Information memoire ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant d'obtenir des informations
		 sur la memoire
	
	Creation 
		19/10/2016

	Mise a jour
		20/10/2016
	
*/


#include <iostream>
#include <unistd.h>
#include "func_cpi.h"

#include <stdlib.h>

#include "meminfo.h"
#include "CPinti.h"

// ******* get_MemoireLibre *******
#define _TAILLE_PAGE 0x4000000 	// 64 Mo
#define _NOMBRE_PAGE 64 		// 4096 Mo maximum
// ********************************


namespace cpinti
{
	
	typedef union {
		size_t taille;
		char donnees[1];
	} block;

	// Conflicts avec DOS! Ne libere pas la memoire, a faire --> LibererMemoire() AllouerMemoire()
	unsigned int cpinti::Func_Cpinti::get_MemoireLibre()
	{
		asm("cli");
		unsigned int* page_64[_NOMBRE_PAGE+1] = {NULL};
		unsigned int page_INDX = 0;
		unsigned int page_max = 0;
		
		while (page_INDX <= _NOMBRE_PAGE) 
		{
			// Allouer des pages de 64Mo jusqu'a la "corruption controlee"
			page_64[page_INDX] = (unsigned int*) malloc(_TAILLE_PAGE);
			if(page_64[page_INDX] == NULL)
			{
				page_max = page_INDX - 1;
				page_INDX = 0;
				do{
					// On vide la memoire
					if(page_64[page_INDX]) { 
						free(page_64[page_INDX]);
						page_64[page_INDX] = NULL;
					}
				} while(page_INDX++ < _NOMBRE_PAGE);
			} else 
				page_INDX++; // Allouer une nouvelle page de 64mo
		}
		asm("sti");
		// On retourne le resultat en calculant la memoire libre 
		 // avec une precision de 64Mo par page
		 printf(" Nombre de pages alloues: %d\n", page_max);
		return (page_max * _TAILLE_PAGE) / 1024;
	}
	
/*
	void cpinti::Func_Cpinti::LibererMemoire(void * pointeur)
	{
		// Cette fonction EQUIVALENT AU FREE() permet de liberer la memoire
		//	pointeur	: Adresse memoire
		
		if (ptr)
			((char *) ptr)[-sizeof(size_t)] &= ~(sizeof(size_t)-1);
	}
	
	void* cpinti::Func_Cpinti::AllouerMemoire(unsigned int Taille, unsigned Allignement, unsigned int page_64)
	{
		// Cette fonction EQUIVALENT AU MALLOC() permet d'allouer un bloc de memoire
		// 	Taille		: Taille en octets
		// Allignement	: 2, 4, 8 octets.. (Inutile pour le moment)
		// 	page_64		: Nombre de bloc 64ko a utiliser (Fragmentation enchainee)
		//					( Taille / Allignement )
		
		// Verouiller TOUTES interruptions possibles!
		cpinti_entrer_section_critique(0xA0 & 0xA1 & 0xA2 & 0xA3 & 0xA4);
		
		size_t allignation = Taille + (sizeof(size_t) - 1) & ~(sizeof(size_t) - 1);
		
		zone_protege = allignation / sizeof(malloc_zone_t *);
		
		// "instance" statique
		static	block *bloc_memoire = NULL;

		// Pointeur du second bloc
		block	*second, *bloc_suivant;

		// Changer l'emplacement des donnees du segment
		block	*premier = sbrk(0);

		// Commencer avec l'emplacement du premier bloc
		if (bloc_memoire == NULL)
			bloc_memoire = premier;

		
		Taille = (Taille + sizeof(size_t) + allignation) & ~allignation;

		second = bloc_memoire;
		while(1)
		{
			// Fin de la memoire initialise
			if (second == premier)
			{
				bloc_suivant = (block *)&second->donnees[Taille];
				
				// Verifier l'etat du bloc suivant
				if (bloc_suivant < second || brk(bloc_suivant) == -1)
					return NULL; // Probleme
				
				// OK
				break;
			}
			
			// Sinon on continu, on recupere les donnes du prochain bloc indexe
			bloc_suivant = (block *)(&second->donnees[second->taille & ~allignation]);
			
			// Verifier si elle est occupee
			if ((second->length)&allignation)
			{
				second = bloc_suivant; // On recupere le bloc suivant
			}
			
			// Sinon, si le prochain bloc est pointe sur le premier segment
			//  ou qu'elle est occupee, on essaiera de splitter un nouveau bloc
			else if (bloc_suivant == premier || (bloc_suivant->length)&allignation))
			{
				size_t taille_second = second->taille;
				
				// Si le bloc est plus grand ou egale que celle demande
				if (taille_second >= Taille)
				{
					// Si elle est carrement plus grande, alors on split sa taille - la taille demande
					if (taille_second > Taille)
					{
						((block *)&second->donnees[Taille])->taille = taille_second - Taille;
					}
					// Ok
					break;
				}
				second = bloc_suivant; // On continue :)
			}
			else
			{
				// Autrement on ajoute
				second->taille += bloc_suivant->taille;
			}
		}
		
		// La taille du dernier bloc OR avec allignement
		second->taille = Taille | allignation;
		std::string Taille_dernier_bloc_STR = Func_Cpinti::to_string(second->taille);
		std::string Dernier_bloc_STR = Func_Cpinti::to_string(second);
		cpinti_dbg::CPINTI_DEBUG("Allocation -> Definition du bloc [" + Dernier_bloc_STR + "] = " + Taille_dernier_bloc_STR + "... ", 
								"Allocation -> Bloc definition [" + Dernier_bloc_STR + "] = " + Taille_dernier_bloc_STR + "... ", 
								"cpinti::Func_Cpinti", "AllouerMemoire()",
								Ligne_reste, Alerte_avertissement, Date_avec, Ligne_r_normal);

		// Retourner la taille 
		return &second->donnees[sizeof(size_t)];
		
	}
*/
}











