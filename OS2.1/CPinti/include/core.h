
#include <setjmp.h>
#include <sys/time.h>
#include <pthread.h>


void __real_puts (const char* txt);
void __wrap_puts (const char* txt);

extern "C" void cpc_CX_APM_MODE(unsigned long mode);
// extern "C" long Est_Interruption();
extern "C" void *Thread_Updater(void*);
extern "C" void Interruption_Timer(long signal);
extern "C" void ptr_Update_TID(unsigned long Adresse, unsigned long TID);

#define ENTRER_SectionCritique cpinti::gestionnaire_tache::begin_SectionCritique
#define SORTIR_SectionCritique cpinti::gestionnaire_tache::end_SectionCritique

namespace cpinti
{
	namespace gestionnaire_tache
	{ 
		
		
		/**** Constantes ****/
		
		#define MAX_THREAD 		256 // Temporaire
		#define MAX_PROCESSUS 	128 // Temporaire
		#define MAX_TIMERS 		10
		#define MAX_STACK 		8
		
		#define MAX_CYCLES 		160	/* Nombre de cycles divisable MAX par thread*/
		#define _PRIORITE_THRD_TRES_FAIBLE  150
		#define _PRIORITE_THRD_ASSEZ_FAIBLE 100
		#define _PRIORITE_THRD_FAIBLE 		60
		#define _PRIORITE_THRD_MOYENNE		50
		#define _PRIORITE_THRD_MOYENNE_2	40
		#define _PRIORITE_THRD_BIEN			30
		#define _PRIORITE_THRD_ASSEZ_HAUTE	20 
		#define _PRIORITE_THRD_HAUTE		10 
		#define _PRIORITE_THRD_TRES_HAUTE 	2
		
		#define _EN_EXECUTION 		0x53 // 83
		#define _EN_PAUSE	 		0x65 // 101
		#define _EN_ATTENTE			0x62 // 98
		#define _EN_ARRET 			0x46 // 70
		#define _ZOMBIE 			0x56 // 86  /* Bloc memoire pret a etre raze a ZERO Mouahaha! */
		#define _ARRETE				0x4C // 76
		
		#define _ZOMBIE_ESSAI		24 // Nombre d'essais avant de bannir un thread qui ne repond plus.

		#define CX_StandbyMode 	0x1
		#define CX_SuspendMode 	0x2
		#define CX_Shutdown	  	0x3
		#define Restart		 	0x4
		
		/**** Variables ****/
		
		static bool						EVALUATION_CPU		= false;
		static unsigned long 			NombreCycles 		= 0;
		static unsigned long 			NombreCyles_MAX		= 0;
		static unsigned long				InLiveCompteur 		= 0;
		static time_t 					Temps_Depart 		= (time_t) NULL;
		static time_t 					Temps_Actuel		= (time_t) NULL;
		static double 		 			Temps_total 		= 0;
		static unsigned long				saut_comptage		= 0;
		static long						Compteur_Cycle_cpu	= 0;
		
		
		static unsigned long Nombre_Processus 	= 0;
		
		static struct 		itimerval instance_Timer[MAX_TIMERS] = {};
		static bool			SECTION_CRITIQUE 	= false;
		static long 			compteur 			= 0;
		static unsigned long Nombre_Tache 		= 0;
		static unsigned long Nombre_Threads 		= 0;
		static unsigned long Nombre_Timer 		= 0;
		static unsigned long Thread_en_cours 	= 0;
		
		/**** Structure du thread ****/
		struct liste_threads
		{
			long				Priorite;		/** Priorite 0-128 **/
			long				Priorite_count;	/** Compteur priorite **/
			unsigned long 	Etat_Thread;	/** ARRETE, PAUSE, EXECUTION **/
			bool			DM_arret;
			unsigned long	Zombie_Count;	/** Nombre boucle avant mort **/
			unsigned long	KID; 			/** ID kernel **/
			unsigned long	OID; 			/** ID OS **/
			unsigned long	UID; 			/** ID USER **/
			unsigned long 	PID; 			/** ID Process **/
			unsigned long	TID;			/** ID Thread (Lui meme) **/
			unsigned long	PTID;			/** Pthread ID Thread (Lui meme) **/
			char			Nom_Thread[32]; /** Nom Thread **/
			unsigned long	*_eip;
			char* 			Stack_Thread;
			jmp_buf 		Buffer_Thread; 	/** eax, ebx, ecx, edx, eip... **/
			pthread_t 		thread;
		
		};

		/**** Structure du processus ****/
		struct list_processus
		{
			long						Priorite;			/** **/
			unsigned long 			Etat_Processus;		/** ARRETE, PAUSE, EXECUTION **/
			
			unsigned long			KID; 				/** ID kernel **/
			unsigned long			OID; 				/** ID OS **/
			unsigned long			UID; 				/** ID USER **/
			unsigned long 			PID; 				/** ID Process (Lui meme) **/
			unsigned long 			PID_Parent; 		/** ID Process (qui l'a cree) **/
			unsigned long			TID_Parent;			/** ID Thread  (Qui l'a cree **/
			
			char					Nom_Processus[32]; 	/** Nom Processus **/

			bool					Threads_Enfant[MAX_THREAD];
			// static liste_threads 	Liste_Threads[MAX_THREAD] = {};
		};
		
		#ifndef Liste_Processus
			static list_processus Liste_Processus[MAX_PROCESSUS] = {};
		#endif
		
		#ifndef Liste_Threads
			static liste_threads Liste_Threads[MAX_THREAD] = {};
		#endif
		
		
		/**** Methodes ****/
		bool 				initialiser_Multitache		();
		void		 		IamInLive					();
		unsigned long 		get_cycle_cpu				();
		unsigned long 		get_cycle_MAX_cpu			();
		void				eval_cycle_cpu				();
		
		/** Processus **/
		unsigned long 		ajouter_Processus			(const char* NomProcessus);
		bool 				supprimer_Processus			(unsigned long pid, bool force);
		unsigned long 		get_EtatProcessus			(unsigned long TID);
		void				set_EtatProcessus			(unsigned long TID, unsigned long Etat);
		unsigned long 		get_NombreProcessus			();
		
		/** Threads **/
		unsigned long 		ajouter_Thread				(void* (* Fonction) (void* arg), const char* NomThread, unsigned long pid, long Priorite, unsigned long Arguments);
		bool 				free_Thread_zombie			(unsigned long tid);
		unsigned long 		check_Thread_zombie			(bool liberer, bool debug);
		bool 				supprimer_Thread			(unsigned long tid, bool force);

		void 				Interruption_Timer			(long sig);
		void 				switch_context				();

		unsigned long 		SCHEDULER					(unsigned long ancien);
		bool 				SAUVEGARDER_CONTEXTE		(unsigned long Thread_ID);
		void 				RESTAURER_CONTEXTE			(unsigned long Thread_ID);
		
		unsigned long 		get_ID_Thread				();
		
		unsigned long 		get_EtatThread				(unsigned long TID);
		void				set_EtatThread				(unsigned long TID, unsigned long Etat);
		

		unsigned long 		get_TacheEnCours			();
		unsigned long 		get_ThreadEnCours			();
		unsigned long 		get_NombreThreads			();
		const char*			get_NomThread				(unsigned long TID);
		
		
		
		void 				begin_SectionCritique		();
		void 				end_SectionCritique			();
		bool 				state_SectionCritique		();
		
		
		
		void 				loop_MAIN();
		
		bool 				fermer_core					();
		
		/**** TIMER ****/
		
		static bool initialiser_PIT(long frequence);
		static unsigned long ajouter_Timer(unsigned long fonction);
		static bool demarrer_SCHEDULER(unsigned long id_TIMER, long temps_us);
		static bool stop_SCHEDULER(long id_TIMER);
		static bool initialiser_PIT(long frequence, long Intervalle_INTERNE);
		unsigned long 		get_NombreTimer				();		

		
	} // gestionnaire_tache
} // namespace cpinti

