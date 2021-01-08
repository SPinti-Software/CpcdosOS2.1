/*	
	======================================
	==        CPinti ---> Debug         ==
	======================================
	
	Developpe entierement par Sebastien FAVIER

	
	Description
		Module de debogage/affichage console des informations
	
	Creation 
		18/10/2015

	Mise a jour
		07/12/2017
		
		07-12-2017	: AMELIORATION du code en suivant une procedure sticte de GCC
	
*/



#include "cpinti.h"
#include "debug.h"
#include "CPC_WPR.h"
// #include "func_cpi.h"
// #include "func_cpi.h"

// #include "leakchk.h"

namespace cpinti_dbg
{
	void debug_mode(long valeur)
	{
		DEBUG_ENABLED = valeur;
	}
	
	
	void CPINTI_DEBUG_C(const char* TexteFrancais, const char* TexteAnglais, const char* Declencheur, const char* Fonction, long DebutLigne, long NiveauAlerte, long AffDate, long RetourLigneHaut)
	{
		CPINTI_DEBUG(std::string(TexteFrancais), std::string(TexteAnglais), std::string(Declencheur), std::string(Fonction), DebutLigne, NiveauAlerte, AffDate, RetourLigneHaut);
	}
	
	void CPINTI_DEBUG(std::string TexteFrancais, std::string TexteAnglais, std::string Declencheur, std::string Fonction, long DebutLigne, long NiveauAlerte, long AffDate, long RetourLigneHaut)
	{
		// Cette fonction permet de logger les activites du systeme
		// TexteFrancais 	= Texte en francais
		// TexteAnglais 	= Texte en Anglais
		// Declencheur 		= Nom de la classe
		// Fonction			= Nom de la fonction
		
		// DebutLigne	  0 = Reste sur la meme ligne
		// 				  1 = Nouvelle ligne
		
		// NiveauAlerte   0 = Surbrillance
		//				  1 = Normal
		//				  2 = Validation
		//				  3 = Avertissement
		//				  4 = Erreur
		//				  5 = OK
		
		// AffDate		  0 = Sans l'horodatage
		//				  1 = Avec l'horodatage
		 
		// RetourLigneHaut 0= Normal
		// 				   1= Retourner a la ligne au dessus
		
		// Cpcdos_Langue 0 = Francais
		// 				 1 = Anglais
		
		if(DEBUG_ENABLED > 0)
		{
			long Cpcdos_Langue = 0; // TEMPORAIRE
			
			std::string Texte_final;
			char const * File = NULL;
			char const * Texte;
			
			
			// Compatibilite du deboggeur Cpcdos
			if(DebutLigne==1) 
				DebutLigne = 0;
			else 
				DebutLigne = 1;
			

			// Recuperer le texte correspondant a la langue
			if (Cpcdos_Langue==0)
				Texte_final = TexteFrancais;
			else 
				Texte_final = TexteAnglais;
			
			if(Declencheur != "")
				if(Fonction != "")
					Texte_final = '[' + Declencheur + "] " + Fonction + " : " + Texte_final;
				else
					Texte_final = '[' + Declencheur + "] : " + Texte_final;
			else if(Fonction != "")
				Texte_final = Fonction + " : " + Texte_final;
			
			Texte = Texte_final.c_str();
			
			cpc_cpinti_debug_plus_cpinticore(Texte, 1 /*Ecran*/, 1 /*Log*/, NiveauAlerte, 
												RetourLigneHaut, DebutLigne, AffDate /*DisplDate*/, 
												1100 /*Parameters*/, File);
		}
	}
}
