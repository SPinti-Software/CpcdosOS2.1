/*	
            ===== ========================== =====
    ============= ******** Wrapper ********* =============
 ================  Cpcdos OSx & CPinti Core  ================
    ============= ************************** =============
            ===== ========================== =====

			Auteur Sebastien FAVIER
	  Contributeur Vous!
	
	  Copyright (c) microsf01
	  http://cpcdos.fr.nf/
	  
 Condition :
	Ce fichier réservé uniquement aux adhérants du developpement C/C++ 
	du noyau. Pour toutes questions : sebastien.ordinateur@hotmail.fr

 Description :
	Wrapper du noyau Cpcdos & CPinti Core pour la programmation 
	C/C++ de modules externe. Ceci va permettre aux adhérants de créer 
	des fonctions native pour cpcdos. Il s'agit du wrapper qui permet
	l'execution de vos fonction C/C++ externe.
	
		Creation le 25 avril 2016
							
		Mise a jour le 22 Fevrier 2017
		
*/

#include <memory> 	/* For shared_ptr<> */
#include <iostream> /* For cout */
#include <stdio.h>
#include <string.h>

/* NE PAS MODIFIER / DON'T MODIFY */
#include "XE-Loader/XE-Loader.h"	/* ExeLoader */
#include "include/OpenGL.h"	/* OpenGL */
// #include "include/LLVM.h"		/* LowLevelVirtualMachine */

// #include "include/GZE.h" 		/* Graphic engine GZE */
// #include "Lib_GZ/GZ.h"			/* Graphic engine GZE */
// #include "Lib_Demo/MainEntry.h" /* Graphic engine GZE */
/* NE PAS MODIFIER / DON'T MODIFY */


/////////// VOS ENTETES YOUR HEADERS ///////////
#include "include/example1.h" 		/* simple test for you */
#include "include/example2.h" 		/* simple test for you */
#include "include/example3.h" 		/* simple test for you */
#include "include/example4.h" 		/* simple test for you */

#include "..\OS2.1\CPinti\include\leakchk.h"
 
namespace Wrapper_Cpcdos
{
	
	/////////// ID FUNCTION ///////////
	///////////////////////////////////
	#define CPC_NULL1			1 	/* NE PAS MODIFIER / DON'T MODIFY */
	#define CPC_NULL2			2 	/* NE PAS MODIFIER / DON'T MODIFY */
	#define CPC_NULL3			3 	/* NE PAS MODIFIER / DON'T MODIFY */
	
	#define EXE_LOADER			10 	/* NE PAS MODIFIER / DON'T MODIFY */
	#define LLVM				11 	/* NE PAS MODIFIER / DON'T MODIFY */
	#define GZE_GRAPHIC_ENGINE 	12 	/* NE PAS MODIFIER / DON'T MODIFY */
	#define OPENGL_MESA_ENGINE 	13 	/* NE PAS MODIFIER / DON'T MODIFY */
	///////////////////////////////////
	
	
	// [FR] Votre numero ID de votre fonction.
	// [EN] You ID number of your fonction.
	
	/* VOUS POUVEZ MODIFIER / YOU CAN MODIFY THIS */
	#define EXAMPLE1			1001
	#define EXAMPLE2			1002
	#define EXAMPLE3			1003
	#define EXAMPLE4			1004

	///////////////////////////////////
	

	long Wrapper_Cpcdos_OSx_CPinti_Core(long FunctionID, double _CLE_, 
										const char* ARG_1, long ARG_2, 
										void* ARG_3, void* ARG_4, void* ARG_5)
	{
		switch(FunctionID)
		{
			/* NE PAS MODIFIER / DON'T MODIFY */
			case CPC_NULL1:{
				if(ARG_1) ARG_1 = 0;
				if(ARG_2) ARG_2 = 0;
				if(ARG_3) ARG_3 = 0;
				if(ARG_4) ARG_4 = 0;
				if(ARG_5) ARG_5 = 0;
				if(_CLE_) _CLE_ = 0;
				return 1;
			}
			
			/* NE PAS MODIFIER / DON'T MODIFY */
			case EXE_LOADER:{
				// [FR] Chargeur d'executable Win32 PE
				// [EN] Win32 PE executable loader
				XE_Module*  m = 
				Xe_Load((const char*) ARG_1);
				Xe_ExecuteMain(m);
				return 1;
			}
			
			/* NE PAS MODIFIER / DON'T MODIFY */
			case LLVM:{
				// [FR] Machine virtuel de bas niveau
				// [EN] Low Level Virtual Machine
				// fStartLLVM((const char*) ARG_1);
				return 1;
			}
			
			/* NE PAS MODIFIER / DON'T MODIFY */
			case GZE_GRAPHIC_ENGINE:{
				// [FR] Moteur graphique 3D GZE ( SYS/ /GZE /TEST )
				// [EN] Graphic 3D engine
				/* using namespace Lib_GZ;
				
				std::shared_ptr<Lib_GZ::cLib> 
				MyInstance(new Lib_GZ::cLib(0, gzStrL(""), 0));
					
				// GZE demo examples
				gzSp<Lib_Demo::cMainEntry> _oTest = Lib_Demo::MainEntry::Get(MyInstance->thread)->New(MyInstance->thread); 
			
				while( MyInstance->bIsAlive){
					MyInstance->fMainUpdate();
				}
				
				return 1; */
			}
			/* NE PAS MODIFIER / DON'T MODIFY */
			
			case OPENGL_MESA_ENGINE:{
				// [FR] Chargeur OpenGL
				// [EN] OpenGL Loader
				
				return mesa_3d::mesa_main(800, 600);
			}
			
			/* ICI VOS FONCTION / HERE YOUR FUNCTIONS */
			case EXAMPLE1:{
				std::shared_ptr<example1::my_example_1> 
					MyInstance (new example1::my_example_1());
					
				return 1;
			}
			
			case EXAMPLE2:{
				std::shared_ptr<example2::my_example_2> 
					MyInstance (new example2::my_example_2());
					
				return 1;
			}
			
			case EXAMPLE3:{
				std::shared_ptr<example3::my_example_3> 
					MyInstance (new example3::my_example_3());
				return 1;
			}
			
			case EXAMPLE4:{
				std::shared_ptr<example4::my_example_4> 
					MyInstance (new example4::my_example_4());
					
				return 1;
			}

			
			default:{
				/** **/
			}
		}
		return -1; /* Missing function ID */
	}
}



