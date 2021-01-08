/*	
	=============================================
	==  CPinti ---> Interception d'exceptions  ==
	=============================================

	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant l'interception d'exceptions.

	Creation
		19/09/2018
		
		
	Mise a jour
		26/06/2020
		
		

*/

#include <signal.h>
#include <stdio.h>
#include <cstdlib>
#include <conio.h>
#include <unistd.h>

#include "int.h"
#include "core.h"
#include "debug.h"

// #include "leakchk.h"


namespace cpinti
{
	namespace interception
	{ 
	
		volatile bool Etat_section_critique = false;
		volatile bool Exception_capte = false;
		
		bool initialise_interception_exception()
		{
			
			cpinti_dbg::CPINTI_DEBUG("Interception d'erreurs ...", 
									 "Error interception ...",
						"core::gestionnaire_tache", "initialiser_Multitache()",
						Ligne_saute, Alerte_surbrille, Date_sans, Ligne_r_normal);
						
			
			instance_SigAction[0].sa_handler = (void (*)(int)) Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[0].sa_mask);
			instance_SigAction[0].sa_flags = 0;
			sigaction(SIGSEGV, &instance_SigAction[0], 0);
			
			cpinti_dbg::CPINTI_DEBUG(" - SIGSEGV [OK]", 
									 " - SIGSEGV [OK]",
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);


			instance_SigAction[1].sa_handler = (void (*)(int)) Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[1].sa_mask);
			instance_SigAction[1].sa_flags = 0;
			sigaction(SIGILL, &instance_SigAction[1], 0);

			cpinti_dbg::CPINTI_DEBUG(" - SIGILL [OK]", 
									 " - SIGILL [OK]",
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

			instance_SigAction[2].sa_handler = (void (*)(int)) Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[2].sa_mask);
			instance_SigAction[2].sa_flags = 0;
			sigaction(SIGABRT, &instance_SigAction[2], 0);

			cpinti_dbg::CPINTI_DEBUG(" - SIGABRT [OK]", 
									 " - SIGABRT [OK]",
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

			instance_SigAction[3].sa_handler = (void (*)(int)) Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[3].sa_mask);
			instance_SigAction[3].sa_flags = 0;
			sigaction(SIGTRAP, &instance_SigAction[3], 0);

			cpinti_dbg::CPINTI_DEBUG(" - SIGTRAP [OK]", 
									 " - SIGTRAP [OK]",
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			instance_SigAction[4].sa_handler = (void (*)(int)) Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[4].sa_mask);
			instance_SigAction[4].sa_flags = 0;
			sigaction(SIGINT, &instance_SigAction[4], 0);

			cpinti_dbg::CPINTI_DEBUG(" - SIGINT [OK]", 
									 " - SIGINT [OK]",
									 "", "",
						Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);

			cpinti_dbg::CPINTI_DEBUG("Interception d'erreurs - [OK]", 
									 "Interception d'erreurs - [OK]",
									 "", "",
							Ligne_saute, Alerte_validation, Date_sans, Ligne_r_normal);
			fflush(stdout);
			
			return true;
		}
		
		extern "C" void __real_sleep (int secondes);
		
		void Error_Logo()
		{
			printf("\n");
			printf("\n");
			printf("-------------------------------------------------------------------------------\n");
			printf("               ######## ########  ########   #######  ########                 \n");
			printf("               ##       ##     ## ##     ## ##     ## ##     ##                \n");
			printf("               ######   ########  ########  ##     ## ########                 \n");
			printf("               ##       ##   ##   ##   ##   ##     ## ##   ##                  \n");
			printf("               ######## ##     ## ##     ##  #######  ##     ##                \n");
			printf("-------------------------------------------------------------------------------\n");
		}
		
		void Error_Finalise()
		{

			int caractere = 0;
			printf(" French forum    : http://forum-cpcdos.fr.nf\n");
			printf(" Discord support : https://discord.com/invite/3Qm8xDp\n");

			printf("\n -- 'R' Restart computer  |  'S' Stop kernel (Attempt to return to DOS) --\n");
			 
			fflush(stdout);
			
			while(1)
			{
				kbhit();
				caractere = getch();
				if((caractere == 's') || (caractere == 'S'))
				{
					printf("[SYSTEM] Sudden kernel stop ...\n");
					exit(0);
				}
				if((caractere == 'r') || (caractere == 'R'))
				{
					printf("[SYSTEM] Restarting request in progress ...\n");
					cpc_CX_APM_MODE(Restart);
					exit(0);
				}
			}
			
			gestionnaire_tache::end_SectionCritique();
			
		}
		
		void Erreur_Fatale(long signalnum, long ligne, char* fichier, char* fonction)
		{
			
			if(Exception_capte == true) return;
			
			Exception_capte = true;
			Etat_section_critique = gestionnaire_tache::state_SectionCritique();
			gestionnaire_tache::begin_SectionCritique();
			
			cpc_SCREEN(0);
			cpc_COLOR(0, 12);
		
			Error_Logo();
			
		
			if(ligne == 0)
			{
				printf(" * Internal runtime error not identified. :-(\n");
				cpc_COLOR(1, 12);
				printf("   --> eip : %s() [%s:%ld]\n", fonction, fichier, ligne);
			}
			else{
				printf(" * Internal runtime error identified !");
				cpc_COLOR(1, 12);
				printf("   --> In function %s() [%s:%ld]\n", fonction, fichier, ligne);
			}
			
			cpc_COLOR(0, 12);
			printf(" * Stack trace       : [0x%08x] <- [0x%08x] <- [0x%08x]\n", (unsigned int) __builtin_return_address(0), (unsigned int) __builtin_return_address(1), (unsigned int) __builtin_return_address(2));
			printf(" * Current Thread ID : %ld\n", cpinti::gestionnaire_tache::get_ThreadEnCours());
			printf(" * Total Thread(s)   : %ld\n", cpinti::gestionnaire_tache::get_NombreThreads());
			if(Etat_section_critique)
				printf(" * Critical section  : ENABLED\n");
			else
				printf(" * Critical section  : DISABLED\n");
			printf(" * Error number      : %ld\n", signalnum);
			printf(" * Informations      : ");
			
			if(signalnum == SIGABRT)
				printf("Arret du programme. (SIGABRT)\n");
			if(signalnum == SIGILL)
				printf("Instruction illegale. (SIGILL)\n");
			if(signalnum == SIGINT)
				printf("Interruption utilisateur. (SIGINT)\n");
			if(signalnum == SIGSEGV)
				printf("Violation segmentation de memoire. (SIGSEGV)\n");
			if(signalnum == SIGALRM)
				printf("Alarme. (SIGALRM)\n");

			cpc_COLOR(7, 0);
			Error_Finalise();
		}
		
		void Erreur_Fatale_Signal(long signalnum) 
		{
		
			Erreur_Fatale(signalnum, 0, NULL, NULL);
			
		}
	} // namespace interception
} // namespace cpinti