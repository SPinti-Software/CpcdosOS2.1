#define CpcDos

#ifdef CpcDos
	extern char*	cpc_CCP_Exec_Commande_ret	(const char* COMMANDE, int ID);
	extern char*	cpc_CCP_Lire_Variable		(const char* NomVariable, int Niveau);
	extern int 		cpc_CCP_Exec_Thread_cpc		(const char* chemin, int Thread_Priorite);
#endif

extern void registerSignal();

static int 
	End(XE_Module* _mainModule)
{
	for(int i = 0; i < aModule.size; i++){
		XE_Module _module = aModule.data[i];
		Xe_FreeFile(&_module.file);
	}
	atExit_ShowMemLeak();
	dbg_printl(" -== END ==- \n");
	return _mainModule?_mainModule->exe_ret:0;
}

int cpc_xe_loader_main(const char* _sPath) 
{
	dbg_printl("-== XE-Loader for Cpcdos OSx ==-");
	dbg_printl("-== EXE & ELF LOADER==-");
	setbuf(stdout, NULL);//Required to see every printf
	setbuf(stderr, NULL);//Required to see every printf
	registerSignal();
	
	XE_Module* m = Xe_Load(_sPath);

	if(m != NULL)
	{
		// Launch entry point
		Xe_ExecuteMain(m);
	
		// Clean memory
		return End(m);
	}
	else
		return 0;
}

char* cpc_eval( const char* format, ...)
{
	// This function allow to execute cpcdosc+ cmd and return results


	// Update 16-AVR-2020 - Sebastien
	char* str_ret;


	// -------------------------------
	// Todo : With multiples CC+ cmds
	va_list _arg_;va_start (_arg_, format);
	
	char BUFFER[4096] = {0};
	va_list arg;
	va_start (arg, format);
		int ret = vsprintf (BUFFER, format, arg);

		
	va_end (arg);
	
	printf("CpcDos> %s\r\n", BUFFER);
	str_ret = (char*) cpc_CCP_Exec_Commande_ret((const char*) BUFFER, 3);		
	printf("CpcDos-results> %s\r\n", str_ret);

	va_end (_arg_);
	
	// return allcated char results
	return str_ret;
}