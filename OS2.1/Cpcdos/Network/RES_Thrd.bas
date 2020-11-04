' Reseau TCP / UDP Client / Serveur
' Par Sebastien FAVIER

' Creation 		26-01-2017
' Mise a jour 	10-05-2017

' 09-05-2017	: CORRECTION de la confusion du thread SERVEUR et CLIENT qui affiche "crée" alors que non
' 14-02-2017	: Finalisation du thread Client

#include "Cpcdos.bi"

#print * Threads parentaux Client TCP et UDP
Function Client_THREAD cdecl Alias "Client_THREAD" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	
	' ============= PUBLIC VARIABLES =============
	Dim _PID as uinteger			= thread_struct.PROC_ID
	Dim _TID as uinteger			= thread_struct.THREAD_ID
	Dim _USERID as uinteger			= thread_struct.USER_ID
	Dim _OSID as uinteger			= thread_struct.OS_ID
	Dim _KERNEL_ID as uinteger		= thread_struct.KERNEL_ID
	
	' **** Recuperer les arguments d'entre ****
	Dim _PORT 		as integer 			= cast(integer			, thread_struct.ARG_1)
	Dim _Adresse	as string 			= *cast(CONST String ptr, thread_struct.ARG_2)
	Dim _TypeClient as integer 			= cast(integer			, thread_struct.ARG_3)
	Dim _index_clt	as integer 			= cast(integer			, thread_struct.ARG_4)
	Dim _ARG_5 		as integer 			= 0
	
	dim Nouvelle_Cle as double = CPCDOS_INSTANCE.Generer_cle(_KERNEL_ID, _OSID, _USERID, _PID, _TID)
	
	' ============= PUBLIC VARIABLES =============
	
	Dim Etat_Thread as uinteger
	Dim EN_VIE as boolean = true
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
			' ********* D E B U T  *********

			CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0) = 0
		
			Dim Code_Retour as integer
			
			' Convertir l'IP en CHAR
			Dim AdresseIP_CHAR as CONST ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(_Adresse)
			
			if _TypeClient = CPCDOS_INSTANCE._CLIENT_TCP Then
				' Demarrer la connexion client TCP
				Code_Retour = cpinti.net.cpinti_client(AdresseIP_CHAR, _PORT, _TID, CPCDOS_INSTANCE._CLIENT_TCP)
				
			elseif _TypeClient = CPCDOS_INSTANCE._CLIENT_UDP Then
				' Demarrer la connexion client UDP
				Code_Retour = cpinti.net.cpinti_client(AdresseIP_CHAR, _PORT, _TID, CPCDOS_INSTANCE._CLIENT_UDP)
				
			End IF

			CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(AdresseIP_CHAR)
			
			if Code_Retour < 0 Then
				CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0) = Code_Retour ' Retour
			End if
			
			' Liberer l'index du tableau
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(_index_clt) = 0
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_TID(_index_clt) = 0
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_IP(_index_clt) = ""
			
			' Supprimer la stack avec son numero de port
			' Dim null_str as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(1)
			' cpinti.cpinti_GEST_BUFF_c(_TID, CPCDOS_INSTANCE._STACK_SUPPRIMER, null_str)
			' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(null_str)
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[Reseau] Client " & _TypeClient & " [" & _Adresse & ":" & _PORT & "] ID:" & _TID & " s'est arrete avec le code '" & Code_Retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[Network] " & _TypeClient & " client [" & _Adresse & ":" & _PORT & "] ID:" & _TID & " has been stopped with code '" & Code_Retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
			End if
			
			
			EN_VIE = false

		'  ********* F I N  *********
			
		END SCOPE
		end if
		
		doevents(0)
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function

Function Serveur_THREAD cdecl Alias "Serveur_THREAD" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	
	' ============= PUBLIC VARIABLES =============
	Dim _PID as uinteger			= thread_struct.PROC_ID
	Dim _TID as uinteger			= thread_struct.THREAD_ID
	Dim _USERID as uinteger			= thread_struct.USER_ID
	Dim _OSID as uinteger			= thread_struct.OS_ID
	Dim _KERNEL_ID as uinteger		= thread_struct.KERNEL_ID
	
	' **** Recuperer les arguments d'entre ****
	Dim _NombreClients 	as integer 		= cast(integer			, thread_struct.ARG_1)
	Dim _NumPort 		as uinteger 	= cast(uinteger			, thread_struct.ARG_2)
	Dim _index_srv 		as integer 		= cast(integer 			, thread_struct.ARG_3)
	Dim _TypeServeur 	as integer 		= cast(integer 			, thread_struct.ARG_4)
	Dim _ARG_5 			as integer 		= cast(integer 			, thread_struct.ARG_5)
	
	dim Nouvelle_Cle as double = CPCDOS_INSTANCE.Generer_cle(_KERNEL_ID, _OSID, _USERID, _PID, _TID)
	
	' ============= PUBLIC VARIABLES =============

	
	Dim Etat_Thread as uinteger
	Dim EN_VIE 		as Boolean = TRUE
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
			' ********* D E B U T  *********

			' On redonne la main aux prochaines creations
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) = 0
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_MODE(0) = 0
			
			doevents(50000)
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[Reseau] Appel CPinti Core ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[Network] CPinti core calling ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
			End if
			
			Dim Code_Retour as integer
			' **** SERVEUR T C P ****
			if _TypeServeur = CPCDOS_INSTANCE._SRV_TCP Then
				'												NoPort uint, NbClient int
				Code_Retour = cpinti.net.cpinti_serveur(_NumPort, _NombreClients, _PID, CPCDOS_INSTANCE._SRV_TCP)
			
			' **** SERVEUR C P C D O S C +  ****
			elseif _TypeServeur = CPCDOS_INSTANCE._SRV_TCP_CCP Then
				'												NoPort uint, NbClient int
				Code_Retour = cpinti.net.cpinti_serveur(_NumPort, _NombreClients, _PID, CPCDOS_INSTANCE._SRV_TCP_CCP)
			
			' **** SERVEUR  T E L N E T  ****
			elseif _TypeServeur = CPCDOS_INSTANCE._SRV_TCP_TELNET Then
				'												NoPort uint, NbClient int
				Code_Retour = cpinti.net.cpinti_serveur(_NumPort, _NombreClients, _PID, CPCDOS_INSTANCE._SRV_TCP_TELNET)
					
			' **** SERVEUR  E C H O  ****
			elseif _TypeServeur = CPCDOS_INSTANCE._SRV_TCP_ECHO Then
				'												NoPort uint, NbClient int
				Code_Retour = cpinti.net.cpinti_serveur(_NumPort, _NombreClients, _PID, CPCDOS_INSTANCE._SRV_TCP_ECHO)
					
			
			' **** SERVEUR U D P ****
			ElseIf _TypeServeur = CPCDOS_INSTANCE._SRV_UDP Then
				'												NoPort uint, NbClient int
				Code_Retour = cpinti.net.cpinti_serveur(_NumPort, _NombreClients, _PID, CPCDOS_INSTANCE._SRV_UDP)
				
			' **** SERVEUR  E C H O  U D P****
			elseif _TypeServeur = CPCDOS_INSTANCE._SRV_UDP_ECHO Then
				'												NoPort uint, NbClient int
				Code_Retour = cpinti.net.cpinti_serveur(_NumPort, _NombreClients, _PID, CPCDOS_INSTANCE._SRV_UDP_ECHO)
			else
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[ERREUR INTERNE] Type de serveur '" & _TypeServeur & "' n'existe pas.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[INTERNAL ERROR] Server type '" & _TypeServeur & "' not exist.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
			End if
			
			if Code_Retour < 0 Then
				CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) = Code_Retour ' Erreur
				CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_MODE(0) = 0
			End if
			
			
			' Liberer l'index du tableau
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(_index_srv) = 0
			CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_MODE(_index_srv) = 0
			
			' Supprimer la stack avec son numero de port
			' Dim null_str as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(1)
			' cpinti.cpinti_GEST_BUFF_c(_NumPort, CPCDOS_INSTANCE._STACK_SUPPRIMER, null_str)
			' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(null_str)
			
			IF _ARG_5 > 0 Then
				' Si le mode admin a ete lance, on ferme le thread			
				CPCDOS_INSTANCE.Fermer_thread(_PID, _ARG_5, false)
			End if
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[Reseau] Serveur " & _TypeServeur & " PORT:" & _NumPort & " s'est arrete avec le code '" & Code_Retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[Network] " & _TypeServeur & " server PORT:" & _NumPort & " has been stopped with code '" & Code_Retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
			End if
			
			EN_VIE = false
			
		

		'  ********* F I N  *********
			
		END SCOPE
		end if
		
		doevents(0)
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function



