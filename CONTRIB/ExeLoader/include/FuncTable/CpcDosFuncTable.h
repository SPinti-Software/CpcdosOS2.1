/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *   - Sebastien FAVIER
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 */
 
#include "ExeLoader.h"
#ifndef ImWin

	{"_strnicmp"  ,(FUNC_) strnicmp },
	{"_stricmp"  ,(FUNC_) stricmp },
	{"_vsnprintf"  ,(FUNC_) vsnprintf },
	
	{"wcslen"  ,(FUNC_) strlen }, //??
	{"fwprintf"  ,(FUNC_) fprintf }, //??
	{"fputwc"  ,(FUNC_)	fputc }, //??
	{"putwc"  ,(FUNC_) putc }, //??
	{"getwc"  ,(FUNC_) getc }, //??

	
	{"kbhit"  ,(FUNC_) kbhit_CPC },
	{"_kbhit"  ,(FUNC_) kbhit_CPC },
	{"usleep", 	(FUNC_) usleep_CPC },
	{"msleep", 	(FUNC_) sleep_CPC }, // idem que Sleep
	{"Sleep", 	(FUNC_) sleep_CPC },
	{"printf"  ,(FUNC_) printf_CPC },
	{"setjmp"  ,(FUNC_) setjmp },
	{"_setjmp"  ,(FUNC_) setjmp },
	{"sigsetjmp"  ,(FUNC_) sigsetjmp },
	{"_sigsetjmp"  ,(FUNC_) sigsetjmp },

	{"longjmp"  ,(FUNC_) longjmp },
	{"_longjmp"  ,(FUNC_) longjmp },
	{"siglongjmp"  ,(FUNC_) siglongjmp },
	{"_siglongjmp"  ,(FUNC_) siglongjmp },  
  
	{"cpc_Creer_Contexte", 				(FUNC_)cpc_Creer_Contexte },
	{"cpc_Obtenir_Zone_Contexte", 		(FUNC_)cpc_Obtenir_Zone_Contexte },
	{"cpc_Blitter", 					(FUNC_)cpc_Blitter },
	{"cpc_CCP_Exec_Commande", 			(FUNC_)cpc_CCP_Exec_Commande },
	{"cpc_CCP_Exec_Thread_cpc", 		(FUNC_)cpc_CCP_Exec_Thread_cpc },
	{"cpc_cpinti_debug_cpinticore", 	(FUNC_)cpc_cpinti_debug_cpinticore },
	{"cpc_cpinti_debug_plus_cpinticore",(FUNC_)cpc_cpinti_debug_plus_cpinticore },
	{"cpc_Exec_en_cours", 				(FUNC_)cpc_Exec_en_cours },
	{"cpc_cpinti_Fichier_Existe", 		(FUNC_)cpc_cpinti_Fichier_Existe },
	{"cpc_cpinti_Taille_Fichier", 		(FUNC_)cpc_cpinti_Taille_Fichier },
	{"cpc_cpinti_Lire_Fichier_complet", (FUNC_)cpc_cpinti_Lire_Fichier_complet },
	{"cpc_cpinti_sleep_us", 			(FUNC_)cpc_cpinti_sleep_us },
	{"cpc_cpinti_sleep_ms", 			(FUNC_)cpc_cpinti_sleep_ms },
	{"cpc_cpinti_sleep_sec", 			(FUNC_)cpc_cpinti_sleep_sec },
	{"cpc_cpinti_Obtenir_Temps_ms", 	(FUNC_)cpc_cpinti_Obtenir_Temps_ms },

#endif
