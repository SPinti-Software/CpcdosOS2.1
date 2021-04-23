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
	namespace file_manager
	{
		bool file_exist(const char *path)
		{
			struct stat st;

			if (stat(path, &st) != 0)
				return false;
			if (S_ISREG(st.st_mode))
				return true;
			return false;
		}

		bool dir_exist(const char *path)
		{
			struct stat st;

			if (stat(path, &st) != 0)
				return false;
			if (S_ISDIR(st.st_mode))
				return true;
			return false;
		}
	}
}