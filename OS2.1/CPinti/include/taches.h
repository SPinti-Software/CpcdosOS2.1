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
					
						unsigned int 	ID_KERNEL; 						// Numero d'instance KERNEL
						unsigned int	PID;							// Numero de PID associe
						
						std::string 	NomThread;						// Nom du thread
						
						unsigned int 	ID_THREAD;						// Numero d'instance du thread

						unsigned int	Etat;							// Etat du thread (Execution, pause...)
						int				Priorite;						// Priorite du thread courant (Ordonnancement)
						
						unsigned int	taille_allocation;				// Taille du bloc memoire en octets
						unsigned int	taille_heap;					// Taille de la heap en octets
						
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
						unsigned int	ID_KERNEL; 	// Numero d'instance KERNEL
						unsigned int	PID;		// Numero de PID
						unsigned int	NB_Thread;	// Nombre de threads associe au processus
						
						unsigned int	Etat;		// Etat du thread (Execution, pause...)
						
						std::string		NomProc; 	// Nom du processus
						
						// Tableau contenant la liste des threads
						// std::vector<std::shared_ptr<thread_instance>> threads_liste;				
				};

				static bool		 		switch_SIMPLE_doevents;
				static unsigned int 	NB_Cycle_CPU;
				static unsigned int		NB_MAX_Cycle_CPU;
				static unsigned int		Cycle_CPU_res;
				static unsigned int		Test_TIME;
				
				static unsigned int 	NB_processus; 	// Nombre de processus TOTAL
				static unsigned int 	NB_thread;		// Nombre de threads TOTAL
				
				static time_t			Temps_DEPART;
				static time_t			Temps_ARRIVE;
				static double 			Temps_Total;

				
				
				std::vector<processus_instance> processus_liste;
				processus_instance 	 myTEMP_proc;
				
			public:
			
				
				
				int init__gestionnaire(unsigned int _ID, int P0);
				
				/***************************************************************/
				/********************** P R O C E S S U S **********************/
				/***************************************************************/
				unsigned int Creer_Processus	(unsigned int ID_KERNEL, const std::string NomProcessus);
				unsigned int Etat_Processus		(unsigned int ID_KERNEL, unsigned int PID);
				int Gerer_Processus				(unsigned int ID_KERNEL, unsigned int PID, unsigned int ACTION);
				int Arreter_Processus			(unsigned int ID_KERNEL, unsigned int PID);
				std::string get_Nom_Processus	(unsigned int ID_KERNEL, unsigned int PID);
				
				/***************************************************************/
				/************************ T H R E A D S ************************/
				/***************************************************************/
				unsigned int Creer_Thread		(unsigned int ID_KERNEL, unsigned int PID, const std::string NomThread, 
													int Priorite, void* (* Fonction) (void*));
				unsigned int Joindre_Thread		(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, int CYCLES);
				unsigned int Etat_Thread		(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
				std::string get_Nom_Thread		(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
				int Gerer_Threads				(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, unsigned int ACTION);
				int Arreter_Thread				(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
				void Arreter_Thread_SANS_ID		(unsigned int INDEX_PROCESSUS, unsigned int INDEX_THREAD);
				unsigned int Thread_est_arrete			(unsigned int ID_KERNEL, bool Fermer);
				
				
				// Obtenir le nombre de processus total
				static unsigned int get_Nombre_processus();		
				static unsigned int get_Nombre_threads	();
				
				static void set_moins_Nombre_thread		();
				static void set_plus_Nombre_thread		();
				
				
				// Obtenir le nombre de threads dans un processus (via son numero de PID)
				unsigned int get_Nombre_thread(unsigned PID);
				
				static void Appeler_Scheduler_CPintiCore();

				static void Appeler_Scheduler_CPintiCore(unsigned int Temps);

				// static void ViderVector_Thread			(std::vector <Gestionnaire_des_taches::thread_instance*> 
															// &VectorThread);
															
				static void Update_cycle_CPU			();
				static unsigned int get_Nombre_cycle_CPU();
				static unsigned int get_NB_MAX_Cycle_CPU();
				static void set_NB_MAX_Cycle_CPU		(unsigned int NombreMax);
				static int get_pourcent_CPU				();
				
				
				// Constructeur
				Gestionnaire_des_taches					();
				
				// Desctructeur
				~Gestionnaire_des_taches				();
			
		};
	}
#endif