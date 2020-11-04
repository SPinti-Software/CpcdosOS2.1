' Contient les declarations, structures et variables concernant 
' le debogage / log de Cpcdos

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 05/10/2018

' 05-10-2018	: Refonte beta 2.1
' 16-08-2017	: Ajout du support du COM


Declare Function ERRAVT(Erreur as string, P2 as integer) as string

Type _DEBUG_Cpcdos_OSx__
	public:
	SIGN_AFF 				as integer = 0	 ' Affichage obligatoire
	SIGN_CPCDOS 			as integer = 1111 ' Debug Cpcdos
	SIGN_PRINTF				as integer = 1110 ' printf 
	SIGN_CPINTICORE			as integer = 1100 ' Debug CPinti Core
	SIGN_CONS				as integer = 0011 ' Console CpcdosC+
	SIGN_TELNET				as integer = 1000 ' Telnet
	
	' Affichage sortie
	Ecran 					as integer = 1
	NonEcran				as integer = 0
	' Ecriture DEBUG.LOG
	Log						as integer = 1
	NonLog					as integer = 0
	' Priorite message (couleur)
	Couleur_Normal			as integer = 7
	Couleur_SURBRILLE		as integer = 15
	Couleur_VALIDATION		as integer = 10
	Couleur_AVERTISSEMENT	as integer = 14
	Couleur_ERREUR			as integer = 12
	Couleur_OK				as integer = 3
	Couleur_Action			as integer = 6
	
	Couleur_FOND_caractere as integer = 0
	

	'Alerte niveau
	Alerte_Surbrille		as integer = 0
	Alerte_Normal			as integer = 1
	Alerte_Validation		as integer = 2
	Alerte_Avertissement	as integer = 3
	Alerte_Erreur			as integer = 4
	Alerte_OK				as integer = 5
	Alerte_Action			as integer = 6
	
	' Retour a la ligne
	CRLF					as integer = 0
	NoCRLF					as integer = 1
	CR						as integer = 2
	
	' Affichage de l'heure + date
	AvecDate				as integer = 1
	SansDate				as integer = 0
	LeRetour				as string
	
	UpdateRTC				as boolean
	
	Declare Constructor()
	Declare Destructor()
End Type


' Structure publique :)
' Extern DBG as _DEBUG_Cpcdos_OSx__

' Fonction d'affichage/ecriture/envoie reseau des logs
DECLARE SUB DEBUG(Evenement as string, Ecran as integer, _
			DansLeLOG as integer, Prio as integer, _ 
			Retour as integer, NoCRLF as integer, _
			AfficherDate as integer, P1 as integer, _
			Fichier as string)


