/*	
	======================================
	==   CPinti ---> Buffer manager     ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	
	Description
		Module de debogage/affichage console des informations
	
	Creation 
		25 Janvier 2015

	Refonte
		18/10/2016
		19/10/2018
		
	Mise a jour
		07/12/2017

	07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	17-04-2017	: Envoie de '#DECO' si le server a ferme la connexion TCP
	14-02-2017	: Adaptation/finitions du buffer
	10-02-2017	: Optimisation du buffer
	09-02-2017 	: cpinti_GEST_BUFF Les vecteurs desormais indexe directement dans leur 
					propres instances leur recherche n'est plus base sur un index 
					externe "indirect"
*/

#include <stdlib.h>
#include <malloc.h>

#include <iostream>

#include "CPinti.h"
#include "stack.h"
#include "buffer.h"


#include "debug.h"
#include "func_cpi.h"
#include "meminfo.h"

// #include "leakchk.h"


namespace cpinti
{
	std::string cpinti_GEST_BUFF(unsigned int _ID, int _CHEMIN, std::string _DONNEES)
	{
		// Cette methode permet d'interagir avec stack inverse du tableau d'instance du gestionnaire de ce dernier
		//  Elle servira de buffer CPCDOS<-->SERVEUR
		
		// _ID			: Numero de port / ID unifiant l'instance
		// _CHEMIN
		//			1 	: STOCKER les donnees exterieur      (  RESEAU --> SERVEUR --> #stockage Cpcdos#  )
		//			2 	: STOCKER les donnees a envoyer      (              CPCDOS --> #stockage Server#  )
		
		//			3 	: EXTRACTER les donnees a envoyer    (   #stockage Server# --> SERVEUR --> RESEAU )
		//			4 	: EXTRACTER les donnees a traiter    (   #stockage Cpcdos# --> CPCDOS             )
		
		// _DONNEES 	: Donnees a placer dans le buffer 
		
		
		if(_CHEMIN < 6)
		{
			// cpinti_dbg::CPINTI_DEBUG("_ID:" + _ID + ".", "", "", "", Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
			
			for(long unsigned int index_tab = 0; index_tab < cpinti::Stack_CPintiCore__KERNEL.size(); index_tab++)
				if(cpinti::Stack_CPintiCore__KERNEL.at(index_tab)->tag_1 == _ID)
				{
			
					// Si non indexe, donc non instancie, on evite les crashs Ahaha!! ;-)
					if(((_CHEMIN < 9) && (index_tab >= 512)) && (_ID == 0)) return "";
					
					/********** STOCKAGE DANS LA STACK **********/
					if(_CHEMIN == _STACK_STOCKER_POUR_CPCDOS)
					{
									/** SERVEUR ----> STOCKAGE CPCDOS **/
						cpinti::Stack_CPintiCore__KERNEL.at(index_tab)->add_Stack(_DONNEES); // Stocker
						return "";
					}
						
					else if(_CHEMIN == _STACK_STOCKER_POUR_SERVEUR)
					{
									/** CPCDOS ----> STOCKAGE SERVEUR **/
						cpinti::Stack_CPintiCore__SERVEUR.at(index_tab)->add_Stack(_DONNEES); // Stocker
						return "";
					}
	
					/********** EXTRACTION DEPUIS LA STACK **********/
					else if(_CHEMIN == _STACK_EXTRACT_POUR_CPCDOS)
									/** STOCKAGE CPCDOS ----> CPCDOS **/
						return cpinti::Stack_CPintiCore__KERNEL.at(index_tab)->get_Stack(0); // Recuperer
					
					else if(_CHEMIN == _STACK_EXTRACT_POUR_SERVEUR) {
									/** STOCKAGE SERVEUR ----> SERVEUR **/
						return cpinti::Stack_CPintiCore__SERVEUR.at(index_tab)->get_Stack(0); // Recuperer
					}
						
				}
			return (std::string) "#DECO";
		}
		else
		{
			if(_CHEMIN == _STACK_INITIALISER)
			{
				// Creer une nouvelle instance d'un stack
				
				// Pour verifier si tout est ok
				bool Stack_init_ok = false;
				
				// Debug
				std::string _ID_STR = cpinti::Func_Cpinti::to_string(_ID);
				
				cpinti_dbg::CPINTI_DEBUG("(ID:" + _ID_STR + ") Recherche d'un emplacement libre... ", 
										"(ID:" + _ID_STR + ") Research free block... ",
										"STACK", "cpinti_GEST_BUFF", Ligne_saute, Alerte_action, Date_avec, Ligne_r_normal);

						
				// Debug
				std::string _MAX_Stack_block_STR = cpinti::Func_Cpinti::to_string(_MAX_Stack_block);
				std::string index_STR = cpinti::Func_Cpinti::to_string(0);
				
				cpinti_dbg::CPINTI_DEBUG("[OK]",  "[OK]", "", "", 
										Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
										
				cpinti_dbg::CPINTI_DEBUG("[vector<unique_ptr<cpinti::cpinti_stack_inv>>] Creation d'un stack 'KERNEL' de " + _MAX_Stack_block_STR + " block(s) de memoire a l'index " + index_STR + " ... ", 
									"[vector<unique_ptr<cpinti::cpinti_stack_inv>>] Creating 'KERNEL' stack with " + _MAX_Stack_block_STR + " memory block(s) at " + index_STR + " ... ",
									"STACK", "cpinti_GEST_BUFF", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);

						
		/************** VERIFIER QUE CA PLANTE PAS ICI **************/
				
				// Instancier une nouvelle instance de unique_ptr
				// cpinti::Stack_CPintiCore__KERNEL.emplace_back(new cpinti::cpinti_stack_inv());
				
				// cpinti::Stack_CPintiCore__KERNEL.emplace_back(std::unique_ptr<cpinti::cpinti_stack_inv>(new cpinti::cpinti_stack_inv()));
				cpinti::Stack_CPintiCore__KERNEL.emplace_back(std::make_shared<cpinti::cpinti_stack_inv>());
				
				// Initialiser le gestionnaire de stack de CPinti Core
				cpinti::Stack_CPintiCore__KERNEL.back()->stack__init(_MAX_Stack_block);
				
				// Ajouter l'id
				cpinti::Stack_CPintiCore__KERNEL.back()->tag_1 = _ID;
				
				cpinti_dbg::CPINTI_DEBUG("[OK]",  "[OK]", "", "", 
										Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
										
				cpinti_dbg::CPINTI_DEBUG("[vector<unique_ptr<cpinti::cpinti_stack_inv>>] Creation d'un stack 'SERVEUR' de " + _MAX_Stack_block_STR + " block(s) de memoire a l'index " + index_STR + " ... ", 
									"[vector<unique_ptr<cpinti::cpinti_stack_inv>>] Creating 'SERVER' stack with " + _MAX_Stack_block_STR + " memory block(s) at " + index_STR + " ... ",
									"STACK", "cpinti_GEST_BUFF", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
									
				// Instancier une nouvelle instance de unique_ptr
				// cpinti::Stack_CPintiCore__SERVEUR.emplace_back(new cpinti::cpinti_stack_inv());
				// cpinti::Stack_CPintiCore__SERVEUR.emplace_back(std::make_unique<cpinti::cpinti_stack_inv>(new cpinti::cpinti_stack_inv()));
				cpinti::Stack_CPintiCore__SERVEUR.emplace_back(std::make_shared<cpinti::cpinti_stack_inv>());
				
				// Initialiser le gestionnaire de stack de CPinti Core
				cpinti::Stack_CPintiCore__SERVEUR.back()->stack__init(_MAX_Stack_block);
				
				// Ajouter l'id
				cpinti::Stack_CPintiCore__KERNEL.back()->tag_1 = _ID;
				
		/************** VERIFIER QUE CA PLANTE PAS ICI **************/
				
				
				
				cpinti_dbg::CPINTI_DEBUG("[OK]",  "[OK]", "", "", 
										Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
				
				Stack_init_ok = true;	
				
				if(Stack_init_ok==true)
					cpinti_dbg::CPINTI_DEBUG("Allocation memoire dynamique d'un stack communiquant 'KERNEL' <--> 'SERVEUR' termine!", 
									"Dynamic communicating memory allocation 'KERNEL' <--> 'SERVER' terminated!",
									"STACK", "cpinti_GEST_BUFF", Ligne_saute, Alerte_validation, Date_avec, Ligne_r_normal);
				else
					cpinti_dbg::CPINTI_DEBUG("Impossible d'allouer de la memoire dynamique d'un stack communiquant 'KERNEL' <--> 'SERVEUR'!", 
									"Unable to allocate Dynamic communicating memory 'KERNEL' <--> 'SERVER'",
									"STACK", "cpinti_GEST_BUFF", Ligne_saute, Alerte_erreur, Date_avec, Ligne_r_normal);
											
			}
			else if(_CHEMIN == _STACK_SUPPRIMER)
			{
				// Creer une nouvelle instance d'un stack

				// Debug
				std::string _ID_STR = cpinti::Func_Cpinti::to_string(_ID);
				
				cpinti_dbg::CPINTI_DEBUG("(ID:" + _ID_STR + ") Recherche de l'instance a desallouer... ", 
										"(ID:" + _ID_STR + ") Research instance to dealloc... ",
										"STACK", "cpinti_GEST_BUFF", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
										
					
				
				cpinti_dbg::CPINTI_DEBUG("[OK]",  "[OK]", "", "", 
										Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
				
				bool Suppression_ok = false;
				// Recuperer l'ID DEPUIS le vector et non depuis Stack__PORT_ATTRIB
				for(long unsigned int index_tab = 0; index_tab < cpinti::Stack_CPintiCore__KERNEL.size(); index_tab++)
					if(cpinti::Stack_CPintiCore__KERNEL.at(index_tab)->tag_1 == _ID)
					{
						// Debug
						std::string _MAX_Stack_block_STR = cpinti::Func_Cpinti::to_string(_MAX_Stack_block);
						std::string index_STR = cpinti::Func_Cpinti::to_string(index_tab);
				
						cpinti_dbg::CPINTI_DEBUG("[vector<shared_ptr<cpinti::cpinti_stack_inv>>] Suppression d'un stack 'KERNEL' de " + _MAX_Stack_block_STR + " block(s) de memoire a l'index " + index_STR + " ... ", 
											"[vector<shared_ptr<cpinti::cpinti_stack_inv>>] Deleting 'KERNEL' stack with " + _MAX_Stack_block_STR + " memory block(s) at " + index_STR + " ... ",
											"STACK", "cpinti_GEST_BUFF", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);
								
			/************** VERIFIER QUE CA PLANTE PAS ICI **************/

					
						// Verifier son existence
						if(cpinti::Stack_CPintiCore__KERNEL.empty() == false)
						{
							// Si il reste 1 element alors on clean TOUT
							if(cpinti::Stack_CPintiCore__KERNEL.size() < (unsigned int) 2)
								cpinti::Stack_CPintiCore__KERNEL.clear();
							
							else 
							{
								// Supprimer le gestionnaire de stack de CPinti Core
								cpinti::Stack_CPintiCore__KERNEL.at(index_tab).reset();
								
								cpinti::Stack_CPintiCore__KERNEL.erase(cpinti::Stack_CPintiCore__KERNEL.begin() + index_tab);
							}
							
							// Reajuster le vecteur
							cpinti::Stack_CPintiCore__KERNEL.shrink_to_fit();
						}
						
						cpinti_dbg::CPINTI_DEBUG("[OK]",  "[OK]", "", "", 
												Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
												
						cpinti_dbg::CPINTI_DEBUG("[vector<shared_ptr<cpinti::cpinti_stack_inv>>] Suppression d'un stack 'SERVEUR' de " + _MAX_Stack_block_STR + " block(s) de memoire a l'index " + index_STR + " ... ", 
											"[vector<shared_ptr<cpinti::cpinti_stack_inv>>] Deleting 'SERVER' stack with " + _MAX_Stack_block_STR + " memory block(s) at " + index_STR + " ... ",
											"STACK", "cpinti_GEST_BUFF", Ligne_reste, Alerte_action, Date_avec, Ligne_r_normal);


						// Verifier son existence
						if(cpinti::Stack_CPintiCore__SERVEUR.empty() == false)
						{
							// Si il reste 1 element alors on clean TOUT
							if(cpinti::Stack_CPintiCore__SERVEUR.size() < (unsigned int) 2)
								cpinti::Stack_CPintiCore__SERVEUR.clear();
							
							else 
							{
								// Supprimer le gestionnaire de stack de CPinti Core
								cpinti::Stack_CPintiCore__SERVEUR.at(index_tab).reset();
								
								cpinti::Stack_CPintiCore__SERVEUR.erase(cpinti::Stack_CPintiCore__SERVEUR.begin() + index_tab);
							}
							
							// Reajuster le vecteur
							cpinti::Stack_CPintiCore__SERVEUR.shrink_to_fit();

						}
						
			/************** VERIFIER QUE CA PLANTE PAS ICI **************/
						
						cpinti_dbg::CPINTI_DEBUG("[OK]",  "[OK]", "", "", 
												Ligne_saute, Alerte_ok, Date_sans, Ligne_r_normal);
						
						Suppression_ok = true;
						break;
					}
					if(Suppression_ok == false)
						cpinti_dbg::CPINTI_DEBUG("Impossible de trouver l'instance", 
											"Unable to find instance",
											"STACK", "cpinti_GEST_BUFF", Ligne_reste, Alerte_erreur, Date_avec, Ligne_r_normal);
					
										
			}
		}
		return _DONNEES;
	
	}
	
	
	int cpinti_GEST_BUFF_c(unsigned int _ID, int _CHEMIN, const char* _DONNEES)
	{
		// Cette methode permet d'utiliser la fonction CPINTI__GEST_BUFF() depuis le freebasic
		// Renvoie 1 si tout est ok et 0 si le serveur est pas dispo

		// Receptionner les donnees
		if(cpinti_GEST_BUFF(_ID, _CHEMIN, std::string(_DONNEES)) == "#DECO")
			return 0;
		else
			return 1;
	}
	
	int cpinti_GEST_BUFF_c(unsigned int _ID, int _CHEMIN, char* _DONNEES)
	{
		// Cette methode permet d'utiliser la fonction CPINTI__GEST_BUFF() depuis le freebasic
		// Renvoie 1 si tout est ok et 0 si le serveur est pas dispo
		
		std::string Retour;
		
		// Receptionner les donnees
		Retour = cpinti_GEST_BUFF(_ID, _CHEMIN, std::string(_DONNEES));
		
		// Les remplir dans le pointeur du noyau cpcdos
		for(unsigned int boucle = 0; boucle < (unsigned int) Retour.length(); boucle++)
			_DONNEES[boucle] = Retour.at(boucle);
		
		// Si le serveur s'est deconnecte ou n'est pas connecte
		if(Retour=="#DECO")
			return 0;
		else
			return 1;
	}
}