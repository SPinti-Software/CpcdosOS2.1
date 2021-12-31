' Ce module permet la gestion des informations de debogage
'  gere l'affichage sur la console mais aussi dans des fichiers logs
'  et stream TCP pour le support TELNET par exemple.

' Par Sebastien FAVIER
' 	1 ere reecriture le 13/10/2016
' 	2 eme reecriture le 22/09/2018
' 	Mise a jour le 22/09/2018

' 22-09-2018	: Refonte 2.1 beta 1.1
' 13-04-2017	: Correction de \#PAUSE qu ine fonctionnait plus
' 14-02-2016	: Adaptation creation du client & serveur + buffer

#print
#print ============ DEBUG ==============

#include once "cpcdos.bi"

Constructor _DEBUG_Cpcdos_OSx__()
	' Le debug ne peut pas etre utilise car le noyau n'es pas encore initialise	
	DEBUG(" * Instanciation du debogeur noyau --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets", 1, 1, 2, 0, 0, 1, 0, "")
End Constructor

Destructor _DEBUG_Cpcdos_OSx__()
	DEBUG(" * De-instanciation du debogeur noyau --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
End Destructor

#print * Debogueur des activites
SUB DEBUG(Evenement as string, Ecran as integer, DansLeLOG as integer, Prio as integer, Retour as integer, CRetLF as integer, AfficherDate as integer, Signature as integer, Fichier as string)
	' Procedure de gestion des informations de debuggage 
	' 	Evenement		--> Texte
	' 	Ecran			--> Affichage sur l'ecran (0 non/1 oui)
	' 	DansLeLOG		--> Ecriture dans DEBUG.LOG (0 non/1 oui/2 Par accoups)
	'	Prio			--> Priorite (0 normal, 1 surbrille, 2 vert, 3 jaune, 4 rouge)
	'	Retour			--> Si = 1 alors on remonte d'une ligne au dessus si = 0 alors normal
	'	CRetLF 			--> Si le CRLF est applique ou pas
	'	AfficherDate	--> Si la date et heure sont affiches ou pas
	'	Signature		--> 0001:Texte Accululatif 0010:?? ALIAS Signature
	'	Fichier			--> Redirection dans une variable ou un fichier

	ENTRER_SectionCritique()
	
	Dim NePasChangerCouleur as integer = 0
	
	dim as integer Couleur_SURBRILLE_R		, Couleur_SURBRILLE_V		, Couleur_SURBRILLE_B
	dim as integer Couleur_Normal_R			, Couleur_Normal_V			, Couleur_Normal_B
	dim as integer Couleur_VALIDATION_R		, Couleur_VALIDATION_V		, Couleur_VALIDATION_B
	dim as integer Couleur_AVERTISSEMENT_R	, Couleur_AVERTISSEMENT_V	, Couleur_AVERTISSEMENT_B 
	dim as integer Couleur_ERREUR_R			, Couleur_ERREUR_V			, Couleur_ERREUR_B
	dim as integer Couleur_OK_R  			, Couleur_OK_V 				, Couleur_OK_B
	dim as integer Couleur_ACTION_R  		, Couleur_ACTION_V 			, Couleur_ACTION_B
	Dim as integer utf8_A_R					, utf8_A_V					, utf8_A_B

	Dim as integer CURLIGNE, CURCOLO
	
	Dim Evenement_tmp as String
	
	SORTIR_SectionCritique()

	' Action
	if instr(Evenement, "A: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION

	' Pass
	if instr(Evenement, "P: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation

	' Info
	if instr(Evenement, "I: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR

	' Trace
	if instr(Evenement, "T: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille

	' Log
	if instr(Evenement, "L: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal

	' Warning
	if instr(Evenement, "W: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT

	' Error
	if instr(Evenement, "E: ") = 1 Then Evenement = mid(Evenement, 3) : Prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR
	
	if AfficherDate > 0 Then
		Evenement = "(THREAD #" & CPCDOS_INSTANCE.get_ThreadEnCours() & ") " & Evenement
		
		CPCDOS_INSTANCE.DEBUG_INSTANCE.UpdateRTC = true
		
		
		' Mettre a jour 1 fois sur 2 l'heure RTC pour optimiser le CPU
		if CPCDOS_INSTANCE.DEBUG_INSTANCE.UpdateRTC = true Then 
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_RTC()
			CPCDOS_INSTANCE.DEBUG_INSTANCE.UpdateRTC = false 
		else 
			CPCDOS_INSTANCE.DEBUG_INSTANCE.UpdateRTC = true
		End if
		
		ENTRER_SectionCritique()
		L_HEURE = CPCDOS_INSTANCE.get_Heure	("HH:MM:SS")
		LA_DATE = CPCDOS_INSTANCE.get_Date	("DD/MM/YYYY")
		SORTIR_SectionCritique()
	End if

	CPCDOS_INSTANCE.No_ISR = 1
	
	IF Ecran = 0 then  ' On verifie l'utilite de continuer
		IF Fichier = "" then
			If Fichier = "0" then
				' Ne rien afficher, ne rien ecrire, ni dans le log? Bein on quitte!
				IF DansLeLOG = 0 then exit sub
			End if
		end if
	END IF
	
	
	Scope
	
		Dim EcritureDansCOM as boolean = false
		Dim Boucle_COM 		as integer = 0
		
		
		' Verifier si on doit ecrire le log dans le COM
		For Boucle_COM = 1 to 4
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.COM_INSTANCE(Boucle_COM).Port_COM_KeyID = 1 Then 
				
				' On ecrit dans le COM
				IF AfficherDate = CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate Then
					Print #Boucle_COM, LA_DATE & " " & L_HEURE; " "; Evenement
				Else
					Print #Boucle_COM, Evenement
				End if
				
				EcritureDansCOM = TRUE
				Exit for
			End if
		Next Boucle_COM
	
		' Verifier si le LOG du debuggeur est active
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 1 OR CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_CPINTI_FD_DEBUG() > 0 Then
			
			If EcritureDansCOM = FALSE Then
				ENTRER_SectionCritique()
				
				' Autrement ecriture du LOG dans le fichier
				Open "DEBUG.LOG" for Append as #12
					IF AfficherDate = CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate Then
						Print #12, LA_DATE & " " & L_HEURE; " "; Evenement
					Else
						Print #12, Evenement
					End if
					
				Close #12
				
				SORTIR_SectionCritique()
			End if
		End if
	
	End scope
	
	IF NOT Fichier = "" then
		
		If NOT Fichier = "0" Then
			DIM Trame_ROOT as string = "#ROOT__CCP:" ' Administrateur
			DIM Trame_MODER as string = "#MODER_CCP:" ' Moderateur/utilisateur
			DIM Trame_ANONY as string = "#ANONY_CCP:" ' Annonyme
			
			DIM Trame_GUI_TXTBOX as String = "#GUI_TXTBOX:" ' Textebox --> Console graphique
			
			Dim TrameReceptReseau as String = ""
			IF Instr(Fichier, Trame_ROOT) > 0 Then TrameReceptReseau = Trame_ROOT
			IF Instr(Fichier, Trame_MODER) > 0 Then  TrameReceptReseau = Trame_MODER
			IF Instr(Fichier, Trame_ANONY) > 0 Then  TrameReceptReseau = Trame_ANONY
			
			' Recuperer la sortie de la console et y envoyer au textebox qui en a fait la demande
			if Instr(Fichier, Trame_GUI_TXTBOX) > 0 Then
			
				' if NOT Evenement = CPCDOS_INSTANCE._CONTENU_IMPROPABLE Then
					' Recuperer la cle index du textebox
					Dim Index_txtbox as integer = Val(Mid(Fichier, Instr(Fichier, Trame_GUI_TXTBOX) + Len(Trame_GUI_TXTBOX)))
					
					' Ajouter le texte de debogage AVANT le dernier CRLF (Pour eviter d'ecraser ce que l'utilisateur est entrain d'ecrire)
					
					' dim ligne_exec as string = Mid(Texte_Avant, InstrREV(Texte_Avant, ToucheRecupere, len(Texte_Avant) - 2) + 2)
					
					
					if len(Evenement) > 0 then
						' Ajouter les informations heure/date s'il faut
						Dim InfoAEnvoyer as String
						IF AfficherDate = CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate THEN
							' Avec date/heure
							InfoAEnvoyer = LA_DATE & " " & L_HEURE & " " & Evenement
						else
							' Sans date/heure
							InfoAEnvoyer = Evenement
						End if
				
						if CRetLF = CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF Then InfoAEnvoyer = InfoAEnvoyer & CR
						
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_txtbox).Texte += InfoAEnvoyer
					end if
				' end if
				
			End if

			IF Instr(Fichier, TrameReceptReseau) > 0 AND NOT TrameReceptReseau = "" Then 

				
				Dim PosPortClient 	as integer
				Dim PosSockClient 	as integer
				Dim PosPortSrv 		as integer
				Dim PosAvIPClient 	as integer
				Dim PosAvTCPsocket	as integer
				Dim NumPORTSrv 		as integer, NumPORTClient as integer,  NumSockClient as integer, NumIPClient as String
				Dim Temp_Env 		as string
				Dim InfoAEnvoyer as String
				
				
				' Ajouter les informations heure/date s'il faut
				IF AfficherDate = CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate THEN
					' Avec date/heure
					InfoAEnvoyer = LA_DATE & " " & L_HEURE & " " & Evenement
				else
					' Sans date/heure
					InfoAEnvoyer = Evenement
				End if
				
				if CRetLF = CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF Then InfoAEnvoyer = InfoAEnvoyer & CRLF

				PosAvIPClient = instr(Fichier, ">")
				PosPortClient = instrREV(Fichier, ":")
				PosSockClient = instr(Fichier, " TCP#")
				PosAvTCPsocket = Instr(Fichier, "]:")
				PosPortSrv = Instr(Fichier, TrameReceptReseau)
				
				' Recuperer le numero de port du client
				NumPORTClient = Val(MID(Fichier, PosPortClient + 1, PosSockClient - (PosPortClient + 1)))
				
				NumIPClient = MID(Fichier, PosAvIPClient + 2, PosPortClient - (PosAvIPClient + 2))
				
				' Recuperer le numero de socket du client
				NumSockClient = val(MID(Fichier, PosSockClient + 5))
				
				' Recuperer le numero de port du serveur
				NumPORTSrv = Val(MID(Fichier, PosPortSrv + len(TrameReceptReseau), PosAvIPClient - (PosPortSrv + len(TrameReceptReseau))))

				' On envoie au buffer du serveur
				CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Serveur("TCP#" & NumSockClient & "=" & InfoAEnvoyer, NumPORTSrv, 0, "ADMIN_CCP")

			Else
				if Signature = CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF Then

					IF INSTR(Fichier, "->") > 0 THEN ' Sortie -> Variable

						Dim Niveau 		as integer 		= 0
						Dim CLE 		as double 		= Val(Mid(Fichier, 1, INSTR(Fichier, "->")-3))
						
						Dim CleKernel 	as uinteger 	= CPCDOS_INSTANCE.get_id_kernel		(CLE) 	' cle kernel
						Dim CleOS 		as uinteger 	= CPCDOS_INSTANCE.get_id_OS			(CLE) 	' cle os
						Dim CleUtil 	as uinteger 	= CPCDOS_INSTANCE.get_id_Utilisateur(CLE) 	' cle utilisateur
						Dim ClePID 		as uinteger		= CPCDOS_INSTANCE.get_id_PID		(CLE) 	' PID
						Dim CleTID 		as uinteger		= CPCDOS_INSTANCE.get_id_TID		(CLE) 	' TID
						Dim NomVar 		as String  		= Mid(Fichier, INSTR(Fichier, "->")+2)
						
						IF instr(Fichier, "N1->") > 0 Then Niveau = 1
						IF instr(Fichier, "N2->") > 0 Then Niveau = 2
						IF instr(Fichier, "N3->") > 0 Then Niveau = 3
						IF instr(Fichier, "N4->") > 0 Then Niveau = 4
						IF instr(Fichier, "N5->") > 0 Then Niveau = 5
						
						' Verifier si la variable existe ou pas grace a la cle d'authentification pour acceder a la variable
						IF CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Gest_variables_Verif (NomVar, niveau, CleKernel, CleOS, CleUtil, ClePID, cleTID) = 0 THEN
							'Si la variable n'existe pas, alors on la declare
							CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("FIX/ " & NomVar & " = \#NULL", CLE, Niveau, 0, "") ' On cree ou modifie la variable en la declarant NULL
						Else
							'on ne touche pas a 'Evenement'
							Evenement_tmp = Evenement
							IF Evenement_tmp = "" then Evenement_tmp = " "
							'Sinon on accumule les evenements
							CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("FIX/ " & NomVar & " = %" & NomVar & "%" & Evenement_tmp, CLE, Niveau, 0, "")
						END IF

					END IF
					IF INSTR(Fichier, "$>") > 0 THEN ' sortie -> Fichier
						Dim NomFichier as String = Mid(Fichier, INSTR(Fichier, "->")+3)
						
						Print "NomFichier:" & NomFichier
					END IF
					' Quitter s'il y a pas de log et de pause
					IF DansLeLOG = 0 then IF NOT Fichier = "#PAUSE" Then exit sub
				End if ' Signature SIGN_AFF
			End if
		End if
	End if
	CPCDOS_INSTANCE.No_ISR = 1 
	
	' Si en mode graphique, on affiche rien
	if CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE THEN Exit sub
	if CPCDOS_INSTANCE.SCI_INSTANCE.IMGUI_mode = true Then Exit sub
	
	IF Ecran = 1 then
			' rem Mode console pur

		If prio >= 0 Then
			Color prio, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_FOND_caractere
			NePasChangerCouleur = 1
		END IF

		rem Mode graphique
		Couleur_SURBRILLE_R 		= 255	: Couleur_SURBRILLE_V 		= 255	: Couleur_SURBRILLE_B 		= 255
		Couleur_Normal_R 			= 230	: Couleur_Normal_V 			= 230	: Couleur_Normal_B 			= 230
		Couleur_VALIDATION_R 		= 70	: Couleur_VALIDATION_V 		= 240	: Couleur_VALIDATION_B 		= 10
		Couleur_AVERTISSEMENT_R 	= 240	: Couleur_AVERTISSEMENT_V 	= 230	: Couleur_AVERTISSEMENT_B 	= 20
		Couleur_ERREUR_R  			= 255	: Couleur_ERREUR_V 			= 150	: Couleur_ERREUR_B 			= 150
		Couleur_OK_R  				= 50	: Couleur_OK_V 				= 240	: Couleur_OK_B 				= 200
		Couleur_ACTION_R  			= 200	: Couleur_ACTION_V 			= 220	: Couleur_ACTION_B 			= 10

		rem Changer les couleurs si Prio a ete change
		' NePasChangerCouleur = 0

		if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR() <> 0 then
			If prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE then ' 1
				' Color RGB(Couleur_SURBRILLE_R, Couleur_SURBRILLE_V, Couleur_SURBRILLE_B), RGB(128, 31, 56)
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R = Couleur_SURBRILLE_R
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V = Couleur_SURBRILLE_V
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B = Couleur_SURBRILLE_B
				NePasChangerCouleur = 1
			elseif prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION THEN ' 2
				' Color RGB(Couleur_VALIDATION_R, Couleur_VALIDATION_V, Couleur_VALIDATION_B)
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R = Couleur_VALIDATION_R
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V = Couleur_VALIDATION_V
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B = Couleur_VALIDATION_B
				NePasChangerCouleur = 1
			elseif prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT THEN ' 3
				' Color RGB(Couleur_AVERTISSEMENT_R, Couleur_AVERTISSEMENT_V, Couleur_AVERTISSEMENT_B)
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R = Couleur_AVERTISSEMENT_R
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V = Couleur_AVERTISSEMENT_V
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B = Couleur_AVERTISSEMENT_B
				NePasChangerCouleur = 1
			elseif prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR THEN ' 4
				' Color RGB(Couleur_ERREUR_R, Couleur_ERREUR_V, Couleur_ERREUR_B)
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R = Couleur_ERREUR_R
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V = Couleur_ERREUR_V
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B = Couleur_ERREUR_B
				NePasChangerCouleur = 1
			elseif prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK THEN ' 5
				' Color RGB(Couleur_OK_R, Couleur_OK_V, Couleur_OK_B)
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R = Couleur_OK_R
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V = Couleur_OK_V
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B = Couleur_OK_B
				NePasChangerCouleur = 1
			elseif prio = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION THEN ' 6
				' Color RGB(Couleur_ACTION_R, Couleur_ACTION_V, Couleur_ACTION_B)
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R = Couleur_ACTION_R
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V = Couleur_ACTION_V
				CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B = Couleur_ACTION_B
				NePasChangerCouleur = 1
			END IF
			
			
			
			IF NePasChangerCouleur = 0 then
				Couleur_Normal_R = CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_R
				Couleur_Normal_V = CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_V
				Couleur_Normal_B = CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf8_CouleurP_B
				' Color RGB(Couleur_Normal_R, Couleur_Normal_V, Couleur_Normal_B)
			end if
		End if
	
		' 0	 ' Affichage obligatoire
		' 1111 ' Debug Cpcdos
		' 1110 ' printf 
		' 1100 ' Debug CPinti Core

		
		' Texte Acculumatif
		IF Signature = CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF Then 
		
		END IF

		' Texte de debuggage Cpcdos
		IF Signature = CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS Then
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() = 0 Then 
				' IF CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf_Disponible + CPCDOS_INSTANCE.SCI_INSTANCE.UTF8_INSTANCE.utf_actif <> 2 Then ScreenUnlock
				Exit sub
			end if
		END IF
		
		' Texte de debuggage CPinti Core
		IF Signature = CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPINTICORE Then
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_CPINTI_DEBUG() = 0 Then
				'' Pas d'affichage CPinti Core
				Exit sub
			ElseIF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_CPINTI_FD_DEBUG() = 1 Then
				AfficherDate = CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate
			End if
			
		End if
		
		' Texte de debuggage printf
		IF Signature = CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_PRINTF Then
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_PRINTF_DEBUG() = 0 Then
				' Pas d'affichage CPinti Core
				Exit sub
			End if
		End if
		
		IF Signature = CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_TELNET Then
			' Pas d'affichage TELNET
			Exit sub
		End if
		
		

		' Mettre en pause le defilement de l'ecran au thread actuel si le parametre \#PAUSE est present en fin de ligne
		IF Fichier = "#PAUSE" Then
			Dim AeteAffiche			as boolean
			
			Dim A_PosX 				as integer = POS
			
			Dim TailleX 			as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_X()
			Dim TailleY				as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_Y()
			
			Dim PositionTexte		as integer = 1
			Dim TailleTexte			as integer = 0
			Dim Evenement2			as String
			
			Dim Touche 				as String
			' Verifier que le texte peut depasser le reste de l'ecran
			if int(LEN(Evenement) / (TailleY - CSRLIN)) >= TailleY Then
				While(TailleTexte < Len(Evenement))
					' Si on est en bas de l'ecran --> PAUSE!

					if CSRLIN >= TailleY-1 Then
						Touche = ""
						While(Touche = "")
							doevents(1024)
							' Recuperer la touche
							Touche = Inkey
						Wend
					End if

					' Touche echap
					IF asc(Touche) = 27 Then
						exit while
					ElseIF asc(Touche) = 13 Then
						Evenement2 = MID(Evenement, PositionTexte)
						TailleTexte = LEN(Evenement) + 1
					Else
						'Recuperer et adapter le texte selon la taille X de l'ecran
						Evenement2 = MID(Evenement, PositionTexte, TailleX - 1)
						TailleTexte = TailleTexte + LEN(Evenement2)
						PositionTexte = TailleTexte
					End if
					
					' Appel recursif de la fonction
					DEBUG(Evenement2, Ecran, DansLeLOG, Prio, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, Signature, "")
					AeteAffiche = TRUE
				Wend
				DEBUG("", Ecran, DansLeLOG, Prio, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, Signature, "")
				IF AeteAffiche = TRUE Then Exit sub
			End if
		End if
		
		IF Retour > 0 then 
			CURLIGNE = CSRLIN : CURCOLO = POS(0)
			LOCATE CURLIGNE - Retour, CURCOLO
		END IF
		
		if CPCDOS_INSTANCE.PAS_DE_LIGNES_BOOT = false Then ' Si on veut un demarrage sans lignes
			IF AfficherDate = CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate THEN
				rem Ecriture!
				IF CRetLF = CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF then
					PRINT LA_DATE & " " & L_HEURE; " "; Evenement;
				ELSEIF CRetLF = CPCDOS_INSTANCE.DEBUG_INSTANCE.CR Then
					PRINT LA_DATE & " " & L_HEURE; " "; Evenement;
					Locate , 1 ' Il y a le CR donc on remet a la ligne
				ELSE
					PRINT LA_DATE & " " & L_HEURE; " "; Evenement
				End if
			ELSE ' SansDate
				rem Ecriture!
				IF CRetLF = CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF then
					PRINT Evenement;
				ElseIF CRetLF = CPCDOS_INSTANCE.DEBUG_INSTANCE.CR Then
					PRINT Evenement;
					Locate , 1 ' Il y a le CR donc on remet a la ligne
					
				ELSE
					PRINT Evenement
				End if
			END IF
		END IF
		
		Color CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_FOND_caractere

		
	End IF ' ecran = 1

	
	IF CPCDOS_INSTANCE.No_ISR_P = 0 Then CPCDOS_INSTANCE.No_ISR = 0 else CPCDOS_INSTANCE.No_ISR = 1
	
	
	' ScreenUnlock
END SUB

