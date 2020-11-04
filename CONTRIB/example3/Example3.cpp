#include <iostream>
#include <memory>
#include <cstring>

// Ce gros programme est découpé en 4 parties distinctes :
//
//  test1() : En CpcdosC+ --> Afficher du texte + fixer une variable + pause
//  test2() : Utilise les fonctions du noyau Cpcdos pour recuperer + afficher les repertoires courants
//  test3() : Utilise les fonctions du noyau Cpcdos pour Tester l'existence d'un fichier
//				+ recuperer la taille du fichier + Recuperer le contenu complet du fichier.
//				+ Afficher le contenu en concatenant la commande CpcdosC+ 'TXT/' et l'executer!
//  test4() : Execute  simplement le fichier CpcdosC+ "test_thd.cpc" + Pause 2 sec.

namespace example3
{	
	/* Inclure le wrapper (TOUJOURS DANS UN NAMESPACE!) */
	#include "../INCLUDE/cpcdos.h"
	
	/* Declarer les fonctions */
	void initialiser();
	void test1();
	void test2();
	void test3();
	void test4();
	
	/* Le main principal */
	int cpc__example3_main()
	{
		/* Adapter le mode debug (NON OBLIGATOIRE) */
		initialiser();
		
		/* Afficher un message a l'ecran */
		std::cout << " ********** DEBUT DU PROGRAMME ********** " << std::endl;
		
		/* Test d'affichage texte avec COUT et une commande CpcdosC+ */
		test1();
		
		/* Afficher le repertoire de l'executable en cours */
		// test2();
		
		/* Tester la lecture d'un fichier et afficher son contenu */
		// test3();
		
		
		/* Fin! */
		return 1;
	}

			////////////////////////////////////// TEST 1 ////////////////////////////////////////////
	void test1()
	{
		std::cout << "\n\n ------- TEST D'AFFICHAGE TEXTE ----------- " << std::endl;
		
		// Instancier le wrapper Cpcdos qui contient toutes les fonctions
		std::unique_ptr<CpcdosOSx_CPintiCore> Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		// Afficher un simple message a l'ecran via la librairie standard c++14
		std::cout << " Hello world from cout function! " << std::endl;
		
		// Executer 2 commandes CpcdosC+
		Cpcdos_Wrapper->Shell_CCP((char*) "FIX/ My_Variable = cpcdosc+ function", 5);
		Cpcdos_Wrapper->Shell_CCP((char*) "txt/ Hello world from %my_variable% !", 5);

		// Mettre en pause le programme (via le CpcdosC+) pendant 2 secondes
		Cpcdos_Wrapper->Shell_CCP((char*) "CCP/ /PAUSE 2000", 5);
		
	}
		
	///////////////////////////////////// TEST 2 /////////////////////////////////////////////
	void test2()
	{
		std::cout << "\n\n ------- TEST D'AFFICHAGE DU PATH ----------- " << std::endl;
		
		// Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		// Afficher le repertoire de l'executable + nom executable
		char *Exec_En_Cours = Cpcdos_Wrapper->Get_Path(0);
		std::cout << " Chemin executable :" << (char*) Exec_En_Cours << "." << std::endl;
		
		// Repertoire de l'executable uniquement
		Exec_En_Cours = Cpcdos_Wrapper->Get_Path(1);
		std::cout << " Repertoire executable :" << (char*) Exec_En_Cours << "." << std::endl;
		
		// Mettre en pause le programme (via le CpcdosC+) pendant 2 secondes
		Cpcdos_Wrapper->Shell_CCP((char*) "CCP/ /PAUSE 2000", 5);
	}
	
	//////////////////////////////////// TEST 3 //////////////////////////////////////////////
	void test3()
	{
		std::cout << "\n\n ------- TEST DE LECTURE DE FICHIER ----------- " << std::endl;
		// Ouvrir un fichier et afficher son contenu en gerant les erreurs
		
		// Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		char NomFichier[] = "toto.cpc";
		char ModeLecture[] = "RB";
		
		if(Cpcdos_Wrapper->File_exist((char*) NomFichier))
		{
			// Obtenir la taille d'un fichier
			unsigned int TailleFichier;
			TailleFichier = Cpcdos_Wrapper->File_size((char*) NomFichier); 	
			
			if(TailleFichier>0)
			{

				// Reserver un tableau FIXE selon la taille du fichier a lire
				char donnees[TailleFichier];
				
				// Recuperer TOUT le contenu
				Cpcdos_Wrapper->File_read_all((char*) NomFichier, (char*) ModeLecture, (char*) donnees);
				
				// Executer une commande CpcdosC+
				Cpcdos_Wrapper->Shell_CCP((char*) "txt/ On ecrit en CpcdosC+ :", 5);
				
				// Afficher le contenu dans la console graphique (en CpcdosC+)
				std::string My_CMD_Concatened = std::string("TXT/ ") + std::string(donnees);
				
				// Executer la commande
				Cpcdos_Wrapper->Shell_CCP((char*) My_CMD_Concatened.c_str(), 5); 
			}
			else
			{
				Cpcdos_Wrapper->Shell_CCP((char*) "txt/ Le fichier est vide.. LOL", 5); 
			}
		}
		else
		{
			Cpcdos_Wrapper->Shell_CCP((char*) "txt/ ERREUR Fichier non dispo!", 5); 
		}
		
		Cpcdos_Wrapper->Shell_CCP((char*) "TXT/ Lecture c'est OK.. Maintenant on va executer du code!", 5);
		// Mettre en pause le programme (via le CpcdosC+) pendant 3 secondes
		Cpcdos_Wrapper->Shell_CCP((char*) "CCP/ /PAUSE 3000", 5);
	}
	
	
	////////////////////////////////// TEST 4 ////////////////////////////////////////////////
	void test4()
	{
		std::cout << "\n\n ------- TEST D'EXECUTION MULTITHREAD D'UN FICHIER ----------- " << std::endl;

		// Instancier le wrapper Cpcdos
		std::unique_ptr<CpcdosOSx_CPintiCore> Cpcdos_Wrapper (new CpcdosOSx_CPintiCore);
		
		Cpcdos_Wrapper->Shell_FILE((char*) "test_thd.cpc", 3); // 3:Haute priorite 2:Moyenne 1:Petite 0:Aucune

		// Mettre en pause le programme pendant 2 secondes (via le CpcdosC+)
		Cpcdos_Wrapper->Shell_CCP((char*) "CCP/ /PAUSE 2000", 5);
		
		/* 
			Le programme "test_thd.cpc" tourne  dans un nouveau thread.
			 il affiche un message, reste en pause pendant 5 secondes affiche un message
			 et s'arrete.
			DONC en suivant la logique, il se terminera 3 secondes apres la 
			 fin de ce cette fonction test4() en affichant le message ci-dessous 
		*/

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
