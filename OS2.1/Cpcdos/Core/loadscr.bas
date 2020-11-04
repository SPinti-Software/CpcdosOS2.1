#print
#print ============ Loading Screen ==============
' Loading screen

' Creation	2 Mai 2019
' Update	2 Mai 2019

#include "cpcdos.bi"

#print * Init boot screen
Function __Noyau_Cpcdos_OSx__.Initialiser_BootScreen(Type_rsc as boolean, source as string, PID_system as uinteger) as uinteger
	' Cette fonction va initialiser le module
	'
	' Type_rsc 		-> TRUE:Sequences d'images FALSE:Video MPEG/AVI
	' nom			-> Nom du package de ressources
	' PID_system 	-> Numero du processus systeme "hebergeur"
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Initialiser_BootScreen] Demarrage du module boot screen ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Initialiser_BootScreen] Starting boot screen module ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	
	Dim bs_gui 			as string
	Dim bs_scr_res 		as string
	Dim bs_scr_bit_val 	as integer
	
	
	' Lire le fichier de configuration
	CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("EXE/ " & source & "\config.cpc", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "") 

	' Lire les variables
	bs_gui = RTRIM(RTRIM(RTRIM(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.gui" , 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE), chr(13)), chr(10)))


	if bs_gui = "1" OR bs_gui = "TRUE" Then
		bs_scr_res 	= RTRIM(RTRIM(RTRIM(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.scr_res", 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE), chr(13)), chr(10)))
		

		' Corriger avant les crashs
		if len(bs_scr_res) < 7 Then bs_scr_res = "800x600"
		if len(bs_scr_res) > 9 Then bs_scr_res = "800x600"
		
	
		' *** ADAPTER l'AFFICHAGE ***
		Dim CEST_BON as boolean = false
		Dim Resolution as string = UCASE(bs_scr_res)
		Dim Res_X as integer = Val(MID(Resolution, 1, instr(Resolution, "X")-1))
		Dim Res_Y as integer = Val(MID(Resolution, instr(Resolution, "X")+1))

		
		For boucle_1 as integer = 1 to 2
		
			' 2eme essaie, avec 800x600
			if boucle_1 = 2 Then 
				Res_X = 800
				Res_Y = 600
			End if
			
			For boucle_2 as integer = 1 to 2
				' if boucle_2 = 1 then bs_scr_bit_val = 32
				if boucle_2 = 1 Then bs_scr_bit_val = 24
				if boucle_2 = 2 Then bs_scr_bit_val = 16
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.test_Resolution(Res_X, Res_Y, bs_scr_bit_val) = TRUE Then
					CEST_BON = true
				End if
				if CEST_BON = true then exit for
			Next boucle_2
			
			if CEST_BON = true then exit for
		Next boucle_1

		' Si l'affichage est compatible
		if CEST_BON = true Then
			' Changer de resolution d'ecran
			Dim resultat_init as integer = CPCDOS_INSTANCE.SCI_INSTANCE.Initialiser_ECRAN(Res_X, Res_Y, bs_scr_bit_val)

			' Si la resolution est bonne
			If resultat_init = 1 Then
				' Charger les images/video MPEG/AVI
				Dim resultat as integer = CPCDOS_INSTANCE.Load_Ressources(Type_rsc, source, Res_X, Res_Y)
			
				if NOT resultat <> 0 Then
					' OK tout est charge
					
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[Initialiser_BootScreen] Creation du thread boot screen anime PID:" & PID_system & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
					Else
						DEBUG("[Initialiser_BootScreen] Creating animated boot screen thread PID:" & PID_system & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
					End if
					
					Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
					
					' Remplir la structure du thread de la console
					INSTANCE_STRUCT_THREAD.Nom 		= "Thread_bootscreen"		' Nom du thread
					INSTANCE_STRUCT_THREAD.Fonction = @Animation				' Adresse memoire
					INSTANCE_STRUCT_THREAD.PROC_ID 	= PID_system				' PID du processus parent
					INSTANCE_STRUCT_THREAD.Priorite	= _PRIORITE_THRD_FAIBLE		' Priorite thread
					INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
					INSTANCE_STRUCT_THREAD.ARG_2 	= NULL
					INSTANCE_STRUCT_THREAD.ARG_3 	= NULL
					INSTANCE_STRUCT_THREAD.ARG_4 	= NULL
					INSTANCE_STRUCT_THREAD.ARG_5 	= NULL

					
					' Creer le thread grace a la structure ci-dessus
					CPCDOS_INSTANCE.Thread_BootScreen = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					
					' Et continuer le chargement du systeme pendant que ce thread s'occupe d'animer l'ecran
					
				Else
					' Probleme !
					Function = cuint(resultat)
				End if

			else
				' Probleme !
				Function = 2
			End if ' resultat_init
			
		else
			' Probleme !
			Function = 2
		End if ' CEST_BON
	ELSE
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Initialiser_BootScreen] Les parametres n'autorisent pas le boot screen.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[Initialiser_BootScreen] The settings do not allow the boot screen.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
	End if ' GUI = 1
	
End function

#print * Bitmap ressources loader
Function __Noyau_Cpcdos_OSx__.Load_Ressources(Type_rsc as boolean, source as String, Res_X as integer, Res_Y as integer) as integer
	' Cette fonction va permettre de charger en RAM les elements graphiques sans utiliser le module SCI de Cpcdos
	'
	' Type_rsc 	-> TRUE:Sequences d'images FALSE:Video MPEG/AVI
	' nom		-> Nom du package de ressources
	
	ENTRER_SectionCritique()
	
	Dim DepassementX 	as integer
	Dim DepassementY 	as integer
	Dim Largeur 		as integer
	Dim Hauteur 		as integer
	dim PosX 			as integer
	dim PosY 			as integer
	dim Resolution_X 	as integer 
	dim Resolution_Y 	as integer
	Dim bs_fps	 		as string
	Dim bs_size 		as string
	Dim bs_begin 		as string
	Dim bs_loop 		as string
	
	bs_fps 		= RTRIM(RTRIM(RTRIM(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.fps"		, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE), chr(13)), chr(10)))
	bs_size 	= RTRIM(RTRIM(RTRIM(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.size"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE), chr(13)), chr(10)))
	bs_begin 	= RTRIM(RTRIM(RTRIM(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.begin"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE), chr(13)), chr(10)))
	bs_loop		= RTRIM(RTRIM(RTRIM(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.loop"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE), chr(13)), chr(10)))

	
	print "Boot screen is loading"
	
	' Charger l'image et recuperer son ID
	for b as integer = 0 to val(bs_size)
		CPCDOS_INSTANCE.LoadSCR_Sequence(b) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(Source & "\img_" & b & ".png", 1111)
	next b


	SORTIR_SectionCritique()
	

	
	Function = 0
	
End Function

#print * Thread animation
Public Function Animation cdecl Alias "Animation" (byval thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	' Cette procedure va animer l'ecran
	
	' ============= PUBLIC VARIABLES =============
	Dim bs_fps	 		as string
	Dim bs_size 		as string
	Dim bs_begin 		as string
	Dim bs_loop 		as string
	dim fram_opa		as integer
	Dim Largeur 		as integer
	Dim Hauteur 		as integer
	Dim Degrade			as string
	
	
	Dim DepassementX 	as integer
	Dim DepassementY 	as integer
	dim PosX as integer
	dim PosY as integer

	Largeur = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_x(CPCDOS_INSTANCE.LoadSCR_Sequence(0))
	Hauteur = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_y(CPCDOS_INSTANCE.LoadSCR_Sequence(0))
	Dim Res_X as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X()
	Dim Res_Y as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y()
	

	bs_fps 		= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.fps"		, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE)
	bs_size 	= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.size"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE)
	bs_begin 	= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.begin"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE)
	bs_loop		= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.loop"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE)
	Degrade 	= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.darkening" , 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE)
	fram_opa	= val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.frames_opacity" , 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
	
	
	' Corriger pour eviter les crashs
	if len(bs_fps) < 1 Then bs_fps = "1"
	if len(bs_fps) > 3 Then bs_fps = "1"
	if val(bs_fps) < 1 Then bs_fps = "1"
	
	if len(bs_size) < 1 Then bs_size = "1"
	if len(bs_size) > 3 Then bs_size = "1"
	if val(bs_size) < 1 Then bs_size = "1"
	
	if len(bs_begin) < 1 Then bs_begin = "0"
	if len(bs_begin) > 3 Then bs_begin = "0"
	
	if len(bs_loop) < 1 Then bs_loop = "0"
	if len(bs_loop) > 3 Then bs_loop = "0"
	
	if val(Degrade) < 1 then Degrade = "0"
	if val(Degrade) > 3 then Degrade = "3"
	
	if fram_opa <= 0 Then fram_opa = 255
	if fram_opa > 255 then fram_opa = 255
	
	' Obtenir le nombre de micro-secondes qui separe par images
	Dim Temps as integer = 1000000 / val(bs_fps)
	Dim Tour_fait as boolean = false
	Dim AlphaCalc as integer = 0
	
	' Debut de bouclage
	dim seqimage as integer = val(bs_begin)
	' ============= PUBLIC VARIABLES =============
	

	Dim Etat_Thread as uinteger
	Dim EN_VIE 		as Boolean = TRUE
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[BootScreen] Animation boot screen ... REGARDEZ-MOI COMME JE SUIS BEAU !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[BootScreen] Boot screen animation ... LOOK AT ME LIKE I'M BEAUTIFUL !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	
	ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN

	' doevents(0)
	while(EN_VIE)
		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
		' ********* D E B U T  ********
		
		
		ScreenLock()
		' Laisser le curseur eteint
		Setmouse 0, 0, 0

		' Premier tour OK
		if seqimage >= val(bs_size) Then 
			Tour_fait = true
		End if
		
		' Reboucler une fois le premier tout fait
		If Tour_fait = true Then
		
			' Si ca atteint la taille maximale
			if seqimage >= val(bs_size) Then
			
				' On reboucle a la zone de boucle
				seqimage = val(bs_loop)
			End if
		End if
		
		' Afficher l'image 
		PosX = (Res_X / 2) - (Largeur / 2)
		PosY = (Res_Y / 2) - (Hauteur / 2)
		
		' S'il y a un depassement
		if Largeur > Res_X Then 
			DepassementX = abs(Largeur - Res_X) / 2
			PosX = 0
		End if
		if Hauteur > Res_Y Then 
			DepassementY = abs(Hauteur - Res_Y) / 2
			PosY = 0
		End if
		
		
		if Degrade = "0" Then AlphaCalc = 255 ' 0 : Degrade pour personne
		if Degrade = "2" Then AlphaCalc = 255 ' 2 : Degrade pour la fin
		
		if AlphaCalc > 255 then AlphaCalc = 255
		
		if AlphaCalc = 255 Then
			if fram_opa >= 255 then
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE.LoadSCR_Sequence(seqimage), PosX, PosY, DepassementX, DepassementY, Largeur-DepassementX, Hauteur-DepassementY)
			else
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE.LoadSCR_Sequence(seqimage), PosX, PosY, DepassementX, DepassementY, Largeur-DepassementX, Hauteur-DepassementY, true, fram_opa)
			End if
		Else
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE.LoadSCR_Sequence(seqimage), PosX, PosY, DepassementX, DepassementY, Largeur-DepassementX, Hauteur-DepassementY, true, AlphaCalc)
			
		End if
		
		' incrementer le canal alpha maniere exponentielle
		AlphaCalc += 10

		ScreenUnlock()
		
		Flip CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		
		if AlphaCalc < 200 Then 
			ENTRER_SectionCritique()
			sleep 60
			SORTIR_SectionCritique()
		Else
			doevents(Temps)
		End if
		
		

		' Incrementer
		seqimage += 1

		'  ********* F I N  *********
		END SCOPE
		end if
		
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		
		
		' doevents(0)
	wend

	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[BootScreen] Animation de fermeture ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[BootScreen] Closing animation ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	
	' **** Quitter le thread avec une animation de disparition ****
	AlphaCalc = 255
	ENTRER_SectionCritique()
	
	if Degrade = "0" Then AlphaCalc = 0 ' 	0 : Degrade pour personne
	if Degrade = "1" Then AlphaCalc = 0 ' 	1 : Degrade pour le debut uniquement
		
	for Boucle as integer = 0 to 255
		AlphaCalc -= Boucle
		if AlphaCalc < 0 Then AlphaCalc = 0 : exit for
		
		ScreenLock()
		cls
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE.LoadSCR_Sequence(seqimage), PosX, PosY, DepassementX, DepassementY, Largeur-DepassementX, Hauteur-DepassementY, true, AlphaCalc)
		' put (PosX, PosY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(CPCDOS_INSTANCE.LoadSCR_Sequence(seqimage)), (DepassementX, DepassementY)-(Largeur-DepassementX, Hauteur-DepassementY), ALPHA, AlphaCalc
		ScreenUnLock()
		
		Flip CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		
		sleep 100

		seqimage += 1
		' Si ca atteint la taille maximale
		if seqimage >= val(bs_size) Then
		
			' On reboucle a la zone de boucle
			seqimage = val(bs_loop)
		End if
	Next Boucle
	SORTIR_SectionCritique()
	' **************************************************************
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[BootScreen] OK, Fermeture du thread boot screen !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[BootScreen] OK, Closing boot screen thread !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function