#include <iostream>
#include <memory>
#include <cstring>

// Ce programme teste les differentes methodes de "pause".
//  cette fonction propose que des avantages en terme de 
//  stabilite du CPU ! Elle va permet de liberer des cycles
//  d'horloges pour d'autres application.
//  --> Ceci va etre en amelioration pour les prochaines versions!

namespace example4
{	
	/* Inclure le wrapper (TOUJOURS DANS UN NAMESPACE!) */
	#include "../INCLUDE/cpcdos.h"
	
	/* Declarer les fonctions */
	void initialiser();

	
	/* Le main principal */
	int cpc__example4_main()
	{
		/* Adapter le mode debug (NON OBLIGATOIRE) */
		initialiser();
		
		/* Afficher un message a l'ecran */
		std::cout << " ********** DEBUT DU PROGRAMME ********** " << std::endl;
		
		// Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> 
			Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
			
		std::cout << " Test du sleep en micro secondes (3 000 000 us)" << std::endl;
		Cpcdos_Wrapper->usleep(3000000);
		
		std::cout << " Test du sleep en milli secondes (3 000 ms)" << std::endl;
		Cpcdos_Wrapper->sleep(3000);
		
		std::cout << " Test du sleep en secondes (3 sec)" << std::endl;
		Cpcdos_Wrapper->ssleep(3);
		
		std::cout << " ********** FIN DU PROGRAMME ********** " << std::endl;
		
		/* Fin! */
		return 1;
	}

	
	// Adapter le mode debug
	void initialiser()
	{
		// Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> 
			Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		// ICI on va activer le mode debug CPinti Core. (Car la fonction cout se voit qu'ici!)
		// On recupere l'etat actuel du debug
		Cpcdos_Wrapper->Shell_CCP((char*) "@#Test_TMP SYS/ /CPINTICORE /DEBUG", 5);
		// On execute la commande SI/ "%TEST_TMP%" !~= "Debug" alors:sys/ /cpinticore /debug = 1
		Cpcdos_Wrapper->Shell_CCP((char*) "SI/ \"""%Test_TMP%\" !~= \"Debug\" alors:SYS/ /CPINTICORE /DEBUG = 1", 5);
		// Cherchez pas a comprendre plus, elle est assez complexe :P
	}
	
	
}
