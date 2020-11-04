#print
#print ============ KRNL_LDR ==============

#include once "Cpcdos.bi"

' Cle d'authentification des donnees en niveau. 
' ex : 
' 1010000100011011001011101101  (28bits)
' 1010 ^4     0001 ^4 0001 ^4         1011001011101 ^16
' \ ID kernel \ ID OS \ ID utilisateur \ PID


#ifndef CPCDOSLIB
	__CPCDOS_INIT_1(0)
#endif

#print * ENTRY POINT - __CPCDOS_INIT_1
public function __CPCDOS_INIT_1 cdecl Alias "__CPCDOS_INIT_1"(a as integer) as integer
	' Premiere fonction execute par le noyau apres l'instanciation des modules du systeme.
	
	DEBUG("__CPCDOS_INIT_1() [0x" & HEX(@__CPCDOS_INIT_1, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")	
	
	NP_cpinti_interception.initialise_interception_exception()
	sleep 600
	
	' Mettre a jour les informations de CPU
	Maj_CPUINFO()
	Sleep 1500 ' Laisser l'utilisateur visualiser
	
	' Mettre a jours les informations BIOS APM
	Maj_APM_info()
	Sleep 1500 ' Laisser l'utilisateur visualiser
	
	DEBUG("* Le systeme s'est initialise correctement. ID_KERNEL:" & CPCDOS_INSTANCE.get_id_kernel() & " [0x" & HEX(CPCDOS_INSTANCE.get_id_kernel(), 4) & "] - BUILD:" & _VERSION_BUILD, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
	
	' Afficher le logo d'intro
	intro()
	

	DEBUG("* Initialisation du multi-task", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
	NP_cpinti_mt.initialiser_Multitache() ' NP_cpinti_mt.ajouter_Thread(cast(uinteger, @Tache1), 0)
	
	' Executer la boucle des thread (Fonction bloquante)
	NP_cpinti_mt.loop_MAIN()
	
	Print "!!!!!! END TEST !!!!!!" : sleep
	
	Function = 0
	
End Function

#print * Chargeur step 2 - __CPCDOS_INIT_2
public function __CPCDOS_INIT_2 cdecl Alias "__CPCDOS_INIT_2"(a as integer) as integer
	
	Dim Mem_depart_INIT 		as integer
	dim Resultat 				as integer
	Dim boucleARG 				as integer
	Dim INDEX_CMD_Exec_ARG 		as integer = 0
	Dim _CLE_ 					as double
	Dim CMD_Exec_ARG(0 to 17) 	as String
	
	
	DEBUG("__CPCDOS_INIT_2() [0x" & HEX(@__CPCDOS_INIT_2, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")	
	
	' Structure du thread
	Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
	
	Scope
		Do
			' Recuperer 1 argument par 1
			Dim Argument As String = Command(boucleARG)
			
			' S'il y n'y a plus d'arguments, alors on arrete
			If Len(Argument) = 0 Then Exit Do
			
			' Sans le serveur TELNET au demarrage
			if UCASE(Argument) = "/NOTELNET" then CPCDOS_INSTANCE.SANS_Telnet = TRUE
			if UCASE(Argument) = "/SANSTELNET" then CPCDOS_INSTANCE.SANS_Telnet = TRUE
			
			' Avec le debugger com
			if UCASE(Argument) = "/DEBUGCOM1" then CPCDOS_INSTANCE.AVEC_debug_COM1 = TRUE
			if UCASE(Argument) = "/DEBUGCOM2" then CPCDOS_INSTANCE.AVEC_debug_COM2 = TRUE
			if UCASE(Argument) = "/DEBUGCOM3" then CPCDOS_INSTANCE.AVEC_debug_COM3 = TRUE
			if UCASE(Argument) = "/DEBUGCOM4" then CPCDOS_INSTANCE.AVEC_debug_COM4 = TRUE
			
			' Avec le serveur CCP
			if UCASE(Argument) = "/SRVCCP" then CPCDOS_INSTANCE.AVEC_ccp = TRUE
			
			'Logger dans le fichier DEBUG.LOG
			if UCASE(Argument) = "/LOG" then CPCDOS_INSTANCE.LOGGER_AU_DEMARRAGE = TRUE
			if UCASE(Argument) = "/LOGALL" then CPCDOS_INSTANCE.LOGGER_AU_DEMARRAGE = TRUE : CPCDOS_INSTANCE.LOGGER_TOUT_AU_DEMARRAGE = TRUE

			' Sans ligne de debugage Cpcdos ET CPinti Core
			if UCASE(Argument) = "/NODBG" then CPCDOS_INSTANCE.SANS_DBG_CPC = TRUE : CPCDOS_INSTANCE.SANS_DBG_CPINTI = TRUE
			if UCASE(Argument) = "/SANSDBG" then CPCDOS_INSTANCE.SANS_DBG_CPC = TRUE : CPCDOS_INSTANCE.SANS_DBG_CPINTI = TRUE
			
			' Sans ligne de debogage Cpcdos uniquement
			if UCASE(Argument) = "/NODBGCPC" then CPCDOS_INSTANCE.SANS_DBG_CPC = TRUE 
			if UCASE(Argument) = "/SANSDBGCPC" then CPCDOS_INSTANCE.SANS_DBG_CPC = TRUE
			
			' Sans ligne de debogage CPinti Core uniquement
			if UCASE(Argument) = "/NODBGCPINTI" then CPCDOS_INSTANCE.SANS_DBG_CPINTI = TRUE
			if UCASE(Argument) = "/SANSDBGCPINTI" then CPCDOS_INSTANCE.SANS_DBG_CPINTI = TRUE
			
			' Sans reseau
			if UCASE(Argument) = "/NONET" then CPCDOS_INSTANCE.SANS_Reseau = TRUE
			if UCASE(Argument) = "/SANSRESEAU" then CPCDOS_INSTANCE.SANS_Reseau = TRUE
			
			' Mode DosBox
			if UCASE(Argument) = "/DOSBOX" then CPCDOS_INSTANCE.AVEC_DosBox = TRUE
			
			' Debug/Console uniquement (Sans evolution graphiques)
			if UCASE(Argument) = "/NOGUI" then CPCDOS_INSTANCE.NOGUI = TRUE : CPCDOS_INSTANCE.SANS_DBG_CPINTI = FALSE
			if UCASE(Argument) = "/NONIUG" then CPCDOS_INSTANCE.NOGUI = TRUE : CPCDOS_INSTANCE.SANS_DBG_CPINTI = FALSE
			
			' Commandes CpcdosC+
			if instr(UCASE(Argument), "/CCP:") > 0 then
				INDEX_CMD_Exec_ARG = INDEX_CMD_Exec_ARG + 1
				CMD_Exec_ARG(INDEX_CMD_Exec_ARG) = MID(Argument, 6)
			End if
			boucleARG = boucleARG + 1
			
		Loop
	End scope
	
	' *** Activation / Desactivation des debogeur au demarrage ***
	IF CPCDOS_INSTANCE.SANS_DBG_CPC = TRUE Then
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(0) ' Desactiver le debug cpcdos
	Else
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(1) ' Activer le debug cpcdos
	End if

	IF CPCDOS_INSTANCE.SANS_DBG_CPINTI = TRUE THEN
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_CPINTI_DEBUG(0) ' Desactiver le debug cpinticore
	Else
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_CPINTI_DEBUG(1) ' Activer le debug cpinticore
	End if
	
	' Logguer TOUT
	IF CPCDOS_INSTANCE.LOGGER_AU_DEMARRAGE = TRUE Then
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(2) ' Activer le debug LOG cpcdos
	ElseIF CPCDOS_INSTANCE.LOGGER_TOUT_AU_DEMARRAGE = TRUE Then
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(2) ' Activer le debug LOG cpcdos
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_CPINTI_DEBUG(2) ' Activer le debug LOG cpinticore
	End if
	
	
	Scope
	' Recuperer la memoire libre de depart
		Mem_depart_INIT = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Memoire_libre(CPCDOS_INSTANCE._KILO_OCTETS)

		
		' Generer un identifiant kernel
		CPCDOS_INSTANCE.Generer_id_kernel()
		
		DEBUG("* Le systeme s'est initialise correctement. ID_KERNEL:" & CPCDOS_INSTANCE.get_id_kernel() & " [0x" & HEX(CPCDOS_INSTANCE.get_id_kernel(), 4) & "] - BUILD:" & _VERSION_BUILD, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	

		' Recuperer les chemin des repertoires du noyau
		_REPERTOIRE_ET_NOYAU = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(0)
		_REPERTOIRE_DU_NOYAU_ = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(1)
		
		' Messages reseaux
		CPCDOS_INSTANCE._PING_MESSAGE 	= CPCDOS_INSTANCE._NOM_OS & " [Cpcdos OS " & _VERSION_MAJEUR & " " & _VERSION_MINEUR & "]"
		CPCDOS_INSTANCE._USER_AGENT 	= CPCDOS_INSTANCE._PING_MESSAGE
		CPCDOS_INSTANCE._HTTP_VERSION 	= "HTTP/1.0"
		
		
		
		' Mettre a jour la memoire actuelle
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.Update_memoire()
		
		
		
		
		' Initialiser le gestionnaire des taches
		DEBUG(" * Initialisation du gestionnaire des taches ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "") : doevents(500000)
		Resultat = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_ordonnancement_init(0, 0)
		DEBUG("  -> " & Resultat & " [0x" & HEX(Resultat, 4) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		
		
		' Creer un nouveau processus
		DEBUG(" * Creation du processus systeme '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS_NOM & "'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")  : doevents(100000)
		CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS = CPCDOS_INSTANCE.Creer_processus(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS_NOM)
		DEBUG("  -> " & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS & " [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS, 4) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

		
		' Creer un nouveau thread
		DEBUG(" * Creation du thread systeme '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD_NOM & "'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")  : doevents(100000)
		
		' Remplir la structure
		INSTANCE_STRUCT_THREAD.Nom 		= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD_NOM	' Nom du thread
		INSTANCE_STRUCT_THREAD.Fonction = @Thread_SYSTEM									' Adresse memoire
		INSTANCE_STRUCT_THREAD.PROC_ID 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS	' PID du processus parent
		INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()						' ID de l'OS
		INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()				' ID de l'user
		INSTANCE_STRUCT_THREAD.ARG_1 	= 0
		INSTANCE_STRUCT_THREAD.ARG_2 	= 0
		INSTANCE_STRUCT_THREAD.ARG_3 	= ""
		INSTANCE_STRUCT_THREAD.ARG_4 	= ""
		INSTANCE_STRUCT_THREAD.ARG_5 	= ""

		print "Passage 1"
		' Creer le thread grace a la structure ci-dessus
		CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
		print "Passage 10"
		DEBUG("  -> " & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD & " [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD, 4) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		print "Passage 11"
		
		' Generer un cle d'authentification unique du thread et de son processus
		DEBUG(" * Generation d'une cle numerique d'authentification du systeme ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")   : doevents(100000)
		CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), _
																					CPCDOS_INSTANCE.get_id_OS(), _
																					CPCDOS_INSTANCE.get_id_Utilisateur(), _
																					CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS, _
																					CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD)
		
		DEBUG("  -> " & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE & " [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 10) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

		
		' Liberer un coup le CPU durant 1sec afin de terminer d'eventuels operations
		doevents(1000000)

		DEBUG("* Initialisation du moteur CpcdosC+ ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
		DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
		' Initialiser le moteur CpcdosC+
		CPCDOS_INSTANCE.SHELLCCP_INSTANCE._INIT_CpcdosCP_CMD()
		
	End Scope
	
	' =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	' =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- D E B U T    D U    P R O G R A M M E -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	' =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


	Scope
		DIM _PID_Console as uinteger
		Dim _TID_Console as uinteger
		
		' ***************************************************************************
		' ************* Creer un SERVEUR TELNET dans un autre processus *************
		' ***************************************************************************
		
		' if CPCDOS_INSTANCE.AVEC_ccp = FALSE AND CPCDOS_INSTANCE.SANS_Telnet = FALSE AND CPCDOS_INSTANCE.SANS_Reseau = FALSE AND CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
		
			' DIM _PID_Telnet as uinteger = CPCDOS_INSTANCE.Creer_processus("Processus_TELNET")
			
			' ' *** Generer une cle d'authentification avec ce processus
			' Dim _CLE_Telnet as double = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), CPCDOS_INSTANCE.get_id_OS(), CPCDOS_INSTANCE.get_id_Utilisateur(), _PID_Telnet, 0)
			
			' ' **** Puis l'executer depuis le SHELL CpcdosC+
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("Serveur/ /tcp:23 /mode:telnet", _CLE_Telnet, 5, 0, "")
		
		
		' ' ***************************************************************************
		' ' ************ Creer un SERVEUR CPCDOSC+ dans un autre processus ************
		' ' ***************************************************************************
		
		' ELSEif CPCDOS_INSTANCE.AVEC_ccp = FALSE AND CPCDOS_INSTANCE.SANS_Telnet = FALSE AND CPCDOS_INSTANCE.SANS_Reseau = FALSE AND CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
		
			
			
			' DIM _PID_AdminCCP as uinteger = CPCDOS_INSTANCE.Creer_processus("Processus_AdminCCP")
			
			' ' *** Generer une cle d'authentification avec ce processus
			' Dim _CLE_AdminCCP as double = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), CPCDOS_INSTANCE.get_id_OS(), CPCDOS_INSTANCE.get_id_Utilisateur(), _PID_AdminCCP, 0)
			
			' ' **** Puis l'executer depuis le SHELL CpcdosC+
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("Serveur/ /tcp:23 /mode:ccp", _CLE_AdminCCP, 5, 0, "")
			
		' End if
		
		
		' ***********************************************************
		' ************* FIXER les principales variables *************
		' ***********************************************************
		
		' Verifier si le LFN est installe
		RmDir "1.2.3"
		IF Mkdir("1.2.3") = -1 then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[KRNL_LDR] Le LFN est desactive, SFN sera applique mais vous aurez des restrictions et des incompatibilites sur les chemins d'acces et nom de fichiers long.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[KRNL_LDR] Le LFN is disable, SFN will be applied, but you will have restrictions, and some incompatibilities  with long path access and files names.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("FIX/ CPC_LFN = 0", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		Else
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[KRNL_LDR] LFN active!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[KRNL_LDR] LFN enable!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("FIX/ CPC_LFN = 1", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
			RmDir "1.2.3"
		End if
		

		Scope
			' *********************************************************************************
			' ************* Creer une instance de CONSOLE dans un autre processus *************
			' *********************************************************************************
			
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[KRNL_LDR] Creation du processus de la console...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[KRNL_LDR] Creating console process...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if

			_PID_Console = CPCDOS_INSTANCE.Creer_processus("Processus_CONSOLE")
			
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[KRNL_LDR] Creation du thread console dans le PID:" & _PID_Console & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[KRNL_LDR] Creating console thread in the PID:" & _PID_Console & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
			
			' Remplir la structure du thread de la console
			INSTANCE_STRUCT_THREAD.Nom 		= "Thread_CONSOLE"		' Nom du thread
			INSTANCE_STRUCT_THREAD.Fonction = @THREAD__MAIN_Console	' Adresse memoire
			INSTANCE_STRUCT_THREAD.PROC_ID 		= _PID_Console			' PID du processus parent
			INSTANCE_STRUCT_THREAD.ARG_1 	= 0
			INSTANCE_STRUCT_THREAD.ARG_2 	= 0
			INSTANCE_STRUCT_THREAD.ARG_3 	= ""
			INSTANCE_STRUCT_THREAD.ARG_4 	= ""
			INSTANCE_STRUCT_THREAD.ARG_5 	= ""

			' Creer le thread grace a la structure ci-dessus
			_TID_Console = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
		End Scope
		
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[KRNL_LDR] Creation du thread console dans le PID:" & _PID_Console & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		Else
			DEBUG("[KRNL_LDR] Creating console thread in the PID:" & _PID_Console & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End if
		
		' Arrive ici, c'est que le systeme a initialise correctement cpinti, gestionnaires et memoires
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[CPCDOS] CPinti core initialise avec succes!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			DEBUG("[CPCDOS] Memoire, scope virtuel et gestionnaire des processus & threads initialise avec succes!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			DEBUG("[CPCDOS] Execution du loader depuis le SHELL CCP...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[CPCDOS] CPinti core initialised with succes!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Avertissement, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			DEBUG("[CPCDOS] Memory, virtual scope and process&thread manager intialised with success!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			DEBUG("[CPCDOS] Loader executing from CCP SHELL...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
		
		
		doevents(2500000) ' On attend 2,5 secondes avant de continuer ;)
	
		
		CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("EXE/ KRNL\KRNL.CPC", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		
		IF CPCDOS_INSTANCE.AVEC_debug_COM1 = TRUE Then
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("SYS/ /DEBUG /COM1:1", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		ElseIF CPCDOS_INSTANCE.AVEC_debug_COM2 = TRUE Then
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("SYS/ /DEBUG /COM2:1", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		ElseIF CPCDOS_INSTANCE.AVEC_debug_COM3 = TRUE Then
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("SYS/ /DEBUG /COM3:1", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		ElseIF CPCDOS_INSTANCE.AVEC_debug_COM4 = TRUE Then
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("SYS/ /DEBUG /COM4:1", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
		End if
		
		
		scope
			Dim Valeurs as String
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[CPCDOS] Affectation des attributs de fichier & dossier [F,D,r,h,s,a,n] ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			Else
				DEBUG("[CPCDOS] File & directory attributes assignment [F,D,r,h,s,a,n] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			End if
			
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_ReadOnly 	= Cbyte(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.IO.ReadOnly"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Hidden 	= Cbyte(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.IO.Hidden"		, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_System 	= Cbyte(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.IO.System"		, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Archive 	= Cbyte(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.IO.Archive"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Directory = Cbyte(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.IO.Directory"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Normal 	= Cbyte(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.IO.Normal"		, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
			
			Valeurs = "r:0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_ReadOnly) & "," _
						& "h:0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Hidden) & "," _
						& "s:0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_System) & "," _
						& "a:0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Archive) & "," _
						& "D:0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Directory) & "," _
						& "n:0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Normal)
			
			DEBUG("[" & Valeurs & "] [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End Scope
		

		
		' Executer les commandes entre en argument du demarrage de Cpcdos
		Scope
			IF INDEX_CMD_Exec_ARG > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" * Execution des '" & INDEX_CMD_Exec_ARG & "' arguments d'entre CpcdosC+ ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG(" * Executing '" & INDEX_CMD_Exec_ARG & "' CpcdosC+ entry arguments...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "") 
				End if
				
				dim BoucleCMD as integer = 1
				Do
					Dim CommandeCpcdosCP as string = CMD_Exec_ARG(BoucleCMD)
					
					BoucleCMD = BoucleCMD + 1
					if len(CommandeCpcdosCP) > 2 then ' Aucune commande font en dessous de 3 caracteres
					
						doevents(100000) ' 100 ms entre chaque
						
						' On execute
						CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(CommandeCpcdosCP, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
					else
						' S'il n'y a plus de commandes, on quitte
						Exit Do
					end if
					
					' Si on depasse le tableau, on quitte
					if BoucleCMD > 16 then Exit Do
				Loop
			End if
		End Scope
		
		' *** SCOPE d'evaluation du processeur ***
		scope
	
			Dim Av_debug 		as integer = 0
			Dim Av_cpinti_debug as integer = 0
			
			' Si le debug Cpcdos n'est pas interdit
			IF CPCDOS_INSTANCE.SANS_DBG_CPC = FALSE THEN 
				Av_debug = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() 
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(1) ' Activer le debug cpcdos
			End if
			' Si le debug CPinti Core n'est pas interdit
			IF CPCDOS_INSTANCE.SANS_DBG_CPINTI = FALSE Then 
				Av_cpinti_debug = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_CPINTI_DEBUG()
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_CPINTI_DEBUG(1) ' Et CPinti Core
			End if
			
			doevents(10) ' Pause CRT CPinticore
			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_evaluation_cycle_cpu()
			
			' Restaurer le mode debug si NON interdit
			IF CPCDOS_INSTANCE.SANS_DBG_CPC = FALSE THEN CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(Av_debug) ' Activer le debug cpcdos
			IF CPCDOS_INSTANCE.SANS_DBG_CPINTI = FALSE Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_CPINTI_DEBUG(Av_cpinti_debug) ' Et CPinti Core

		End scope
	
	End Scope
	
	' if _go32_dpmi_lock_data( @isr_data_start, @isr_data_end - @isr_data_start )<>0 then
		' print "Failed to lock data"
		' end 1
	' end if

	' old_isr = fb_isr_get( 1 )

	' dim as byte ptr ptr_end = cast( byte ptr, @isr_timer_end )
	' dim as byte ptr ptr_start = cast( byte ptr, @isr_timer )
	' if 0 = fb_isr_set( 1, @isr_timer, ptr_end - ptr_start, 16384 ) then
		' print "Failed to lock ISR"
		' end 1
	' end if
	
	
	
	
	Print " END"
	return 0
	
End Function


#print * Thread updater - Main loop
Public Sub Thread_Updater cdecl Alias "Thread_Updater"(byval arguments as any ptr)
	' **** Recuperer les informations du thread / processus ****
	Dim _PID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_PID))
	Dim _TID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_TID))
	Dim _USERID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_USERID))
	Dim _OSID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_OSID))
	Dim _KERNEL_ID as uinteger		= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_KERNEL_ID))
	Dim _THRD_NOM as CONST String	= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_THRD_NOM))
	
	' **** Recuperer les arguments d'entre ****
	Dim _ARG_1 as integer 			= cast(integer, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_1))
	Dim _ARG_2 as uinteger 			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_2))
	Dim _ARG_3 as String 			= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_3))
	Dim _ARG_4 as String 			= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_4))
	Dim _ARG_5 as String 			= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_5))
	
	print "Thread_Updater : cpinti_fin_section_critique"
	' **** Reactiver les interruptions et autres fonctionnalites du noyau ****
	SORTIR_SectionCritique()
	print "Thread_Updater : cpinti_fin_section_critique - OK"
	
	Dim Etat_Thread as uinteger
	Dim EN_VIE 		as Boolean = TRUE
	Dim Switch		as Boolean
	
	' Continuer l'initialisation
	__CPCDOS_INIT_2(0)
	
	while(EN_VIE)
		' Liberer le CPU
		doevents(0)
		print " 0000 Thread_Updater"
		
		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_etat_thread(_KERNEL_ID, _PID, _TID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		
			doevents(12000)
			
			IF Switch = FALSE Then
				Switch = TRUE
				
				doevents(_PAUSE_CRT) ' Pause CRT CPinticore
				
				' Mettre a jour la memoire restante
				doevents(8128)
				
				' Checker le systeme d'eventuels corrections
				CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_ckecker(CPCDOS_INSTANCE.get_id_kernel())
				
				' Mettre a jour le cycle CPU
				CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_update_cycle_cpu()
			ElseIF Switch = TRUE Then
				Switch = FALSE
				
				doevents(8128)
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.Update_memoire()
				
				' Mettre a jour l'heure du systeme
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_RTC()
				
				' Verifier s'il y a un processus en cours, sinon on stoppe le systeme
				if CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_nombre_processus() < 1 Then
					exit while
				End if
			End if
			
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		END SCOPE
		End if
FIN_EXEC:

	wend
	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_sortir_thread(_KERNEL_ID, _PID, _TID)
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] ATTENTION, le thread 'Thread_Updater' s'est arrete ! Le systeme peut devenir instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] CAUTION, thread 'Thread_Updater' has been stopped! System can be instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
End sub

#print * Thread systeme
public sub Thread_SYSTEM cdecl Alias "Thread_SYSTEM"(byval arguments as any ptr)

	' **** Recuperer les informations du thread / processus ****
	Dim _PID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_PID))
	Dim _TID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_TID))
	Dim _USERID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_USERID))
	Dim _OSID as uinteger			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_OSID))
	Dim _KERNEL_ID as uinteger		= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_KERNEL_ID))
	Dim _THRD_NOM as CONST String	= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_THRD_NOM))
	
	' **** Recuperer les arguments d'entre ****
	Dim _ARG_1 as integer 			= cast(integer, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_1))
	Dim _ARG_2 as uinteger 			= cast(uinteger, 			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_2))
	Dim _ARG_3 as String 			= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_3))
	Dim _ARG_4 as String 			= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_4))
	Dim _ARG_5 as String 			= *cast(CONST String ptr, 	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_thread_args(CPCDOS_INSTANCE._GET_ARG_5))
	
	print "Thread_SYSTEM : cpinti_fin_section_critique"
	' **** Reactiver les interruptions et autres fonctionnalites du noyau ****
	SORTIR_SectionCritique()
	print "Thread_SYSTEM : cpinti_fin_section_critique - OK"
	
	Dim Etat_Thread as uinteger
	Dim EN_VIE 		as Boolean = TRUE
	
	DIM DEBUT_TIMING 	as Integer = 0
	DIM FIN_TIMING 		as Integer = 0
	CPCDOS_INSTANCE.TIMING_1SEC = TRUE
	
	while(EN_VIE)
		' Liberer le CPU
		doevents(0)
		' print " 0000 Thread_SYSTEM"
		
		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_etat_thread(_KERNEL_ID, _PID, _TID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********

		
			' Mettre a jour le cycle CPU
			CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_update_cycle_cpu()
			
			' Recuperer le temps actuel
			FIN_TIMING = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()
			
			' Si le temps actuel est plus grand que le temps passe
			IF DEBUT_TIMING <> FIN_TIMING Then
				DEBUT_TIMING = FIN_TIMING
				if CPCDOS_INSTANCE.TIMING_1SEC = TRUE Then CPCDOS_INSTANCE.TIMING_1SEC = FALSE Else CPCDOS_INSTANCE.TIMING_1SEC = TRUE
			End if
		

		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		END SCOPE
		End if
FIN_EXEC:

	wend
	CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_sortir_thread(_KERNEL_ID, _PID, _TID)
	
	DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") ' Mes 10 ans
	DEBUG(" - - - - - - - - - - - - - - ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") ' Mes 10 ans
	DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") ' Mes 10 ans
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] Aucun processus en cours. Arret du noyau...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] No process in execution. Stopping kernel...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
	' Faire une methode pour arreter le noyau proprement
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] Fermeture des descripteurs de fichiers...!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] Closing file descriptor...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	
	Reset()
	doevents(1000000)
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] OK, BYE!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] OK, BYE!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	doevents(2000000)
	
end sub


#print * Intro
Sub intro()
	' Cette procedure SUB permet d'afficher le logo cpcdos et reste en pause 1 seconde
	Print "                                                  "
	Print "    ======================                        "
	Print "    =      --   --   --  =    --    -     --      "
	Print "    =     |    |__| |    =   |  ) (   )   \       "
	Print "    =      --  |     --  =    --    -    --       "
	Print "    ===========================================   "
	Print "         --   --   --    =  --    -     --    =   "
	Print "        |    |__| |      = |  ) (   )   \     =   "
	Print "         --  |     --    =  --    -    --     =   "
	Print "                         ======================   "
	Print "    CPCDOS OSx                                    "
	Print "                       Cr‚e Pour Concevoir Des OS "
	Print "                           Created for develop OS "
	Print " Version :                                        "
	Print "  - Date   : " &   _VERSION_DATEV                  
	Print "  - Kernel : OS" & _VERSION_MAJEUR & " " & _VERSION_MINEUR
	Print "  - CCP    : " &    _VERSION_CCP                    
	Print "  - CONSOLE: " &    _VERSION_CONSOLE                
	Print "  - SCI    : " &    _VERSION_SCI                    
	sleep 1000
end sub


Public Sub rest_scr0 cdecl Alias "rest_scr0"
	screen 0
	cls
End sub




