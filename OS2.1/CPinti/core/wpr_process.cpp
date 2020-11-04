/*	
	======================================
	==    CPinti ---> wrapper processus ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant l'acces aux fonctionnalites de gestion
		 des processus
	
	Creation 
		19/10/2016


	Mise a jour
		22/01/2019
		
	16-10-2018	: Adaption 2.1 beta 1.1
	07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	23-08-2017	: cpinti_get_nom_processus() pour recuperer les noms des Processus
	
*/




#include <string.h>

#include "process.h"
#include "core.h"
#include "debug.h"

// #include "leakchk.h"

namespace cpinti
{
	

	namespace gestionnaire_tache
	{	
		unsigned int cpinti_creer_processus(unsigned int ID_KERNEL, unsigned int ID_OS, unsigned int ID_USER, 
												unsigned int PID_Parent, const char* NomProcessus)
		{
			// Cette fonction va permettre de creer un nouveau processus vierge (Qui hebergera vos threads)
			//  Etant vierge, et sans thread main, le processus sera inactif.
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//	NomProcessus	: Nom de processus
			
			// Retourne	< 0 : Erreur
			//			> 0 : Numero de PID
			
			// On ajoute un thread depuis le CORE
			unsigned int Resultat = gestionnaire_tache::ajouter_Processus(NomProcessus);
			
			
			// Si la creation est un succes, on remplit les informations du thread
			if (Resultat > 0)
			{
				/** Identifiant NOYAU **/
				gestionnaire_tache::Liste_Processus[Resultat].KID = ID_KERNEL;
				
				/** Identifiant OS **/
				gestionnaire_tache::Liste_Processus[Resultat].OID = ID_OS;
				
				/** Identifiant Utilisateur **/
				gestionnaire_tache::Liste_Processus[Resultat].UID = ID_USER;
				
				/** Identifiant Processus **/
				gestionnaire_tache::Liste_Processus[Resultat].PID = Resultat;
				
				/** Identifiant Processus parent **/
				gestionnaire_tache::Liste_Processus[Resultat].PID_Parent = PID_Parent;
				
				/** Identifiant Thread parent (Celui qui le cree) **/
				gestionnaire_tache::Liste_Processus[Resultat].TID_Parent = gestionnaire_tache::Thread_en_cours;
				
				/** Nom du processus **/
				// strncpy((char*) gestionnaire_tache::Liste_Processus[Resultat].Nom_Processus, NomProcessus, 16);
			}
			else
			{
				std::string Resultat_STR = std::to_string((unsigned int) Resultat);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de creer un thread. Retour:" + Resultat_STR, 
										 "[ERROR] Unable to create thread. Return:" + Resultat_STR,
									 "core::gestionnaire_tache", "Creer_Processus()",
						Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
			}
			

			// Retourner son PID
			return Resultat;
		}
		
		bool cpinti_arreter_processus(unsigned int ID_KERNEL, unsigned int PID)
		{
			// Cette fonction permet d'arreter un processus correctement.
			//  A utiliser sur un autre thread
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus

			// Si le processus existe
			if(gestionnaire_tache::Liste_Processus[PID].PID > 0)
				return gestionnaire_tache::supprimer_Processus(PID, false);
			else
			{
				std::string PID_STR = std::to_string((unsigned int) PID);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'arreter le processus. Le PID " + PID_STR + " n'existe pas.", 
										 "[ERROR] Unable to stop the process. PID " + PID_STR + " not exist.",
										"core::gestionnaire_tache", "Arreter_Processus()",
						Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
						
				return false;
			}

		}
		
		void cpinti_set_etat_processus(unsigned int ID_KERNEL, unsigned int PID, unsigned int ACTION)
		{
			// Cette fonction permet de modifier d'etat d'un processus
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	ACTION			: Action a appliquer sur le thread

			gestionnaire_tache::set_EtatProcessus(PID, ACTION);
		}
		
		unsigned int cpinti_get_etat_processus(unsigned int ID_KERNEL, unsigned int PID)
		{
			// Cette fonction permet de connaitre l'etat du processus
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus

			return gestionnaire_tache::get_EtatProcessus(PID);
		}
		
		
		
		const char* cpinti_get_nom_processus(unsigned int PID)
		{
			// Cette fonction permet de recuperer le nom du processus via son ID
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//  NomProcessus	: Variable NULL ou sera stocke le nom de variable
			
			return (const char*) gestionnaire_tache::Liste_Processus[PID].Nom_Processus;
			
		}
		
		
		unsigned int cpinti_get_nombre_processus()
		{
			// Cette fonction permet d'obtenir le nombre de proccessus en cours
			unsigned int NombreProcess = gestionnaire_tache::get_NombreProcessus();
			
			// Corriger
			if (NombreProcess > MAX_PROCESSUS) 
				NombreProcess = MAX_PROCESSUS;
			
			return NombreProcess;
		}
		
	}
}