



namespace cpinti
{
	namespace gestionnaire_tache
	{
		unsigned long 	cpinti_creer_processus					(unsigned long ID_KERNEL, unsigned long ID_OS, unsigned long ID_USER, 
																	unsigned long PID_Parent, const char* NomProcessus);
		bool 			cpinti_arreter_processus				(unsigned long ID_KERNEL, unsigned long PID);
		void 			cpinti_set_etat_processus				(unsigned long ID_KERNEL, unsigned long PID, unsigned long ACTION);
		unsigned long 	cpinti_get_etat_processus				(unsigned long ID_KERNEL, unsigned long PID);
		const char* 	cpinti_get_nom_processus				(unsigned long PID);
		unsigned long 	cpinti_get_nombre_processus				();
		unsigned long	cpinti_get_nombre_thread_in_processus	(unsigned long PID);

		unsigned long 	cpinti_get_pid_from_tid();
		unsigned long 	cpinti_get_pid_from_tid(unsigned tid);
		
	}
}