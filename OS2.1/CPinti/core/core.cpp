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

#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <dos.h>
#include <signal.h>
#include <math.h>

#include <cstdio>
#include <unistd.h>
#include <cstdlib>
#include <stdio.h>
#include <dpmi.h>
#include "debug.h"
#include "Func_cpi.h"

#include "core.h"

// #include "leakchk.h"

extern "C" long 		cpc_clean	();

namespace cpinti 
{ 
	namespace gestionnaire_tache
	{ 
	
		
		
		void IamInLive()
		{
			// Ne pas calculer si le CPU est en evaluation
			if(EVALUATION_CPU == false)
			{
				begin_SectionCritique();
				
				// Cette fonction met a jour les cycles CPU
				//  ce qui permet d'estimer avec une precision de 60%
				//  de la charge du CPU
				InLiveCompteur++;
				if(InLiveCompteur > 27483600) // unsigned long
					InLiveCompteur = 0; // On reinitialise pour eviter les plantages
				
				
				// Ceci permet d'economiser du temps CPU
				saut_comptage++;
				if(saut_comptage > 24)
				{
					saut_comptage = 0;
					time(&Temps_Actuel);
					
					
					Temps_total = difftime(Temps_Actuel, Temps_Depart);

					
					if(Temps_total >= 1) // Si 1 seconde
					{
						NombreCycles = InLiveCompteur;
						InLiveCompteur = 0; // On reset le compteur
						time(&Temps_Depart);
					}
				}
				
				end_SectionCritique();
			}
		}
		 
		void eval_cycle_cpu()
		{
			// Permet d'evaluer le CPU de maniere breve en 1 seconde
			
			// Notifier pour ne pas fausser le resultat
			EVALUATION_CPU = true;
			
			time(&Temps_Actuel);
			time(&Temps_Depart);

			InLiveCompteur = 0;
			while(Temps_total <= 1)
			{
				InLiveCompteur++;
				if(InLiveCompteur > 27483600) // unsigned long
				if(InLiveCompteur > 27483600) // unsigned long
					break; // On reinitialise pour eviter les plantages
				
				doevents(1);
				
				time(&Temps_Actuel);
					
					
				Temps_total = difftime(Temps_Actuel, Temps_Depart);
			}
			
			// Recuperer le nombre MAX de cycles
			NombreCyles_MAX = (InLiveCompteur * 3) - (InLiveCompteur / 4); // 3 car il y a 3 ImInLive()
			
			EVALUATION_CPU = false;
		}
		
		unsigned long get_cycle_MAX_cpu()
		{
			if(NombreCyles_MAX <= 0)
				NombreCyles_MAX = 10;
			return NombreCyles_MAX;
		}
		
		unsigned long get_cycle_cpu()
		{
			if(NombreCycles > NombreCyles_MAX)
				return NombreCyles_MAX;
			else if(NombreCycles <= 0)
				return 0;
			else
				return NombreCycles;
		}


		volatile long SectionCritique_RECURSIF = 0;
		void begin_SectionCritique()
		{
			// Rendre le systeme non interruptible			
			SECTION_CRITIQUE = true;
			disable();
			
			// Plus on l'appel plus il faudra le remonter pour finir la scope
			SectionCritique_RECURSIF++;
		}
		
		void end_SectionCritique()
		{
			// Rendre le systeme interruptible
			SectionCritique_RECURSIF--;
			
			// Rendre interruptible quand le compteur sera a zero
			if(SectionCritique_RECURSIF <=0)
			{
				SectionCritique_RECURSIF = 0;
				SECTION_CRITIQUE = false;
				enable();
			}
		}
		
		bool state_SectionCritique()
		{
			// Retourner l'etat de la section critique
			return SECTION_CRITIQUE;
		}
		
		
		bool initialiser_Multitache()
		{	
			// Initialiser le multitasking 
			
			void* test = malloc(123);
			

			cpinti_dbg::CPINTI_DEBUG("Preparation du multitache en cours.", 
									 "Preparating multitask in progress. ",
						"core::gestionnaire_tache", "initialiser_Multitache()",
						Ligne_saute, Alerte_surbrille, Date_avec, Ligne_r_normal);
			
			time(&Temps_Depart);
			
			
			// Interdire toutes interruptions
			begin_SectionCritique();
			
			// Allouer un espace memoire pour chaque threads
			for(long index_id = 0; index_id <= MAX_THREAD-1; index_id++)
			{
				Liste_Threads[index_id].Etat_Thread = _ARRETE;
				Liste_Threads[index_id].Priorite = 0;
				Liste_Threads[index_id].KID = 0;
				Liste_Threads[index_id].OID = 0;
				Liste_Threads[index_id].UID = 0;
				Liste_Threads[index_id].PID = 0;
				
				// strncpy((char*) Liste_Threads[index_id].Nom_Thread, (const char*) '\0', 32);
			}
			
			/*** Creer un thread principal "Thread_Updater" ***/
			
			cpinti_dbg::CPINTI_DEBUG("Creation du thread principal 'Thread_Updater'...", 
									 "Creating main thread 'Thread_Updater'...",
						"core::gestionnaire_tache", "initialiser_Multitache()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
						
			// Incremente le nombre de threads
			Nombre_Threads++;
			
			// Priorite
			Liste_Threads[0].Priorite 				= _PRIORITE_THRD_FAIBLE;
			
			// Son numero de TID (Thread IDentifiant)
			Liste_Threads[0].TID 					= 0;
			
			// Etat en execution (A modifier en PAUSE)
			Liste_Threads[0].Etat_Thread 			= _EN_EXECUTION;
			
			Liste_Threads[0].DM_arret				= false;
			
			long toto = 0;
			pthread_create(&Liste_Threads->thread, NULL, Thread_Updater, (void*) &toto);

			// std::string offset_fonction = std::to_string((unsigned long) Thread_Updater);
			cpinti_dbg::CPINTI_DEBUG(" [OK] TID:0. Fonction offset 0x" + std::to_string((unsigned long) Thread_Updater), 
									 " [OK] TID:0. Offset function 0x" + std::to_string((unsigned long) Thread_Updater),
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);

			// Reexecuter le scheduler normalement
			end_SectionCritique();
			
			Thread_en_cours = 0;
	
			Interruption_Timer(0);

			
			// Retourner l'ID
			return true;
		} 
		
		bool fermer_core()
		{
			unsigned long nombre_threads = 0;
			// Cette fonction permet de fermer le core en terminant tous les threads
			for(unsigned long boucle = 1; boucle < MAX_THREAD; boucle++)
			{
				// Si le thread n'est pas arrete ou n'est pas zombie on ferme
				if(Liste_Threads[boucle].Etat_Thread != _ARRETE)
					if(Liste_Threads[boucle].Etat_Thread != _ZOMBIE)
					{
						nombre_threads++;
						supprimer_Thread(boucle, false);
					}
			}
			
			std::string nombre_threads_STR = std::to_string((unsigned long) nombre_threads);
			cpinti_dbg::CPINTI_DEBUG("Signal de fermeture envoye aux " + nombre_threads_STR + " thread(s). Attente",
									 "Closing signal sent to " + nombre_threads_STR + " threads(s). Waiting",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			fflush(stdout);
			
			// On attend un peut
			usleep(1500000);
			
			fflush(stdout);
			
			// Bloquer tout autres interruptions
			ENTRER_SectionCritique();
			
			unsigned long Nombre_Zombie = check_Thread_zombie(true, true);
			
			std::string Nombre_Zombie_STR = std::to_string((unsigned long) Nombre_Zombie);
			cpinti_dbg::CPINTI_DEBUG(Nombre_Zombie_STR + " thread(s) zombies ferme(s) sur " + nombre_threads_STR,
									 Nombre_Zombie_STR + " zombies thread(s) closed on " + nombre_threads_STR,
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			puts("Bye from kernel\n");
			
			// cpc_clean();
			
			// Activer les interruptions materiel
			enable();
			
			exit(0);
		
			
			return true;
		}
	 
	 
		/******** PROCESSUS ********/
		
		unsigned long get_EtatProcessus(unsigned long PID)
		{
			// Obtenir l'etat d'un processus
			return Liste_Processus[PID].Etat_Processus;
		}
		
		void set_EtatProcessus(unsigned long PID, unsigned long Etat)
		{
			// Definir l'etat d'un processus
			Liste_Processus[PID].Etat_Processus = Etat;
		}
		
		unsigned long get_NombreProcessus()
		{
			// Retourner le nombre de threads en cours
			return Nombre_Processus;
		}
		
		unsigned long ajouter_Processus(const char* NomProcessus)
		{
			// Cette fonction permet de creer un processus pour heberger des threads
			
			std::string NomProcessus_STR = NomProcessus;
			
			
			// Si on atteint le nombre maximum de processus
			if(Nombre_Processus >= MAX_PROCESSUS)
			{
				std::string nombre_processus_STR = std::to_string((unsigned long) MAX_PROCESSUS);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'attribuer un nouveau PID. Le nombre est fixe a " + nombre_processus_STR + " processus maximum.",
									 "[ERROR] Unable to attrib new PID. The maximal process number value is " + nombre_processus_STR,
									 "", "",
						Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return 0;
			}
			
			cpinti_dbg::CPINTI_DEBUG("Creation du processus '" + NomProcessus_STR + "'...", 
									 "Creating process '" + NomProcessus_STR + "'...",
						"core::gestionnaire_tache", "ajouter_Processus()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			
			unsigned long Nouveau_PID = 0;
			
			// Rechercher un emplacement ID vide
			for(unsigned long b = 1; b <= MAX_PROCESSUS; b++)	
			{
				if(Liste_Processus[b].PID == 0)
				{
					Nouveau_PID = b;
					break;
				}
			}
			if(Nouveau_PID == 0)
			{
				std::string nombre_threads_STR = std::to_string((unsigned long) MAX_THREAD);
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible d'attribuer un nouveau PID. Aucune zone memoire libere",
									 " [ERROR] Unable to attrib new PID. No free memory",
									 "", "",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return 0;
			}
			
			// Incremente le nombre de processus
			Nombre_Processus++;
			
			// Nom du processus
			strncpy((char*) Liste_Processus[Nouveau_PID].Nom_Processus, NomProcessus, 32);

			// Son numero de TID (Thread IDentifiant)
			Liste_Processus[Nouveau_PID].PID 				= Nouveau_PID;
			
			// Etat en execution
			Liste_Processus[Nouveau_PID].Etat_Processus 	= _EN_EXECUTION;

			
			std::string Nouveau_PID_STR = std::to_string((unsigned long) Nouveau_PID);
			cpinti_dbg::CPINTI_DEBUG(" [OK] PID " + Nouveau_PID_STR + ".", 
									 " [OK] PID " + Nouveau_PID_STR + ".",
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
						
			

			// Retourner l'ID
			return Nouveau_PID;
		}
		
		bool supprimer_Processus(unsigned long pid, bool force)
		{
			// Cette fonction permet de signaler l'arret d'un processus
			//  et donc de tous ses threads
			//  si force=true 
			volatile long compteur_thread = 0;
			
			if(pid == 0)
				return false;
			
			// std::string pid_STR = std::to_string((unsigned long) pid);
			
			
			if (Liste_Processus[pid].Etat_Processus == _ARRETE)
			{
				cpinti_dbg::CPINTI_DEBUG("Le processus " + std::to_string((unsigned long) pid) + " est deja arrete", 
									 "Process " + std::to_string((unsigned long) pid) + " is already stopped",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			}
			else if (Liste_Processus[pid].Etat_Processus == _EN_ARRET)
			{
				cpinti_dbg::CPINTI_DEBUG("Arret du processus " + std::to_string((unsigned long) pid) + " deja signale", 
									 "Process stopping " + std::to_string((unsigned long) pid) + " is already signaled",
									 "", "",
						Ligne_saute, Alerte_avertissement, Date_sans, Ligne_r_normal);
			}
			else
			{
				cpinti_dbg::CPINTI_DEBUG("Arret du processus PID " + std::to_string((unsigned long) pid) + " en cours...", 
									 "Stopping process PID " + std::to_string((unsigned long) pid) + " in progress",
									 "core::gestionnaire_tache", "supprimer_Processus()",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
						
				// Mettre le processus en etat STOP = 0
				Liste_Processus[pid].Etat_Processus = _EN_ARRET;
				
				
				// Signaler l'arret a tous les threads heberges
				for(unsigned long tid = 1; tid < MAX_THREAD; tid++)
				{
					// Si le thread est bien heberge dans le processus
					if(Liste_Processus[pid].Threads_Enfant[tid] == true)
					{
						// Attendre 1ms entre chaque signalements
						usleep(100);
						
						// On signale l'arret du thread
						supprimer_Thread(tid, false);
						
						// Compter le nombre de threads signales
						compteur_thread++;
					}
					
					// Dans tous les cas on met a FALSE
					Liste_Processus[pid].Threads_Enfant[tid] = false;
				}
				
				// Attendre 10ms pour etre SAFE
				usleep(1000);
				
				if(compteur_thread > 0)
				{
					// std::string compteur_thread_STR = std::to_string(compteur_thread);
					
					// Declarer le processus mort (On conserve certaines infos pour le debug)
					cpinti_dbg::CPINTI_DEBUG("Un signal d'arret a ete envoye a " + std::to_string(compteur_thread) + " thread(s)", 
										 "Stopping signal has been sent to " + std::to_string(compteur_thread) + " thread(s)",
										 "core::gestionnaire_tache", "supprimer_Processus()",
							Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
				}
				else
				{
					cpinti_dbg::CPINTI_DEBUG("Aucun threads heberge dans le processus. Hm.. parfait!", 
										 "Nothing hosted threads in the process. Hm.. perfect!",
										 "core::gestionnaire_tache", "supprimer_Processus()",
							Ligne_saute, Alerte_ok, Date_avec, Ligne_r_normal);
				}
				// Declarer le processus mort (On conserve certaines infos pour le debug)
				cpinti_dbg::CPINTI_DEBUG("Envoi d'un signal d'arret au processus (Attente de la fermeture des threads) ...", 
									 "Sending stopping signal to process (Waiting threads closing) ...",
									 "core::gestionnaire_tache", "supprimer_Processus()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
				
				if(Liste_Processus[pid].Nom_Processus != NULL)
					memset(Liste_Processus[pid].Nom_Processus, 0, 32);
					// free(Liste_Processus[pid].Nom_Processus);

				Liste_Processus[pid].Etat_Processus = _ARRETE;
				Liste_Processus[pid].PID = 0;
				
				
				
				cpinti_dbg::CPINTI_DEBUG(" [OK]", 
									 " [OK]", 
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
				
			}
			
			Nombre_Processus--;
			
			cpinti_dbg::CPINTI_DEBUG("Processus " + std::to_string((unsigned long) pid) + " supprime!", 
									 "Process " + std::to_string((unsigned long) pid) + " deleted!",
									 "core::gestionnaire_tache", "supprimer_Processus()",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			return true;
		}
	 
	 
		/******** THREADS ********/
		
		unsigned long get_EtatThread(unsigned long TID)
		{
			return Liste_Threads[TID].Etat_Thread;
		}
		
		void set_EtatThread(unsigned long TID, unsigned long Etat)
		{
			Liste_Threads[TID].Etat_Thread = Etat;
		}
		 
		const char* get_NomThread(unsigned long TID)
		{
			return (const char*) Liste_Threads[TID].Nom_Thread;
		}
		
		unsigned long get_NombreThreads()
		{
			// Retourner le nombre de threads en cours
			return Nombre_Threads;
		}
		
		unsigned long get_NombreTimer()
		{
			// Retourner le nombre de timer executes
			return Nombre_Timer;
		}
		
		unsigned long get_ThreadEnCours()
		{
			// Retourner la thread en cours
			return Thread_en_cours;
		}
		

		unsigned long ajouter_Thread(void* (* Fonction) (void* arg), const char* NomThread, unsigned long pid, long Priorite, unsigned long Arguments)
		{
			// Cette fonction permet d'ajouter une thread (Thread)
			unsigned long Nouveau_TID = 0;
			
			// std::string NomThread_STR = NomThread;
			
			// Si on atteint le nombre maximum de threads
			if(Nombre_Threads >= MAX_THREAD)
			{
				// std::string nombre_threads_STR = std::to_string((unsigned long) MAX_THREAD);
				cpinti_dbg::CPINTI_DEBUG("[ERREUR] Impossible d'attribuer un nouveau TID. Le nombre est fixe a " + std::to_string(MAX_THREAD) + " thread(s) maximum.",
									 "[ERROR] Unable to attrib new TID. The maximal thread(s) number value is " + std::to_string(MAX_THREAD),
									 "", "ajouter_Thread()",
						Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
				return 0;
			}
			
			std::string pid_STR = std::to_string((unsigned long) pid);
			
			cpinti_dbg::CPINTI_DEBUG("Creation du thread '" + std::string(NomThread) + "' dans le processus " + pid_STR + "...", 
									 "Creating thread '" + std::string(NomThread) + "' in the process " + pid_STR + "...", 
						"core::gestionnaire_tache", "ajouter_Thread()",
						Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
			
			
			
			// Si le processus n'existe pas
			if(Liste_Processus[pid].PID != pid)
			{
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Le PID " + pid_STR + " n'existe pas. Impossible d'heberger un nouveau thread.",
									 " [ERROR] PID " + pid_STR + " not exist. Unable to host the new thread.",
									 "", "ajouter_Thread()",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
				return 0;
			}
			
			
			ENTRER_SectionCritique();
			// Rechercher un emplacement ID vide
			for(unsigned long b = 1; b <= MAX_THREAD; b++)	
			{
				if(Liste_Threads[b].PID == 0)
				{
					Nouveau_TID = b;
					break;
				}
			}
			
			if(Nouveau_TID == 0)
			{
	
				cpinti_dbg::CPINTI_DEBUG(" [ERREUR] Impossible d'attribuer un nouveau TID. Aucune zone memoire libere",
									 " [ERROR] Unable to attrib new TID. No free memory",
									 "core::gestionnaire_tache", "ajouter_Thread()",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
						
				SORTIR_SectionCritique();
				
				return 0;
			}
		
			// Incremente le nombre de threads
			Nombre_Threads++;
			
			// Nom du thread
			strncpy((char*) Liste_Threads[Nouveau_TID].Nom_Thread, NomThread, 30);
			
			// Corriger les priorites
			if(Liste_Threads[Thread_en_cours].Priorite < 2) 
				Priorite = 2;
			else if(Liste_Threads[Thread_en_cours].Priorite > MAX_CYCLES) 
				Priorite = MAX_CYCLES;
			
			// Priorite
			Liste_Threads[Nouveau_TID].Priorite 				= Priorite;
			
			// Son numero de PID (Processus IDentifiant)
			Liste_Threads[Nouveau_TID].PID 						= pid;
			
			// Son numero de TID (Thread IDentifiant)
			Liste_Threads[Nouveau_TID].TID 						= Nouveau_TID;
			
			// Etat en execution (A modifier en PAUSE)
			Liste_Threads[Nouveau_TID].Etat_Thread 				= _EN_EXECUTION;
			
			// NE pas demander d'arret, ca serai un peu con
			Liste_Threads[Nouveau_TID].DM_arret					= false;
			
			// Point d'entree
			Liste_Threads[Nouveau_TID]._eip						= (unsigned long*) &Fonction;
			
			// Incrire le thread dans le processsus
			Liste_Processus[pid].Threads_Enfant[Nouveau_TID]	= true;
			
			// Mettre a jour le TID dans l'adresse memoire
			ptr_Update_TID(Arguments, Nouveau_TID);

			// Creer le thread
			pthread_create(&Liste_Threads[Nouveau_TID].thread, NULL, *Fonction, (void*) Arguments);
			
			// Liste_Threads[Nouveau_TID].PTID = (unsigned long) &Liste_Threads[Nouveau_TID].thread;
			
			// std::string offset_fonction_STR = std::to_string((unsigned long) Fonction);
			// std::string tid_STR = std::to_string((unsigned long) Nouveau_TID);
			cpinti_dbg::CPINTI_DEBUG(" [OK] TID:" + std::to_string((unsigned long) Nouveau_TID) + ". Fonction offset 0x" + std::to_string((unsigned long) Fonction), 
									 " [OK] TID:" + std::to_string((unsigned long) Nouveau_TID) + ". Offset function 0x" + std::to_string((unsigned long) Fonction),
									 "", "",
						Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
			

			SORTIR_SectionCritique();
		
			Thread_en_cours = Nouveau_TID;
			
			Interruption_Timer(0);


			// Retourner l'ID
			return Nouveau_TID;
			
			
		}
		unsigned long check_Thread_zombie(bool liberer, bool debug)
		{
			// Cette fonction permet de detecter tous les thread zombie
			//  et selon la variable "liberer" il enclanche la liberation memoire du thread
			
			unsigned long compteur_zombie = 0;
			
			
			
			// Retourner le nombre de threads zombie
			return compteur_zombie;
		}
	
		bool free_Thread_zombie(unsigned long tid)
		{
			// Cette fonction permet de supprimer un thread zombie
			//  Un thread zombie conserve encore sa segmentation memoire
			//  conserve dans le registre ESP, son point execution EIP
			//  et autres registres. Cette fonction va tout supprimer et
			//  liberer l'index TID!
			
			
			
			
			return true;
			
		}
		
		bool supprimer_Thread(unsigned long tid, bool force)
		{
			// Cette fonction permet de signaler l'arret d'un thread
			//  si force=true 

			// std::string tid_STR = std::to_string((unsigned long) tid);
			// std::string pid_STR = std::to_string((unsigned long) Liste_Threads[tid].PID);
			
			if(force == true)
			{
				
				Nombre_Threads--;
				// std::string Nombre_Threads_STR = std::to_string((unsigned long) Nombre_Threads);
				// std::string NomThread_STR = std::string(Liste_Threads[tid].Nom_Thread);
				 
				cpinti_dbg::CPINTI_DEBUG("Suppression du thread '" + std::string(Liste_Threads[tid].Nom_Thread) + "' TID:" + std::to_string((unsigned long) tid) + " PID:" + std::to_string((unsigned long) Liste_Threads[tid].PID) + ". " + std::to_string((unsigned long) Nombre_Threads) + " thread(s) restant(s)", 
										 "Deleting thread '" + std::string(Liste_Threads[tid].Nom_Thread) + "' TID:" + std::to_string((unsigned long) tid) + " PID:" + std::to_string((unsigned long) Liste_Threads[tid].PID) + ". " + std::to_string((unsigned long) Nombre_Threads) + "remaining thread(s)",
										 "core::gestionnaire_tache", "supprimer_Thread()",
							Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
				
				if(Liste_Threads[tid].Nom_Thread != NULL)
					memset(Liste_Threads[tid].Nom_Thread, 0, 30);
					// free(Liste_Threads[tid].Nom_Thread);
				
				Liste_Threads[tid].Priorite 				= 0;
				Liste_Processus[Liste_Threads[tid].PID].Threads_Enfant[tid]	= false;
				Liste_Threads[tid].PID 						= 0;
				Liste_Threads[tid].TID 						= 0;
				Liste_Threads[tid].Etat_Thread 				= _ARRETE;
				// Liste_Threads[tid].DM_arret					= false;
				Liste_Threads[tid]._eip						= NULL;
				
				
				
				// Quitter le thread
				pthread_exit(&Liste_Threads[tid].thread);

			}
			else
			{
				cpinti_dbg::CPINTI_DEBUG("Envoi d'un signal d'arret au thread '" + std::to_string((unsigned long) tid) + "' PID:" + std::to_string((unsigned long) Liste_Threads[tid].PID), 
										 "Sending stopping signal to thread '" + std::to_string((unsigned long) tid) + "' PID:" + std::to_string((unsigned long) Liste_Threads[tid].PID),
										 "core::gestionnaire_tache", "supprimer_Thread()",
							Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
							
				// Ce changement d'etat va provoquer un arret "automatique" du thread
				// Au bout de quelques secondes le thread va passer en mode "zombie"
				set_EtatThread(tid, _EN_ARRET);
				Liste_Threads[tid].DM_arret = true;
				doevents(1000);
				

			}
			
			return true;
		}
		
		
	
	
		static bool Alterner = false;
		static bool Executer = false;
		void Interruption_Timer(long Priorite)
		{	

			if(state_SectionCritique() == false)
			{
						
				begin_SectionCritique();


				// Si il a excute le nombre de cycle/priorite on reloop
				Liste_Threads[Thread_en_cours].Priorite_count++; 

				// Correctif (En cas de corruption, eviter un SIGFPE)
				if(Liste_Threads[Thread_en_cours].Priorite < 2) 
					Liste_Threads[Thread_en_cours].Priorite = 2;
				else if(Liste_Threads[Thread_en_cours].Priorite > MAX_CYCLES)
					Liste_Threads[Thread_en_cours].Priorite = MAX_CYCLES;
				
				if(Liste_Threads[Thread_en_cours].Priorite_count >= (MAX_CYCLES / Liste_Threads[Thread_en_cours].Priorite))
				{
					

					Liste_Threads[Thread_en_cours].Priorite_count = 0;
					Executer = true;
					Alterner = false;
					
				}

				// Liste_Threads[Thread_en_cours].Priorite_count++;
				// if(Liste_Threads[Thread_en_cours].Priorite_count >= Liste_Threads[Thread_en_cours].Priorite)
				// {
					// Liste_Threads[Thread_en_cours].Priorite_count = 0;
					// Executer = true;
					// Alterner = false;
					
				// }

				if(Alterner == true)
				{

					Alterner = false;
					
					end_SectionCritique();
					__dpmi_yield();
					begin_SectionCritique();

				}
				else
					Alterner = true;


				if(Executer == true)
				{
					unsigned long Precedent = Thread_en_cours;
					Alterner = true;
					Executer = false;
					
					// fprintf(stdout, " ****** SWITCH ! %u -->", Thread_en_cours);
					end_SectionCritique();
					
					if(Liste_Threads[Thread_en_cours].DM_arret == true)
					{
						cpinti_dbg::CPINTI_DEBUG("Thread zombie TID:" + std::to_string(Thread_en_cours) + "  Dernier essais : " + std::to_string(Liste_Threads[Thread_en_cours].Zombie_Count) + "/" + std::to_string(_ZOMBIE_ESSAI) + " .", 
												"Zombie Thread TID:" + std::to_string(Thread_en_cours) + " Last chance : " + std::to_string(Liste_Threads[Thread_en_cours].Zombie_Count) + "/" + std::to_string(_ZOMBIE_ESSAI) + " .", 
										 "core::gestionnaire_tache", "Interruption_Timer()",
										Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
						
						// Ah il a repondu il s'est termine tout seul, on arrete!
						if(Liste_Threads[Thread_en_cours].Etat_Thread == _ARRETE)
						{
							Liste_Threads[Thread_en_cours].DM_arret = false;
							cpinti_dbg::CPINTI_DEBUG("Oh! Le zombie s'est reveille et s'est auto-detruit!",
												"Oh! The zombie awoke and self-destructed!",
												 "core::gestionnaire_tache", "Interruption_Timer()",
												Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
						}
						
						if(Liste_Threads[Thread_en_cours].Zombie_Count >= _ZOMBIE_ESSAI)
						{
							// Declarer le thread en ZOMBIE
							Liste_Threads[Thread_en_cours].Etat_Thread = _ZOMBIE;
							

							
							cpinti_dbg::CPINTI_DEBUG("Thread TID:" + std::to_string(Thread_en_cours) + " declare ZOMBIE. Bannissement du scheduler.", 
												"Zombie Thread TID:" + std::to_string(Thread_en_cours) + " declared ZOMBIE. Ban from scheduler.", 
										 "core::gestionnaire_tache", "Interruption_Timer()",
										Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
							
							// Adieu thread! On t'a surement aime!
							while(true)
							{
								
								usleep(5000000); // bloquer le thread 5 secondes a l'infinit
							}
						}
						else
						{
							Liste_Threads[Thread_en_cours].Zombie_Count++;
							
							// 6 Cycles avant son arret, on enleve un thread
							if(Liste_Threads[Thread_en_cours].Zombie_Count == _ZOMBIE_ESSAI - 6)
								Nombre_Threads--;
						}
					}

					usleep(10);

					begin_SectionCritique();
					
					Thread_en_cours = Precedent; 
				}

				end_SectionCritique();

			}
		}


		void switch_context()
		{
			// Cette fonction permet de switcher de thread en thread
			
			
			
			return;
			
			
			/** S'il y a pas de threads, inutile d'aller plus loin **/
			if(Thread_en_cours == 0)
				if(Nombre_Threads < 1) 
					return;
			
			
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
		
		unsigned long SCHEDULER(unsigned long ancien)
		{
			// SCHEDULER : Cette fonction permet de selectionner 
			//  le prochain thread a executer
			
			unsigned long nouveau = ancien;
			unsigned long compteur_ = 0;

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
			
			cpinti_dbg::CPINTI_DEBUG("Oups.. Tous les threads sont a l'arret", 
									 "Oops.. All threads are stopped",
									 "core::gestionnaire_tache", "SCHEDULER()",
						Ligne_saute, Alerte_erreur, Date_sans, Ligne_r_normal);
			return 0;
		}
		
		bool SAUVEGARDER_CONTEXTE(unsigned long Thread_ID)
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
		
		void RESTAURER_CONTEXTE(unsigned long Thread_ID)
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
		
		bool initialiser_PIT(long frequence, long Intervalle_INTERNE)
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
		
		unsigned long ajouter_Timer(unsigned long fonction)
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


		bool demarrer_SCHEDULER(unsigned long id_TIMER, long temps_us)
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

		bool stop_SCHEDULER(long id_TIMER)
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

void Interruption_Timer(long signal)
{
	// fprintf(stdout, " **CORE 3\n");
	cpinti::gestionnaire_tache::Interruption_Timer(signal);
	// fprintf(stdout, " **CORE 3.1\n");
}


