' Contient les declaration des fonctions et variables concernant 
' le gestionnaire graphique

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 23/06/2020

#include once "UTF8.bi"	' Gestion UTF-8


type _Context_menu_properties
	public:
	text 		as string
	enabled 	as boolean = true

	action 		as string = "NULL"
End type


type _Context_menu_
	public:

	' Values
	const _MAX_context_menu_items 				as integer = 16 ' TEMPORAIRE
	_Space_items 								as integer = 12

	' Colors
	red											as integer = 210
	green										as integer = 210
	blue										as integer = 210

	' nb items
	item_number 								as integer

	' Array list struct
	item_list (0 to _MAX_context_menu_items) 	as _Context_menu_properties

End type

' ==== Type de GUI a creer ====
Type Cpcdos_GUI_TYPE
	private:
		val as boolean = false
		
	public:
		CONST Fenetre			as integer = 1
		CONST Bouton			as integer = 2
		CONST PictureBox		as integer = 3
		CONST TextBlock			as integer = 4
		CONST TextBox			as integer = 5
		CONST ProgressBar		as integer = 6
		CONST Checkbox			as integer = 7
		CONST Explorer			as integer = 8
		CONST Listbox			as integer = 9
		
		CONST Wallpaper			as integer = 101
		CONST TOUT				as integer = 102
		
End Type

Extern GUI_TYPE 		as Cpcdos_GUI_TYPE

' Proprietes appliquable pour les objets
Type Proprietes_Objet
	public:
	
	Actu_Bitmap_TYPE	as integer
	Actu_Bitmap_PID		as integer
	Actu_Bitmap_Index	as integer
	
	LES_TYPES			as String
	
	Liste_Evenements	as String
	EV_Click			as boolean = true
	EV_MouseEnter		as boolean = true
	EV_MouseMove		as boolean = true
	EV_MouseLeave		as boolean = true
	EV_MouseClick		as boolean = true
	EV_KeyPress			as boolean = true
	EV_KeyEnter			as boolean = true
	EV_Resize			as boolean = true
	
	' Si l'objet peut avoir un menu contextuel
	ContextMenu		as integer ' 0:Disable  1:Default  2:personalised

	TaskBar			as integer ' 0:disable  1:Horizontale 2:verticale
	NoTaskBar		as boolean ' 0:Display	1:No displayed

	Pression_Bouton as integer
	Pression		as boolean ' Clic enfonce
	Pressable		as boolean
	
	Press			as boolean
	Release			as boolean
	
	
	Active			as boolean
	Activable		as boolean
	
	Focus			as boolean
	Focusable		as boolean
	
	Ferme			as boolean
	Fermable		as boolean = true
	
	ASizeUP			as boolean = false' Precedent etat de la fenetre TRUE:Agrandie
	SizeUP			as boolean = false' Etat de la fenetre TRUE:Agrandie
	Sizeable		as boolean = true
	Sizeable_ANGL 	as boolean = true
	
	Reduit			as boolean
	Reductable		as boolean = true
	
	Survole			as boolean
	Survolable		as boolean
	
	Verrouille		as boolean
	Verrouillable	as boolean
	
	Editable		as boolean
	
	' Mode bureau
	DESKTOPMODE		as boolean
	
	UserEdit_Pos	as uinteger
	
	Multi_Lignes	as boolean
	
	Console			as boolean
	Console_LIGNE	as boolean
	
	' Activer le fond de couleur
	Fond_Couleur	as boolean
	
	Pos_User_New	as boolean
	Move_Keyb		as boolean
	Pos_User_Mouse_X as integer
	Pos_User_Mouse_Y as integer
	
	' Couleur generaux des objets / Fond fenetre
	Alpha			as integer
	Couleur_R		as integer
	Couleur_V		as integer
	Couleur_B		as integer

	' Floutage
	Blurry_Mode		as integer
	
	' Bordure
	Bordure			as integer
	
	' Deplacable
	Deplacable		as integer
	
	' Ombre (0 a 255)
	Ombre 			as integer
	
	' Position X, Y de l'ombre relatif a la fenetre
	Ombre_PX		as integer
	Ombre_PY		as integer
	
	' Couleur des conteneurs
	Couleur_OMBRE_R	as integer
	Couleur_OMBRE_V	as integer
	Couleur_OMBRE_B	as integer
	
	' Couleur des conteneurs
	Couleur_CTN_R	as integer
	Couleur_CTN_V	as integer
	Couleur_CTN_B	as integer
	
	' Font / Contenu des objets
	Couleur_FNT_R	as integer
	Couleur_FNT_V	as integer
	Couleur_FNT_B	as integer
	
	' Titre
	Couleur_TITRE_R	as integer
	Couleur_TITRE_V	as integer
	Couleur_TITRE_B	as integer
	
	' Definir la taille automatiquement
	AutoSizeOBJ		as integer
	AutoSizeIMG		as integer
	
	' Type l'objet par numero
	TYPE_OBJ		as integer
	
	' Fichier contenant les fonctions evenementielles.
	Fichier_evenement as String
	
	OBJ_context_menu as _Context_menu_

	' Mode d'affichage du menu contextuel 0:disable  1:oui  2:oui+perso
	MENU_CTX		as integer
	
End Type

Type _identification_objet_
	' Permet l'identification des objets et fenetres graphiques du noyau.
	
	public:
	
	' *******************************
	' *** Identification publique ***
	' *******************************
	
	_CLE_				as double 	' Emprunte numerique (CleID) pour son identification publique

	OS_id				as integer
	
	' ********************************
	' *** Identification parentale ***
	' ********************************
	
	' Processus hebergeur
	Proc_PARENT			as String 	' Nom du processus parent
	PID_PARENT 			as uinteger 	' Numero de PID du processus parent
	
	' Thread executif
	Thread_PARENT		as String 	' Nom du thread parent
	TID_PARENT			as uinteger	' Numero TID du thread parent
	
	' Fenetre graphique hebergeur
	Fenetre_PARENT		as String 	' Nom de la fenetre parent
	Index_FNT_PARENT 	as integer	' Index de la fenetre parent
	Handle_PARENT		as uinteger	' Numero handle de la fenetre hebergeur (IMPORTANT))
	
	
	' *****************************
	' *** Identification enfant ***
	' *****************************
	
	Nom					as String 	' Nom de la propriete
	Index_ENFANT		as integer 	' Numero index GUI de l'objet enfant
	Handle				as uinteger ' Numero de HANDLE de l'objet enfant
	
End Type


' ==== Pour la creation d'une fenetre ====
Type Cpcdos_GUI__FENETRE
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	CONST _MAX_GUI___OBJS		as integer = 128 ' TEMPORAIRE
	CONST _MAX_GUI_FENETRE	 	as integer = 64 ' TEMPORAIRE
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE ' Si l'objet a ete cree ou non
	
	Ordre_OBJETS (0 to _MAX_GUI___OBJS+1)	as String 	' Ordre de la creation des objets
	OBJET_FOCUS_TYPE			as integer 	' Type d'objet en cours de selection
	OBJET_FOCUS_INDEX			as integer 	' Index de cet objet
	OBJET_SURVOLE_TYPE			as integer 	' Type d'objet en cours de survole (ou dernier)
	OBJET_SURVOLE_INDEX			as integer 	' Index de cet objet
	Nombre_OBJETS 				as integer 	' Nombre d'objets enfants dans la fenetre
	
	
	TITRE						as String 	' Titre de la fenetre
	POS_TITRE_X					as integer 	' Position horizontale du titre
	POS_TITRE_Y					as integer 	' Position verticale du titre
	
	CONTENEUR_COMPLET			as boolean	' Afficher le conteneur au complet (SANS la barre de titre))
	
	IMG_TITRE					AS String	' Image de la barre de titre

	const array_design_MAX 							as integer = 24

	design_Image_LOADED								as boolean = false
	' Path image
	design_Image		(0 to array_design_MAX) 	as string

	' BitmapID
	design_Image_ID		(0 to array_design_MAX) 	as integer

	' Exemples : 
	' "SX:WIN" : Size X relatif a la Size X de la fenetre
	' "SY:WIN" : Size Y relatif a la Size Y de la fenetre
	' "SXCALC:-14" : Size X Calculation de -14 pixels
	' "SYCALC:14" : Size Y Calculation de +14 pixels
	design_Image_param(0 to array_design_MAX)	as string
	
	' 0 : Top Left  1 : Top Right  2 : Down left  3 : Down right
	design_Image_pos_relative(0 to array_design_MAX) as integer ' Position relative
	
	' Positionnement relative
	design_Image_px(0 to array_design_MAX) 		as integer
	design_Image_py(0 to array_design_MAX) 		as integer
	design_Image_sx(0 to array_design_MAX)		as integer
	design_Image_sy(0 to array_design_MAX) 		as integer
	
	' Colorisation
	design_Image_alpha(0 to array_design_MAX) 	as integer
	
	
	
	TITRE_IMG_ID				as Integer
	BUFFER_TITRE_IMG_ID			as Integer
	BUFFER_TITRE_2_IMG_ID		as Integer

	IMG_BackGround_ID			as integer

	BUFFER_WINDOW_IMG_ID		as Integer
	
	BUFFER_WIN_IMG_ID			as Integer
	BUFFER_OMBRE_WIN_IMG_ID		as Integer
	
	' IMG_TITRE_PTR				AS ANY PTR	' Buffer de la barre de titre
	
	Alpha_Mode					as integer
	
	' === ICONE APPLICATION ===
	ICONE						as String 	' Icone de l'application
	ICONE_ANCIEN				as String 	' Icone de l'application
	
	ICONE_IMG_ID				as integer
	ICONE_ORG_IMG_ID			as integer

	ICONE_IMG_Resized_TaskBar	as integer ' ID icone taskbar resized

	
	POS_ICONE_X					as integer 	' Position horizontale de l'icone
	POS_ICONE_Y					as integer 	' Position verticale de l'icone
	POS_ICONE_POS				as integer	' 0/1:Gauche 2:Centre 3:Droit (Nombre negatif)
	SIZ_ICONE_X					as integer 	' Taille horizontale de l'icone
	SIZ_ICONE_Y					as integer 	' Taille verticale de l'icone
	SIZ_ICONE					as boolean 	' Changer la taille ? (Optimisation si NON)	
	ICONE_DejaSize				as boolean 	' Si l'icone deja sized
	
	' === ICONE FERMETURE ===
	BT_CLOSE					as String 	' Icone
	BT_CLOSE_ANCIEN				as String 	' Icone de l'application
	
	BT_CLOSE_IMG_ID				as integer
	BT_CLOSE_ORG_IMG_ID			as integer

	POS_BT_CLOSE_X				as integer 	' Position horizontale de l'icone
	POS_BT_CLOSE_Y				as integer 	' Position verticale de l'icone
	POS_BT_CLOSE_POS			as integer	' 0/1:Gauche 2:Centre 3:Droit (Nombre negatif)
	SIZ_BT_CLOSE_X				as integer 	' Taille horizontale de l'icone
	SIZ_BT_CLOSE_Y				as integer 	' Taille verticale de l'icone
	SIZ_BT_CLOSE				as boolean 	' Changer la taille ? (Optimisation si NON)	
	BT_CLOSE_DejaSize			as boolean 	' Changer la taille ? (Optimisation si NON)	
	
	
	' === ICONE AGRANDISSEMENT ===
	BT_SIZEUP					as String 	' Icone
	BT_SIZEUP_ANCIEN			as String 	' Icone de l'application
	
	BT_SIZEUP_IMG_ID			as Integer
	BT_SIZEUP_IMG_ORG_ID		as Integer
	
	POS_BT_SIZEUP_X				as integer 	' Position horizontale de l'icone
	POS_BT_SIZEUP_Y				as integer 	' Position verticale de l'icone
	POS_BT_SIZEUP_POS			as integer	' 0/1:Gauche 2:Centre 3:Droit (Nombre negatif)
	SIZ_BT_SIZEUP_X				as integer 	' Taille horizontale de l'icone
	SIZ_BT_SIZEUP_Y				as integer 	' Taille verticale de l'icone
	SIZ_BT_SIZEUP				as boolean 	' Changer la taille ? (Optimisation si NON)	
	BT_SIZEUP_DejaSize 			as boolean 	' Changer la taille ? (Optimisation si NON)	
	
	' === ICONE RETRECISSEMENT ===
	BT_SIZEDOWN					as String 	' Icone
	BT_SIZEDOWN_ANCIEN			as String 	' Icone de l'application
	
	BT_SIZEDOWN_IMG_ID			as Integer
	BT_SIZEDOWN_IMG_ORG_ID		as Integer
	
	POS_BT_SIZEDOWN_X			as integer 	' Position horizontale de l'icone
	POS_BT_SIZEDOWN_Y			as integer 	' Position verticale de l'icone
	POS_BT_SIZEDOWN_POS			as integer	' 0/1:Gauche 2:Centre 3:Droit (Nombre negatif)
	SIZ_BT_SIZEDOWN_X			as integer 	' Taille horizontale de l'icone
	SIZ_BT_SIZEDOWN_Y			as integer 	' Taille verticale de l'icone
	SIZ_BT_SIZEDOWN				as boolean 	' Changer la taille ? (Optimisation si NON)	
	BT_SIZEDOWN_DejaSize 		as boolean 	' Changer la taille ? (Optimisation si NON)	
	
	' === ICONE REDUCTION ===
	BT_REDUCT					as String 	' Icone
	BT_REDUCT_ANCIEN			as String 	' Icone de l'application
	
	BT_REDUCT_IMG_ID			as Integer
	BT_REDUCT_IMG_ORG_ID		as Integer
	
	POS_BT_REDUCT_X				as integer 	' Position horizontale de l'icone
	POS_BT_REDUCT_Y				as integer 	' Position verticale de l'icone
	POS_BT_REDUCT_POS			as integer	' 0/1:Gauche 2:Centre 3:Droit (Nombre negatif)
	SIZ_BT_REDUCT_X				as integer 	' Taille horizontale de l'icone
	SIZ_BT_REDUCT_Y				as integer 	' Taille verticale de l'icone
	SIZ_BT_REDUCT				as boolean 	' Changer la taille ? (Optimisation si NON)	
	BT_REDUCT_DejaSize			as boolean 	' Changer la taille ? (Optimisation si NON)	

	POS_X						as Integer 	' Position horizontale
	POS_X_ORG					as integer 	' ORIGINAL
	
	POS_Y						as Integer 	' Position verticale
	POS_Y_ORG					as integer 	' ORIGINAL
	
	SIZ_X						as Integer 	' Taille horizontale
	SIZ_X_ORG					as integer	' ORIGINAL
	
	SIZ_Y						as Integer 	' Taille verticale
	SIZ_Y_ORG					as integer	' ORIGINAL
	
	SIZ_TITRE					as Integer 	' Taille Y de la barre de titre
	
	BIT_ORG						as integer ' Bits
End Type



' ==== Pour la creation d'un bouton ====
Type Cpcdos_GUI__BOUTON
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE ' Si l'objet a ete cree!
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non

	
	DejaSize				as boolean 	' Si l'image a deja ete resize
	IMAGE					as String 	' Chemin d'acces a la ressource
	IMAGE_SURVOLE			as String 	' Chemin d'acces a la ressource
	
	IMAGE_ANCIEN 			as String 	' Ancien chemin d'acces a la ressource
	IMAGE_SURVOLE_ANCIEN 	as String 	' Ancien chemin d'acces a la ressource
	
	IMG_ID					as integer
	IMG_ORG_ID				as integer
	IMG_SURVOLE_ID			as integer
	IMG_SURVOLE_ORG_ID		as integer

	IMAGE_SURVOLE_OPACITE	as integer 	' Opacite de l'image de survole
	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)
										'  Ce qui permet en cas de changeent de resolutin d'ecran, de recharger l'image
	
	TEXTE					as String 	' Afficher du texte a l'interieur	

	POS_X					as Integer 	' Position horizontale
	POS_Y					as Integer 	' Position verticale
	
	SIZ_X					as Integer 	' Taille horizontale
	SIZ_Y					as Integer 	' Taille verticale
End Type

' ==== Pour la creation d'une PictureBox ====
Type Cpcdos_GUI__PICTUREBOX
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE 	' Si l'objet a ete cree!
	DejaSize				as boolean 	' Si l'image a deja ete resize
	
	IMAGE					as String 	' Chemin d'acces a la ressource
	IMAGE_ANCIEN 			as String 	' Ancien chemin d'acces a la ressource
	AdresseMemoire			as boolean 	' si c'est une adresse memoire, eviter sa suppression
	
	IMG_ID					as integer 	' ID de la ressource BITMAP
	IMG_BackGround_ID		as integer 	' ID de la ressource arriere plan
	IMG_ORG_ID				as integer 	' ID de la ressource origine BITMAP
	
	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)

	TEXTE					as String 	' Afficher du texte a l'interieur	

	POS_X					as Integer ' Position horizontale
	POS_Y					as Integer ' Position verticale
	
	SIZ_X					as Integer ' Taille horizontale
	SIZ_Y					as Integer ' Taille verticale
End Type

' ==== Pour la creation d'un TextBlock ====
Type Cpcdos_GUI__TEXTBLOCK
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE ' Si l'objet a ete cree!
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non

	
	' ** Proprietes unique **
	DejaSize				as boolean 	' Si l'image a deja ete resize
	
	TEXTE					as String 	' Afficher du texte a l'interieur	

	POS_X					as Integer 	' Position horizontale
	POS_Y					as Integer 	' Position verticale
	
	SIZ_X					as Integer 	' Taille horizontale
	SIZ_Y					as Integer 	' Taille verticale
End Type

' ==== Pour la creation d'un TextBox ====
Type Cpcdos_GUI__TEXTBOX
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE ' Si l'objet a ete cree!
	
	IUG_UPDATER				as integer 	' Actualisation graphique en msms
	THREAD_OK				as integer 	' Si le thread est execute ou non

	' ** Proprietes unique **	
	DejaSize				as boolean 	' Si l'image a deja ete resize
	TEXTE					as String 	' Texte du conteneur
	
	CONSOLE					as boolean	' Indique si c'est un textbox pour la console
	
	IMG_ID					as integer
	IMG_ORG_ID				as integer

	Image_Ancien			as String	' La barre d'edition
	Image					as String	' La barre d'edition
	Image_2					as String	' La barre d'edition eclairee
	Affiche_EditBar			as boolean' Afficher la barre ou non (pour la faire clignotter)
	
	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)

	POS_X					as Integer 	' Position horizontale
	POS_Y					as Integer 	' Position verticale
	
	SIZ_X					as Integer 	' Taille horizontale
	SIZ_Y					as Integer 	' Taille verticale
End Type

' ==== Pour la creation d'une barre de progression ====
Type Cpcdos_GUI__PROGRESSBAR
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE 	' Si l'objet a ete cree!
	DejaSize				as boolean 	' Si l'image a deja ete resize
	IMAGE					as String 	' Chemin d'acces a la ressource
	IMAGE_ANCIEN 			as String 	' Ancien chemin d'acces a la ressource
	
	IMG_ID					as integer
	IMG_prog_ID				as integer
	IMG_ORG_ID				as integer

	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)
										'  Ce qui permet en cas de changeent de resolutin d'ecran, de recharger l'image
	
	TEXTE					as String 	' Afficher du texte a l'interieur	
	VALEUR					as Integer	' Valeur de la progression
	AValeur					as integer 	' Ancienne valeure

	POS_X					as Integer ' Position horizontale
	POS_Y					as Integer ' Position verticale
	
	SIZ_X					as Integer ' Taille horizontale
	SIZ_Y					as Integer ' Taille verticale
End Type

' ==== Pour la creation d'un CheckBox ====
Type Cpcdos_GUI__CHECKBOX
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE 	' Si l'objet a ete cree!
	DejaSize				as boolean 	' Si l'image a deja ete resize
	IMAGE					as String 	' Chemin d'acces a la ressource
	IMAGE_ANCIEN 			as String 	' Ancien chemin d'acces a la ressource
	
	IMG_ID					as integer
	IMG_fond_ID				as integer
	IMG_ORG_ID				as integer

	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)
	
	IMG_CHECKED				as String 	' Image case cochee
	IMG_CHECKED_SURVOLE		as String 	' Image case cochee et Survolee
	IMG_NCHECKED			as String 	' Image case NON cochee
	IMG_NCHECKED_SURVOLE	as String 	' Image case cochee et Survolee
	IMG_TX					as integer
	IMG_TY					as integer
										'  Ce qui permet en cas de changeent de resolutin d'ecran, de recharger l'image
	
	TEXTE					as String 	' Afficher du texte a l'interieur	
	VALEUR					as Integer	' Valeur de la progression

	POS_X					as Integer ' Position horizontale
	POS_Y					as Integer ' Position verticale
	
	SIZ_X					as Integer ' Taille horizontale
	SIZ_Y					as Integer ' Taille verticale
End Type

' ==== Pour la creation d'un explorer ====
Type Cpcdos_GUI__EXPLORER
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE ' Si l'objet a ete cree!
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non

	DejaSize				as boolean 	' Si l'image a deja ete resize
	IMAGE					as String 	' Chemin d'acces a la ressource
	IMAGE_SURVOLE			as String 	' Chemin d'acces a la ressource
	
	IMAGE_ANCIEN 			as String 	' Ancien chemin d'acces a la ressource
	IMAGE_SURVOLE_ANCIEN 	as String 	' Ancien chemin d'acces a la ressource
	
	NB_ICONE				as integer	' Nombre d'icones differents
	IMG_ICONE_ID(24)		as integer	' Icones des formats de fichiers
	
	IMG_BUFFER_ID			as integer	' Buffer de l'explorer
	IMG_SELECTEUR_ID		as integer	' Image du selecteur quand la souris survole un element
	IMG_SCROLL_ID			as integer	' Image du selecteur quand la souris survole un element
	SCROLLING_Y				as integer 	' Position du scroller bar

	Mode_Affichage			as integer 	' 0:Petite Liste,  1:Moyenne liste,  2:Icones

	IMAGE_SURVOLE_OPACITE	as integer 	' Opacite de l'image de survole
	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)
										'  Ce qui permet en cas de changeent de resolutin d'ecran, de recharger l'image
	
	TEXTE					as String 	' Afficher du texte a l'interieur	

	POS_X					as Integer 	' Position horizontale
	POS_Y					as Integer 	' Position verticale
	
	SIZ_X					as Integer 	' Taille horizontale
	SIZ_Y					as Integer 	' Taille verticale
End Type

' ==== Pour la creation d'une ListBox ====
Type Cpcdos_GUI__LISTBOX
	public:
	
	' ** Identifications uniques de l'objet graphique **
	Identification_Objet 	as _identification_objet_
	
	' ** Proprietes relationnelles et graphiques en commun **
	PROP_TYPE 				as Proprietes_Objet
	
	
	' ** Proprietes unique **
	Initialisation_OK 		as boolean = FALSE ' Si l'objet a ete cree!
	
	IUG_UPDATER				as integer 	' Actualisation graphique en ms
	THREAD_OK				as integer 	' Si le thread est execute ou non

	DejaSize				as boolean 	' Si l'image a deja ete resize
	IMAGE					as String 	' Chemin d'acces a la ressource
	IMAGE_SURVOLE			as String 	' Chemin d'acces a la ressource
	
	IMAGE_ANCIEN 			as String 	' Ancien chemin d'acces a la ressource
	IMAGE_SURVOLE_ANCIEN 	as String 	' Ancien chemin d'acces a la ressource
	
	NB_ICONE				as integer	' Nombre d'icones differents
	IMG_ICONE_ID(24)		as integer	' Icones des formats de fichiers
	
	IMG_BUFFER_ID			as integer	' Buffer de l'explorer
	IMG_SELECTEUR_ID		as integer	' Image du selecteur quand la souris survole un element
	IMG_SCROLL_ID			as integer	' Image du selecteur quand la souris survole un element
	SCROLLING_Y				as integer 	' Position du scroller bar

	Mode_Affichage			as integer 	' 0:Petite Liste,  1:Moyenne liste,  2:Icones

	IMAGE_SURVOLE_OPACITE	as integer 	' Opacite de l'image de survole
	BIT_ORG					as integer 	' Nombre de bits utilises pour afficher l'image (16, 24, 32)
										'  Ce qui permet en cas de changeent de resolutin d'ecran, de recharger l'image
	
	TEXTE					as String 	' Afficher du texte a l'interieur	

	POS_X					as Integer 	' Position horizontale
	POS_Y					as Integer 	' Position verticale
	
	SIZ_X					as Integer 	' Taille horizontale
	SIZ_Y					as Integer 	' Taille verticale
End Type


Type CPCDOS_GUI_INIT__
	public:
	' *** Graphique ***
	CONST _MAX_GUI___OBJS			as integer = 128 ' TEMPORAIRE
	CONST _MAX_GUI_FENETRE	 		as integer = 64 ' TEMPORAIRE
	
	
	CONST _MAX_GUI_BOUTON	 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_PICTUREBOX 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_TEXTBLOCK 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_TEXTBOX	 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_PROGRESSBAR 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_CHECKBOX 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_EXPLORER 	as integer = _MAX_GUI___OBJS
	CONST _MAX_GUI_LISTBOX	 	as integer = _MAX_GUI___OBJS
	
	RELATIF_X					as integer ' Position origine relatif ORG<->CURSEUR horizontale
	RELATIF_Y					as integer ' Position origine relatif ORG<->CURSEUR verticale
	
	DEPLACEMENT 				as integer ' Si la fenetre se deplace
	POSITION(0 to _MAX_GUI_FENETRE+1) 	as Integer ' Ordre fenetrale
	
	' Instancier les Type
	TEMP_GUI__FENETRE			as Cpcdos_GUI__FENETRE
	TEMP_GUI__BOUTON			as Cpcdos_GUI__BOUTON
	TEMP_GUI__PICTUREBOX		as Cpcdos_GUI__PICTUREBOX
	TEMP_GUI__TEXTBLOCK			as Cpcdos_GUI__TEXTBLOCK
	TEMP_GUI__TEXTBOX	 		as Cpcdos_GUI__TEXTBOX
	TEMP_GUI__PROGRESSBAR 		as Cpcdos_GUI__PROGRESSBAR
	TEMP_GUI__CHECKBOX 			as Cpcdos_GUI__CHECKBOX
	TEMP_GUI__EXPLORER 			as Cpcdos_GUI__EXPLORER
	TEMP_GUI__LISTBOX 			as Cpcdos_GUI__LISTBOX
	
	RefreshGUI_Elements_FENETRE			as integer
	RefreshGUI_Elements_BOUTON			as integer
	RefreshGUI_Elements_PICTUREBOX		as integer
	RefreshGUI_Elements_TEXTBLOCK		as integer
	RefreshGUI_Elements_TEXTBOX			as integer
	RefreshGUI_Elements_PROGRESSBAR		as integer
	RefreshGUI_Elements_CHECKBOX		as integer
	RefreshGUI_Elements_EXPLORER		as integer
	RefreshGUI_Elements_LISTBOX			as integer
	
	GUI__FENETRE	(0 to _MAX_GUI_FENETRE 		+ 1) 	as Cpcdos_GUI__FENETRE
	GUI__BOUTON		(0 to _MAX_GUI_BOUTON 		+ 1) 	as Cpcdos_GUI__BOUTON
	GUI__PICTUREBOX	(0 to _MAX_GUI_PICTUREBOX 	+ 1) 	as Cpcdos_GUI__PICTUREBOX
	GUI__TEXTBLOCK 	(0 to _MAX_GUI_TEXTBLOCK 	+ 1) 	as Cpcdos_GUI__TEXTBLOCK
	GUI__TEXTBOX 	(0 to _MAX_GUI_TEXTBOX 		+ 1) 	as Cpcdos_GUI__TEXTBOX
	GUI__PROGRESSBAR(0 to _MAX_GUI_PROGRESSBAR 	+ 1) 	as Cpcdos_GUI__PROGRESSBAR
	GUI__CHECKBOX	(0 to _MAX_GUI_CHECKBOX 	+ 1) 	as Cpcdos_GUI__CHECKBOX
	GUI__EXPLORER	(0 to _MAX_GUI_EXPLORER 	+ 1) 	as Cpcdos_GUI__EXPLORER
	GUI__LISTBOX	(0 to _MAX_GUI_LISTBOX 		+ 1) 	as Cpcdos_GUI__LISTBOX
	
End Type


Type _SCI_Cpcdos_OSx__
	private:
		

		_CLE_					as double ' Empreinte numerique
		OS_id					as integer
		NombreOSEnCours			as integer
		
		Bit_Actuel				as integer
		Bit_Precedent			as integer
		
		
		' Instance des objets en version NULL
		NULL_PROP_TYPE 			as Proprietes_Objet
		NULL_GUI__FENETRE		as Cpcdos_GUI__FENETRE
		NULL_GUI__BOUTON		as Cpcdos_GUI__BOUTON
		NULL_GUI__PICTUREBOX	as Cpcdos_GUI__PICTUREBOX
		NULL_GUI__TEXTBLOCK		as Cpcdos_GUI__TEXTBLOCK
		NULL_GUI__TEXTBOX	 	as Cpcdos_GUI__TEXTBOX
		NULL_GUI__PROGRESSBAR 	as Cpcdos_GUI__PROGRESSBAR
		NULL_GUI__CHECKBOX 		as Cpcdos_GUI__CHECKBOX
		NULL_GUI__EXPLORER		as Cpcdos_GUI__EXPLORER
		NULL_GUI__LISTBOX		as Cpcdos_GUI__LISTBOX
	
	public:
	
		CONST _MAX_NOMBRE_OS		as integer = 8
		CONST _MAX_Taskbar_Elements as integer = 24
	
		RetourVAR as String
	
		A_POS_X as integer
		A_POS_Y as integer
		
		Event_Liste_Noire as string
	
		RetourCCP as String
		
		PID_SCI as uinteger
		TID_SCI as uinteger

		' Relacher clic apres interaction barre de titre
		CLIC_PRESS_TITLE as boolean = false
		
		
		MULTI_PICTUREBOX					as boolean ' Permet de synchoniser les picturesbox animes n'ayant pas le focus
		
		' ---- EXPLOREUR DE FICHIERS -----
		' Liste des icones de taille MAX et MIN pour l'explorateur de fichiers
		const icon_ID						as integer = 11111
		const FORMAT_MAX					as integer = 24 ' a display identique a celui de cpcdos.bi
		
		FORMAT_file_icon_MAX_ID(FORMAT_MAX)	as integer
		FORMAT_file_icon_MIN_ID(FORMAT_MAX)	as integer
		EXP_BACKGROUND_ID					as integer
		LST_BACKGROUND_ID					as integer ' Listbox !
		EXP_SCROLL_ID						as integer

		EXP_Survole_LEFT_BORDER_ID			as integer
		EXP_Survole_ID						as integer
		EXP_Survole_ICO_ID					as integer
		EXP_Survole_RIGHT_BORDER_ID			as integer

		' Mode desktop
		DESKTOPMODE_Index_Fenetre			as integer

		' TaskBar
		TaskBar_clic						as boolean
		TaskBar_List_win					as integer ' Fenetre taskbar

		' Positionnement sur la barre
		TaskBar_PosX						as integer
		TaskBar_PosY						as integer

		' Taille
		TaskBar_SizX						as integer
		TaskBar_SizY						as integer

		' ID des images
		TaskBar_Standard_ID					as integer
		TaskBar_Focus_ID					as integer

		TaskBar_index_Position	(0 to _MAX_Taskbar_Elements)	as integer
		TaskBar_px				(0 to _MAX_Taskbar_Elements)	as integer
		TaskBar_py				(0 to _MAX_Taskbar_Elements)	as integer

		TaskBar_sx				(0 to _MAX_Taskbar_Elements)	as integer
		TaskBar_sy				(0 to _MAX_Taskbar_Elements)	as integer


		' ------------ WINDOWS ---------------

		const array_design_MAX 							as integer = 24

		design_Image_LOADED								as boolean = false
		' Path image
		design_Image		(0 to array_design_MAX) 	as string

		' BitmapID
		design_Image_ID_org	(0 to array_design_MAX) 	as integer
		design_Image_ID		(0 to array_design_MAX) 	as integer

		' Exemples : 
		' "SX:WIN" : Size X relatif a la Size X de la fenetre
		' "SY:WIN" : Size Y relatif a la Size Y de la fenetre
		' "SXCALC:-14" : Size X Calculation de -14 pixels
		' "SYCALC:14" : Size Y Calculation de +14 pixels
		design_Image_param(0 to array_design_MAX)	as string
		
		' 0 : Top Left  1 : Top Right  2 : Down left  3 : Down right
		design_Image_pos_relative(0 to array_design_MAX) as integer ' Position relative
		
		' Positionnement relative
		design_Image_px(0 to array_design_MAX) 		as integer
		design_Image_py(0 to array_design_MAX) 		as integer
		design_Image_sx(0 to array_design_MAX)		as integer
		design_Image_sy(0 to array_design_MAX) 		as integer
		
		' Colorisation
		design_Image_alpha(0 to array_design_MAX) 	as integer

		
		BT_CLOSE_IMG_ID						as integer
		BT_CLOSE_ORG_IMG_ID					as integer

		BT_SIZEUP_IMG_ID					as integer
		BT_SIZEUP_IMG_ORG_ID				as integer

		BT_SIZEDOWN_IMG_ID					as integer
		BT_SIZEDOWN_IMG_ORG_ID				as integer

		BT_REDUCT_IMG_ID					as integer
		BT_REDUCT_IMG_ORG_ID				as integer

		ICONE_IMG_ID						as integer
		ICONE_ORG_IMG_ID					as integer

		TITRE_ORG_IMG_ID					as integer
		

		ContextMenu_INSTANCE 				as _Context_menu_

		' ID de l'mage de fond du menu contextuel
		ContextMenu_Img_ID					as integer

		' Si le menu contextuel est ouvert ou non
		ContextMenu_IsOpen					as boolean
		ContextMenu_Background_ID			as integer
		ContextMenu_Ancien_PX				as integer
		ContextMenu_Ancien_PY				as integer
		ContextMenu_Ancien_SX				as integer
		ContextMenu_Ancien_SY				as integer
		ContextMenu_Background_blur_ID		as integer
		ContextMenu_handle					as integer
		ContextMenu_WinIndex				as integer

		
		BACKGROUND_IMAGE					as integer
		
		INST_INIT_GUI 		as CPCDOS_GUI_INIT__
		
		GUI_TYPE 			as Cpcdos_GUI_TYPE
		
		GUI_Exec 			as boolean ' 0:Non charge  1:Charge
		GUI_Exec_os			(0 to _MAX_NOMBRE_OS) as boolean
		GUI_Mode 			as boolean ' 0:Non affiche 1:Affiche
		
		UTF8_INSTANCE 		as __UTF8_Cpcdos_OSx__	' Gestion UTF-8
		
		' *** IUG ***
		Declare Sub 	 Blitter_Video				()
		Declare Sub 	 Blitter_Video				(byval Pos_X as integer, Pos_Y as integer, SourisPresente as integer)
		Declare Function Initialiser_GUI			(Arg1 as integer, RetourVAR_ as String, _CLE_ as double)	as integer
		Declare Sub 	 IUG_Updater				(Type_IUG as integer, index as integer, index_PID as integer)
		Declare Function CPC__GUI_Init_obj			(Type_De_GUI as Integer, _Proprietes as CPCDOS_GUI_INIT__, _CLE_ as uinteger, Modification_GUI as boolean,  _INDEX_MODIF_ as integer)as Integer
		Declare Function CPC__GUI_SUPPRIMER_bitmaps_fenetre(_INDEX_FENETRE_ as integer, clean_memory as boolean, reset_id as boolean, objets as boolean) as Integer
		Declare Function CPC__GUI_SUPPRIMER_fenetre	(_INDEX_ as integer) as Integer
		Declare Function CPC__GUI_SUPPRIMER_obj		(Type_De_GUI as Integer, _INDEX_ as integer) 				as Integer
		Declare Function get_Emplacement_Libre		(Type_De_GUI as integer) 									as integer
		Declare Function get_NombreOSenCours		() 															as integer
		Declare Sub 	 set_NombreOSenCours		(Nombre as Integer)
		Declare Function get_CLE					() 															as double
		Declare Sub 	 set_CLE					(CLE as Double)
		Declare Sub 	 set_OSid					(CLE as Integer)
		Declare Function get_OSid					()															as integer

		
		Declare Function Interaction_SOURIS_FENETRE	(Pos_X as integer, Pos_Y as integer, Type_Clic as integer) 	as integer
		Declare Function Interaction_TOUCHE			(Pos_Souris_X as integer, Pos_Souris_Y as integer, INDEX_Fenetre as integer, POS_X as integer, POS_Y as integer, SIZ_X as integer, SIZ_Y as integer) as boolean
		Declare Function Fenetre_FOCUS				(INDEX_FENETRE as integer) 									as integer
		Declare Function Sizing_window_button		(SizeUP as boolean, index as integer) 						as boolean
		Declare Function DeplacerFenetre_TO_POS		(POS_X as integer, POS_Y as integer) 						as integer
		Declare Function ActualiserGUI				(ModeActu as integer, index as integer) 					as integer
		Declare Function Display_Taskbar			(index_fenetre as integer) 									as boolean
		Declare Function Changer_PremierPlan_OrdreFenetrale(NouvelleFenetre as integer) 						as integer
		Declare Function Interaction_SOURIS_OBJ		(Index_Fenetre as integer) 									as integer
		
		' *** SCI ***
		Declare Function Initialiser_ECRAN			(Resolution as String, Bits as integer) 					as integer
		Declare Function Initialiser_ECRAN			(Res_X as integer, Res_Y as integer, Bits as integer) 		as integer
		Declare Function charger_Curseurs_properties() 															as boolean
		Declare Function charger_Curseurs			(Handle as integer) 										as integer
		Declare Function charger_Fond				(CHEMIN as String, Handle as integer) 						as integer
		declare Function generer_ContextMenu_properties(Type_Objet as integer, index as integer) 				as _Context_menu_
		Declare Function fermer_ContextMenu			() 															as boolean
		Declare Function creer_ContextMenu			(Pos_X as integer, Pos_Y as integer, items as _Context_menu_) as boolean
		Declare Function creer_Msgbox				(nom_propriete as string, Texte as String, Titre as String, Type_Avertissement as Integer, Type_message as Integer, ev as String, CleID as Double) as integer
		Declare Function IMG_Recuperer_Taille_XY	(byref Source as any ptr) 									as string
		Declare Function IMG_Recuperer_Taille_X		(byref Source as any ptr) 									as integer
		Declare Function IMG_Recuperer_Taille_Y		(byref Source as any ptr) 									as integer
		Declare Function IMG_Recuperer_bpp			(byref Source as any ptr) 									as integer
		Declare Function IMG_Changer_taille			(byref Source as any ptr, byref Destination as any ptr, Nouveau_X as integer, Nouveau_Y as integer, RegenBitmap as boolean)						as any ptr
		Declare Function IMG_Changer_taille_Rapide	(byref Source as any ptr, byref Nouveau_IMG as any ptr, Taille_X as integer, Taille_Y as integer, Nouveau_X as integer, Nouveau_Y as integer) 	as any ptr
		
		declare Function FILE_FORMAT_load_icons		() as boolean
		
		
		' *** OBJ ***
		Declare Function Creer_Fenetre				(_index_ as integer) 							as integer
		Declare Function Creer_Bouton				(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_PictureBox			(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_TextBlock			(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_TextBox				(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_ProgressBar			(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_CheckBox				(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_Explorer				(_index_ as integer, _INDEX_PID_ as integer)	as integer
		Declare Function Creer_ListBox				(_index_ as integer, _INDEX_PID_ as integer)	as integer
		
		Declare Constructor()
		Declare Destructor()

End Type

Declare Function THREAD_RefreshGUI_Elements cdecl 	Alias "THREAD_RefreshGUI_Elements" 	(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
Declare Function THREAD_Screen_Video 				Alias "THREAD_Screen_Video" 		(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
Declare Function THREAD__SCI 						Alias "THREAD__SCI" 				(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
Declare Function THREAD_IUG_PICTUREBOX cdecl 		Alias "THREAD_IUG_PICTUREBOX" 		(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer



