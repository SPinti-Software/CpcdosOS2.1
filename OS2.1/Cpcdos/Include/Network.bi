' Entete de Reseau.bas

Type _RESEAU_Cpcdos_OSx__
	private:
		Nombre_Ping 				as uinteger = 0 ' Nombre de ping total
		Nombre_Ping_Envoye 			as uinteger = 0 ' Nombre de ping envoye
		Nombre_Ping_OK 				as uinteger = 0 ' Nombre de ping reussi
		Nombre_Ping_NonRecu 		as uinteger = 0 ' Nombre de ping non recu
		Nombre_Ping_ERR 			as uinteger = 0 ' Nombre d'echec d'envoi de ping
		Nombre_Ping_EnCours 		as uinteger = 0 ' Nombre d'instance de ping en cours
		
		Nombre_Client_EnCours		as uinteger = 0 ' Nombre d'instance de client total
		Nombre_Client_TCP_EnCours	as uinteger = 0 ' Nombre d'instance de client TCP totaux
		Nombre_Client_UDP_EnCours	as uinteger = 0 ' Nombre d'instance de client UDP totaux
		
		Nombre_Client_TCP_STOP		as uinteger = 0 ' Nombre de client TCP totaux arrete
		Nombre_Client_UDP_STOP		as uinteger = 0 ' Nombre de client UDP totaux arrete
		
		Nombre_Serveur_EnCours		as uinteger = 0 ' Nombre d'instance de client total
		Nombre_Serveur_TCP_EnCours	as uinteger = 0 ' Nombre d'instance de client TCP totaux
		Nombre_Serveur_UDP_EnCours	as uinteger = 0 ' Nombre d'instance de client UDP totaux
		
		Nombre_Serveur_TCP_STOP		as uinteger = 0 ' Nombre de client TCP totaux arrete
		Nombre_Serveur_UDP_STOP		as uinteger = 0 ' Nombre de client UDP totaux arrete

		
	public:
	
		CONST _MAX_SRV				as integer = 24
		CONST _MAX_CLIENT			as integer = 63
		
	
	
		DBG_DEBUG_SRVTCP(0 to _MAX_SRV) 		as integer
		
		Serveur_TCP_CPCDOS_PORT(0 to _MAX_SRV) 	as integer
		Serveur_TCP_CPCDOS_MODE(0 to _MAX_SRV) 	as integer

		Client_TCP_CPCDOS_PORT(0 to _MAX_CLIENT)as integer
		Client_TCP_CPCDOS_TID(0 to _MAX_CLIENT) as uinteger
		Client_TCP_CPCDOS_IP(0 to _MAX_CLIENT) 	as String
		
		
	
		' Pinger une machine distant afin de tester sa disponibilite
		Declare function Ping				(AdresseDistant as String, _CLE_ as double) as integer
		
		Declare Function get_http			(AdresseDistant as String, NoPort as uinteger, URL as String, Fichier_TEMP as String, AvecLaHEAD as boolean, _CLE_ as double, RetourVAR as String, VAR_PROGRESSION as String, VAR_VITESSE as String, VAR_TAILLE as string, VAR_SOCKET as String) as String
		Declare Function head_http			(AdresseDistant as String, NoPort as uinteger, URL as String, Fichier_TEMP as String, _CLE as double, RetourVAR as String) as String
		Declare Function Requete_http		(AdresseDistant as String, NoPort as uinteger, Requete as String, Header as boolean, Fichier_TEMP as String, _CLE_ as double, RetourVAR as String, VAR_PROGRESSION as String, VAR_VITESSE as String, VAR_TAILLE as string, VAR_SOCKET as String) as String
		
		
		' Clients reseau
		Declare Function Client_TCP			(AdresseDistant as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
		Declare Function Client_UDP			(AdresseDistant as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as uinteger
		Declare Function RECEVOIR_Client	(NoPort as uinteger, _TID as uinteger, RetourVAR as String, Attendre as Boolean, TempsAttente as double) as integer
		Declare Function ENVOYER_Client		(DONNEES as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
		Declare Function STOP_Client		(AdresseIP as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
		Declare Function CONFIG_Client		(Commande as String, AdresseIP as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
		
		' Serveurs reseau
		Declare Function Serveur_TCP		(NoPort as uinteger, NombreClients as integer, _TID as uinteger, Mode_srv as integer, RetourVAR as String) as integer
		Declare Function Serveur_UDP		(NoPort as uinteger, NombreClients as integer, _TID as uinteger, RetourVAR as String) as integer
		Declare Function RECEVOIR_Serveur	(NoPort as uinteger, _TID as uinteger, RetourVAR as String, Attendre as Boolean, TempsAttente as double) as integer
		Declare Function ENVOYER_Serveur	(DONNEES as String, NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
		Declare Function STOP_Serveur		(NoPort as uinteger, _TID as uinteger, RetourVAR as String) as integer
			
End Type