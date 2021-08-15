' Contient les declarations, structures et variables concernant 
' la console Cpcdos/Cpinticore

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 16/10/2018

' 16-10-2018	: Adaptation 2.1 beta 1.1
' 22-01-2018	: AJOUT de GetTouche() /Reecriture pour adaptation du FIX/ /Q et /ATOUCHE
' 14-14-2017	: AJOUT du support multi-OS
' 30-03-2017	: Ajout des statistiques de la carte reseau (Activite %, envoie, recu)
' 22-02-2017	: Adaptation de la console TELNET (Touche ENTRE) OK
' 20-02-2017	: Support console TELNET OK
' 14-02-2017	: Adaptation de la console pour le reseau + historique et completions

#include once "Cpcdos.bi"

Constructor _CONSOLE_Cpcdos_OSx__()
	DEBUG(" * Instanciation du module console --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets", 1, 1, 2, 0, 0, 1, 0, "")
End Constructor

Destructor _CONSOLE_Cpcdos_OSx__()
	DEBUG(" * De-instanciation du module console --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
End Destructor

Public Function THREAD__MAIN_Console cdecl Alias "THREAD__MAIN_Console"(byval thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
	THREAD__MAIN_Console = CPCDOS_INSTANCE.CONSOLE_INSTANCE.MAIN_Console(thread_struct)
End Function

Function _CONSOLE_Cpcdos_OSx__.MAIN_Console Alias "MAIN_Console"(byval thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
	' Cette procedure a executer dans un nouveau thread permet d'interpreter les commandes via une console " > "
	
	On local Error Goto Intercept_Error
	
	' **** Recuperer les informations du thread / processus ****
	Dim _PID as uinteger			= thread_struct.PROC_ID
	Dim _TID as uinteger			= thread_struct.THREAD_ID
	Dim _USERID as uinteger			= thread_struct.USER_ID
	Dim _OSID as uinteger			= thread_struct.OS_ID
	Dim _KERNEL_ID as uinteger		= thread_struct.KERNEL_ID
	
	' **** Recuperer les arguments d'entre ****
	
	
	
	Dim _ARG_1 as integer 			= cast(integer, thread_struct.ARG_1) ' rien
	Dim _ARG_2 as uinteger 			= cast(uinteger, thread_struct.ARG_2) ' ID buffer
	Dim _ARG_3 as integer 			= cast(integer, thread_struct.ARG_3) ' Type d'entre (question, touche)
	Dim _ARG_4 as integer 			= cast(integer, thread_struct.ARG_4) ' Type admin (ADMIN / TELNET)
	Dim _ARG_5 as integer 			= cast(integer, thread_struct.ARG_5)
	
	
	Dim EN_VIE 			as Boolean = TRUE
	Dim Donnees_COM		as boolean = false
	Dim TexteBox_Focus	as boolean = false
	
	Dim NumeroOS as Integer = _OSID
	
	Dim NB_Affiche_HautConsole as integer = 0

	Dim Etat_Thread 	as uinteger
	
	DIM CLE 			as double = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), NumeroOS, CPCDOS_INSTANCE.get_id_Utilisateur(), _PID, _TID)
	Dim Retour_CCP 		as String
	Dim Touche_inkey 	as String = ""
	
	Dim Donnees as String
	Dim RetourCCP as String
	Dim PTR_DONNEES as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(CPCDOS_INSTANCE._TAILLE_MAX_BUFFER_UNIVERSEL)
	
	Dim _CLE_ as double
	
	

	' Que ca ne soit pas une question ou attente d'une touche
		
	' Une demande d'adminsitration a distance
	if _ARG_4 = CPCDOS_INSTANCE._SRV_TCP_CCP OR _ARG_4 = CPCDOS_INSTANCE._SRV_TCP_TELNET THEN
		CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) = 0
		CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_MODE(0) = 0
	Else
		Dim SCR_MODE as integer 
		
		RetourCCP = "" ' Retour debug normal
		
		doevents(500000)
		
		' Generer une cle
		_CLE_ = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), NumeroOS, CPCDOS_INSTANCE.get_id_Utilisateur(), _PID, _TID)
		
		' IF NOT CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ResolutionMode() = -1 Then
		SCR_MODE = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("SCR_MODE", 4, _CLE_))

		doevents(1000)
		
		' Resolution en mode console
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_Resolution(SCR_MODE)

	End if
	
	
	
	while(EN_VIE)
	
		' Recuperer les touches en mode graphique
		
		' Liberer le CPU
		doevents(0) ' 10 ms
		
		
		' Si un textebox est FOCUS, toute les entrees INKEY vont dedans
		IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox Then
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).PROP_TYPE.Ferme 	= false AND _
				CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).PROP_TYPE.Reduit 	= false Then
				TexteBox_Focus = true
			Else
				TexteBox_Focus = false
			End if

		else
			TexteBox_Focus = false
		End if
		
		' Mettre a jour le cycle CPU
		' CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_update_cycle_cpu()
		
		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		
			' Pour le moment, utiliser Inkey et apres utiliser l'irq 1
			
			IF _ARG_3 = 2 OR _ARG_3 = 1 Then ' 2 Question 1 touche

				IF NOT this.FIXQuestion = "" AND this.FIXQuestion_TOCK = 0 Then
					' Prevenir que cette instance de question a ete prise par cette instance de thread de la console
					'  ca evite que 2 instances de console s'interferent entre eux lors de la question
					this.FIXQuestion_TOCK = _TID
					
					' Positionner le curseur Y, X
					Locate _ARG_5, _ARG_4
				End if
			End if
			
			
			Donnees_COM = FALSE
			' Verifier s'il y a des donnees dans le port COM
			For Boucle_COM as integer = 1 to 4
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.COM_INSTANCE(Boucle_COM).Port_COM_KeyID = 1 Then 
					
					' On recupere les donnees
					Input #Boucle_COM, Touche_inkey
					
					IF NOT Touche_inkey = "" Then
						Donnees_COM = TRUE

					End if

					Exit for
				End if
			Next Boucle_COM
			
			' Verifier si on est en console normal ou en console a distance			
			IF NOT _ARG_4 = CPCDOS_INSTANCE._SRV_TCP_CCP Then
				IF NOT _ARG_4 = CPCDOS_INSTANCE._SRV_TCP_TELNET Then
				
					
					
					if NOT CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE OR NOT CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE THEN
						' Graphique N'EST pas en cours d'execution


						IF Donnees_COM = False AND this.HOOK_Console = false Then
							if TexteBox_Focus = false Then Touche_inkey = Inkey
						End if
						
						IF CPCDOS_INSTANCE.CONSOLE_INSTANCE.CPinti_MENU = TRUE Then
							' Reduire le nombre de visites pour optimiser ;)
							NB_Affiche_HautConsole = NB_Affiche_HautConsole + 1
							if NB_Affiche_HautConsole > 16 Then
								Haut_Console()
								NB_Affiche_HautConsole = 0
							End if
						End if
					else
						
						' Si en mode graphique, on recupere rien
						
						' DEBUG("  P1.1 ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
						
						'Touche F10 (console)
						IF Donnees_COM = False Then
							if TexteBox_Focus = false Then Touche_inkey = Inkey
						End if
						
						
						' Touche CTRL + PrintScreen - Capture d'ecran
						if Touche_Inkey = CHR(16) Then
							if CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE THEN
								CPCDOS_INSTANCE.Screenshot(_CLE_)
							End if
						End if

						' ALT + F4 - Fermer une fenetre
						IF Touche_Inkey = CHR(255) & CHR(107) then

							Dim index_fenetre as integer = CPCDOS_INSTANCE.SCI_INSTANCE.Fenetre_FOCUS(0)
							Dim Nom_fenetre as String = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(index_fenetre).Identification_Objet.Nom
							Dim Handle_fenetre as integer = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(index_fenetre).Identification_Objet.handle


							if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(index_fenetre).PROP_TYPE.Fermable = true Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SHELL] Fermeture fenetre (" & index_fenetre & ") '" & Nom_fenetre & "' handle:" & Handle_fenetre & " depuis ALT+F4", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
								Else
									DEBUG("[SHELL] Closing window (" & index_fenetre & ") '" & Nom_fenetre & "' handle:" & Handle_fenetre & " from ALT+F4 user key", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
								End If

								CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("close/ /handle " & Handle_fenetre, _CLE_, 3, 0, "")
							Else
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SHELL] Fermeture fenetre INTERDITE (" & index_fenetre & ") '" & Nom_fenetre & "' handle:" & Handle_fenetre & " depuis ALT+F4", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
								Else
									DEBUG("[SHELL] FORBIDDEN closing window (" & index_fenetre & ") '" & Nom_fenetre & "' handle:" & Handle_fenetre & " from ALT+F4 user key", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
								End If
							End if
						End if

						' Gestionnaire de taches
						IF Touche_Inkey = CHR(255) & CHR(163) then
							DEBUG("[SHELL] Opening task manager from user input", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

							CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("cmd/ /F:display_taskmgr()", CLE, 2, 0, "")
						End if

						

						' F9 (Temporaire !)
						IF Touche_Inkey = CHR(255) & CHR(67) then	
							' Si le mode graphique est execute
							
							Dim Auth_Kernel				as uinteger = CPCDOS_INSTANCE.get_id_kernel		(_CLE_)
							Dim Auth_OS					as uinteger = CPCDOS_INSTANCE.get_id_OS			(_CLE_)
							Dim Auth_Utilisateur		as uinteger = CPCDOS_INSTANCE.get_id_Utilisateur(_CLE_)
							Dim Auth_PID				as uinteger = CPCDOS_INSTANCE.get_id_PID		(_CLE_)
							Dim Auth_TID				as uinteger = CPCDOS_INSTANCE.get_id_TID		(_CLE_)
							
							Dim _CLE_krnl_ as double = CPCDOS_INSTANCE.Generer_cle(Auth_Kernel, NumeroOS, Auth_Utilisateur, Auth_PID, Auth_TID)
							
							CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("exe/ " & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CONSOLE", 4, _CLE_krnl_), _CLE_krnl_, 4, 0, "")
						END IF
						
						' F10
						IF Touche_Inkey = CHR(255) & CHR(68) then	
							' Si le mode graphique est execute
							
							Dim SCR_MODE as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("SCR_MODE", 4, _CLE_))

							' Resolution en mode console
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_Resolution(SCR_MODE)
						'Else
						'	if TexteBox_Focus = false Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.Touche_Inkey = Touche_Inkey
						END IF

						Touche_Inkey = ""
					End if
				ELSE
					
					' Si le mode telnet est active alors on cumule les touches presses
					cpinti.cpinti_GEST_BUFF_c(_ARG_2, CPCDOS_INSTANCE._STACK_EXTRACT_POUR_CPCDOS, PTR_DONNEES)
					
					Touche_inkey = ""
					
					if NOT *PTR_DONNEES = "#DECO" Then
						Touche_inkey = *PTR_DONNEES
						
						' Remplir le buffer de 0
						if Len(Touche_inkey) > 0 Then *PTR_DONNEES = String(CPCDOS_INSTANCE._TAILLE_MAX_BUFFER_UNIVERSEL, 0)
						
						if Len(Touche_inkey) > 5 Then
							' Configurer le retour de debug
							RetourCCP = "#ROOT__CCP:" & _ARG_2 & ">" & MID(Touche_inkey, 1, (Instr(Touche_inkey, "=") - 1))
							
							Touche_inkey = MID(Touche_inkey, Instr(Touche_inkey, "=") + 1) ' Recuperer seulement la touche
						End if
					End if
				END IF
			
				IF NOT Touche_inkey = "" Then 
					Entre_ligne(Touche_inkey, RetourCCP)
				End if
			Else
				' *** CONSOLE A DISTANCE ***
				
			
				' Recuperer le contenu du buffer
				cpinti.cpinti_GEST_BUFF_c(_ARG_2, CPCDOS_INSTANCE._STACK_EXTRACT_POUR_CPCDOS, PTR_DONNEES)
				

				Donnees = ""
				Donnees = *PTR_DONNEES
				
				' Remplir le buffer de 0
				*PTR_DONNEES = String(CPCDOS_INSTANCE._TAILLE_MAX_BUFFER_UNIVERSEL, 0)
					
				' Corriger probleme que les caracteres en dessosu de 3 s'nevoie 
				' ou les txt/ %toto% afafafa s'envoie pas non plus
				
				if Len(Donnees) > 5 Then
				
					' Configurer le retour de debug
					RetourCCP = "#ROOT__CCP:" & _ARG_2 & ">" & MID(Donnees, 1, (Instr(Donnees, "]:")))
					
					' Recuperer la commande CpcdosC+
					this.Buffer_commande = MID(Donnees, (Instr(Donnees, "]:") + 2))
					
					' Simuler la touche entre
					this.Entrer_exec_cmd = TRUE
				End if
			End if

			
			if this.Modifie = TRUE AND this.HOOK_Console = false Then
			
				
				' On applique la position courante de la console
				Locate CSRLIN, 1

				IF this.Entrer_exec_cmd = FALSE Then
					DEBUG(" > " & this.Buffer_commande & " ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, "")	
				END If
				
				' Apres avoir presse ECHAP et clear les caracteres, on remet l'etat normal et on vide le buffer
				if this.Echap_annule_cmd = TRUE Then
					this.Buffer_commande = ""
					this.Echap_annule_cmd = FALSE
				End if
				
				' Apres avoir presse BACKSPACE
				if this.Backspace_suppr = TRUE Then
					' On supprime le dernier caractere qui dans notre cas est un espace
					this.Buffer_commande = LEFT(this.Buffer_commande, Len(this.Buffer_commande) - 1)
					
					this.Backspace_suppr = FALSE
				End if
				

				IF this.Entrer_exec_cmd = FALSE Then
					' Et on place le curseur clignotant a la fin de la ligne
					Locate CSRLIN, Len(" > " & this.Buffer_commande & " ")
				End if

				' On remet a l'etat non modifie
				this.Modifie = FALSE
				
				if this.Navig_historique = TRUE Then
					this.Navig_historique = FALSE
					this.Modifie = TRUE
					this.Buffer_commande = this.Historique(this.Historique_navig)' & "  INDEX NAV:" & this.Historique_navig & ".  "
				End if
			End if
			
			ENTRER_SectionCritique()
			
			' Si l'utilisateur presse la touche ENTRE
			if this.Entrer_exec_cmd = TRUE AND this.HOOK_Console = false Then
			
				
				' On le redesactive bien sinon ca tourne en boucle..
				this.Entrer_exec_cmd = FALSE
				
				
				
				' Verifier qu'il y a minimum 3 caracteres
				IF Len(this.Buffer_commande) > 2 Then

					SORTIR_SectionCritique()
					' La touche entre a ete presse, on execute la commande
					Retour_CCP = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(this.Buffer_commande, CLE, this.Niveau, 330, RetourCCP)
					
					ENTRER_SectionCritique()

					' Si on valide la commande, on vide le buffer
					this.Buffer_commande = ""
					
					' **** Gerer les retours du moteurs ****
					
					' Changer le niveau si le moteur en a fait la demande
					IF Retour_CCP = "FIX_NIVEAU1" THEN this.Niveau = 1
					IF Retour_CCP = "FIX_NIVEAU2" THEN this.Niveau = 2
					IF Retour_CCP = "FIX_NIVEAU3" THEN this.Niveau = 3
					IF Retour_CCP = "FIX_NIVEAU4" THEN this.Niveau = 4
					IF Retour_CCP = "FIX_NIVEAU5" THEN this.Niveau = 5

					
					' Les conditions
					IF Retour_CCP = "SI:FAUX" OR Retour_CCP = "SI:SINON" THEN
						if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("FAUX", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)	
						else
							DEBUG("FALSE", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
						End if
					End if
					
					' Les fonctions
					IF Retour_CCP = "FONCTION:" OR Retour_CCP = "FONCTION-RETOUR:" THEN
						dim Affichage as String = Mid(Retour_CCP, Instr(Retour_CCP, ":") + 1)
						if len(Affichage) > 0 Then
							DEBUG(Affichage, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)	
						End if
						
						' if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							' DEBUG("Cette version ne peut interpreter les fonctions. Pour le moment ;-)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)	
						' else
							' DEBUG("This version can't interpret functions. For the moment ;-)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
						' End if
					End if
					
					' L'interface graphique
					IF Retour_CCP = "IUG:" THEN
						if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("Cette version ne peut interpreter les proprietes graphiques. Pour le moment ;-)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)	
						else
							DEBUG("This version can't interpret graphic properties. For the moment ;-)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
						End if
					End if

					
					IF Instr(Retour_CCP, "SWITCH:OS_ID=") > 0 Then
						Dim tmpNomOS 		as String = Ltrim(Rtrim(Mid(Retour_CCP, Instr(Retour_CCP, "SWITCH:OS_ID=") + 13)))
						Dim NumeroOS_tmp 	as integer = CPCDOS_INSTANCE.test_OSPresent(tmpNomOS)
						Dim Ancien_OS 		as String = CPCDOS_INSTANCE.get_OSPresent(NumeroOS)
						
						if Ancien_OS = "" then Ancien_OS = "<null>"
				
						IF NumeroOS_tmp > -1 Then

							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SHELL] Switch de '" & Ancien_OS & "' (OSID:" & NumeroOS & ") a '" & tmpNomOS & "' (OSID:" & NumeroOS_tmp & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
							Else
								DEBUG("[SHELL] Switching from " & Ancien_OS & " (OSID:" & NumeroOS & ") OSID:" & NumeroOS & " to '" & tmpNomOS & "' (OSID:" & NumeroOS_tmp & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
							End if
							
							NumeroOS = NumeroOS_tmp
							_OSID = NumeroOS_tmp
							_CLE_ = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), NumeroOS, CPCDOS_INSTANCE.get_id_Utilisateur(), _PID, _TID)
							CLE = _CLE_
							
							' Et definit le OS id sans le SCI
							CPCDOS_INSTANCE.SCI_INSTANCE.set_OSid(NumeroOS)
							
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SHELL] Nouvelle CleID:" & _CLE_ & " [0x" & hex(_CLE_, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
							Else
								DEBUG("[SHELL] New KeyID:" & _CLE_ & " [0x" & hex(_CLE_, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
							End if
						Else
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[CpcdosC+] Systeme d'exploitation '" & tmpNomOS & "' non present.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
							Else
								DEBUG("[CpcdosC+] Operating system '" & tmpNomOS & "' not found.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourCCP)
							End if
						ENd if
					End if
					
					IF _ARG_4 = CPCDOS_INSTANCE._SRV_TCP_TELNET Then
						DEBUG(" CPCDOS: admin > ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_TELNET, RetourCCP)	
					End if
					
					
				End if
			End if
			
			

			IF Tab_commandes = TRUE AND this.HOOK_Console = false Then
				' La touche TAB a ete pressee
				
				
				Dim Saut_crlf 				as integer = -1
				Dim Nombre_CMD 				as integer = 0
				Dim Taille_caracteres_user 	as integer = Len(this.Buffer_commande)
				Dim Liste_CMD 				as String = ""
				
				Tab_commandes = FALSE
				
				
				
	
				' Recuperer la liste des commandes commencant par ce que l'utilisateur a tape
				For Boucle as integer = 1 to CPCDOS_INSTANCE.SHELLCCP_INSTANCE._MAX_CMD_CCP

					if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then ' Syntaxe francaise
						if NOT CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle) = "" Then
							' Si les premiers caracteres correspond a une commande, on l'ajoute dans la liste!
							if Ucase(MID(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle), 1, Taille_caracteres_user)) = Ucase(MID(this.Buffer_commande, 1, Taille_caracteres_user)) Then
								Saut_crlf = Saut_crlf + 1
								Nombre_CMD = Nombre_CMD + 1
								
								' Au bout de la 6eme commande, on revient a la ligne
								if Saut_crlf >= 4 Then 
									Liste_CMD = Liste_CMD & CRLF
									Saut_crlf = 0
								End if
								
								' Accumuler la liste des commandes
								IF len(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle)) > 7 Then
									Liste_CMD = Liste_CMD & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle) & TOUCHE_TAB
								else
									Liste_CMD = Liste_CMD & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle) & TOUCHE_TAB & TOUCHE_TAB
								End if
							End if
						end if
					Else ' Syntaxe Anglaise
					
						if NOT CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle) = "" Then
							' Si les premiers caracteres correspond a une commande, on l'ajoute dans la liste!
							if Ucase(MID(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle), 1, Taille_caracteres_user)) = Ucase(MID(this.Buffer_commande, 1, Taille_caracteres_user)) Then
								Saut_crlf = Saut_crlf + 1
								Nombre_CMD = Nombre_CMD + 1
								
								' Au bout de la 6eme commande, on revient a la ligne
								if Saut_crlf >= 4 Then 
									Liste_CMD = Liste_CMD & CRLF
									Saut_crlf = 0
								End if
								
								
								
								' Accumuler la liste des commandes
								IF len(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle)) > 7 Then
									Liste_CMD = Liste_CMD & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle) & TOUCHE_TAB
								else
									Liste_CMD = Liste_CMD & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle) & TOUCHE_TAB & TOUCHE_TAB
								End if
							End if
						End if
					End if
				Next Boucle
				
				' S'il y a que 1 commande trouvee, alors on la complete sur la ligne
				IF Nombre_CMD = 1 Then 
					this.Buffer_commande = MID(Liste_CMD, 1, LEN(Liste_CMD) - 1) & " "
					
				' Autrement on affiche les possibilites
				elseif Nombre_CMD > 1 Then
				
					' Recuperer les anciennes positions
					Dim PosX as integer = POS(0)
					Dim PosY as integer = CSRLIN()
					
					locate PosY, 1
					DEBUG(space(len(this.Buffer_commande)) & "     ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, "")	
					
					if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then ' Syntaxe francaise
						' Afficher la liste sur l'ecran
						DEBUG(" ** Syntaxes FR disponibles ** " & CRLF & Liste_CMD, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, "")	
					Else
						' Afficher la liste sur l'ecran
						DEBUG(" ** Avaiable EN syntax ** " & CRLF & Liste_CMD, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, "")	
					End if
				End if
				
				' Remettre la cmd sur l'ecran
				this.Modifie = TRUE
			End if
			
			SORTIR_SectionCritique()
		'  ********* F I N  *********
			
		END SCOPE
		end if
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function



Sub _CONSOLE_Cpcdos_OSx__.Entre_ligne(Touche as string, RetourCCP as String)
	' Cette procedure recurentielle permet de stocker temporairement
	'  les caracteres que l'utilisateur tape dans la console LC


	
	IF asc(MID((Touche), 1, 1)) = 91 Then
		' FLeche du haut COM
		IF asc(MID(Touche, 2)) = 65 Then
			Touche = chr(255) & chr(72)
		End if
		
		' Fleche du bas COM
		IF asc(MID(Touche, 2)) = 66 Then
			Touche = chr(255) & chr(80)
		End if
	End if
	
	' Touche entre COM
	IF asc(MID(Touche, 1, 1)) = 255 AND asc(MID(Touche, 2)) = 0 THEN 
		Touche = CRLF
	End if
	
	IF asc(MID(Touche, 1, 1)) = 255 then ' Touche speciaux TAB,F1..F12 Haut,Bas,PageNext,Prev...

		
		' Touche BAS "{255}P"
		IF asc(MID(Touche, 2)) = 80 THEN 
			' Naviguer dans l'historique des commandes
			
			
			this.Historique_navig = this.Historique_navig + 1
			if this.Historique_navig >= this._MAX_Historique Then this.Historique_navig = 0

			if NOT this.Historique(this.Historique_navig) = "" THEN ' Si c'est pas vide
				' On efface toute la commande
				this.Buffer_commande = space(len(this.Buffer_commande))
				
				this.Navig_historique = TRUE
				this.Modifie = TRUE
			Else
				' Si c'est vide, on revient sur la precedente
				this.Historique_navig = this.Historique_navig - 1
				if this.Historique_navig <= 0 Then this.Historique_navig = this._MAX_Historique
			End if
			exit sub
			
		' Touche HAUT "{255}H"
		ElseIf asc(MID(Touche, 2)) = 72 THEN 
			' Naviguer dans l'historique des commandes
			
			this.Historique_navig = this.Historique_navig - 1
			if this.Historique_navig <= 0 Then this.Historique_navig = this._MAX_Historique

			if NOT this.Historique(this.Historique_navig) = "" THEN ' Si c'est pas vide
				' On efface toute la commande
				this.Buffer_commande = space(len(this.Buffer_commande))
				
				this.Navig_historique = TRUE
				this.Modifie = TRUE
			else
				' Si c'est vide on reviens sur la precedente
				this.Historique_navig = this.Historique_navig + 1
				if this.Historique_navig >= this._MAX_Historique Then this.Historique_navig = 0
			End if
			exit sub
		END IF
		
	exit sub
	' Touche ECHAP
	ElseIf asc(Touche) = 27 then 
		' Si on presse ECHAP, on remplit le buffer d'espaces pour effacer les caracteres sur l'ecran
		this.Buffer_commande = space(len(this.Buffer_commande))
		' On active l'etat"
		this.Echap_annule_cmd = TRUE
		this.Modifie = TRUE
		
		exit sub
	' Touche ENTREE Stype TELNET/Mac/Unix Windows NT
	ElseIF asc(Touche) = 13 OR asc(Touche) = 10 _
							OR MID(Touche, LEN(Touche) - 1) = CRLF _
							OR ASC(MID(Touche, LEN(Touche), 1)) = 13 _
							OR ASC(MID(Touche, LEN(Touche), 1)) = 10 _
							OR ASC(Touche) = 255 then
		
		' S'il y a plus de 1 caractere alors on cumule dabord et on valide!
		IF LEN(Touche) > 1 Then
			' Enlever d'eventuels retour chariot en fin de ligne
			Touche = RTRIM(Touche, LF)
			Touche = RTRIM(Touche, CR)
			
			' S'il y avait bien autre chose que la touche entre
			IF LEN(Touche) > 1 Then
				this.Modifie = TRUE
				this.Buffer_commande = this.Buffer_commande + Touche
			End if
		End if
		
		DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, RetourCCP)	
		this.Entrer_exec_cmd = TRUE
		
		if LEN(this.Buffer_commande) > 2 Then
			' Incremente le nombre d'elements
			this.Historique_index = this.Historique_index + 1
			if this.Historique_index >= this._MAX_Historique Then this.Historique_index = 0
		
			' On le stock
			this.Historique(this.Historique_index) = this.Buffer_commande
		
			this.Historique_navig = this.Historique_index + 1
		
			this.Modifie = TRUE
		End if
		
		exit sub
	
	' Touche BLACKSPACE (127 pour le COM)
	ElseIF asc(Touche) = 8 OR asc(Touche) = 127 then
				
		' Si on appuie sur la touche backspace
		this.modifie = TRUE
		
		this.Backspace_suppr = TRUE
		
		' On remplace le dernier caractere par un espace pour l'effacer sur l'ecran
		this.Buffer_commande = LEFT(this.Buffer_commande, Len(this.Buffer_commande) - 1) & " "

		exit sub
	
	' Touche tabulation
	ElseIF asc(Touche) = 9 then
		' Si on presse TAB, cela affiche la liste des commandes commencant par les caracteres que l'utilisateur a tape
		' ( Fonctionne uniquement avec les commandes CpcdosC+ )
		
		' Verifier que la commande est deja complete/trouvee donc ca sera un TAB normal
		if NOT INSTR(this.Buffer_commande, "/") > 0 Then
			' Autrement ca sera un TAB d'aide
			Tab_commandes = true
			exit sub
		End if
	
	End if
	
	this.Modifie = TRUE
	this.Buffer_commande = this.Buffer_commande + Touche

End sub

Sub _CONSOLE_Cpcdos_OSx__.Haut_Console()
	' Cette fonction permet d'afficher le haut de la console :)
	
	ENTRER_SectionCritique()
	
	ScreenLock
	Dim Titre 				as String = "** Cpcdos OS" & _VERSION_MAJEUR & " " & _VERSION_MINEUR & " " & _VERSION_ETAT & "**"
	' Dim BUILD_				as String = "(BUILD:" & _VERSION_BUILD & ")"
	Dim HeureDate			as String = CPCDOS_INSTANCE.get_Heure(CPCDOS_INSTANCE.get_Time_format()) & " " & CPCDOS_INSTANCE.get_Date(CPCDOS_INSTANCE.get_Date_format())
	
	' L'ancienne position du curseur
	Dim A_PosX 				as integer = POS
	Dim A_PosY 				as integer = CSRLIN
	
	' Pour ne pas ecrire en haut ;)
	IF A_PosY < 4 Then A_PosY = 4
	
	' L'ancienne couleur
	Dim A_Couleur_CARACTERE as integer = LoWord(Color())
	Dim A_Couleur_FOND 		as integer = HiWord(Color())
	
	' Recuperer les informations systeme
	Dim CPU_Pourcent_1 		as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_cpu_pourcent()
	Dim CPU_Pourcent_2 		as integer = -1 'CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_pourcent_cpu(2)
	Dim MEM_Utilise 		as integer = int(_Memoire__krnl_occupe / 1024^2) ' Mo
	Dim MEM_Total 			as integer = int(_Memoire_Libre_Depart / 1024^2) ' Mo
	Dim MEM_UtilisePourcent as integer = _Memoire_UTIL_Pourcent

	' Statistiques des threads
	Dim NB_Threads 			as integer = cpinti.gestionnaire_tache.cpinti_get_nombre_threads()
	Dim NB_Processus		as integer = cpinti.gestionnaire_tache.cpinti_get_nombre_processus()
	
	' Taille de l'ecran
	Dim TailleX 			as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_X()
	Dim TailleY				as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_Y()
	
	Dim Fond as integer = 1
	Dim Norm as integer = 15
	Dim Resu as integer = 10
	Dim Erro as integer = 12
	Dim MemT as integer = 11
	
	
	' Les statistiques de la carte reseau 
	Dim NET_Activite		as uinteger = 0 ''''abs(CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_activite()) 
	Dim NET_Envoye			as uinteger = 0 ''''abs(CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_envoye()) 
	Dim NET_Recu			as uinteger = 0 ''''abs(CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_recu())
	
	Dim NET_str				as String 	= "net:" & NET_Activite & "% up:" & NET_Envoye & " dw:" & NET_Recu
	
	' Tout afficher
	View Print

	Color Norm, Fond
	
	Locate 1, 1 : Print String(int((TailleX/2)-(Len(Titre)/2)) + 1, " ")
	Locate 1, int((TailleX/2)-(Len(Titre)/2) + LEN(Titre)) : Print String(int(TailleX/2)-(Len(Titre)/2) + 2, " ")
	
	Locate 1, int((TailleX/2)-(Len(Titre)/2)) : Print Titre ' Placer le titre au centre 
	
	Locate 2, 1 : Print String(TailleX, " ")
	
	IF TailleX > 80 Then ' Si la largeur le permet, on affiche l'heure
		Locate 1, int(TailleX - (LEN(HeureDate))) : Print HeureDate  & "  "' Placer l'heure et date a droite
		
		Locate 2, int(TailleX - (LEN(NET_str)+1)) : Print NET_str  & "  "' Placer l'activite de la carte reseau
	End if
	
	
	' Locate 2, 1 : Print String(TailleX, " ")
	Locate 2, 1 : Print " Cpu(1):";
	' Color Resu, Fond : Print CPU_Pourcent_1 & "% " & CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_cycle_cpu() & "/" & CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_max_cycle_cpu();
	Color Resu, Fond : Print CPU_Pourcent_1 & "% " ;
	Color Norm, Fond : Print " Cpu(2):";
	Color Erro, Fond : Print CPU_Pourcent_2 & "%";
	' Color Erro, Fond : Print cpinti.gestionnaire_tache.get_cycle_cpu() & "/" & cpinti.gestionnaire_tache.get_cycle_MAX_cpu();
	Color Norm, Fond : Print " | Ram:";
	Color Resu, Fond : Print MEM_Utilise & "";
	Color Norm, Fond : Print "/";
	Color MemT, Fond : Print MEM_Total;
	if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		Color Norm, Fond : Print " Mo (";
	Else
		Color Norm, Fond : Print " Mb (";
	End if
	Color Resu, Fond : Print MEM_UtilisePourcent;
	Color Norm, Fond : Print "%) |";
	Color Resu, Fond : Print NB_Processus;
	if CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		Color Norm, Fond : Print " process";
	Else
		Color Norm, Fond : Print " process";
	End if
	Color Resu, Fond : Print NB_Threads;
	Color Norm, Fond : Print " threads "
	Locate 3, 1 : Print String(TailleX, "_")
	
	' Restaurer la position
	View Print 4 to TailleY
	

	Color A_Couleur_CARACTERE, A_Couleur_FOND
	Locate A_PosY, A_PosX 
	
	ScreenUnLock
	SORTIR_SectionCritique()
	
End sub



Public Function THREAD__GetTouche cdecl Alias "THREAD__GetTouche"(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
	THREAD__GetTouche = CPCDOS_INSTANCE.CONSOLE_INSTANCE.GET_Touche(thread_struct)
End Function

Function _CONSOLE_Cpcdos_OSx__.GET_Touche Alias "GET_Touche" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
	' Cette procedure a executer dans un nouveau thread permet d'interpreter la fonction Fix/ /Q et /ATOUCHE
	
	On local Error Goto Intercept_Error
	
	' **** Recuperer les informations du thread / processus ****
	Dim _PID as uinteger			= thread_struct.PROC_ID
	
	Dim _TID as uinteger			= thread_struct.THREAD_ID
	Dim _USERID as uinteger			= thread_struct.USER_ID
	Dim _OSID as uinteger			= thread_struct.OS_ID
	Dim _KERNEL_ID as uinteger		= thread_struct.KERNEL_ID
	Dim _THRD_NOM as CONST String	= thread_struct.nom
	
	' **** Recuperer les arguments d'entre ****
	Dim _ARG_1 as Integer 			= cast(Integer, thread_struct.ARG_1)
	
	Dim _ARG_2 as Integer 			= cast(Integer, thread_struct.ARG_2)
	Dim _ARG_3 as Integer 			= cast(Integer, thread_struct.ARG_3)
	
	' **** Reactiver les interruptions et autres fonctionnalites du noyau ****

	
	Dim EN_VIE 				as Boolean = TRUE
	
	Dim ValidationEntree 	as boolean = FALSE
	
	Dim Donnees_COM		as boolean = false
	
	Dim NumeroOS 			as Integer = _OSID
	
	Dim Etat_Thread 		as uinteger
	
	DIM CLE 				as double = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), NumeroOS, CPCDOS_INSTANCE.get_id_Utilisateur(), _PID, _TID)
	Dim Retour_CCP 			as String
	Dim Touche_inkey 		as String = ""
	
	Dim Donnees 			as String
	Dim RetourCCP 			as String
	Dim PTR_DONNEES 		as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(CPCDOS_INSTANCE._TAILLE_MAX_BUFFER_UNIVERSEL)
	
	Dim _CLE_ as double
	
	' **** Reactiver les interruptions et autres fonctionnalites du noyau ****
	' CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_fin_section_critique()


	
	while(EN_VIE)
		' Liberer le CPU
		doevents(0) ' 10 ms
		
		this.HOOK_Console = true

		' Mettre a jour le cycle CPU
		' CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_update_cycle_cpu()
		
		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		' Executer le thread normalement
		
			IF CPCDOS_INSTANCE.get_id_OS() = NumeroOS Then
				SCOPE
				' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
				
				
					Donnees_COM = FALSE
					' Verifier s'il y a des donnees dans le port COM
					For Boucle_COM as integer = 1 to 4
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.COM_INSTANCE(Boucle_COM).Port_COM_KeyID = 1 Then 
							
							' On recupere les donnees
							Input #Boucle_COM, Touche_inkey
							
							IF NOT Touche_inkey = "" Then
								Donnees_COM = TRUE
							End if
							Exit for
						End if
					Next Boucle_COM
				
					' Recuperer le buffer clavier
					IF Donnees_COM = False Then
						Touche_inkey = Inkey
					End if
					
					' S'il contient un caractere
					IF NOT Touche_inkey = "" Then 

						' Filter les entres
						Entre_ligne(Touche_inkey, RetourCCP)

						' Apres avoir presse BACKSPACE
						if this.Backspace_suppr = TRUE Then
							' On supprime le dernier caractere
							this.Buffer_commande = LEFT(this.Buffer_commande, Len(this.Buffer_commande) - 1)
							
							this.Backspace_suppr = FALSE
						End if
	
						' Si le thread attend juste UNE touche
						IF _ARG_1 = 1 Then 
							ValidationEntree = TRUE
							
						Else
							' Apres avoir presse ECHAP et clear les caracteres, on remet l'etat normal et on vide le buffer
							if this.Echap_annule_cmd = TRUE Then
								this.Buffer_commande = ""
								this.Echap_annule_cmd = FALSE
							End if
						
							IF this.Entrer_exec_cmd = False Then
								IF _ARG_1 = 2 Then ' Si c'est une question utilisateur
									Locate _ARG_3, _ARG_2
									DEBUG(this.Buffer_commande & " ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, "")	
									
									' on place le curseur clignotant a la fin de la ligne
									IF this.Entrer_exec_cmd = FALSE Then
										Locate CSRLIN, Len(this.Buffer_commande & " ")
									End if
								End if
							End if
						End if
						
						
					End if
						
					IF this.Entrer_exec_cmd = TRUE Then
						this.Entrer_exec_cmd = False
						ValidationEntree = TRUE
					End if
					
					
					IF ValidationEntree = TRUE Then
						
						' Fabriquer la commande CpcdosC+
						Dim Commande_CCP as String = "SET/ " & this.FIXQuestion & " = " & this.Buffer_commande
						
						ValidationEntree = False
						
						
						' L'executer
						Retour_CCP = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(Commande_CCP, this.FIXQuestion_CLE_, this.FIXQuestion_NIVEAU_CCP, this.FIXQuestion_Param_1, this.FIXQuestion_Param_2)
						
						' Repositionner le curseur
						Locate CSRLIN, POS + LEN(this.Buffer_commande)
						
						CPCDOS_INSTANCE.CONSOLE_INSTANCE.FIXQuestion = ""
						
						
						this.Buffer_commande = ""
						
						Commande_CCP = ""
						
						' Et on nettoie
						this.FIXQuestion 			= ""
						this.FIXQuestion_CLE_ 		= 0
						this.FIXQuestion_NIVEAU_CCP = 0
						this.FIXQuestion_Param_1 	= 0
						this.FIXQuestion_Param_2 	= ""
						
						EN_VIE = FALSE
						
					End if
				'  ********* F I N  *********
				END SCOPE
			End if ' Get OS ID
		End if ' __EN_EXECUTION
	wend

	this.HOOK_Console = false
	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		this.HOOK_Console = false
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function

