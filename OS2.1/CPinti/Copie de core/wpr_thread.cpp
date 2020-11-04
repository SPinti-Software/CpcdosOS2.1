/*	
	======================================
	==     CPinti ---> wrapper threads  ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant d'utiliser les fonctionnalites de gestion
		 des threads
	
	Creation 
		19/10/2016


	Mise a jour
		16/10/2018
		
	16-10-2018	: Adaption 2.1 beta 1.1
	07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	23-08-2017	: Ajout de cpinti_get_nom_thread() pour recuperer les noms des threads
	08-05-2017	: Ajout des arguments d'entre pour les threads crees

	
*/

#include <string.h>
#include <stdio.h>
#include "threads.h"
#include "core.h"
#include "debug.h"

namespace cpinti
{
	
	namespace gestionnaire_tache
	{
		
		static void* DonneesEnAttente = NULL;
		static bool ThreadEnAttenteDonnees = false;
		
		unsigned int cpinti_creer_thread(unsigned int ID_KERNEL, unsigned int ID_OS, unsigned int ID_USER, unsigned int PID, const char* NomThread, 
																		int Priorite, void* (* Fonction) (void* arg), void* ARG_CP, void* ARG_TH)
		{
			// Cette fonction va permettre de creer un nouveau processus vierge (Qui hebergera vos threads)
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//	NomProcessus	: Nom de processus
			
			// Retourne	<=0 : Erreur
			//			> 0 : Numero de PID
			
			while(ThreadEnAttenteDonnees==true)
				switch_context();
			
			
			// On ajoute un thread depuis le CORE
			unsigned int Resultat = gestionnaire_tache::ajouter_Thread(Fonction, PID, Priorite);
			
			
			// Si la creation est un succes, on remplit les informations du thread
			if (Resultat > 0)
			{
				/** Identifiant NOYAU **/
				gestionnaire_tache::Liste_Threads[Resultat].KID = ID_KERNEL;
				
				/** Identifiant OS **/
				gestionnaire_tache::Liste_Threads[Resultat].OID = ID_OS;
				
				/** Identifiant Utilisateur **/
				gestionnaire_tache::Liste_Threads[Resultat].UID = ID_USER;
				
				/** Identifiant Processus **/
				gestionnaire_tache::Liste_Threads[Resultat].PID = PID;
				
				/** Nom du thread **/
				strncpy((char*) gestionnaire_tache::Liste_Threads[Resultat].Nom_Thread, NomThread, 16);

				DonneesEnAttente = ARG_TH;
				ThreadEnAttenteDonnees = true;
				
			}
			else
			{
				std::string Resultat_STR = std::to_string((unsigned int) Resultat);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible de creer un thread. Retour:" + Resultat_STR, 
										 "[ERROR] Unable to create thread. Return:" + Resultat_STR,
									 "core::gestionnaire_tache", "free_Thread_zombie()",
						Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
				
				ThreadEnAttenteDonnees = false;
			}
			
			
			
			// Retourner son PID
			return Resultat;
		}
		
		void* cpinti_get_Arguments()
		{
			if(ThreadEnAttenteDonnees == true)
			{
				ThreadEnAttenteDonnees = false;
				return DonneesEnAttente;
			}
			else
				return NULL;
			
		}
		
		int cpinti_fin_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID)
		{
			// Cette fonction permet de finaliser l'execution d'un thread
			supprimer_Thread(TID, false);
			
			
			// Le thread n'est plus dans le scheduler, mais on le rend "zombie" en attendant 
			//  la suppresion de son segment de memoire ESP et ses registres memoire par un autre
			//  thread que lui meme (sinon ca crash)
			
			set_EtatThread(TID, _ZOMBIE);
			
			while(1)
				switch_context();
			
		}
		
		int cpinti_arreter_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID)
		{
			return cpinti_arreter_thread(ID_KERNEL, PID, TID, false);
		}
		
		int cpinti_arreter_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, bool force)
		{
			// Cette fonction permet d'arreter un thread correctement.
			//  A utiliser sur un autre thread
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	TID				: Numero du thread
			//	force			: Force la fermeture du thread zombie
			
			
			
			bool Resultat = false;
			
			Resultat = gestionnaire_tache::supprimer_Thread(TID, force);
		
			if(Resultat == true)
				return 1;
			else 
				return 0;
		}
		
		bool _exit()
		{
			return gestionnaire_tache::fermer_core();
		}
		
		unsigned int cpinti_joindre_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, int CYCLES)
		{
			// Cette fonction permet d'executer directement un thread sans passer par l'ordonanceur
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	TID				: Numero du thread
			//	CYCLES			: Nombre de cycles a executer (1 par defaut)

			unsigned int Resultat = 0;
			
			
			// Retourner le resultat
			return Resultat;
			
		}
		
		int cpinti_sortir_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID)
		{
			// Cette fonction permet de sortir du thread
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	TID				: Numero du thread
			
			int Resultat = 0;
			
			
			return Resultat;
		}
		
		
		void* cpinti_thread_args(int NoARG)
		{
			// Cette fonction permet de retourner un argument pour les threads venant d'etre crees
			//	NoARG	: Numero d'argument
			
			// Retourne	une valeur ANY PTR
			
			// if(NoARG == 0)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::ARG1;
			// else if(NoARG == 1)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::ARG2;
			// else if(NoARG == 2)
				// return (void*) (long) NP_cpinti_gestionnaire_tache::thread_args::ARG3;
			// else if(NoARG == 3)
				// return (void*) (long) NP_cpinti_gestionnaire_tache::thread_args::ARG4;
			// else if(NoARG == 4)
				// return (void*) (long) NP_cpinti_gestionnaire_tache::thread_args::ARG5;
			// else if(NoARG == 1995)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::TID; 	/* ID du thread */
			// else if(NoARG == 2803)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::PID; 	/* ID du processus */
			// else if(NoARG == 2912)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::USER_ID; /* ID du USER */
			// else if(NoARG == 1909)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::OS_ID; 	/* ID de l'OS */
			// else if(NoARG == 1507)
				// return (void*) NP_cpinti_gestionnaire_tache::thread_args::KERNEL_ID; /* ID du kernel */
			// else if(NoARG == 2011)
				// return (void*) (long) NP_cpinti_gestionnaire_tache::thread_args::NomThread; /* Nom du thread */

			// Aucun argument correspond
			return NULL;
		}
		
		
		int cpinti_gerer_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, unsigned int ACTION)
		{
			// Cette fonction permet de modifier l'etat d'un thread
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	TID				: Numero du thread
			//	ACTION			: Action a appliquer sur le thread
			
			int Resultat = 0;
			
			// Gerer le thread
			// Resultat = this->CPintiCore_Gestionnaire_Taches->Gerer_Threads(ID_KERNEL, PID, TID, ACTION);
			
			// doevents(_THREAD_ATTENTE_ORD);
			
			return Resultat;
		}
		
		unsigned int cpinti_etat_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID)
		{
			// Cette fonction permet de connaitre l'etat d'un thread
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	TID				: Numero du thread
			
			return get_EtatThread(TID);
		}
		
		int cpinti_get_nom_thread(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, const char* NomThread)
		{
			// Cette fonction permet de recuperer le nom du thread via son ID
			// 	ID_KERNEL		: Identificateur unique de l'instance du noyau
			//  PID				: Numero de processus
			//	TID				: Numero du thread
			//  NomThread		: Variable NULL ou sera stocke le nom de variable
			
			
			return 0;
		}
		
		
		unsigned int cpinti_get_nombre_threads()
		{
			// Cette fonction permet d'obtenir le nombre de threads total en cours
			// return NP_cpinti_gestionnaire_tache::Gestionnaire_des_taches::get_Nombre_threads();
			return gestionnaire_tache::get_NombreThreads();
		}
	}
} // Namespace cpinti