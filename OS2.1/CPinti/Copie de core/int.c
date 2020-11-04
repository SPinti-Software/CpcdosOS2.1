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
		28/11/2018
		
		

*/

#include <signal.h>
#include <stdio.h>
#include <cstdlib>
#include <conio.h>
#include <unistd.h>
#include "int.h"
#include "core.h"

namespace cpinti
{
	namespace interception
	{ 
	
		bool Etat_section_critique = false;
		bool Exception_capte = false;
		
		bool initialise_interception_exception()
		{
			
			printf(" * Interception d'erreurs ...\n");
			
			instance_SigAction[0].sa_handler = Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[0].sa_mask);
			instance_SigAction[0].sa_flags = 0;
			sigaction(SIGSEGV, &instance_SigAction[0], NULL);
			printf("  - SIGSEGV [OK] \n");

			instance_SigAction[1].sa_handler = Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[1].sa_mask);
			instance_SigAction[1].sa_flags = 0;
			sigaction(SIGILL, &instance_SigAction[1], NULL);
			printf("  - SIGILL [OK] \n");

			instance_SigAction[2].sa_handler = Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[2].sa_mask);
			instance_SigAction[2].sa_flags = 0;
			sigaction(SIGABRT, &instance_SigAction[2], NULL);
			printf("  - SIGABRT [OK] \n");

			instance_SigAction[3].sa_handler = Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[3].sa_mask);
			instance_SigAction[3].sa_flags = 0;
			sigaction(SIGTRAP, &instance_SigAction[3], NULL);
			printf("  - SIGTRAP [OK] \n");

			instance_SigAction[4].sa_handler = Erreur_Fatale_Signal;
			sigemptyset(&instance_SigAction[4].sa_mask);
			instance_SigAction[4].sa_flags = 0;
			sigaction(SIGINT, &instance_SigAction[4], NULL);
			printf("  - SIGINT [OK] \n");
			
			printf(" Interception d'erreurs - [OK]\n");
			
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
			printf("               ##       ##     ## ##     ## ##     ## ##     ##                \n");
			printf("               ######   ########  ########  ##     ## ########                 \n");
			printf("               ##       ##   ##   ##   ##   ##     ## ##   ##                  \n");
			printf("               ##       ##    ##  ##    ##  ##     ## ##    ##                 \n");
			printf("               ######## ##     ## ##     ##  #######  ##     ##                \n");
			printf("-------------------------------------------------------------------------------\n");
			// printf("\n");
		}
		
		void Error_Finalise()
		{
			
			printf(" If this problem percist, please take photo and contact us : \n");
			printf(" - Community support : http://forum-cpcdos.fr.nf (French)\n");
			printf(" - Main developpers  : http://cpcdos.net/contact (Be patient!)\n");
			
			printf("\n ** Stopping kernel in 5 seconds **\n");
			
			fflush(stdout);
			__real_sleep(5);
			Exception_capte = false;
			exit(0);
		}
		
		void Erreur_Fatale(int signalnum, int ligne, char* fichier, char* fonction)
		{
			if(Exception_capte == true) return;
			
			Exception_capte = true;
			Etat_section_critique = gestionnaire_tache::state_SectionCritique();
			gestionnaire_tache::begin_SectionCritique();
			
			cpc_SCREEN(0);
			cpc_COLOR(0, 12);
		
			Error_Logo();
			
		
			if(ligne == 0)
				printf(" * Internal runtime error not identified. :-(\n");
			else{
				printf(" * Internal runtime error identified !");
				cpc_COLOR(1, 12);
				printf("   --> In function %s() [%s:%d]\n", fonction, fichier, ligne);
			}
			
			cpc_COLOR(0, 12);
			printf(" * Caller address  : 0x%08x\n", (unsigned int) __builtin_return_address(1));
			printf(" * Current Thread ID : %d\n", cpinti::gestionnaire_tache::get_ThreadEnCours());
			printf(" * Total Thread(s)   : %d\n", cpinti::gestionnaire_tache::get_NombreThreads());
			if(Etat_section_critique)
				printf(" * Critical section  : ENABLED\n");
			else
				printf(" * Critical section  : DISABLED\n");
			printf(" * Error number      : %d\n", signalnum);
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
		
		void Erreur_Fatale_Signal(int signalnum) 
		{
		
			Erreur_Fatale(signalnum, 0, NULL, NULL);
			
		}
	} // namespace interception
} // namespace cpinti