/*	
	======================================
	==      CPinti ---> Input/Output    ==
	==                         ZIP      ==
	======================================
	
	Developpe par Sebastien FAVIER
	
	Description
		Module compression/decompression ZIP CPinti Core(tm) pour Cpcdos OSx.
	
	Creation 
		14/08/2020
	
	Mise a jour
		14/08/2020
		
		
	
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
		// Librairie OpenSource depuis le SDK
		#include "zlib.h"
		
		// ===========================================================================
		// =============================== DECOMPRESSION =============================
		// ===========================================================================

		int Fichier_decompress(const char* Source, const char* Destination)
		{
			// Lire tout le contenu d'un fichier uniquement
			// Retourne :
			//	Si ok = Le contenu texte du fichier
			//	Sinon = 0
			
			
			static const char* VersionLIb = ZLIB_VERSION;
			Byte *byte_compression, *byte_decompression;
			uLong compression_taille = 10000*sizeof(int);
			uLong decompression_taille = compression_taille;
			
			
			// Verifier si la version de la lib est compatible avec celui en header
			if (zlibVersion()[0] != VersionLIb[0]) 
			{
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Version LIB incompatible!", 
											 "[ERROR] LIB version not compatible !",
										 "gestionnaire_fichier", "Fichier_decompress()",
							Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return -4;

			} 
			else 
				
			// La version de la LIB est differente, mais compatible!	
			if (strcmp(zlibVersion(), ZLIB_VERSION) != 0) 
			{
				cpinti_dbg::CPINTI_DEBUG("[AVERTISSEMENT] Version LIB differents!", 
											 "[WARNING] LIB version are differents!",
										 "gestionnaire_fichier", "Fichier_decompress()",
							Ligne_saute, Alerte_avertissement, Date_avec, Ligne_r_normal);
			}

			// Afficher temporairement dans le stdout
			printf("zlib version %s = 0x%04x, compile flags = 0x%lx\n",
					ZLIB_VERSION, ZLIB_VERNUM, zlibCompileFlags());
			
			// Allouer la zone de memoire
			byte_compression    = (Byte*)calloc((uInt)compression_taille, 1);
			byte_decompression  = (Byte*)calloc((uInt)decompression_taille, 1);
			
			// Verfier que tout est ok avant de continuer
			if (byte_compression == Z_NULL || byte_decompression == Z_NULL) 
			{
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Memoire pleine !", 
											 "[ERROR] Out of memory !",
										 "gestionnaire_fichier", "Fichier_decompress()",
							Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return -3;
			}
            
			
			free(byte_compression);
			free(byte_decompression);
			
			return 1;
			
			if(false)
			{
				// Sinon probleme
				std::string Erreur_STR = std::to_string((unsigned int) strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de decompresser '" + std::string(Source) + "'. Raison:" + std::string(strerror(errno)), 
											 "[ERROR] Unable to uncompress file '" + std::string(Source) + "'. Raison:" + std::string(strerror(errno)),
										 "gestionnaire_fichier", "Fichier_decompress()",
							Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				
				return 0;
			}
			
		}
		
		int Fichier_compress(const char* Source, const char* Destination)
		{
			return 1;
		}
		
		
		
		
	}
	
}

