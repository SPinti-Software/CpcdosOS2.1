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
		int 					cpinti_decompress_file			(const char* Source, const char* Destination);
		int 					cpinti_compress_file			(const char* Source, const char* Destination);
		bool 					cpinti_Fichier_Existe			(const char* Source);
		unsigned int			cpinti_Taille_Fichier			(const char* Source);
		bool 					cpinti_Lire_Fichier_complet		(const char* Source, const char* Mode, char* _DONNEES, unsigned int TailleFichier);
		bool 					cpinti_Ecrire_Fichier_complet	(const char* Source, const char* _DONNEES, int Mode);
		bool 					cpinti_Supprimer_Fichier		(const char* Source, bool Securise, int NombrePasses);
		bool 					cpinti_Copier_Fichier			(const char* Source, const char* Destination, int Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec);
	
		// INTERNE
		int 					Fichier_decompress		(const char* Source, const char* Destination);
		int 					Fichier_compress		(const char* Source, const char* Destination);
		int inf					(FILE *source, FILE *dest);
		
		bool 					Fichier_Existe			(const char* Source);
		bool					Repertoire_Existe		(const char *Source) ;
		unsigned int 			Taille_Fichier			(const char* Source);
		bool 					Lire_Fichier_complet	(const char* Source, const char* MODE, char *_DONNEES, unsigned int Taille_Fichier);
		bool					Ecrire_fichier			(const char* Source, const char* Donnees, int FLAG);
		bool					Supprimer_Ficher		(const char* Source, bool securise, int NombrePasses);
		bool 					Copier_Fichier			(const char* Source, const char* Destination, int Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec);
	}
}


