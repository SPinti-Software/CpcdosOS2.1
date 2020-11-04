/*	
	=============================================
	==  CPinti ---> Interception d'exceptions  ==
	=============================================

	Developpe entierement par Sebastien FAVIER

	Description
		Module permettant la commutation des threads en se basant sur le PIT

	Creation
		19/09/2018
		
		
	Mise a jour
		19/09/2018
		
		

*/

#include <signal.h>
#include <stdio.h>
#include <cstdlib>
#include "int.h"
#include "core.h"

namespace NP_cpinti_interception
{ 

	bool initialise_interception_exception()
	{
		
		printf(" * Interception d'erreurs ...\n");
		
		instance_SigAction[0].sa_handler = Erreur_Fatale;
		sigemptyset(&instance_SigAction[0].sa_mask);
		instance_SigAction[0].sa_flags = 0;
		sigaction(SIGSEGV, &instance_SigAction[0], NULL);
		printf("  - SIGSEGV [OK] \n");

		instance_SigAction[1].sa_handler = Erreur_Fatale;
		sigemptyset(&instance_SigAction[1].sa_mask);
		instance_SigAction[1].sa_flags = 0;
		sigaction(SIGILL, &instance_SigAction[1], NULL);
		printf("  - SIGILL [OK] \n");

		instance_SigAction[2].sa_handler = Erreur_Fatale;
		sigemptyset(&instance_SigAction[2].sa_mask);
		instance_SigAction[2].sa_flags = 0;
		sigaction(SIGABRT, &instance_SigAction[2], NULL);
		printf("  - SIGABRT [OK] \n");

		instance_SigAction[3].sa_handler = Erreur_Fatale;
		sigemptyset(&instance_SigAction[3].sa_mask);
		instance_SigAction[3].sa_flags = 0;
		sigaction(SIGTRAP, &instance_SigAction[3], NULL);
		printf("  - SIGTRAP [OK] \n");

		instance_SigAction[4].sa_handler = Erreur_Fatale;
		sigemptyset(&instance_SigAction[4].sa_mask);
		instance_SigAction[4].sa_flags = 0;
		sigaction(SIGINT, &instance_SigAction[4], NULL);
		printf("  - SIGINT [OK] \n");
		
		printf(" Interception d'erreurs - [OK]\n");
		
		return true;
	}
	
	void Erreur_Fatale(int signalnum) 
	{
		
		rest_scr0();
		
	
		printf("\n\n !!! EXCEPTION !!!\n\n");
	
		printf(" * Thread ID        : %d\n", NP_cpinti_mt::get_ThreadEnCours());
		printf(" * Nombre threads   : %d\n", NP_cpinti_mt::get_NombreThreads());
		if(NP_cpinti_mt::state_SectionCritique())
			printf(" * Section critique : ENABLED\n");
		else
			printf(" * Section critique : DISABLED\n");
		printf(" * Erreur numero    : %d\n", signalnum);
		printf(" * Informations : ");
		
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

		printf("\n\n ** Arret du kernel **\n\n");
		fflush(stdout);
		exit(0);
	}
}