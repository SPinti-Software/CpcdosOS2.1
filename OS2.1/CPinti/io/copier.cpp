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
#include <math.h>
#include "io.h"
#include "func_cpi.h" // doevent
#include "debug.h" 
#include "core.h"

// #include "leakchk.h"

extern "C" void 		cpc_CCP_Exec_Commande			(const char* COMMANDE, long ID);
extern "C" char* 		cpc_CCP_Lire_Variable			(const char* NomVariable, int niveau);
extern "C" void 		cpc_CCP_Exec_Commande_CLE		(const char* COMMANDE, long NIVEAU, double CLE);
extern "C" char* 		cpc_CCP_Lire_Variable_CLE		(const char* NomVariable, int niveau, double CLE);

namespace cpinti 
{
	namespace gestionnaire_fichier
	{ 
		
		// ===========================================================================
		// ================================= LECTURE =================================
		// ===========================================================================

		bool Copier_Fichier(const char* Source, const char* Destination, long Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec, const char* VAR_Annuler, double cle_contexte)
		{
			// Cette methode permet de copier un fichier source a une destination
		
			// Priorite = 0	: Copie par defaut a priorite automatisee (selon la charge du CPU)
			// 			= 1	: Copie normale (50%)
			// 			= 2	: Copie prioritaire, priorise plus le thread actuel (70%)
			//			= 3 : Copie a section critique (Bloque tous les autre threads et priorise a 100%)
			
			// Lire tout le contenu d'un fichier uniquement
			// Retourne :
			//	Si ok = Le contenu texte du fichier
			//	Sinon = 0
			

			
			// Definit les attributs temporaires		
			bool RETOUR = false;
			bool erreur_copie = false;
			bool annulee = false;
			long CompteurDoevents = 0;
			
			// Les descripteurs de fichier
			FILE* Instance_Fichier_SOURCE;
			FILE* Instance_Fichier_DESTINATION;

			if(Priorite == 0)
			{
				Priorite = 1;
			}
			
			// Ouvrir le fichier SOURCE 
			Instance_Fichier_SOURCE = fopen (Source, "rb");

			// Ouvrir le fichier DESTINATION
			Instance_Fichier_DESTINATION = fopen (Destination, "wb");

			// Si c'est ok pour la source
			if (Instance_Fichier_SOURCE != NULL) 
			{
				// Si c'est ok pour la destination
				if (Instance_Fichier_DESTINATION != NULL) 
				{

					unsigned long TailleFichier 		= Taille_Fichier(Source);
					unsigned long Position 			= 0;
					unsigned long NombreOctets 		= 0;
					unsigned long NombreOctetsParSec = 0;
					unsigned long TempsPasse 		= 0;
					const bool has_var_progression = ((VAR_Progression != NULL) && (strlen(VAR_Progression) > 1));
					const bool has_var_octets = ((VAR_Octets != NULL) && (strlen(VAR_Octets) > 1));
					const bool has_var_octets_par_sec = ((VAR_OctetsParSec != NULL) && (strlen(VAR_OctetsParSec) > 1));
					
					double valeur					= 0;
					double vitesse					= 0;

					clock_t	TempsDebut;
					clock_t	TempsFin;

					char* _Commande_CpcdosCP = (char*) malloc(sizeof(char) * 256);
					unsigned long derniere_progression = 101;
					
					if(has_var_octets_par_sec)
					{
						TempsDebut = clock();
					}

					// Copie par blocs de 4Ko (fread/fwrite >> fgetc/fputc octet par octet)
					char _buffer_copie_[4096];
					unsigned long lu_copie = 0;
					unsigned long CompteurFlush = 0;

					while ((lu_copie = (unsigned long) fread(_buffer_copie_, 1, 4096, Instance_Fichier_SOURCE)) > 0)
					{
						size_t ecrit = fwrite(_buffer_copie_, 1, (size_t) lu_copie, Instance_Fichier_DESTINATION);
						if (ecrit != (size_t) lu_copie)
						{
							erreur_copie = true;
							break;
						}

						Position           += lu_copie;
						NombreOctets       += lu_copie;
						NombreOctetsParSec += lu_copie;

						// Yield CPU et mise a jour progression toutes les ~64 iterations (~256Ko)
						CompteurDoevents++;
						CompteurFlush++;
						if(CompteurDoevents >= 64)
						{
							CompteurDoevents = 0;
							doevents((Priorite <= 1) ? 1 : 0);
							
							/** PROGRESSION EN POURCENTAGE **/
							if(has_var_progression && (TailleFichier > 0))
							{
								unsigned long progression = (unsigned long) ((((double) NombreOctets / (double) TailleFichier) * 100.0));
								if(progression != derniere_progression)
								{
									derniere_progression = progression;
									snprintf(_Commande_CpcdosCP, 256, "FIX/ %s = %lu", VAR_Progression, progression);
										cpc_CCP_Exec_Commande_CLE(_Commande_CpcdosCP, 3, cle_contexte);
								}
							}
							
							/** NOMBRE D'OCTETS COPIES **/
							if(has_var_octets)
							{
								snprintf(_Commande_CpcdosCP, 256, "FIX/ %s = %lu", VAR_Octets, NombreOctets);
								cpc_CCP_Exec_Commande_CLE(_Commande_CpcdosCP, 3, cle_contexte);
							}
						
							if(vitesse > 1)
							{
								/** NOMBRE D'OCTETS PAR SECONDES **/
								if(has_var_octets_par_sec)
								{
									snprintf(_Commande_CpcdosCP, 256, "FIX/ %s = %lu", VAR_OctetsParSec, (unsigned long) vitesse);
									cpc_CCP_Exec_Commande_CLE(_Commande_CpcdosCP, 3, cle_contexte);
									vitesse = 0;
								}
							}

							if((VAR_Annuler != NULL) && (strlen(VAR_Annuler) > 1))
							{
								char* valeur_annuler = cpc_CCP_Lire_Variable_CLE(VAR_Annuler, 3, cle_contexte);
								if(valeur_annuler != NULL)
								{
									char c = valeur_annuler[0];
									if(c == '1' || c == 'O' || c == 'o' || c == 'Y' || c == 'y' || c == 'T' || c == 't')
									{
										annulee = true;
										free(valeur_annuler);
										break;
									}
									free(valeur_annuler);
								}
							}
						}

						// Flush periodique: limite les pertes en cas d'arret brutal sans penaliser excessivement
						if(CompteurFlush >= 16)
						{
							CompteurFlush = 0;
							fflush(Instance_Fichier_DESTINATION);
						}

						if(has_var_octets_par_sec)
						{
							TempsFin = clock();

							TempsPasse = (unsigned long) ((TempsFin - TempsDebut)/CLOCKS_PER_SEC);
	
							if(TempsPasse > 1)
							{
								TempsDebut = clock();
								
								/** NOMBRE D'OCTETS PAR SECONDES **/
								
									vitesse = (double) NombreOctetsParSec;
									NombreOctetsParSec = 0;
							}
						}
					}	

					fflush(Instance_Fichier_DESTINATION);
					
					_Commande_CpcdosCP[0] = '\0';
					free(_Commande_CpcdosCP);
					
					// OK uniquement si aucune erreur de lecture/ecriture
					if(!erreur_copie && !annulee && (ferror(Instance_Fichier_SOURCE) == 0) && (ferror(Instance_Fichier_DESTINATION) == 0))
						RETOUR = true;
					else
						RETOUR = false;
				}
				else
				{
					// PROBLEME
					RETOUR = false;
				}
			}
			else
			{
				// Fichier non disponible
				RETOUR = false;
			}
			
			// Fermer les instances
			if(Instance_Fichier_DESTINATION != NULL) fclose(Instance_Fichier_DESTINATION);
			if(Instance_Fichier_SOURCE != NULL)  fclose(Instance_Fichier_SOURCE);
			
			if(RETOUR == false)
			{
				// Probleme!
				std::string Erreur_STR = std::string(strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de copier le fichier '" + std::string(Source) + "' a '" + std::string(Destination) + "'. Raison:" + std::string(strerror(errno)), 
										 "[ERROR] Unable to copy file '" + std::string(Source) + "' to '" + std::string(Destination) + "'. Raison:" + std::string(strerror(errno)),
									 "gestionnaire_fichier", "Lire_Fichier_complet()",
						Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
			}
			return RETOUR;
			
		}
	}
}

