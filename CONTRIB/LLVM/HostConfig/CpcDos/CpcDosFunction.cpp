#include "CpcDosFunction.h"

#include <stdio.h>

////Dummy Functions
#ifndef CpcDos

	extern "C" int 			cpc_Creer_Contexte				(int TAILLEX, int TAILLEYn);
	extern "C" void* 		cpc_Obtenir_Zone_Contexte		(int ID);
	extern "C" int 			cpc_Blitter						(int ID);
	extern "C" void 		cpc_CCP_Exec_Commande			(const char* COMMANDE, int ID);
	extern "C" int 			cpc_CCP_Exec_Thread_cpc			(const char* chemin, int Thread_Priorite);

	extern "C" char*		cpc_Exec_en_cours				(int ARG);

	extern "C" void			cpc_cpinti_debug_plus_cpinticore(const char* texte, int Ecran, int Log, int Alerte, int RetourPLGN, int CR_LF, int DisplDate, int Signature, const char* File);
	extern "C" void			cpc_cpinti_debug_cpinticore		(const char* texte, int alerte);
	extern "C" int			cpc_cpinti_Fichier_Existe		(const char* chemin);
	extern "C" unsigned int	cpc_cpinti_Taille_Fichier		(const char* chemin);
	extern "C" int 			cpc_cpinti_Lire_Fichier_complet	(const char* Chemin, const char* Mode, char *retour_str);

	extern "C" void			cpc_cpinti_sleep_us				(unsigned int temp_us);
	extern "C" void			cpc_cpinti_sleep_ms				(unsigned int temp_ms);
	extern "C" void			cpc_cpinti_sleep_sec			(unsigned int temp_sec);

	extern "C" double 		cpc_cpinti_Obtenir_Temps_ms		(double Temps_av);

#endif // CpcDos
