
#include <setjmp.h>
#include <sys/time.h>
#include <pthread.h>


void __real_puts (const char* txt);
void __wrap_puts (const char* txt);

extern "C" void cpc_CX_APM_MODE(unsigned int mode);
// extern "C" int Est_Interruption();
extern "C" void *Thread_Updater(void*);
extern "C" void Interruption_Timer(int signal);
extern "C" void ptr_Update_TID(unsigned int Adresse, unsigned int TID);

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
		static unsigned int 			NombreCycles 		= 0;
		static unsigned int 			NombreCyles_MAX		= 0;
		static unsigned int				InLiveCompteur 		= 0;
		static time_t 					Temps_Depart 		= (time_t) NULL;
		static time_t 					Temps_Actuel		= (time_t) NULL;
		static double 		 			Temps_total 		= 0;
		static unsigned int				saut_comptage		= 0;
		static int						Compteur_Cycle_cpu	= 0;
		
		
		static unsigned int Nombre_Processus 	= 0;
		
		static struct 		itimerval instance_Timer[MAX_TIMERS] = {};
		static bool			SECTION_CRITIQUE 	= false;
		static int 			compteur 			= 0;
		static unsigned int Nombre_Tache 		= 0;
		static unsigned int Nombre_Threads 		= 0;
		static unsigned int Nombre_Timer 		= 0;
		static unsigned int Thread_en_cours 	= 0;
		
		/**** Structure du thread ****/
		struct liste_threads
		{
			int				Priorite;		/** Priorite 0-128 **/
			int				Priorite_count;	/** Compteur priorite **/
			unsigned int 	Etat_Thread;	/** ARRETE, PAUSE, EXECUTION **/
			bool			DM_arret;
			unsigned int	Zombie_Count;	/** Nombre boucle avant mort **/
			unsigned int	KID; 			/** ID kernel **/
			unsigned int	OID; 			/** ID OS **/
			unsigned int	UID; 			/** ID USER **/
			unsigned int 	PID; 			/** ID Process **/
			unsigned int	TID;			/** ID Thread (Lui meme) **/
			unsigned int	PTID;			/** Pthread ID Thread (Lui meme) **/
			char			Nom_Thread[32]; /** Nom Thread **/
			unsigned int	*_eip;
			char* 			Stack_Thread;
			jmp_buf 		Buffer_Thread; 	/** eax, ebx, ecx, edx, eip... **/
			pthread_t 		thread;
		
		};

		/**** Structure du processus ****/
		struct list_processus
		{
			int						Priorite;			/** **/
			unsigned int 			Etat_Processus;		/** ARRETE, PAUSE, EXECUTION **/
			
			unsigned int			KID; 				/** ID kernel **/
			unsigned int			OID; 				/** ID OS **/
			unsigned int			UID; 				/** ID USER **/
			unsigned int 			PID; 				/** ID Process (Lui meme) **/
			unsigned int 			PID_Parent; 		/** ID Process (qui l'a cree) **/
			unsigned int			TID_Parent;			/** ID Thread  (Qui l'a cree **/
			
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
		unsigned int 		get_cycle_cpu				();
		unsigned int 		get_cycle_MAX_cpu			();
		void				eval_cycle_cpu				();
		
		/** Processus **/
		unsigned int 		ajouter_Processus			(const char* NomProcessus);
		bool 				supprimer_Processus			(unsigned int pid, bool force);
		unsigned int 		get_EtatProcessus			(unsigned int TID);
		void				set_EtatProcessus			(unsigned int TID, unsigned int Etat);
		unsigned int 		get_NombreProcessus			();
		
		/** Threads **/
		unsigned int 		ajouter_Thread				(void* (* Fonction) (void* arg), const char* NomThread, unsigned int pid, int Priorite, unsigned int Arguments);
		bool 				free_Thread_zombie			(unsigned int tid);
		unsigned int 		check_Thread_zombie			(bool liberer, bool debug);
		bool 				supprimer_Thread			(unsigned int tid, bool force);

		void 				Interruption_Timer			(int sig);
		void 				switch_context				();

		unsigned int 		SCHEDULER					(unsigned int ancien);
		bool 				SAUVEGARDER_CONTEXTE		(unsigned int Thread_ID);
		void 				RESTAURER_CONTEXTE			(unsigned int Thread_ID);
		
		unsigned int 		get_ID_Thread				();
		
		unsigned int 		get_EtatThread				(unsigned int TID);
		void				set_EtatThread				(unsigned int TID, unsigned int Etat);
		

		unsigned int 		get_TacheEnCours			();
		unsigned int 		get_ThreadEnCours			();
		unsigned int 		get_NombreThreads			();
		const char*			get_NomThread				(unsigned TID);
		
		
		
		void 				begin_SectionCritique		();
		void 				end_SectionCritique			();
		bool 				state_SectionCritique		();
		
		
		
		void 				loop_MAIN();
		
		bool 				fermer_core					();
		
		/**** TIMER ****/
		
		static bool initialiser_PIT(int frequence);
		static unsigned int ajouter_Timer(unsigned int fonction);
		static bool demarrer_SCHEDULER(unsigned int id_TIMER, int temps_us);
		static bool stop_SCHEDULER(int id_TIMER);
		static bool initialiser_PIT(int frequence, int Intervalle_INTERNE);
		unsigned int 		get_NombreTimer				();		

		
	} // gestionnaire_tache
} // namespace cpinti

