/*
	************* ENTETE *************
	
	======================================
	==     CPinti ---> InputOutput      ==
	======================================
	
	Developpe entierement par Sebastien FAVIER
		Ex-Contributeurs 2015 : Johann GRAF et Leo VACHET.
		
		Module lecture et ecriture CPinti Core(tm) pour Cpcdos OSx
		
		Reecriture complete No.1 28/06/2015
		                    No.2 12/02/2016
							No.3 18/10/2016
							No.4 19/04/2019
							
		Mise a jour le 19/04/2019
		
*/

namespace cpinti
{
	namespace gestionnaire_fichier
	{

		// EXTERNE
		long 					cpinti_decompress_file			(const char* Source, const char* Destination);
		long 					cpinti_compress_file			(const char* Source, const char* Destination);
		bool 					cpinti_Fichier_Existe			(const char* Source);
		unsigned long			cpinti_Taille_Fichier			(const char* Source);
		bool 					cpinti_Lire_Fichier_complet		(const char* Source, const char* Mode, char* _DONNEES, unsigned long TailleFichier);
		bool 					cpinti_Ecrire_Fichier_complet	(const char* Source, const char* _DONNEES, long Mode);
		bool 					cpinti_Supprimer_Fichier		(const char* Source, bool Securise, long NombrePasses);
		bool 					cpinti_Copier_Fichier			(const char* Source, const char* Destination, long Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec);
	
		// INTERNE
		long 					Fichier_decompress		(const char* Source, const char* Destination);
		long 					Fichier_compress		(const char* Source, const char* Destination);
		long inf					(FILE *source, FILE *dest);
		
		unsigned long 			Taille_Fichier			(const char* Source);
		bool 					Lire_Fichier_complet	(const char* Source, const char* MODE, char *_DONNEES, unsigned long Taille_Fichier);
		bool					Ecrire_fichier			(const char* Source, const char* Donnees, long FLAG);
		bool					Supprimer_Ficher		(const char* Source, bool securise, long NombrePasses);
		bool 					Copier_Fichier			(const char* Source, const char* Destination, long Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec);
	}

}


