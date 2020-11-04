#include <iostream>
#include <memory>
#include <cstring>

#include <cstdio> // Pour le printf()

// Ce programme va simplement utiliser les fonctions de la libC et libC++ pour afficher
//  du texte sur l'ecran avec std::cout et printf()

namespace example1
{	
	/* Inclure le wrapper (TOUJOURS DANS UN NAMESPACE!) */
	#include "../INCLUDE/cpcdos.h" // Inutile pour cette exemple
	
	/* Declarer les fonctions */
	void initialiser();

	
	/* Le main principal */
	int cpc__example1_main()
	{
		/* Adapter le mode debug (NON OBLIGATOIRE) */
		initialiser();
		
		/* Afficher un message a l'ecran a l'aide de COUT */
		std::cout << "Hello world! " << std::endl;
		
		/* Afficher un message a l'ecran a l'aide de printf */
		printf("I'm example 1\r\n");
		
		/* Declarer une variable */
		int value = 5;
		
		/* L'additionner */
		value++;
		
		/* Et l'afficher */
		printf(" printf - value:%d", value);
		
		/* Ou depuis le COUT */
		std::cout << " cout - value:" << value << std::endl;		
		
		/* Fin! */
		return 1;
	}


	
	
	// Adapter le mode debug
	void initialiser()
	{
		/* // Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> 
			Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		// ICI on va activer le mode debug CPinti Core. (Car la fonction cout se voit qu'ici!)
		// On recupere l'etat actuel du debug
		Cpcdos_Wrapper->Shell_CCP((char*) "@#Test_TMP SYS/ /CPINTICORE /DEBUG", 5);
		// On execute la commande SI/ "%TEST_TMP%" !~= "Debug" alors:sys/ /cpinticore /debug = 1
		Cpcdos_Wrapper->Shell_CCP((char*) "SI/ \"""%Test_TMP%\" !~= \"Debug\" alors:SYS/ /CPINTICORE /DEBUG = 1", 5);
		// Cherchez pas a comprendre plus, elle est assez complexe :P */
	}
	
	
}
