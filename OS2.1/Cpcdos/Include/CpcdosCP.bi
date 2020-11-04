' Contient les declaration des fonctions et variables concernant 
' le shell/moteur CpcdosC+

' Par Sebastien FAVIER
' Reecriture le 16/01/2017
' Mise a jour le 27/01/2020

Type _SHELL_Memoire_CCP__ 
	private:
	
	public:
	
		CONST _MAX_FONCTION_ARGS			as integer = 24 ' 24 arguments etant temporaire
		CONST _MAX_FONCTION_PUBLIC			as integer = 256 ' idem
		
		CONST _MAX_LABEL					as integer = 32
		CONST CpcdosCP_Variable_MAXI 		as integer = 1024
	
		INDEX_Max(0 to 5)					as integer
		
		
		' Nom des variables
		CpcdosCP_Variable_Niveau1_nom		(0 to CpcdosCP_Variable_MAXI) 	as string ' Procedure
		CpcdosCP_Variable_Niveau2_nom		(0 to CpcdosCP_Variable_MAXI)	as string ' application
		CpcdosCP_Variable_Niveau3_nom		(0 to CpcdosCP_Variable_MAXI)	as string ' Utilisateur
		CpcdosCP_Variable_Niveau4_nom		(0 to CpcdosCP_Variable_MAXI) 	as string ' OS
		CpcdosCP_Variable_Niveau5_nom		(0 to CpcdosCP_Variable_MAXI) 	as string ' Kernel
		
		' Donnees des variables
		CpcdosCP_Variable_Niveau1_Donnees	(0 to CpcdosCP_Variable_MAXI) 	as String ' Procedure
		CpcdosCP_Variable_Niveau2_Donnees	(0 to CpcdosCP_Variable_MAXI) 	as String ' application
		CpcdosCP_Variable_Niveau3_Donnees	(0 to CpcdosCP_Variable_MAXI) 	as String ' Utilisateur
		CpcdosCP_Variable_Niveau4_Donnees	(0 to CpcdosCP_Variable_MAXI) 	as String ' OS
		CpcdosCP_Variable_Niveau5_Donnees	(0 to CpcdosCP_Variable_MAXI) 	as String ' Kernel
		
		' Tableau des noms de fonctions, arguments, source et niveau
		TAB_FONCTION_CCP_ARG				(0 to _MAX_FONCTION_PUBLIC) 	as Integer
		TAB_FONCTION_CCP_NIV				(0 to _MAX_FONCTION_PUBLIC)		as Integer
		TAB_FONCTION_CCP_CLE				(0 to _MAX_FONCTION_PUBLIC)		as double
		TAB_FONCTION_CCP_NOM				(0 to _MAX_FONCTION_PUBLIC) 	as string
		TAB_FONCTION_CCP_SRC				(0 to _MAX_FONCTION_PUBLIC) 	as string

End type


Type _SHELL_Cpcdos_OSx__ 
	private:	
		
		MEMOIRE_CCP				as 	_SHELL_Memoire_CCP__
		
	
		SECTION_CRITIQUE		as boolean = FALSE 
		
	public:
	
		CONST _MAX_CMD_CCP 		as integer = 150
		
				' Liste des commandes Francaises et anglaises
		Liste_CMD_FR			(0 to _MAX_CMD_CCP) 		as String
		Liste_CMD_EN			(0 to _MAX_CMD_CCP) 		as String
	
	
		Cpcdos_Optimisation 	as integer
		
		Declare Sub 	 _INIT_CpcdosCP_CMD			()
		Declare Function CpcdosCP_SHELL				(ByVal _COMMANDE_ as String, byval _CLE as double, byval NIVEAU_CCP as integer, byval Param_1 as integer, byval Param_2 as String) as String
		Declare Function CCP_Verifier_Syntaxe		(_COMMANDE_ as String, Position as integer) as integer
		
		
		Declare Function CCP_Rempl_VAR				(byval Commande as string, byval niveau as integer, byval _id_kernel as uinteger, byval _id_os as uinteger, byval _id_utilisateur as uinteger, byval _id_PID as uinteger, byval _id_TID as uinteger, byval RetourVAR as String) as string
		Declare Function Recherche_Fonction_Var		(byval Buffer_lecture_VAR as string, byval _CLE_ as double) as string
		Declare Function Recherche_Fonction_CPCDOS	(byval CCP_Fonction_EXEC as string, byval Arguments as string, byval P1 as integer, byval NIVEAU_CCP as integer, byval _id_kernel as uinteger, byval _id_os as uinteger, byval _id_utilisateur as uinteger, byval _id_PID as uinteger, byval _id_TID as uinteger, byval RetourVAR as string) as string
		Declare Function get_DonneesQuotesPROP_GUI	(Donnees as String) as String
		Declare Function CCP_Function				(Commande as string, Fichier as string, _CLE_ as double, NIVEAU_CCP as integer, P3 as integer, P4 as string) as string
		Declare Function CCP_Calcul					(Commande as string) as string
		Declare Function Gest_variables_ENREG 		(Nom_Var as string, donnees as string, niveau as integer, _CLE_ as double) as integer
		Declare Function Gest_variables_ENREG 		(Nom_Var as string, donnees as string, niveau as integer, _id_kernel as uinteger, _id_os as uinteger, _id_utilisateur as uinteger, _id_PID as uinteger, _id_TID as uinteger) as integer
		Declare Function CCP_Lire_Variable			(Nom as string, niveau as integer, _CLE_ as double) as string
		Declare Function Gest_variables_LIRE 		(Nom as string, niveau as integer, _id_kernel as uinteger, _id_os as uinteger, _id_utilisateur as uinteger, _id_PID as uinteger, _id_TID as uinteger) as string
		Declare Function Gest_variables_Suppr 		(Nom as string, niveau as integer, _id_kernel as uinteger, _id_os as uinteger, _id_utilisateur as uinteger, _id_PID as uinteger, _id_TID as uinteger) as integer
		Declare Function Gest_variables_GrapNIV 	(Nom as string, niveau as integer, niveauDEST as integer, _id_kernel as uinteger, _id_os as uinteger, _id_utilisateur as uinteger, _id_PID as uinteger, _id_TID as uinteger) as integer
		Declare Function Gest_variables_Verif 		(Nom_verif as string, niveau as integer, _id_kernel as uinteger, _id_os as uinteger, _id_utilisateur as uinteger, _id_PID as uinteger, _id_TID as uinteger) as double
		Declare Function Gest_variables_Libre 		(niveau as integer) as integer
End type