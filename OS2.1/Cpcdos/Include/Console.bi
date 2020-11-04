' Contient les declarations, structures et variables concernant 
' la console Cpcdos/Cpinticore

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 22/01/2018


' 22-01-2018	: AJOUT de GET_Touche

Type _CONSOLE_Cpcdos_OSx__
	private:
		
	public:
		CONST _MAX_Historique 	as integer = 80
		' Afficher les stats CPinti dans la console
		CPinti_MENU				as boolean = true
		CPinti_DebugMode 		as integer = true
		
		HOOK_Console			as boolean = false
		
		couleurC_R				as integer
		couleurC_V				as integer
		couleurC_B				as integer
	
		Buffer_commande			as String = ""
		Modifie					as boolean = false
		Echap_annule_cmd		as boolean = false
		Entrer_exec_cmd			as boolean = false
		Backspace_suppr			as boolean = false
		Navig_historique		as boolean = false
		Tab_commandes			as boolean = false
		
		type_affichage			as integer = 0 ' 0 par defaut->Console. 1 demarrage graphique
		affichage_ini			as integer = 0 ' Si l'initialisation a deja ete lance 1. ou pas 0.

		Ajout 					as integer
		Accumulation			as integer
		TailleBase				as integer
		ASuppOuPas				as integer
		ACurClecheOuPas			as integer
		Niveau					as integer = 2
		debugmode				as integer = 1
		HistoriqueINDEX			as integer = 0
		HistoriqueLireINDEX		as integer = 0
		FIXQuestion				as string
		FIXQuestion_CLE_	 	as double
		FIXQuestion_TOCK		as uinteger
		FIXQuestion_NIVEAU_CCP 	as integer
		FIXQuestion_Param_1 	as integer
		FIXQuestion_Param_2 	as string
		Historique(0 to _MAX_Historique) as string
		Historique_index		as integer
		Historique_navig		as integer
		' Console de commandes 
		Commande_LC				as string
		
		
		Declare function MAIN_Console cdecl Alias "MAIN_Console"(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
		Declare function GET_Touche   cdecl Alias "GET_Touche"	(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
		
		Declare Sub Entre_ligne			(Touche as string, RetourCCP as String)
		
		Declare sub Haut_Console		()
		
		
		Declare Constructor()
		Declare Destructor()
		
end type

CONST var_ as integer = 5-3

