



namespace cpinti
{
	namespace gestionnaire_tache
	{
		unsigned int 	cpinti_creer_processus		(unsigned int ID_KERNEL, unsigned int ID_OS, unsigned int ID_USER, 
														unsigned int PID_Parent, const char* NomProcessus);
		bool 			cpinti_arreter_processus	(unsigned int ID_KERNEL, unsigned int PID);
		void 			cpinti_set_etat_processus	(unsigned int ID_KERNEL, unsigned int PID, unsigned int ACTION);
		unsigned int 	cpinti_get_etat_processus	(unsigned int ID_KERNEL, unsigned int PID);
		const char* 	cpinti_get_nom_processus	(unsigned int PID);
		unsigned int 	cpinti_get_nombre_processus	();
		
	}
}