' Contient la declaration des fonctions et variables concernant 
' la gestion UTF 8

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 17/10/2016


Type __UTF8_Cpcdos_OSx__ 
	private:
	
	
	public:
	
	' Couleur PremierPlan R,V,B
	utf8_CouleurP_R		as integer
	utf8_CouleurP_V		as integer
	utf8_CouleurP_B		as integer
	
	' Couleur Fond R,V,B
	utf8_CouleurF_R		as integer
	utf8_CouleurF_V		as integer
	utf8_CouleurF_B		as integer

	' Disponibilite
	utf_Disponible		as integer
	
	' Active ?
	utf_actif			as integer
	
	Declare Constructor()
	Declare Destructor()
End type

