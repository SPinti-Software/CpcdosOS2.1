' Wrapper des fonctions interne de Cpcdos OSx pour du code externe ---> CPinti Core
' Par Sebastien FAVIER

' Creation 		04-05-2016
' Mise a jour 	23-07-2019

#include once "cpcdos.bi"

#print * WRAPPER
' ============================ Fonctions publiques/wrapped =============================
Declare Function 	cpc_mouse_state					cdecl Alias "cpc_mouse_state" 					(param as integer) as integer ' 0:clic 1:posx 2:posy 3:scrool
Declare Function 	cpc_set_mouse 					cdecl Alias "cpc_set_mouse" 					(PX as integer, PY as integer, Visible as boolean) as boolean
Declare Function	cpc_get_key						cdecl Alias "cpc_get_key"						() as integer ' numero ascii

Declare Function 	cpc_Blitter 					cdecl Alias "cpc_Blitter" 						(ID as integer) as integer
Declare Function 	cpc_Creer_Contexte 				cdecl Alias "cpc_Creer_Contexte" 				(TailleX as integer, TailleY as integer) as integer
Declare Function 	cpc_Obtenir_Zone_Contexte 		cdecl Alias "cpc_Obtenir_Zone_Contexte" 		(ID as integer) as any ptr

Declare Sub 		cpc_CCP_Exec_Commande 			cdecl alias "cpc_CCP_Exec_Commande"  			(Commande as CONST ZString PTR, niveau as integer)
declare Function	cpc_CCP_Exec_Commande_ret		cdecl alias "cpc_CCP_Exec_Commande_ret"			(Commande as CONST ZString PTR, niveau as integer) as ZString PTR
Declare Function	cpc_CCP_Lire_Variable 			cdecl alias "cpc_CCP_Lire_Variable"  			(NomVariable as CONST ZString PTR, niveau as integer) as ZString ptr
Declare function 	cpc_CCP_Exec_Thread_cpc 		cdecl Alias "cpc_CCP_Exec_Thread_cpc" 			(Chemin as CONST ZString PTR, Priorite as integer) as integer

Declare Function	cpc_Exec_en_cours				cdecl alias "cpc_Exec_en_cours"					(ARG as integer) as ZString ptr

Declare sub		 	cpc_cpinti_debug_cpinticore		cdecl Alias "cpc_cpinti_debug_cpinticore" 		(Texte as CONST ZString ptr, NiveauAlerte as integer)
Declare sub 		cpc_cpinti_debug_plus_cpinticore cdecl Alias "cpc_cpinti_debug_plus_cpinticore" (Evenement as CONST ZString ptr, Ecran as integer, DansLeLOG as integer, Prio as integer, Retour as integer, CRetLF as integer, AfficherDate as integer, Complements as integer, Fichier as CONST ZString ptr)
Declare Function 	cpc_cpinti_Fichier_Existe 		cdecl Alias "cpc_cpinti_Fichier_Existe" 		(Chemin as CONST ZString ptr) as integer
Declare Function 	cpc_cpinti_Taille_Fichier 		cdecl Alias "cpc_cpinti_Taille_Fichier" 		(Chemin as CONST ZString ptr) as uinteger
Declare Function 	cpc_cpinti_Lire_Fichier_complet cdecl Alias "cpc_cpinti_Lire_Fichier_complet" 	(Chemin as CONST ZString ptr, Mode as CONST ZString ptr, retour_str as ZString ptr) as uinteger

Declare Sub 		cpc_cpinti_sleep_us 			cdecl Alias "cpc_cpinti_sleep_us" 				(Temps_us as uinteger)
Declare Sub 		cpc_cpinti_sleep_ms				cdecl Alias "cpc_cpinti_sleep_ms" 				(Temps_ms as uinteger)
Declare Sub 		cpc_cpinti_sleep_sec			cdecl Alias "cpc_cpinti_sleep_sec" 				(Temps_sec as uinteger)

Declare Function 	cpc_cpinti_Obtenir_Temps		cdecl Alias "cpc_cpinti_Obtenir_Temps" 			(Temps_av as double) as double

Declare Function 	cpc_Thread_En_Cours				cdecl Alias "cpc_Thread_En_Cours" 				() as uinteger
Declare Function 	cpc_supprimer_Thread 			cdecl Alias "cpc_supprimer_Thread" 				(TID as uinteger, force as boolean) as boolean
Declare sub 		cpc_doevents					cdecl Alias "cpc_doevents" 						(temps as uinteger)
Declare sub 		cpc_EntrerSectionCritique 		cdecl Alias "cpc_EntrerSectionCritique" 		()
Declare sub 		cpc_SortirSectionCritique 		cdecl Alias "cpc_SortirSectionCritique" 		()

dim shared ACU 				as integer = 0
dim shared temps_precedent 	as double = 1

Public Function cpc_mouse_state cdecl Alias "cpc_mouse_state" (param as integer) as integer 
	' Obtenir les informations de la souris
	' 0:clic 1:posx 2:posy, scrool, clip
	
	dim as integer Pos_X, Pos_Y, Scroll_Weel, TypeClic, Clip
	
	dim Presente as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpc_GetMouse(Pos_X, Pos_Y, Scroll_Weel, TypeClic, Clip)
			
	if Presente <> 0 Then
		Dim Message_erreur as string = ERRAVT("ERR_060", 0)
		DEBUG("[SCI] " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		return -1
	else
		' TYPE DE CLIC
		if param = 0 then
			return TypeClic
			
			
		' POSITION X
		elseif param = 1 then
			return Pos_X
			
		' POSITION Y
		elseif param = 2 then
			return Pos_Y
			
		' SCROOL
		elseif param = 3 then
			return Scroll_Weel
			
		' CLIP
		elseif param = 4 then
			return Clip
		end if
		
		return -1 ' param number false
	end if
	
End function

Public Function cpc_set_mouse cdecl Alias "cpc_set_mouse" (PX as integer, PY as integer, Visible as boolean) as boolean
	' Definir les informations X et Y et visibilite de la souris
	
	dim retour as integer
	dim vis as integer
	
	if Visible = true then vis = 1 else vis = 0
		
	retour = Setmouse(PX, PY, 0)
	
	if retour = 0 then 
		return true
	else
		return false
	end if
End function

Public Function cpc_get_key cdecl Alias "cpc_get_key" () as integer ' numero ascii
	' recuperer la touche
	
	return ASC(inkey)
End function

Public Function cpc_Blitter cdecl Alias "cpc_Blitter" (ID as integer) as integer
	
	ENTRER_SectionCritique()
	
								
	' Si le bitmap s'est actualise
	IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE Then

		' Reduit ?
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_PID(ID)).PROP_TYPE.Reduit = false Then
			
			Dim YesItCan as boolean = true

			' Si multi-thread no focus est disable
			if CPCDOS_INSTANCE.SCI_INSTANCE.MULTI_PICTUREBOX = false Then

				' ET qu'on est PAS focus, ON QUITTE !
				IF NOT CPCDOS_INSTANCE.SCI_INSTANCE.Fenetre_FOCUS(0) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_PID(ID) Then 
					YesItCan = false
				End if
			 End if

			If YesItCan = true Then
				if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT <= 0 Then
					if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID) > 0 Then
				
						' L'index de l'objet + index TID parent trouve, on execute!
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID)).Identification_Objet.Handle_PARENT > 0 Then
							' Tant que son TID est en vie, on continue d'actualiser!
							
							if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_FPS(temps_precedent, ACU) > 0 Then
								' Afficher le nombre de FPS
								CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID)).TEXTE = _
											"SOFTWARE RENDERING - PTR:0x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID)).IMG_ID) & _
											" FPS:" & ACU & _
											" RAM:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Memoire_libre(CPCDOS_INSTANCE._MEGA_OCTETS) & " Mb free " & _
											" CPU:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_cpu_pourcent() & " %" & _
											" GPU: na%"

								ACU = 0
								temps_precedent = timer
							else
								ACU = ACU + 1
							End if
							
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_PictureBox(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_PID(ID))
							
							' CPCDOS_INSTANCE.SCI_INSTANCE.IUG_Updater(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_TYPE(ID), _
																		' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_PID(ID), _
																		' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID))
						End if
					End if
				Else

					if Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.PICTUREBOX.MULTITHREAD.NOFOCUS", 3, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE)) = 1 Then
						CPCDOS_INSTANCE.SCI_INSTANCE.MULTI_PICTUREBOX = true
					Else
						CPCDOS_INSTANCE.SCI_INSTANCE.MULTI_PICTUREBOX = false
					End if
					
				End if ' En deplacement
			End if ' Can ?
		End if ' Reduit ?
	End if ' GUI_Mode
	SORTIR_SectionCritique()
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		DEBUG("[cpc_Blitter] Bitmap ID:" & ID & " Picturebox(" &  CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID) & "):" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index(ID)).Identification_Objet.Nom, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	End if
	
	CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video()

	doevents(0)

	return 0
End function

Public Function cpc_Creer_Contexte cdecl Alias "cpc_Creer_Contexte" (TailleX as integer, TailleY as integer) as integer
	ENTRER_SectionCritique()

	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[cpc_Creer_Contexte] Creation d'un contexte video BITMAP " & TailleX & "x" & TailleY & " ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		Else
			DEBUG("[cpc_Creer_Contexte] Creating video BITMAP context " & TailleX & "x" & TailleY & " ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End if
	End if
	
	Dim Resultat as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Render_Context(" & TailleX & "x" & TailleY & ")-" & CPCDOS_INSTANCE.get_ThreadEnCours() * 1024, ImageCreate(TailleX, TailleY, RGB(50, 150, 250), 32), CPCDOS_INSTANCE.get_ThreadEnCours() * 1024, TailleX, TailleY)
	
	if Resultat > 0 Then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			DEBUG("[cpc_Creer_Contexte] [OK] ID:" & Resultat & " [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(Resultat), 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End if
		Function = Resultat
	Else
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[cpc_Creer_Contexte] [ERREUR] Impossible de creer le bitmap", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[cpc_Creer_Contexte] [ERROR] Unable to create bitmap", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
		End if
		Function = 0
	End if
	
	SORTIR_SectionCritique()
End function

Public Function cpc_Obtenir_Zone_Contexte cdecl Alias "cpc_Obtenir_Zone_Contexte" (ID as integer) as any ptr
	ENTRER_SectionCritique()
	
	Dim Resultat as any ptr
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[cpc_Obtenir_Zone_Contexte] Recuperation du contexte bitmap ID " & ID & " ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		Else
			DEBUG("[cpc_Obtenir_Zone_Contexte] Getting bitmap context ID:" & ID & " ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End if
	End if

	Resultat = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(ID)
	Dim BUFFER_CONTEXT as any ptr

	if Resultat <> 0 Then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			DEBUG("Bitmap PTR [0x" & hex(Resultat, 8) & "] ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End if
		ImageInfo Resultat, , , , , BUFFER_CONTEXT
		
		
		if BUFFER_CONTEXT <> 0 Then
			' Le context bitmap est OK
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				DEBUG(" [OK] Context PTR [0x" & hex(BUFFER_CONTEXT, 8) & "] ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
			End if
			Function = BUFFER_CONTEXT
		Else
			' Ah ... pas bon
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[ERREUR] Impossible de recuperer le pointeur du bitmap, Probleme serieux!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[ERROR] Unable to get bitmap pointer. Serious problem!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
			End if
		End if
	Else
		' Le bitmap ne doit pas exister?
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[ERREUR] Impossible de recuperer le pointeur du bitmap ID:" & ID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[ERROR] Unable to get bitmap pointer ID:" & ID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
		End if
	End if

	SORTIR_SectionCritique()
End function

public Function cpc_CCP_Exec_Commande_ret cdecl Alias "cpc_CCP_Exec_Commande_ret" (Commande as CONST ZString PTR, niveau as integer) as ZString ptr
	print "Exec_RET !"
	Dim CMD_shell as String = *Commande

	Dim Auth_Kernel				as uinteger = CPCDOS_INSTANCE.get_id_kernel		()
	Dim Auth_OS					as uinteger = CPCDOS_INSTANCE.get_id_OS			()
	Dim Auth_Utilisateur		as uinteger = CPCDOS_INSTANCE.get_id_Utilisateur()
	Dim _CLE_	 				as double 	= CPCDOS_INSTANCE.Generer_cle(Auth_Kernel, Auth_OS, Auth_Utilisateur, 0, 0)

	' Generer une variable redirigee vide
	CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("set/ exec_ret = \#NULL", _CLE_, 4, 330, _CLE_ & "N4->exec_ret")

	' Executer la commande cpcdosC+ en stockant le resultat dans "exec_ret"
	CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(CMD_shell, _CLE_, niveau, 330, _CLE_ & "N4->exec_ret")

	' Recuperer le resultat de la commande
	Dim Resultat as String = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("exec_ret", 4, _CLE_)

	print "****** RETOUUR : " & Resultat
	Dim Variable as ZString ptr = malloc(Len(Resultat))
	*Variable = Resultat
	return Variable

End function

Public sub cpc_CCP_Exec_Commande cdecl Alias "cpc_CCP_Exec_Commande" (Commande as CONST ZString PTR, niveau as integer)
	Dim CMD_shell as String = *Commande
	CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(CMD_shell, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, niveau, 0, "")
End sub

Public Function	cpc_CCP_Lire_Variable cdecl alias "cpc_CCP_Lire_Variable" (NomVariable as CONST ZString PTR, niveau as integer) as ZString ptr
	Dim NomVariable_str as String = *NomVariable
	Dim Resultat as String
	Scope
		Dim Auth_Kernel				as uinteger = CPCDOS_INSTANCE.get_id_kernel		()
		Dim Auth_OS					as uinteger = CPCDOS_INSTANCE.get_id_OS			()
		Dim Auth_Utilisateur		as uinteger = CPCDOS_INSTANCE.get_id_Utilisateur()
		Dim _CLE_	 				as double 	= CPCDOS_INSTANCE.Generer_cle(Auth_Kernel, Auth_OS, Auth_Utilisateur, 0, 0)
		
		Resultat = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable(NomVariable_str, niveau, _CLE_)
	End scope
	Dim Variable as ZString ptr = malloc(Len(Resultat))
	*Variable = Resultat
	return Variable
End function

Public function cpc_CCP_Exec_Thread_cpc cdecl Alias "cpc_CCP_Exec_Thread_cpc" (Commande as CONST ZString PTR, Priorite as integer) as integer

		' Dim CMD_shell as String = *Commande
		
		' if Priorite = 0 then ' Non multithread
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("EXE/ " & CMD_shell, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		' elseif Priorite = 1 then ' Priorite faible
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("CMD/ /THREAD[MIN] EXE/ &+ " & CMD_shell, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		' elseif Priorite = 2 then ' standard
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("CMD/ /THREAD[STD] EXE/ &+ " & CMD_shell, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		' elseif Priorite = 3 then ' Haute
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("CMD/ /THREAD[MAX] EXE/ &+ " & CMD_shell, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		' end if
		' cpc_CCP_Exec_Thread_cpc = 1 ' doit retourner un numero ID du thread
		Function = 0
End function

Public Function cpc_Exec_en_cours cdecl Alias "cpc_Exec_en_cours" (ARG as integer) as ZString ptr
	if ARG = 0 then
		Function = strptr(CPCDOS_INSTANCE._REPERTOIRE_EXEC)
	elseif ARG = 1 then
		Function = strptr(CPCDOS_INSTANCE._REPERTOIRE_NOYAU)
	end if	
end function

Public sub cpc_cpinti_debug_cpinticore cdecl Alias "cpc_cpinti_debug_cpinticore" (Texte as CONST ZString ptr, NiveauAlerte as integer)
	cpc_cpinti_debug_plus_cpinticore(Texte, 1, 1, NiveauAlerte, 0, 1, 0, 1110, "")
End sub

Public sub cpc_cpinti_debug_plus_cpinticore cdecl Alias "cpc_cpinti_debug_plus_cpinticore" (Texte as CONST ZString ptr, Ecran as integer, DansLeLOG as integer, NiveauAlerte as integer, Retour as integer, CRetLF as integer, AfficherDate as integer, Complements as integer, Fichier as CONST ZString ptr)

	' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		' cpinti.CPINTI_DEBUG_C(Texte, Texte, "", "", 0, NiveauAlerte)
	' else
		
		Dim Empl_chr13 			as integer
		Dim Empl_chr10 			as integer
		Dim RetourDeLigneDebug 	as integer = CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF
		Dim Separation 			as string
		Dim Texte_Debug_Cpcdos 	as string = *Texte
		Dim Fichier_Debug		as string = *Fichier

		IF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_Surbrille Then '- - - - - 0
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE
		ElseIF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_Normal Then ' - - - - 1
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal
		ElseIF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_Validation Then ' - - 2
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION
		ElseIF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_Avertissement Then '- 3
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT
		ElseIF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_Erreur Then ' - - - - 4
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR
		ElseIF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_OK Then ' - - - - - - 4
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK
		ElseIF NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Alerte_Action Then ' - - - - 5
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action
		Else
			NiveauAlerte = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action '- - - - - - - - +
		End if
		
		for Boucleechr1310 as integer = 0 to 32

			Empl_chr13	= Instr(Texte_Debug_Cpcdos, chr(13))
			
			Empl_chr10 = Instr(Texte_Debug_Cpcdos, chr(10))
			
			IF (Empl_chr13 + Empl_chr10 ) < 1 Then Exit for

			Dim _CHR13 as integer = 0
			Dim _CHR10 as integer = 0
			
			IF Empl_chr13 > 0 AND Empl_chr10 > 0 Then ' CR et LF
				IF Empl_chr13 < Empl_chr10 Then ' S'il y a 13 & 10
					IF Empl_chr13 + 1 = Empl_chr10 Then ' Verifier s'il est juste derriere
						Separation = MID(Texte_Debug_Cpcdos, 1, Empl_chr13 - 1)
						Texte_Debug_Cpcdos = MID(Texte_Debug_Cpcdos, Empl_chr13 + 2)
						RetourDeLigneDebug = CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF ' Nouvelle ligne!
					Else
						_CHR13 = 1 ' GOTO _CHR13 ' 13 est encore bien avant 10 !
						
					End if
				Else
					_CHR10 = 1 ' Goto _CHR10 ' 10 est avant 13, aucune coherence, on le saute!

				End if
			End if
			
			IF Empl_chr13 > 0 OR _CHR13 = 1 Then ' CR

				Separation = MID(Texte_Debug_Cpcdos, 1, Empl_chr13 - 1)
				Texte_Debug_Cpcdos = MID(Texte_Debug_Cpcdos, Empl_chr13 + 1)
				RetourDeLigneDebug = CPCDOS_INSTANCE.DEBUG_INSTANCE.CR ' On retourne a debut en restant sur la meme ligne
			End if
			
			IF Empl_chr10 > 0 OR _CHR10 = 1 Then ' LF

				Separation = MID(Texte_Debug_Cpcdos, 1, Empl_chr10 - 1)
				Texte_Debug_Cpcdos = MID(Texte_Debug_Cpcdos, Empl_chr10 + 1)
				RetourDeLigneDebug = CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF ' Nouvelle ligne!
			End if

			
			' IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = 0 then 
										DEBUG(Separation, 1, DansLeLOG, NiveauAlerte, Retour, RetourDeLigneDebug, AfficherDate, Complements, Fichier_Debug)
		Next Boucleechr1310
		
		' IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = 0 then 
										DEBUG(Texte_Debug_Cpcdos, 1, DansLeLOG, NiveauAlerte, Retour, CRetLF, AfficherDate, Complements, Fichier_Debug)
	' End if
End sub

Public Function cpc_cpinti_Fichier_Existe cdecl Alias "cpc_cpinti_Fichier_Existe" (Chemin as CONST ZString ptr) as integer
	Function = CPCDOS_INSTANCE.Fichier_Existe(*Chemin)
End function

Public Function cpc_cpinti_Lire_Fichier_complet cdecl Alias "cpc_cpinti_Lire_Fichier_complet" (Chemin as CONST ZString ptr, Mode as CONST ZString ptr, retour_str as ZString ptr) as uinteger
	dim Retour as String
	Retour = CPCDOS_INSTANCE.Lire_fichier_complet(*Chemin)
	
	memcpy(retour_str, strptr(Retour), len(Retour))
	
	function = len(Retour)
End function

Public Function cpc_cpinti_Taille_Fichier cdecl Alias "cpc_cpinti_Taille_Fichier" (Chemin as CONST ZString ptr) as uinteger
	Function = CPCDOS_INSTANCE.Taille_Fichier(*Chemin)
End function

Public Sub cpc_cpinti_sleep_us cdecl Alias "cpc_cpinti_sleep_us" (Temps_us as uinteger)
	doevents(Temps_us / 1000)
	
End Sub

Public Sub cpc_cpinti_sleep_ms cdecl Alias "cpc_cpinti_sleep_ms" (Temps_ms as uinteger)
	doevents(Temps_ms)
	' CPintiCore_instance.doevents(Temps_ms * 1000)
End Sub

Public Sub cpc_cpinti_sleep_sec cdecl Alias "cpc_cpinti_sleep_sec" (Temps_sec as uinteger)
	doevents(Temps_sec * 1000)
	' CPintiCore_instance.doevents(Temps_sec * 1000000)
End Sub

Public Function cpc_cpinti_Obtenir_Temps_ms cdecl Alias "cpc_cpinti_Obtenir_Temps_ms" (Temps_av as double) as double
	if Temps_av > 0 then 
		Function = (timer*1000) - Temps_av
	else
		Function = (timer*1000)
	end if
	Function = 0
End Function

Public Function cpc_Thread_En_Cours cdecl Alias "cpc_Thread_En_Cours" () as uinteger
	return CPCDOS_INSTANCE.get_ThreadEnCours()
End Function

Public Function cpc_supprimer_Thread cdecl Alias "cpc_supprimer_Thread" (TID as uinteger, force as boolean) as boolean
	return CPCDOS_INSTANCE.Fermer_thread(0, TID, force)
End Function

Public sub cpc_doevents cdecl Alias "cpc_doevents" (temps as uinteger)
	doevents(temps)
End sub

Public sub cpc_EntrerSectionCritique cdecl Alias "cpc_EntrerSectionCritique" ()
	ENTRER_SectionCritique()
End sub

Public sub cpc_SortirSectionCritique cdecl Alias "cpc_SortirSectionCritique" ()
	SORTIR_SectionCritique()
End sub

public Function Exec_WRAPPER(FunctionID as integer, _CLE_ as double, _ARG_1 as CONST String, _ARG_2 as integer, _ARG_3 as any ptr, _ARG_4 as ANY PTR, _ARG_5 as ANY PTR) as integer
	' Cette fonction permet d'executer une FunctionID cree dans le CONTRIB
	
	Function = Wrapper_Cpcdos.cpinti_WRAPPER(FunctionID, _CLE_, strptr(_ARG_1), _ARG_2, _ARG_3, _ARG_4, _ARG_5)

End function
