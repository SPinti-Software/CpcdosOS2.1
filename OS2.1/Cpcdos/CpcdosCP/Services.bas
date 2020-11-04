' Moteur/SHELL CpcdosC+ - 

' Par Sebastien FAVIER
' Reecriture le 16/01/2017
' Mise a jour le 16/10/2018

' 16-10-2018	: Adaptation 2.1 Beta 1.1
' 08-05-2017	: Ameliorations du systemes de niveaux.
' 30-03-2017	: Ajout de CPC.SYS.NET.ACT, CPC.SYS.NET.SND/ENV, CPC.SYS.NET.REC, CPC.SYS.NET.CLT.
' 23-02-2017	: Ajout de la gestion des tableaux
' 22-02-2017	: Ajout de CONS x et Y
'					+ Ajout des fonction 
'						- LEN()/TAILLE() 	: Obtenir la taille d'une chaine de caracteres.
'						- MAJ()/MIN() 		: Convertir en MAJuscules / MINuscules.
'						- SIGNE()/SIGN() 	: Obtenir le signe d'un nombre.
'						- ENTIER()/INT()/INTEGER: Convertir en nombre entier (Sans virgule).
'						- FRAC()			: FRACtionner un chiffre a virgule (Juste apres virgule)
'						- VAL()				: Convertir un nombre Binaire/octal/hexa en decimale
'						- CHR()/CAR()/CARACTERE(): Convertir une valeur en caractere ASCII.
'						- ASC()/ASCII()		: Convertir un caractere ASCII en valeur.
'						- HEX()/HEXA()/
'							HEXADECIMAL()
'							HEXADECIMALE()	: Convertir un valeur en hexadecimal.
'						- ABS()				: Obtenir la valeur ABSolue d'une valeur.
'						- LOG,() EXP(), RAC(), COS(), SIN(), TAN(), ACOS(), ASIN(), ATAN(), ATANR()
'						- FICHIER_EXISTE()	
'							FILE_EXIST()	: Tester l'existence d'un fichier.
'						- TAILLE_FICHIER()
'							FILE_SIZE()		: Retourner la taille d'un fichier.
'						- LIRE_FICHIER()
'							READ_FILE()		: Lire le contenu d'un fichier.
'						- NET.PING()		: Pinger une machine
'						

#include "Cpcdos.bi"

#define _scope do
#define _end_scope loop while 0

#define _scope2 do
#define _end_scope2 loop while 0

#print * Syntaxe checker
Function _SHELL_Cpcdos_OSx__.CCP_Verifier_Syntaxe(Commande as String, PositionCommande as Integer) as Integer
	' Cette fonction permet de tester si il ya un "caractere intru" entre la ligne de debut et
	' la commande
	' Commande 			= La commande
	' PositionCommande 	= Position de la commande
	' 	Retour -> 0:OK 1:Probleme! -3:Variable -2:dans un fichier -1:Fantome
	ENTRER_SectionCritique()
	
	Dim boucle as Integer

	

	Dim Arrbs as boolean 		= FALSE
	Dim Diese as boolean 		= FALSE : Dim PosDiese as Integer = 0
	Dim Dollar as boolean 		= FALSE : Dim PosDollar as Integer = 0
	Dim pPoint as boolean 		= FALSE : Dim Slash as boolean = FALSE : Dim AntiSlash as boolean = FALSE
	Dim DeuxPoints as boolean 	= FALSE
	
	Dim RechercheEspace as Integer
	Dim Pos_Com_err as Integer
	Dim Entre_Commande as Const String = UCASE(MID(Commande, 1, PositionCommande))
	
	if PositionCommande < 2 then 
		SORTIR_SectionCritique()
		Return 0 ' Colle a la ligne (optimisation!)
	End if
	If Entre_Commande = "" Then 
		SORTIR_SectionCritique()
		return 0 ' S'il y a rien bah ca sert a rien.. x)
	End if
	
	_scope
	For boucle = 1 to 255
		IF boucle = 9 then boucle = boucle + 1 ' Tab
		If boucle = 10 then boucle = boucle + 1 ' CF
		If boucle = 13 then boucle = boucle + 1 ' LF
		IF boucle = 32 then boucle = boucle + 1 ' Espaces
		IF boucle = 35 then boucle = boucle + 1 : PosDiese = INSTR(Entre_Commande, "#") : IF PosDiese > 0 Then Diese = TRUE	' # --> variable
		IF boucle = 36 then boucle = boucle + 1 : PosDollar = INSTR(Entre_Commande, "$") : IF PosDollar > 0 Then Dollar = TRUE	' $ --> fichier
		IF boucle = 46 then boucle = boucle + 1 : IF INSTR(Entre_Commande, ".") > 0 Then pPoint = TRUE		' .
		IF boucle = 47 then boucle = boucle + 1 : IF INSTR(Entre_Commande, "/") > 0 Then Slash = TRUE 		' Slash unix /
		IF boucle = 58 then boucle = boucle + 1 : IF INSTR(Entre_Commande, ":") > 0 Then DeuxPoints = TRUE 		' Slash unix /
		IF boucle = 92 then boucle = boucle + 1 : IF INSTR(Entre_Commande, "\") > 0 Then AntiSlash = TRUE	' Anti-Slash \
		IF boucle = 64 then boucle = boucle + 1 : IF INSTR(Entre_Commande, "@") > 0 Then Arrbs = TRUE 		' @ --> fantome
		IF boucle = 209 then boucle = boucle + 1 ' bug
		IF boucle = 211 then boucle = boucle + 1 ' bug
		IF boucle = 254 then Exit for
		IF Arrbs = TRUE then ' Verifier si il y a @, @# ou @$
			IF Diese = TRUE then ' Redirection dans une variable
				IF DeuxPoints = TRUE then exit _scope  ' Pas de : sur une variable
				IF AntiSlash = TRUE then exit _scope ' Pas de \ sur une variable
				IF Slash = TRUE then exit _scope  ' Pas de / sur une variable
				RechercheEspace = INSTR(INSTR(Entre_Commande, "@"), Commande, " ")
				' RechercheEspace = INSTR(Commande, " ")
				SORTIR_SectionCritique()
				IF RechercheEspace < 1 then Return boucle + 10 ' Oups!
				CPCDOS_INSTANCE.DEBUG_INSTANCE.LeRetour = MID(Commande, PosDiese + 1, RechercheEspace - (PosDiese + 1))
				Return 3 ' Redirection dans une variable
			ElseIF Dollar = TRUE then ' Redirection dans un fichier
				' / : \ et . autorise
				RechercheEspace = INSTR(Commande, " ")
				SORTIR_SectionCritique()
				IF RechercheEspace < 1 then Return boucle + 10 ' Oups!
				CPCDOS_INSTANCE.DEBUG_INSTANCE.LeRetour = MID(Commande, PosDollar + 1, RechercheEspace - (PosDollar + 1))
				Return 2 ' Redirection dans un fichier
			END IF' Rien afficher du tout !
		END IF
		Pos_Com_err = INSTR(Entre_Commande, UCASE(CHR(boucle)))
		IF Pos_Com_err > 0 THEN exit _scope
	Next boucle
	' Pas de @$ ni @# alors / : \ et . interdit
	IF DeuxPoints = TRUE then exit _scope
	IF AntiSlash = TRUE then exit _scope
	IF Slash = TRUE then exit _scope
	IF pPoint = TRUE then exit _scope
	' - - - - - - - - - - - - - - - - - - - -
	SORTIR_SectionCritique()
	IF Arrbs = TRUE then Return 1 ' Affichage fantome
	Return 0 ' Wesh ok ma gueule!
' Err_Syntaxe:
_end_scope
	Return boucle + 10
	SORTIR_SectionCritique()
End Function

#print * Constantes environnement
Function _SHELL_Cpcdos_OSx__.Recherche_Fonction_Var(byval Buffer_lecture_VAR as string, byval _CLE_ as double) as string
	' Cette fonction permet de rechercher si l'utlisateur a demande une fonction
	' Buffer_lecture_VAR		= Nom de la variable
	'   Retourne = resultat de la fonction si existe
	
	ENTRER_SectionCritique()
	
	Dim Contenu_Variable as string

	' ======================= CONTEXTES =======================
	IF Buffer_lecture_VAR = "CPC.CR" Then
		Contenu_Variable = CHR(13) ' Retour chariot
	ElseIf Buffer_lecture_VAR = "CPC.LF" Then
		Contenu_Variable = CHR(10) ' Retour chariot
	ElseIf Buffer_lecture_VAR = "CPC.CRLF" Then
		Contenu_Variable = CHR(13) & CHR(10) ' Retour chariot
	ElseIf Buffer_lecture_VAR = "CPC.LFCR" Then
		Contenu_Variable = CHR(13) & CHR(10) ' Retour chariot

	ElseIf Buffer_lecture_VAR = "CPC.RND" Then
		Contenu_Variable = Str(Rnd() * 1024)

	' ======================= TEMPS DATE ET HEURE =======================
	ElseIf Buffer_lecture_VAR = "CPC.HEURE" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Heures()) ' Retourne l'heure seulement
	ElseIf Buffer_lecture_VAR = "CPC.HOUR" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Heures()) ' Retourne l'heure seulement

	ElseIf Buffer_lecture_VAR = "CPC.MIN" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Minutes()) ' Retourne les minutes seulement
	ElseIf Buffer_lecture_VAR = "CPC.MINUTE" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Minutes()) ' Retourne les minutes seulement
	ElseIf Buffer_lecture_VAR = "CPC.MINUTES" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Minutes()) ' Retourne les minutes seulement

	ElseIf Buffer_lecture_VAR = "CPC.SEC" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()) ' Retourne les secondes seulement
	ElseIf Buffer_lecture_VAR = "CPC.SECOND" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()) ' Retourne les secondes seulement
	ElseIf Buffer_lecture_VAR = "CPC.SECONDS" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()) ' Retourne les secondes seulement
	ElseIf Buffer_lecture_VAR = "CPC.SECONDE" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()) ' Retourne les secondes seulement
	ElseIf Buffer_lecture_VAR = "CPC.SECONDES" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes()) ' Retourne les secondes seulement
		
	ElseIf Buffer_lecture_VAR = "CPC.JOUR" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Jour()) ' Retourne le jour seulement
	ElseIf Buffer_lecture_VAR = "CPC.DAY" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Jour()) ' Retourne le jour seulement

		
	ElseIf Buffer_lecture_VAR = "CPC.MOIS" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Mois()) ' Retourne le mois seulement
	ElseIf Buffer_lecture_VAR = "CPC.MONTH" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Mois()) ' Retourne le mois seulement
		
	ElseIf Buffer_lecture_VAR = "CPC.ANNEE" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Annee()) ' Retourne l'annee seulement
	ElseIf Buffer_lecture_VAR = "CPC.YEAR" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Annee()) ' Retourne l'annee seulement
		
	ElseIf Buffer_lecture_VAR = "CPC.CENTURY" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Siecle()) ' Retourne l'annee seulement
	ElseIf Buffer_lecture_VAR = "CPC.SIECLE" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Siecle()) ' Retourne l'annee seulement
		
	ElseIf Buffer_lecture_VAR = "CPC.TIME" Then
		Contenu_Variable = CPCDOS_INSTANCE.get_Heure(CPCDOS_INSTANCE.get_Time_format()) ' Retourne l'heure, minute, seconde (Faire sorte a ce qu'on puisse la personnaliser)
	ElseIf Buffer_lecture_VAR = "CPC.DATE" Then
		Contenu_Variable = CPCDOS_INSTANCE.get_Date(CPCDOS_INSTANCE.get_Date_format()) ' Retourne la date actuel
	ElseIf Buffer_lecture_VAR = "CPC.TIMER" Then
		Contenu_Variable = STR(TIMER) ' Retourne le nombre de secondes ecoule depuis 1970
	ElseIf Buffer_lecture_VAR = "CPC.TEMPS" Then
		Contenu_Variable = STR(TIMER) ' Retourne le nombre de secondes ecoule depuis 1970
		
	ElseIf Buffer_lecture_VAR = "CPC.DATE" Then
		Contenu_Variable = Date ' Retourne la date (Faire sorte a ce qu'on puisse la personnaliser)

' ======================= SYSTEME : MEMOIRE UTILISEE =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.P" Then
		Contenu_Variable = Str(_Memoire_UTIL_Pourcent) ' Memoire utilisee en pourcent
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe) ' Memoire utilisee en Octets par defaut
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.O" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe) ' Memoire utilisee en Octets
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.B" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe) ' Memoire utilisee en Octets (Bytes)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.K" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe/1024) ' Memoire utilisee en Ko
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.M" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe/1024^2) ' Memoire utilisee en Mo
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.G" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe/1024^3) ' Memoire utilisee en Go
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEMU.T" Then
		Contenu_Variable = Str(_Memoire__krnl_occupe/1024^4) ' Memoire utilisee en To
	' ======================= SYSTEME : MEMOIRE LIBRE =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.P" Then
		Contenu_Variable = Str(_Memoire_LIBRE_Pourcent) ' Memoire libre en pourcent
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM" Then
		Contenu_Variable = Str(_Memoire_actuel) ' Memoire libre en Octets par defaut
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.O" Then
		Contenu_Variable = Str(_Memoire_actuel) ' Memoire libre en Octets
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.B" Then
		Contenu_Variable = Str(_Memoire_actuel) ' Memoire libre en Octets (Bytes)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.K" Then
		Contenu_Variable = Str(_Memoire_actuel/1024) ' Memoire libre en Ko
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.M" Then
		Contenu_Variable = Str(_Memoire_actuel/1024^2) ' Memoire libre en Mo
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.G" Then
		Contenu_Variable = Str(_Memoire_actuel/1024^3) ' Memoire libre en Go
	ElseIf Buffer_lecture_VAR = "CPC.SYS.MEM.T" Then
		Contenu_Variable = Str(_Memoire_actuel/1024^4) ' Memoire libre en To


	' ======================= SYSTEME : CPU =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.ACT" Then ' Activite de tous les CPU en %
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_cpu_pourcent())
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.CPUID" Then ' CPUID supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cpuid)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.FPU" Then ' _fpu supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._fpu)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.VME" Then ' VirtualMachineEXT supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._vme)
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.SSE" Then ' SSE supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.SSE2" Then ' SSE2 supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse2)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.SSE3" Then ' _sse3 supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse3)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.SSE4" Then ' _sse4 supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse4)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.SSE4A" Then ' _sse4a supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse4a)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.3DNOW" Then ' _3dnow supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._3dnow)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.3DNOW2" Then ' _3dnow2 supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._3dnow2)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MMX" Then ' _mmx supporte
	
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mmx)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.RDTSCP" Then ' CPUID supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._rdtscp)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.PAE" Then ' CPUID supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._pae)
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.HYPERTHREADING" Then ' HyperThreading supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._hht)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MULTIPROCESSOR" Then ' Multiprocesseur supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mp)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MULTIPROCESSEUR" Then ' Multiprocesseur supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mp)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MULTICORE" Then ' MultiCORE supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cmp)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MULTICOEUR" Then ' MultiCORE supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cmp)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.X64" Then ' x68 supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._x64)
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.FAMILLY" Then ' Famille du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.Famille_aff)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.FAMILLE" Then ' Famille du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.Famille_aff)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MODEL" Then ' Modele du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.Modele_aff)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.MODELE" Then ' Modele du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.Modele_aff)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.ID" Then ' ID du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.identifiant)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.VENDOR" Then ' Vendeur du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.VendorID)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.VENDEUR" Then ' Vendeur du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.VendorID)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.NAME" Then ' Nom du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.NomProcesseur)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.NOM" Then ' Nom du proc 
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.NomProcesseur)
	
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.NB" Then ' Nombre de CPU detectes
		Contenu_Variable = Str(1) ' Temporaire
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.NB.ACT" Then ' Nombre de CPU en activites
		Contenu_Variable = Str(1) ' Temporaire
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.APIC" Then ' Si APIC supporte
		Contenu_Variable = Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._apic) ' Temporaire
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.APIC.OK" Then ' Si driver APIC installe
		Contenu_Variable = Str(0) ' Temporaire
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.APIC.VER" Then ' Version du APIC
		Contenu_Variable = Str(-1) ' Temporaire
	ElseIf Buffer_lecture_VAR = "CPC.SYS.CPU.APIC.BAT" Then ' Etat de la batterie en %
		Contenu_Variable = Str(100) ' Temporaire
	
	' ======================= SYSTEME : APM =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM" Then ' Etat APM
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._installation_check)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.OK" Then ' Etat APM
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._installation_check)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.RM" Then ' Real mode
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._interface_RM)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.PM16" Then ' Protect mode 16 bits
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._interface_PM_16)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.PM32" Then ' Protect mode 32 bits
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._interface_PM_32)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.CPU_IDLE" Then ' Etat IDLE
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._CPU_idle)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.CPU_BUSY" Then ' busy
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._CPU_busy)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.STATE" Then ' Etat
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._APM_power_state)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.POWER_MANAGEMENT" Then ' Power management desactive/active
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._BIOS_power_management)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.POWER_MANAGEMENT_DEVICE" Then ' Egage/desengage pour un device specifique
		Contenu_Variable = str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM._BIOS_power_management_dev)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.SIGNATURE" Then ' Signature bios
		Contenu_Variable = CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM.get_Signature()
	ElseIf Buffer_lecture_VAR = "CPC.SYS.APM.VERSION" Then ' Version APM
		Contenu_Variable = CPCDOS_INSTANCE.SYSTEME_INSTANCE.InterfaceAPM.get_Version()
		
		

	' ======================= SYSTEME : INTERUPT SERVICE ROUTINE =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.ISR.INST" Then ' Routine ISR installe ? (0x0029 = OK)
		' Contenu_Variable = "0x" & Hex((Gestion_ISR.isr_donnees + Gestion_ISR.isr_demarre), 4)
		Contenu_Variable = "0x0000"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.ISR.DEM" Then ' Routine ISR executee ?
		Contenu_Variable = "0x0000"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.ISR" Then ' Routine ISR activee ?
		' Contenu_Variable = Str(Not No_ISR)
		Contenu_Variable = "0"

	' ======================= SYSTEME : THREADS =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.THREAD.NB" Then ' Nombre de threads en cours
		Contenu_Variable = Str(cpinti.gestionnaire_tache.cpinti_get_nombre_threads())
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.THREAD.ID" Then ' ID Thread en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_TID(_CLE_))
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.PROCESSUS.ID" Then ' ID Processus en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_PID(_CLE_))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.PROCESS.ID" Then ' ID Processus en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_PID(_CLE_))
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.UTILISATEUR.ID" Then ' ID Utilisateur en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_Utilisateur(_CLE_))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.USER.ID" Then ' ID Utilisateur en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_Utilisateur(_CLE_))
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.OS.ID" Then ' ID Processus en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_OS(_CLE_))
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.KERNEL.ID" Then ' ID Processus en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_kernel(_CLE_))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NOYAU.ID" Then ' ID Processus en cours d'exec
		Contenu_Variable = str(CPCDOS_INSTANCE.get_id_kernel(_CLE_))
	
	ElseIf Buffer_lecture_VAR = "CPC.SYS.THREAD.NOM" Then ' ID Thread en cours d'exec
		Contenu_Variable = "<THREAD.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.THREAD.NAME" Then ' ID Thread en cours d'exec
		Contenu_Variable = "<THREAD.NOM A FAIRE>"
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.PROCESSUS.NOM" Then ' Nom du processus en cours d'exec
		Contenu_Variable = "<PROCESSUS.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.PROCESSUS.NAME" Then ' Nom du processus en cours d'exec
		Contenu_Variable = "<PROCESSUS.NAME A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.PROCESS.NOM" Then ' Nom du processus en cours d'exec
		Contenu_Variable = "<PROCESS.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.PROCESS.NAME" Then ' Nom du processus en cours d'exec
		Contenu_Variable = "<PROCESS.NAME A FAIRE>"
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.UTILISATEUR.NOM" Then ' Nom de l'utilisateur en cours d'exec
		Contenu_Variable = "<UTILISATEUR.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.UTILISATEUR.NAME" Then ' Nom de l'utilisateur en cours d'exec
		Contenu_Variable = "<UTILISATEUR.NAME A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.USER.NOM" Then ' Nom de l'utilisateur en cours d'exec
		Contenu_Variable = "<USER.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.USER.NAME" Then ' Nom de l'utilisateur en cours d'exec
		Contenu_Variable = "<USER.NAME A FAIRE>"
		
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NOYAU.NOM" Then ' Nom du noyau en cours d'exec
		Contenu_Variable = "<NOYAU.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NOYAU.NAME" Then ' Nom du noyau en cours d'exec
		Contenu_Variable = "<NOYAU.NAME A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.KERNEL.NOM" Then ' Nom du noyau en cours d'exec
		Contenu_Variable = "<KERNEL.NOM A FAIRE>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.KERNEL.NAME" Then ' Nom du noyau en cours d'exec
		Contenu_Variable = "<KERNEL.NAME A FAIRE>"


	' ======================= SYSTEME : RESEAU =======================
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.INST" Then ' Verifier presence pilote reseau
		Contenu_Variable = Str(9999)
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.DRV" Then ' Nom du pilote utilise
		Contenu_Variable = "<Nom pilote reseau/network driver name>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.ACT" Then ' Activite en % du reseau
		Contenu_Variable = Str(abs(0)) 'CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_activite()))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.THREAD" Then ' Thread utilisant le reseau actuellement
		Contenu_Variable = "<Nom du thread utilisant le reseau/Thread name using network>"
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.REC" Then ' Nombre de paquets recus par secondes
		Contenu_Variable = str(abs(0)) 'CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_recu()))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.SND" Then ' Nombre de paquets envoye par secondes
		Contenu_Variable = str(abs(0)) ' CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_envoye()))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.ENV" Then ' Nombre de paquets envoye par secondes
		Contenu_Variable = str(abs(0)) ' CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_envoye()))
	ElseIf Buffer_lecture_VAR = "CPC.SYS.NET.CLT" Then ' Nombre de machines connectes
		Contenu_Variable = str(abs(0)) ' CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_get_net_machines()))

' ======================= SYSTEME : Autres =======================
	ElseIf Buffer_lecture_VAR = "CPC.REP" Then ' Repertoire courant du noyau
		Contenu_Variable = _REPERTOIRE_DU_NOYAU_
	ElseIf Buffer_lecture_VAR = "CPC.DIR" Then ' Repertoire courant du noyau
		Contenu_Variable = _REPERTOIRE_DU_NOYAU_
	ElseIf Buffer_lecture_VAR = "CPC.REP.KRNL" Then ' Repertoire du KRNL
		Contenu_Variable = "KRNL"
	ElseIf Buffer_lecture_VAR = "CPC.REP.KRNL.INIT" Then ' Repertoire du KRNL\INIT
		Contenu_Variable = "KRNL\INIT"
	ElseIf Buffer_lecture_VAR = "CPC.DIR.KRNL" Then ' Repertoire du KRNL
		Contenu_Variable = "KRNL"
	ElseIf Buffer_lecture_VAR = "CPC.DIR.KRNL.INIT" Then ' Repertoire du KRNL\INIT
		Contenu_Variable = "KRNL\INIT"
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""

	' ======================= AFFICHAGE =======================
	
	' CONSOLE
	ElseIf Buffer_lecture_VAR = "CPC.SCR.CONS.X" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_X())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.CONS.Y" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_Y())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.CONS.XY" Then
		Contenu_Variable = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_XY()
	ElseIf Buffer_lecture_VAR = "CPC.SCR.CONS.YX" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Cons_Y()) & "x" & STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X())
		
	' GRAPHIQUE
	ElseIf Buffer_lecture_VAR = "CPC.SCR.X" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.Y" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.XY" Then
		Contenu_Variable = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_XY()
	ElseIf Buffer_lecture_VAR = "CPC.SCR.YX" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y()) & "x" & STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.BITS" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.MEM" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranMemoire())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.MEM.KO" Then
		Contenu_Variable = STR(int(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranMemoire() / 1024))
	ElseIf Buffer_lecture_VAR = "CPC.SCR.MEM.MO" Then
		Contenu_Variable = STR(int(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranMemoire() / 1024) / 1024)
	ElseIf Buffer_lecture_VAR = "CPC.SCR.HZ" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranHZ())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.DRV" Then
		Contenu_Variable = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranDRV()
	ElseIf Buffer_lecture_VAR = "CPC.SCR.PTR" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR())
	ElseIf Buffer_lecture_VAR = "CPC.SCR.MODE" Then
		Contenu_Variable = STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ResolutionMode())
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""

	' ======================= CPCDOS =======================
	ElseIf Buffer_lecture_VAR = "CPC.VER" Then
		Contenu_Variable = _VERSION_MAJEUR & " " & _VERSION_MINEUR & " CCP:" & _VERSION_CCP & " CONSOLE:" & _VERSION_CONSOLE & " SCI:" & _VERSION_SCI & " DATE:" & _VERSION_DATEV
	ElseIf Buffer_lecture_VAR = "CPC.VER.BUILD" Then
		Contenu_Variable = _VERSION_BUILD
	ElseIf Buffer_lecture_VAR = "CPC.VER.MAJ" Then
		Contenu_Variable = _VERSION_MAJEUR
	ElseIf Buffer_lecture_VAR = "CPC.VER.MIN" Then
		Contenu_Variable = _VERSION_MINEUR
	ElseIf Buffer_lecture_VAR = "CPC.VER.DATE" Then
		Contenu_Variable = _VERSION_DATEV
	ElseIf Buffer_lecture_VAR = "CPC.VER.CCP" Then
		Contenu_Variable = _VERSION_CCP
	ElseIf Buffer_lecture_VAR = "CPC.VER.SCI" Then
		Contenu_Variable = _VERSION_SCI
	ElseIf Buffer_lecture_VAR = "CPC.VER.CONSOLE" Then
		Contenu_Variable = _VERSION_CONSOLE
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""
	ElseIf Buffer_lecture_VAR = "CPC.##" Then
		Contenu_Variable = ""
	ElseIf Buffer_lecture_VAR = "CPC.ABOUT" Then
		Contenu_Variable = _ABOUT
	Else ' Pas trouve, on quitte
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			Recherche_Fonction_Var = " #Fonction Cpcdos non disponible#"
		else
			Recherche_Fonction_Var = " #Cpcdos function not avaiable#"
		End if
		Exit Function
	End if

	Function = Contenu_Variable
	
	SORTIR_SectionCritique()
End function

#print * Structure de fonction des liens dynamiques CCP
Function _SHELL_Cpcdos_OSx__.Recherche_Fonction_CPCDOS(byval CCP_Fonction_EXEC as string, byval Arguments as string, byval P1 as integer, byval NIVEAU_CCP as integer, byval Auth_Kernel as uinteger, byval Auth_OS as uinteger, byval Auth_Utilisateur as uinteger, byval Auth_PID as uinteger, byval Auth_TID as uinteger, byval RetourVAR as string) as string
	' Cette fonction permet d'executer une fonction Cpcdos interne depuis le CpcdosC+ (Apres avoir declare!)
	'  CCP_Fonction_EXEC 	= Nom de la fonction (non sensible a la case))
	'  Arguments			= Les arguments
	'  P1					= non utilise
	'  Retourne le resultat en string
	
	Dim _CLE_ 					as double = CPCDOS_INSTANCE.Generer_cle(Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
	Dim Position_1erParenthese 	as integer = Instr(Arguments, "(")
	Dim Position_2emParenthese	as integer = InstrREV(Arguments, ")")

	' Declarer les attributs qui vont permettre la recherche
	Dim Pos_Virgule_DEBUT 	as integer = 0
	Dim Pos_Virgule_FIN 	as integer = 0
	
	Dim CCP_Fonction_ARGS_N as integer
	Dim CCP_Fonction_ARGS(0 to MEMOIRE_CCP._MAX_FONCTION_ARGS)	as string
	Dim CCP_Fonction_DATA(0 to MEMOIRE_CCP._MAX_FONCTION_ARGS)	as string
	dim Message_erreur				as String

	scope
		' Recuperer les arguments pour les placer dans un tableau
		IF Position_1erParenthese = Position_2emParenthese - 1 then
			' S'il s'agit d'une fonction sans arguments
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[CpcdosC+] Recherche : Fonction sans arguments.",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[CpcdosC+] Search : Function without arguments.",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			End if
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[CpcdosC+] Recherche : Fonction avec argument(s).",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				Else
					DEBUG("[CpcdosC+] Search : Function with argument(s).",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
				End if
			End if
			' Une fonction avec 1 ou plusieurs arguments
			For Boucle_ARGS as integer = 1 to MEMOIRE_CCP._MAX_FONCTION_ARGS
				' Recuperer les positions
				Pos_Virgule_DEBUT = Pos_Virgule_FIN + 1
				Pos_Virgule_FIN = Instr(Pos_Virgule_DEBUT, Arguments, ",")

				' Verifier la presence d'une vigule
				IF Pos_Virgule_FIN > 0 Then
					'  Virgule presente!
					CCP_Fonction_ARGS(Boucle_ARGS) = LTrim(MID(Arguments, Pos_Virgule_DEBUT, (Pos_Virgule_FIN) - Pos_Virgule_DEBUT))
				else
					' Hop on recupere le dernier argument avant la parenthese
					CCP_Fonction_ARGS(Boucle_ARGS) = LTrim(MID(Arguments, Pos_Virgule_DEBUT, (Position_2emParenthese) - Pos_Virgule_DEBUT))
					
					' Ah .. C'est finis mon gros ;)
					CCP_Fonction_ARGS_N = Boucle_ARGS 
					exit for
				End if
			Next Boucle_ARGS
		End if

		' On recupere si possible les donnees des variables
		For boucle_rempl as integer = 0 to CCP_Fonction_ARGS_N
			Dim Test_Remplace as string
			' Si c'est une variable

			If InstrREV(Arguments, "%") > Instr(Arguments, "%") THEN
				Test_Remplace = CCP_Rempl_VAR(CCP_Fonction_ARGS(boucle_rempl), NIVEAU_CCP, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID, RetourVAR)
				
				' Si ce n'est pas une variable, alors se sont des donnees brutes ?
				IF NOT Test_Remplace = CPCDOS_INSTANCE._CONTENU_IMPROPABLE then
					' On recupere les donnees
					CCP_Fonction_DATA(boucle_rempl) = Test_Remplace
				Else
					Message_erreur = ERRAVT("AVT_008", 0)
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[CpcdosC+] AVT_008:" & Message_erreur & " --> '" & CCP_Fonction_ARGS(boucle_rempl) & "' depuis l'appel de fonction " & CCP_Fonction_EXEC & ". (KRNL_ID:" & Auth_Kernel & " OS:" & Auth_OS & " USER:" & Auth_Utilisateur & " PID:" & Auth_PID & " TID:" & Auth_TID & ") CleID: &" & _CLE_ & " [&B" & Bin(_CLE_, 36) & "] -> 0x" & hex(_CLE_, 10), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
					Else
						DEBUG("[CpcdosC+] AVT_008:" & Message_erreur & " --> '" & CCP_Fonction_ARGS(boucle_rempl) & "' from calling function " & CCP_Fonction_EXEC & ". (KRNL_ID:" & Auth_Kernel & " OS:" & Auth_OS & " USER:" & Auth_Utilisateur & " PID:" & Auth_PID & " TID:" & Auth_TID & ") CleID: &" & _CLE_ & " [&B" & Bin(_CLE_, 36) & "] -> 0x" & hex(_CLE_, 10), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
					End IF
				End if
			Else
				' Donnees/arguments brutes
				CCP_Fonction_DATA(boucle_rempl) = CCP_Fonction_ARGS(boucle_rempl)
			End if
		Next boucle_rempl
	
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[CpcdosC+] Appelle de la fonction '" & CCP_Fonction_EXEC & "()'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
			Else
				DEBUG("[CpcdosC+] Calling function '" & CCP_Fonction_EXEC & "()'...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR)
			End If
		End if
	
	End scope
	
	Dim ERR_NB_ARG_MIN as integer
	Dim ERR_NB_ARG_MAX as integer
	Dim ERR_NB_ARG_ACT as integer
	
	_scope
	_scope2
	' ==================================== FONCTION CPCDOS ====================================
		
		
		' ----- MANIPULATION DE CHAINES -------
		
		' ** INSTR : Chercher position caractere(s) dans une chaine
		IF CCP_Fonction_EXEC = "CPC.INSTR" Then 
			IF CCP_Fonction_ARGS_N = 2 Then
			
				' INSTR(CHAINE SOURCE, CARACTERE(S) A CHERCHER)
				Recherche_Fonction_CPCDOS = Str(InStr(CCP_Fonction_DATA(1), CCP_Fonction_DATA(2)))
				Exit _scope2
			ELSEIF CCP_Fonction_ARGS_N = 3 Then
			
				' INSTR(POSITION DEBUT, CHAINE SOURCE, CARACTERE(S) A CHERCHER)
				Recherche_Fonction_CPCDOS = Str(InStr(Val(CCP_Fonction_DATA(1)), CCP_Fonction_DATA(2), CCP_Fonction_DATA(3)))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 2
				ERR_NB_ARG_MAX = 3
				Exit _scope2, _scope
			END IF
		End if
		
		' ** INSTR : Chercher position caractere(s) dans une chaine DEPUIS LA FIN
		IF CCP_Fonction_EXEC = "CPC.INSTRREV" Then 
			IF CCP_Fonction_ARGS_N = 2 Then
			
				' INSTR(CHAINE SOURCE, CARACTERE(S) A CHERCHER)
				Recherche_Fonction_CPCDOS = Str(InStrREV(CCP_Fonction_DATA(1), CCP_Fonction_DATA(2)))
				Exit _scope2
			ELSEIF CCP_Fonction_ARGS_N = 3 Then
			
				' INSTR(POSITION DEBUT, CHAINE SOURCE, CARACTERE(S) A CHERCHER)
				Recherche_Fonction_CPCDOS = Str(InStrREV(CCP_Fonction_DATA(1), CCP_Fonction_DATA(2), val(CCP_Fonction_DATA(3))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 2
				ERR_NB_ARG_MAX = 3
				Exit _scope2, _scope
			END IF
		End if
		
		
		' ** MID : Recupere un bloc de texte a partir a partir des positions
		IF CCP_Fonction_EXEC = "CPC.MID" Then 
			IF CCP_Fonction_ARGS_N = 2 Then
				
				' MID(CHAINE SOURCE, POSITION DEBUT)
				Recherche_Fonction_CPCDOS = MID(CCP_Fonction_DATA(1), VAL(CCP_Fonction_DATA(2)))
				Exit _scope2
			ELSEIF CCP_Fonction_ARGS_N = 3 Then
			
				' MID(CHAINE SOURCE, POSITION DEBUT, POSITION FIN RELATIF)
				Recherche_Fonction_CPCDOS = MID(CCP_Fonction_DATA(1), VAL(CCP_Fonction_DATA(2)), VAL(CCP_Fonction_DATA(3)))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 2
				ERR_NB_ARG_MAX = 3
				Exit _scope2, _scope
			END IF
		End if
		
		' ** MIDA : Recupere un bloc de texte a partir a partir des positions ABSOLUE
		IF CCP_Fonction_EXEC = "CPC.MIDA" Then 
			IF CCP_Fonction_ARGS_N = 2 Then
			
				' MID(CHAINE SOURCE, POSITION DEBUT)
				Recherche_Fonction_CPCDOS = MID(CCP_Fonction_DATA(1), VAL(CCP_Fonction_DATA(2)))
				Exit _scope2
			ELSEIF CCP_Fonction_ARGS_N = 3 Then
			
				' MID(CHAINE SOURCE, POSITION DEBUT, POSITION FIN RELATIF)
				Recherche_Fonction_CPCDOS = MID(CCP_Fonction_DATA(1), VAL(CCP_Fonction_DATA(2)), VAL(CCP_Fonction_DATA(3)) - VAL(CCP_Fonction_DATA(2)))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 2
				ERR_NB_ARG_MAX = 3
				Exit _scope2, _scope
			END IF
		End if
		
		' ** STING : Repeter un caractere x fois
		IF CCP_Fonction_EXEC = "CPC.STR" Then 
			IF CCP_Fonction_ARGS_N = 2 Then
			
				' STR(CHAINE SOURCE, Nombre de repetitions)
				Recherche_Fonction_CPCDOS = STRING(val(CCP_Fonction_DATA(2)), CCP_Fonction_DATA(1))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 2
				ERR_NB_ARG_MAX = 2
				Exit _scope2, _scope
			END IF
		End if
		
		' ** LEN : Obtenir la taille d'une chaine
		IF CCP_Fonction_EXEC = "CPC.LEN" OR CCP_Fonction_EXEC = "CPC.TAILLE" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
				Recherche_Fonction_CPCDOS = STR(LEN(CCP_Fonction_DATA(1)))
				
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** MAJ : Convertir une chaine en MAJuscule
		IF CCP_Fonction_EXEC = "CPC.MAJ" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = UCASE(CCP_Fonction_DATA(1))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** MIN : Convertir une chaine en MINuscules
		IF CCP_Fonction_EXEC = "CPC.MIN" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = LCASE(CCP_Fonction_DATA(1))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** SIGNE ou SIGN : Connaitre le signe d'un nombre
		IF CCP_Fonction_EXEC = "CPC.SIGNE" OR CCP_Fonction_EXEC = "CPC.SIGN" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = STR(SGN(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ----- CONVERSIONS NUMERIQUES -------
		
		' ** INT : Convertir en valeur ENTIER (INTEGER)
		IF CCP_Fonction_EXEC = "CPC.INT" OR CCP_Fonction_EXEC = "CPC.INTEGER" OR CCP_Fonction_EXEC = "CPC.ENTIER" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = STR(INT(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** FRAC : Recuperer les chiffres APRES la virgule
		IF CCP_Fonction_EXEC = "CPC.FRAC" OR CCP_Fonction_EXEC = "CPC.FRAC" OR CCP_Fonction_EXEC = "CPC.ENTIER" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = STR(FRAC(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** VAL : Convertir une valeur (&B : Binaire / &O : Octale / &H : Hexa) en decimale)
		IF CCP_Fonction_EXEC = "CPC.VAL" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				' COMPATIBILITE : Remplace le "0x" par "&h"
				IF instr(Ucase(CCP_Fonction_DATA(1)), "0X") > 0 Then
					CCP_Fonction_DATA(1) = CPCDOS_INSTANCE.remplacer_Caractere(ucase(CCP_Fonction_DATA(1)), "0X", "&h")
				End if
				
				Recherche_Fonction_CPCDOS = STR(VAL(CCP_Fonction_DATA(1)))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** CHR : Convertir une valeur en caractere ASCII
		IF CCP_Fonction_EXEC = "CPC.CHR" OR CCP_Fonction_EXEC = "CPC.CAR" OR CCP_Fonction_EXEC = "CPC.CARACTERE" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = CHR(int(val(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** ASC : Convertir une valeur en caractere ASCII
		IF CCP_Fonction_EXEC = "CPC.ASC" OR CCP_Fonction_EXEC = "CPC.ASCII" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = STR(ASC(CCP_Fonction_DATA(1)))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** HEX : Convertir en valeur ENTIER (INTEGER)
		IF CCP_Fonction_EXEC = "CPC.HEX" OR CCP_Fonction_EXEC = "CPC.HEXA" OR CCP_Fonction_EXEC = "CPC.HEXADECIMAL" OR CCP_Fonction_EXEC = "CPC.HEXADECIMALE" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = HEX(VAL(CCP_Fonction_DATA(1)))
				Exit _scope2
				
			ELSEIF CCP_Fonction_ARGS_N = 2 Then
				Recherche_Fonction_CPCDOS = HEX(VAL(CCP_Fonction_DATA(1)), int(val(CCP_Fonction_DATA(2))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 2
				Exit _scope2, _scope
			END IF
		End if
		
		' ** ABS : Convertir en valeur ABSOLUE
		IF CCP_Fonction_EXEC = "CPC.ABS" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(ABS(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ----- FONCTIONS MATHEMATIQUES -------
		
		' ** LOG : Obtenir la valeur LOGARITHMIQUE
		IF CCP_Fonction_EXEC = "CPC.LOG" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(LOG(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** EXP : Obtenir la valeur EXPONENTIEL
		IF CCP_Fonction_EXEC = "CPC.EXP" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(EXP(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** SQR : Obtenir la valeur Racine carre
		IF CCP_Fonction_EXEC = "CPC.SQR" OR CCP_Fonction_EXEC = "CPC.RAC" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(SQR(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** COS : Cosinus
		IF CCP_Fonction_EXEC = "CPC.COS" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(COS(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** ACOS : ArcCosinus
		IF CCP_Fonction_EXEC = "CPC.ACOS" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(ACOS(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** SIN : Sinus
		IF CCP_Fonction_EXEC = "CPC.SIN" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(SIN(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** ASIN : ArcSinus
		IF CCP_Fonction_EXEC = "CPC.ASIN" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(ASIN(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** TAN : Tangeante
		IF CCP_Fonction_EXEC = "CPC.TAN" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(TAN(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** ATAN : ArcTangeante
		IF CCP_Fonction_EXEC = "CPC.ATAN" Then 
			IF CCP_Fonction_ARGS_N = 1 Then

				Recherche_Fonction_CPCDOS = STR(ATN(VAL(CCP_Fonction_DATA(1))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** ATAN : ArcTangeante d'un ratio
		IF CCP_Fonction_EXEC = "CPC.ATAN" Then 
			IF CCP_Fonction_ARGS_N = 2 Then

				Recherche_Fonction_CPCDOS = STR(ATAN2(VAL(CCP_Fonction_DATA(1)), VAL(CCP_Fonction_DATA(2))))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 2
				ERR_NB_ARG_MAX = 2
				Exit _scope2, _scope
			END IF
		End if
		
		
		' ----- AUTRES FONCTIONS INTERNE -------
		
		' ** FICHIER_EXISTE ou FILE_EXIST : Tester l'existence d'un fichier
		IF CCP_Fonction_EXEC = "CPC.FICHIER_EXISTE" OR CCP_Fonction_EXEC = "CPC.FILE_EXIST"  Then 
			IF CCP_Fonction_ARGS_N = 1 Then
				IF CPCDOS_INSTANCE.Fichier_Existe(CCP_Fonction_DATA(1)) = TRUE Then
					Recherche_Fonction_CPCDOS = STR(1) ' Fichier existe
				ELSE
					Recherche_Fonction_CPCDOS = STR(0) ' Fichier existe pas
				END IF
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** TAILLE_FICHIER FILE_SIZE : Obtenir la taille d'un fichier
		IF CCP_Fonction_EXEC = "CPC.TAILLE_FICHIER" OR CCP_Fonction_EXEC = "CPC.FILE_SIZE" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = STR(CPCDOS_INSTANCE.Taille_Fichier(CCP_Fonction_DATA(1))) 
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** LIRE_FICHIER READ_FILE : Obtenir le contenu complet d'un fichier
		IF CCP_Fonction_EXEC = "CPC.LIRE_FICHIER" OR CCP_Fonction_EXEC = "CPC.READ_FILE" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = CPCDOS_INSTANCE.Lire_fichier_complet(CCP_Fonction_DATA(1))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
		' ** LIRE_FICHIER READ_FILE : Obtenir le contenu complet d'un fichier
		IF CCP_Fonction_EXEC = "CPC.NET.PING" Then 
			IF CCP_Fonction_ARGS_N = 1 Then
			
				Recherche_Fonction_CPCDOS = str(CPCDOS_INSTANCE.RESEAU_INSTANCE.Ping(CCP_Fonction_DATA(1), _CLE_))
				Exit _scope2
			ELSE
				' Erreur !
				ERR_NB_ARG_ACT = CCP_Fonction_ARGS_N
				ERR_NB_ARG_MIN = 1
				ERR_NB_ARG_MAX = 1
				Exit _scope2, _scope
			END IF
		End if
		
	_end_scope2
	' et quitter
	Exit function
	
	' et afficher l'erreur
	_end_scope

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("Le nombre d'arguments pour " & CCP_Fonction_EXEC & " est MAX:" & ERR_NB_ARG_MAX & " MIN:" & ERR_NB_ARG_MIN & ", vous avez mis " & ERR_NB_ARG_ACT & " argument(s)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
	Else
		DEBUG("Le nombre d'arguments pour " & CCP_Fonction_EXEC & " est MAX:" & ERR_NB_ARG_MAX & " MIN:" & ERR_NB_ARG_MIN & ", vous avez mis " & ERR_NB_ARG_ACT & " argument(s)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
	End if
	
	Recherche_Fonction_CPCDOS = "#ERRARGN"
End function

Function _SHELL_Cpcdos_OSx__.CCP_Function(Commande as string, Fichier as string, _CLE_ as double, NIVEAU_CCP as integer, P3 as integer, P4 as string) as string
	' Cette fonction permet d'executer des fonctions CpcdosC+ utile pour la programmation
	
	' Indiquer au sheduler qu'on se trouve dans une grosse fonction gourmande
	' CPCDOS_INSTANCE.En_Charge(true)

	Dim Position_Fonction 		as integer = Instr(Ucase(Commande), "/F:") + 3
	Dim Position_1erParenthese 	as integer = Instr(Commande, "(")
	Dim Position_2emParenthese	as integer = Instr(Commande, ")")
	Dim RetourCCP				as String
	Dim NomFonction 			as string = Mid(Commande, Position_Fonction, (Position_1erParenthese) - Position_Fonction)
	
	Dim Arguments 				as string = Mid(Commande, Position_1erParenthese + 1, Position_2emParenthese - (Position_1erParenthese + 1))
	Dim Contenu_Retour_Fonction as string
	Dim commande_Finale			as string = Commande
	
	' OPTIMISATION !!
	' IF Instr(Ucase(MEMOIRE_CCP.TAB_FONCTION_CCP_NOM(Boucle_table)), "CPC.") > 0 Then
	' C'est une fonction declare qui appartient au noyau
	
	' IF Arguments_CCP_FONCT_exec = "" Then
		
		' Si il n'y a pas d'arguments, on cherche si c'est pas une fonction VAR
		' Retour_Fonction_ = Recherche_Fonction_Var(MEMOIRE_CCP.TAB_FONCTION_CCP_NOM(Boucle_table))
	
	IF Fichier = "" Then

		Dim Deja_Trouve as integer = 0
		Dim Fonction_a_test as string = Mid(commande_Finale, instr(Ucase(commande_Finale), "/F:") + 3)
		Fonction_a_test = Mid(Fonction_a_test, 1, Instr(Fonction_a_test, "(") -1)
		
		For Boucle_Cherche as integer = 1 to this.MEMOIRE_CCP._MAX_FONCTION_PUBLIC
			IF Instr(this.MEMOIRE_CCP.TAB_FONCTION_CCP_NOM(Boucle_Cherche), Ucase(Fonction_a_test)) > 0 AND INSTR(commande_Finale, ")") > INSTR(commande_Finale, "(") Then
				Fichier = this.MEMOIRE_CCP.TAB_FONCTION_CCP_SRC(Boucle_Cherche)
				
				' Executer le /FN de l'executeur CpcdosC+
				RetourCCP = CpcdosCP_SHELL("EXE/ " & Fichier & " /FN:" & NomFonction & "(" & Arguments & ")->" & _CLE_, _CLE_, NIVEAU_CCP, P3, P4)
				Deja_Trouve = 1
				Exit for
			End if
		next Boucle_Cherche
		
		IF Deja_Trouve = 0 then
			' S'il y a pas de fichier (Genre ecrit depuis la console ccp)
			'  on lui donne un fichier vide pour ne pas bloquer les fonctions
		
			Fichier = Recherche_Fonction_Var("CPC.REP.KRNL", _CLE_) & "\NULL.CPC"
			
			' Executer le /FN de l'executeur CpcdosC+
			RetourCCP = CpcdosCP_SHELL("##FONCTION=:" & Fichier & ":=##EXE/ " & Fichier & " /FN:" & NomFonction & "(" & Arguments & ")->" & _CLE_, _CLE_, NIVEAU_CCP, P3, P4)
		End if
	ELSE
		' Executer le /FN de l'executeur CpcdosC+
		RetourCCP = CpcdosCP_SHELL("EXE/ " & Fichier & " /FN:" & NomFonction & "(" & Arguments & ")->" & _CLE_, _CLE_, NIVEAU_CCP, P3, P4)
		
	END IF
	
	' Recuperer le contenu du retour de fonction si presente
	IF Instr(RetourCCP, "FONCTION-RETOUR:") > 0 Then
		Contenu_Retour_Fonction = MID(RetourCCP, 17)
		commande_Finale = Mid(Commande, 1, Position_Fonction - 4) & Contenu_Retour_Fonction
	Else
		' Simplement enlever le /F: ...
		commande_Finale = Mid(Commande, 1, Position_Fonction - 4)
	End if
	
	if RetourCCP = "ERR_050" Then
		return RetourCCP
	else
		return commande_Finale
	End if
	
	' Indiquer au sheduler qu'on viens de quitter cette fonction gourmande
	' CPCDOS_INSTANCE.En_Charge(false)
End function

#print * Proprietes objets graphiques
Function _SHELL_Cpcdos_OSx__.get_DonneesQuotesPROP_GUI(Donnees as String) as String
	' Cette fonction permet de recuperer les donnees qui se trouve entre les 
	'  quotes dans les commandes CpcdosC+ du type proprietes graphiques
	' Donnees 	= Contenant la commande du type ' = "Valeur" '
	' Retourne 
	'	OK 		= une chaine de caracteres
	'  -1~#ERR	= Erreur!
	
	Dim PositionEgale 	as integer = Instr(Donnees, "=")
	Dim PositionQuote1 	as integer = Instr(Donnees, CHR(34))
	Dim PositionQuote2 	as integer = InstrREV(Donnees, CHR(34))
	Dim Message_erreur 	as string
	' Verifier les bonnes positions
	IF PositionEgale < PositionQuote1 AND PositionQuote1 < PositionQuote2 Then
		' Le '=' est avant les deux '""'
		IF NOT PositionQuote1 = PositionQuote2 Then
			' Si le premier " N'EST PAS a la meme positon que la 2eme "
			'  ce qui veut dire qu'il y en a 2 de position differentes.
			IF PositionQuote1 < PositionQuote2 Then	
				' Egalite quasiment toujours vraie
				' On recupere le contenu des quotes
				
				get_DonneesQuotesPROP_GUI = MID(Donnees, PositionQuote1 + 1, PositionQuote2 - (PositionQuote1+1))
			End if
		Else
			' Il y a qu'une seule quote
			get_DonneesQuotesPROP_GUI = "-1~#ERR"
		End if
	Else
		' Unes des quotes sont places avant le '='
		get_DonneesQuotesPROP_GUI = "-1~#ERR"
	End if
End function

#print * Calculs mathematiques composes
Function _SHELL_Cpcdos_OSx__.CCP_Calcul(Commande as string) as string
	' Cette fonction permet d'effectuer des calculs si elle suit du Parametre /C
	'  Style d'algorithme calculatoire en ligne
	
	' Petit bemol : Probleme soustraction d'un nombre negatif
	' Pas possible de placer du texte APRES l'operation
	
	Dim PositionSlashCP_CMD 	as integer = Instr(UCASE(Commande), "/C(")
	Dim Resultat_Final 			as string = MID(Commande, Instr(UCASE(Commande), "/C("))
	Dim PositionSlashCP 		as integer = Instr(UCASE(Resultat_Final), "/C(") ' Premier
	Dim EspaceDansAlgo 			as integer = 0
	Dim PosOperateur 			as integer

	Dim CapurePartie1 			as string = ""
	Dim CapurePartie2 			as string = ""
	
	For BoucleCalc as integer = 1 to 1024
		EspaceDansAlgo = instr(Resultat_Final, " ")
		If EspaceDansAlgo > 0 Then
			' Capturer avant l'espace
			CapurePartie1 = MID(Resultat_Final, 1, EspaceDansAlgo - 1)

			' Et apres l'espace
			CapurePartie2 = MID(Resultat_Final, EspaceDansAlgo + 1)

			' Puis assembler les deux morceaux
			Resultat_Final = CapurePartie1 & CapurePartie2

		elseIF EspaceDansAlgo = 1 then
			' Si l'espace est au debut
			Resultat_Final = MID(Resultat_Final, 2)
		else
			' Il y a plus d'espaces on repart!
			exit for
		End if
	Next BoucleCalc
	
	Dim Continuue as integer = 0
	IF PositionSlashCP > 0 Then ' Dernier
		Dim Pos_Multiplication 		as integer = 0
		Dim Pos_Division 			as integer = 0
		Dim Pos_Addition 			as integer = 0
		Dim Pos_Soustraction 		as integer = 0
		Dim Action					as integer = 0 ' 1:* 2:/ 3:+ 4:-
		Dim PosOperateur_AP			as integer = 0
		Dim PosOperateur_AV			as integer = 0
		Dim AjoutLeSigneMoins		as integer = 0
		Dim ToutQuitter				as integer = 0
		
		' Va chercher le dernier '('
		Dim DerniereParenthese		as integer
		Dim ProchaineParenthese 	as integer
		Dim AlgoCapture 			as string = ""
		Dim AlgoCapture_AV 			as string = ""
		
		For Boucle_Operation as integer = 1 to 1024
			EspaceDansAlgo = 0
			PosOperateur = 0
			CapurePartie1 = ""
			CapurePartie2 = ""
			AjoutLeSigneMoins = 0
			DerniereParenthese = InstrREV(Resultat_Final, "(") + 1
			ProchaineParenthese = Instr(DerniereParenthese, Resultat_Final, ")")

			' Si elle est presente alors on va chercher le premier ')' APRES cette derniere trouvaille
			if DerniereParenthese > 0 then
				' Recherche AVEC parenthese
				IF ProchaineParenthese > 0 Then
					AlgoCapture = MID(Resultat_Final, DerniereParenthese, ProchaineParenthese - DerniereParenthese)
				End if
			End if
			IF LEN(AlgoCapture) < 3 Then Exit for ' SECURITE:S'il reste 1 ou 2 chiffres ou 1 chiffre et 1 signe alors on quitte

			Action = 0
			' On commence par chercher un multiplicateur "*"
			PosOperateur = Instr(AlgoCapture, "*")
			If NOT PosOperateur > 0 then
				PosOperateur = Instr(AlgoCapture, "/")
				If NOT PosOperateur > 0 then
					PosOperateur = Instr(AlgoCapture, "+")
					If NOT PosOperateur > 0 then	
						PosOperateur = Instr(AlgoCapture, "-")
						If NOT PosOperateur > 0 then
							Action = 0
						Else
							' On appliquera la soustraction
							Action = 4
						End if
					Else
						' On appliquera l'addition
						Action = 3
					End if
				Else
					' On appliquera la division
					Action = 2
				End if
			Else
				' On appliquera la multiplication
				Action = 1
			End if
			' si marqueur non present
			if not PosOperateur_AV = -2316 then	
				PosOperateur_AP = 0
				PosOperateur_AV = 0
			else
				PosOperateur = PosOperateur_AP
				PosOperateur_AV = 0
				PosOperateur_AP = 0
				if Instr(AlgoCapture, "-") = 1 then 
					Action = 3
					AjoutLeSigneMoins = 1
				end if
			end if
			
			Dim AjoutDoubleSigne as integer = 0
			IF Instr(AlgoCapture, "*-") > 0 Then 
				Action = 1
				AjoutDoubleSigne = 1
				' J'essaie de faire une exclusion sur les *- /- +- --
				' Donc il faut compater capturepartie1 et 2 pour voir s'il sont corrects
				' EQ : /c(8 * (-5 * 5))
			End if
			IF PosOperateur < 2 Then ' l'operateur au debut comme le '-'
				REM Dim AvaitContinue as integer = Continuue
				IF Continuue = 3 then exit for
				Continuue = 3
				' Verifier si il y a pas d'autres signe
				IF Instr(DerniereParenthese, Resultat_Final, "*") > 0 Then Continuue = 1
				IF Instr(DerniereParenthese, Resultat_Final, "/") > 0 Then Continuue = 1
				IF Instr(DerniereParenthese, Resultat_Final, "+") > 0 Then Continuue = 1
				IF Instr(DerniereParenthese, Resultat_Final, "-") > DerniereParenthese Then Continuue = 1
				' Si present, on quitte
				' (4 * (-8 * 8) + 4 - 3) = -255 PROBLEME!!
				' Sinon on continue
			end if			
			
			Dim Tableau_PosOP(0 to 8) as integer
			' On definit sur quoi quel operateur on va appliquer l'action
		
			
			Tableau_PosOP(1) = Instr(PosOperateur + 1 + AjoutDoubleSigne, AlgoCapture, "*")
			Tableau_PosOP(2) = Instr(PosOperateur + 1 + AjoutDoubleSigne, AlgoCapture, "/")
			Tableau_PosOP(3) = Instr(PosOperateur + 1 + AjoutDoubleSigne, AlgoCapture, "+")
			Tableau_PosOP(4) = Instr(PosOperateur + 1 + AjoutDoubleSigne, AlgoCapture, "-")
			Tableau_PosOP(5) = InstrREV(AlgoCapture, "*", PosOperateur - 1)
			Tableau_PosOP(6) = InstrREV(AlgoCapture, "/", PosOperateur - 1)
			Tableau_PosOP(7) = InstrREV(AlgoCapture, "+", PosOperateur - 1)
			Tableau_PosOP(8) = InstrREV(AlgoCapture, "-", PosOperateur - 1)
			Dim PlusPetit as integer = 255
			Dim PlusGrand as integer = 0
			Dim Boucle_PosOP as integer
			For Boucle_PosOP = 1 to 8
				IF Boucle_PosOP < 5 then
					IF Tableau_PosOP(Boucle_PosOP) > 0 Then
						IF Tableau_PosOP(Boucle_PosOP) < PlusPetit then
							PlusPetit = Tableau_PosOP(Boucle_PosOP)
						end if
					end if
				else
					IF Tableau_PosOP(Boucle_PosOP) > 0 Then
						IF Tableau_PosOP(Boucle_PosOP) > PlusGrand then
							PlusGrand = Tableau_PosOP(Boucle_PosOP)
						end if
					end if
				end if
			Next Boucle_PosOP
			PosOperateur_AP = PlusPetit
			PosOperateur_AV = PlusGrand
			If PosOperateur = 0 then
				IF PosOperateur_AP = 255 then
					IF PosOperateur_AV = 0 then
						exit for
					End if
				End if
			End if

			' S'il n'y a plus d'operations a effectuer donc on quitte :)
			IF NOT PosOperateur > 0 Then 
				' On recupere les deux cotes afin de supprimer ce '/C'
				CapurePartie1 = MID(AlgoCapture, 1, PositionSlashCP - 1)
				CapurePartie2 = MID(AlgoCapture, PositionSlashCP + 3)
				
				' On rassemble et hop!
				Resultat_Final = CapurePartie1 & CapurePartie2
				Exit for
			End if
			
			' On recupere le premier chiffre
			AlgoCapture_AV = AlgoCapture & ")"
			IF PosOperateur_AV > 0 Then
				CapurePartie1 = MID(AlgoCapture, PosOperateur_AV+1, PosOperateur - PosOperateur_AV - 1)
			Else
				CapurePartie1 = MID(AlgoCapture, 1, PosOperateur - 1)
				if CapurePartie1 = "" then
					if Tableau_PosOP(4) > 0 then 
						' creer temporairement un marqueur
						'PosOperateur_AP = PosOperateur_AP
						PosOperateur_AV = -2316
					end if
				end if
			End if
			IF Val(CapurePartie1) = 0 Then CapurePartie1 = "0"
			' On recupere le deuxieme chiffre
			
			IF PosOperateur_AP < 255 then
				IF PosOperateur_AP > PosOperateur + 1 then
					IF PosOperateur_AP > 0 Then
						CapurePartie2 = MID(AlgoCapture, PosOperateur + 1, PosOperateur_AP - PosOperateur - 1)
					Else
						CapurePartie2 = MID(AlgoCapture, PosOperateur + 1)
					End if
				else
					CapurePartie2 = MID(AlgoCapture, PosOperateur + 1)
				End if
			else
				CapurePartie2 = MID(AlgoCapture, PosOperateur + 1)
			End if
			if AjoutLeSigneMoins = 1 then CapurePartie1 = "-" & CapurePartie1 : AjoutLeSigneMoins = 0
			
			IF UCASE(CapurePartie1) = "/C(*" Then
				CapurePartie1 = "0"
			End if
			IF UCASE(CapurePartie1) = "/C(/" Then
				CapurePartie1 = "0"
			End if
			IF UCASE(CapurePartie1) = "/C(+" Then
				CapurePartie1 = "0"
			End if
			IF UCASE(CapurePartie1) = "/C(-" Then
				CapurePartie1 = "0"
			End if
			'(4 * (-8 * 8) + 4 - 3) = -255
			' Et on applique le calcul!
			IF Instr(UCASE(AlgoCapture), "-") = 1 then 
				IF Action = 3 then Action = 4 ' si le '-' est au debut
			end if

			If Action = 1 Then
				AlgoCapture = STR(val(CapurePartie1) * Val(CapurePartie2))
			elseif Action = 2 Then
				AlgoCapture = STR(val(CapurePartie1) / Val(CapurePartie2))
			elseif Action = 3 Then
				AlgoCapture = STR(val(CapurePartie1) + Val(CapurePartie2))
			elseif Action = 4 Then
				AlgoCapture = STR(val(CapurePartie1) - Val(CapurePartie2))
			End if
			
			Dim RefPasse as integer = 0
			DIM P1_Calc as string 
			IF PosOperateur_AV > 0 Then
				P1_Calc = MID(Resultat_Final, 1, DerniereParenthese + PosOperateur_AV - 1)
				If InstrREV(P1_Calc, "(") >= Len(P1_Calc) Then
					P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 1)
				End if
			else
				P1_Calc = MID(Resultat_Final, 1, DerniereParenthese - 1)
				If InstrREV(P1_Calc, "(") >= Len(P1_Calc) Then	
					If InstrREV(P1_Calc, "C(") >= Len(P1_Calc) - 1 Then
						REM P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 1)
						RefPasse = 1
					ElseIf InstrREV(P1_Calc, "*(") >= Len(P1_Calc) - 1 Then
						RefPasse = 1
						P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 1)
					ElseIf InstrREV(P1_Calc, "/(") >= Len(P1_Calc) - 1 Then
						RefPasse = 1
						P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 1)
					ElseIf InstrREV(P1_Calc, "+(") >= Len(P1_Calc) - 1 Then
						RefPasse = 1
						P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 1)
					ElseIf InstrREV(P1_Calc, "-(") >= Len(P1_Calc) - 1 Then
						RefPasse = 1
						P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 1)
					End if
				End if
			end if
			
			IF RefPasse = 0 then
				IF InstrREV(P1_Calc, "*(-") > 0 then
					P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 3) & "*-" 
				end if
				IF InstrREV(P1_Calc, "/(-") > 0 then
					P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 3) & "/-" 
				end if
				IF InstrREV(P1_Calc, "+(-") > 0 then
					P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 3) & "-"
				end if
				IF InstrREV(P1_Calc, "-(-") > 0 then
					P1_Calc = MID(P1_Calc, 1, Len(P1_Calc) - 3) & "+" 
				end if
			end if
			RefPasse = 0

			
			DIM P2_Calc as string = AlgoCapture

			DIM P3_Calc as string
			IF PosOperateur_AP > 0 Then
				IF NOT MID(Resultat_Final, ProchaineParenthese + 1) = "" Then
					P3_Calc = MID(Resultat_Final, ProchaineParenthese + 1)
				Else
					P3_Calc = MID(AlgoCapture_AV, PosOperateur_AP)
				End if
			Else
				P3_Calc = MID(Resultat_Final, ProchaineParenthese)
			End if
			
			If InstrREV(P1_Calc, "((") >= Len(P1_Calc) - 1 Then
				Dim PosInstrREV1 as integer = InstrREV(P1_Calc, "((")
				P1_Calc = MID(P1_Calc, 1, PosInstrREV1) & "0+" & MID(P1_Calc, PosInstrREV1 + 1)
			end if
			IF NOT P3_Calc = "" then
				If Instr(P3_Calc, "))") >= Len(P3_Calc) - 1 Then
					Dim PosInstrREV3 as integer = InstrREV(P3_Calc, "))")
					P3_Calc = MID(P3_Calc, 1, PosInstrREV3) & "+0" & MID(P3_Calc, PosInstrREV3 + 1)
				End if
			End if

			' Rassembler
			IF UCASE(P1_Calc) = "/C(-" then
				' Probleme, garder le /C( (ou pas)
				IF Instr(P2_Calc, "-") = 1 then
					P1_Calc = ""
					P2_Calc = MID(P2_Calc, 2)
				End if
			End if 
			Resultat_Final = P1_Calc & P2_Calc &  P3_Calc
			IF Instr(Resultat_Final, "(") > 0 Then
				IF NOT Instr(Resultat_Final, ")") > 0 Then
					Resultat_Final = Resultat_Final & ")"
				End if
			End if
			' Et retester
		Next Boucle_Operation
	end if
	
	
	' On renvoie le resultat final
	IF Instr(UCASE(Resultat_Final), "/C(") > 0 Then
		Resultat_Final = MID(Resultat_Final, Instr(UCASE(Resultat_Final), "/C(") + 3)
		IF Instr(Resultat_Final, ")") >= Len(Resultat_Final) Then
			Resultat_Final = MID(Resultat_Final, 1, Len(Resultat_Final) - 1)
		End if
	End if
	Dim Resultat_FIN as string = MID(Commande, 1, PositionSlashCP_CMD - 1) & Resultat_Final
	CCP_Calcul = Resultat_FIN
End Function

#print * Gestionnaire variables et constantes
Function _SHELL_Cpcdos_OSx__.CCP_Rempl_VAR(byval Commande as string, byval niveau as integer, byval Auth_Kernel as uinteger, byval Auth_OS as uinteger, byval Auth_Utilisateur as uinteger, byval Auth_PID as uinteger, byval Auth_TID as uinteger, byval RetourVAR as String) as string
	' Cette fonction permet de remplacer toutes les variables par leur contenu et renvoyer la commande
	' Commande		= Commande CpcdosC+ contenant des variables du type %variable%
	
	ENTRER_SectionCritique()
	
	Dim _CLE_ 			as double 	= CPCDOS_INSTANCE.Generer_cle(Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)

	
	dim Position_DEBUT 	as integer = 0
	dim Position_FIN 	as integer = 0
	Dim Nombre_Variable as integer = 0
	Dim PremierPourcent as integer = 0
	Dim SlashParam		as integer = 0
	Dim SlashPresent	as integer = 0
	
	Dim Autoriser_Reformatage 	as integer = 0
	Dim SI_Present 				as integer = 0

	Dim TestFormat(0 to 4) 		as integer
	
	Dim Contenu_Variable 	as string
	Dim Partie1 			as string
	Dim Partie2 			as string
	
	
	Dim Buffer_COPIE 			as string
	dim Buffer_lecture 			as String

	
	Dim Message_erreur 		as string
	

	' Ceci permet de rechercher a nouveau la chaine de variable concatene entre %%
	'  pour chaque variable trouve (pouvant avoir des variables dans une variable)
	TestFormat(1) = instr(UCASE(Commande), "\#REFORMAT-VAR")
	TestFormat(2) = instr(UCASE(Commande), "\#VAR-REFORMAT")
	TestFormat(3) = instr(UCASE(Commande), "\#REFORMATER-VAR")
	TestFormat(4) = instr(UCASE(Commande), "\#VAR-REFORMATER")
	
	' Savoir si il s'agit de la commande si afin d'ajoter des exceptions
	If Instr(UCASE(Commande), "SI/") > 0 Then
		IF Instr(UCASE(Commande), "SI/") < Instr(UCASE(Commande), "ALORS:") then
			' le 'si/ alors:' est present - Donc EXCEPTION
			SI_Present = 1
		elseif Instr(UCASE(Commande), "SI/") < Instr(UCASE(Commande), "THEN:") then
			' le 'si/ then:' est present - Donc EXCEPTION
			SI_Present = 1
		End if
	ElseIF Instr(UCASE(Commande), "IF/") > 0 Then
		IF Instr(UCASE(Commande), "IF/") < Instr(UCASE(Commande), "THEN:") then
			' le 'if/ then:' est present - Donc EXCEPTION
			SI_Present = 1
		elseif Instr(UCASE(Commande), "IF/") < Instr(UCASE(Commande), "ALORS:") then
			' le 'if/ alors:' est present - Donc EXCEPTION
			SI_Present = 1
		End if
	End if
	for b as integer = 1 to 4
		if TestFormat(b) > 5 then
			Autoriser_Reformatage = 1
			Commande = MID(Commande, 1, TestFormat(b) - 1)
			exit for
		end if
	next b
	


	Buffer_COPIE = Commande

	while ((LEN(Buffer_COPIE) - Position_DEBUT) > 0)

		If PremierPourcent = 0 then
			' On cherche le premier %
			Position_DEBUT = Position_DEBUT + 1
			Buffer_lecture = MID(Buffer_COPIE, Position_DEBUT, 1) ' recuperer 1 caractere par 1
		else
			' On cherche le 2eme %
			Position_FIN = Position_FIN + 1
			IF ((LEN(Buffer_COPIE)+2) - Position_FIN) < 1 then exit while
			Buffer_lecture = MID(Buffer_COPIE, Position_FIN, 1)
		End if
		
		' Capturer le caractere
		IF Instr(Buffer_lecture, " ") > 0 Then ' interdit d'utiliser les espaces dans les nom de variables.
			IF PremierPourcent > 0 then
				Buffer_lecture = ""
				PremierPourcent = 0
				Position_FIN = Position_DEBUT
			end if
		End if
		
		IF Instr(Buffer_lecture, "\") > 0 Then SlashParam = 2  ' detection du '\%'
		IF Instr(Buffer_lecture, "%") > 0 Then ' si %
			IF SlashParam = 1 Then ' si on veut avoir % sur la commande
				Partie1 = MID(Buffer_COPIE, 1, Position_DEBUT-2)
				Partie2 = MID(Buffer_COPIE, Position_DEBUT + 1)
				Buffer_COPIE = Partie1 & "%" & Partie2
				PremierPourcent = 0
				Position_DEBUT = Position_DEBUT - 1
				Position_FIN = Position_DEBUT
				SlashParam = 0
				SlashPresent = 1
			ELSE
				SlashParam = 0
				If PremierPourcent = 0 then ' Si c'est notre premier %
					Position_FIN = Position_DEBUT
					PremierPourcent = 1 ' On ira chercher le 2eme % avec Position_FIN
				else

					' On trouve le 2eme %
					PremierPourcent = 0
					IF Position_DEBUT = Position_FIN - 1 then
						Position_DEBUT = Position_DEBUT + 1
					else
						Nombre_Variable = Nombre_Variable + 1 ' Nombre de variables
						' Recuperation du nom de variable entre les %%
						Buffer_lecture = UCASE(MID(Buffer_COPIE, Position_DEBUT + 1,  (Position_FIN - Position_DEBUT)-1)) ' Recuperer le nom entre les %
						IF LEN(Buffer_lecture) > 0 then
							' Maintenant on remplace la chaine de cette variable par le contenu
							Partie1 = MID(Buffer_COPIE, 1, Position_DEBUT-1) ' Capture la 1ere partie
							Partie2 = MID(Buffer_COPIE, Position_FIN+1) ' Capture la 2eme

							'  Chercher si le nom de variable correspond a une fonction
							'  Afin d'optimiser, si les 4 premiers caracteres sont "CPC." alors on
							'  cherche si c'est une fonction Cpcdos
							IF UCASE(MID(Buffer_lecture, 1, 4)) = "CPC." Then
								
								Contenu_Variable = (Recherche_Fonction_Var(UCASE(Buffer_lecture), _CLE_))
							ELSE
							
								' S'il s'agit d'un initialisateur de tableaux
								IF INSTR(UCASE(Buffer_lecture), " A ") > 0 OR INSTR(UCASE(Buffer_lecture), " TO ") > 0 Then
									' Ne rien faire
									
								Else
									' Non c'est une variable utilisateur
									Contenu_Variable = Gest_variables_LIRE(Buffer_lecture, niveau, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
									
								End if
							END IF
							if Contenu_Variable = CPCDOS_INSTANCE._CONTENU_IMPROPABLE Then ' Si la variable n'existe pas
								IF SI_Present = 1 then
									' Si l'exception du SI est present alors on cherche la cause de l'erreur
									IF Instr(Buffer_lecture, CHR(34) & " ") > 0 Then
										' Et si l'erreur ressemble a '%" ' (Pourcent guillemet espace)
										' Alors on saute cette exception
										REM SI_Present = 0 
										' Et on reporte cette "soit disant" variable introuvable
										' pour la reecrire a la suite
										Contenu_Variable = Buffer_lecture
										Position_DEBUT = Position_FIN
									else
										Message_erreur = ERRAVT("AVT_008", 0)
										DEBUG("[CpcdosC+] CCP_Rempl_VAR() " & Message_erreur & " " & CHR(34) & "%" & Buffer_lecture & "%" & CHR(34) & ". (LEVEL:" & niveau & " KRNL_ID:" & Auth_Kernel & " OS:" & Auth_OS & " USER:" & Auth_Utilisateur & " PID:" & Auth_PID & " TID:" & Auth_TID & ") CleID:" & _CLE_ & " [&B" & Bin(_CLE_, 36) & "] -> 0x" & hex(_CLE_, 10), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
										CCP_Rempl_VAR = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
										SORTIR_SectionCritique()
										Exit function
									End if
								End if
								IF SI_Present = 0 Then
									Message_erreur = ERRAVT("AVT_008", 0)
									DEBUG("[CpcdosC+] CCP_Rempl_VAR() " & Message_erreur & " " & CHR(34) & "%" & Buffer_lecture & "%" & CHR(34) & ". (LEVEL:" & niveau & " KRNL_ID:" & Auth_Kernel & " OS:" & Auth_OS & " USER:" & Auth_Utilisateur & " PID:" & Auth_PID & " TID:" & Auth_TID & ") CleID:" & _CLE_ & " [&B" & Bin(_CLE_, 36) & "] -> 0x" & hex(_CLE_, 10), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR)
									CCP_Rempl_VAR = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
									SORTIR_SectionCritique()
									Exit function
								End if
								
							end if
							IF Contenu_Variable = "\#NULL" Then
								Buffer_COPIE = Partie1 & Partie2 ' Concatenation
							Else
								' fprintf(STDOUT, "\nAVANT\n")
								' fprintf(STDOUT, "P1:0x%p P2:0x%p P3:0x%p\n", strptr(Partie1), strptr(Contenu_Variable), strptr(Partie2))
								' fprintf(STDOUT, "P1:%s P2:%s P3:%s\n", strptr(Partie1), strptr(Contenu_Variable), strptr(Partie2))
								' fflush(STDOUT)
								
								' if strptr(Partie1) = null Then Partie1 = chr(0)
								' if strptr(Contenu_Variable) = null Then Contenu_Variable = chr(0)
								' if strptr(Partie2) = null Then Partie2 = chr(0)
								' Buffer_COPIE = ""
								' Buffer_COPIE = chr(0)
								
								' fprintf(STDOUT, "\nAPRES\n")
								' fprintf(STDOUT, "P1:0x%p P2:0x%p P3:0x%p\n", strptr(Partie1), strptr(Contenu_Variable), strptr(Partie2))
								' fprintf(STDOUT, "P1:%s P2:%s P3:%s\n", strptr(Partie1), strptr(Contenu_Variable), strptr(Partie2))
								' fflush(STDOUT)
								
								' DEBUG(" ****** Partie1 & Contenu_Variable & Partie2:" & Partie1 & "+" & Contenu_Variable & "+" & Partie2 & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
								Buffer_COPIE = Partie1 & Contenu_Variable & Partie2 ' Concatenation
								
								' DEBUG(" ****** P1:" & Buffer_COPIE & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
							End if
							' Position_FIN = Position_FIN + LEN(Contenu_Variable) ' On se recalibre
						End if
						Buffer_lecture = ""
						if Autoriser_Reformatage = 1 then
							Position_DEBUT = 0 'Ce TRUC LA QUI M'A FAIT CHIER PENDANT 32h!!!
						End if
						Position_FIN = 0
					end if
				end if
			End if
			SlashParam = 0
		else
			if SlashParam = 1 then SlashParam = 0
			if SlashParam = 2 then SlashParam = 1
		end if
	Wend
	' DEBUG(" ****** Buffer_COPIE FINAL:" & Buffer_COPIE & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	Function = Buffer_COPIE
	SORTIR_SectionCritique()
End function

Function _SHELL_Cpcdos_OSx__.Gest_variables_ENREG (Nom_Var as string, donnees as string, niveau as integer, _CLE_ as double) as integer

	Dim Auth_Kernel				as uinteger = CPCDOS_INSTANCE.get_id_kernel		(_CLE_)
	Dim Auth_OS					as uinteger = CPCDOS_INSTANCE.get_id_OS			(_CLE_)
	Dim Auth_Utilisateur		as uinteger = CPCDOS_INSTANCE.get_id_Utilisateur(_CLE_)
	Dim Auth_PID				as uinteger = CPCDOS_INSTANCE.get_id_PID		(_CLE_)
	Dim Auth_TID				as uinteger = CPCDOS_INSTANCE.get_id_TID		(_CLE_)

	
	function = Gest_variables_ENREG (Nom_Var, donnees, niveau, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
End function

Function _SHELL_Cpcdos_OSx__.Gest_variables_ENREG (Nom_Var as string, donnees as string, niveau as integer, Auth_Kernel as uinteger, Auth_OS as uinteger, Auth_Utilisateur as uinteger, Auth_PID as uinteger, Auth_TID as uinteger) as integer
	' Cette fonction permet d'enregistrer dans la memoire une variable avec une donnee et un niveau
	' Nom 			= Nom de la variablea creer / modifier
	' donnees		= Contenu a transmettre dans la memoire
	' niveau		= Niveau a attribuer
	' Auth_	= Cle d'authentification binaire pour le flux d'attribution des donnees
	'		Retourne l'index de la variable cree/modifie

	Dim Verifier_Existence 	as integer = 0
	Dim Index_A_Enregistrer as integer = 0
	Dim Resultat 			as double  = 0
	dim Nom 				as string

	' Mettre en majuscules
	Nom_Var = UCASE(Nom_Var)

	' Verifier sa presence et renvoyer le niveau + index du tableau
	Resultat = Gest_variables_Verif (Nom_Var, 0, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID) ' Verifier l'existence. REMARQUE : 0 a la place de niveau pour chercher de 5 -> 1

	' on extrait les deux informations
	Verifier_Existence = int(Resultat)

	' Verifier sa presence
	IF Verifier_Existence > 0 then
		' On extrait le niveau
		niveau = (Resultat - Verifier_Existence) * 10^2

		' Si la variable existe alors on reetulise la meme index
		Index_A_Enregistrer = Verifier_Existence
	ELSE
		' Si elle existe pas, on cherche un emplacement libre
		Index_A_Enregistrer = Gest_variables_Libre(niveau)
	END IF
	
	' Si l'index est plus grand que le precedent, on memorise la plus grande
	if this.MEMOIRE_CCP.INDEX_Max(niveau) < Index_A_Enregistrer Then this.MEMOIRE_CCP.INDEX_Max(niveau) = Index_A_Enregistrer

	' On genere la cle binaire kernel, os, user, PID finale avec le nom de variable qui correspond
	Nom = UCASE(STR(Bin(Auth_Kernel, 4)) & STR(Bin(Auth_OS, 4)) & STR(Bin(Auth_Utilisateur, 8)) & STR(Bin(Auth_PID, 8)) & STR(Bin(Auth_TID, 12))) & "<-" & UCASE(Nom_Var) ' Variables automatiquement mises en majuscules

	' Une fois qu'on a la future emplacement, on enregistre!
	IF niveau = 1 Then ' 	 >>>> niveau Procedure/fonctions
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Index_A_Enregistrer) = Nom
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer) = donnees
	ELSEIF niveau = 2 Then ' >>>> Niveau Application
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Index_A_Enregistrer) = Nom
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_Donnees(Index_A_Enregistrer) = donnees
	ELSEIF niveau = 3 Then ' >>>> Niveau utilisateur
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Index_A_Enregistrer) = Nom
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_Donnees(Index_A_Enregistrer) = donnees
	ELSEIF niveau = 4 Then ' >>>> Niveau systeme d'exploitation
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Index_A_Enregistrer) = Nom
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_Donnees(Index_A_Enregistrer) = donnees
	ELSEIF niveau = 5 Then ' >>>> Niveau Kernel
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Index_A_Enregistrer) = Nom
		this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_Donnees(Index_A_Enregistrer) = donnees
	ELSE
		' Si le niveau est pas communique, alors la il y a un gros bug dans la gestion de la memoire RAM
		'  pas chercher plus loin, redemarrer la machine!
		Dim Message_erreur as string = ERRAVT("ERR_011", 0)
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[CpcdosC+] " & Message_erreur & " Gest_variables_ENREG() : Niveau CCP non trouve. Redemarrez votre machine", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[CpcdosC+] " & Message_erreur & " Gest_variables_ENREG() : CCP level not found. Please restart your computer.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if
		
	END IF

	' On retourne 1 = OK!
	Gest_variables_ENREG = Index_A_Enregistrer
End Function

Function _SHELL_Cpcdos_OSx__.CCP_Lire_Variable(Nom as string, niveau as integer, _CLE_ as double) as string
	' Cette fonction permet de lire le contenu d'une variable de niveau choisis
	' Nom		= Nom de la variable
	'  Retourne le contenu de la variable
	
	
	Dim Auth_Kernel				as uinteger = CPCDOS_INSTANCE.get_id_kernel		(_CLE_)
	Dim Auth_OS					as uinteger = CPCDOS_INSTANCE.get_id_OS			(_CLE_)
	Dim Auth_Utilisateur		as uinteger = CPCDOS_INSTANCE.get_id_Utilisateur(_CLE_)
	Dim Auth_PID				as uinteger = CPCDOS_INSTANCE.get_id_PID		(_CLE_)
	Dim Auth_TID				as uinteger = CPCDOS_INSTANCE.get_id_TID		(_CLE_)
	
	CCP_Lire_Variable = Gest_variables_LIRE(UCASE(Nom), niveau, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
End Function

Function _SHELL_Cpcdos_OSx__.Gest_variables_LIRE (Nom as string, niveau as integer, Auth_Kernel as uinteger, Auth_OS as uinteger, Auth_Utilisateur as uinteger, Auth_PID as uinteger, Auth_TID as uinteger) as string
	' Cette fonction permet de lire le contenu d'une variable en fonction de son niveau
	' Nom 			= Nom de la variable a lire
	' niveau		= Niveau actuel de la variable
	'		Retourne le contenu de la variable
	
	dim displ_debug as boolean = false
	if Nom = "CPC_SYS.NET.USERAGENT" Then displ_debug = true
	
	Dim Verifier_Existence 			as Integer
	
	Dim B_niveau 					as integer
	Dim Cle_Auth_Recup_Kernel 		as uinteger
	Dim Cle_Auth_Recup_OS 			as uinteger
	Dim Cle_Auth_Recup_Utilisateur 	as uinteger
	Dim Cle_Auth_Recup_PID 			as uinteger
	Dim Cle_Auth_Recup_TID 			as uinteger
	
	Dim ResultatVR 					as double
	
	Dim Retour 						as string

	' Nom de variable mise en majuscules
	Nom = UCASE(Nom)
	
	
	' ====================== TABLEAU ======================
	' Si c'est un tableau et ce qui a entre les parentheses n'est pas un chiffres
	'  mais une varaible, alors on remplace ce nom de variable par son contenu
	Dim PremiereParenthese as integer = INSTR(Nom, "[")
	
	IF PremiereParenthese > 0 Then
		Dim DeuxiemeParenthese as integer = INSTRREV(Nom, "]")
		' Si la première parenthese '(' est bien avant la deuxieme ')'
		if PremiereParenthese < DeuxiemeParenthese Then 
			Dim Variable_a_Chercher as String
			Dim Resultat_RechercheVariable as String
			
			' Recuperer le nom
			Variable_a_Chercher = MID(Nom, PremiereParenthese + 1, (DeuxiemeParenthese) - (PremiereParenthese + 1))

			' C'est pas une valeur
			IF NOT STR(VAL(Variable_a_Chercher)) = Variable_a_Chercher Then

				' Rechercher le contenu de la variable
				Resultat_RechercheVariable = Gest_variables_LIRE(Variable_a_Chercher, niveau, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
				
				' Si la variable n'existe pas
				if Resultat_RechercheVariable = CPCDOS_INSTANCE._CONTENU_IMPROPABLE Then 
					Dim Message_erreur as String = ERRAVT("AVT_008", 0)
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[CpcdosC+] " & Message_erreur & " Le tableau " & CHR(34) & "%" & Nom & "%" & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
					Else
						DEBUG("[CpcdosC+] " & Message_erreur & " The array " & CHR(34) & "%" & Nom & "%" & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
					End if
					' Variable introuvable
					Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
					SORTIR_SectionCritique()
					exit function
				Else
					' Si elle existe, on remplace le contenu des parentheses
					Nom = MID(Nom, 1, PremiereParenthese) & Resultat_RechercheVariable & MID(Nom, DeuxiemeParenthese)
				End if
			End if
		Else
			Dim Message_erreur as String = ERRAVT("AVT_073", 0)
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[AVT_073]:" & Message_erreur & " votre nom de variable '" & Nom & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			Else
				DEBUG("[AVT_073]:" & Message_erreur & " your variable name '" & Nom & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			End if
			Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
			SORTIR_SectionCritique()
			exit function
		End if
	End if

	' ====================== FIN TABLEAU ======================

	
	
	' Teste la presence de la variable qui nous renvoie le niveau + l'index du tableau
	ResultatVR = Gest_variables_Verif (Nom, 0, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
	
	
	' on extrait les deux informations
	Verifier_Existence = int(ResultatVR)
	
	
	
	' On teste son existence
	if Verifier_Existence > 0 then
		' Recuperation du niveau de la variable
		B_niveau = (ResultatVR - Verifier_Existence) * 10^2
	else
		' Variable introuvable
		Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
		SORTIR_SectionCritique()
		exit function
	end if
	

	
	' Le niveau est en dessous de cette actuelle, C'EST PRIVE ! Donc on quitte
	if Niveau > B_niveau then Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE : SORTIR_SectionCritique() : exit function
	

	' On recupere le numero d'identification du kernel vis a vis du flux de donnees utilisateur
	' Ce qui permettera d'eviter les "interferences entre les variables CpcdosC+"
	IF B_niveau = 1 Then ' 	 >>>> niveau Procedure/fonctions (Dans l'application)
		IF Verifier_Existence > 0 then
			Retour = this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Verifier_Existence)
			Cle_Auth_Recup_Kernel = CPCDOS_INSTANCE.get_id_kernel(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_OS = CPCDOS_INSTANCE.get_id_OS(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_Utilisateur = CPCDOS_INSTANCE.get_id_Utilisateur(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_PID = CPCDOS_INSTANCE.get_id_PID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_TID = CPCDOS_INSTANCE.get_id_TID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Verifier_Existence), "<-")-1)))
				niveau = 1
		END IF
	ELSEIF B_niveau = 2 Then ' >>>> Niveau Application
		IF Verifier_Existence > 0 then
			Retour = this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_Donnees(Verifier_Existence)
			Cle_Auth_Recup_Kernel = CPCDOS_INSTANCE.get_id_kernel(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_OS = CPCDOS_INSTANCE.get_id_OS(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_Utilisateur = CPCDOS_INSTANCE.get_id_Utilisateur(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_PID = CPCDOS_INSTANCE.get_id_PID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_TID = CPCDOS_INSTANCE.get_id_TID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Verifier_Existence), "<-")-1)))
				niveau = 2
		END IF
	ELSEIF B_niveau = 3 Then ' >>>> Niveau utilisateur
		IF Verifier_Existence > 0 then
			Retour = this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_Donnees(Verifier_Existence)
			Cle_Auth_Recup_Kernel = CPCDOS_INSTANCE.get_id_kernel(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_OS = CPCDOS_INSTANCE.get_id_OS(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_Utilisateur = CPCDOS_INSTANCE.get_id_Utilisateur(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_PID 			= 0
			Cle_Auth_Recup_TID			= 0
			'Cle_Auth_Recup_PID = GET_Auth_PID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom _
			'	(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Verifier_Existence), "<-")-1)))
			niveau = 3
		END IF
	ELSEIF B_niveau = 4 Then ' >>>> Niveau systeme d'exploitation
		IF Verifier_Existence > 0 then
			Retour = this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_Donnees(Verifier_Existence)
			Cle_Auth_Recup_Kernel = CPCDOS_INSTANCE.get_id_kernel(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_OS = CPCDOS_INSTANCE.get_id_OS(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_Utilisateur 	= 0
			Cle_Auth_Recup_PID 			= 0
			Cle_Auth_Recup_TID			= 0
			'Cle_Auth_Recup_Utilisateur = GET_Auth_Utilisateur(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom _
			'	(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Verifier_Existence), "<-")-1)))
			'Cle_Auth_Recup_PID = GET_Auth_PID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom _
			'	(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Verifier_Existence), "<-")-1)))
			niveau = 4
		END IF
	ELSEIF B_niveau = 5 Then ' >>>> Niveau Kernel
		IF Verifier_Existence > 0 then
			Retour = this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_Donnees(Verifier_Existence)
			Cle_Auth_Recup_Kernel = CPCDOS_INSTANCE.get_id_kernel(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom _
				(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Verifier_Existence), "<-")-1)))
			Cle_Auth_Recup_OS 			= 0
			Cle_Auth_Recup_Utilisateur 	= 0
			Cle_Auth_Recup_PID 			= 0
			Cle_Auth_Recup_TID			= 0
			'Cle_Auth_Recup_OS = GET_Auth_OS(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom _
			'	(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Verifier_Existence), "<-")-1)))
			'Cle_Auth_Recup_Utilisateur = GET_Auth_Utilisateur(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom _
			'	(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Verifier_Existence), "<-")-1)))
			'Cle_Auth_Recup_PID = GET_Auth_PID(val("&B" & MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom _
			'	(Verifier_Existence), 1, instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Verifier_Existence), "<-")-1)))
			niveau = 5
		END IF
	END IF
	
	IF Verifier_Existence > 0 Then
		' temporaire! On fait un test conditionnel pour savoir si les deux cles d'authenficication obtenues
		' correspondent au processus
		' niveau 5
		
		IF niveau = 5 Then Gest_variables_LIRE = Retour : SORTIR_SectionCritique() : Exit function
		IF Cle_Auth_Recup_Kernel = Auth_Kernel Then ' Le kernel est autorise
			' niveau 4
			IF niveau = 4 Then Gest_variables_LIRE = Retour : SORTIR_SectionCritique() : Exit function
			IF Cle_Auth_Recup_OS = Auth_OS Then ' L'OS est autorise
				' niveau 3
				IF niveau = 3 Then Gest_variables_LIRE = Retour : SORTIR_SectionCritique() : Exit function
				IF Cle_Auth_Recup_Utilisateur = Auth_Utilisateur Then ' L'utilisateur est autorise
					' Niveau 2
					IF niveau = 2 Then Gest_variables_LIRE = Retour : SORTIR_SectionCritique() : Exit function
					IF Cle_Auth_Recup_PID = Auth_PID Then ' L'application / processus est autorise
						' OK ! niveau 1
						if Cle_Auth_Recup_TID = Auth_TID Then Gest_variables_LIRE = Retour : SORTIR_SectionCritique() : Exit function
					Else
						Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
					End if
				Else
					Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
				End if
			Else
				Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
			End if
		Else
			Gest_variables_LIRE = CPCDOS_INSTANCE._CONTENU_IMPROPABLE
		End if
	End if
	
	SORTIR_SectionCritique()
	
	' Fin de la fonction
End Function

Function _SHELL_Cpcdos_OSx__.Gest_variables_Suppr (Nom as string, niveau as integer, Auth_Kernel as uinteger, Auth_OS as uinteger, Auth_Utilisateur as uinteger, Auth_PID as uinteger, Auth_TID as uinteger) as integer
	' Cette fonction permet de supprimer de la memoire, une variable specifie
	' Nom 			= Nom de la variable a supprimer
	' niveau		= Niveau actuel de la variable
	'		Retourne 1:OK 0:Introuvable
	
	ENTRER_SectionCritique()
	
	Nom = UCASE(Nom) ' Variables automatiquement mises en majuscules
	Dim Index_A_Enregistrer 	as integer = 0
	Dim Etat_Enregistrement 	as integer = 0
	Dim Verifier_Existence 		as integer
	Dim boucle 					as integer = 0
	
	
	IF Nom = "" then
		If niveau = 0 then
			Gest_variables_Suppr = 0
			For boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			
				' Si l'index est superieur aux nombres de variables memorises on quitte
				if boucle > this.MEMOIRE_CCP.INDEX_Max(1) Then exit for
				
				IF Instr(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(boucle), STR(Bin(Auth_PID)) & "<-") > 0 THEN
					this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(boucle) = "" ' On efface la variable du processus
					Gest_variables_Suppr = 1
				End if
			Next boucle
			SORTIR_SectionCritique()
			Exit function
		End if
	End if
	
	Index_A_Enregistrer = int(Gest_variables_Verif (Nom, niveau, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)) ' Verifier l'existence

	IF Index_A_Enregistrer > 0 then
		' Une fois qu'on a l'emplacement, on efface! (selon le niveau)
		IF niveau = 1 Then ' 	 >>>> niveau Procedure/fonctions
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer) = ""
			Etat_Enregistrement = 1
		ELSEIF niveau = 2 Then ' >>>> Niveau Application
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_Donnees(Index_A_Enregistrer) = ""
			Etat_Enregistrement = 1
		ELSEIF niveau = 3 Then ' >>>> Niveau utilisateur
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_Donnees(Index_A_Enregistrer) = ""
			Etat_Enregistrement = 1
		ELSEIF niveau = 4 Then ' >>>> Niveau systeme d'exploitation
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_Donnees(Index_A_Enregistrer) = ""
			Etat_Enregistrement = 1
		ELSEIF niveau = 5 Then ' >>>> Niveau Kernel
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_Donnees(Index_A_Enregistrer) = ""
			Etat_Enregistrement = 1
		END IF
		' Retourne le numero d'index trouve (>0 = trouve!)
		Gest_variables_Suppr = 1
	ELSE
		' Sinon on renvoie (0 = Introuvable)
		Gest_variables_Suppr = 0
	END IF
	
	SORTIR_SectionCritique()
End Function

Function _SHELL_Cpcdos_OSx__.Gest_variables_GrapNIV (Nom as string, niveau as integer, niveauDEST as integer, Auth_Kernel as uinteger, Auth_OS as uinteger, Auth_Utilisateur as uinteger, Auth_PID as uinteger, Auth_TID as uinteger) as integer
	' Cette fonction permet de changer le niveau d'une variable
	' Nom 			= Nom de la variable
	' niveau		= Niveau actuel de la variable
	' niveau DEST 	= Niveau destination de la variable
	'		Retourne l'index du nouveau niveau
	
	ENTRER_SectionCritique()

	Nom = UCASE(Nom) ' Variables automatiquement mises en majuscules
	Dim ResultatVR as double
	Dim Verifier_Existence as integer, Index_A_Enregistrer as integer
	ResultatVR = int(Gest_variables_Verif (Nom, niveau, Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)) ' Verifier l'existence
	' on extrait les deux informations
	Verifier_Existence = int(ResultatVR)
	if Verifier_Existence > 0 then niveau = (ResultatVR - Verifier_Existence) * 10^2
	REM if niveau > 4 then Verifier_Existence = Verifier_Existence - 1

	IF Verifier_Existence > 0 then
		' Si la variable existe alors on reetulise la meme index
		Index_A_Enregistrer = Verifier_Existence
		' Une fois qu'on a l'emplacement, on efface! (selon le niveau)
		IF niveau = 1 Then ' 	 >>>> niveau Procedure/fonctions
			Gest_variables_GrapNIV = Gest_variables_ENREG (this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Index_A_Enregistrer), _
										this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer), niveauDEST, _
										Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer) = ""
		ELSEIF niveau = 2 Then ' >>>> Niveau Application
			Gest_variables_GrapNIV = Gest_variables_ENREG (this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Index_A_Enregistrer), _
										this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer), niveauDEST, _
										Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_Donnees(Index_A_Enregistrer) = ""
		ELSEIF niveau = 3 Then ' >>>> Niveau utilisateur
			Gest_variables_GrapNIV = Gest_variables_ENREG (this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Index_A_Enregistrer), _
										this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer), niveauDEST, _
										Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_Donnees(Index_A_Enregistrer) = ""
		ELSEIF niveau = 4 Then ' >>>> Niveau systeme d'exploitation
			Gest_variables_GrapNIV = Gest_variables_ENREG (this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Index_A_Enregistrer), _
										this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer), niveauDEST, _
										Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_Donnees(Index_A_Enregistrer) = ""
		ELSEIF niveau = 5 Then ' >>>> Niveau Kernel
			Gest_variables_GrapNIV = Gest_variables_ENREG (this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Index_A_Enregistrer), _
										this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_Donnees(Index_A_Enregistrer), niveauDEST, _
										Auth_Kernel, Auth_OS, Auth_Utilisateur, Auth_PID, Auth_TID)
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Index_A_Enregistrer) = ""
			this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_Donnees(Index_A_Enregistrer) = ""
		END IF
	ELSE
		' Sinon on renvoie (0 = Introuvable)
		Gest_variables_GrapNIV = 0
	END IF
	
	SORTIR_SectionCritique()
End Function


Function _SHELL_Cpcdos_OSx__.Gest_variables_Verif (Nom_verif as string, niveau as integer, Auth_Kernel as uinteger, Auth_OS as uinteger, Auth_Utilisateur as uinteger, Auth_PID as uinteger, Auth_TID as uinteger) as double
	' Cette fonction permet de verifier si la variable specifiee existe 1 ou pas 0
	' Nom		= Nom de la variable a chercher
	' niveau	= Niveau ou se trouve la variable
	' PID_CCP	= PID
	' 		Retourne 1:Variable existe 0:N'existe pas

	' Optimisation possible au lieu de de faire le tour avec "MEMOIRE_CCP.CpcdosCP_Variable_MAXI"
	'  faire le tour de boucle avec une variable qui cherche la valeur MAX entregistre

	ENTRER_SectionCritique()

	
	dim Boucle 			as integer = 0
	dim Index_trouve 	as integer = 0

	' Concatenation de la cle binaire
	dim Nom 			as string = UCASE(STR(Bin(Auth_Kernel, 4)) & STR(Bin(Auth_OS, 4)) & STR(Bin(Auth_Utilisateur, 8)) & STR(Bin(Auth_PID, 8)) & STR(Bin(Auth_TID, 12)) & "<-" & UCASE(Nom_verif)) ' Variables automatiquement mises en majuscules
	Dim Nom2 			as string = Nom


	' DEBUG("****** A CHERCHER : " & Nom2 & ".",  CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	for niveau2 as integer = 0 to 5
		
		niveau = (5 - niveau2)
		Nom2 = Nom

		IF niveau = 1 Then ' 	 >>>> niveau Procedure/fonctions
			
			For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			
				' Si l'index est superieur aux nombres de variables memorises on quitte
				if Boucle > this.MEMOIRE_CCP.INDEX_Max(niveau) Then exit for
				
				IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Boucle) = Nom2 then
					Index_trouve = Boucle
					exit for
				END IF
			Next Boucle
		ELSEIF niveau = 2 Then ' >>>> Niveau Application
			For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
				
				' Si l'index est superieur aux nombres de variables memorises on quitte
				if Boucle > this.MEMOIRE_CCP.INDEX_Max(niveau) Then exit for
				
				IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Boucle) = Nom2 then
					Index_trouve = Boucle
					exit for
				END IF
			Next Boucle
		ELSEIF niveau = 3 Then ' >>>> Niveau utilisateur
			Nom2 = UCASE(MID(Nom, 1, 16) & MID(Nom, 37)) ' On capture les 12 premiers bits et les derniers apres 28bits
			For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI ' On capture les 12 premiers bits et les 16 derniers
			
				' Si l'index est superieur aux nombres de variables memorises on quitte
				if Boucle > this.MEMOIRE_CCP.INDEX_Max(niveau) Then exit for
			
				IF UCASE(MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Boucle), 1, 16) _
						& MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Boucle), 37)) = Nom2 then
					Index_trouve = Boucle
					exit for
				END IF
			Next Boucle
		ELSEIF niveau = 4 Then ' >>>> Niveau systeme d'exploitation
			Nom2 = UCASE(MID(Nom, 1, 8) & MID(Nom, 37)) ' On capture les 8 premiers bits et les 16 derniers
			For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI ' On capture les 8 premiers bits et les 16 derniers
				
				
				' Si l'index est superieur aux nombres de variables memorises on quitte
				if Boucle > this.MEMOIRE_CCP.INDEX_Max(niveau) Then exit for
			
				IF UCASE(MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Boucle), 1, 8) _
						& MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Boucle), 37)) = Nom2 then
					Index_trouve = Boucle
					exit for
				END IF
			Next Boucle
		ELSEIF niveau = 5 Then ' >>>> Niveau Kernel
			Nom2 = UCASE(MID(Nom, 1, 4) & MID(Nom, 37))' On capture les 4 premiers bits et les 16 derniers
			For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI ' On capture les 4 premiers bits et les 16 derniers
			
				' Si l'index est superieur aux nombres de variables memorises on quitte
				if Boucle > this.MEMOIRE_CCP.INDEX_Max(niveau) Then exit for
			
				IF UCASE(MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Boucle), 1, 4) _
						& MID(this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Boucle), 37)) = Nom2 then
					Index_trouve = Boucle
					exit for
				END IF
			Next Boucle
		END IF
		
		' si il a ete trouve
		If Index_trouve > 0 then exit for
	Next niveau2
	
	' On empile 2 informations grace a une petite algo
	Gest_variables_Verif = Index_trouve + (niveau * 10^(-2))
	' Retourne le numero d'index sinon il retourne 0
	
	SORTIR_SectionCritique()
	
End Function

Function _SHELL_Cpcdos_OSx__.Gest_variables_Libre (niveau as integer) as integer
	' Cette fonction permet de chercher un emplacement memoire libre pour acceuillir
	' Une simple et pauvre petite variable toute perdue ! ;-)
	' Niveau		= Niveau a chercher
	'		Retourne l'index libre
	
	ENTRER_SectionCritique()

	Dim boucle 			as integer
	dim Index_trouve 	as integer = 0

	IF niveau = 1 Then ' 	 >>>> niveau Procedure/fonctions
		For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau1_nom(Boucle) = "" then
				Index_trouve = Boucle
				exit for
			END IF
		Next Boucle
	ELSEIF niveau = 2 Then ' >>>> Niveau Application
		For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau2_nom(Boucle) = "" then
				Index_trouve = Boucle
				exit for
			END IF
		Next Boucle
	ELSEIF niveau = 3 Then ' >>>> Niveau utilisateur
		For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau3_nom(Boucle) = "" then
				Index_trouve = Boucle
				exit for
			END IF
		Next Boucle
	ELSEIF niveau = 4 Then ' >>>> Niveau systeme d'exploitation
		For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau4_nom(Boucle) = "" then
				Index_trouve = Boucle
				exit for
			END IF
		Next Boucle
	ELSEIF niveau = 5 Then ' >>>> Niveau Kernel
		For Boucle = 1 to this.MEMOIRE_CCP.CpcdosCP_Variable_MAXI
			IF this.MEMOIRE_CCP.CpcdosCP_Variable_Niveau5_nom(Boucle) = "" then
				Index_trouve = Boucle
				exit for
			END IF
		Next Boucle
	END IF

	' Retourne le numero d'index sinon il retourne 0
	Gest_variables_Libre = Index_trouve
	
	SORTIR_SectionCritique()
End Function


