/*	
	======================================
	==      CPinti ---> Input/Output    ==
	==                         Lecture  ==
	======================================
	
	Developpe entierement par Sebastien FAVIER
	Contributeurs
		Johann GRAF
		Leo VACHET
	
	Description
		Module lecture CPinti Core(tm) pour Cpcdos OSx.
	
	Creation 
		05/02/2015
	
	Reecriture complete 
		No.1 28/06/2015
		No.2 12/02/2016
		No.3 01/04/2016 (C98 --> C++14)
		No.4 18/10/2016 (C++14 --> C++17)
		
	Optimisation/Perfectionnements
		31 Mai 2016
		18 Octobre 2016

	Mise a jour
		02/10/2017
		
		02/10/2017	- Deplacement du code lecture/ecriture dans 2 fichiers separes
		08/05/2017 	- Petites correction et ajout du doevents
		25/01/2017 	- Ajout fonction d'ecriture de fichier 
		13/01/2017	- Fichier existe renvoie un BOOL au lieu d'un long. std::ios::fail etant un BOOL
	
*/
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include "io.h"
#include "func_cpi.h" // doevent
#include "debug.h" 
#include "core.h"


namespace cpinti 
{
	namespace gestionnaire_fichier
	{ 
		
		// ===========================================================================
		// ================================= LECTURE =================================
		// ===========================================================================
		
		bool Lire_Fichier_complet(const char* Source, const char* MODE, char *_DONNEES, unsigned long TailleFichier)
		{
			// Lire tout le contenu d'un fichier uniquement
			// Retourne :
			//	Si ok = Le contenu texte du fichier
			//	Sinon = 0
			
			// fprintf(stdout, " ****** p2\n\r");
			// fprintf(stdout, " ****** P2 _DONNEES '%s' [0x%x8]\n\r", (char*) _DONNEES), (void*) _DONNEES;
			// fflush(stdout);
			
			
			ENTRER_SectionCritique();

			// Lecture par chunks de 8Ko : rapide (fread) ET cooperatif (IRQ restores entre chunks)
			// Evite le freeze USB qui surviendrait avec un seul fread() sur toute la taille du fichier
			// Meme pattern que copier.cpp : SORTIR/doevents/ENTRER entre chaque chunk
			bool lecture_complete = false;
			FILE* Instance_Fichier;

			// Ouvrir un canal du fichier
			Instance_Fichier = fopen(Source, MODE);

			// Si c'est OPEN
			if (Instance_Fichier != NULL)
			{
				const unsigned long CHUNK_LECTURE = 8192UL;
				unsigned long position  = 0;
				unsigned long lu_chunk  = 0;

				while (position < TailleFichier)
				{
					unsigned long reste = TailleFichier - position;
					unsigned long chunk = (reste < CHUNK_LECTURE) ? reste : CHUNK_LECTURE;

					lu_chunk = (unsigned long) fread(_DONNEES + position, 1, (size_t) chunk, Instance_Fichier);
					if (lu_chunk == 0) break;
					position += lu_chunk;

					// Restaurer les IRQ et ceder le CPU entre chaque chunk (crucial sur USB)
					SORTIR_SectionCritique();
					doevents(0);
					ENTRER_SectionCritique();
				}

				// Zero-fill le reste si lecture incomplete (mode texte: CRLF->LF peut reduire position)
				if (position < TailleFichier)
					memset(_DONNEES + position, 0, (size_t)(TailleFichier - position));

				lecture_complete = (position > 0);

				// Fermer le fichier
				fclose(Instance_Fichier);

				SORTIR_SectionCritique();
				return lecture_complete;
			}
			else
			{
				SORTIR_SectionCritique();
				// Sinon probleme
				std::string Erreur_STR = std::to_string((unsigned long) strerror(errno));
					cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'ouvrir le fichier '" + std::string(Source) + "'. Raison:" + std::string(strerror(errno)), 
											 "[ERROR] Unable to open file '" + std::string(Source) + "'. Raison:" + std::string(strerror(errno)),
										 "gestionnaire_fichier", "Lire_Fichier_complet()",
							Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return false;
			}
			
		}
	}
}

