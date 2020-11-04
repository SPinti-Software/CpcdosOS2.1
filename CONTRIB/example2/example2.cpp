#include <iostream>
#include <memory>
#include <cstring>

// Ce programme va compter le nombre de micro secondes avec une precision de 16 chiffres 
//  ecoules pendant l'execution de la commande CpcdosC+ "CCP/ /PAUSE 1000"
//  le resultat reste approximativement a 1 secondes.

namespace example2
{	
	// Include du wrapper (TOUJOURS DANS UN NAMESPACE!)
	#include "../INCLUDE/cpcdos.h"
	
	/* Declarer les fonctions */
	void initialiser();
	
	
	// Le main a executer
	int cpc__example2_main()
	{
		/* Adapter le mode debug (NON OBLIGATOIRE) */
		initialiser();
		
		// Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		std::cout << " ********** DEBUT DU PROGRAMME ********** " << std::endl;
	
		// Declarer les variables
		double start_ms;
		double end_ms;
		
		std::cout.precision(17); // Permet d'afficher les 16 premiers chiffres du double
		
		std::cout << " Comptage ..." << std::endl;
		
		// Obtenir le temps de depart
		start_ms = Cpcdos_Wrapper->get_time_ms(0);
		
		// Faire une petite pause de 1 sec en CpcdosC+
		Cpcdos_Wrapper->Shell_CCP((char*) "ccp/ /pause 1000", 5);
		
		// Recuperer le temps ecoule en ms
		end_ms = Cpcdos_Wrapper->get_time_ms(start_ms);
		
		std::cout << "Temp ecoule : " << end_ms << " ms" << std::endl;
		std::cout << "Temp ecoule : " << (int) end_ms << " ms (arrondie)" << std::endl;
		
		std::cout << "\n\n ********** FIN DU PROGRAMME ********** \n" << std::endl;
		
		// Retourner 1
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
