' Contient des fonctions et variables concernant 
' le systeme de Cpcdos

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 15/10/2018

' 08-10-2018	: Refonte 2.1 beta 1.1
' 25-01-2018	: AJOUT de l'attribut Port_COM_Ecriture

#ifndef NULL
#define NULL cptr(any ptr,0)
#endif

#define MARKER_NONE &Hff
#define SOF0(x) (x = &Hc0)
#define SOF1(x) (x = &Hc1)
#define SOF2(x) (x = &HC2)
#define DHT(x)  (x = &Hc4)
#define RES(x)  (x>= &Hd0 and x<= &Hd7)
#define SOI(x)  (x = &Hd8)
#define EOI(x)  (x = &Hd9)
#define DQT(x)  (x = &Hdb)
#define SOS(x)  (x = &Hda)
#define DRI(x)  (x = &Hdd)
#define APP(x)  (x>= &He0 and x<=&Hef)
#define COM2(x) (x = &Hfe)
#define NON(x)  (x = &Hff)

#define FAST_BITS 9

declare Sub Maj_APM_info()
declare Sub Maj_CPUINFO()


Type _cpuid_
	private:
		NombreFonctions		as uinteger ' EAX (1)
		NombreFonctions2	as uinteger 
		Signature			as uinteger
		Signature2			as uinteger ' EAX (80000001h)
		
		Modele				as uinteger ' EAX bits 7-4 (function 1)
		Modele_Etendu		as uinteger ' EAX bits 19-16 (function 1)
		
		Famille				as uinteger ' EAX bits 11-8 (function 1)
		Famille_Etendu		as uinteger ' EAX bits 27-20 (function 1)
		
		MarqueID			as uinteger  ' EBX bits 7-0 (function 1)
		Vendor				as uinteger
		
		cacheTLB			as uinteger
		
		CPU_Autre			as uinteger = 0
		CPU_Intel			as uinteger = 1
		CPU_AMD				as uinteger = 2
		CPU_CYTRIX			as uinteger = 3
		
	public:
		_cpuid				as boolean
		_fpu				as boolean
		_vme				as boolean
		_de					as boolean
		_pse				as boolean
		_tsc				as boolean
		_msr				as boolean
		_pae				as boolean
		_mce				as boolean
		_cx8				as boolean
		_gpe				as boolean
		_apic				as boolean
		_syse				as boolean
		_mtrr				as boolean
		_pge				as boolean
		_mca				as boolean
		_cmov				as boolean
		_pat				as boolean
		_pse36				as boolean
		_clfsh				as boolean
		_fxsr				as boolean
		_hht				as boolean
		_mp					as boolean
		_mmx				as boolean
		_sse				as boolean
		_sse2				as boolean
		_sse3				as boolean
		_sse4				as boolean
		_sse4a				as boolean
		_3dnow				as boolean
		_3dnow2				as boolean
		_rdtscp				as boolean
		_svm				as boolean
		_cmp				as boolean
		_raz				as boolean
		_nx					as boolean
		_x64				as boolean
		_amc8				as boolean
		_abm				as boolean
		_masse				as boolean
		_extas				as boolean
		_LAHF				as boolean
		_psn				as boolean
		_dtes				as boolean
		_ssnp				as boolean
		_cx16				as boolean
		_acc				as boolean
		_tm1				as boolean
		_tm2				as boolean
		_est				as boolean
		_dca				as boolean
		_vmx				as boolean
		_smx				as boolean
		_xtpr				as boolean
		_cid				as boolean
		_ia64				as boolean
		_dcpl				as boolean
		_pbe				as boolean
		_mon				as boolean
		_xd					as boolean
		
		Famille_aff			as uinteger
		Modele_aff			as uinteger
		identifiant			as uinteger ' EAX bits 3-0 (function 1)
		
		VendorID			as String
		NomProcesseur		as String

	public:
		Declare Function get_cpuid() 		as boolean
	
End type




' Cette structure permet de gerer l'APM
Type _interface_APM_
	private:
	
		' Version du systeme
		Version_Majeure_apm as ubyte
		Version_Mineure_apm as ubyte
		
		Signature			as String
		Version				as String
		
		' Donnees percues depuis l'interruption 15h
		DATA_apm 			as ubyte
		ERR_apm 			as ubyte
		SIGN_apm 			as ushort
	
	public:	
		' Valeur "wrappe" et accessible pour le reste du systeme
		_installation_check			as boolean ' 0  0x00
		_interface_RM				as boolean ' 1  0x01
		_interface_PM_16 			as boolean ' 2  0x02
		_interface_PM_32 			as boolean ' 3  0x03
		_interface_deconnecte		as boolean ' 4  0x04
		_CPU_idle 					as boolean ' 5  0x05 Non optimise
		_CPU_busy 					as boolean ' 6  0x06
		_APM_power_state			as boolean ' 12 0x0C
		_BIOS_power_management		as boolean ' 13 0x0D active/desactive
		_BIOS_power_management_dev	as boolean ' 16 0x0F Egage/desengage pour un device specifique
		
	
		CONST CX_StandbyMode		as ubyte = 1
		CONST CX_SuspendMode		as ubyte = 2
		CONST CX_Shutdown			as ubyte = 3
		CONST Restart				as ubyte = 4
	
		' Interface Advanced Power Management
		Declare Function check_APM_PM		() 							as boolean
		Declare Function signal_systeme		(byval CX_mode as ubyte) 	as boolean
		Declare function get_Signature		()							as String
		Declare function get_Version		()							as String
		
End Type

Type tImage
	As Integer width, height, pitch
	as integer bpp
	As Long Ptr pixels

End Type

enum effet_img
	_pset
	_preset
	_and
	_or
	_xor
	_trans
	_alpha
	_alpha_value
	_add
	_add_value
	_shadow_effect
	_custom_1
	_custom_2
	_custom_3
	_custom_4
End enum

type _FONT_positionning
	width	as integer
	height	as integer
	org_x	as integer
	org_y	as integer
	size_x	as integer
	size_y	as integer
	size_char (0 to 128) as integer
end type

Type _FONT_
	
	is_loaded					as boolean = false	' Si on a charge au moins 1 font
	enable						as boolean = false	' Activer/desactiver

	fonts_number				as integer = 0		' Number of fonts
	fonts_number_MAX			as integer = 24		' Max number of fonts

	font_img_id		(0 to 24)	as integer 			' ID de l'image FONT
	font_name		(0 to 24) 	as string			' Nom du font

	font_path_dir				as string			' Media path dir
	font_path_ttf	(0 to 24)	as string			' TTF path
	font_path_png	(0 to 24)	as string			' PNG path
	font_path_ini	(0 to 24)	as string			' INI path config
	
	font_nb_sizes	(0 to 24)	as integer			' Number of differents sizes per fonts png files
	font_sizes		(0 to 24, 0 to 24)	as integer	' List of font sizes per fonts png files

	font_pos		(0 to 24, 0 to 24) as _FONT_positionning ' Positionning per fonts

	' TEMPORAIRE!!!!
	general_font as string = ""
	
end type


' ===== Cette structure permet de gerer les fichiers JPG =====
enum
	SCAN_LOAD
	SCAN_TYPE
end enum

type _JPEG_Buffer_
	Largeur 	as uinteger
	Hauteur 	as uinteger
	nombre 		as integer
	nombre_2 	as integer
	Buffer 		as ubyte ptr
	Fin_Buffer 	as ubyte ptr
end type

dim shared as uinteger bmask(17) = { _
		0,   	1,		3,		7,		15,		31, _
		63,		127,	255,	511,	1023,	2047, _
		4095,	8191,	16383,	32767,	65535}


type _table_huffman_
	fast((1 shl FAST_BITS)-1) 	as ubyte    
	code(255) 					as ushort   
	valeurs(255) 				as ubyte
	Taille(256) 				as ubyte    
	maxcode(17) 				as uinteger
	delta(16) 					as integer  
end type

type _composants_image_jpg
	id 					as integer 
	Hauteur 			as integer
	v 					as integer
	tq 					as integer 
	hd 					as integer 
	ha 					as integer 
	dc_pred 			as integer 
	
	x 					as integer 
	y 					as integer 
	w2 					as integer 
	h2 					as integer 
	Pointeur_donnees 	as ubyte ptr 
	donnees_RAW 		as any ptr 
	buffer_ligne 		as ubyte ptr 
end type

type _tableau_JPEG_

	tableau(255) 			as ubyte   
	marker 					as ubyte    	
	code_buffer 			as uinteger  
	code_bits 				as integer 
	
	img_h_max 				as integer
	img_v_max 				as integer
	IMG_X 					as integer 
	IMG_Y 					as integer
	IMG_W 					as integer 
	IMG_H 					as integer


	depassement 			as integer  
	scan_n 					as integer
	ordre(3) 				as integer
	intervalle_redem 		as integer
	suite 					as integer
	
	Instance_Buffer 		as _JPEG_Buffer_
	decode_huffman(3) 		as _table_huffman_   
	data_huffman(3)			as _table_huffman_   
	image_comparaison(3) 	as _composants_image_jpg 
end type

type resample_row_func as function (ou  as ubyte ptr, in0 as ubyte ptr, in1 as ubyte ptr, Largeur as integer, hs  as integer) as ubyte ptr

type _buffer_jpg_RESAMPLE_
	as resample_row_func resample
	as ubyte ptr line0,line1
	as integer hs,vs
	as integer w_lores
	as integer ystep
	as integer ypos
end type

#macro hex2rgb(h, r,g,b)
    r = h shr 16 and 255
    g = h shr 8 and 255
    b = h and 255
#endmacro

#macro rgb2hex(h, r,g,b)
    h = "&H" & hex( r shl 16 or g shl 8 or b )
#endmacro

' Cette structure permet de gerer le blocde memoire bitmap
Type _memoire_bitmap
	public:
		
		CONST _MAX_BITMAP_ID	as integer = 512
		
		Declare Function Bloc_Libre					() 																												as integer
		Declare Function Creer_BITMAP				(TX as integer, TY as integer, byval handle_parent as integer)													as integer
		Declare Function Creer_BITMAP				(Nom as String, TX as integer, TY as integer, byval handle_parent as integer)									as integer
		Declare Function Creer_BITMAP_depuis_PTR	(Nom as String, Pointeur as Any PTR, byval handle_parent as integer) 											as integer
		Declare Function Creer_BITMAP_depuis_PTR	(Nom_ as String, Pointeur as Any PTR, byval Handle as Integer, TX_ as integer, TY_ as integer) 					as integer
		Declare Function Creer_BITMAP_depuis_PTR	(Nom_ as String, Pointeur as Any PTR, byval Handle as Integer, tag_id as integer, TX_ as integer, TY_ as integer) 					as integer
		Declare Function Creer_BITMAP				(TX as integer, TY as integer, Rouge as integer, Vert as integer, Bleu as integer, OpaciteAlpha as integer, byval handle_parent as integer) as integer
		Declare Function Creer_BITMAP				(Nom as String, TX as integer, TY as integer, Rouge as integer, Vert as integer, Bleu as integer, OpaciteAlpha as integer, byval handle_parent as integer) as integer
		Declare Function Creer_BITMAP				(byval NumeroID as integer, Nom as String, TX as integer, TY as integer, Rouge as integer, Vert as integer, Bleu as integer, OpaciteAlpha as integer, byval handle_parent as integer) as integer
		Declare Function Creer_BITMAP_depuis_FILE	(byval ImageSource as String, byval handle_parent as integer) 													as integer
		
		Declare Function apply_blurry				(byval NumeroID as integer, intensite as integer) as boolean
		Declare Function apply_blurry				(byval NumeroID_Background as integer, byval NumeroID as integer, intensite as integer) as boolean
		Declare Function Reload_FILE				(byval NumeroID as integer) as boolean
		Declare Function Auto_Reload_FILE			() 							as boolean
		Declare Function Supprimer_ID_Objets		() 							as boolean
		
		Declare Function Dupliquer_BITMAP			(byval NumeroID as integer) 													as integer
		Declare Function Copier_BITMAP				(byval NumeroID_SOURCE as integer, byval NumeroID_DEST as integer) 				as boolean
		
		Declare Function ReSize_BITMAP_NewID		(byval NumeroID as integer, TX as integer, TY as integer) as integer
		Declare Function ReSize_BITMAP				(byval NumeroID as integer, TX as integer, TY as integer) as boolean
		
		Declare Function Modifier_BITMAP_depuis_PTR	(byval NumeroID as integer, Pointeur as Any PTR)								as boolean
		Declare Function Modifier_BITMAP_depuis_PTR_CP(byval NumeroID as integer, Pointeur as Any ptr) 								as boolean
		Declare Function Modifier_BITMAP_CP			(byval NumeroID as integer, byval NumeroID_Dest as integer, PX as integer, PY as integer) as boolean
		Declare Function Modifier_BITMAP_CP			(byval NumeroID as integer, byval NumeroID_Dest as integer, PX as integer, PY as integer, alpha_ as integer) as boolean
		Declare Function Modifier_BITMAP_texte		(byval Pointeur as any ptr, Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
		Declare Function Modifier_BITMAP_texte		(byval NumeroID as integer, Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
		Declare Function Recuperer_BITMAP_PTR		(byval NumeroID as integer) 														as any ptr
		
		Declare Function Recuperer_BITMAP_x			(byval NumeroID as integer)														as integer
		Declare Function Recuperer_BITMAP_y			(byval NumeroID as integer)														as integer
		Declare Function Recuperer_BITMAP_bits		(byval NumeroID as integer)														as integer
		Declare Function Recuperer_BITMAP_xybit		(byval NumeroID as integer)	 													as string
		
		Declare Function Recuperer_BITMAP_taille	(byval NumeroID as integer)														as integer
		Declare Function Recuperer_BITMAP_Nombre	()																				as Integer
		Declare Function Recuperer_BITMAP_Liste		()																				as String
		Declare Function Recuperer_BITMAP_Taille	()																				as Uinteger
		Declare Function Recuperer_BITMAP_id_by_Handle	(byval handle as integer) 													as integer
		Declare Function Recuperer_BITMAP_ptr_by_Handle	(byval handle as integer) 													as any ptr
		Declare Function Recuperer_BITMAP_Handle	(byval NumeroID as integer)														as Integer
		Declare Function Recuperer_BITMAP_nom		(byval NumeroID as integer)														as String
		Declare Function Recuperer_BITMAP_tag_id	(byval NumeroID as integer) 													as integer
		Declare Function GarbageCollector			() 																				as String
		
		Declare Function IsPresent_BITMAP_byhandle	(byval handle as integer) 														as integer
		Declare Function Supprimer_BITMAP_byhandle	(byval handle as integer) 														as integer
		Declare Function Supprimer_BITMAP			(byval NumeroID as integer)														as boolean
		
		
		Declare Sub 	 Actualise					(ID as integer, valeur as boolean)

		Declare Function Actualise					(ID as integer) 																as boolean
		
		Declare Function Ecrire_ecran_ml			(byval PAGE_VIDEO as integer, Texte as String, TableauLignes() as String, NombreLignes as integer, TypeRetourOct as integer, PX as integer, PY as integer, SX as integer, SY as integer, R as integer, V as integer, B as integer) as boolean
		Declare Function Ecrire_ecran_ml			(Texte as String, TableauLignes() as String, NombreLignes as integer, TypeRetourOct as integer, PX as integer, PY as integer, SX as integer, SY as integer, R as integer, V as integer, B as integer) as boolean
		
		Declare Function Ecrire_ecran				(byval Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
		Declare Function Ecrire_ecran				(byval ID_buffer as integer, byval Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
		' Declare Function trans_font 				(ByVal source_pixel As uinteger, ByVal destination_pixel As uinteger, ByVal parameter As Any Ptr ) As uinteger
		HEX_color_volatile as uinteger
		Declare Function Ecrire_ecran_font			(byval id_buffer as integer, byval Texte as String, police_size as integer, police_name as string, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
		
		Declare Function Capture_ecran				(byval NumeroID as integer, PX as integer, PY as integer, SX as integer, SY as integer) as boolean
		Declare Function Capture_bitmap				(byval NumeroID_source as integer, PX as integer, PY as integer, SX as integer, SY as integer) as any ptr

		Declare Function Dessiner_ecran				(byval NumeroID as integer, PX as integer, PY as integer)																																		as boolean
		Declare Function Dessiner_ecran				(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer)																											as boolean
		Declare Function Dessiner_ecran				(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer)																		as boolean
		Declare Function Dessiner_ecran				(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer)											as boolean
		
		Declare Function Dessiner_ecran				(byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean)																												as boolean
		Declare Function Dessiner_ecran				(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean)																					as boolean
		Declare Function Dessiner_ecran				(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean)												as boolean
		Declare Function Dessiner_ecran				(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean)					as boolean
		
		Declare Function Dessiner_ecran				(byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean, valeur as integer)																								as boolean
		Declare Function Dessiner_ecran				(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean, valeur as integer)																as boolean
		Declare Function Dessiner_ecran				(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean, valeur as integer) 							as boolean
		Declare Function Dessiner_ecran				(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean, valeur as integer)as boolean
	
		Declare Function Dessiner_ecran				(byval NumeroID_Source as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, byval NumeroID_Destination as integer, CanalAlpha as boolean, noth as boolean = false) as boolean
		Declare Function Dessiner_ecran				(byval NumeroID_Source as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, byval NumeroID_Destination as integer, effet as effet_img, valeur as integer, ef as boolean) as boolean
		Declare Function Dessiner_ecran				(byval NumeroID_Source as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, effet as effet_img, valeur as integer, ef as boolean) as boolean
		
		
		Actu_Bitmap_TYPE(0 to _MAX_BITMAP_ID)	as integer
		Actu_Bitmap_PID	(0 to _MAX_BITMAP_ID)	as integer
		Actu_Bitmap_Index(0 to _MAX_BITMAP_ID)	as integer
		
		
	private:
	
		
		Notification(0 to _MAX_BITMAP_ID)	as boolean
		LoadFromPTR	(0 to _MAX_BITMAP_ID)	as boolean
		utilise		(0 to _MAX_BITMAP_ID)	as boolean
		EstFILE		(0 to _MAX_BITMAP_ID)	as boolean
		bits		(0 to _MAX_BITMAP_ID)	as integer
		OpaciteAlpha(0 to _MAX_BITMAP_ID)	as integer
		
		TX			(0 to _MAX_BITMAP_ID)	as integer
		TY			(0 to _MAX_BITMAP_ID)	as integer
		Taille		(0 to _MAX_BITMAP_ID)	as integer
		
		handle_parent(0 to _MAX_BITMAP_ID)	as integer
		
		Nom			(0 to _MAX_BITMAP_ID)	as String

		TAG_ID		(0 to _MAX_BITMAP_ID)	as integer
		
		donnees_RVBA(0 to _MAX_BITMAP_ID)	as any ptr
		
End Type

' Cette structure permet de gerer les port COM
Type _COM_PORT__
	' COM1 : &h3f8 -> IRQ4
	' COM2 : &h2f8 -> IRQ3
	' COM3 : &h3e8 -> IRQ2
	' COM4 : &h2e8 -> IRQ1
	' COM5 : < Non utilisee >
	' COM6 : < Non utilisee >
	' COM7 : < Non utilisee >
	' COM8 : < Non utilisee >
	
	
	Port_COM_Ecriture		as boolean
	Port_COM_Connecte		as boolean
	Port_COM_Present		as boolean 	' Non utilise pour le moment
	
	Port_COM_bit_data		as integer	' 5, 6, 7, 8
	Port_COM_bit_stop		as integer	' 1, 2
	Port_COM_baud			as integer 	' 300, 1200, 2400, 4800, 9600, 12200, 19200, 28800, 38400, 54600, 115200, 230400
	
	Port_COM				as String 	' COM1, COM2, COM3, COM4, COM5, COM6, COM7, COM8
	Port_COM_parity			as string 	' N (None), E, (Even) O (Odd), S (Space), M (Mark), PE (Even parity)
	
	Port_COM_IO				as string
	Port_COM_IRQ			as string
	Port_COM_TAG			as string 	' Nom du port personalite
	
	
	
	Port_COM_KeyID			as double	' Thread, Processus, Utilisateur, OS et Kernel utilisant le port (1 etant le debogeur)
	
End Type

Type _Attributs_io_ 
	Initialise			as boolean
	attrib_ReadOnly		as byte = 0
	attrib_Hidden		as byte = 0
	attrib_System		as byte = 0
	attrib_Archive		as byte = 0
	attrib_Normal		as byte = 0
	attrib_Directory 	as byte = 0
End Type

' Cette structure est utilise par la structure de l'arborecence des repertoires & fichiers
Type _Fichier_Dossier_attribs_ 
	public:
		EstUnDossier	as boolean ' FALSE : Fichier / TRUE : Dossier
		
		attrib_Normal	as boolean = False
		attrib_Hidden	as boolean = False
		attrib_System	as boolean = False
		attrib_ReadOnly	as boolean = False
		attrib_Archive	as boolean = False
		attrib_Nombre	as integer = 0
	
		Taille			as uinteger
		
End Type

' Cette structure permet de gerer l'arborecence des repertoires & fichiers
Type _FICHER_DOSSIER_ 
	public:
		Est_OK										as boolean
		
		CONST nb_MAX_elements						as Integer = 128 ' Temporaire
		
		nb_elements									as Integer = 0
		nb_dossiers									as Integer = 0
		nb_fichiers									as Integer = 0
		
		path										as String = "."
		
		liste_Elements		(0 to nb_MAX_elements)	as String
		attributs_Elements	(0 to nb_MAX_elements)	as _Fichier_Dossier_attribs_
		liste_icons			(0 to nb_MAX_elements)	as integer ' Listbox only
		
End Type

' Structure MID - Structure temporaire
type _info_disques field = 1
	level_info 				as ushort ' Toujours 0
	serial_number 			as uinteger
	volume_label(0 to 10) 	as ubyte
	sysfile_nom(0 to 7) 	as ubyte   ' FAT, FAT16, FAT32, ?
end type

Type _DRIVES_ 
	public:
		Est_OK										as boolean
		
		CONST nb_MAX_elements						as Integer = 26 ' Temporaire
		
		nb_elements									as Integer = 0
		nb_drives									as integer = 0

		Drives_LETTER		(0 to nb_MAX_elements)	as String
		Drives_LABEL		(0 to nb_MAX_elements)	as String
		Drives_SYSFILE		(0 to nb_MAX_elements)	as String
		Drives_SERIAL_No	(0 to nb_MAX_elements)	as String

		Drives_SIZE			(0 to nb_MAX_elements)	as integer
		Drives_FREE_SIZE	(0 to nb_MAX_elements)	as integer

End Type

Type _SYSTEME_Cpcdos_OSx__ 
	private:

		DBG_DEBUG as integer 		= 1	' Etat du debogeur
		DBG_PRINTF as integer 		= 1 ' Afficher le printf des fonctions
		DBG_CPINTI as integer 		= 1	' Afficher debug CPinti Core
		DBG_CPINTI_DATE as integer 	= 0 ' Forcer affichage date debug cpinticore (0:non 1:oui)
		
		As Ubyte sys_Millisecondes, sys_Secondes, sys_Minutes, sys_Heures
		As Ubyte sys_Semaine, sys_Jour, sys_Mois, sys_Annee, sys_Siecle
		
		' Ecran
		Resolution_X 		as integer = -1
		Resolution_Y 		as integer = -1
		CONS_X		 		as integer = -1
		CONS_Y		 		as integer = -1
		Bits_Par_Pixels 	as integer = -1
		Octets_Par_Pixels 	as integer = -1
		ModeResolution		as integer = -1 ' Ecran console
		
		Taille_memoire		as integer = -1
		Frequence			as integer = -1
		DriverVideo			as String = "<Non installe/Not installed>"

		' Font
		
		
		
		' Fonction prives JPG
	
		Declare sub 		Debut_Memoire			(Instance_Buffer as _JPEG_Buffer_ ptr, buffer as ubyte ptr,length as integer)
		Declare function 	get8					(Instance_Buffer as _JPEG_Buffer_ ptr) 															as integer
		Declare function 	get_Fin_buffer			(Instance_Buffer as _JPEG_Buffer_ ptr) 															as integer
		Declare function 	get8u					(Instance_Buffer as _JPEG_Buffer_ ptr) 															as ubyte
		Declare sub 		skip					(Instance_Buffer as _JPEG_Buffer_ ptr, nombre as integer)
		Declare function 	get16					(Instance_Buffer as _JPEG_Buffer_ ptr) 															as integer
		Declare function 	get32					(Instance_Buffer as _JPEG_Buffer_ ptr) 															as uinteger
		Declare function 	get16le					(Instance_Buffer as _JPEG_Buffer_ ptr) 															as integer
		Declare function 	get32le					(Instance_Buffer as _JPEG_Buffer_ ptr) 															as uinteger
		Declare sub 		getn					(Instance_Buffer as _JPEG_Buffer_ ptr,buffer as ubyte ptr, nombre as integer)
		Declare function 	build_huffman			(Hauteur as _table_huffman_ ptr, count as integer ptr) 											as integer
		Declare sub 		grow_buffer_unsafe		(pointeur_jpg as _tableau_JPEG_ ptr)
		Declare function 	decode					(pointeur_jpg as _tableau_JPEG_ ptr, Hauteur as _table_huffman_ ptr) 							as integer
		Declare function 	combiner_Etendu_Recu	(pointeur_jpg as _tableau_JPEG_ ptr,nombre as integer) 											as integer
		Declare function 	decode_block			(pointeur_jpg as _tableau_JPEG_ ptr, aData() as short , hdc as _table_huffman_ ptr, hac as _table_huffman_ ptr, b as integer) as integer
		Declare function 	clamp					(x as integer) 																					as ubyte
		Declare sub 		idct_block				(ou as ubyte ptr, ou_stride as integer, aData() as short, dequantize as ubyte ptr)
		Declare function 	get_marker				(pointeur_jpg as _tableau_JPEG_ ptr) 															as ubyte
		Declare sub 		re_set					(pointeur_jpg as _tableau_JPEG_ ptr) 															
		Declare function 	parse_entropy_coded_data(pointeur_JPEG as _tableau_JPEG_ ptr) 															as integer
		Declare function 	process_marker			(pointeur_JPEG as _tableau_JPEG_ ptr, marker as integer) 										as integer
		Declare function 	process_scan_header		(pointeur_JPEG as _tableau_JPEG_ ptr) 															as integer
		Declare function 	process_frame_header	(pointeur_JPEG as _tableau_JPEG_ ptr,scan as integer) 											as integer
		Declare function 	decode_jpeg_header		(pointeur_JPEG as _tableau_JPEG_ ptr,scan as integer)											as integer 
		Declare function 	decode_jpeg_image		(pointeur_jpg as _tableau_JPEG_ ptr) 															as integer
		' Declare function 	resample_row_1			(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
		' Declare function 	resample_row_v_2		(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
		' Declare function 	resample_row_h_2		(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
		' Declare function 	resample_row_hv_2		(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
		' Declare function 	resample_row_generic	(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
		
		
		Declare sub 		YCbCr_to_RGB_row		(ou as ubyte ptr, y as ubyte ptr, pcb as ubyte ptr, pcr as ubyte ptr, count as integer, psize as integer)
		Declare sub 		cleanup_jpeg			(pointeur_jpg as _tableau_JPEG_ ptr)
		Declare function 	load_jpeg_image			(byval pointeur_JPEG as _tableau_JPEG_ ptr, byref Largeur as integer, byref Hauteur as integer, byref comp as integer, byval req_comp as integer) 									as ubyte ptr
		Declare function 	_tester_si_JPG			(PointeurBuffer as ubyte ptr, TailleBuffer as integer)																																as integer
		Declare function 	_Decoder_JPG			(byval PointeurBuffer as ubyte ptr, byval TailleBuffer as integer, byref Largeur as integer, byref Hauteur as integer, byref NombreCanaux as integer, byval CanauxReq as integer) 	as ubyte ptr
		Declare function 	_lireJPG				(byval PointeurBuffer as ubyte ptr, byval TailleBuffer as integer, byref Largeur as integer, byref Hauteur as integer, byref NombreCanaux as integer, CanauxReq as integer) 		as ubyte ptr
		Declare function 	ChargerJPG				(byval Chemin as string, byref Largeur as integer, byref Hauteur as integer, byref NombreCanaux as integer) as ubyte ptr
		
	public:	

		CONST _MAX_PROCESSUS 	as integer = 128 ' fixe temporairement a 128
		CONST _MAX_THREADS 		as integer = 256 ' fixe temporairement a 256
	
		CONST KEY_BEGIN				as String = CHR(255) & CHR(71) ' Touche debut
		CONST KEY_END				as String = CHR(255) & CHR(79) ' Touche fin
		CONST KEY_TOP				as String = CHR(255) & CHR(72) ' Touche fleche haut
		CONST KEY_DOWN				as String = CHR(255) & CHR(80) ' Touche fleche bas
		CONST KEY_LEFT				as String = CHR(255) & CHR(75) ' Touche fleche gauche
		CONST KEY_RIGHT				as String = CHR(255) & CHR(77) ' Touche fleche droite
		
		CONST KEY_F10				as String = CHR(255) & CHR(68) ' Touche fleche droite
	
		' TEMPORIRE LE TEMPS DE REFAIRE LE IRQ DU CLAVIER
		Touche_Inkey as string = ""
	
		RetourVAR_resolution as String
		RetourVAR_PNG as String
	
		CONST _MAIN_PROCESSUS_NOM 	as String = "_CPCDOS_OSx_CORE__PROCESS_"
		CONST _MAIN_THREAD_NOM 		as String = "_CPCDOS_OSx_CORE__THREAD_"
		CONST _MAIN_THREAD_UPD_NOM 	as String = "_CPCDOS_OSx_UPD_CORE__THREAD_"
		_MAIN_PROCESSUS				as uinteger
		_MAIN_THREAD				as uinteger
		_MAIN_THREAD_UPD			as uinteger
		_MAIN_CLE					as double
		
		' Gestionnaire de bitmaps
		Memoire_MAP					as _memoire_bitmap

		' Attributs de fichiers & dossiers
		Attributs_IO_INSTANCE		as _Attributs_io_
		
		' Interface Advenced Power Management
		InterfaceAPM				as _interface_APM_
		
		' cpuid CPU informations
		cpuid						as _cpuid_
		cpu_pourcentage				as uinteger
		
		COM_INSTANCE	(0 to 8)	as _COM_PORT__	' Ports COM pour le debogage ou autre

		' Liste des lecteurs, cdrom, floppy etc..
		drives_list 				as _DRIVES_

		' Fonts
		font_manager				as _FONT_
		font_id_handle				as integer = 2222

		' Ignorer les lecteurs de disquettes trop lente
		Ignore_FLOPPY_A				as boolean = true
		Ignore_FLOPPY_B				as boolean = true

		' Curseur graphique

		CURSEUR_ID					as integer
		CURSEUR_AFFICHER			as boolean = false ' Afficher le curseur ou non
		
		CURSEUR_LOAD_ID				as integer
		CURSEUR_LOAD_AFFICHER_STACK as integer = 0 		' Nombre de stack operant un temps de chargement long
		CURSEUR_LOAD_POS_X			as integer = 14 	' Espacement X par rapport au curseur
		CURSEUR_LOAD_POS_Y			as integer = 0 		' Espacement Y

		CURSEUR_Resize_ID			as integer = 0		' curseur de resizing
		CURSEUR_Resize_Siz_X		as integer = 19
		CURSEUR_Resize_Siz_Y		as integer = 19
		CURSEUR_Resize_zone_X		as integer = 50		' Zone d'interaction
		CURSEUR_Resize_zone_Y		as integer = 50		' Zone d'interaction

		Mouse_Pos_X					as integer 	= 0
		Mouse_Pos_Y					as integer 	= 0
		Mouse_max_Speed				as double 	= 0.02
		Mouse_min_Speed 			As double 	= 10.0
		Mouse_inertia_Speed 		As double 	= 300.0
		Mouse_constant_Speed 		As double 	= 8.0

		UseFB_Mouse					as boolean = false
		
		Declare Function get_cpu_pourcent() as uinteger
		
		' **** Debug Cpcdos, CpintiCore et printf ****
		Declare function get_DBG_DEBUG			()					as integer 
		Declare function get_CPINTI_DEBUG		()					as integer
		Declare function get_CPINTI_FD_DEBUG	()					as integer
		Declare function get_PRINTF_DEBUG		()					as integer
		
		Declare sub 	 set_DBG_DEBUG			(etat as integer) 
		Declare sub 	 set_CPINTI_DEBUG		(etat as integer) 
		Declare sub		 set_CPINTI_FD_DEBUG	(etat as integer)
		Declare sub		 set_PRINTF_DEBUG		(etat as integer)
			
			
		' **** Memoire et allocations ****
		Declare Function AllouerString			(ByRef texte as String) 				as ZString ptr
		Declare Function AllouerString_0		(ByRef Taille as uinteger) 				as Zstring ptr ' En remplissant de 0
		Declare Function DesAllouerString		(ByRef Pointeur as Zstring ptr) 		as integer
		Declare Function DesAllouerString		(ByRef Pointeur as CONST Zstring ptr) 	as integer
		Declare Function TailleString			(ByRef Texte as string) 				as integer
		
		Declare Sub 	 Update_memoire			()
		
		Declare Function get_Memoire_libre		(Unite as integer) as uinteger
		
		
		' **** Horloge RTC ****
		Declare Function get_Time				() 						as integer
		Declare Function get_Millisecondes		() 						as integer
		Declare Function get_Secondes			() 						as integer
		Declare Function get_Minutes			() 						as integer
		Declare Function get_Heures				() 						as integer
		Declare Function get_Semaine			() 						as string ' Numero du jour de la semaine
		Declare Function get_Jour				() 						as integer
		Declare Function get_Mois				() 						as integer
		Declare Function get_Annee				() 						as integer
		Declare Function get_Siecle				() 						as integer
		Declare Sub 	 get_RTC				()
		Declare Function Convert_DCB_Binaire	(Byval Valeur As Ubyte) As Ubyte
		
		' **** Contexte d'execution du noyau ****
		Declare Function get_ExeEnCours			(ARG as integer) as String
		
		' **** Resolution d'ecran ****
		Declare Function test_Resolution		(ByVal Resolution as String, Bits as integer) 				as boolean
		Declare Function test_Resolution		(Res_X as integer, Res_Y as integer, Bits as integer) 	as boolean
		Declare Function liste_Resolution		(Bits as integer) 										as String
		Declare Function set_Resolution			(ModeSCR as integer) 									as boolean
		Declare Function set_Resolution			(Res_X as integer, Res_Y as integer, Bits as integer) 	as boolean
		
		Declare Function update_InformationEcran()														as boolean
		Declare Function get_EcranDRV			() 														as String
		Declare Function get_EcranMemoire		() 														as Integer
		Declare Function get_EcranHZ			() 														as Integer
		Declare Function get_EcranPTR			() 														as any ptr
		Declare Function get_ResolutionMode		() 														as integer
		Declare Function get_Resolution			()														as String
		Declare Function get_Cons_XY			()														as String
		Declare Function get_Cons_X				()														as Integer
		Declare Function get_Cons_Y				()														as Integer
		Declare Function get_Resolution_XY		()														as String
		Declare Function get_Resolution_X		()														as Integer
		Declare Function get_Resolution_Y		()														as Integer
		Declare Function get_BitsparPixels		() 														as Integer
		Declare Function get_BitsparPixels		(compatibilite_24to32_ as boolean)						as Integer
		Declare Function get_OctetsParPixels	() 														as Integer

		Declare Function cpc_GetMouse			(byref Pos_X as integer, byref Pos_Y as integer) 		as integer
		Declare Function cpc_GetMouse			(byref Pos_X as integer, byref Pos_Y as integer, byref Scroll_Weel as integer, byref TypeClic as integer, byref clip as integer) as integer
		
		Declare Sub ClearKeyboardBuffer			()

		' **** Fichiers images ****
		' Declare Static Sub libpng_error_callback cdecl	(png as png_structp,  p as png_const_charp)
		' Effet flou
		
		Declare function buffer_to_blurry		(byref image_src as any ptr, intensite as integer)																		as Any Ptr
		Declare Function FastBlur				(img As tImage, iRadius As Ubyte)																						As Any Ptr
		Declare Function BlurPass				(img As tImage, iRadius As Ubyte, iW as UShort, iH as UShort) 															As Any Ptr
		
		Declare function bit_converter			(byref source as any ptr) 																								as any ptr
		Declare function trans32 				(ByVal Source As UInteger, ByVal Destination As UInteger, ByVal Parametres As Any Ptr ) 								As UInteger
		Declare Function charger_PNG			(byval Fichier as String,  byval Bits as integer, prio as integer) 														as any ptr
		Declare function charger_PNG			(byval Fichier as String,  byval Bits  as integer, prio as integer, byref Hauteur as integer, byref Largeur as integer) as any ptr

		Declare Function Save_png				(source as integer, Fichier as string) 																					as boolean
		
		Declare Function charger_JPG			(byval Fichier as String,  Bits as integer, prio as integer) 															as any ptr
		Declare function charger_JPG			(byval Fichier as String,  Bits  as integer, prio as integer, byref Hauteur as integer, byref Largeur as integer) 		as any ptr
		
		Declare Function charger_GIF			(byval Fichier as String,  Bits as integer, prio as integer) 															as any ptr
		Declare function charger_GIF			(byval Fichier as String,  Bits  as integer, prio as integer, byref Hauteur as integer, byref Largeur as integer) 		as any ptr
		
		Declare Function charger_BMP			(byref Fichier as String,  Bits as integer, prio as integer) 															as any ptr
		Declare function charger_BMP			(byref Fichier as String,  Bits  as integer, prio as integer, byref Hauteur as integer, byref Largeur as integer) 		as any ptr
		
		' **** FPS ****
		Declare Function get_FPS				(temps_precedent as double, ACU as integer) 																			as integer
		
		' **** Repertoires et fichiers ****
		Declare Function creer_Repertoire		(ByVal NomDossierABS as String, Attributs as String) 																	as integer
		Declare Function creer_Repertoire__fbcrt(NomDossier as String, Attributs as String) 																			as boolean
		Declare Function lister_Repertoire		(RepertoireSource as String, Filtre as String, ByRef Resultat as _FICHER_DOSSIER_) 										as boolean
		Declare Function lister_Repertoire		(RepertoireSource as String, Filtre as String, ByRef Resultat as _FICHER_DOSSIER_, jump as integer) 					as boolean

		' Lecteurs
		Declare Function Display_all_drives		() 																														as boolean
		Declare Function Drive_list_to_dir_instance (ByRef instance_FICHIER_DOSSIER as _FICHER_DOSSIER_) 																as boolean
		Declare Function Display_drive			(index as integer) 																														as boolean
		Declare Function update_drives			() 																														as boolean

		Declare Function get_Drives				() 																														as boolean
		Declare Function get_Size_drive			(lettre_lecteur as string, index as integer) 																			as boolean		
		Declare Function get_MID_drive			(lettre_lecteur as string, index as integer) 																			as boolean
		
		Declare Function check_NomAutorise		(byval NomElement as String, PathComplet as boolean, Check_SFN as boolean, SFN as boolean) 								as String
		Declare Function check_NomAutorise		(byval NomElement as String, PathComplet as boolean) 																	as boolean

		Declare Function getHandleType			(byval NumeroHandle as integer) 																						as String
		
		Declare Function Convert_TTF_to_PNG		() as boolean
		Declare Function Load_TTF_config		() as boolean
		Declare Function Load_TTF_Map			() as boolean
		Declare Sub 	 font_check_array		(byref font_size as integer, byval font_name as string, byref font_name_index as integer)
		Declare Function font_len				(byref text as string, police_name as string, police_size as integer) as integer
		Declare Function font_len				(byref text as string, police_size_index as integer, police_name_index as integer) as integer
		declare sub 	 debug_font				(police_index as integer, size_index as integer)

		Declare Constructor()
		Declare Destructor()
		
		' THREAD_ARGS as _SYSTEME_thread_arg	' Gestion des arguments des threads
End Type


' Cette structure permet d'entrer les donnees necessaire a la creation d'un thread
Type _STRUCT_THREAD_Cpcdos_OSx__ 
	public:
		Nom			as String		' Nom du thread
		Fonction	as ANY PTR		' Adresse memoire de la fonction
		
		Priorite	as integer
		
		KERNEL_ID	as uinteger
		OS_ID		as uinteger		' Numero ID de l'OS
		USER_ID		as uinteger		' Numero ID de l'utilisateur
		PROC_ID		as uinteger		' Numero ID du processus
		THREAD_ID	as uinteger		' Numero ID du thread executif
		handle		as uinteger		' Numero handle
		
		ARG_CP 		as any ptr		' Argument CPinti
		ARG_1 		as any ptr		' Arguments pour le thread
		ARG_2 		as any ptr
		ARG_3		as any ptr
		ARG_4		as any ptr	
		ARG_5		as any ptr	
		ARG_6		as any ptr	
		
		' Memoire
		eax			as byte
		esp			as byte
		ebx			as byte
		ecx			as byte
		edx			as byte
		eip			as byte
		stack_siz	as uinteger		' Taille d'un bloc
		stack_nb	as uinteger		' Nombre de bloc alloues
		page		as uinteger		' Numero de page
		stack		as ANY PTR		' Adresse memoire stack
		
		
End Type

Type _STRUCT_PROCESSUS_Cpcdos_OSx__ 
	public:
		Nom					as String		' Nom du processus

		OS_ID				as uinteger		' Numero ID de l'OS
		USER_ID				as uinteger		' Numero ID de l'utilisateur
		PROC_ID				as uinteger		' Numero ID du processus
		PROC_ID_PARENT 		as uinteger		' Numero ID du processus parent
		THREAD_ID_PARENT 	as uinteger		' Numero ID du thread parent
		handle				as uinteger		' Numero handle

		
		' Memoire
		eax			as byte
		ebx			as byte
		ecx			as byte
		edx			as byte
		eip			as byte
		
		stack_siz	as uinteger		' Taille d'un bloc
		stack_nb	as uinteger		' Nombre de bloc alloues
		page		as uinteger		' Numero de page
		stack		as ANY PTR		' Adresse memoire stack
	
End Type

