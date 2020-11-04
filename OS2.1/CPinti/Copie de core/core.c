/*	
	=============================================
	==   CPinti ---> Gestionnaire de threads   ==
	=============================================

	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant la commutation des threads en se basant sur le PIT

	Creation
		17/05/2018
		
		
	Mise a jour
		22/01/2019
		
		

*/


#include <ctime>
#include <dos.h>
#include <signal.h>

#include <cstdio>
#include <unistd.h>
#include <cstdlib>
#include <stdio.h>
#include <dpmi.h>
#include "debug.h"
#include "Func_cpi.h"

#include "core.h"


namespace cpinti 
{ 
	namespace gestionnaire_tache
	{ 

		void begin_SectionCritique()
		{
			// Rendre le systeme non interruptible
			SECTION_CRITIQUE = true;
			disable();
		}
		
		void end_SectionCritique()
		{
			// Rendre le systeme interruptible
			SECTION_CRITIQUE = false;
			enable();
		}
		
		bool state_SectionCritique()
		{
			// Retourner l'etat de la section critique
			return SECTION_CRITIQUE;
		}
		
		
		bool initialiser_Multitache()
		{	
			// Initialiser le multitasking 
			
			cpinti_dbg::CPINTI_DEBUG("Preparation du multitache en cours.", 
									 "Preparating multitask in progress. ",
						"core::gestionnaire_tache", "initialiser_Multitache()",
						Ligne_saute, Alerte_surbrille, Date_avec, Ligne_r_normal);
			
			// Interdire toutes interruptions
			begin_SectionCritique();
			
			// Allouer un espace memoire pour chaque threads
			for(int index_id = 0; index_id <= MAX_THREAD-1; index_id++)
			{
				// for(int stack_niveau = 0; stack_niveau <= MAX_STACK-1; stack_niveau++)
					// Liste_Threads[index_id].Stack_Thread[stack_niveau] = (char*) calloc(1024, sizeof(char));
				
				Liste_Threads[index_id].Etat_Thread = _ARRETE;
				Liste_Threads[index_id].Priorite = 0;
				Liste_Threads[index_id].KID = 0;
				Liste_Threads[index_id].OID = 0;
				Liste_Threads[index_id].UID = 0;
				Liste_Threads[index_id].PID = 0;
				Liste_Threads[index_id].DejaUse = false;
				
				// strncpy((char*) Liste_Threads[index_id].Nom_Thread, (const char*) '\0', 16);
			}
			
			/*** Creer un thread principal "Thread_Updater" ***/
			
			cpinti_dbg::CPINTI_DEBUG("Creation du thread principal 'Thread_Updater'...", 
									 "Creating main thread 'Thread_Updater'...",
						"core::gestionnaire_tache", "initialiser_Multitache()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			for(int stack_niveau = 0; stack_niveau <= MAX_STACK-1; stack_niveau++)
				Liste_Threads[0].Stack_Thread[stack_niveau] = (char*) calloc(1024, sizeof(char));
			
			// Point d'attache du buffer pour initialiser le tableau
			setjmp(Liste_Threads[0].Buffer_Thread);
		
			// Stack du contexte
			Liste_Threads[0].Buffer_Thread[0].__esp = (unsigned int) Liste_Threads[0].Stack_Thread + MAX_STACK;  
			
			// Adresse du debut
			Liste_Threads[0].Buffer_Thread[0].__eip = (unsigned int) Thread_Updater; 
			
			// Priorite
			Liste_Threads[0].Priorite 				= 127;
			
			// Son numero de TID (Thread IDentifiant)
			Liste_Threads[0].TID 					= 0;
			
			// Etat en execution (A modifier en PAUSE)
			Liste_Threads[0].Etat_Thread 			= _EN_EXECUTION;
			
			std::string offset_fonction = std::to_string((unsigned int) Thread_Updater);
			cpinti_dbg::CPINTI_DEBUG(" [OK] TID:0. Fonction offset 0x" + offset_fonction, 
									 " [OK] TID:0. Offset function 0x" + offset_fonction,
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);

			// Reexecuter le scheduler normalement
			end_SectionCritique();
			
			usleep(1000000);
			
			// Retourner l'ID
			return true;
		} 
		
		bool fermer_core()
		{
			unsigned int nombre_threads = 0;
			// Cette fonction permet de fermer le core en terminant tous les threads
			for(unsigned int boucle = 1; boucle < MAX_THREAD; boucle++)
			{
				// Si le thread n'est pas arrete ou n'est pas zombie on ferme
				if(Liste_Threads[boucle].Etat_Thread != _ARRETE)
					if(Liste_Threads[boucle].Etat_Thread != _ZOMBIE)
					{
						nombre_threads++;
						supprimer_Thread(boucle, false);
					}
			}
			
			std::string nombre_threads_STR = std::to_string((unsigned int) nombre_threads);
			cpinti_dbg::CPINTI_DEBUG("Signal de fermeture envoye aux " + nombre_threads_STR + " thread(s). Attente",
									 "Closing signal sent to " + nombre_threads_STR + " threads(s). Waiting",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			fflush(stdout);
			switch_context();
			
			// On attend un peut
			usleep(1500000);
			
			fflush(stdout);
			
			unsigned int Nombre_Zombie = check_Thread_zombie(true, true);
			
			std::string Nombre_Zombie_STR = std::to_string((unsigned int) Nombre_Zombie);
			cpinti_dbg::CPINTI_DEBUG(Nombre_Zombie_STR + " thread(s) zombies ferme(s) sur " + nombre_threads_STR,
									 Nombre_Zombie_STR + " zombies thread(s) closed on " + nombre_threads_STR,
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			return true;
		}
	 
	 
		/******** PROCESSUS ********/
		
		unsigned int get_EtatProcessus(unsigned int PID)
		{
			// Obtenir l'etat d'un processus
			return Liste_Processus[PID].Etat_Processus;
		}
		
		void set_EtatProcessus(unsigned int PID, unsigned int Etat)
		{
			// Definir l'etat d'un processus
			Liste_Processus[PID].Etat_Processus = Etat;
		}
		
		unsigned int get_NombreProcessus()
		{
			// Retourner le nombre de threads en cours
			return Nombre_Processus;
		}
		
		unsigned int ajouter_Processus()
		{
			// Cette fonction permet de creer un processus pour heberger des threads
			
			// Si on atteint le nombre maximum de processus
			if(Nombre_Processus >= MAX_PROCESSUS)
			{
				std::string nombre_processus_STR = std::to_string((unsigned int) MAX_PROCESSUS);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'attribuer un nouveau PID. Le nombre est fixe a " + nombre_processus_STR + " processus maximum.",
									 "[ERROR] Unable to attrib new PID. The maximal process number value is " + nombre_processus_STR,
									 "", "",
						Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return 0;
			}
			
			cpinti_dbg::CPINTI_DEBUG("Creation du processus ''...", 
									 "Creating process ''...",
						"core::gestionnaire_tache", "ajouter_Processus()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			
			unsigned int Nouveau_PID = 0;
			
			// Rechercher un emplacement ID vide
			for(unsigned int b = 1; b <= MAX_PROCESSUS; b++)	
				if(Liste_Processus[b].PID == 0)
				{
					Nouveau_PID = b;
					break;
				}
			
			if(Nouveau_PID == 0)
			{
				std::string nombre_threads_STR = std::to_string((unsigned int) MAX_THREAD);
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible d'attribuer un nouveau PID. Aucune zone memoire libere",
									 " [ERROR] Unable to attrib new PID. No free memory",
									 "", "",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return 0;
			}
			
			// Incremente le nombre de threads
			Nombre_Processus++;

			// Son numero de TID (Thread IDentifiant)
			Liste_Processus[Nouveau_PID].PID 				= Nouveau_PID;
			
			// Etat en execution
			Liste_Processus[Nouveau_PID].Etat_Processus 	= _EN_EXECUTION;

			
			std::string Nouveau_PID_STR = std::to_string((unsigned int) Nouveau_PID);
			cpinti_dbg::CPINTI_DEBUG(" [OK] PID " + Nouveau_PID_STR + ".", 
									 " [OK] PID " + Nouveau_PID_STR + ".",
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);

			// Retourner l'ID
			return Nouveau_PID;
		}
		
		bool supprimer_Processus(unsigned int pid, bool force)
		{
			// Cette fonction permet de signaler l'arret d'un processus
			//  et donc de tous ses threads
			//  si force=true 
			
			if(pid == 0)
				return false;
			
			std::string pid_STR = std::to_string((unsigned int) pid);
			
			
			if (Liste_Processus[pid].Etat_Processus == _ARRETE)
			{
				cpinti_dbg::CPINTI_DEBUG("Le processus " + pid_STR + " est deja arrete", 
									 "Process " + pid_STR + " is already stopped",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			}
			else if (Liste_Processus[pid].Etat_Processus == _EN_ARRET)
			{
				cpinti_dbg::CPINTI_DEBUG("Arret du processus " + pid_STR + " deja signale", 
									 "Process stopping " + pid_STR + " is already signaled",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			}
			else
			{
				cpinti_dbg::CPINTI_DEBUG("Arret du processus PID " + pid_STR + " en cours...", 
									 "Stopping process PID " + pid_STR + " in progress",
									 "core::gestionnaire_tache", "supprimer_Processus()",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
						
				// Mettre le processus en etat STOP = 0
				Liste_Processus[pid].Etat_Processus = _EN_ARRET;
				
				// Signaler l'arret a tous les threads heberges
				for(unsigned int tid = 1; tid < MAX_THREAD; tid++)
				{
					// Si le thread est bien heberge dans le processus
					if(Liste_Processus[pid].Threads_Enfant[tid] == true)
					{
						// Attendre 1ms entre chaque signalements
						usleep(1000);
						
						// On signale l'arret du thread
						supprimer_Thread(tid, false);
					}
					
					// Dans tous les cas on met a FALSE
					Liste_Processus[pid].Threads_Enfant[tid] = false;
				}
				
				// Attendre 10ms pour etre SAFE
				usleep(10000);
				
				// Declarer le processus mort (On conserve certaines infos pour le debug)
				cpinti_dbg::CPINTI_DEBUG("Nettogage memoire ...", 
									 "Memory cleaning ...",
									 "core::gestionnaire_tache", "supprimer_Processus()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
						
				Liste_Processus[pid].Etat_Processus = _ARRETE;
				Liste_Processus[pid].PID = 0;
				if(Liste_Processus[pid].Nom_Processus != NULL)
					free(Liste_Processus[pid].Nom_Processus);
				
				cpinti_dbg::CPINTI_DEBUG(" [OK]", 
									 " [OK]", 
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
				
			}
			
			cpinti_dbg::CPINTI_DEBUG("Processus " + pid_STR + " supprime!", 
									 "Process " + pid_STR + " deleted!",
									 "core::gestionnaire_tache", "supprimer_Processus()",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			return true;
		}
	 
	 
		/******** THREADS ********/
		
		unsigned int get_EtatThread(unsigned int TID)
		{
			return Liste_Threads[TID].Etat_Thread;
		}
		
		void set_EtatThread(unsigned int TID, unsigned int Etat)
		{
			Liste_Threads[TID].Etat_Thread = Etat;
		}
		
		
		unsigned int get_NombreThreads()
		{
			// Retourner le nombre de threads en cours
			return Nombre_Threads;
		}
		
		unsigned int get_NombreTimer()
		{
			// Retourner le nombre de timer executes
			return Nombre_Timer;
		}
		
		unsigned int get_ThreadEnCours()
		{
			// Retourner la thread en cours
			return Thread_en_cours;
		}
		
		
		unsigned int ajouter_Thread(void* (* Fonction) (void* arg), unsigned int pid, int Priorite)
		{
			// Cette fonction permet d'ajouter une thread (Thread)
			unsigned int Nouveau_TID = 0;
		
			// Si on atteint le nombre maximum de threads
			if(Nombre_Threads >= MAX_THREAD)
			{
				std::string nombre_threads_STR = std::to_string((unsigned int) MAX_THREAD);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'attribuer un nouveau TID. Le nombre est fixe a " + nombre_threads_STR + " thread(s) maximum.",
									 "[ERROR] Unable to attrib new TID. The maximal thread(s) number value is " + nombre_threads_STR,
									 "", "",
						Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return 0;
			}
			
			// Interdire toutes interruptions
			// begin_SectionCritique();
			std::string pid_STR = std::to_string((unsigned int) pid);
			
			cpinti_dbg::CPINTI_DEBUG("Creation du thread '' dans le processus " + pid_STR + "...", 
									 "Creating thread '' in the process " + pid_STR + "...", 
						"core::gestionnaire_tache", "ajouter_Thread()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			
			
			// Si le processus n'existe pas
			if(Liste_Processus[pid].PID != pid)
			{
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Le PID " + pid_STR + " n'existe pas. Impossible d'heberger un nouveau thread.",
									 " [ERROR] PID " + pid_STR + " not exist. Unable to host the new thread.",
									 "", "",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return 0;
			}
			
			
			// Rechercher un emplacement ID vide
			for(unsigned int b = 1; b <= MAX_THREAD; b++)	
			{
				if(Liste_Threads[b].TID == 0)
				{
					Nouveau_TID = b;
					break;
				}
			}
			
			if(Nouveau_TID == 0)
			{
				std::string nombre_threads_STR = std::to_string((unsigned int) MAX_THREAD);
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible d'attribuer un nouveau TID. Aucune zone memoire libere",
									 " [ERROR] Unable to attrib new TID. No free memory",
									 "core::gestionnaire_tache", "ajouter_Thread()",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return 0;
			}
			
			// Incremente le nombre de threads
			Nombre_Threads++;
		
			if(Liste_Threads[Nouveau_TID].DejaUse == false)
				for(int stack_niveau = 0; stack_niveau <= MAX_STACK-1; stack_niveau++)
					Liste_Threads[Nouveau_TID].Stack_Thread[stack_niveau] = (char*) calloc(1024, sizeof(char));
			else
			{
				std::string Stack_Thread_STR = std::to_string((unsigned int) &Liste_Threads[Nouveau_TID].Stack_Thread);
				cpinti_dbg::CPINTI_DEBUG("Recyclage de la memoire stack 0x" + Stack_Thread_STR,
									 "Stack memory recycling 0x" + Stack_Thread_STR,
									 "core::gestionnaire_tache", "ajouter_Thread()",
						Ligne_saute, Alerte_validation, Date_avec, Ligne_r_normal);
			}
			
			// Point attache du buffer du thread
			setjmp(Liste_Threads[Nouveau_TID].Buffer_Thread);			
			
			// Stack du contexte
			Liste_Threads[Nouveau_TID].Buffer_Thread[0].__esp 	= (unsigned int) Liste_Threads[Nouveau_TID].Stack_Thread + MAX_STACK;  
			
			// Adresse du debut
			Liste_Threads[Nouveau_TID].Buffer_Thread[0].__eip 	= (unsigned int) Fonction; 
			
			// Priorite
			Liste_Threads[Nouveau_TID].Priorite 				= Priorite;
			
			// Son numero de PID (Processus IDentifiant)
			Liste_Threads[Nouveau_TID].PID 						= pid;
			
			// Son numero de TID (Thread IDentifiant)
			Liste_Threads[Nouveau_TID].TID 						= Nouveau_TID;
			
			// Etat en execution (A modifier en PAUSE)
			Liste_Threads[Nouveau_TID].Etat_Thread 				= _EN_EXECUTION;
			
			// Marquer que le stack est utilise (pour un recyclage)
			Liste_Threads[Nouveau_TID].DejaUse 				= true;
			
			// Incrire le thread dans le processsus
			Liste_Processus[pid].Threads_Enfant[Nouveau_TID]			= true;
			
			
			
			std::string offset_fonction_STR = std::to_string((unsigned int) Fonction);
			std::string tid_STR = std::to_string((unsigned int) Nouveau_TID);
			cpinti_dbg::CPINTI_DEBUG(" [OK] TID:" + tid_STR + ". Fonction offset 0x" + offset_fonction_STR, 
									 " [OK] TID:" + tid_STR + ". Offset function 0x" + offset_fonction_STR,
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
			
			// Reexecuter le scheduler normalement
			// end_SectionCritique();
			
			// Retourner l'ID
			return Nouveau_TID;
		}
		
		unsigned int check_Thread_zombie(bool liberer, bool debug)
		{
			// Cette fonction permet de detecter tous les thread zombie
			//  et selon la variable "liberer" il enclanche la liberation memoire du thread
			
			unsigned int compteur_zombie = 0;
			
			if (debug == true)
				cpinti_dbg::CPINTI_DEBUG("Check de la liste des threads zombies...", 
										"Checking zombies threads list...",
										"core::gestionnaire_tache", "check_Thread_zombie()",
							Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
						
			for(unsigned int boucle = 0; boucle < MAX_THREAD; boucle++)
			{
				if(Liste_Threads[boucle].Etat_Thread == _EN_ARRET)
					set_EtatThread(boucle, _ZOMBIE);
				else if(Liste_Threads[boucle].Etat_Thread == _ZOMBIE)
				{
					// Compter le nombre de thread zombie
					compteur_zombie++;
					
					// Liberer sa memoire et le déindexer pour liberer la place
					if(liberer == true)
						free_Thread_zombie(boucle);
				}
			}
			// if (debug == true)
			// {
				if(compteur_zombie > 0)
				{
					std::string compteur_zombie_STR = std::to_string((unsigned int) compteur_zombie);
					cpinti_dbg::CPINTI_DEBUG(compteur_zombie_STR + " threads zombies supprime(s)", 
										compteur_zombie_STR + " deleted zombies thread(s)",
										"core::gestionnaire_tache", "free_Thread_zombie()",
							Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
				}
			// }
			
			// Retourner le nombre de threads zombie
			return compteur_zombie;
		}
	
		bool free_Thread_zombie(unsigned int tid)
		{
			// Cette fonction permet de supprimer un thread zombie
			//  Un thread zombie conserve encore sa segmentation memoire
			//  conserve dans le registre ESP, son point execution EIP
			//  et autres registres. Cette fonction va tout supprimer et
			//  liberer l'index TID!
			
			std::string tid_STR = std::to_string((unsigned int) tid);
			cpinti_dbg::CPINTI_DEBUG("Trouve! Suppression du thread zombie TID:" + tid_STR, 
									 "Found! Deleting zombie thread TID:" + tid_STR,
									 "core::gestionnaire_tache", "free_Thread_zombie()",
						Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG("  - Memoire stack", 
									 "  - Memory stack",
									 "", "",
						Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
			
			
			
			cpinti_dbg::CPINTI_DEBUG(" [OK]", 
									 " [OK]",
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
			
			cpinti_dbg::CPINTI_DEBUG("  - Registres esp, eip ...", 
									 "  - esp, eip ... registers",
									 "", "",
						Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);

			// Vider son stack (Sa memoire ESP)
			// for(int b = 0; b <= MAX_STACK-1; b++)
				// Liste_Threads[tid].Stack_Thread[b] = (char*) '\0';
			
			
			// for(int b = 0; b <= MAX_STACK-1; b++)
				// free((void*) Liste_Threads[tid].Stack_Thread[b]);
			
			// Vider les registres principaux
			// if(Liste_Threads[tid].Buffer_Thread[0].__esp != 0)
				// free((void*) Liste_Threads[tid].Buffer_Thread[0].__esp);
			
			// Liste_Threads[tid].Buffer_Thread[0].__esp = 0;
			Liste_Threads[tid].Buffer_Thread[0].__eip = 0;
			
			cpinti_dbg::CPINTI_DEBUG(" [OK]", 
									 " [OK]",
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
					
			// if(Liste_Threads[0].Buffer_Thread != NULL)
				// free((void*) Liste_Threads[0].Buffer_Thread[0].__esp);
			
			cpinti_dbg::CPINTI_DEBUG("  - Thread struct", 
									 "  - Thread struct",
									 "", "",
						Ligne_reste, Alerte_action, Date_sans, Ligne_r_normal);
						
						
			// Vider le reste
			// free(Liste_Threads[tid].Nom_Thread);
			Liste_Threads[tid].Etat_Thread = _ARRETE;
			Liste_Threads[tid].Priorite = 0;
			// Liste_Threads[tid].KID = 0;
			Liste_Threads[tid].OID = 0;
			Liste_Threads[tid].UID = 0;
			Liste_Threads[tid].PID = 0;
			Liste_Threads[tid].TID = 0;

			std::string Nombre_Threads_STR = std::to_string((unsigned int) Nombre_Threads);
			cpinti_dbg::CPINTI_DEBUG(" [OK] Nombre de threads restants " + Nombre_Threads_STR, 
									 " [OK] Numbers of threads " + Nombre_Threads_STR,
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
						
			// strncpy((char*) Liste_Threads[tid].Nom_Thread, (const char*) '\0', 16);
			
			
			// Diminuer le nombre de threads
			
			
			return true;
			
		}
		
		bool supprimer_Thread(unsigned int tid, bool force)
		{
			// Cette fonction permet de signaler l'arret d'un thread
			//  si force=true 
			
			// Ne doit pas etre interrompu
			begin_SectionCritique();
		
			// Si tid = 0 alors il s'agit du thread courant
			if(tid == 0)
				tid = Thread_en_cours;
			
			std::string tid_STR = std::to_string((unsigned int) tid);
			
			if (Liste_Threads[tid].Etat_Thread == _ZOMBIE)
			{
				cpinti_dbg::CPINTI_DEBUG("Le thread " + tid_STR + " est un zombie", 
									 "Thread " + tid_STR + " is a zombie",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);

				end_SectionCritique();
				return false;
			}
			if (Liste_Threads[tid].Etat_Thread == _ARRETE)
			{
				cpinti_dbg::CPINTI_DEBUG("Le thread " + tid_STR + " est deja arrete", 
									 "Thread " + tid_STR + " is already stopped",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			}
			else if (Liste_Threads[tid].Etat_Thread == _EN_ARRET)
			{
				cpinti_dbg::CPINTI_DEBUG("Arret du thread " + tid_STR + " deja signale", 
									 "Thread stopping " + tid_STR + " is already signaled",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			}
			else
			{
				// Mettre le thread en etat STOP = 0
				Liste_Threads[tid].Etat_Thread = _EN_ARRET;
				
				Nombre_Threads--;
				
			}
			
			if(force == true)
				free_Thread_zombie(tid);

			// Reprise du scheduler
			end_SectionCritique();
			
			cpinti_dbg::CPINTI_DEBUG("Thread " + tid_STR + " supprime!", 
									 "Thread " + tid_STR + " deleted!",
									 "core::gestionnaire_tache", "supprimer_Thread()",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			return true;
		}

		void __real_puts (const char* txt);
		
		
		void Interruption_Timer(int sig)
		{	
			
			// Ne rien faire si on est deja dans une interruption 
			//  ou une section critique
			//  ou qu'il n'y a pas de threads
			if((Est_Interruption() == true) || 
					(SECTION_CRITIQUE == true) ||
					(Nombre_Threads < 1))
				return;
			
			
			
			// Switcher les taches tous les 
			compteur++;
			if(compteur > MAX_CYCLES)
			{
				compteur = 0;
				switch_context();
			} else if(compteur == MAX_CYCLES/2)
				__dpmi_yield();
		}


		void switch_context()
		{
			// Cette fonction permet de switcher de thread en thread
			
			
			/** S'il y a pas de threads, innutile d'aller plus loin **/
			if(Nombre_Threads < 1) return;
			
			/** On bloque le scheduler **/
			begin_SectionCritique();

			/** Sauvegarder le contexte actuel **/
			if(SAUVEGARDER_CONTEXTE(Thread_en_cours) == true)
				return;

			
			/** Chercher le prochain thread a executer **/
			Thread_en_cours = SCHEDULER(Thread_en_cours);

			/** On reexcute le scheduler normalement **/
			end_SectionCritique();
			
			/** Et on restaure le prochain thread **/
			RESTAURER_CONTEXTE(Thread_en_cours);
			
		}
		
		unsigned int SCHEDULER(unsigned int ancien)
		{
			// SCHEDULER : Cette fonction permet de selectionner 
			//  le prochain thread a executer
			
			unsigned int nouveau = ancien;
			unsigned int compteur_ = 0;

			while(true)
			{
				nouveau++;
				compteur_++;

				// Si on depasse le nombre on repart de zero
				if(nouveau >= MAX_THREAD)
					nouveau = 0;
				
				if(Liste_Threads[nouveau].Etat_Thread != _ARRETE)
					if(Liste_Threads[nouveau].Etat_Thread != _ZOMBIE)
						return nouveau;
				
				if(compteur_ > MAX_THREAD*2)
					break;
			}
			
			cpinti_dbg::CPINTI_DEBUG("Oups.. Tous les thread sont a l'arret", 
									 "Oops.. All threads are stopped",
									 "core::gestionnaire_tache", "SCHEDULER()",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
			return 0;
		}
		
		bool SAUVEGARDER_CONTEXTE(unsigned int Thread_ID)
		{
			// Cette fonction permet de sauvegarder les registres d'un thread
			
			// Si le thread est pas vide
			if(Liste_Threads[Thread_ID].Etat_Thread != _ARRETE)
				if(Liste_Threads[Thread_ID].Etat_Thread != _ZOMBIE)
				{
					// Reexecuter le scheduler normalement
					end_SectionCritique();
					
					// Recuperer les info (registres...) du thread actuel
					if (setjmp(Liste_Threads[Thread_ID].Buffer_Thread) == 1)
					{					
						return true;
					}
					
					// On bloque le scheduler courant
					begin_SectionCritique();
				}
			
			return false;
			
		}
		
		void RESTAURER_CONTEXTE(unsigned int Thread_ID)
		{
			// Cette fonction permet de restaurer les registres d'un thread
			
			longjmp(Liste_Threads[Thread_ID].Buffer_Thread, 1);
		}
		
		void loop_MAIN()
		{
			// Cette fonction permet creer un point de terminaison du main en executant
			//  la premiere thread
			Thread_en_cours = 0;
			longjmp(Liste_Threads[0].Buffer_Thread, 1);	
		}
		
		
		
		
		
		/************************** TIMER **************************/
		
		bool initialiser_PIT(int frequence, int Intervalle_INTERNE)
		{
			// Cette fonction permet de reprogrammer l'intervalle du PIT
			//  -1:Pas de modification de la frequence
			//   0:Frequence MAX par defaut
			//	>0:Modification de la frequence d'horloge du PIT (Max:65535)
			
			if(frequence == 0)
			{	
				outportb(0x43, 0x36);
				outportb(0x40, 0);
				outportb(0x40, 0);
			} 
			else if ((frequence > 0) && frequence <= 65535)
			{	
				outportb(0x43, 0x36);
				outportb(0x40, ((1193180L / frequence) & 0x00ff));
				outportb(0x40, (((1193180L / frequence) >> 8) & 0x00ff));
			}
			
			// Modification du clock de la routine interne
			__djgpp_clock_tick_interval = Intervalle_INTERNE;
			
			return true;
		}
		
		unsigned int ajouter_Timer(unsigned int fonction)
		{
			// Cette fonction permet d'ajouter un Timer
			
			// Si on atteint le nombre maximum de timers
			if(Nombre_Timer >= MAX_TIMERS)
			{
				// (" ERREUR : Nombre maximum de timer autorise est de %d.", MAX_TIMERS);
				return 0;
			}
			
			// NE PAS laisser le scheduler switcher pendant cette operation
			begin_SectionCritique();
			
			// Incremente le nombre de timers
			Nombre_Timer++;
			
			
			// Initialise l'instance a zero
			instance_Timer[Nombre_Timer].it_interval.tv_sec 	= 0;
			instance_Timer[Nombre_Timer].it_interval.tv_usec 	= 0;
			instance_Timer[Nombre_Timer].it_value.tv_sec 		= 0;
			instance_Timer[Nombre_Timer].it_value.tv_usec 		= 0;

			// Definir le timer
			signal(SIGALRM, (void (*)(int)) fonction);
			setitimer(ITIMER_REAL, &instance_Timer[Nombre_Timer], NULL);
			
			// Reexecuter le scheduler normalement
			end_SectionCritique();
			
			// Retourner l'ID
			return Nombre_Timer;
		}


		bool demarrer_SCHEDULER(unsigned int id_TIMER, int temps_us)
		{
			// Cette fonction permet de demarrer le scheduling d'un timer 
			//  en definissant le temps en intervalle en micro-secondes
			
			// s'il y en a pas, retour!
			if(Nombre_Timer < 1) 
				return false;
			
			// Definir l'intervalle
			instance_Timer[id_TIMER].it_interval.tv_sec 	= 0;
			instance_Timer[id_TIMER].it_interval.tv_usec 	= temps_us;
			instance_Timer[id_TIMER].it_value.tv_sec 		= 0;
			instance_Timer[id_TIMER].it_value.tv_usec 		= temps_us;
			
			// On envoie tout ca
			setitimer(ITIMER_REAL, &instance_Timer[id_TIMER], NULL);
			
			return true;
		}

		bool stop_SCHEDULER(int id_TIMER)
		{
			// Cette fonction permet d'arreter le scheduler
			
			// Initialise l'instance a zero
			instance_Timer[id_TIMER].it_interval.tv_sec = 0;
			instance_Timer[id_TIMER].it_interval.tv_usec = 0;
			instance_Timer[id_TIMER].it_value.tv_sec = 0;
			instance_Timer[id_TIMER].it_value.tv_usec = 0;
			
			// On envoie tout ca
			setitimer(ITIMER_REAL, &instance_Timer[id_TIMER], NULL);
			
			return true;
		}
	} // namespace
} // namespace cpinti

void Interruption_Timer(int signal)
{
	cpinti::gestionnaire_tache::Interruption_Timer(signal);
}

