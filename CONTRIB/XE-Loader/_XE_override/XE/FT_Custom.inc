#define CpcDos

#ifdef CpcDos
	extern char*	cpc_CCP_Exec_Commande_ret	(const char* COMMANDE, int ID);
	extern char*	cpc_CCP_Lire_Variable		(const char* NomVariable, int Niveau);
	extern int 		cpc_CCP_Exec_Thread_cpc		(const char* chemin, int Thread_Priorite);
#endif

char* cpc_eval( const char* format, ...)
{
	// This function allow to execute cpcdosc+ cmd and return results


	// Update 16-AVR-2020 - Sebastien
	char* str_ret =  (char*) cpc_CCP_Exec_Commande_ret("txt/ coucou", 3);

	// return allcated char results
	return str_ret;

	// -------------------------------
	// Todo : With multiples CC+ cmds
	va_list _arg_;va_start (_arg_, format);
	
	char BUFFER[4096] = {0};
	va_list arg;
	va_start (arg, format);
		int ret = vsprintf (BUFFER, format, arg);
	va_end (arg);
	printf("CpcDos> %s", BUFFER);
	
	va_end (_arg_);
	
	return "";//TODO
}