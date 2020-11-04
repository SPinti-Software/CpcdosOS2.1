/* Entete debug.CPP */

#include <iostream>

#define Alerte_surbrille		0
#define Alerte_normal			1
#define Alerte_validation	 	2
#define Alerte_avertissement	3
#define Alerte_erreur			4
#define Alerte_ok				5
#define Alerte_action			6

#define Ligne_reste				0
#define Ligne_saute				1

#define Date_sans				0
#define Date_avec				1

#define Ligne_r_normal			0
#define Ligne_r_revenir			1


namespace cpinti_dbg
{

	void debug_mode(int valeur);
	static int DEBUG_ENABLED = 0;
								
	extern void CPINTI_DEBUG_C(const char* TexteFrancais, const char* TexteAnglais, 
							const char* Declencheur, const char* Fonction, 
							int DebutLigne, int NiveauAlerte, 
							int AffDate, int RetourLigneHaut);

	void CPINTI_DEBUG(std::string TexteFrancais, std::string TexteAnglais, 
						std::string Declencheur, std::string Fonction, 
						int DebutLigne, int NiveauAlerte,
						int AffDate, int RetourLigneHaut);

}