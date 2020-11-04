/* Wrap for Cpcdos functions */

#include <stdio.h>
#include <pc.h>
#include <sys/nearptr.h>
#include <time.h>
#include <stdlib.h>     /* abort, NULL */

#define USE_CPCDOS_MEMORY_MANAGER 0

extern void cpc_printf	(const char* txt);

// #include "C:/CPCDOS/Cpcdos-DEV/OS2.1/CPinti/include/leakchk.h"

extern void 	printf_fb			(char* texte);
extern void 	Interruption_Timer	(int sig);
extern void* 	cpc_malloc			(size_t sizemem);
extern void* 	cpc_calloc			(size_t taille, size_t nombreItems);
extern void 	cpc_free			(void* pointer);
extern void* 	cpc_realloc			(void* pointeur, size_t taille);
extern void* 	cpc_memset			(void* pointeur, int valeur, size_t taille);
extern char* 	cpc_strcpy			(char* destination, const char* source);
extern char* 	cpc_strncpy 		(char* destination, const char* source, size_t taille);
extern char* 	cpc_strncat			(char* destination, const char* source, size_t num);


void __real_puts (const char* txt);
void __wrap_puts (const char* txt);
void __wrap_puts (const char* txt)
{
	__real_puts (txt);
	// Interruption_Timer(0);
}

/*
void* __real_malloc (size_t taille);
void* __wrap_malloc (size_t taille);
void* __wrap_malloc (size_t taille)
{
	if(USE_CPCDOS_MEMORY_MANAGER)
		return cpc_malloc(taille);
	else
		return __real_malloc (taille);
}

void* __real_calloc (size_t taille, size_t nombreItems);
void* __wrap_calloc (size_t taille, size_t nombreItems);
void* __wrap_calloc (size_t taille, size_t nombreItems)
{
	if(USE_CPCDOS_MEMORY_MANAGER)
		return cpc_calloc(taille, nombreItems);
	else
		return __real_calloc (nombreItems, taille);
	
}

void __real_free (void* pointeur);
void __wrap_free (void* pointeur);
void __wrap_free (void* pointeur)
{
	
	if(pointeur != NULL)
	{
		if(USE_CPCDOS_MEMORY_MANAGER)
			cpc_free(pointeur);
		else
			__real_free(pointeur);
		
	}
}

void* __real_realloc (void* pointeur, size_t taille);
void* __wrap_realloc (void* pointeur, size_t taille);
void* __wrap_realloc (void* pointeur, size_t taille)
{
	if((pointeur != NULL) && (taille > 0))
	{
		if(USE_CPCDOS_MEMORY_MANAGER)
			return cpc_realloc(pointeur, taille);
		else
			return __real_realloc(pointeur, taille);
		
	}
	return NULL;
}

void* __real_memset	(void* pointeur, int valeur, size_t taille);
void* __wrap_memset (void* pointeur, int valeur, size_t taille);
void* __wrap_memset (void* pointeur, int valeur, size_t taille)
{
	
	if((pointeur != NULL) && (taille > 0))
	{
		if(USE_CPCDOS_MEMORY_MANAGER)
			return cpc_memset(pointeur, valeur, taille);
		else
			return __real_memset(pointeur, valeur, taille);
		
	}
	return NULL;
}
	

char* __real_strcpy(char* destination, const char* source);
char* __wrap_strcpy (char* destination, const char* source);
char* __wrap_strcpy (char* destination, const char* source)
{
	if(USE_CPCDOS_MEMORY_MANAGER)
		return cpc_strcpy(destination, source);
	else
		return __real_strcpy(destination, source);
}

char* __real_strncpy(char* destination, const char* source, size_t taille);
char* __real_strncpy (char* destination, const char* source, size_t taille);
char* __wrap_strncpy (char* destination, const char* source, size_t taille)
{
	if(USE_CPCDOS_MEMORY_MANAGER)
		return cpc_strncpy(destination, source, taille);
	else
		return __real_strncpy(destination, source, taille);
}

char* __real_strncat(char* destination, const char* source, size_t taille);
char* __real_strncat(char* destination, const char* source, size_t taille);
char* __wrap_strncat(char* destination, const char* source, size_t taille)
{
	if(USE_CPCDOS_MEMORY_MANAGER)
		return cpc_strncat(destination, source, taille);
	else
		return __real_strncat(destination, source, taille);
}


int __real__grow_table(int _fd);
int __wrap__grow_table(int _fd);
int __wrap__grow_table(int _fd)
{
	fprintf(stdout, " ****** __wrap_grow_table() fd:%d\n", _fd);

	abort();
	return 0;
}

*/
void __real_fclose (FILE* stream);
void __wrap_fclose (FILE* stream);
void __wrap_fclose (FILE* stream)
{
	__real_fclose (stream);

	// Interruption_Timer(0);
}
/*

void __real_abort (void);
void __wrap_abort (void);
void __wrap_abort (void)
{
	printf("[FR] Le systeme va s'arreter brutalement. [EN] System will abruptly stop. BYE!\n");
	__real_abort ();
}

int __real_system (const char* commande);
int __wrap_system (const char* commande)
{
	__real_puts(commande);
	return 0;
	__real_system (stream);
}
 

void __real_sleep (int secondes);
void __wrap_sleep (int secondes);
void __wrap_sleep (int secondes)
{
	if(secondes < 1)
	{
		Interruption_Timer(0);
	}
	else
	{
		// Declarer la structure
		struct timeval tv;
		int divise = 0;
		int moins = 0;
		
		int millisecondes = secondes * 1000;
		
		// Departager le temps CPU avec le temps de pause
		if(millisecondes <= 500)
		{
			divise = 2;
			moins = 100;
		} 
		else if(millisecondes < 1000)
		{
			divise = 4;
			moins = 200;
		}
		else if(millisecondes == 1000)
		{
			divise = 6;
			moins = 300;
		}
		else if((millisecondes > 1000) && (millisecondes <= 2000))
		{
			divise = 8;
			moins = 500;
		}
		else if((millisecondes > 2000) && (millisecondes < 5000))
		{
			divise = 16;
			moins = 800;
		}
		else if(millisecondes >= 5000)
		{
			divise = 32;
			moins = 1200;
		}
		
		millisecondes -= moins;
		
		
		for(int boucle = 0; boucle <= divise; boucle++)
		{
			tv.tv_sec = (time_t) 0;
			tv.tv_usec = (long int) (millisecondes * 1000) / divise;	

			Interruption_Timer(0);
			// Attendre sur le descripteur ZERO
			select(0, NULL, NULL, NULL, &tv);
		}
	}
}


void __real_usleep (int usecondes);
void __wrap_usleep (int usecondes);
void __wrap_usleep (int usecondes)
{
	if(usecondes < 1)
	{
		Interruption_Timer(0);
	}
	else
	{
		// Declarer la structure
		struct timeval tv;
		
		if(usecondes > 1000)
		{
			tv.tv_sec = (time_t) 0;
			tv.tv_usec = (long int) usecondes / 2;	
			
			// Attendre sur le descripteur ZERO
			select(0, NULL, NULL, NULL, &tv);
			
			Interruption_Timer(0);
			
			tv.tv_sec = (time_t) 0;
			tv.tv_usec = (long int) usecondes / 2;
			
			// Attendre sur le descripteur ZERO
			select(0, NULL, NULL, NULL, &tv);
		} 
		else
		{
			tv.tv_sec = (time_t) 0;
			tv.tv_usec = (long int) usecondes - 500; // Enlever 400 us
			
			// Attendre sur le descripteur ZERO
			select(0, NULL, NULL, NULL, &tv);
			Interruption_Timer(0);
		}
	}
}


void __real_fb_Sleep (int millisecondes);
void __wrap_fb_Sleep (int millisecondes);
void __wrap_fb_Sleep (int millisecondes)
{
	
	if(millisecondes < 1)
	{
		Interruption_Timer(0);
	}
	else
	{
		// Declarer la structure
		struct timeval tv;
		int divise = 0;
		int moins = 0;
		
		// Departager le temps CPU avec le temps de pause
		if(millisecondes < 500)
		{
			divise = 2;
			moins = 100;
		} 
		else if(millisecondes < 1000)
		{
			divise = 4;
			moins = 200;
		}
		else if(millisecondes == 1000)
		{
			divise = 6;
			moins = 300;
		}
		else if((millisecondes > 1000) && (millisecondes <= 2000))
		{
			divise = 8;
			moins = 500;
		}
		else if((millisecondes > 2000) && (millisecondes < 5000))
		{
			divise = 16;
			moins = 800;
		}
		else if(millisecondes >= 5000)
		{
			divise = 32;
			moins = 1200;
		}
		
		millisecondes -= moins;
		
		
		for(int boucle = 0; boucle <= divise; boucle++)
		{
			tv.tv_sec = (time_t) 0;
			tv.tv_usec = (long int) (millisecondes * 1000) / divise;	
			
			Interruption_Timer(0);
			
			// Attendre sur le descripteur ZERO
			select(0, NULL, NULL, NULL, &tv);
		}
	}
}


*/