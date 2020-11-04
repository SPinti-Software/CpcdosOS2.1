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
		13/01/2017	- Fichier existe renvoie un BOOL au lieu d'un int. std::ios::fail etant un BOOL
	
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

extern "C" void 		cpc_CCP_Exec_Commande			(const char* COMMANDE, int ID);

namespace cpinti 
{
	namespace gestionnaire_fichier
	{ 
		
		// ===========================================================================
		// ================================= LECTURE =================================
		// ===========================================================================

		bool Copier_Fichier(const char* Source, const char* Destination, int Priorite, const char* VAR_Progression, const char* VAR_Octets, const char* VAR_OctetsParSec)
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
			int CompteurDoevents = 0;
			
			// Les descripteurs de fichier
			FILE* Instance_Fichier_SOURCE;
			FILE* Instance_Fichier_DESTINATION;

			if(Priorite == 0)
			{
				Priorite = 1;
			}
			
			// Ouvrir le fichier SOURCE
			Instance_Fichier_SOURCE = fopen (Source, "r");

			// Ouvrir le fichier DESTINATION
			Instance_Fichier_DESTINATION = fopen (Destination, "w");

			// Si c'est ok pour la source
			if (Instance_Fichier_SOURCE != NULL) 
			{
				// Si c'est ok pour la destination
				if (Instance_Fichier_DESTINATION != NULL) 
				{

					unsigned int TailleFichier 		= Taille_Fichier(Source);
					unsigned int Position 			= 0;
					unsigned int NombreOctets 		= 0;
					unsigned int NombreOctetsParSec = 0;
					unsigned int TempsPasse 		= 0;
					
					double valeur					= 0;
					double vitesse					= 0;

					clock_t	TempsDebut;
					clock_t	TempsFin;

					char _output_ = '\0';
					char data = '\0';
					
					char* _Commande_CpcdosCP = (char*) malloc(sizeof(char) * 128);
					
					ENTRER_SectionCritique();

					// Boucler jusqu'a la fin du fichier
					while (Position <= TailleFichier) 
					{ 

						// Cette partie va permettre d'alleger le CPU
						if(CompteurDoevents >= 8192)
						{
							CompteurDoevents = 0;
							SORTIR_SectionCritique();
							doevents(0);
							ENTRER_SectionCritique();
							
							/** PROGRESSION EN POURCENTAGE **/
							if((VAR_Progression != NULL) && (strlen(VAR_Progression) > 1))
							{
								
								valeur = ((double) NombreOctets / (double) TailleFichier) * 100;
								sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_Progression, valeur);
								cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
							}
							
							/** NOMBRE D'OCTETS COPIES **/
							if((VAR_Octets != NULL) && (strlen(VAR_Octets) > 1))
							{

								valeur = (double) NombreOctets;
								sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_Octets, valeur);
								cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
							}
						
							if(vitesse > 1)
							{
								/** NOMBRE D'OCTETS PAR SECONDES **/
								if((VAR_OctetsParSec != NULL) && (strlen(VAR_OctetsParSec) > 1))
								{
									
									sprintf(_Commande_CpcdosCP, "FIX/ %s = /F:CPC.INT(%f)", VAR_OctetsParSec, vitesse);
									cpc_CCP_Exec_Commande(_Commande_CpcdosCP, 5);
									vitesse = 0;
								}
							}

						} else
							CompteurDoevents++;
						
						
						// Recuperer le caractere SOURCE
						data = fgetc(Instance_Fichier_SOURCE);

						// Ecrire le caractere DESTINATION
						fputc(data, Instance_Fichier_DESTINATION);
						
						// Avancer d'une position
						Position++;
						
						NombreOctetsParSec++;
						NombreOctets++;
	
						if((VAR_OctetsParSec != NULL) && (strlen(VAR_OctetsParSec) > 1))
						{
							TempsFin = clock();

							TempsPasse = (unsigned int) ((TempsFin - TempsDebut)/CLOCKS_PER_SEC);
	
							if(TempsPasse > 1)
							{
								TempsDebut = clock();
								
								/** NOMBRE D'OCTETS PAR SECONDES **/
								
									vitesse = (double) NombreOctetsParSec;
									NombreOctetsParSec = 0;
							}
						}
					}	

					SORTIR_SectionCritique();
					
					_Commande_CpcdosCP[0] = '\0';
					
					// OK
					RETOUR = true;
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
				std::string Erreur_STR = std::to_string((unsigned int) strerror(errno));
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de copier le fichier '" + std::string(Source) + "' a '" + std::string(Destination) + "'. Raison:" + std::string(strerror(errno)), 
										 "[ERROR] Unable to copy file '" + std::string(Source) + "' to '" + std::string(Destination) + "'. Raison:" + std::string(strerror(errno)),
									 "gestionnaire_fichier", "Lire_Fichier_complet()",
						Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
			}
			return RETOUR;
			
		}
	}
}

