	char * cpc_fgets ( char * texte, int num, FILE * stream )
	{
		// if (stream == stdin)
		// {
			cpc_CCP_Exec_Commande("fix/ /q _exe_QUESTION", 4);
			char * retour = cpc_CCP_Lire_Variable("_exe_QUESTION", 4);
			for(int b = 0; b <= num; b++)
			{
				texte[b] = retour[b];
			}
			texte[num-1] = '\n';
			texte[num] = '\0';
			return texte;
		// }
		// else
			// return fgets(texte, num, stream);
	}

	int my_memcmp(const void *p1, const void *p2, size_t n)
	{
		// Demande par Maeiky
		size_t i;

		if (p1 == p2)
		{
			return 0;
		}

		// Boucle pour comparer les deux buffers
		for (i = 0; (i < n) && (*(uint8_t *)p1 == *(uint8_t *)p2);
			i++, p1 = 1 + (uint8_t *)p1, p2 = 1 + (uint8_t *)p2);

		// Si ça retourne 1 c'est que c'est <
		return (i == n) ? 0 : (*(uint8_t *)p1 - *(uint8_t *)p2);
	}

	char * substr(char *chaineSource,int pos,int len) { 
		char * dest=NULL;                        
		if (len>0) {                  
			/* allocation et mise à zéro */          
			dest = (char *)calloc(len+1, 1);      
			/* vérification de la réussite de l'allocation*/  
			if(NULL != dest) {
				strncat(dest,chaineSource+pos,len);            
			}
		}                                       
		return dest;                            
	}
	 
	char * mid(char *chaineSource, int pos) {
		return (pos>strlen(chaineSource))? chaineSource : substr(chaineSource, pos, strlen(chaineSource));
	}
	 
	char * left(char *chaineSource, int len){
		return (len>=strlen(chaineSource))? chaineSource : substr(chaineSource, 0, len);
	}
	 
	char * right(char *chaineSource, int len){
		return (len>=strlen(chaineSource))? chaineSource : substr(chaineSource, strlen(chaineSource)-len, len);
	}
	
	
	void WINAPI sleep_CPC(unsigned int millisecondes)
	{
		// Cette fonction permet d'utiliser le "sleep" de Cpcdos
		cpc_cpinti_sleep_ms(millisecondes);
	}

	int WINAPI kbhit_CPC(void)
	{
		return __kbhit();
	}

	void WINAPI usleep_CPC(unsigned int microsecondes)
	{
		// Cette fonction permet d'utiliser le "sleep" de Cpcdos
		cpc_cpinti_sleep_us(microsecondes);
	}

	int WINAPI printf_CPC(const char* format, ...)
	{
		// Cette fonction permet d'utiliser le "printf" de Cpcdos

		va_list arg;
		int Retour;
		char BUFFER[1024] = {0};
		
		va_start (arg, format);
			Retour = vsprintf (BUFFER, format, arg);
		va_end (arg);
		
		cpc_cpinti_debug_plus_cpinticore((const char*) BUFFER, 1, 1, 0, 0, 1, 0, 1110, NULL);
		
		memset(BUFFER, '\0', sizeof(char)*1024);
		
		return Retour;
	}
	