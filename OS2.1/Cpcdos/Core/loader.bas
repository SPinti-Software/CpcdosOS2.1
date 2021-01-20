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



Dim shared INDEX_CMD_Exec_ARG 		as integer = 0
Dim shared CMD_Exec_ARG(0 to 17) 	as String




public function Mon_Thread1 cdecl Alias "Mon_Thread1"(byref thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer

	On local Error Goto Intercept_Error
	
	Dim Etat_Thread 		as uinteger
	Dim EN_VIE 				as Boolean = TRUE
	

	while(EN_VIE)
		' Liberer le CPU
		doevents(0)
		

		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
			

		print " ### Thread 1"

		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		END SCOPE
		End if
	wend
	

	function = null
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] ATTENTION, le thread 'Thread_SYSTEM' s'est arrete ! Le systeme peut devenir instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] CAUTION, thread 'Thread_SYSTEM' has been stopped! System can be instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
	CPCDOS_INSTANCE.Fermer_thread(thread_struct.PROC_ID, thread_struct.THREAD_ID, false)
	
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
	function = null
end function

public function Mon_Thread2 cdecl Alias "Mon_Thread2"(byref thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer

	On local Error Goto Intercept_Error
	
	Dim Etat_Thread 		as uinteger
	Dim EN_VIE 				as Boolean = TRUE
	

	while(EN_VIE)
		' Liberer le CPU
		doevents(0)
		

		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
			

		print " ------ Thread 2"

		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		END SCOPE
		End if
	wend
	

	function = null
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] ATTENTION, le thread 'Thread_SYSTEM' s'est arrete ! Le systeme peut devenir instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] CAUTION, thread 'Thread_SYSTEM' has been stopped! System can be instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
	CPCDOS_INSTANCE.Fermer_thread(thread_struct.PROC_ID, thread_struct.THREAD_ID, false)
	
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
	function = null
end function

public function Mon_Thread3 cdecl Alias "Mon_Thread3"(byref thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer

	On local Error Goto Intercept_Error
	
	Dim Etat_Thread 		as uinteger
	Dim EN_VIE 				as Boolean = TRUE
	

	while(EN_VIE)
		' Liberer le CPU
		doevents(0)
		

		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
			

		print "               Thread 3"

		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		END SCOPE
		End if
	wend
	

	function = null
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] ATTENTION, le thread 'Thread_SYSTEM' s'est arrete ! Le systeme peut devenir instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] CAUTION, thread 'Thread_SYSTEM' has been stopped! System can be instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
	CPCDOS_INSTANCE.Fermer_thread(thread_struct.PROC_ID, thread_struct.THREAD_ID, false)
	
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
	function = null
end function

public sub Test_MT()

	cpinti.gestionnaire_tache.initialiser_Multitache()
	
	
	
		' Structure du processus
		Dim INSTANCE_STRUCT_PROCES as _STRUCT_PROCESSUS_Cpcdos_OSx__
	
		' Structure du thread
		Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
	
		DEBUG(" * Creation du processus '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS_NOM & "'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")  : doevents(100000)
		
		' Remplir la structure
		INSTANCE_STRUCT_PROCES.Nom 				= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS_NOM		' Nom du processus
		INSTANCE_STRUCT_PROCES.PROC_ID_PARENT	= 0						' PID du processus parent (qui l'a cree)
		INSTANCE_STRUCT_PROCES.THREAD_ID_PARENT	= 0						' TID du thread parent (qui l'a cree)
		INSTANCE_STRUCT_PROCES.OS_ID			= 0						' ID de l'OS
		INSTANCE_STRUCT_PROCES.USER_ID			= 0						' ID de l'user
		
	
		' Creer un nouveau thread
		DEBUG(" * Creation du thread 1...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "") 

		doevents(10000)
		
		' Remplir la structure
		INSTANCE_STRUCT_THREAD.Nom 		= "Mon_Thread1"' Nom du thread
		INSTANCE_STRUCT_THREAD.Fonction = @Mon_Thread1									' Adresse memoire
		INSTANCE_STRUCT_THREAD.PROC_ID 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS	' PID du processus parent
		INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()						' ID de l'OS
		INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()				' ID de l'user
		INSTANCE_STRUCT_THREAD.KERNEL_ID= CPCDOS_INSTANCE.get_id_kernel()					' ID du kernel
		
		INSTANCE_STRUCT_THREAD.Priorite = _PRIORITE_THRD_MOYENNE
		INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_2 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_3 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_4 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_5 	= NULL


		' Creer le thread grace a la structure ci-dessus
		dim thread_id_1 as uinteger = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)

		print "thread_id_1 : " & thread_id_1 & "."

		doevents(10000)

		' Creer un nouveau thread
		DEBUG(" * Creation du thread 2...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "") 

		
		' Remplir la structure
		INSTANCE_STRUCT_THREAD.Nom 		= "Mon_Thread2"' Nom du thread
		INSTANCE_STRUCT_THREAD.Fonction = @Mon_Thread2									' Adresse memoire
		INSTANCE_STRUCT_THREAD.PROC_ID 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS	' PID du processus parent
		INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()						' ID de l'OS
		INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()				' ID de l'user
		INSTANCE_STRUCT_THREAD.KERNEL_ID= CPCDOS_INSTANCE.get_id_kernel()					' ID du kernel
		
		INSTANCE_STRUCT_THREAD.Priorite = _PRIORITE_THRD_MOYENNE
		INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_2 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_3 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_4 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_5 	= NULL


		' Creer le thread grace a la structure ci-dessus
		dim thread_id_2 as uinteger = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
		
		print "thread_id_2 : " & thread_id_2 & "."
		
		doevents(10000)
		

		
		' Creer un nouveau thread
		DEBUG(" * Creation du thread 3...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "") 

		
		' Remplir la structure
		INSTANCE_STRUCT_THREAD.Nom 		= "Mon_Thread3"' Nom du thread
		INSTANCE_STRUCT_THREAD.Fonction = @Mon_Thread3									' Adresse memoire
		INSTANCE_STRUCT_THREAD.PROC_ID 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS	' PID du processus parent
		INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()						' ID de l'OS
		INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()				' ID de l'user
		INSTANCE_STRUCT_THREAD.KERNEL_ID= CPCDOS_INSTANCE.get_id_kernel()					' ID du kernel
		
		INSTANCE_STRUCT_THREAD.Priorite = _PRIORITE_THRD_MOYENNE
		INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_2 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_3 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_4 	= NULL
		INSTANCE_STRUCT_THREAD.ARG_5 	= NULL


		' Creer le thread grace a la structure ci-dessus
		dim thread_id_3 as uinteger = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
		
		print "thread_id_3 : " & thread_id_3 & "."

		
		doevents(10000)
		
		while(1)
			doevents(0)
		wend
	
		return

END sub

public sub DUMP_PG()
	' print "Nombre de pages : " & get_numbers_of_pages() & "."
	' sleep
	' for b as integer = 0 to get_numbers_of_pages()
		' dump_page(get_numbers_of_pages() - b)
		' sleep
	' next b
End sub

#print * ENTRY POINT - __CPCDOS_INIT_1
public function __CPCDOS_INIT_1 cdecl Alias "__CPCDOS_INIT_1"(a as integer) as integer
	

		
		On local Error Goto Intercept_Error

		DEBUG("[0x" & HEX(@__CPCDOS_INIT_1, 8) & "] Starting cpcdos osx kernel ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")	
		
		' Mettre a jour les disques presents
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.update_drives()

		' Afficher les disques presents
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.Display_all_drives()
		
		' sleep 10000
		


		ZERO_FILL = String(128, 0)
		
		' Definir repertoires
		CPCDOS_INSTANCE._REPERTOIRE_EXEC = ExePath & "\"
		CPCDOS_INSTANCE._REPERTOIRE_NOYAU = Curdir & "\"
		
		Scope
			Dim boucleARG 				as integer = 0
			Do
				' Recuperer 1 argument par 1
				Dim Argument As String = LTrim(Command(boucleARG))
				
				print "Argument : " & Argument & "." : sleep 200
				
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
				if UCASE(Argument) = "/NODBG" then CPCDOS_INSTANCE.PAS_DE_LIGNES_BOOT = TRUE
				if UCASE(Argument) = "/SANSDBG" then CPCDOS_INSTANCE.PAS_DE_LIGNES_BOOT = TRUE
				
				' Sans reseau
				if UCASE(Argument) = "/NONET" then CPCDOS_INSTANCE.SANS_Reseau = TRUE
				if UCASE(Argument) = "/SANSRESEAU" then CPCDOS_INSTANCE.SANS_Reseau = TRUE
				
				' Mode DosBox
				if UCASE(Argument) = "/DOSBOX" then CPCDOS_INSTANCE.AVEC_DosBox = TRUE
				if UCASE(Argument) = "/NONET" then CPCDOS_INSTANCE.AVEC_DosBox = TRUE
				if UCASE(Argument) = "/NONETWORK" then CPCDOS_INSTANCE.AVEC_DosBox = TRUE
				
				' Debug/Console uniquement (Sans evolution graphiques)
				if UCASE(Argument) = "/NOGUI" then CPCDOS_INSTANCE.NOGUI = TRUE
				if UCASE(Argument) = "/NONIUG" then CPCDOS_INSTANCE.NOGUI = TRUE
				
				' Commandes CpcdosC+
				if instr(UCASE(Argument), "/CCP:") > 0 then
					INDEX_CMD_Exec_ARG = INDEX_CMD_Exec_ARG + 1
					CMD_Exec_ARG(INDEX_CMD_Exec_ARG) = MID(Argument, 6)
				End if
				boucleARG = boucleARG + 1
				
			Loop
		End scope

		
		
		
		DEBUG("__CPCDOS_INIT_1() [0x" & HEX(@__CPCDOS_INIT_1, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")	
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[__CPCDOS_INIT_1] Multitache", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[__CPCDOS_INIT_1] Multitasking", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if
		
		ENTRER_SectionCritique()
		cpinti.gestionnaire_tache.initialiser_Multitache()
		SORTIR_SectionCritique()
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[__CPCDOS_INIT_1] Interception d'exceptions ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[__CPCDOS_INIT_1] Exeptions interception", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if
		
		'cpinti.interception.initialise_interception_exception()
		
		' Mettre a jour les informations de CPU
		Maj_CPUINFO()
		Sleep 1500 ' Laisser l'utilisateur visualiser
		
		' Mettre a jours les informations BIOS APM
		Maj_APM_info()
		Sleep 1500 ' Laisser l'utilisateur visualiser
	
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("* Le systeme s'est initialise correctement. ID_KERNEL:" & CPCDOS_INSTANCE.get_id_kernel() & " [0x" & HEX(CPCDOS_INSTANCE.get_id_kernel(), 4) & "] - BUILD:" & _VERSION_BUILD, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
		else
			DEBUG("* System has been initialized correctly. ID_KERNEL:" & CPCDOS_INSTANCE.get_id_kernel() & " [0x" & HEX(CPCDOS_INSTANCE.get_id_kernel(), 4) & "] - BUILD:" & _VERSION_BUILD, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
		end if
		
		intro()
		
		
		
		ENTRER_SectionCritique()
		
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[__CPCDOS_INIT_1] Test du CPU ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[__CPCDOS_INIT_1] CPU testing ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if
		cpinti.gestionnaire_tache.eval_cycle_cpu()
		
		DEBUG("[OK] ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		DEBUG(" --> " & cpinti.gestionnaire_tache.get_cycle_MAX_cpu() & " cycles", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		
		
		
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[__CPCDOS_INIT_1] Noyau en execution.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[__CPCDOS_INIT_1] Kernel in execution.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if
		
		
		
		SORTIR_SectionCritique()
		

		__CPCDOS_INIT_2(0)
		
	function = null
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function


#print * Chargeur step 2 - __CPCDOS_INIT_2
public function __CPCDOS_INIT_2 cdecl Alias "__CPCDOS_INIT_2"(a as integer) as integer
	
	On local Error Goto Intercept_Error
	
			' Structure du processus
		Dim INSTANCE_STRUCT_PROCES as _STRUCT_PROCESSUS_Cpcdos_OSx__

		' Structure du thread
		Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
		
		
		Dim Mem_depart_INIT 		as integer
		Dim _CLE_ 					as double
		
		
		DEBUG("__CPCDOS_INIT_2() [0x" & HEX(@__CPCDOS_INIT_2, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")	
		
		
		
		
		
		' TEST CRASH !!
		' Test_MT()
			
		
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
			
			
			

			
			' Creer un nouveau processus
			DEBUG(" * Creation du processus systeme '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS_NOM & "'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")  : doevents(100000)
			
			' Remplir la structure
			INSTANCE_STRUCT_PROCES.Nom 				= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS_NOM		' Nom du processus
			INSTANCE_STRUCT_PROCES.PROC_ID_PARENT	= 0						' PID du processus parent (qui l'a cree)
			INSTANCE_STRUCT_PROCES.THREAD_ID_PARENT	= 0						' TID du thread parent (qui l'a cree)
			INSTANCE_STRUCT_PROCES.OS_ID			= 0						' ID de l'OS
			INSTANCE_STRUCT_PROCES.USER_ID			= 0						' ID de l'user
			
			' Creer le processus
			CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS = CPCDOS_INSTANCE.Creer_processus(INSTANCE_STRUCT_PROCES)
			
			DEBUG("  -> " & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS & " [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS, 4) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

			' =====================================================================================
			' =====================================================================================
			' =====================================================================================
			
			' CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_DBG_DEBUG(2)
			' CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_CPINTI_DEBUG(2)
			
			' ScreenRes 1024, 768, 32
			' Color RGB(255,255,255), RGB(0, 0, 0)
			' cls
			
			' Dim Fichier_PE as string = "APP_WORK.EXE"
			' Creer une instance de _STRUCT_THREAD_Cpcdos_OSx__, remplir le donnees
			' Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
			' INSTANCE_STRUCT_THREAD.Nom 		= "_WIN32PE_ASYNC_"  & _CLE_ & "~" & CPCDOS_INSTANCE.get_id_PID(_CLE_) & "~" & LTRIM(Fichier_PE)
			' INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Wrapper_THREAD)
			' INSTANCE_STRUCT_THREAD.PROC_ID 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS
			' INSTANCE_STRUCT_THREAD.OS_ID	= 0		' ID de l'OS
			' INSTANCE_STRUCT_THREAD.USER_ID	= 0	' ID de l'user
			' INSTANCE_STRUCT_THREAD.Priorite = _PRIORITE_THRD_MOYENNE
			' INSTANCE_STRUCT_THREAD.ARG_CP 	= cast(any ptr, 13)
			
			' INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
			' INSTANCE_STRUCT_THREAD.ARG_1 	= malloc(sizeof(Fichier_PE))
			' memcpy(INSTANCE_STRUCT_THREAD.ARG_1, cast(any ptr, @Fichier_PE), sizeof(Fichier_PE))
			
			' INSTANCE_STRUCT_THREAD.ARG_2 = NULL
			' INSTANCE_STRUCT_THREAD.ARG_3 = NULL
			' INSTANCE_STRUCT_THREAD.ARG_4 = NULL
			' INSTANCE_STRUCT_THREAD.ARG_5 = NULL
			
			' CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
			' doevents(100000)
			
			' =====================================================================================
			' =====================================================================================
			' =====================================================================================
			
			doevents(10000)
			
			' Creer un nouveau thread
			DEBUG(" * Creation du thread systeme '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD_NOM & "'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")  : doevents(100000)
			
			' Remplir la structure
			INSTANCE_STRUCT_THREAD.Nom 		= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD_NOM	' Nom du thread
			INSTANCE_STRUCT_THREAD.Fonction = @Thread_SYSTEM									' Adresse memoire
			INSTANCE_STRUCT_THREAD.PROC_ID 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS	' PID du processus parent
			INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()						' ID de l'OS
			INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()				' ID de l'user
			INSTANCE_STRUCT_THREAD.KERNEL_ID= CPCDOS_INSTANCE.get_id_kernel()					' ID du kernel
			
			INSTANCE_STRUCT_THREAD.Priorite = _PRIORITE_THRD_TRES_FAIBLE
			INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
			INSTANCE_STRUCT_THREAD.ARG_2 	= NULL
			INSTANCE_STRUCT_THREAD.ARG_3 	= NULL
			INSTANCE_STRUCT_THREAD.ARG_4 	= NULL
			INSTANCE_STRUCT_THREAD.ARG_5 	= NULL


			' Creer le thread grace a la structure ci-dessus
			CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)

			doevents(10000)
			
			DEBUG("  -> " & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD & " [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD, 4) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

			
			' Generer un cle d'authentification unique du thread et de son processus
			DEBUG(" * Generation d'une cle numerique d'authentification du systeme ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")   : doevents(100000)
			CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE = CPCDOS_INSTANCE.Generer_cle(CPCDOS_INSTANCE.get_id_kernel(), _
																						CPCDOS_INSTANCE.get_id_OS(), _
																						CPCDOS_INSTANCE.get_id_Utilisateur(), _
																						CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS, _
																						CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD)
			
			DEBUG("  -> " & CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE & " [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 10) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")


			DEBUG("* Initialisation du moteur CpcdosC+ ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
			DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")	
			
			' Initialiser le moteur CpcdosC+
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE._INIT_CpcdosCP_CMD()

			
		End Scope
		
		doevents(1000)
		
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
			
			if CPCDOS_INSTANCE.AVEC_DosBox = false Then
				CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("ping/ 127.0.0.1", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
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
				' Remplir la structure
				INSTANCE_STRUCT_PROCES.Nom 				= "Processus_CONSOLE"	' Nom du processus
				INSTANCE_STRUCT_PROCES.PROC_ID_PARENT	= 0						' PID du processus parent (qui l'a cree)
				INSTANCE_STRUCT_PROCES.THREAD_ID_PARENT	= CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_THREAD						' TID du thread parent (qui l'a cree)
				INSTANCE_STRUCT_PROCES.OS_ID			= 0						' ID de l'OS
				INSTANCE_STRUCT_PROCES.USER_ID			= 0						' ID de l'user
				
				' Creer le processus
				_PID_Console = CPCDOS_INSTANCE.Creer_processus(INSTANCE_STRUCT_PROCES)
				
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[KRNL_LDR] Creation du thread console dans le PID:" & _PID_Console & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[KRNL_LDR] Creating console thread in the PID:" & _PID_Console & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
				
				' Remplir la structure du thread de la console
				INSTANCE_STRUCT_THREAD.Nom 		= "Thread_CONSOLE"		' Nom du thread
				INSTANCE_STRUCT_THREAD.Fonction = @THREAD__MAIN_Console	' Adresse memoire
				INSTANCE_STRUCT_THREAD.PROC_ID 	= _PID_Console			' PID du processus parent
				INSTANCE_STRUCT_THREAD.KERNEL_ID= CPCDOS_INSTANCE.get_id_kernel()						' ID du kernel
				INSTANCE_STRUCT_THREAD.Priorite	= _PRIORITE_THRD_FAIBLE
				INSTANCE_STRUCT_THREAD.ARG_1 	= NULL
				INSTANCE_STRUCT_THREAD.ARG_2 	= NULL
				INSTANCE_STRUCT_THREAD.ARG_3 	= NULL
				INSTANCE_STRUCT_THREAD.ARG_4 	= NULL
				INSTANCE_STRUCT_THREAD.ARG_5 	= NULL

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
			
			' Mettre a jour la liste des OS pour recuperer le boot screen
			CPCDOS_INSTANCE.update_OS_LISTE()
			
			' Initialiser le module de l'ecran de chargement anime depuis le processus systeme
			CPCDOS_INSTANCE.Initialiser_BootScreen(TRUE, "OS\" & CPCDOS_INSTANCE._LISTE__OS_BOOTSCREEN & "\boot", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_PROCESSUS)
		
			doevents(100000) ' On attend 1 seconde
		
			
			CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("EXE/ KRNL\KRNL.CPC", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")
			
			CPCDOS_INSTANCE.UNIQUE = CPCDOS_INSTANCE.Lire_fichier_complet("DRIVERS\NETWORK\UNIQUE.TXT")
			CPCDOS_INSTANCE.UNIQUE = CPCDOS_INSTANCE.remplacer_Caractere(CPCDOS_INSTANCE.UNIQUE, " ", ".")
			
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
		End Scope

		' Ici on considere que le kernel a demarre, on peut donc afficher les lignes correctement
		CPCDOS_INSTANCE.PAS_DE_LIGNES_BOOT = false
		
		
		' Verifier s'il y a 1 ou plus de processus en cours, sinon on stoppe le systeme
		while(cpinti.gestionnaire_tache.cpinti_get_nombre_processus() > 0)
			doevents(10)
			
			cpinti.gestionnaire_tache.IamInLive()
		wend
		
		DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") ' Mes 10 ans
		DEBUG(" - - - - - - - - - - - - - - ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") ' Mes 10 ans
		DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") ' Mes 10 ans
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Cpcdos] Aucun processus en cours. Arret du noyau...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[Cpcdos] No process in execution. Stopping kernel...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
		End if
		
		doevents(500000)
		
		' Faire une methode pour arreter le noyau proprement
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Cpcdos] Fermeture des descripteurs de fichiers...!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[Cpcdos] Closing file descriptor...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
		
		Reset()
		doevents(1000000)
		
		ENTRER_SectionCritique()
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Cpcdos] OK, BYE!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[Cpcdos] OK, BYE!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
		doevents(1000000)

		return 0
	
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function


#print * Thread updater - Main loop
Public function Thread_Updater cdecl Alias "Thread_Updater"(byval arguments as any ptr) as any ptr

	On local Error Goto Intercept_Error

	dim compteur as uinteger = 0
	dim EN_VIE as boolean = true
	
	dim Switch as boolean
	
	SCOPE
		' ********* D E B U T  *********
		while(EN_VIE)

			doevents(10)
			
			' Mettre a jour le cycle CPU
			cpinti.gestionnaire_tache.IamInLive()

			IF Switch = FALSE Then
				Switch = TRUE
				
				' doevents(_PAUSE_CRT) ' Pause CRT CPinticore
				
				
				' doevents(100)
				
				' Mettre a jour la memoire restante
				' Checker le systeme d'eventuels corrections
				''''''''''''CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_ckecker(CPCDOS_INSTANCE.get_id_kernel())
				
				
				
			ElseIF Switch = TRUE Then
				Switch = FALSE
				
				' doevents(200)
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.Update_memoire()
				compteur += 1
				if compteur > 2 Then
					' Mettre a jour l'heure du systeme
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_RTC()
					
					compteur = 0
				End if
			End if
			
		wend
		'  ********* F I N  *********
			
		END SCOPE
		
	function = null
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] ATTENTION, le thread 'Thread_Updater' s'est arrete ! Le systeme peut devenir instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] CAUTION, thread 'Thread_Updater' has been stopped! System can be instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End function

#print * Thread systeme
public function Thread_SYSTEM cdecl Alias "Thread_SYSTEM"(byval thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer

	On local Error Goto Intercept_Error
	
	Dim Etat_Thread 		as uinteger
	Dim EN_VIE 				as Boolean = TRUE
	
	Dim TEMPS_ACTUEL_MIL 	as integer = 1
	Dim TEMPS_ACTUEL_SEC 	as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()
	DIM TEMPS_PRECEDENT_SEC	as Integer = TEMPS_ACTUEL_SEC
	DIM TEMPS_PRECEDENT_MIL	as Integer = 1
	

	while(EN_VIE)
		' Liberer le CPU
		doevents(10)
		

		' Verifier l'etat du thread declare dans CPinti Core
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET Then EN_VIE = FALSE 	' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE Then Continue While		' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		SCOPE
		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
			
			cpinti.gestionnaire_tache.IamInLive()
			
			TEMPS_ACTUEL_MIL += 90
			TEMPS_ACTUEL_SEC = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()
			
			
			' 1 Seconde
			IF TEMPS_ACTUEL_SEC - TEMPS_PRECEDENT_SEC >= 1 Then
				TEMPS_PRECEDENT_SEC = TEMPS_ACTUEL_SEC
				if CPCDOS_INSTANCE.TIMING_1SEC = TRUE Then CPCDOS_INSTANCE.TIMING_1SEC = FALSE Else CPCDOS_INSTANCE.TIMING_1SEC = TRUE
			End if
			
			' 500 millisecondes
			IF TEMPS_ACTUEL_MIL - TEMPS_PRECEDENT_MIL >= 500 Then
				TEMPS_PRECEDENT_MIL = TEMPS_ACTUEL_MIL
				if CPCDOS_INSTANCE.TIMING_500MS = TRUE Then 
					CPCDOS_INSTANCE.TIMING_500MS = FALSE 
				Else 
					CPCDOS_INSTANCE.TIMING_500MS = TRUE
					
				End if
			End if
			

		' ********* DEBUT CODE DU THREAD EN COURS D'EXECUTION *********
		END SCOPE
		End if
	wend
	

	function = null
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Cpcdos] ATTENTION, le thread 'Thread_SYSTEM' s'est arrete ! Le systeme peut devenir instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[Cpcdos] CAUTION, thread 'Thread_SYSTEM' has been stopped! System can be instable.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	End if
	
	CPCDOS_INSTANCE.Fermer_thread(thread_struct.PROC_ID, thread_struct.THREAD_ID, false)
	
	exit function
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
	function = null
end function


#print * Intro
Sub intro()
	' Cette procedure SUB permet d'afficher le logo cpcdos et reste en pause 1 seconde
	Print "                                                         "
	Print "	  _____              _____            			 "
	Print "	 / ____|            |  __ \           			 "
	Print "	| |     _ __   ___  | |  | | ___  ___ 			 "
	Print "	| |    | '_ \ / __| | |  | |/ _ \/ __|			 "
	Print "	| |____| |_) | (__  | |__| | (_) \__ \			 "
	Print "	 \_____| .__/ \___| |_____/ \___/|___/			 "
	Print "	       | |                            			 "
	Print "	       |_|    						             "
	Print "								                     "
	Print "    CPCDOS OSx                                    "
	Print "                       Cree Pour Concevoir Des OS "
	Print "                           Created for develop OS "
	Print " Version :                                        "
	Print "  - Date        : " 		&   _VERSION_DATEV                  
	Print "  - Kernel base : OS" 	& 	_VERSION_MAJEUR & " " & _VERSION_MINEUR
	print "  - CPinti core : " 		& 	_VERSION_CPINTI
	Print "  - CpcdosC+    : " 		&   _VERSION_CCP                    
	Print "  - Console     : " 		&   _VERSION_CONSOLE                
	Print "  - SCI & GUI   : " 		&   _VERSION_SCI     
	
	sleep 1000
end sub

sub cpc_CX_APM_MODE cdecl alias "cpc_CX_APM_MODE" (apm_mode as uinteger)
	CX_APM_MODE = cbyte(apm_mode)
end sub

Sub cpc_COLOR cdecl alias "cpc_COLOR" (police as integer, fond as integer)
	color police, fond : print
End sub

Sub cpc_SCREEN cdecl alias "cpc_SCREEN" (resolution as integer)
	
	if ScreenPtr <> 0 Then
		screen 0
		screen resolution
	End if
	
	' if CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE Then
		' if CPCDOS_INSTANCE.SYSTEME_INSTANCE.test_Resolution(800, 600, 16) = true Then
			' Screen 800, 600, 16
			' Dim image As Any Ptr ' = ImageCreate( 799, 599, RGB(0, 128, 255), 16)
			' Put (0, 0), image, Pset
			' image = CPCDOS_INSTANCE.SYSTEME_INSTANCE.charger_PNG("CRASH.PNG", 16, 0)
			' print "PNG OK " & varptr(image)
			' DEBUG("PNG OK " & varptr(image), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			' Put (0, 0), image, Alpha
			' print "PNG OK 2"
			' DEBUG("PNG OK 2 ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			' ImageDestroy image
			' print "Destroy OK"
			' DEBUG("Destroy OK", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		' End if
	' End if
	
	
End sub



