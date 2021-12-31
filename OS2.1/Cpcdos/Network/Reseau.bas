' Reseau TCP / UDP Client / Serveur
' Par Sebastien FAVIER

' Creation 		25-01-2017
' Mise a jour 	05-11-2017

' 05-11-2017	: Modification du niveau de publicite des variables CPC_SYS.NET de 5 a 3
' 11-05-2017	: Readaptation du client et serveur reseau pour le retour de NON CONNEXION
' 11-04-2017	: Adaptation pour creation de serveur d'ECHO.
' 07-04-2017	: Correction bug si la trame comportait le signe '=' le module essayait donc d'envoyer un #CLT
' 08-03-2017	: Correction bugs de PID & Cle + Retour valeur @# DANS les fonctions
' 04-02-2017	: Ajout de l'attente ou attente en millisecondes d'une reception requete
' 24-02-2017	: Amelioration des erreurs serveur/ client/
' 23-02-2017	: _PID --> _TID
' 14-02-2017	: Connexion client + Envoyer + recevoir
' 13-02-2017	: Possibilite d'envoyer a un socket precis deja connecte

#include "cpcdos.bi"


#print
#print ============ Reseau ==============

#print * Ping
Function _RESEAU_Cpcdos_OSx__.Ping(AdresseDistant as String, _CLE_ as double) as integer
	' Permet de pinger une machine distante
	'	0	: OK
	' 	-1 	: La machine n'a pas repondu
	'	-2	: Erreur de configuration du socket
	'	-3	: Impossible de creer un socket (Driver manquant?)
	'	-4	: Erreur de binding
	'	-5	: Ecoute impossible
	'	-6	: Erreur de descripteur de fichier (select())
	'	-7	: Erreur de lecture de socket (ERRPIPE)
	'  	-8	: Impossible de resoudre le nom (DNS)
	'	-9	: Memoire insuffisante
	'	-10 : Erreur lors de la creation de la trame ICMP
	'	-11 : Pas de reponse SEND
	'	-12 : Erreur de transmission
	
	' Recuperer le message ICMP
	CPCDOS_INSTANCE._PING_MESSAGE = UCASE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.NET.ICMP", 3, _CLE_))

	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
	
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then

			' Envoyer un ping depuis CPinti Core
			dim resultats as integer = cpinti.net.cpinti_ping_icmp(StrPtr(AdresseDistant), StrPtr(CPCDOS_INSTANCE._PING_MESSAGE), 0)
		
			Function = resultats
		Else
			Function = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		Function = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
	
End Function

#print * HTTP
Function _RESEAU_Cpcdos_OSx__.get_http(AdresseDistant as String, NoPort as uinteger, URL as String, Fichier_TEMP as String, AvecLaHEAD as boolean, _CLE_ as double, RetourVAR as String, VAR_PROGRESSION as String, VAR_VITESSE as String, VAR_TAILLE as string, VAR_SOCKET as String) as String
	' Permet de faire une requete GET directement pour obtenir les donnees depuis un serveur
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	Fichier				: Fichier a GET
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	CPCDOS_INSTANCE._HTTP_VERSION = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.NET.HTTP", 5, _CLE_)
	CPCDOS_INSTANCE._USER_AGENT = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.NET.USERAGENT", 5, _CLE_)
	
	
	Dim Requete as String = "GET /" & URL & " " & CPCDOS_INSTANCE._HTTP_VERSION & CRLF & _
							"Host: " & AdresseDistant & CRLF & "User-Agent: " & CPCDOS_INSTANCE._USER_AGENT & CRLF & _
							"Connection: close" & CRLF & CRLF
											
	Dim Reception as String 
	
	Reception = Requete_http(AdresseDistant, NoPort, Requete, AvecLaHEAD, Fichier_TEMP, _CLE_, RetourVAR, VAR_PROGRESSION, VAR_VITESSE, VAR_TAILLE, VAR_SOCKET)

	
	' Recuperer uniquement le contenu apres l'HEADER
	' Reception = Mid(Reception, Instr(Reception, CRLF & CRLF) + LEN(CRLF & CRLF))
	
	get_http = Reception

	
End function

Function _RESEAU_Cpcdos_OSx__.head_http(AdresseDistant as String, NoPort as uinteger, URL as String, Fichier_TEMP as String, _CLE_ as double, RetourVAR as String) as String
	' Permet de faire une requete HEAD directement pour obtenir les donnees depuis un serveur
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	Fichier				: Fichier a GET
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	CPCDOS_INSTANCE._USER_AGENT = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.NET.USERAGENT", 4, _CLE_)
	CPCDOS_INSTANCE._HTTP_VERSION = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_SYS.NET.HTTP", 4, _CLE_)
	
	Dim Requete as String = "HEAD " & URL & " " & CPCDOS_INSTANCE._HTTP_VERSION & CRLF & _
							"Host: " & AdresseDistant & CRLF & "User-Agent: " & CPCDOS_INSTANCE._USER_AGENT & CRLF & _
							"Connection: close" & CRLF & CRLF
							
	Dim Reception as String = Requete_http(AdresseDistant, NoPort, Requete, TRUE, Fichier_TEMP, _CLE_, RetourVAR, "", "", "", "")

	head_http = Reception

End function

Function _RESEAU_Cpcdos_OSx__.Requete_http(AdresseDistant as String, NoPort as uinteger, Requete as String, Header as boolean, Fichier_TEMP as String, _CLE_ as double, RetourVAR as String, VAR_PROGRESSION as String, VAR_VITESSE as String, VAR_TAILLE as string, VAR_SOCKET as String) as String 
	' Permet de faire une requete GET directement pour obtenir les donnees depuis un serveur
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	Requete				: Commande HTTP
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			
			Dim RETOUR_HTTP as String
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[RESEAU] Serveur : " & chr(34) & AdresseDistant & ":" & NoPort & chr(34) & CRLF & "Requete HTTP : " & chr(34) & Requete & chr(34) & "." & CRLF & "Cache local : " & chr(34) & Fichier_TEMP & chr(34) & ".",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[NETWORK] Server : " & chr(34) & AdresseDistant & ":" & NoPort & chr(34) & CRLF & "HTTP request : " & chr(34) & Requete & chr(34) & "." & CRLF & "Local cache : " & chr(34) & Fichier_TEMP & chr(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			End if
			
			' AVANT
			' CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("@#http_get_RETOUR /F:http_get(" & AdresseDistant & "," & NoPort & "," & Requete & "," & Header & "," & Fichier_TEMP & "," & VAR_PROGRESSION & "," & VAR_VITESSE & "," & VAR_TAILLE & "," & VAR_SOCKET & ")", _CLE_, 2, 0, RetourVAR)
			
			' Recuperer le numero de PID
			Dim Auth_PID as uinteger = CPCDOS_INSTANCE.get_id_PID(_CLE_)

			' Se connecter au serveur
			dim Tcp_connexion_Result as integer = CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP(AdresseDistant, NoPort, Auth_PID, RetourVAR)
			dim Tcp_send_result as integer = 0
			
			if Tcp_connexion_Result > 1 Then
				
				DEBUG("[RESEAU] Arguments File '" & Fichier_TEMP & "' Progression '" & VAR_PROGRESSION & "' Speed '" & VAR_VITESSE & "' Size '" & VAR_TAILLE & "' Socket '" & VAR_SOCKET & "'",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				
				if Len(Fichier_TEMP) > 1 	Then Tcp_send_result = CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Client("#CFG_TMPFILE " & Fichier_TEMP, NoPort, Tcp_connexion_Result, RetourVAR)
				if Len(VAR_PROGRESSION) > 1 Then Tcp_send_result = CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Client("#CFG_VAR_POURCENT " & VAR_PROGRESSION, NoPort, Tcp_connexion_Result, RetourVAR)
				if Len(VAR_VITESSE) > 1 	Then Tcp_send_result = CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Client("#CFG_VAR_SPEED " & VAR_VITESSE, NoPort, Tcp_connexion_Result, RetourVAR)
				if Len(VAR_TAILLE) > 1 		Then Tcp_send_result = CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Client("#CFG_VAR_SIZE " & VAR_TAILLE, NoPort, Tcp_connexion_Result, RetourVAR)
				if Len(VAR_SOCKET) > 1 		Then Tcp_send_result = CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Client("#CFG_VAR_SOCKET " & VAR_SOCKET, NoPort, Tcp_connexion_Result, RetourVAR)
				
				Tcp_send_result = CPCDOS_INSTANCE.RESEAU_INSTANCE.ENVOYER_Client(Requete, NoPort, Tcp_connexion_Result, RetourVAR)
			
				RETOUR_HTTP = "" & Tcp_send_result
			else
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("Requete_http() Erreur, impossible de se connecter au serveur.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
				Else
					DEBUG("Requete_http() Error, unable to connect to the server.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
				End if

			end if
			
		
			
			' RETOUR_HTTP = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("http_get_RETOUR", 2, _CLE_)

			Requete_http = RETOUR_HTTP

		Else
			Requete_http = STR(CPCDOS_INSTANCE._DOSBOX) ' Mode DOSBOX
		End if
	ELSE
		Requete_http = STR(CPCDOS_INSTANCE._SANS_Reseau) ' Mode SANS reseau
	End if
End function

#print * Client TCP
Function _RESEAU_Cpcdos_OSx__.Client_TCP(AdresseDistant as String, NoPort as uinteger, _PID as uinteger, RetourVAR as String) as integer
	' Permet de demarrer une instance d'un client TCP
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	' Retourne son TID
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
		
		
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[RESEAU] Demande de demarrage d'un client TCP dans un nouveau thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[NETWORK] Asking for starting TCP client in a new thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			END IF
			
			
			Dim Index_client as integer = 0
			' On place le nouveau numero de port
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Client_TCP_CPCDOS_TID	(Boucle) = 0 Then
				
					this.Client_TCP_CPCDOS_PORT	(0)		 = NoPort
					
					this.Client_TCP_CPCDOS_PORT	(Boucle) = NoPort
					this.Client_TCP_CPCDOS_IP	(Boucle) = AdresseDistant
					
					' Recuperer l'index
					Index_client = Boucle
					exit for
				End if
			Next Boucle
			

			if Index_client > 0 Then	
				Scope
					' On creer le thread
					Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
					INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_CLIENT_TCP_P" & NoPort & "_"
					INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Client_THREAD) 		' PTR
					INSTANCE_STRUCT_THREAD.PROC_ID 	= _PID									' PID uint
					INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()			' ID de l'OS
					INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()	' ID de l'user	
					INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, NoPort)
					INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, @this.Client_TCP_CPCDOS_IP(Index_client))
					INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, CPCDOS_INSTANCE._CLIENT_TCP)
					INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, Index_client)
					INSTANCE_STRUCT_THREAD.ARG_5 	= NULL
					
					' placer le numero de TID
					this.Client_TCP_CPCDOS_TID(Index_client) = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
				End Scope
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[RESEAU] Attente de la fin de l'operation CPinti Core...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					Else
						DEBUG("[NETWORK] Waiting ending CPinti Core operation...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					End if
				END IF

				' Tant que PORT n'est pas = 0 c'est que le thread n'a pas finit d'etre cree
				while(CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0)>2)
					doevents(500000)
				wend
				
				
				' ICI il va y avoir un BUG car si le numero de TID correspond a un no de port de SERVEUR .. oups!
				'   ou un autre TID dans un autre thread.. oups aussi!
				
				' Initialiser la stack avec son numero de TID pour creer une nouvelle instance
				' Dim null_str as CONST ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(1)
				'''''cpinti.cpinti_GEST_BUFF_c(this.Client_TCP_CPCDOS_TID(Index_client), CPCDOS_INSTANCE._STACK_INITIALISER, null_str)
				' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(null_str)
				
				
				' Et le renvoyer
				Client_TCP = int(this.Client_TCP_CPCDOS_TID(Index_client))
				
				if CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0) = 0 Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Thread #" & this.Client_TCP_CPCDOS_TID(Index_client) & " Client TCP '" & AdresseDistant & ":" & NoPort & "' en cours d'execution!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Thread #" & this.Client_TCP_CPCDOS_TID(Index_client) & " TCP Client '" & AdresseDistant & ":" & NoPort & "' in execution!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF
					Client_TCP = this.Client_TCP_CPCDOS_TID(Index_client)
				Else
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Thread #" & this.Client_TCP_CPCDOS_TID(Index_client) & " Client TCP '" & AdresseDistant & ":" & NoPort & "' est en arret! '" & CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Thread #" & this.Client_TCP_CPCDOS_TID(Index_client) & " TCP Client '" & AdresseDistant & ":" & NoPort & "' is in stopping! '" & CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF
					Client_TCP = CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0)
					CPCDOS_INSTANCE.RESEAU_INSTANCE.Client_TCP_CPCDOS_PORT(0) = 0
				End if
				
			ELSE
				Client_TCP = -12 ' Impossible de creer d'autres serveurs
			end if
		Else
			Client_TCP = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		Client_TCP = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function

#print * Client UDP
Function _RESEAU_Cpcdos_OSx__.Client_UDP(AdresseDistant as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as uinteger
	' Permet de demarrer une instance d'un client UDP
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread

	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			' Retourne : voir code d'erreurs client.cpp
			
			DEBUG("[RESEAU] Obtention (si possible) des donnees du client TCP TID:" & _TID & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
			Print "Client_UDP(): " & AdresseDistant & ":" & NoPort & " ---> PROBLEMS FOR THIS VERSION "
			
			Client_UDP = 0
		Else
			Client_UDP = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		Client_UDP = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function	

Function _RESEAU_Cpcdos_OSx__.RECEVOIR_Client(NoPort as uinteger, _TID as uinteger, RetourVAR as String, Attendre as Boolean, TempsAttente as double) as integer
		' Permet de recuperer le contenu du buffer
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			dim Retour_tcpsrv_PTR as ZString ptr
			Dim Retour_tcpsrv as string
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[RESEAU] Obtention (si possible) des donnees du client TCP TID:" & _TID & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[NETWORK] Getting (if possible) data TCP client TID:" & _TID & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			end if
			
			Dim Index_client as integer = 0
			' On cherche le client dans le tableau
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Client_TCP_CPCDOS_TID(boucle) = _TID Then
					
					NoPort = this.Client_TCP_CPCDOS_PORT(boucle)
					' Recuperer l'index
					Index_client = Boucle
					exit for
				End if
			Next Boucle
			
			IF Index_client > 0 Then
				
				Dim EN_VIE as Boolean = TRUE
			
				Dim NombreMillisecondes as double = 0
				Dim Donnees as String
				
				Dim PTR_DONNEES as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(CPCDOS_INSTANCE._TAILLE_MAX_BUFFER_UNIVERSEL)

				IF Attendre = TRUE Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						Dim Ajout as String
						IF TempsAttente > 0 Then Ajout = "(" & TempsAttente & " ms) "
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Attente de reception " & Ajout & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Waiting reception " & Ajout & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					End if
				End if
				
				While(EN_VIE)
					' Et on envoie le tout au buffer
					cpinti.cpinti_GEST_BUFF_c(_TID, CPCDOS_INSTANCE._STACK_EXTRACT_POUR_CPCDOS, PTR_DONNEES)
					
					Donnees = *PTR_DONNEES
					

					if Len(Donnees) < 1 Then
						IF Attendre = False Then
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[RESEAU] Buffer du serveur TCP " & NoPort & " vide", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
								Else
									DEBUG("[NETWORK] Empty buffer TCP server " & NoPort, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
								End if
							End if
						End if
					else
						DEBUG(Donnees, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
					End if
					
					IF Attendre = TRUE Then
						' Attendre la reception de donnees 
						
						IF NOT Donnees = "" Then EN_VIE = FALSE
						
						IF TempsAttente <= 0 Then
							doevents(100000)
						Else
							' Attendre pendant x millisecondes
							NombreMillisecondes = NombreMillisecondes + 116
							
							' Pause de 1 ms
							doevents(900)
							
							' Si le temps est depasse, alors on quitte!
							IF NombreMillisecondes >= TempsAttente Then EN_VIE = FALSE
						End if
					Else
						' N'a pas a attendre, on quitte!
						EN_VIE = FALSE
					End if
					
				Wend
				
				' Desallocation memoire de la trame
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(PTR_DONNEES)
				
				RECEVOIR_Client = 0
			else
				RECEVOIR_Client = -13 ' TID introuvable
			end if

		Else
			RECEVOIR_Client = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		RECEVOIR_Client = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function	

Function _RESEAU_Cpcdos_OSx__.ENVOYER_Client(DONNEES as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
	' Permet de placer du contenu dans le buffer
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			Dim Retour_tcpsrv as string
			dim Retour_tcpsrv_PTR as ZString ptr
			
			
			
			Dim Index_client as integer = 0
			' On cherche le client dans le tableau
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Client_TCP_CPCDOS_TID(boucle) = _TID Then
					
					NoPort = this.Client_TCP_CPCDOS_PORT(boucle)
					' Recuperer l'index
					Index_client = Boucle
					exit for
				End if
			Next Boucle
			
			
			IF Index_client > 0 Then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[RESEAU] Envoie des donnees au serveur TCP PORT:" & NoPort & " (" & LEN(DONNEES) & " octets) ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					Else
						DEBUG("[NETWORK] Sending data to TCP server PORT:" & NoPort  & " (" & LEN(DONNEES) & " bytes) ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					End if
				End if

				Dim PTR_DONNEES as ZString PTR
				if DONNEES = "#STOP" Then
					' Stopper le serveur
				ElseIf Instr(DONNEES, "#CFG_TMPFILE ") > 0 then
					' Configurer une memoire tempon morte
					
				Else
					DONNEES = "#SRV " & DONNEES
				END IF

				
				
				PTR_DONNEES = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(DONNEES)

				' Et on envoie le tout au buffer
				if cpinti.cpinti_GEST_BUFF_c(_TID, CPCDOS_INSTANCE._STACK_STOCKER_POUR_SERVEUR, PTR_DONNEES) = 0 Then
					DEBUG("#DECO", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
				End if
				
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(PTR_DONNEES)	
				ENVOYER_Client = 0
			else
				ENVOYER_Client = -13 ' TID introuvable
			end if
		Else
			ENVOYER_Client = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		ENVOYER_Client = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function

Function _RESEAU_Cpcdos_OSx__.STOP_Client(AdresseIP as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
	' Permet de stopper un client
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[RESEAU] Demande deconnexion d'une instance de client TCP (TID:" & _TID & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
			Else
				DEBUG("[NETWORK] Asking for deconnecting a TCP (TID:" & _TID & ") client instance connected " & AdresseIP & ":" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
			End if
			
			ENVOYER_Client("#STOP", NoPort, _TID, RetourVAR)
			
			STOP_Client = 0
		Else
			STOP_Client = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		STOP_Client = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function

#print * Serveur TCP
Function _RESEAU_Cpcdos_OSx__.Serveur_TCP(NoPort as uinteger, NombreClients as integer, _TID as uinteger, Mode_srv as integer, RetourVAR as String) as integer
	' Permet de demarrer une instance d'un serveur TCP
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	' Retourne : voir code d'erreurs serveur.cpp
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			if NoPort < 1 then exit function
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[RESEAU] Demande de demarrage d'un serveur TCP dans un nouveau thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[NETWORK] Asking for starting TCP server in a new thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			END IF
			
			' Verifier que le port est pas deja utilise
			for boucle as integer = 0 to this._MAX_SRV
				if this.Serveur_TCP_CPCDOS_PORT(Boucle) = NoPort Then
					Serveur_TCP = -11 ' PORT DEJA UTILISE
					Exit function
				End if
			Next boucle
			
			Dim Index_srv as integer = 0
			' On place le nouveau numero de port
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Serveur_TCP_CPCDOS_PORT(Boucle) = 0 Then
					this.Serveur_TCP_CPCDOS_PORT(Boucle) = NoPort
					this.Serveur_TCP_CPCDOS_MODE(Boucle) = Mode_srv
					
					' Recuperer l'index
					Index_srv = Boucle
					exit for
				End if
			Next Boucle
			
			if Index_srv > 0 Then
				' Initialiser la stack avec son numero de port pour creer une nouvelle instance
				
				' L'index '0' est publique, si un probleme perciste, faire sorte d'attendre ici
				this.Serveur_TCP_CPCDOS_PORT(0) = NoPort
				this.Serveur_TCP_CPCDOS_MODE(0) = Mode_srv
				' On creer une instance de TABLEAU_THREAD_DONNEES qui va permettre
				'  de placer les donnees necessaire pour creer le thread
				
				' Heberger 2 thread dans le processus (ADMIN si demande, et serveur TCP)
				DIM TID_ADMIN as uinteger = 0
				Dim TID_Server as uinteger

				if Mode_srv = CPCDOS_INSTANCE._SRV_TCP_CCP Then ' CCP ADMIN
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Creation d'un thread d'administration a distance...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Creating remote console thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF

					Scope
						Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
						INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_SERVEUR_CCP-ADMIN_TCP_P" & NoPort & "_"
						INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @THREAD__MAIN_Console) 		' PTR
						INSTANCE_STRUCT_THREAD.PROC_ID	= _TID										' PID uint
						INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()				' ID de l'OS
						INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()		' ID de l'user
						INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, 0)
						INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, NoPort)
						INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, 0)
						INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, CPCDOS_INSTANCE._SRV_TCP_TELNET)
						INSTANCE_STRUCT_THREAD.ARG_5 	= cast(any ptr, 0)
						
						TID_ADMIN = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					End Scope
					
					doevents(0)
					
					 Scope
						Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
						INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_SERVER_TELNET" & NoPort & "_"
						INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Serveur_THREAD) 		' PTR
						INSTANCE_STRUCT_THREAD.PROC_ID	= _TID									' PID uint
						INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()			' ID de l'OS
						INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()	' ID de l'user
						INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, NombreClients)
						 INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, NoPort)
						 INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, Index_srv)
						 INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, CPCDOS_INSTANCE._SRV_TCP_TELNET)
						 INSTANCE_STRUCT_THREAD.ARG_5 	= cast(any ptr, TID_ADMIN)

						 TID_Server = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					 End Scope
					
					
				elseif Mode_srv = CPCDOS_INSTANCE._SRV_TCP_TELNET Then ' ADMIN TELNET
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Creation d'un thread d'administration TELNET a distance...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Creating TELNET remote console thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF

					Scope
						' Thread console TELNET
						Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
						INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_CONSOLE_TELNET-ADMIN_TCP_P" & NoPort & "_"
						INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @THREAD__MAIN_Console) 		' PTR
						INSTANCE_STRUCT_THREAD.PROC_ID	= _TID										' PID uint
						INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()				' ID de l'OS
						INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()		' ID de l'user
						INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, 0)
						INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, NoPort)
						INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, 0)
						INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, CPCDOS_INSTANCE._SRV_TCP_TELNET)
						INSTANCE_STRUCT_THREAD.ARG_5 	= cast(any ptr, 0)
						
						TID_ADMIN = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					End Scope
					
					' doevents(500)
					
					Scope
						Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
						INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_SERVER_TELNET" & NoPort & "_"
						INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Serveur_THREAD) 		' PTR
						INSTANCE_STRUCT_THREAD.PROC_ID	= _TID									' PID uint
						INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()			' ID de l'OS
						INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()	' ID de l'user
						INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, NombreClients)
						INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, NoPort)
						INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, Index_srv)
						INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, CPCDOS_INSTANCE._SRV_TCP_TELNET)
						INSTANCE_STRUCT_THREAD.ARG_5 	= cast(any ptr, TID_ADMIN)

						TID_Server = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					End Scope
					
					
				elseif Mode_srv = CPCDOS_INSTANCE._SRV_TCP_ECHO Then ' ECHO TCP
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Creation d'un serveur d'Echo..", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Creating Echo server...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF
					
					Scope
						Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
						INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_SERVEUR_ECHO_TCP_P" & NoPort & "_"
						INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Serveur_THREAD) ' PTR
						INSTANCE_STRUCT_THREAD.PROC_ID	= _TID							' PID uint
						INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()		' ID de l'OS
						INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()	' ID de l'user
						INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, NombreClients)
						INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, NoPort)
						INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, Index_srv)
						INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, CPCDOS_INSTANCE._SRV_TCP_ECHO)
						INSTANCE_STRUCT_THREAD.ARG_5 	= cast(any ptr, 0)

						
						TID_Server = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					End Scope
					
				
				Else ' Simple serveur TCP
				
				
					Scope
						Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
						INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_SERVEUR_TCP_P" & NoPort & "_"
						INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Serveur_THREAD) ' PTR
						INSTANCE_STRUCT_THREAD.PROC_ID	= _TID							' PID uint
						INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()		' ID de l'OS
						INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()	' ID de l'user
						INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, NombreClients)
						INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, NoPort)
						INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, Index_srv)
						INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, CPCDOS_INSTANCE._SRV_TCP)
						INSTANCE_STRUCT_THREAD.ARG_5 	= cast(any ptr, 0)

						
						TID_Server = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
					End Scope
				End if

				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[RESEAU] Attente de la fin de l'operation CPinti Core...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					Else
						DEBUG("[NETWORK] Waiting ending CPinti Core operation...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					End if
				END IF

				' Tant que PORT n'est pas = 0 c'est que le thread n'a pas finit d'etre cree
				while(CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0)>2)
					doevents(500000)
				wend

				doevents(500000)
				
				if CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) = 0 Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Thread #" & TID_Server & " Serveur TCP 'localhost:" & NoPort & "' en cours d'execution!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Thread #" & TID_Server & " TCP server 'localhost:" & NoPort & "' in execution!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF
					Serveur_TCP = 0
				Else
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Thread #" & TID_Server & " Serveur TCP 'localhost:" & NoPort & "' est en arret! '" & CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Thread #" & TID_Server & " TCP server 'localhost:" & NoPort & "' is in stopping! '" & CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					END IF
					Serveur_TCP = CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0)
					CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0) = 0
				End if
				
			Else
				 Serveur_TCP = -12 ' Impossible de creer d'autres serveurs
			End if
		Else
			Serveur_TCP = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		Serveur_TCP = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function

#print * Serveur UDP
Function _RESEAU_Cpcdos_OSx__.Serveur_UDP(NoPort as uinteger, NombreClients as integer, _TID as uinteger, RetourVAR as String) as integer
	' Permet de demarrer une instance d'un serveur UDP
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	' Retourne : voir code d'erreurs serveur.cpp
	
		' Permet de demarrer une instance d'un serveur TCP
	'	AdresseDistant		: Adresse du serveur
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	' Retourne : voir code d'erreurs serveur.cpp
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			if NoPort < 1 then exit function
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[RESEAU] Demande de demarrage d'un serveur TCP dans un nouveau thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[NETWORK] Asking for starting TCP server in a new thread...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			END IF
			
			' Verifier que le port est pas deja utilise
			for boucle as integer = 0 to this._MAX_SRV
				if this.Serveur_TCP_CPCDOS_PORT(Boucle) = NoPort Then
					Serveur_UDP = -11 ' Port deja utilise
					Exit function
				End if
			Next boucle
			
			Dim Index_srv as integer = 0
			' On place le nouveau numero de port
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Serveur_TCP_CPCDOS_PORT(Boucle) = 0 Then
					this.Serveur_TCP_CPCDOS_PORT(Boucle) = NoPort
					this.Serveur_TCP_CPCDOS_MODE(Boucle) = 3 ' UDP = 3 et C'EST TOUT !
					
					' Recuperer l'index
					Index_srv = Boucle
					exit for
				End if
			Next Boucle
			
			if Index_srv > 0 Then
				' Initialiser la stack avec son numero de port pour creer une nouvelle instance
				Dim null_str as CONST ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(1)
				''''''cpinti.cpinti_GEST_BUFF_c(NoPort, CPCDOS_INSTANCE._STACK_INITIALISER, null_str)
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(null_str)
				
				' L'index '0' est publique, si un probleme perciste, faire sorte d'attendre ici
				this.Serveur_TCP_CPCDOS_PORT(0) = NoPort
				this.Serveur_TCP_CPCDOS_MODE(0) = 3 ' UDP = 3 et C'EST TOUT !
				' On creer une instance de TABLEAU_THREAD_DONNEES qui va permettre
				'  de placer les donnees necessaire pour creer le thread
				
				Dim TID_Server as uinteger
				Scope
					Dim INSTANCE_STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__
					INSTANCE_STRUCT_THREAD.Nom 		= "_CPCDOS_SERVEUR_UDP_P" & NoPort & "_"
					INSTANCE_STRUCT_THREAD.Fonction = cast(any ptr, @Serveur_THREAD) ' PTR
					INSTANCE_STRUCT_THREAD.PROC_ID	= _TID							' PID uint
					INSTANCE_STRUCT_THREAD.OS_ID	= CPCDOS_INSTANCE.get_id_OS()		' ID de l'OS
					INSTANCE_STRUCT_THREAD.USER_ID	= CPCDOS_INSTANCE.get_id_Utilisateur()	' ID de l'user
					INSTANCE_STRUCT_THREAD.ARG_1 	= cast(any ptr, @NombreClients)
					INSTANCE_STRUCT_THREAD.ARG_2 	= cast(any ptr, @NoPort)
					INSTANCE_STRUCT_THREAD.ARG_3 	= cast(any ptr, @Index_srv)
					INSTANCE_STRUCT_THREAD.ARG_4 	= cast(any ptr, @"UDP")
					INSTANCE_STRUCT_THREAD.ARG_5 	= NULL
					
					
					'''''TID_Server = CPCDOS_INSTANCE.Creer_thread(INSTANCE_STRUCT_THREAD)
				End Scope
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[RESEAU] Attente de la fin de l'operation CPinti Core...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					Else
						DEBUG("[NETWORK] Waiting ending CPinti Core operation...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					End if
				END IF

				' Tant que PORT n'est pas = 0 c'est que le thread n'a pas finit d'etre cree
				' while(CPCDOS_INSTANCE.RESEAU_INSTANCE.Serveur_TCP_CPCDOS_PORT(0)>1)
					' doevents(500000)
				' wend

				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[RESEAU] Thread #" & TID_Server & " Serveur TCP 'localhost:" & NoPort & "' en cours d'execution!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					Else
						DEBUG("[NETWORK] Thread #" & TID_Server & " TCP server 'localhost:" & NoPort & "' in execution!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					End if
				END IF
				
				Serveur_UDP = 0
			Else
				Serveur_UDP = -12 ' Plus de places
			End if
		Else
			Serveur_UDP = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		Serveur_UDP = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function

Function _RESEAU_Cpcdos_OSx__.RECEVOIR_Serveur(NoPort as uinteger, _TID as uinteger, RetourVAR as String, Attendre as Boolean, TempsAttente as double) as integer
	' Permet de recuperer le contenu du buffer
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			dim Retour_tcpsrv_PTR as ZString ptr
			Dim Retour_tcpsrv as string
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[RESEAU] Obtention (si possible) des donnees du serveur TCP PORT:" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[NETWORK] Getting (if possible) data TCP server PORT:" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			end if
			
			Dim Index_srv as integer = 0
			' On place le nouveau numero de port
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Serveur_TCP_CPCDOS_PORT(Boucle) = NoPort Then

					' Recuperer l'index
					Index_srv = Boucle
					exit for
				End if
			Next Boucle
			
			IF Index_srv > 0 Then
				Dim Donnees as String
				Dim PTR_DONNEES as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString_0(CPCDOS_INSTANCE._TAILLE_MAX_BUFFER_UNIVERSEL)
				
				IF Attendre = TRUE Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then	
						Dim Ajout as String
						IF TempsAttente > 0 Then Ajout = "(" & TempsAttente & " ms) "
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[RESEAU] Attente de reception " & Ajout & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						Else
							DEBUG("[NETWORK] Waiting reception " & Ajout & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
						End if
					End if
				End if
				
				Dim NombreMillisecondes as double
				
				Dim EN_VIE as boolean = TRUE
				
				While(EN_VIE)
					' Et on envoie le tout au buffer
					cpinti.cpinti_GEST_BUFF_c(NoPort, CPCDOS_INSTANCE._STACK_EXTRACT_POUR_CPCDOS, PTR_DONNEES)
					
					Donnees = *PTR_DONNEES
						

					if Len(Donnees) < 1 Then
						IF Attendre = False Then
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[RESEAU] Buffer du serveur TCP " & NoPort & " vide", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
								Else
									DEBUG("[NETWORK] Empty buffer TCP server " & NoPort, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
								End if
							End if
						End if
					else
						DEBUG(Donnees, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
					End if

					IF Attendre = TRUE Then
						' Attendre la reception de donnees 
						
						IF NOT Donnees = "" Then EN_VIE = FALSE
						
						IF TempsAttente <= 0 Then
							doevents(100000)
						Else
							' Attendre pendant x millisecondes
							NombreMillisecondes = NombreMillisecondes + 116
							
							' Pause de 1 ms
							doevents(900)
							
							' Si le temps est depasse, alors on quitte!
							IF NombreMillisecondes >= TempsAttente Then EN_VIE = FALSE
						End if
					Else
						' N'a pas a attendre, on quitte!
						EN_VIE = FALSE
					End if
					
				Wend
				
				' Desallocation memoire de la trame
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(PTR_DONNEES)
				
				RECEVOIR_Serveur = Index_srv
				
			else
				RECEVOIR_Serveur = -10 ' Port inexistant
			end if
		Else
			RECEVOIR_Serveur = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		RECEVOIR_Serveur = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if

End Function

Function _RESEAU_Cpcdos_OSx__.ENVOYER_Serveur(DONNEES as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
	' Permet de placer les donnees dans le buffer
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread

	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			Dim Retour_tcpsrv as integer
			if NOT RetourVAR = "ADMIN_CCP" OR NOT RetourVAR = "ADMIN_CCP" Then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[RESEAU] Envoie des donnees au serveur TCP PORT:" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					Else
						DEBUG("[NETWORK] Sending data to TCP server PORT:" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
					End if
				End if
			End if
			
			Dim Index_srv as integer = 0
			' On verifie la presence du serveur
			For Boucle as integer = 1 to this._MAX_SRV
				if this.Serveur_TCP_CPCDOS_PORT(Boucle) = NoPort Then

					' Recuperer l'index
					Index_srv = Boucle
					exit for
				End if
			Next Boucle
			
			IF Index_srv > 0 Then
				Dim PTR_DONNEES as ZString PTR
				if DONNEES = "#STOP" Then
					' Action pour stopper le serveur en cours
					PTR_DONNEES = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(DONNEES)
				else

					' Bien tester qu'on envoie a TOUS ou a UN seul client en testant la presence de :, TCP# ou UDP#, =
					Dim Test_0 as integer = INSTR(DONNEES, "=")
					Dim Test_1 as integer = INSTR(DONNEES, "TCP#")
					Dim Test_2 as integer = INSTR(DONNEES, "UDP#")
					' Dim Test_3 as integer = INSTR(DONNEES, ":")
					
					if Test_1 > 0 OR Test_2 > 0 Then
						' IF Test_0 > Test_3 AND 
						if Test_0 > (Test_1 + Test_2) Then
							' FORME ex: "192.168.1.5:14569 TCP#8=Blablaaa"
						
							' Recuperer les donnees apres '='
							' Dim DONNEES_FINAL as String = MID(DONNEES, instr(DONNEES, "=") + 1 )
							 ' Recuperer les infos reseau du client
							' Dim Info_RESEAU as String = MID(DONNEES, 1, instr(DONNEES, "=") - 1 )

							
							' Tester la presence d'un numero de port et superieur a 0
							' Dim Client_PORT_test as integer = Val(MID(Info_RESEAU, instr(Info_RESEAU, ":") + 1, instr(Info_RESEAU, " ") - (instr(Info_RESEAU, ":")+1)))
							
							' if Client_PORT_test < 1 then 
								' S'il y a pas de numero de port precis, alors c'est une donnee pour TOUS les clients
								' PTR_DONNEES = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString("#ETC 127.0.0.1:" & NoPort & " S:0#=" & DONNEES) ' envoyer a tous le monde
							' else
								' S'il y a un numero de port alors c'est pour UN client precis
							PTR_DONNEES = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString("#CLT " & DONNEES) ' envoyer a UN client precis
							' end if
						else
							' Pas de presisons sur les clients, on envoie a tous le monde ;)
							PTR_DONNEES = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString("#ETC 127.0.0.1:" & NoPort & " TCP#0=" & DONNEES) ' envoyer a tous le monde
						End if
					Else
						' Pas de presisons sur les clients, on envoie a tous le monde ;)
						PTR_DONNEES = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString("#ETC 127.0.0.1:" & NoPort & " TCP#0=" & DONNEES) ' envoyer a tous le monde
					End if
				End if

				' Et on envoie le tout au buffer		
				cpinti.cpinti_GEST_BUFF_c(NoPort, CPCDOS_INSTANCE._STACK_STOCKER_POUR_SERVEUR, PTR_DONNEES)

				CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(PTR_DONNEES)
				
				ENVOYER_Serveur = Index_srv
				
			else
				ENVOYER_Serveur = -10 ' Port inexistant
			end if
		Else
			ENVOYER_Serveur = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		ENVOYER_Serveur = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if

End Function

Function _RESEAU_Cpcdos_OSx__.STOP_Serveur(NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
	' Permet de stopper un instance d'un serveur
	' 	NoPort				: Numero du port distante
	'	_CLE_ 				: Cle d'authentification numerique du processus/thread
	
	' Retourne : voir code d'erreurs serveur.cpp
	IF CPCDOS_INSTANCE.SANS_Reseau = FALSE Then
		IF CPCDOS_INSTANCE.AVEC_DosBox = FALSE Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[RESEAU] Demande d'arret d'un serveur TCP PORT:" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
			Else
				DEBUG("[NETWORK] Asking for stopping a TCP server PORT:" & NoPort & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
			End if
			
			STOP_Serveur = ENVOYER_Serveur("#STOP", NoPort, _TID, RetourVAR)
		Else
			STOP_Serveur = CPCDOS_INSTANCE._DOSBOX ' Mode DOSBOX
		End if
	ELSE
		STOP_Serveur = CPCDOS_INSTANCE._SANS_Reseau ' Mode SANS reseau
	End if
End Function
			