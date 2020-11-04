/*
	******************** ENTETE ********************
	=============================
	==     CPinti ---> GZE     ==
	=============================
	
	Developpe entierement par Sebastien FAVIER
		Contributeurs : Johann GRAF et Leo VACHET.
		
		Module d'execution de GZE pour Cpcdos OSx
	
		Creation le 25 avril 2016
							
		Mise a jour le 25 Avril 2016
		
*/


extern int cpc__gze_main();

namespace GZE_Cpcdos
{
	
	class GZE_Graphic_Engine_For_Cpcdos_OSX
	{
		public:
		GZE_Graphic_Engine_For_Cpcdos_OSX();
	};
	
	GZE_Graphic_Engine_For_Cpcdos_OSX::GZE_Graphic_Engine_For_Cpcdos_OSX()
	{
		cpc__gze_main();
	}
	
	
	
}