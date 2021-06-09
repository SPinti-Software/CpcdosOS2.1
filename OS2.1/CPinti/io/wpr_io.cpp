/*	
	======================================
	==       CPinti ---> wrapper I/O    ==
	======================================

	Description
		Module permettant l'acces aux fonctionnalites 
		 d'ecriture, lecture des fichiers sur support
	
	Creation 
		19/10/2016


	Mise a jour
		19/04/2019
	
	19-04-2019	: Refonte beta 1.1
	16-10-2018	: Adaption 2.1 beta 1.1
	07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	06-10-2017	: Ajout de Copier_Fichier.
*/
#include "cpinti.h"
#include <string.h>
#include "debug.h"
#include "func_cpi.h"
#include "io.h"
#include <cpinti/fs.hpp>
 
 // #include "leakchk.h"

namespace cpinti
{
	namespace gestionnaire_fichier
	{
		bool cpinti_Fichier_Existe(const char* Source)
		{
			// Cette fonction va permettre de savoir si un fichier existeS
			// Source 	= Source d'acces au fichier
			
			// Retourne -1 : Erreur memoire
			// 			 0 : Fichier non disponible
			//			 1 : Fichier present
			
		
			
			bool Resultats = false;
			
			cpinti_dbg::CPINTI_DEBUG("Test existance fichier '" + std::string(Source) + "' ... ", 
						 "File existance test '" + std::string(Source) + "' ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Fichier_Existe()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
							
			Resultats = cpinti::fs::file_exist(Source);
			
			if(Resultats == true)
				cpinti_dbg::CPINTI_DEBUG("Fichier disponible.", 
					 "File present.", "", "",
						Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
			else
				cpinti_dbg::CPINTI_DEBUG("Fichier non present.", 
					 "File not avaiable.", "", "",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
							
			return Resultats;
		} /* FICHIER EXISTE */
		
		unsigned long cpinti_Taille_Fichier(const char* Source)
		{
			// Cette fonction va permettre de recuperer la taille d'un fichier
			// Source 	= Source d'acces au fichier
			
			// Retourne -1 : Erreur memoire
			// 			 0 ou 0> : Taille du fichier
			
			
			unsigned long Resultats = 0;
			std::string TailleFichier_STR;
			
			cpinti_dbg::CPINTI_DEBUG("Recuperation taille fichier '" + std::string(Source) + "' ... ", 
						 "Getting file size '" + std::string(Source) + "' ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Taille_Fichier()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
							
			Resultats = 0; //cpinti::gestionnaire_fichier::Taille_Fichier(Source);
			
			TailleFichier_STR = std::to_string(Resultats);
			
			cpinti_dbg::CPINTI_DEBUG("[OK] Taille : " + TailleFichier_STR + " octet(s)", 
						"[OK] Size : " + TailleFichier_STR + " byte(s)", 
						"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
			
			return Resultats;
		} /* TAILLE FICHIER */
		
		bool cpinti_Lire_Fichier_complet(const char* Source, const char* Mode, char* _DONNEES, unsigned long TailleFichier)
		{
			// Cette fonction va permettre de lire le contenu complet d'un fichier
			// Source 	= Source d'acces au fichier
			// Mode		= Mode le lecture
			// _DONNEES = Contenu du fichier a retourner
			
			// Retourne -1 : Erreur memoire
			// 			 0 ou 0> : OK
			
			// fprintf(stdout, " ****** P1\n\r");
			// fflush(stdout);
			// fprintf(stdout, " ****** Source '%s' Mode '%s'\n\r", (char*) Source, (char*) Mode);
			// fflush(stdout);
			// fprintf(stdout, " ****** _DONNEES '%s' [0x%x8]\n\r", (char*) _DONNEES), (void*) _DONNEES;
			// fflush(stdout);
			
			if(Source == NULL)
			{
				cpinti_dbg::CPINTI_DEBUG("Erreur interne! Pointeur 'SOURCE' null !", 
										"Internal error! 'SOURCE' pointer is null", 
										"cpinti::gestionnaire_fichier", "cpinti_Lire_Fichier_complet()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return  -1;
			}
			
			if(Mode == NULL)
			{
				cpinti_dbg::CPINTI_DEBUG("Erreur interne! Pointeur 'MODE' null !", 
										"Internal error! 'MODE' pointer is null", 
										"cpinti::gestionnaire_fichier", "cpinti_Lire_Fichier_complet()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return  -1;
			}
			
			if(_DONNEES == NULL)
			{
				cpinti_dbg::CPINTI_DEBUG("Erreur interne! Pointeur '_DONNEES' null !", 
										"Internal error! '_DONNEES' pointer is null", 
										"cpinti::gestionnaire_fichier", "cpinti_Lire_Fichier_complet()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return  -1;
			}
		 
			// Tester la presence du fichier (Evite les crashs)
			if(cpinti_Fichier_Existe(Source) == false)
			{
				std::string Source_STR = std::string(Source);
				cpinti_dbg::CPINTI_DEBUG("Le fichier '" + Source_STR + "' n'existe pas", 
										"File '" + Source_STR + "' not exist", 
										"cpinti::gestionnaire_fichier", "cpinti_Lire_Fichier_complet()", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
							
				return false;
			}
			
			// double Resultat_int;
			std::string TailleFichier_STR;
			std::string Mode_STR = std::string(Mode);
			
			cpinti_dbg::CPINTI_DEBUG("Debut lecture de fichier '" + std::string(Source) + "'... ", 
						 "Starting reading file '" + std::string(Source) + "' ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Lire_Fichier_complet()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
			
							
			if(Lire_Fichier_complet(Source, Mode, (char*) _DONNEES, TailleFichier) == true)
			{
				TailleFichier_STR = cpinti::Func_Cpinti::to_string(TailleFichier);
				cpinti_dbg::CPINTI_DEBUG("[OK] " + TailleFichier_STR + " octet(s) lu(s)", 
							"[OK] " + TailleFichier_STR + " byte(s) readed", 
							"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
				return true;
			}
			else
			{
				cpinti_dbg::CPINTI_DEBUG("Problemes durant la lecture du fichier", "Problem during file reading", "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return false;
			}
		} /* LIRE FICHIER COMPLET */
		
		bool cpinti_Ecrire_Fichier_complet(const char* Source, const char* _DONNEES, long Mode)
		{
			// Cette fonction va permettre de d'ecrire de maniere COMPLET un fichier
			// Source 	= Source d'acces au fichier
			// _DONNEES = Contenu a ecrire
			// Mode		= Mode le lecture
			// 
			
			// Retourne -1 : Erreur memoire
			// 			 0 ou 0> : OK
		
			double Resultat_int;
			std::string Resultats;

			double TailleFichier = (double) strlen(_DONNEES);
			
			cpinti_dbg::CPINTI_DEBUG("Debut d'ecriture du fichier '" + std::string(Source) + "' ... ", 
						 "Starting writing file '" + std::string(Source) + "' ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Ecrire_Fichier_complet()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
			
							
			// if(cpinti::gestionnaire_fichier::Ecrire_fichier(Source, _DONNEES, Mode) == true)
			// {

				std::string TailleFichier_STR = cpinti::Func_Cpinti::to_string(TailleFichier);
				cpinti_dbg::CPINTI_DEBUG("[OK] " + TailleFichier_STR + " octet(s) ecrit(s)", 
							"[OK] " + TailleFichier_STR + " byte(s) written", 
							"", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);

				Resultat_int = TailleFichier;
			// }
			// else
			// {
				// cpinti_dbg::CPINTI_DEBUG("Problemes durant l'ecriture du fichier", "Problem during file writing", "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				// Resultat_int = -1;
			// }
			
			return Resultat_int;
		} /* LIRE FICHIER COMPLET */
		
		bool cpinti_Supprimer_Fichier(const char* Source, bool Securise, long NombrePasses)
		{
			// Cette fonction va permettre de d'ecrire de maniere COMPLET un fichier
			// Source 		= Source d'acces au fichier
			// Securise 	= Ecrire des ZEROS avant de supprimer de l'index (Suppression complete et plus longue)
			// NombrePasses	= Nombre de passes d'ecriture de ZEROS en plus. (Par defaut = 0)
			
			// Retourne TRUE : OK
			// 			FALSE: Probleme
		
			int Resultat_int;
	
			std::string NombrePasses_STR = cpinti::Func_Cpinti::to_string(NombrePasses);
			
			if(Securise == false)
				cpinti_dbg::CPINTI_DEBUG("Suppression du fichier '" + std::string(Source) + "' ... ", 
						 "Deleting file '" + std::string(Source) + "' ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Supprimer_Fichier()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
			else
				cpinti_dbg::CPINTI_DEBUG("Suppression securise du fichier '" + std::string(Source) + "' avec " + NombrePasses_STR + " passes ... ", 
						 "Deleting file '" + std::string(Source) + "' with " + NombrePasses_STR + " passes ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Supprimer_Fichier()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);
			
							
			// if(cpinti::gestionnaire_fichier::Supprimer_Ficher(Source, Securise, NombrePasses) == true)
			// {

				cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]", "", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);

				return true;
			// }
			// else
			// {
				// cpinti_dbg::CPINTI_DEBUG("Problemes durant la suppression du fichier", "Problem during deleting file", "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				// return false;
			// }
			
			return Resultat_int;
			
		} /* SUPPRIMER FICHIER */
		
		bool cpinti_Copier_Fichier(const char* Source, const char* Destination, long Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec)
		{
			// Cette fonction va permettre de d'ecrire de maniere COMPLET un fichier
			// Source 		= Source d'acces au fichier
			// Securise 	= Ecrire des ZEROS avant de supprimer de l'index (Suppression complete et plus longue)
			// NombrePasses	= Nombre de passes d'ecriture de ZEROS en plus. (Par defaut = 0)
			
			// Retourne TRUE : OK
			// 			FALSE: Probleme
		
			int Resultat_int;
 
			cpinti_dbg::CPINTI_DEBUG(" ****** p1", 
							" ****** p1",
							"cpinti::gestionnaire_fichier", "cpinti_Copier_Fichier()",
							Ligne_r_normal, Alerte_validation, Date_avec, Ligne_r_normal);
		
			cpinti_dbg::CPINTI_DEBUG("Copie du fichier depuis '" + std::string(Source) + "' a '" + std::string(Destination )+ "' ... ", 
						 "Copy file from '" + std::string(Source) + "' to '" + std::string(Destination) + "' ... ",
							"cpinti::gestionnaire_fichier", "cpinti_Copier_Fichier()",
							Ligne_r_normal, Alerte_validation, Date_avec, Ligne_r_normal);
							
			cpinti_dbg::CPINTI_DEBUG("Statistiques : Progression '" + std::string(VAR_Progression) + "' Octets copies '" + std::string(VAR_Octets) + "' octets par secondes '" + std::string(VAR_OctetsParSec) + "'", 
							"Indicators: Progression '" + std::string(VAR_Progression) + "' Copied bytes '" + std::string(VAR_Octets) + "' bytes by sec '" + std::string(VAR_OctetsParSec) + "'",
							"cpinti::gestionnaire_fichier", "cpinti_Copier_Fichier()",
							Ligne_reste, Alerte_validation, Date_avec, Ligne_r_normal);

							
			if(cpinti::gestionnaire_fichier::Copier_Fichier(Source, Destination, Priorite, VAR_Progression, VAR_Octets, VAR_OctetsParSec) == true)
			{
				cpinti_dbg::CPINTI_DEBUG("[OK]", "[OK]", "", "", Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
				return true;
			}
			else
			{
				cpinti_dbg::CPINTI_DEBUG("Problemes durant la copie du fichier", "Problem during copy file", "", "", Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return false;
			}
			
			return Resultat_int;
			
		} /* COPIER FICHIER */
	} // gestionnaire_fichier
}

