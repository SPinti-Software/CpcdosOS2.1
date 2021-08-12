#lang "fb"
REM SPinti Software Cpcdos OS2

REM Developpe entierement par Sebastien FAVIER
REM Copyright(C)Microsf01 . SPinti Software(TM)
REM Source protege par les droits d'auteur (Dossier No:J8781B5)

' ----------------------------------------------
'  Depuis le 15/07/2011
'  Reecriture complete 1 le 03/02/2015
'  Refonte 2.1 beta 1.1 le 05-10-2018
'
'             Derniere Mise a jour le 17-08-2020
' ----------------------------------------------

' == Lignes de codes ==
' 03-09-2019
' CPCDOS : 43 000.
' CPINTI : 9 000.
' TOTAL  : 52 000.

' 03-11-2017
' CPCDOS : 33 160.
' CPINTI : 12 800.
' TOTAL : 45 000.

' 30-03-2017
' CPCDOS : 19 200.
' CPINTI : 8 400.
' TOTAL : 27 500.

' 05-07-2016
' CPCDOS : 12 900.
' CPINTI : 4 300.
' TOTAL : 17 200.


' =-=-=-=-=-=-= FAIT =-=-=-=-=-=-=

' 	- Remplacer les PRINT par DEBUG
'	- CORRIGER ecran qui ne se rafraichit pas au retour GUI/ [OK]
'	- Porter tout les creation de bitmaps dans la structure MEMOIRE_MAP [OK]
'
'		********* REFONTE en 2.1 beta 1.1 *********
'
'
'	- Ajouter une commande de listage de repertoire [OK]
'	- CheckBox [OK]
'	- Progress Bar [OK]
' 	- Creer le Msgbox [OK]
' 	- Finir Textebox  [OK]
'		+ Interdir l'edition [OK]
'	- Ajout recup valeur proprietes GUI "@#" [OK]
'	- TexteBloc : Multiplier la taille Y par le nombre de lignes CRLF [OK]
'	- Commande copie, renommage et supression de fichiers [OK]
'	- COrriger l'apparition du Textebloc "grand" et qui reprend sa taille selon ses proprietes [OK]
'	- Copie --> Faire le systeme de progresson en % et octets  [OK]
'		--> Faire la possibilite d'ajouter plusieurs arguments /PROGRESSION /OCTETSPARSEC et /OCTETS  [OK]
' 	- Finir d'ajouter la croix [OK]
'	- Possibilite de creer un processus vide depuis le shell. [OK]
'		--> La commande CMD/ avec le parametre /PID pour executer la cmd depuis le processus (PID) [OK]
'	- Ajouter le parametre /PID pour la commande CMD/ [OK]
'	- Creer fonction pour obtenir le nom de processus et nom de thread. Et finir  [OK]
'		'PROC_PARENT' dans IUG.BAS:453  [OK]
'		'PROC_PARENT' dans CPCODSCP.BAS:7899   [OK]
'	- Support deboggage COM  [OK]
'	- GUI : Ajouter .icone, .imgtitre et .image dans les commandes CCP [OK]
'	- Ajouter modification des proprietes graphiques  [OK]
'	- CORRIGER: quand la GUI est charg� avec 16 bits et qu'on refait IUG/ mais 
'		avec 32 bits, le rechargement n'est pas pris en compte. (ou 24 et vis versa) [OK]
'	- #Recherche en mode standard un peut encombrant avec le debug [OK]
'	- exec_wrp.cpp lgn 580 ajouter USERid et OSid pour l'ajouter dans le thread
'		le probleme c'est que tous les threads ont le meme PID CCP
'		il faut qu'il genere une nouvelle CLE ID depuis CCP_Thrd.bas avec son nouveau PID!!! :)
'		et qu'il l'utilise pour son instance de SHELL CpcdosCP [OK]
'	- Ajouter un parametre pour interdir le remplacement et execution d'une fonction '/F:'[OK]
'	- Savoir quand le serveur est coupe avec DECO [OK]
'	- Server/ /MODE:ECHO (Permet de renvoyer les requetes recu) [OK]
'	- Faire une verif pour savoir si le serveur a bien demarre ou non [OK]
'	- Ajouter une section critique dans le code CpcdosC+ pour executer du code sans avoir un doevents (mode prioritaire) [OK]
' 	- Gestion des tableaux --> Generateur de tableau avec contenu [OK]
'	- Ajouter la gestion des tableaux [OK]
'	- SERVEUR/ ou CLIENT/  /recevoir /attendre /wait pour attendre en doevents avant reception [OK]
'	- Ajouter le /Q sur le FIX/ [OK]
'	- Corriger les "tabulations" qui font des erreurs de syntaxes dans le shell cpcdosc+ [OK]
'	- Ajouter une syntaxe du SHELL cpcdosC+ du style "\#PAUSE" pour defiler les infos  [OK]
'	- Support TELNET
'	- +ADMIN_CCP envoyer les paquets a un client precis (modif serveur.cpp)
'	- Optimiser le zoom du logo selon les perfs du systeme [OK]
'	- Creer une fonction qui donne une note (Calcul../Calcul../Graphisme/..) [OK]
'	- Probleme commande si i l y a un espace " " il ajoute un espace dans les parametres [OK]
'	- Execution a partir d'un label / No ligne [OK]
'	- Section critique a plusieurs niveaux pour lui donner un niveau en hexa (Applicatif, thread, socket, noyau, TOUT !) [OK]
'	- Rendre le serveur TCP/client multi-instanciable et destructable + buffer [OK]
'	- Integrer une pause avec CCP/ /pause: [OK]
'	- Systeme de condition SI/ alors: sinon: Avec multiligne et multi conditionnel [OK]
'	- Algorithmes calculatoire en ligne [OK]
'	- Faire les arguments des fonctions CpcdosC+ [OK]
'	- Choisir le dossier destination telecharger/ [OK]
'	- Ajouter si/ ".." ~= ".." alors: (Si blabla contient blabla) [OK]
'	- fix.niveau renvoyer le niveau en cours [OK]
'	- Integration native du moteur graphique 3D, GZE
'	- BUG: @# fonctionne pas si TAB ou ESPACE au debut..[OK]
'	- Creer systeme de buffer universel [OK]
'	- Wrapper multi-thread [OK]
'	- GZE + fenetre [OK]
'	- Refonte Copier/ - Probleme de la commande Copier/ (mx_computer) [OK]
'	- Ajouter l'event "windowsClosing" [OK]
'	- Serveur TCP par defaut est echo, il doit etre en passif [OK]
'	- Corriger le client TCP (non HTTP) [OK]
'	- Corriger crash si Open/ file sans nom de fichier [OK]
'	- Corriger Dernier caractere liste OS OS.LST mange (Bug trouv� par Caillou15) [Pas trouve de bug..]
'	- Actualisation Date, CPU etc... [OK] --> UPD:1 et ${}
'	- Lecture Ligne par Ligne [OK] -> Demande par Meaxy
'	- Corrgier bugs UPD:1 et GUI refresh (Chrapati + Meaxy) [OK]
'	- Probleme heure GUI [OK]
'	- Ajouter MOVE:0 [OK]
'	- ".TYPE" dans le manuel [OK]
'  	- Ajouter ".." pour les tableaux [OK]
'	- Corriger ecrire/ [OK]
'   - Pression touches F1, F2, F3... [OK]
'   - Ajouter le set/ variable++ [OK]
' 	- Bouton flat style [OK]
'	- Bootscreen ajouter parametre degrad� [OK]
' 	- Corriger ccp/ /optimisation = 1 [OK]
'	- Ajouter positionnement + get curseur GUI [OK]
'	- Ajouter SIZ:0 SIZBTN:0 REDUC:0 [OK]
'	- Corriger commande download/ /temp [OK]
'	- Update Cpcdos by WEB [OK]
'	- Corriger -1 textbox [OK]
' 	- Download progress (comme copy/) [OK]
' 	- Crash cpcdosCP.bas:17510 lors de l'arret sur ElieOS (boucle fenetre) [OK]
' 	- Voir capture et debug Meaxy plantage ligne 660 memoire source = 0 PNG non charg� mais continue [OK]
'	- Plantage system.bas:729 Creer repertoire() [OK]
'	- Lenteur + retard de l'input au clavier textbox [OK]
'	- Ajouter objet CONSOLE	 [OK]
'	- Event agrandissement/retrecissement fenetre! [OK]
' 	- Fonction replication caractere (Meaxy) [OK]
'	- Crach Meaxy + KeyMap manuel [OK]
'	- Textbox evenement ENTRER [OK]
' 	- Rendre dechargeable les icones & background de l'explorateur [OK]
'	- Explorer : Ajouter event clic (pour mettre a jour un txtbox par exemple) [OK]
'	- Explorer : Ajouter mouse selection par clavier aussi [OK]
'   - Corriger commande Actualiser/ [OK]
'	- Gerer : Content-Type: application/octet-stream  [OK]
'	- Enlever le texte en trop quand l'update ne marche pas [OK]
' 	- Explorateur Fichier [OK]
'	- Integrer toutes les variables STD::STRING --> Directement en argument. Gagne +memoire [OK]

' =-=-=-=-=-=-= A FAIRE =-=-=-=-=-=
'	- CRASH telechargement fichier avec un � ou bug avec les % %
'	- OPTIMISATION : Re-indexer le nombre maximum des variables 1, 2, 3, 4 et 5 (INDEX_Max[])
'	- 				Suppression tableaux
'	- Supprimer variable correspondant au thread ferme
'	- Interruption CLAVIER IRQ pour remplacer le inkey
'	- Le curseur fonctionne meme en console donc les evenements GUI aussi
'	- FIX/ /Q ne fonctionne pas en telnet ou CCP..
'	- Garbage collector variables CpcdosC+ nivau 1, 2, 3, 4, 5 :)
'	- Temporaire : Nombre de liste de fichier/dossier par instance limite a 1024
'	- Evenement a la volee
'	- Rendre possible la copie de dossiers
'	- Modifier le timing de la barre clignotante du textebox
' 	- Ajouter le systeme du On ERROR sur les handelers qui ferme le thread qui a plant� au lieu de planter le noyau completement.
'	- Commande suppression en securite fichier
'		+ IDEM mais pour DOSSIERS
'	- Bouton Agrandissement, et reduction des fenetres
'	- Corriger le probleme du code coupe sur les derniers octets.
'	- Support controle de console via COM
'	- Propriete native pour changer de fond d'image d'un picturebox en cas de survole (optimisation!)
'	- Refaire le IRQ du clavier avec un buffer
'	- Corriger pourquoi a une certaine taille sized les image ne s'affichent plus 

' 	- Gestion des tableaux --> Obtenir la taille d'un tableau
' 	- STOP/ n'a pas l'aire de fonctionner dans les fonction
'	- Il y a quand meme un probleme quand on fait goto depuis un IF/ jsuqu'a un label HORS d'un IF.. 
'		Au bout d'un moment la memoire sature et crash..
' 	- Idee optimisation : Placer les lignes dans un tableau-[] et executer en boucle jusqu'a la fin

'	- Faire une fonction pour traduire du LFN en SFN
'	- Petit gestionnaire de ScreenLock/ScreenUnLock pour pouvoir rester en mode ScreenLock si blabla..

'	- Optimiser 'CCP_Function' en cherchant les CPC.xxx en avance pour la prochaine Update.
'	- Faire sorte a ce que les fonctions ont chacun un pointeur memoire
' 	- Finir pr�-compilateur CpcdosC+ (Label:OK, Fonction:ATTENTE)
'	- Ajouter le style de case / switch en cpcdosc+
'   - corriger PNG bit couleurs
'	- Perfectionner l'activite reseau pour stabiliser le systeme SERVEUR et CLIENT

' BETA 1.3
'	- ECHEC - REPORTE Refonte module memoire 
' 	- ajouter multidimentions
'	- Ajouter boucle for
'   - Ajouter Warning goto hors scope
' 	- To Test Serveur.cpp lgn 80 - New int correction warning
'	- Runtime free par page --> Si caractere autre que '0' alors FUITE DE MEMOIRE MOTHER FUCKER
'	- CHR et CARACTERE marche 1 fois sur 2
'	- Corriger crash if/ "a = b" == "b" then: (Oncle Jojo)
' 	- Ajouter niveau de la stack pour debuggage
'	- Ajouter centrage, position defaut, agrandi et plein ecran fenetre
' 	- Bug barre progression quand a 0% (Meaxy  19-OCT)
'	- Revoir le MONO-CLIC
'	- Probl�me actualisation horloge (doublure en Y)


'
' =-=-=-=-=-=-==-=-=-=-=-=-==-=-=-=

' Les routines interne au compilateur FreeBasic
#include once "fb.bi"
#include once "zip.bi"

' Les modules CPintiCore
#include once "CPinti.bi"

' Les modules Cpcdos
#include once "Debug.bi"
#include once "System.bi"
#include once "Network.bi"
#include once "gui.bi"
#include once "RES_Thrd.bi"
#include once "CCP_Thrd.bi"
#include once "Console.bi"
#include once "CpcdosCP.bi"

CONST _VJOUR as string 	= "12" 
CONST _VMOIS as string 	= "08"
CONST _VANNEE as string = "2021"

CONST _VERSION_DATEV 	as string = _VJOUR & "-" & _VMOIS & "-" & _VANNEE & "[FR/EN]"

CONST _VERSION_BUILD 	as string = _VANNEE & _VMOIS & _VJOUR & "21"

CONST _VERSION_MAJEUR 	as string = "2.1"
CONST _VERSION_ETAT		as string = "HotRelease"
' CONST _VERSION_ETAT		as string = "PUBLIC"

CONST _VERSION_MINEUR 	as string = "beta 1.5"
CONST _VER_NET_MINEUR 	as string = "BETA1.5"
CONST _VERSION_CCP 		as string = "3.0"
CONST _VERSION_SCI 		as string = "3.0"
CONST _VERSION_CONSOLE	as string = "3.0"
CONST _VERSION_CPINTI	as string = "4.0"

CONST _VER_OF_DAY		as String = "00"
CONST _VER_NET_BUILD 	as string = _VANNEE & _VMOIS & _VJOUR & _VER_OF_DAY & "_OS" & _VERSION_MAJEUR & "_" & _VER_NET_MINEUR

CONST _PRIORITE_THRD_TRES_FAIBLE 	= 150
CONST _PRIORITE_THRD_ASSEZ_FAIBLE 	= 100
CONST _PRIORITE_THRD_FAIBLE 		= 60
CONST _PRIORITE_THRD_MOYENNE		= 50
CONST _PRIORITE_THRD_MOYENNE_2		= 40
CONST _PRIORITE_THRD_BIEN			= 30
CONST _PRIORITE_THRD_ASSEZ_HAUTE	= 20 
CONST _PRIORITE_THRD_HAUTE			= 10 
CONST _PRIORITE_THRD_TRES_HAUTE 	= 2


' Retour chariot
CONST CRLF				as String = CHR(13) & CHR(10)
CONST LFCR				as String = CHR(10) & CHR(13)
CONST CR				as String = CHR(13)
CONST LF				as String = CHR(10)

' Constantes du clavier
CONST TOUCHE_ENTRER		as String = CRLF
CONST TOUCHE_TAB		as String = CHR(09)
CONST TOUCHE_BACK		as String = CHR(08)
CONST TOUCHE_ECHAP		as String = CHR(27)
CONST TOUCHE_SUPPR		as String = CHR(127)


Common shared	ZERO_FILL as String 

CONST _PAUSE_CRT		as integer = 50

Common shared LA_DATE as string
Common shared L_HEURE as string

Common Shared as uinteger _Memoire_Libre_Depart, _Memoire_actuel, _Memoire__krnl_occupe, _Memoire_UTIL_Pourcent, _Memoire_LIBRE_Pourcent
Common Shared as String _REPERTOIRE_DU_NOYAU_, _REPERTOIRE_ET_NOYAU

Common Shared CX_APM_MODE as ubyte

Type _TYPES_Cpcdos_OSx__
	private:
	
	public:
	As String _RTC_Nom_Jour			(0 To 7) 	= {"Dimanche","Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi","Dimanche"}
	As String _RTC_Nom_Jour_min		(0 To 7) 	= {"Dim","Lun","Mar","Mer","Jeu","Ven","Sam","Dim"}
	
	As String _RTC_Nom_Jour_EN		(0 To 7) 	= {"Sunday","Monday","Thesday","Wednesday","Thursday","Friday","Saturday","Sunday"}
	As String _RTC_Nom_Jour_EN_min	(0 To 7) 	= {"Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun"}
	
	As String _RTC_Separateur		(0 to 4) 	= {"/", "\", ".", "-", ":"} '"
	As String _RTC_Secondes					 	= "SS"
	As String _RTC_Minutes					 	= "MM"
	As String _RTC_Heure					 	= "HH"
	
	As String _RTC_Jour				(0 to 1)	= {"DD", "JJ"}
	
	As String _RTC_MOIS							= "MM"

	As String _RTC_ANNEE			(0 to 3)	= {"YY", "YYYY", "AA", "AAAA"}

	
		' *** Constructeur/Desctructeur ***
	Declare Constructor()
	Declare Destructor()
End Type

' Classe de base du noyau Cpcdos OSx
Type __Noyau_Cpcdos_OSx__
	private:
		ID_KERNEL		as uinteger		= 1
		ID_OS			as uinteger		= 8
		ID_UTIL			as uinteger		= 1
	
	public:

		' *** Graphique ***
		CONST _MAX_GUI___OBJS		as integer = 128 ' TEMPORAIRE
		CONST _MAX_GUI_FENETRE	 	as integer = 64 ' TEMPORAIRE
		
		CONST _MAX_ANIM_LOADSCR		as integer = 64
		
		CONST _MAX_GUI_BOUTON	 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_PICTUREBOX 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_TEXTBLOCK 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_TEXTBOX	 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_PROGRESSBAR 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_CHECKBOX 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_EXPLORER 	as integer = _MAX_GUI___OBJS
		CONST _MAX_GUI_LISTBOX 		as integer = _MAX_GUI___OBJS
		
		CONST _MAX_NOMBRE_OS		as integer = 8
		
		CONST _PAGE_VIDEO_MAIN		as integer = 0 ' La page visible sur l'ecran duplicat du 1
		CONST _PAGE_VIDEO_WORK		as integer = 1 ' La page invisible ou tout traitements est rassemble
		CONST _PAGE_VIDEO_FOND_WRK	as integer = 2 ' Image de fond prepare avec les fenetre arriere plan (Deplacement fenetre...)
		CONST _PAGE_VIDEO_FOND_IMG	as integer = 3 ' Image fond d'ecran NEUTRE
		CONST _PAGE_VIDEO_DESKTOPMODE as integer = 4 ' Page pour fenetre en mode DESKTOP
		
		' *** CpcdosC+ ***
		CONST _MAX_FONCTION_ARGS	as integer = 24 ' 16 arguments etant temporaire
		CONST _MAX_FONCTION_PUBLIC	as integer = 256 ' idem

		' *** Buffers generaux ***
		CONST _TAILLE_MAX_BUFFER_UNIVERSEL as Integer = 16000 '16Ko TEMPORAIRE

		' *** FunctionID de base ***
		CONST _FUNCTIONID__EXELOADER 	as integer = 10
		CONST _FUNCTIONID__LLVM 		as integer = 11
		CONST _FUNCTIONID__GZE_3DENGINE as integer = 12
		
		' *** Gestionnaire des threads ***
		CONST __EN_EXECUTION 			as integer = 83 	' 0x53
		CONST __EN_PAUSE 				as integer = 101 	' 0x65
		CONST __EN_ATTENTE 				as integer = 98 	' 0x62
		CONST __EN_ARRET 				as integer = 70		' 0x46
		CONST __ZOMBIE					as integer = 86		' 0x86
		CONST __ARRETE 					as integer = 76		' 0x4C
		
		CONST __THREAD_OK				as integer = 0  ' OK
		CONST __THREAD_ERREUR			as integer = -1 ' ERR
		CONST __THREAD_DEFAUT			as integer = -1 ' ERR

		CONST _GET_PID					as integer = 2803
		CONST _GET_TID					as integer = 1995
		CONST _GET_USERID				as integer = 2912 'mcgb
		CONST _GET_OSID					as integer = 1909 'mcgb
		CONST _GET_KERNEL_ID			as integer = 1507
		CONST _GET_THRD_NOM				as integer = 2011
		
		CONST _GET_ARG_1				as integer = 0
		CONST _GET_ARG_2				as integer = 1
		CONST _GET_ARG_3				as integer = 2
		CONST _GET_ARG_4				as integer = 3
		CONST _GET_ARG_5				as integer = 4
		
		' *** Network ***
		CONST _SRV_TCP					as integer = 1
		CONST _SRV_UDP					as integer = 2
		CONST _SRV_TCP_CCP				as integer = 3
		CONST _SRV_TCP_TELNET			as integer = 4
		CONST _SRV_TCP_ECHO				as integer = 5
		CONST _SRV_UDP_ECHO				as integer = 6
		
		CONST _CLIENT_TCP				as integer = 1
		CONST _CLIENT_UDP				as integer = 2
		CONST _DOSBOX					as integer = -23
		CONST _SANS_Reseau				as integer = -24

		NETWORK_DRIVERCARD				as boolean = false
		NETWORK_LOCAL					as boolean = false
		NETWORK_ROUTER					as boolean = false
		NETWORK_INTERNET				as boolean = false
		NETWORK_INTERNET_AND_DNS		as boolean = false
		
		CONST _STACK_STOCKER_POUR_CPCDOS	as integer = 1 ' Serveur --> STACK Cpcdos
		CONST _STACK_STOCKER_POUR_SERVEUR 	as integer = 2 ' Cpcdos  --> STACK Serveur
		CONST _STACK_EXTRACT_POUR_CPCDOS 	as integer = 3 ' STACK Cpcdos  --> Cpcdos
		CONST _STACK_EXTRACT_POUR_SERVEUR 	as integer = 4 ' STACK Serveur --> Serveur
		CONST _STACK_INITIALISER 			as integer = 9 ' Creer une nouvelle instance d'un stack
		CONST _STACK_SUPPRIMER				as integer = 10' Creer une nouvelle instance d'un stack
		
		' *** Autres constantes ***
		CONST _FIN_DE_REQUETE		as string = "#_FIN-REQUETE_END-REQUEST_#"
		CONST _CONTENU_IMPROPABLE 	as string = "'#NONEXISTENT_CONTENT#'"
		
		CONST _OCTETS		as double = 1
		CONST _KILO_OCTETS	as double = 1024
		CONST _MEGA_OCTETS	as double = 1024^2
		CONST _GIGA_OCTETS	as double = 1024^3
		CONST _TERA_OCTETS	as double = 1024^4

		' COPIER COLLER COUPER Textuel
		__PRESSE_PAPIER_TEXTE__ as String
		
		' *** Tableau de la liste des OS present et son dossier ***
		_LISTE__OS_BOOTSCREEN					as String
		_LISTE__OS_NOM	(0 to _MAX_NOMBRE_OS) 	as String
		_LISTE__OS_PATH	(0 to _MAX_NOMBRE_OS) 	as String
		_LISTE__OS_NB							as integer

		' *** Nom de l'OS non charge ***
		_NOM_OS				as string = "<Sans OS/No OS>"
		
		UNIQUE				as string = ""
		
		' *** Message d'une requete ***
		_PING_MESSAGE		as String ' PING ICMP
		_USER_AGENT			as String ' HTTP
		_HTTP_VERSION		as String ' HTTP/1.0 ou 1.1
		
		' *** Repertoire main ***
		_REPERTOIRE_NOYAU 	as string
		_REPERTOIRE_EXEC 	as string
		
		
		' *** Loading screen ***
		LoadSCR_Sequence(0 to _MAX_ANIM_LOADSCR) as integer 		' ID des sequences d'images
		Thread_BootScreen as uinteger
		
		' *** Curseur graphique ***

		
		
		' *** Si ISR doit etre execute ou non ***
		No_ISR 				as integer
		No_ISR_P			as integer
		
		' *** Timing ***
		TIMING_1MS			as boolean
		TIMING_250MS		as boolean
		TIMING_500MS		as boolean
		TIMING_1SEC			as boolean
		
		PersoEditBAR_MS		as integer
		TIMING_PersoEditBAR as boolean
		
		' Francais:0  Anglais:1
		Utilisateur_Langage	as integer = 0
		
		' TRUE:Reseaux et autres opts limites
		' FALSE:Normal
		Dosbox				as boolean = false
		ResterDebugCPinti 	as boolean = false
		
		PAS_DE_LIGNES_BOOT		as boolean = FALSE ' Demarrer sans le debogeur cpcdos
		SANS_Reseau				as boolean = FALSE ' Demarrer sans le reseau
		AVEC_debug_COM1			as boolean = FALSE ' Demarrer avec le debugger COM
		AVEC_debug_COM2			as boolean = FALSE ' Demarrer avec le debugger COM
		AVEC_debug_COM3			as boolean = FALSE ' Demarrer avec le debugger COM
		AVEC_debug_COM4			as boolean = FALSE ' Demarrer avec le debugger COM
		SANS_Telnet				as boolean = FALSE ' Demarrer sans executer le serveur telnet
		AVEC_ccp				as boolean = FALSE ' Demarrer le serveur CCP ( a la place de TELNET )
		AVEC_DosBox				as boolean = FALSE ' Demarrer en mode dosbox (minimum de ressources)
		NOGUI					as boolean = FALSE ' Rester en mode debogage, ne pas demarrer la GUI ni changer de resolution
		LOGGER_AU_DEMARRAGE		as boolean = FALSE ' Logger dans tous les cas dans le fichier debug.log
		LOGGER_TOUT_AU_DEMARRAGE as boolean = FALSE ' Logger TOUT dans tous les cas dans le fichier debug.log
		
		' *** List GUI object ***
		CONST _MAX_GUI_EXPLORER_ELEMENTS as integer = 128 	' Nombre d'elements par pages
		CONST _MAX_GUI_LISTBOX_ELEMENTS as integer = 128 	' Nombre d'elements par pages
		
		' *** Liste des formats programmes et icones associes **
		const FORMAT_MAX					as integer = 24
		const FORMAT_INDEX_DIR				as integer = 0
		const FORMAT_INDEX_DRIVE			as integer = 24
		const FORMAT_INDEX_UNKNOW			as integer = 23
		
		FORMAT_nombre						as integer = 0
		
		FORMAT_Extention	(FORMAT_MAX)	as String
		FORMAT_Description	(FORMAT_MAX)	as String
		FORMAT_Icones_min	(FORMAT_MAX)	as String
		FORMAT_Icones_max	(FORMAT_MAX)	as String
		FORMAT_Programme	(FORMAT_MAX)	as String


		
		
		' *** Instanciation des classes du systeme ***
		DEBUG_INSTANCE 		as _DEBUG_Cpcdos_OSx__	 			' Deboggage
		' CPintiCore_INSTANCE as cpinti.__CpintiCore_CpcdosOSx__ 	' CPinti Core
		
		TYPES_INSTANCE		as _TYPES_Cpcdos_OSx__				' Types et autres constantes
		
		CONSOLE_INSTANCE 	as _CONSOLE_Cpcdos_OSx__ 			' Console Cpcdos
		
		SCI_INSTANCE		as _SCI_Cpcdos_OSx__				' Graphique et evenements
		SHELLCCP_INSTANCE	as _SHELL_Cpcdos_OSx__				' Shell moteur CpcdosC+
		SYSTEME_INSTANCE 	as _SYSTEME_Cpcdos_OSx__ 			' Fonctions systeme/CRT
		
		RESEAU_INSTANCE		as _RESEAU_Cpcdos_OSx__				' Ping, satistiques, serveur, client tcp, udp...
		
		
		
		' Generer les ID au demarrage de chaque
		Declare sub			Generer_id_kernel	() ' 1 a 15 (0001 a 1111)
		
		' Generer une cle finale
		Declare Function Generer_cle_NIV_1	(id_Kernel as uinteger, id_OS as uinteger, id_Util as uinteger) as double
		Declare Function Generer_cle_NIV_2	(id_PID as uinteger, id_TID as uinteger) as double
		Declare Function Generer_cle_ASM	(CLE_NIV_1 as double, CLE_NIV_2 as double) as double
		Declare Function Generer_cle		(id_Kernel as uinteger, id_OS as uinteger, id_Util as uinteger, id_PID as uinteger, id_TID as uinteger) as double
		
		' Extraire une valeur d'une cle d'authentification
		Declare Function 	get_id_kernel		() 									as uinteger
		Declare Function 	get_id_kernel		(CLE as double) 					as uinteger
		Declare Function	get_id_OS			(CLE as double) 					as uinteger
		Declare Function 	get_id_OS			() 									as uinteger
		Declare Function	get_id_Utilisateur	(CLE as double) 					as uinteger
		Declare Function	get_id_Utilisateur	() 									as uinteger
		Declare Function	get_id_PID			(CLE as double) 					as uinteger
		Declare Function	get_id_TID			(CLE as double) 					as uinteger
		
		' ============================================================================
		' Kernel + OS + USER 	= 4353 a 65535 (DEC)
		'						= 0001 0001 0000 0001 a 1111 1111 1111 1111 (BIN)
		'						= 0x1101 0xFFFF (HEX)
		' PID					= 1 a 255 (0000 0001 a 1111 1111)
		' TID					= 1 a 4096 (0000 0000 0001 a 1111 1111 1111)
		' ============================================================================
		' CLE complete (Kernel + OS+ USER + PID + TID)
		' 
		' 0001 0001 0000 0001   0000 0001 0000 0000 0001  =  4 564 455 425 (MINIMUM)
		' krnl  os  user user - pid  pid  Tid  Tid  Tid
		' 1111 1111 1111 1111   1111 1111 1111 1111 1111  = 68 719 476 735 (MAXIMUM)
		' krnl  os  user user - pid  pid  Tid  Tid  Tid
		' ============================================================================
		
		Declare Function 	Initialiser_BootScreen	(Type_rsc as boolean, source as string, PID_system as uinteger) as uinteger
		Declare Function 	Load_Ressources			(Type_rsc as boolean, source as String, Res_X as integer, Res_Y as integer) as integer
		
		Declare Function 	Generer_RND				(Debut as double, Fin as double) 								as double
		Declare Function 	get_En_Charge			() 																as boolean
		Declare Sub 		En_Charge				(oui as boolean)
		Declare Function 	Creer_processus			(ByRef _STRUCT_PROCESSUS as _STRUCT_PROCESSUS_Cpcdos_OSx__) 	as uinteger
		Declare Function 	Fermer_processus		(PID as uinteger) 												as boolean
		Declare Function 	Gerer_processus			(PID as uinteger, Action as integer) 							as integer
		Declare Function 	get_Nom_Processus		(PID as uinteger) 												as String
		Declare Function 	get_List_Processus		(display as integer)											as String
		declare Function	get_pid_by_name_process	(process_name as string) 										as integer
		declare Function	get_List_PID			(display as integer) 											as String
		declare Function	get_List_Processus_icon (display as integer) 											as String
		
		Declare Function 	Creer_thread		(byref _STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__) 				as uinteger
		
		Declare Function 	Fermer_thread		(PID as uinteger, TID as uinteger, force as boolean) 				as integer
		Declare Function 	Fin_thread			(PID as uinteger, TID as uinteger) as integer
		Declare Function 	Gerer_thread		(PID as uinteger, TID as uinteger, Action as integer) 				as integer
		Declare Function 	get_Nom_Thread		(TID as uinteger) 													as String
		Declare Function 	get_ThreadEnCours	() 																	as uinteger
		Declare Function 	get_NombreThreads	() 																	as uinteger
		
		Declare Function 	Fichier_decompress	(ByVal Source as String, ByVal Destination as String) 				as integer
		Declare Function 	Creer_repertoires_Parents(ByVal file As ZString Ptr) 									as boolean
		Declare Function	decompress_fichier	(ByVal zip_instance As zip_t Ptr, ByVal i As Integer, Destination as String) as boolean
		Declare Function 	Fichier_compress	(ByVal Source as String, ByVal Destination as String) 				as integer
		
		Declare Function	Lire_fichier_complet(ByVal Chemin as String) as String
		Declare Function 	Fichier_Existe		(ByVal Chemin as String) as boolean
		Declare Function 	Taille_Fichier		(ByVal Chemin as String) as uinteger
		Declare Function 	Ecrire_fichier_complet(ByVal Chemin as String, ByVal Donnees as String, ByVal FLAG as integer) as double
		
		Declare Function 	Supprimer_Fichier	(ByVal Chemin as String, ByVal securise as boolean, ByVal NombrePasses as integer) as boolean
		Declare Function 	Copier_Fichier		(ByVal Source as String, ByVal Destination as String, ByVal Priorite as integer, ByVal Var_Progression as String, ByVal Var_Octets as String, ByVal Var_OctetsParSec as String) as boolean
		Declare Function 	Renommer_Fichier	(ByVal Source as String, ByVal Destination as String) as boolean
		Declare Function 	Deplacer_Fichier(ByVal Source as String, ByVal Destination as String) as boolean
		
		Declare Function 	get_Date_format		(ByVal _CLE_ as Double)						as String
		Declare Function 	get_Date_format		()											as String
		
		Declare Function 	get_Time_format		(ByVal _CLE_ as Double)						as String
		Declare Function 	get_Time_format		()											as String
		
		Declare function 	get_Heure			(ByVal format_ as string) 					as string
		Declare function 	get_Date			(ByVal format_ as string)					as string
		
		Declare Function 	remplacer_Variable_DYN(ByVal Source as String, ByVal _CLE_ as double, ByVal RetourVAR as String) as String
		Declare Function	remplacer_Caractere	(ByVal Source as String, ByVal Caracteres as String, ByVal Remplacement as String) as String
		Declare Function 	compter_Caractere	(ByVal Source as String, ByVal Caracteres as String) as Integer
	
	
		Declare Sub 		update_OS_LISTE		()
		Declare Function 	get_NombreOSPresent	() 									as integer
		Declare Function 	get_OSPresent		() 									as String
		Declare Function 	get_OSPresent		(_INDEX_ as integer) 				as String
		Declare Function 	test_OSPresent		(ByVal Nom as String) 				as Integer
		
		' Charger une image PNG, JPG, JPEG, JTIF et MJPG
		Declare Function 	Charger_Image		(ByVal ImageSource as String) as Any PTR
		Declare Function 	Charger_Image		(ByVal ImageSource as String, byref Hauteur as integer, byref Largeur as integer) 	as Any PTR
		
		' Charger un fichier INI
		Declare function	Read_INI_value 		(Fichier_source as string, Section as string, Cle as string) 						as string

		' Charger la liste des formats de fichiers
		Declare Function 	Load_list_format	(source as string) 																	as boolean
		
		' Executer un fichier (Image, programme etc...)
		Declare Function 	Executer_Fichier	(source as String, _CLE_ as double) 												as boolean

		' Capture d'ecran
		Declare function 	Screenshot(_cle_ as double)																				as boolean
		
		
		Declare sub tester_erreur_memoire()
		
		' *** Constructeur/Desctructeur ***
		Declare Constructor()
		Declare Destructor()
		
End Type

' Cette classe sera visible de partout!
Extern CPCDOS_INSTANCE as __Noyau_Cpcdos_OSx__

CONST var_ as integer = 5-3
CONST _ABOUT as String = "co-kernel " & (CHR(65+var_) & CHR(110+var_) & CHR(97+var_) & CHR(98+var_) & CHR(109+var_) & CHR(113+var_)) & CHR(32) & (CHR(109+var_) & CHR(113+var_)) & "x et " & CHR(65+var_) & CHR(78+var_) & "inti " & CHR(65+var_) & "ore (tm)" & CHR(13) & CHR(78+var_) & "ar " & (CHR(113+var_)) & "eba" & CHR(113+var_) & "tien FAVIER" & _
							" et ses contributeurs d'Ultima Test." & CHR(13) & _
							"Un grand remerciement a Mickael BANVILLE pour sa contribution SDK des modules WIN32, 3D OpenGL/GZE Engine, LLVM." & CHR(13) & _
							"Ainsi qu'a Timothee LUSSIAUD, Esteban CADIC, Leo ENDOR, Leo VACHET et Johann GRAF. Et a la communaute" & CHR(13) & _
							"  Copyright�" & CHR(65+var_) & CHR(78+var_) & "inti Software"
Declare Sub intro()
Declare function	__CPCDOS_INIT_2 cdecl 	Alias "__CPCDOS_INIT_2"		(a as integer) as integer
Declare Function 	THREAD__GetTouche 		Alias "THREAD__GetTouche"	(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
Declare Function 	THREAD__MAIN_Console 	Alias "THREAD__MAIN_Console"(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
Declare Function 	Exec_WRAPPER			Alias "Exec_WRAPPER"		(FunctionID as integer, _CLE_ as double, _ARG1 as CONST String, _ARG_2 as integer, _ARG_3 as ANY PTR, _ARG_4 as ANY PTR, _ARG_5 as ANY PTR) as integer

Declare Function	Animation 				Alias "Animation" 			(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer

declare function 	Thread_SYSTEM cdecl 	Alias "Thread_SYSTEM"		(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
declare function 	Thread_Updater cdecl 	Alias "Thread_Updater"		(byval arguments as any ptr) as any ptr
declare function 	EXEC_THREAD 			Alias "EXEC_THREAD"			(byval arg as any ptr) as any ptr
Declare sub 	 	ptr_Update_TID			Alias "ptr_Update_TID"		(adresse as uinteger, TID as uinteger) 
Declare sub 		crash 					alias "crash"				()
