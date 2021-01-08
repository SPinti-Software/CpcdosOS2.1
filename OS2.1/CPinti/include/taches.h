/* Entete de taches.cpp */

#include <sys/time.h>

#ifndef doevents
#define doevents(temps) cpinti::cpinti_doevents(temps)
#endif


#ifndef DEF_gestionnaire_tache
	#define DEF_gestionnaire_tache 1
	namespace gestionnaire_tache
	{
		
		static bool 			MT_Timer_en_Marche = true;
		
		#define _MAX_PROCESSUS		1024
		#define _MAX_THREADS		6500
		
		#define _EN_EXECUTION 		0x53
		#define _EN_PAUSE	 		0x65
		#define _EN_ATTENTE			0x62
		#define _EN_ARRET 			0x46
		#define _ARRETE				0x4C /* Bloc memoire pret a etre raze a ZERO Mouahaha! */
		
		
		class Gestionnaire_des_taches
		{
			private:
			
				// **********************************************
				// **** Structure d'une instance d'un thread ****
				// **********************************************
				
				struct thread_instance
				{
					public:
					
						unsigned long 	ID_KERNEL; 						// Numero d'instance KERNEL
						unsigned long	PID;							// Numero de PID associe
						
						std::string 	NomThread;						// Nom du thread
						
						unsigned long 	ID_THREAD;						// Numero d'instance du thread

						unsigned long	Etat;							// Etat du thread (Execution, pause...)
						long				Priorite;						// Priorite du thread courant (Ordonnancement)
						
						unsigned long	taille_allocation;				// Taille du bloc memoire en octets
						unsigned long	taille_heap;					// Taille de la heap en octets
						
						// Instance d'un thread dans un smart pointer
						// std::shared_ptr<thread_instance_AUTO> THREAD_INSTANCE; /*(new thread_instance_AUTO);*/
						
						void*			adresse_offset_DEBUT; 			// Adresse memoire depart
						void*			adresse_offset_FIN;				// Adresse memoire fin
				};
			
			
				// *************************************************
				// **** Structure d'une instance d'un processus ****
				// *************************************************
			
				struct processus_instance
				{
					public:
						unsigned long	ID_KERNEL; 	// Numero d'instance KERNEL
						unsigned long	PID;		// Numero de PID
						unsigned long	NB_Thread;	// Nombre de threads associe au processus
						
						unsigned long	Etat;		// Etat du thread (Execution, pause...)
						
						std::string		NomProc; 	// Nom du processus
						
						// Tableau contenant la liste des threads
						// std::vector<std::shared_ptr<thread_instance>> threads_liste;				
				};

				static bool		 		switch_SIMPLE_doevents;
				static unsigned long 	NB_Cycle_CPU;
				static unsigned long		NB_MAX_Cycle_CPU;
				static unsigned long		Cycle_CPU_res;
				static unsigned long		Test_TIME;
				
				static unsigned long 	NB_processus; 	// Nombre de processus TOTAL
				static unsigned long 	NB_thread;		// Nombre de threads TOTAL
				
				static time_t			Temps_DEPART;
				static time_t			Temps_ARRIVE;
				static double 			Temps_Total;

				
				
				std::vector<processus_instance> processus_liste;
				processus_instance 	 myTEMP_proc;
				
			public:
			
				
				
				long init__gestionnaire(unsigned long _ID, long P0);
				
				/***************************************************************/
				/********************** P R O C E S S U S **********************/
				/***************************************************************/
				unsigned long Creer_Processus	(unsigned long ID_KERNEL, const std::string NomProcessus);
				unsigned long Etat_Processus		(unsigned long ID_KERNEL, unsigned long PID);
				long Gerer_Processus				(unsigned long ID_KERNEL, unsigned long PID, unsigned long ACTION);
				long Arreter_Processus			(unsigned long ID_KERNEL, unsigned long PID);
				std::string get_Nom_Processus	(unsigned long ID_KERNEL, unsigned long PID);
				
				/***************************************************************/
				/************************ T H R E A D S ************************/
				/***************************************************************/
				unsigned long Creer_Thread		(unsigned long ID_KERNEL, unsigned long PID, const std::string NomThread, 
													long Priorite, void* (* Fonction) (void*));
				unsigned long Joindre_Thread		(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID, long CYCLES);
				unsigned long Etat_Thread		(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
				std::string get_Nom_Thread		(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
				long Gerer_Threads				(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID, unsigned long ACTION);
				long Arreter_Thread				(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
				void Arreter_Thread_SANS_ID		(unsigned long INDEX_PROCESSUS, unsigned long INDEX_THREAD);
				unsigned long Thread_est_arrete			(unsigned long ID_KERNEL, bool Fermer);
				
				
				// Obtenir le nombre de processus total
				static unsigned long get_Nombre_processus();		
				static unsigned long get_Nombre_threads	();
				
				static void set_moins_Nombre_thread		();
				static void set_plus_Nombre_thread		();
				
				
				// Obtenir le nombre de threads dans un processus (via son numero de PID)
				unsigned long get_Nombre_thread(unsigned PID);
				
				static void Appeler_Scheduler_CPintiCore();

				static void Appeler_Scheduler_CPintiCore(unsigned long Temps);

				// static void ViderVector_Thread			(std::vector <Gestionnaire_des_taches::thread_instance*> 
															// &VectorThread);
															
				static void Update_cycle_CPU			();
				static unsigned long get_Nombre_cycle_CPU();
				static unsigned long get_NB_MAX_Cycle_CPU();
				static void set_NB_MAX_Cycle_CPU		(unsigned long NombreMax);
				static long get_pourcent_CPU				();
				
				
				// Constructeur
				Gestionnaire_des_taches					();
				
				// Desctructeur
				~Gestionnaire_des_taches				();
			
		};
	}
#endif