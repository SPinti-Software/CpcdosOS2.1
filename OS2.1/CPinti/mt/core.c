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
		19/09/2018
		
		

*/

#include <setjmp.h>
#include <ctime>
#include <dos.h>
#include <signal.h>
#include <sys/time.h>
#include <cstdio>
#include <unistd.h>
#include <cstdlib>
#include <stdio.h>
#include <signal.h>
#include <dpmi.h>

#include "core.h"



namespace NP_cpinti_mt
{ 
	
	
	/**** Variables ****/
	
	static struct itimerval instance_Timer[MAX_TIMERS] = {};
	
	static bool			SECTION_CRITIQUE 	= false;
	static int 			compteur 			= 0;
	static unsigned int Nombre_Tache 		= 0;
	static unsigned int Nombre_Threads 		= 0;
	static unsigned int Nombre_Timer 		= 0;
	static unsigned int Thread_en_cours 	= 0;

	
	/**** Structure du thread ****/
	struct liste_threads
	{
		int 			Etat_Thread;
		int				Priorite;
		unsigned int	TID;
		char* 			Stack_Thread[MAX_STACK];
		jmp_buf 		Buffer_Thread;
	} Liste_Threads[MAX_THREAD];
	
	
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
	
	bool initialiser_Multitache()
	{	
		// Initialiser le multitasking 
		
		
		// Interdire toutes interruptions
		begin_SectionCritique();
		
		// Allouer un espace memoire pour chaque threads
		for(int index_id = 0; index_id <= MAX_THREAD-1; index_id++)
			for(int stack_niveau = 0; stack_niveau <= MAX_STACK-1; stack_niveau++)
				Liste_Threads[index_id].Stack_Thread[stack_niveau] = (char*) calloc(1024, sizeof(char));
		
		/*** Creer un thread principal "Thread_MAIN" ***/
		
		// Point d'attache du buffer pour initialiser le tableau
		setjmp(Liste_Threads[0].Buffer_Thread);
		
		// Stack du contexte
		Liste_Threads[0].Buffer_Thread[0].__esp = (unsigned int) Liste_Threads[0].Stack_Thread + MAX_STACK;  
		
		// Adresse du debut
		Liste_Threads[0].Buffer_Thread[0].__eip = (unsigned int) Thread_MAIN; 
		
		// Priorite
		Liste_Threads[0].Priorite 				= 127;
		
		// Son numero de TID (Thread IDentifiant)
		Liste_Threads[0].TID 					= 0;
		
		// Etat en execution (A modifier en PAUSE)
		Liste_Threads[0].Etat_Thread 			= EXECUTION;
		
		printf(" Info : Ajout du thread MAIN No %d emplacement %d\n", 0, (unsigned int) Thread_MAIN);
		 
		// Reexecuter le scheduler normalement
		end_SectionCritique();
		
		// Retourner l'ID
		return true;
	} 
 
	unsigned int ajouter_Thread(unsigned int Fonction, int Priorite)
	{
		// Cette fonction permet d'ajouter une thread (Thread)
		
	
		// Si on atteint le nombre maximum de threads
		if(Nombre_Threads >= MAX_THREAD)
		{
			printf(" ERREUR : Nombre maximum de threads autorise pour cette version est de %d.", MAX_TIMERS);
			return 0;
		}
		
		// Interdire toutes interruptions
		begin_SectionCritique();
		
		// Incremente le nombre de threads
		Nombre_Threads++;
		
		unsigned int Nouveau_TID = 0;
		
		// Rechercher un emplacement ID vide
		for(unsigned int b = 1; b < MAX_THREAD; b++)	
			if(Liste_Threads[b].TID == 0)
			{
				Nouveau_TID = b;
				break;
			}
				
		if(Nouveau_TID == 0)
		{
			printf(" ERREUR : Impossible d'attribuer un nouveau TID.");
			return 0;
		}
	
		// Point attache du buffer du thread
		setjmp(Liste_Threads[Nouveau_TID].Buffer_Thread);
		
		// Stack du contexte
		Liste_Threads[Nouveau_TID].Buffer_Thread[0].__esp 	= (unsigned int) Liste_Threads[Nouveau_TID].Stack_Thread + MAX_STACK;  
		
		// Adresse du debut
		Liste_Threads[Nouveau_TID].Buffer_Thread[0].__eip 	= (unsigned int) Fonction; 
		
		// Priorite
		Liste_Threads[Nouveau_TID].Priorite 				= Priorite;
		
		// Son numero de TID (Thread IDentifiant)
		Liste_Threads[Nouveau_TID].TID 						= Nouveau_TID;
		
		// Etat en execution (A modifier en PAUSE)
		Liste_Threads[Nouveau_TID].Etat_Thread 				= EXECUTION;
		
		printf(" Info : Ajout du thread No %d emplacement %d\n", Nouveau_TID, (unsigned int) Fonction);

		
		// Reexecuter le scheduler normalement
		end_SectionCritique();
		
		// Retourner l'ID
		return Nouveau_TID;
	}
	
	bool end_Thread(unsigned int pid)
	{
		// Cette fonction permet de stopper un thread
		
		// Ne doit pas etre interrompu
		begin_SectionCritique();
	
		// Si pid = 0 alors il s'agit du thread courant
		if(pid == 0)
			pid = Thread_en_cours;
		
		// Mettre le thread en etat STOP = 0
		Liste_Threads[pid].Etat_Thread = STOP;
		
		// Vider son stack (Sa memoire ESP)
		// for(int b = 0; b <= MAX_STACK-1; b++)
			// Liste_Threads[pid].Stack_Thread[b] = ;
		
		// Vider les registres principaux
		Liste_Threads[pid].Buffer_Thread[0].__esp = 0;
		Liste_Threads[pid].Buffer_Thread[0].__eip = 0;
		
		// Priorite par defaut
		Liste_Threads[pid].TID = 0;
		
		// Et remettre son TID a zero
		Liste_Threads[pid].Priorite = 0;
		
		// Reduire le nombre de threads
		Nombre_Threads--;
		
		// Reprise du scheduler
		end_SectionCritique();
		
		return true;
	}
	

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
		// On passe a une autre thread!
		
		// On bloque le scheduler courant
		begin_SectionCritique();
		
		// Libere un coup le CPU
		// __dpmi_yield()
	
		// Si le nombre de thread est inferieur a 2 (donc 1 ou 0)
		//  il est inutile de switcher
		if(Nombre_Threads < 1) return;

		// Si le thread est pas vide
		if(Liste_Threads[Thread_en_cours].Etat_Thread != STOP)
		{
			
			// Reexecuter le scheduler normalement
			end_SectionCritique();
			
			// Recuperer les info (registres...) du thread actuel
			if (setjmp(Liste_Threads[Thread_en_cours].Buffer_Thread) == 1)
			{
				
				return;
			}
		}

		
		// On cherche quel prochain thread (TID) a executer
		Thread_en_cours++;
		
		if (Thread_en_cours >= MAX_THREAD)
			Thread_en_cours = 0;
		
		
		// Si le prochain thread n'est pas STOPPE ni en PAUSE
		while(Liste_Threads[Thread_en_cours].Etat_Thread != EXECUTION)
		{
			Thread_en_cours++;
			
			if (Thread_en_cours >= MAX_THREAD)
				Thread_en_cours = 0;
		}

		// Reexecuter le scheduler normalement
		end_SectionCritique();
		
		// On execute le prochain thread
		longjmp(Liste_Threads[Thread_en_cours].Buffer_Thread, 1);
		
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
			printf(" ERREUR : Nombre maximum de timer autorise est de %d.", MAX_TIMERS);
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

void Interruption_Timer(int signal)
{
	NP_cpinti_mt::Interruption_Timer(signal);
}

