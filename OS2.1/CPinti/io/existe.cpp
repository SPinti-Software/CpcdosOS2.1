/*	
	======================================
	==      CPinti ---> Input/Output    ==
	==                     Existence    ==
	======================================
	
	Developpe entierement par Sebastien FAVIER
	
	Description
		Module de test d'existence CPinti Core(tm) pour Cpcdos OSx.
	
	Creation 
		02/10/2017
	

	Mise a jour
		10/04/2020
		
		10/04/2020 - Correction state() - crash BT +0x6 (Ov3rl0w 09-AVRIL-2020)


*/
#include <memory>
#include <iostream>
#include <sys/stat.h>
#include "io.h"
#include "CPinti.h" // Doevents
#include "debug.h" 


namespace cpinti 
{
	namespace gestionnaire_fichier
	{ 
		// ===========================================================================
		// ============================ FICHIER EXISTE ===============================
		// ===========================================================================
		
		bool Fichier_Existe(const char* Chemin)
		{
			// Cette fonction permet de tester si un fichier existe
			// Retourne
			//	0 : Non disponible
			//	1 : OK
			
			struct stat stat_instance;
			
			stat(Chemin, &stat_instance);
			
			
			return S_ISREG(stat_instance.st_mode);
			
		}
		
		
		// ===========================================================================
		// =========================== REPERTOIRE EXISTE =============================
		// ===========================================================================
	
		bool Repertoire_Existe(const char *Chemin) 
		{
			struct stat stat_instance;
			
			if (stat(Chemin, &stat_instance) != 0)
				return false;
			
			if(S_ISDIR(stat_instance.st_mode) > 0)
				return true;
			
			return false;
		}
	}
}