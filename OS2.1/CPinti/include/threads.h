/* Entete de thread.cpp */



namespace cpinti 
{
	namespace gestionnaire_tache
	{	

		/* Fonctions de creation de threads */
		
		unsigned int cpinti_creer_thread(unsigned int ID_KERNEL, unsigned int ID_OS, unsigned int ID_USER, unsigned int PID, const char* NomThread, 
																		int Priorite, void* (* Fonction) (void * arg), void* ARG_CP, unsigned int ARG_TH);
													
		int				cpinti_arreter_thread	(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
		int 			cpinti_arreter_thread	(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, bool force);
		void* 			cpinti_get_Arguments	();
		unsigned int 	cpinti_joindre_thread	(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, int CYCLES);
		int 			cpinti_sortir_thread	(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
		int 			cpinti_fin_thread		(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
		
		void* 			cpinti_thread_args		(int NoARG);
		int 			cpinti_gerer_thread		(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID, unsigned int ACTION);
		unsigned int 	cpinti_etat_thread		(unsigned int ID_KERNEL, unsigned int PID, unsigned int TID);
		const char*		cpinti_get_nom_thread	(unsigned int TID); // non utilise
		unsigned int 	cpinti_get_nombre_threads();

		bool			_exit					();
		struct thread_args
		{
			public:
				/**** Arguments du thread ****/
				static int 			ARG1;
				static unsigned int	ARG2;
				
				static const char* 	ARG3;
				static const char* 	ARG4;
				static const char* 	ARG5;
				
				
				/**** Identification du thread ****/
				static unsigned int PID; 		/* ID du processus */
				static unsigned int TID; 		/* ID du thread */
				static unsigned int USER_ID;	/* ID de l'utilisateur */
				static unsigned int OS_ID;		/* ID du systeme d'exploitation */
				static unsigned int KERNEL_ID;	/* ID du kernel */
				
				static const char* 	NomThread;	/* Nom du thread */
				
		};

	}
} // namespace cpinti