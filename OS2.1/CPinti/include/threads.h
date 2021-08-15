/* Entete de thread.cpp */



namespace cpinti 
{
	namespace gestionnaire_tache
	{	

		/* Fonctions de creation de threads */
		
		unsigned long cpinti_creer_thread(unsigned long ID_KERNEL, unsigned long ID_OS, unsigned long ID_USER, unsigned long PID, const char* NomThread, 
																		long Priorite, void* (* Fonction) (void * arg), void* ARG_CP, unsigned long ARG_TH);

		unsigned long cpinti_creer_thread(unsigned long ID_KERNEL, unsigned long ID_OS, unsigned long ID_USER, unsigned long PID, const char* NomThread, 
																		long Priorite, void* (* Fonction) (void * arg), void* ARG_CP, unsigned long ARG_TH, bool ExecuteThreadNow);
													
		long				cpinti_arreter_thread	(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
		long 			cpinti_arreter_thread	(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID, bool force);
		void* 			cpinti_get_Arguments	();
		unsigned long 	cpinti_joindre_thread	(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID, long CYCLES);
		long 			cpinti_sortir_thread	(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
		long 			cpinti_fin_thread		(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
		
		void* 			cpinti_thread_args		(long NoARG);
		long 			cpinti_gerer_thread		(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID, unsigned long ACTION);
		unsigned long 	cpinti_etat_thread		(unsigned long ID_KERNEL, unsigned long PID, unsigned long TID);
		const char*		cpinti_get_nom_thread	(unsigned long TID); // non utilise
		unsigned long 	cpinti_get_nombre_threads();

		bool			_exit					();
		struct thread_args
		{
			public:
				/**** Arguments du thread ****/
				static long 			ARG1;
				static unsigned long	ARG2;
				
				static const char* 	ARG3;
				static const char* 	ARG4;
				static const char* 	ARG5;
				
				
				/**** Identification du thread ****/
				static unsigned long PID; 		/* ID du processus */
				static unsigned long TID; 		/* ID du thread */
				static unsigned long USER_ID;	/* ID de l'utilisateur */
				static unsigned long OS_ID;		/* ID du systeme d'exploitation */
				static unsigned long KERNEL_ID;	/* ID du kernel */
				
				static const char* 	NomThread;	/* Nom du thread */
				
		};

	}
} // namespace cpinti