' Contient des fonctions et variables concernant 
' le systeme de Cpcdos

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 11-MAR-2020

' 18-JAN-2021	: Ajout de Lister_Drives()
' 10-MAR-2020	: Correction de AllouerString() - Viol memoire, depassement 1 octet
' 15-10-2018	: Refonte 2.1 beta 1.1
' 22-11-2017	: AJOUT des attributs de fichier, d'independances de DOS
' 21-11-2017	: AJOUT de la fonction lister_Repertoire()
' 18-05-2017	: Corrections de Zlib, et de Charger_PNG.
' 08-05-2017	: Ajout des arguments d'identifictions dans le _STRUCT_THREAD_Cpcdos_OSx__
' 22-03-2017	: Ajout des fonctions get_Cons_X et Y
' 17-02-2017	: Support PNG

#print
#print ============ SYSTEME ==============

#include once "Cpcdos.bi"	' Declaration/Fonctions communs


Constructor _SYSTEME_Cpcdos_OSx__()
	DEBUG(" * Instanciation des fonctions systeme --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets", 1, 1, 2, 0, 0, 1, 0, "")
End Constructor

Destructor _SYSTEME_Cpcdos_OSx__()
	DEBUG(" * De-instanciation des fonctions systeme --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
	
	'Lancer un arret du systeme
	IF CX_APM_MODE > 0 Then
		InterfaceAPM.signal_systeme(CX_APM_MODE)
	End if
End Destructor



#print * Allocations et memoire
Function _SYSTEME_Cpcdos_OSx__.AllouerString(ByRef texte as String) as Zstring ptr
	' Permet d'allouer de la memoire pour ZString et ajouter les donnees
	if texte = "" Then texte = " "
	Dim tmp_alloc as Zstring ptr = Allocate(this.TailleString(texte))
	 *tmp_alloc = texte ' & chr(0) ' S'il y a un caractere bizarre, reduire la position de -1 le '0'

	return tmp_alloc
End function

Function _SYSTEME_Cpcdos_OSx__.DesAllouerString(ByRef Pointeur as ZString ptr) as integer
	' Permet d'allouer de la memoire pour ZString et ajouter les donnees
	if Pointeur <> 0 Then
		' Deallocate(Pointeur)
		Deallocate(cptr(any ptr, Pointeur))
		Function = 0
	else
		Function = 1
	End if
End function


Function _SYSTEME_Cpcdos_OSx__.DesAllouerString(ByRef Pointeur as CONST ZString ptr) as integer
	' Permet d'allouer de la memoire pour ZString et ajouter les donnees
	if Pointeur <> 0 Then
		' Deallocate(@Pointeur)
		Deallocate(cptr(any ptr, Pointeur))
		Function = 0
	else
		Function = 1
	End if
End function

Function _SYSTEME_Cpcdos_OSx__.AllouerString_0(ByRef Taille as uinteger) as Zstring ptr
	' Permet d'allouer de la memoire pour ZString
	' Dim tmp_alloc as Zstring ptr = CAllocate(1, Taille)
	' Dim tmp_alloc as Zstring ptr= CAllocate(Taille)
	return CAllocate(Taille)
	' return tmp_alloc
End function

Function _SYSTEME_Cpcdos_OSx__.TailleString(ByRef Texte as string) as integer
	' Permet de calculer la taille d'une variable String
	' avec la taille deja definie
	Dim Resultat as integer
	Dim Taille as integer
	For Boucle as integer = 1 to Len(Texte)
		Resultat = (255 AND ASC(Texte, Boucle))
		IF Resultat <> 0 Then Taille += 1
	Next Boucle
	Function = Taille
End function

Sub _SYSTEME_Cpcdos_OSx__.Update_memoire()
	' Permet de mettre a jour les attributs statiques contenant la memoire utilisee et restante

	ENTRER_SectionCritique()
	
	_Memoire_actuel = get_Memoire_libre(CPCDOS_INSTANCE._OCTETS)
	_Memoire__krnl_occupe = _Memoire_Libre_Depart - _Memoire_actuel
	
	' Memoire libre en %
	_Memoire_LIBRE_Pourcent = (_Memoire_actuel / _Memoire_Libre_Depart) * 100
	
	' En cas de depassements
	IF _Memoire_LIBRE_Pourcent > 100 Then _Memoire_LIBRE_Pourcent = 100
	IF _Memoire_LIBRE_Pourcent < 0 Then _Memoire_LIBRE_Pourcent = 0
	
	' Memoire utilisee en %
	_Memoire_UTIL_Pourcent = (_Memoire__krnl_occupe / _Memoire_Libre_Depart) * 100
	
	' En cas de depassements
	IF _Memoire_UTIL_Pourcent > 100 Then _Memoire_UTIL_Pourcent = 100
	IF _Memoire_UTIL_Pourcent < 0 Then _Memoire_UTIL_Pourcent = 0
	
	SORTIR_SectionCritique()
End sub	


Function _SYSTEME_Cpcdos_OSx__.get_cpu_pourcent() as uinteger

	CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpu_pourcentage = abs(100-(cpinti.gestionnaire_tache.get_cycle_cpu() / cpinti.gestionnaire_tache.get_cycle_MAX_cpu()) * 100)
	
	Function = CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpu_pourcentage
End function


Function _SYSTEME_Cpcdos_OSx__.get_Memoire_libre(Unite as integer) as uinteger
	' Permet de renvoyer la memoire restante en octets
	' _OCTETS		= 0
	' _KILO_OCTETS	= 1
	' _MEGA_OCTETS	= 2
	' _GIGA_OCTETS	= 3
	' _TERA_OCTETS	= 4
	
	Function = fre / Unite
	
End Function


#print * Debug
Function _SYSTEME_Cpcdos_OSx__.get_DBG_DEBUG() as integer
	' Permet d'obtenir l'etat actuel du debogeur
	Function = this.DBG_DEBUG
End function

Sub _SYSTEME_Cpcdos_OSx__.set_DBG_DEBUG(etat as integer)
	' Permet de definir l'etat actuel du debogeur
	if CPCDOS_INSTANCE.LOGGER_AU_DEMARRAGE = true then etat = 2
	this.DBG_DEBUG = etat
End Sub

Function _SYSTEME_Cpcdos_OSx__.get_CPINTI_DEBUG() as integer
	' Permet d'obtenir l'etat actuel du debogeur
	Function = this.DBG_CPINTI
End function

Sub _SYSTEME_Cpcdos_OSx__.set_CPINTI_DEBUG(etat as integer)
	' Permet de definir l'etat actuel du debogeur
	if CPCDOS_INSTANCE.LOGGER_AU_DEMARRAGE = true then etat = 1
	this.DBG_CPINTI = etat
	cpinti_dbg.debug_mode(etat)
End Sub

Function _SYSTEME_Cpcdos_OSx__.get_CPINTI_FD_DEBUG() as integer
	' Permet d'obtenir l'etat actuel du debogeur
	Function = this.DBG_CPINTI_DATE
End function

Sub _SYSTEME_Cpcdos_OSx__.set_CPINTI_FD_DEBUG(etat as integer)
	' Permet de definir l'etat actuel du debogeur
	this.DBG_CPINTI_DATE = etat
End Sub

Function _SYSTEME_Cpcdos_OSx__.get_PRINTF_DEBUG() as integer
	' Permet d'obtenir l'etat actuel du debogeur
	Function = this.DBG_PRINTF
End function

Sub _SYSTEME_Cpcdos_OSx__.set_PRINTF_DEBUG(etat as integer)
	' Permet de definir l'etat actuel du debogeur
	this.DBG_PRINTF = etat
End Sub

#print * Horloge RTC
Function _SYSTEME_Cpcdos_OSx__.Convert_DCB_Binaire(Byval Valeur As Ubyte) As Ubyte
    Function = (Valeur Shr 4) * 10  + (Valeur And &h0F)
End Function

Sub _SYSTEME_Cpcdos_OSx__.get_RTC()
	ENTRER_SectionCritique()
	' Cette fonction permet de syncroniser l'heure de maniere treeeees precise!
	' Remerciement a Richard (forum FreeBasic)
    Do

		' Recuperer les informations depuis le BIOS

        Out &h70, &h80 ' Secondes
        this.sys_Secondes = Convert_DCB_Binaire(Inp(&h71))
        Out &h70, &h82 ' Minutes
        this.sys_Minutes = Convert_DCB_Binaire(Inp(&h71))
        Out &h70, &h84 ' Heures
        this.sys_Heures = Convert_DCB_Binaire(Inp(&h71))
        Out &h70, &h86 ' Numero semaine
        this.sys_Semaine = Convert_DCB_Binaire(Inp(&h71))
        Out &h70, &h87 ' Jour
        this.sys_Jour = Convert_DCB_Binaire(Inp(&h71))
        Out &h70, &h88 ' Mois
        this.sys_Mois = Convert_DCB_Binaire(Inp(&h71))
        Out &h70, &h89 ' Annee
        this.sys_Annee = Convert_DCB_Binaire(Inp(&h71))
		Out &h70, &hB2 ' Siecle
		this.sys_Siecle = Convert_DCB_Binaire(Inp(&h71))
        
		Out &h70, &h80  ' Verifier si les secondes change au court de la lecture
		' C'est pour eviter de lire en pleine modifications/calculs dans les registre
		'  car on peut avoir 8:60 au lieu de 9:00
		
    Loop While this.sys_Secondes <> Convert_DCB_Binaire(Inp(&h71))
	
	SORTIR_SectionCritique()
End Sub

Function _SYSTEME_Cpcdos_OSx__.get_Time() as integer ' Depuis 1970
	function =  cint(TIMER)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Millisecondes() as integer
	function =  cint(this.sys_Millisecondes)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Secondes() as integer
	function =  cint(this.sys_Secondes)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Minutes() as integer
	function =  cint(this.sys_Minutes)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Heures() as integer
	function =  cint(this.sys_Heures)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Semaine() as string ' Numero du jour de la semaine
	function =  CPCDOS_INSTANCE.TYPES_INSTANCE._RTC_Nom_Jour(this.sys_Semaine)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Jour() as integer
	function =  cint(this.sys_Jour)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Mois() as integer
	function =  cint(this.sys_Mois)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Annee() as integer
	function =  cint(this.sys_Annee)
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Siecle() as integer
	function =  cint(this.sys_Siecle)
End Function

#print * Contexte executif
Function _SYSTEME_Cpcdos_OSx__.get_ExeEnCours(ARG as integer) as String
	' Permet de retourner le repertoire de:
	
	if ARG = 0 then
		function = COMMAND(0) ' Repertoire complet du noyau en cours
	elseif ARG = 1 then
		function = Exepath() ' Repertoire du noyau en cous
	elseif ARG = 2 then
		function = Curdir() ' Repertoire en cours
	elseif ARG = 3 then
		function = Curdir() ' Repertoire "virtuel" en cours  /**** A FINIR !!!!!****/
	else
		function = COMMAND(0) ' Noyau en cours
	end if	
End Function


#print * Resolution d ecran
Function _SYSTEME_Cpcdos_OSx__.test_Resolution(Res_X as integer, Res_Y as integer, Bits as integer) as boolean' Overloaded
	' Tester la compatibilite d'une resolution d'ecran
	
	function = test_Resolution(Res_X & "x" & Res_Y, Bits)
End function

Function _SYSTEME_Cpcdos_OSx__.test_Resolution(ByVal Resolution as String, Bits as integer) as boolean
	' Cette fonction permet de tester la compatibilitee d'une resolution d'ecran sur le systeme
	' Resolution		= Resolution texte brute du type "llllxhhhh"
	' BitsParPixels		= Bits (16, 24, 32)
	'  Retourne		1 = OK
	'				2 = Resolution non supporte
	'				3 = Bits non supporte
	'				4 = Erreur inconnu
	
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Test de l'existence de " & LCASE(Resolution) & "x" & Bits & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		Else
			DEBUG("[SYSTEM] Testing existence of " & LCASE(Resolution) & "x" & Bits & "...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		End if
	End if
	
	' Verifier son existence en comparant la liste generee et la resolution demandee
	IF Instr(UCASE(liste_Resolution(Bits)), UCASE(Resolution)) > 0 Then
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] " & LCASE(Resolution) & "x" & Bits & " support‚e par votre carte graphique!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
			Else
				DEBUG("[SYSTEM] " & LCASE(Resolution) & "x" & Bits & " supported by your graphic card!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
			End if
		End if
		
		function = TRUE ' Resolution supportee
		
	Else
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] " & LCASE(Resolution) & "x" & Bits & " N'EST PAS support‚e par votre carte graphique!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
			Else
				DEBUG("[SYSTEM] " & LCASE(Resolution) & "x" & Bits & " IS NOT supported by your graphic card!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
			End if
		End if
		
		function = FALSE ' Resolution non supportee
	End if

End function

Function _SYSTEME_Cpcdos_OSx__.liste_Resolution(Bits as integer) as String
	' Cette fonction permet de lister les resolution compatibles au Bits de la carte graphique
	' BitsParPixels		= Bits (16, 24, 32)
	'  Retourne		Une liste de resolutions dont le bit est compatible
	
	Dim ModeBpp 	as integer = ScreenList(Bits)
	Dim Retour 		as String
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Listage des resolutions d'ecran en " & Bits & " bits", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
		Else
			DEBUG("[SYSTEM] Listing screen resolutions in " & Bits & " bits", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		End if
	End if
	
	' Accmuler toutes les resolutions 1 par 1
	While (ModeBpp <> 0)
		Retour = Retour & HiWord(ModeBpp) & "x" & LoWord(ModeBpp) & " "
		ModeBpp = ScreenList()
	Wend
	
	Function = Retour
End Function

Function _SYSTEME_Cpcdos_OSx__.set_Resolution(ModeSCR as integer) as boolean
	' Cette fonction permet d'appliquer une nouvelle resolution d'ecran en console
	' ModeSCR 	0 : Console par defaut
	
	
	if CPCDOS_INSTANCE.Thread_BootScreen > 0 Then
		ENTRER_SectionCritique()
		Dim Resolution as String = UCASE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("cpc_sys.boot.bootscreen.scr_res"	, 5, CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE))
		Dim Res_X as integer = Val(MID(Resolution, 1, instr(Resolution, "X")-1))
		Dim Res_Y as integer = Val(MID(Resolution, instr(Resolution, "X")+1))
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_Resolution(Res_X, Res_Y, CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels())
		SORTIR_SectionCritique()
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Boot screen : pas de changements '" & ModeSCR & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
			Else
				DEBUG("[SYSTEM] Boot screen : No changing '" & ModeSCR & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
			End if
		End if	
		Function = FALSE
		exit function
	End if
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mode console '" & ModeSCR & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
		Else
			DEBUG("[SYSTEM] Console mode '" & ModeSCR & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		End if
	End if

	' Veerifier si le changement est interdit
	if CPCDOS_INSTANCE.NOGUI = FALSE Then
	
		' Stopper le sheduler du kernel
		ENTRER_SectionCritique()

		
		' Changer la resolution
		Screen ModeSCR
		
		' Blanc sur fond noir par defaut normalement ;)
		Color CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_FOND_caractere 
		
		' Definir le flag
		Function = TRUE
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
		End if
		
		' Masquer le curseur FB
		Setmouse(0, 0, 0)

		' Et le curseur Custom
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_AFFICHER = false
		
		
		this.ModeResolution = ModeSCR
		
		' Relancer le sheduler du kernel
		SORTIR_SectionCritique()
		
	Else
		' EN MODE DEBUG UNIQUEMENT

		CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = FALSE
		CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Vous etes en mode NOGUI, la resolution d'ecran n'a donc pas ete appliquee, mais validee !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
		Else
			DEBUG("[SYSTEM] You are in NOGUI mode, screen resolution has no applied, but validated!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		End if
	End if
	
	' Obligatoirement mis en mode console
	CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = FALSE
	
	
	' Mettre a jour les informations d'affichage
	update_InformationEcran()
	
End Function
Function _SYSTEME_Cpcdos_OSx__.set_Resolution(Res_X as integer, Res_Y as integer, Bits as integer) as boolean
	' Cette fonction permet d'appliquer une nouvelle resolution d'ecran
	'	Res_X = Largeur X
	'	Res_Y = Hauteur Y
	'	Bits  = Nombre de bits par pixels (Bits)
	' 	Retourne TRUE:OK  FALSE:Probleme
	
	' Pour le moment, se contenter du CRT0 de FreeBasic (DOS)
	
	if CPCDOS_INSTANCE.Thread_BootScreen > 0 Then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Boot screen : pas de changements '" & Res_X & "x" & Res_Y & "x" & Bits & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
			Else
				DEBUG("[SYSTEM] Boot screen : No changing '" & Res_X & "x" & Res_Y & "x" & Bits & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
			End if
		End if
		Function = FALSE
		exit function
	End if
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Changement en '" & Res_X & "x" & Res_Y & "x" & Bits & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
		Else
			DEBUG("[SYSTEM] Changing to '" & Res_X & "x" & Res_Y & "x" & Bits & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		End if
	End if	
	
	if CPCDOS_INSTANCE.NOGUI = FALSE Then
	
		' Stopper le sheduler du kernel
		ENTRER_SectionCritique()
	
		' Changer de resolution
		Screenres Res_X, Res_Y, Bits, 4
		
		ScreenInfo this.Resolution_X, this.Resolution_Y, this.Bits_Par_Pixels, this.Octets_Par_Pixels, this.Taille_memoire, this.Frequence, this.DriverVideo
		
		
		
		' Correction du 08-11-2017 car le 24bits n'etait jamais affiche
		this.Bits_Par_Pixels = Bits
		this.Octets_Par_Pixels = Bits
		
		' 16-02-2014 IMPORTANT: ICI il faut inserer une CriticalSection()
		
		If get_EcranPTR() <> 0 Then
			' La resolution s'est bien appliquee

			
			' Obligatoirement mis en mode graphique
			CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE
			CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE
			
			Function = TRUE
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				DEBUG("[OK] PTR:[0x" & HEX(get_EcranPTR(), 16) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
			End if
			
			' Afficher le curseur au centre de l'ecran
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.UseFB_Mouse = true Then
				Setmouse(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X / 2, CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y / 2, 1)
			Else
				Setmouse(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X / 2, CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y / 2, 0)
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_AFFICHER = true
			End if
			
		else
			' La resolution ne s'est pas bien appliquee
			Function = FALSE
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[ERREUR]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
				Else
					DEBUG("[ERROR]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
				End if
			End if
		End if
		
		' Relancer le sheduler du kernel
		SORTIR_SectionCritique()
	Else
		' EN MODE DEBUG UNIQUEMENT

		CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = FALSE
		CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Vous etes en mode NOGUI, la resolution d'ecran n'a donc pas ete appliquee, mais validee !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution)
		Else
			DEBUG("[SYSTEM] YOu are un NOGUI mode, screen resolution has no applied, but validated!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
		End if
		
		Function = FALSE
	End if
	
	' Mettre a jour les informations d'affichage
	update_InformationEcran()
	
	' Correction du 08-11-2017 car le 24bits n'etait jamais affiche
	this.Bits_Par_Pixels = Bits
	this.Octets_Par_Pixels = Bits
	
End Function

Function _SYSTEME_Cpcdos_OSx__.update_InformationEcran() as boolean
	' Met a jour les informations d'affichage
	
		
	' RESETer ces valeurs
	this.Resolution_X 		= -1
	this.Resolution_Y 		= -1
	this.CONS_X				= -1
	this.CONS_Y				= -1
	this.Bits_Par_Pixels 	= -1
	this.Taille_memoire 	= -1
	this.Octets_Par_Pixels 	= -1
	this.Taille_memoire		= -1
	this.Frequence			= -1
	this.DriverVideo		= "<Non installe/Not installed>"
	
	' Stocker ces valeurs en RECUPERANT DEPUIS le CRT de FreeBasic afin d'avoir une validation correcte
	ScreenInfo this.Resolution_X, this.Resolution_Y, this.Bits_Par_Pixels, this.Octets_Par_Pixels, this.Taille_memoire, this.Frequence, this.DriverVideo

	this.CONS_X = LoWord(WIDTH)
	this.CONS_Y = HiWord(WIDTH)
	
	Function = true
End Function

Function _SYSTEME_Cpcdos_OSx__.get_EcranDRV() as String
	' Cette fonction permet de recuperer le nom du driver video
	
	Function = this.DriverVideo
End function

Function _SYSTEME_Cpcdos_OSx__.get_EcranMemoire() as Integer
	' Cette fonction permet de recuperer le BPSL de la resolution

	Function = this.Taille_memoire
End function

Function _SYSTEME_Cpcdos_OSx__.get_EcranHZ() as Integer
	' Cette fonction permet de recuperer la frequence en Hertz du moniteur
	
	Function = this.Frequence
End function

Function _SYSTEME_Cpcdos_OSx__.get_EcranPTR() as any ptr
	' Cette fonction permet d'obtenir l'adresse memoire du pointeur video + page video actuel
	
	Function = screenptr
End function

Function _SYSTEME_Cpcdos_OSx__.get_ResolutionMode() as Integer
	' Cette fonction permet d'obtenir le mode de resolution (Console)
	
	Function = this.ModeResolution
End Function


Function _SYSTEME_Cpcdos_OSx__.get_Cons_XY() as String
	' Cette fonction permet d'obtenir la resolution CONSOLE actuel sous la forme de HHHHxVVVV
	
	Function = this.CONS_X & "x" & this.CONS_Y
End function

Function _SYSTEME_Cpcdos_OSx__.get_Cons_X() as Integer
	' Cette fonction permet d'obtenir la resolution CONSOLE actuel HORIZONTALE
	
	Function = this.CONS_X
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Cons_Y() as Integer
	' Cette fonction permet d'obtenir la resolution CONSOLE actuel VERTICALE
	
	Function = this.CONS_Y
End Function


Function _SYSTEME_Cpcdos_OSx__.get_Resolution() as String
	' Cette fonction permet d'obtenir la resolution graphique actuel sous la forme de HHHHxVVVVxBB
	
	Function = this.Resolution_X & "x" & this.Resolution_Y & "x" & this.Bits_Par_Pixels
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Resolution_XY() as String
	' Cette fonction permet d'obtenir la resolution graphique actuel sous la forme de HHHHxVVVV
	
	Function = this.Resolution_X & "x" & this.Resolution_Y
End function

Function _SYSTEME_Cpcdos_OSx__.get_Resolution_X() as Integer
	' Cette fonction permet d'obtenir la resolution graphique actuel HORIZONTALE
	
	Function = this.Resolution_X
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Resolution_Y() as Integer
	' Cette fonction permet d'obtenir la resolution graphique actuel VERTICALE
	
	Function = this.Resolution_Y
End Function

Function _SYSTEME_Cpcdos_OSx__.get_BitsParPixels() as Integer
	' Cette fonction permet d'obtenir la resolution graphique actuel sous la forme de BB
	Function = this.Bits_Par_Pixels
End Function

Function _SYSTEME_Cpcdos_OSx__.get_BitsParPixels(compatibilite_24to32_ as Boolean) as Integer
	' Cette fonction permet d'obtenir la resolution graphique actuel sous la forme de BB
	' compatibilite_24to32_ : Permet la compatibilite avec la fonction CRT0 ImageCreate
	'							En lui indiquant le format de pixels 16 ET 32 bits seulement
	'							24 etant un RGB pour le PNG mais non pour l'affichage
	
	if this.Bits_Par_Pixels = 24 Then 
		if compatibilite_24to32_ = true Then
			Function = 32
		Else
			Function = this.Bits_Par_Pixels
		End if
	Else
		Function = this.Bits_Par_Pixels
	End if
		
End Function

Function _SYSTEME_Cpcdos_OSx__.get_OctetsParPixels() as Integer
	' Cette fonction permet de recuperer le nombre d'octets par pixels
	
	Function = this.Octets_Par_Pixels
End function


Function _SYSTEME_Cpcdos_OSx__.get_FPS(temps_precedent as double, ACU as integer) as integer
	' Cette fonction permet d'obtenir le nombre de FPS entre un temps donne superieur ou egale a 1
	if ((timer) - temps_precedent) >= 1 then
		temps_precedent = (timer)
		Function = ACU ' Envoyer le nombre
	else
		Function = -1 ' Attendre 1 seconde
	end if
End function

#print * Gestion souris
Function _SYSTEME_Cpcdos_OSx__.cpc_GetMouse(byref Pos_X as integer, byref Pos_Y as integer) as integer
	return cpc_GetMouse(Pos_X, Pos_Y, 0, 0, 0)
End function

Function _SYSTEME_Cpcdos_OSx__.cpc_GetMouse(byref Pos_X as integer, byref Pos_Y as integer, byref Scroll_Weel as integer, byref TypeClic as integer, byref clip as integer) as integer
	' Cette fonction permet d'obtenir les informations sur la souris

	If CPCDOS_INSTANCE.SYSTEME_INSTANCE.UseFB_Mouse = false Then
		' Custom FB mouse function   -  by Maeiky 10-MAR-2021
		Dim tmp_Pos_X as integer
		Dim tmp_Pos_Y as integer

		if GetMouse(tmp_Pos_X, tmp_Pos_Y, Scroll_Weel, TypeClic, clip) = 0 Then
			' Getting X, Y screen resolution
			Dim scr_res_X as integer = get_Resolution_X()
			Dim scr_res_Y as integer = get_Resolution_Y()
			
			' Initial mouse position
			static last_X As double = 400
			static last_Y As double = 400

			' static speed As double = 10.0

			static diffX As double = 0
			static diffY As double = 0

			' Speed mouse calc
			static speed_calcX As double = 0
			static speed_calcY As double = 0
			
			diffX = (tmp_Pos_X - last_X)
			diffY = (tmp_Pos_Y - last_Y)
			
			speed_calcX = Abs(diffX)
			speed_calcY = Abs(diffY)
			
			' Calc X speed
			speed_calcX = Mouse_inertia_Speed/speed_calcX
			if speed_calcX < Mouse_max_Speed Then speed_calcX = Mouse_max_Speed
			if speed_calcX > Mouse_min_Speed Then speed_calcX = Mouse_min_Speed
			
			' Calc Y speed
			speed_calcY = Mouse_inertia_Speed/speed_calcY
			if speed_calcY < Mouse_max_Speed Then speed_calcY = Mouse_max_Speed
			if speed_calcY > Mouse_min_Speed Then speed_calcY = Mouse_min_Speed
			
			' Calc X position
			Static pos_mouseX As double = 400
			pos_mouseX += diffX/(speed_calcX + Mouse_constant_Speed)

			' Calc Y position
			Static pos_mouseY As double = 400
			pos_mouseY += diffY/(speed_calcY + Mouse_constant_Speed)

			' Some corrections
			if pos_mouseX < 0 Then pos_mouseX = 0
			if pos_mouseY < 0 Then pos_mouseY = 0
			if pos_mouseX > scr_res_X Then pos_mouseX = scr_res_X
			if pos_mouseY > scr_res_Y Then pos_mouseY = scr_res_Y

			' Send this!
			Pos_X = pos_mouseX
			Pos_Y = pos_mouseY

			' Update mouse position
			Setmouse(last_X, last_Y, 0)

			return 0 ' ok
		else
			return 1 ' nok
		End if

	Else
		' Full Freebasic mouse function
		if GetMouse(Pos_X, Pos_Y, Scroll_Weel, TypeClic, clip) = 0 Then
			return 0 ' ok
		Else
			return 1 ' nok
		End if
	End if
End function


Sub _SYSTEME_Cpcdos_OSx__.ClearKeyboardBuffer()
	' clean buffer
	Dim Flag As Integer
	Dim e As EVENT
	Flag = ScreenEvent(@e)
	While (Flag = -1)
		Flag = ScreenEvent(@e)
		Sleep 1
	Wend
End Sub



#print * Gestion repertoires et fichiers
Function _SYSTEME_Cpcdos_OSx__.creer_Repertoire(ByVal NomDossier as String, Attributs as String) as integer
	' Cette fonction permet de creer les repertoire mais.. intelligement ! Cet a dire qu'il est capable de creer
	' toute l'arborescence ABSOLUE demandee si les dossiers sont manquants ;)
	
	Dim TABLEAU_index								as integer = 1
	Dim TestSLASH 									as integer
	DIM NombreSousRepertoire						as integer = 64
	
	Dim Path_Restant 								as String
	Dim TABLEAU_Dossiers(0 to NombreSousRepertoire) as String
	
	
	' Chercher le dernier '/' et le supprimer
	If MID(NomDossier, LEN(NomDossier)) = "/" Then
		NomDossier = MID(NomDossier, 1, LEN(NomDossier) - 1) ' On supprime le caractere
	End if
	
	' Reformaliser le path correctement
	NomDossier = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(NomDossier, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	
	Path_Restant = NomDossier
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] Creation du repertoire '" & Path_Restant & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	Else
		DEBUG("[SYSTEM] Creating path '" & Path_Restant & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	End if
	
	' Remplir un tableau de dossiers pour les creer
	For Boucle as integer = 1 to NombreSousRepertoire ' Nombre maximum de dossier sinon ca fais beaucoup!
		
		' Tester la presence d'un SLASH
		TestSLASH = INSTR(Path_Restant, "\")
		IF TestSLASH > 0 Then
		
			' un '\' est present, on stocke le premier nom de dossier en accumulant les autres
			if TABLEAU_index = 1 Then
				TABLEAU_Dossiers(TABLEAU_index) = MID(Path_Restant, 1, TestSLASH - 1)
			Else
				TABLEAU_Dossiers(TABLEAU_index) = TABLEAU_Dossiers(TABLEAU_index-1) & "\" & MID(Path_Restant, 1, TestSLASH - 1)
			End if
			
			' incremente le tableau
			TABLEAU_index = TABLEAU_index + 1
			
			' On supprime le dossier incrit
			Path_Restant = MID(Path_Restant, TestSLASH+1)
		Else
		
			' Il n'y en a plus!
			IF TABLEAU_index = 1 Then
				TABLEAU_Dossiers(TABLEAU_index) = Path_Restant ' Pas d'autres dossiers
			Else
				TABLEAU_Dossiers(TABLEAU_index) = TABLEAU_Dossiers(TABLEAU_index - 1) & "\" & Path_Restant ' Concat avec d'autres dossiers
			End if
			Exit for
		End if
	Next boucle
	
	
	
	' On creer les repertoire 1 par 1
	For Boucle as integer = 1 to TABLEAU_index
		if len(TABLEAU_Dossiers(boucle)) > 128 Then
		
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Impossible de creer le repertoire, nom dossier trop long.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[SYSTEM] Unable to create directory, folder name too large", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
			return -1
		end if
		
		if creer_Repertoire__fbcrt(TABLEAU_Dossiers(boucle), Attributs) = false Then
			' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				' DEBUG("[SYSTEME] Impossible de creer le repertoire '" & TABLEAU_Dossiers(boucle) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			' Else
				' DEBUG("[SYSTEM] Unable to create directory '" & TABLEAU_Dossiers(boucle) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			' End if
			Function = -1 ' PROBLEME
		else
			Function = 1
		End if
	Next boucle
	
	Function = 1
End function


Function _SYSTEME_Cpcdos_OSx__.creer_Repertoire__fbcrt(NomDossier as String, Attributs as String) as boolean
	' Cette fonction va creer le repertoire depuis le CRT de FreeBasic
	
	If Mkdir(NomDossier) = 0 Then
		creer_Repertoire__fbcrt = TRUE ' OKAI !
	Else
		creer_Repertoire__fbcrt = FALSE ' Probleme..
	End if
End Function


Function _SYSTEME_Cpcdos_OSx__.lister_Repertoire(RepertoireSource as String, Filtre as String, ByRef instance_FICHIER_DOSSIER as _FICHER_DOSSIER_) as Boolean
	return lister_Repertoire(RepertoireSource, Filtre, instance_FICHIER_DOSSIER, 0)
End function

Function _SYSTEME_Cpcdos_OSx__.lister_Repertoire(RepertoireSource as String, Filtre as String, ByRef instance_FICHIER_DOSSIER as _FICHER_DOSSIER_, jump as integer) as Boolean


	' Cette fonction permet de lister le contenu d'un repertoire 

	Dim retour_attributs 			as UInteger
	Dim NomElement 					as String
	

	
	instance_FICHIER_DOSSIER.path = RepertoireSource

	NomElement = Dir(instance_FICHIER_DOSSIER.path & Filtre, _
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Normal Or _
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Hidden Or _
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_System Or _
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Directory, retour_attributs)

	If NomElement = "" Then 
		instance_FICHIER_DOSSIER.Est_OK = FALSE
	Else
		instance_FICHIER_DOSSIER.Est_OK = TRUE
	End if

	Dim Sauts_ as integer = 0
	ENTRER_SectionCritique()
	Do Until Len(NomElement) = 0 ' Boucle jsuqu'a qu'il n'y a plus d'elements
		' If (NomElement <> ".") And (NomElement <> "..") Then ' Ignorer les "." et ".."

		Sauts_ += 1

		if Sauts_ >= jump Then 
			If (NomElement <> ".") Then ' Ignorer le "." uniquement
		

				' Si le nombre d'elements a memoriser sort de la limite, on arrete
				if instance_FICHIER_DOSSIER.nb_elements >= instance_FICHIER_DOSSIER.nb_MAX_elements then 
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SYSTEME] Trop d'elements, veuillez filtrer.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
					Else
						DEBUG("[SYSTEM] Too much elements, please to filter", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
					End if
					exit do
				End if
				
				' Incrementer le nombre d'elements
				instance_FICHIER_DOSSIER.nb_elements += 1

				
				' Stocker le nom d'element actuel
				instance_FICHIER_DOSSIER.liste_Elements(instance_FICHIER_DOSSIER.nb_elements) = NomElement

				If (retour_attributs And fbDirectory) <> 0 Then
					' S'il s'agit d'un dossier
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).EstUnDossier = True
					instance_FICHIER_DOSSIER.nb_dossiers += 1
					
				Else
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).EstUnDossier = False
					' Autrement il s'agit d'un fichier
					instance_FICHIER_DOSSIER.nb_fichiers += 1

					' Combler le probleme d'affichage des tailles a cause du chemin relatif qui se tranforme comme ceci "\Fichier.cpc"
					Dim FichierACalculer as String = instance_FICHIER_DOSSIER.path & "\" & NomElement
					IF instance_FICHIER_DOSSIER.path = "" Then
						FichierACalculer = NomElement
					End if
					
					' Recuperer la taille du fichier actuel avec son chemin "absolue" mais relatif au repertoire courant
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).taille = CPCDOS_INSTANCE.Taille_Fichier(FichierACalculer)

				End If
				
				instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Nombre = 0
				
				' Normal
				If (retour_attributs And fbNormal ) <> 0 Then 
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Normal 	= True
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Nombre 	+= 1
				End if
				
				' Lecture seule
				If (retour_attributs And fbReadOnly) <> 0 Then 
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_ReadOnly 	= True
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Nombre 	+= 1
				End if
				
				' Cache
				If (retour_attributs And fbHidden  ) <> 0 Then 
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Hidden 	= True
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Nombre 	+= 1
				End if
				
				' Systeme
				If (retour_attributs And fbSystem  ) <> 0 Then 
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_System 	= True
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Nombre 	+= 1
				End if
				
				' Archive
				If (retour_attributs And fbArchive ) <> 0 Then 
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Archive 	= True
					instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).attrib_Nombre 	+= 1
				End if
				
		
			End If
		End if

		' Chercher le prochain nom d'element
		NomElement = Dir(retour_attributs)
	Loop
	SORTIR_SectionCritique()

	Function = instance_FICHIER_DOSSIER.Est_OK
End Function

Function _SYSTEME_Cpcdos_OSx__.Display_all_drives() as boolean
	' Cette fonction permet d'afficher les proprietes de TOUS les lecteurs

	' Afficher tous les lecteurs
	for index as integer = 0 to drives_list.nb_drives

		If Ignore_FLOPPY_A = true Then
			if drives_list.Drives_LETTER(index) = "A" Then continue for
		End if

		If Ignore_FLOPPY_B = true Then
			if drives_list.Drives_LETTER(index) = "B" Then continue for
		End if

		Display_drive(index)

	Next index


	return true
End function

Function _SYSTEME_Cpcdos_OSx__.Display_drive(index as integer) as boolean
	' Cette fonction permet d'afficher les proprietes d'un lecteur

	if index <= drives_list.nb_drives Then

		' Recuperer les informations
		Dim _LETTER 	as string 	= drives_list.Drives_LETTER(index)
		Dim _LABEL 		as string 	= drives_list.Drives_LABEL(index)
		Dim _SYSFILE 	as string 	= drives_list.Drives_SYSFILE(index)
		Dim _SERIAL_No 	as string 	= drives_list.Drives_SERIAL_No(index)
		Dim _SIZE 		as integer	= drives_list.Drives_SIZE(index)
		Dim _FREE_SIZE 	as integer	= drives_list.Drives_FREE_SIZE(index)

		if NOT _LETTER = "" Then
			' Et les afficher
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" --> LECTEUR " & _LETTER & ": '" & _LABEL & "' " & _SYSFILE & " Libre " & cint(_FREE_SIZE/CPCDOS_INSTANCE._GIGA_OCTETS) & "/" & cint(_SIZE/CPCDOS_INSTANCE._MEGA_OCTETS) & " mo - 0x" & lcase(_SERIAL_No), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			Else
				DEBUG(" --> DRIVE " & _LETTER & ": '" & _LABEL & "' " & _SYSFILE & " Free " & cint(_FREE_SIZE/CPCDOS_INSTANCE._GIGA_OCTETS) & "/" & cint(_SIZE/CPCDOS_INSTANCE._MEGA_OCTETS) & " mb - 0x" & lcase(_SERIAL_No), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			End if
			return true
		Else
			return false
		End if


		
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Display_drive() index introuvable", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[SYSTEME] Display_drive() Not found index", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if

		return false
	End if
End function

Function _SYSTEME_Cpcdos_OSx__.Drive_list_to_dir_instance(ByRef instance_FICHIER_DOSSIER as _FICHER_DOSSIER_) as boolean
	' Cette fonction permet de placer la liste des lecteurs dans l'instance d'affichage de dossier/fichier compatible pour l'explorer

	Dim NomElement 	as String
	dim index		as integer = 0

	' if Ignore_FLOPPY_A = true Then index += 1
	' if Ignore_FLOPPY_B = true Then index += 1

	instance_FICHIER_DOSSIER.path = ""
	instance_FICHIER_DOSSIER.Est_OK = true

	' Remettre a zero la liste des elements
	instance_FICHIER_DOSSIER.nb_dossiers = 0
	instance_FICHIER_DOSSIER.nb_elements = 0

	NomElement = "NULL"

	ENTRER_SectionCritique()
	for boucle as integer = 0 to drives_list.nb_drives

		' Recuperer la lettre du lecteur
		NomElement = drives_list.Drives_LETTER(index)


		' S'il n'y a plus d'elements
		if NOT NomElement = "" Then

			' Incrementer le nombre d'elements
			instance_FICHIER_DOSSIER.nb_dossiers += 1
			instance_FICHIER_DOSSIER.nb_elements += 1

			' Ajouter a la liste
			instance_FICHIER_DOSSIER.liste_Elements(instance_FICHIER_DOSSIER.nb_elements) = NomElement & ":\"
			
			' Considerer comme un dossier
			instance_FICHIER_DOSSIER.attributs_Elements(instance_FICHIER_DOSSIER.nb_elements).EstUnDossier = True

			index += 1
			

			' Si le nombre d'elements a memoriser sort de la limite, on arrete
			if instance_FICHIER_DOSSIER.nb_elements >= instance_FICHIER_DOSSIER.nb_MAX_elements then 
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Trop d'elements, veuillez filtrer.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
				Else
					DEBUG("[SYSTEM] Too much elements, please to filter", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR_resolution )
				End if
				exit for
			End if
		End if

	Next boucle
	SORTIR_SectionCritique()

	Function = instance_FICHIER_DOSSIER.Est_OK

End function

Function _SYSTEME_Cpcdos_OSx__.update_drives() as boolean
	' Cette fonction permet de mettre a jour la liste des lecteurs
	' disponibles dans une structure
	
	ENTRER_SectionCritique()

	' Mettre a jour la lettre des lecteurs dispo
	get_Drives()

	' Afficher si les disquettes sont ignores
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		if Ignore_FLOPPY_A = true then
			DEBUG("[SYSTEME] update_drives() Lecteur disquette A: ignore", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if

		if Ignore_FLOPPY_B = true then
			DEBUG("[SYSTEME] update_drives() Lecteur disquette B: ignore", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
	Else
		if Ignore_FLOPPY_A = true then
			DEBUG("[SYSTEME] update_drives() Floppy drive A: ignored", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if

		if Ignore_FLOPPY_B = true then
			DEBUG("[SYSTEME] update_drives() Floppy drive B: ignored", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
	End if

	' Mettre a jour les infos va leur MID
	for index as integer = 0 to drives_list.nb_drives
		If Ignore_FLOPPY_A = true Then
			if drives_list.Drives_LETTER(index) = "A" Then continue for
		End if

		If Ignore_FLOPPY_B = true Then
			if drives_list.Drives_LETTER(index) = "B" Then continue for
		End if

		if NOT drives_list.Drives_LETTER(index) = "" Then
		
			' Update drive size in the cpcdos structure
			get_Size_drive(drives_list.Drives_LETTER(index), index)

			' Update drive MID in the cpcdos structure
			get_MID_drive(drives_list.Drives_LETTER(index), index)
		End if

	Next index

	SORTIR_SectionCritique()

	return true
End function

Function _SYSTEME_Cpcdos_OSx__.get_Drives() as boolean
	' Cette fonction permet de retourner la liste des lecteurs

	' Utilisation du IOCTL (AH:0x44 & AL:0x09)
    ' Si AX = 0Fh, lecteur non valide

	ENTRER_SectionCritique()

    DIM Reg 		as __dpmi_regs
	Dim Lecteur 	as String
	

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] get_Drives() Mise a jour de la liste des lecteurs ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[SYSTEME] get_Drives() Updating drives list ... '", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	' Remettre a zero
	drives_list.nb_drives = 0

    FOR index as byte = 1 TO 26
		
		Dim LectIgnore 	as boolean = false

		' IOCTL --> Device driver control
        Reg.x.AX = &H4409	

		' Lettre du lecteur
        Reg.x.BX = index

		' Interruption DPMI DOS
        __dpmi_int(&H21, @Reg)

		' Verifier si c'est mauvais
        IF (Reg.x.Flags AND 1) THEN continue for

		' Autrement on ajoute a la liste!
        Lecteur = CHR(64 + Reg.x.BX)

		if NOT Lecteur = "" Then
			
			' Ignorer les lecteur disquettes
			if Lecteur = "A" Then
				If Ignore_FLOPPY_A = true Then 
					LectIgnore = true
				end if
			End if

			if Lecteur = "B" Then
				If Ignore_FLOPPY_B = true Then 
					LectIgnore = true
				end if
			End if
			
			' Si c'est une disquette ignoree
			if LectIgnore = true Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" - " & drives_list.nb_drives & " [TROUVE] '" & Lecteur & ":' (ID:" & index & "') semble disponible", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
					DEBUG(" LECTEUR IGNORE", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				Else
					DEBUG(" - " & drives_list.nb_drives & " [FOUND] '" & Lecteur & ":' (ID:" & index & "') seem avaiable", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
					DEBUG(" IGNORED DRIVE", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				End if
			else
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" - " & drives_list.nb_drives & " [TROUVE] '" & Lecteur & ":' (ID:" & index & "') semble disponible", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				Else
					DEBUG(" - " & drives_list.nb_drives & " [FOUND] '" & Lecteur & ":' (ID:" & index & "') seem avaiable", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				End if

				' Ajouter jour 1 par 1
				drives_list.Drives_LETTER(drives_list.nb_drives) = Lecteur
				drives_list.nb_drives += 1
			End if
		End if
    NEXT


	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] get_Drives() " & drives_list.nb_drives & " lecteurs trouves et indexes", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[SYSTEME] get_Drives() " & drives_list.nb_drives & " drives found and indexed", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	SORTIR_SectionCritique()

	' Retourner la liste des lecteurs du PC
    return true
End Function

Function _SYSTEME_Cpcdos_OSx__.get_Size_drive(lettre_lecteur as string, index as integer) as boolean
	' Cette fonction permet de mettre a jour la taile d'un disque

	dim Secteurs_par_Clusters as integer
 	dim Clusters_Disponibles as integer 
	dim Octets_par_Clusters as integer 
	dim Clusters_Totaux as integer 

	Dim numero_lecteur as ushort = asc(lettre_lecteur) - asc("@")

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] get_Size_drive() '" & lettre_lecteur & ":' (id:" & numero_lecteur & ") --> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[SYSTEME] get_Size_drive() '" & lettre_lecteur & ":' (id:" & numero_lecteur & ") --> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	
	asm
		mov dl, [numero_lecteur]
		mov ah, 0x36
		int 0x21
		mov [Secteurs_par_Clusters], ax
		mov [Clusters_Disponibles], bx
		mov [Octets_par_Clusters], cx
		mov [Clusters_Totaux], dx
	end asm

	' Calculer le CHS (Cluster x Head x Sector)
	dim Taille_TOTALE 	as integer = Octets_par_Clusters * Secteurs_par_Clusters * Clusters_Totaux
	dim Taille_LIBRE 	as integer = Octets_par_Clusters * Secteurs_par_Clusters * Clusters_Disponibles

	' Stocker la taille totale
	drives_list.Drives_SIZE(index) = Taille_TOTALE
	drives_list.Drives_FREE_SIZE(index) = Taille_LIBRE

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG(Taille_TOTALE & " octets, dont " & Taille_LIBRE & " octets de libre." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG(Taille_TOTALE & " byte, including " & Taille_LIBRE & " free bytes.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	return true

End function


Function _SYSTEME_Cpcdos_OSx__.get_MID_drive(lettre_lecteur as string, index as integer) as boolean
	' Cette fonction permet de récuperer la structure MID
	' Afin de récuperer les informations d'un lecteur
	' tel que le systeme de fichier, label, numero de serie etc...

	ENTRER_SectionCritique()

	dim memory_bloc 	as integer = int(sizeof(_info_disques)/16)+1 
	dim segment 		as ushort
	Dim selecteur 		as ushort 
	dim drive 			as string
	dim dpmi_register 	as __dpmi_regs 
	dim _mid 			as _info_disques
	Dim num_erreur		as integer

	' Recuperer la lettre du lecteur
	Dim numero_lecteur as ushort = asc(lettre_lecteur) - asc("@")


	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] get_MID_drive() Obtention de la structure MID de '" & lettre_lecteur & ":' (id:" & numero_lecteur & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[SYSTEME] get_MID_drive() Getting MID structure for '" & lettre_lecteur & ":' (id:" & numero_lecteur & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if


	asm
		' Allouer un bloc de memoire pour recevoir les ID des drives
		' Depuis la structure MID

		mov ax, 0x100
		mov bx, [memory_bloc]
		int 0x31
		jc  0f
		mov [segment], ax
		mov [selecteur], dx
	0:
	end asm

	if segment = 0 then 
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] get_MID_drive() Impossible d'allouer de la memoire", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[SYSTEM] get_MID_drive() Unable to allocate memory", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if

		SORTIR_SectionCritique()
		return false
	End if

	
	' Preparer l'interruption en RM
	dpmi_register.x.ax = &h440d       ' API
	dpmi_register.x.bx = numero_lecteur
	dpmi_register.h.ch = 8            ' Categorie du lecteur
	dpmi_register.h.cl = &h66         ' Fonction
	dpmi_register.x.ds = segment      ' RM segment
	dpmi_register.x.dx = 0            ' Offset de depart

	' Executer la structure en rm tout en recuperer la structure MID
	asm
		mov ax, 0x300				' API d'appel RM
		mov bx, 0x21				' Interruption a executer
		xor cx, cx
		lea edi, [dpmi_register]

		' Interruption en mode reel
		int 0x31
		jnc 0f                ' erreur
		' inc DWORD PTR [num_erreur]
	0:
	end asm

	' Erreur lors de la simulation real mode
	if num_erreur then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] get_MID_drive() Impossible d'entrer en mode reel", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[SYSTEM] get_MID_drive() Unable to enter to real mode", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if

		SORTIR_SectionCritique()
		return false
	end if

	'  Media ID erreur
	if dpmi_register.x.flags and 1 then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] get_MID_drive() Erreur du Media ID", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[SYSTEM] get_MID_drive() Media ID error", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if

		SORTIR_SectionCritique()
		return false
	end if

	' Copier la structure MDI
	asm
		push ds
		mov ax, [selecteur]
		mov ds, ax
		xor esi, esi
		lea edi, [_mid]
		mov ecx, 25
		rep movsb
		pop ds
	end asm


	asm
		mov ax, 0x101
		mov dx, [selecteur]
		int 0x31
		jnc 0f
		'inc DWORD PTR [num_erreur]
	0:
	end asm

	' Imposible de liberer un bloc de memoire
	if num_erreur then 
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] get_MID_drive() Impossible de liberer le bloc memoire ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[SYSTEM] get_MID_drive() Unable to free memory bloc", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
	End if

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] get_MID_drive() [OK] - Mise a jour de la stucture depuis les resultats du MID", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("[SYSTEME] get_MID_drive() [OK] - Updating struct from MID results" & lettre_lecteur & ":' (" & index & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	' Ajouter le numero de serie
	drives_list.Drives_SERIAL_No(index) = RTRIM(LTRIM(hex(_mid.serial_number)))

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG(" --> NUMERO DE SERIE '" & drives_list.Drives_SERIAL_No(index) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG(" --> SERIAL NUMBER " & drives_list.Drives_SERIAL_No(index) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	' Ajouter le nom du drive (Drives_LABEL)	
	dim label as string
	for i as integer = 0 to 10
		label &= chr(_mid.volume_label(i))
	next
	drives_list.Drives_LABEL(index) = RTRIM(LTRIM(label))

	DEBUG(" --> LABEL '" & drives_list.Drives_LABEL(index) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	

	' Ajouter le nom du systeme de fichier
	dim sysfile as string
	for i as integer = 0 to 7
		sysfile &= chr(_mid.sysfile_nom(i))
	next
	drives_list.Drives_SYSFILE(index) = RTRIM(LTRIM(sysfile))

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG(" --> SYSTEME DE FICHIER '" & drives_list.Drives_SYSFILE(index) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG(" --> FILE SYSTEM " & drives_list.Drives_SYSFILE(index) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	SORTIR_SectionCritique()

	return true
End function

Function _SYSTEME_Cpcdos_OSx__.check_NomAutorise(byval NomElement as String, PathComplet as boolean, Check_SFN as boolean, SFN as boolean) as String
	' Cette fonction va permettre de corriger les catacteres non autorise par '_'
	'  Check_SFN permet de convertir en SFN seulement si le LFN n'est pas intalle
	'  SFN va permettre de FORCER la conversion
	
	' Si le LFN est desactive, alors on converti le chemin en SFN
	IF Check_SFN = TRUE Then
		' IF PathComplet = FALSE Then
			' if INSTR(NomElement, ".") > 0 Then
				' IF LEN(MID(NomElement, 1, INSTR(NomElement, ".") - 1) > 8 Then
					' ' Si le nom avant le '.' est plus grand que 8 alors on le coupe 2 avant
					' ' On recupere l'extension
					' Dim Extension as String = MID(NomElement, INSTR(NomElement, ".") + 1)
					' ' Couper le nom
					' NomElement = MID(NomElement, 1, INSTR(NomElement, ".") - 3)
					' ' Si l'extension est plus grand que 3 alors on le coupe a 3
					' IF LEN(Extension) > 3 Then Extension = MID(Extension, 1, 3)
				' End if
			' End if
		' End if
	End if
	
	' Si trop grand, on decoupe!
	if len(NomElement) > 250 Then NomElement = Mid(NomElement, 1, 250)

	if INSTR(NomElement, "<") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "<"		, "_")
	if INSTR(NomElement, ">") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, ">"		, "_")
	if INSTR(NomElement, chr(34)) > 0 	Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, chr(34)	, "_")
	if INSTR(NomElement, "|") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "|"		, "_")
	if INSTR(NomElement, "?") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "?"		, "_")
	if INSTR(NomElement, "*") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "*"		, "_")
	
	' S'il s'agit d'un chemin d'acces
	if PathComplet = TRUE Then
		if INSTR(NomElement, "/") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "/"		, "\")
		if INSTR(NomElement, "//") > 0		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "//"		, "\") ' Doublon 
		if INSTR(NomElement, "///") > 0		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "///"		, "\")
		if INSTR(NomElement, "////") > 0		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "////", "\") ' Limite
	Else
		' Ou simplement d'un fichier
		if INSTR(NomElement, "/") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "_"		, "_")
		if INSTR(NomElement, "\") > 0 		Then NomElement = CPCDOS_INSTANCE.remplacer_Caractere(NomElement, "_"		, "_")
	End if
	
	' On renvoie la correction
	Function = NomElement
End Function

Function _SYSTEME_Cpcdos_OSx__.check_NomAutorise(byval NomElement as String, PathComplet as boolean) as boolean
	' Renvoie TRUE pour dire OK le fichier ou le path est correct
	' Revoie FALSE pour dire que non
	
	if INSTR(NomElement, "<") > 0 		Then Function = FALSE : exit Function
	if INSTR(NomElement, ">") > 0 		Then Function = FALSE : exit Function
	if INSTR(NomElement, chr(34)) > 0 	Then Function = FALSE : exit Function
	if INSTR(NomElement, "|") > 0 		Then Function = FALSE : exit Function
	if INSTR(NomElement, "?") > 0 		Then Function = FALSE : exit Function
	if INSTR(NomElement, "*") > 0 		Then Function = FALSE : exit Function
	
	' S'il s'agit d'un chemin d'acces
	if PathComplet = TRUE Then
		if INSTR(NomElement, "/") > 0 		Then Function = FALSE : exit Function
	Else
		' Ou simplement d'un fichier
		if INSTR(NomElement, "/") > 0 		Then Function = FALSE : exit Function
		if INSTR(NomElement, "\") > 0 		Then Function = FALSE : exit Function
	End if

	' OK
	Function = TRUE

End Function

Function _SYSTEME_Cpcdos_OSx__.getHandleType(Numero_Handle as integer) as String
	' Cette fonction permet de chercher a quoi correspond le handle
	' Fenetre, bouton, picturebox, instance....
	' Si retourne "NULL" c'est qu'il existe pas

	' 1111 = bootscreen
	
	' gui font
	'if Numero_Handle = 2222 Then 
		'return "Font"
	'End if

	' Chercher les fenetres
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_FENETRE
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).Identification_Objet.Handle = Numero_Handle Then
			
			Function = "Window(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les boutons
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_BOUTON
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "Button(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les picturebox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_PICTUREBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "PictureBox(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les textbloc
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_TEXTBLOCK
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "TextBloc(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les TextBox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_TEXTBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "TextBox(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les checkbox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_CHECKBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "CheckBox(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les Progressbar
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_PROGRESSBAR
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "ProgressBar(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les exporer
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_EXPLORER
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "Explorer(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	' Chercher les listbox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_LISTBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__LISTBOX(boucle).Identification_Objet.Handle = Numero_Handle Then
		
			Function = "Listbox(" & CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__LISTBOX(boucle).Identification_Objet.Nom & ") #" & Boucle
			
			exit Function
		End if
	Next boucle

	Function = "null"
End Function


Function _SYSTEME_Cpcdos_OSx__.Convert_TTF_to_PNG() as boolean
	' This function allow to convert TTF files to PNG file with Win32 x86 external program (for best performances and compatibilities)

	DEBUG("Load_png_font() : Loading TTF files ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	
	CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("exe/ /win32 KRNL/x86/ttf_gen.exe", CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAIN_CLE, 5, 0, "")

	' Verifier si le font s'est charge ICI

	return true
End function

Function _SYSTEME_Cpcdos_OSx__.Load_TTF_config() as boolean
	' This function allow to load PNG image to memory



	DEBUG("Load_png_font()", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	Dim Position_Debut 	as integer = 1
	Dim Position_FIN 	as integer = 1
	

	DEBUG("Load_png_font() : Loading front list from " & "KRNL\CONFIG\fonts.cfg", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	Dim Buffer_Fichier	as String = CPCDOS_INSTANCE.Lire_fichier_complet("KRNL\CONFIG\fonts.cfg")
	Dim Chaine_Ligne 	as string

	CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_dir = ""
	
	For Nombre_police as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number_MAX
		
		Position_FIN = INSTR(Position_Debut, Buffer_Fichier, CRLF)
		
		if Position_FIN < 1 then Position_FIN = Len(Buffer_Fichier)
		
		' Recuperer la ligne dans le fichier en supprimant le CRLF a la fin
		Chaine_Ligne = Mid(Buffer_Fichier, Position_Debut, Position_FIN - Position_Debut)
		
		if Chaine_Ligne = "" Then Exit for
		
		Position_Debut = Position_FIN + 2
		

		' Media fonts
		if len(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_dir) = 0 AND Nombre_police = 0 Then ' premiere ligne
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_dir = RTRIM(RTRIM(RTRIM(MID(Chaine_Ligne, Instr(Chaine_Ligne, "SRC=") + 4), chr(13)), chr(10)))
			
			
			
			' Ne fait pas partie de la liste
			Nombre_police -= 1
		else
		
			' Recuperer le nom de la police
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) = RTRIM(RTRIM(RTRIM(MID(Chaine_Ligne, 1, Instr(Chaine_Ligne, "=") - 1), chr(13)), chr(10)))

			CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ttf(Nombre_police) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_dir & "\" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) & ".TTF"
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_png(Nombre_police) = "TEMP\FONTS\" &  CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) & ".PNG"
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police) = "TEMP\FONTS\" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) & ".INI"

			' Recuperer la liste des sizes
			Dim Liste_sizes as String = RTRIM(RTRIM(RTRIM(MID(Chaine_Ligne, Instr(Chaine_Ligne, "=") + 1), chr(13)), chr(10)))
			Dim list_sizes_tmp as string = Liste_sizes


			Dim Nombre_STR as String
			dim index_array as integer = 0
			for boucle as integer = 1 to 128
				
				'DEBUG("Load_png_font() : " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

				
				if mid(list_sizes_tmp, boucle, 1) = "," then

					CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, index_array) = val(Nombre_STR)
					

					index_array += 1
					Nombre_STR = ""
				else
					' Si on arrive a la fin
					if mid(list_sizes_tmp, boucle, 1) = "" then
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, index_array) = val(Nombre_STR)
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_nb_sizes(Nombre_police) = index_array

						exit for ' bye bye pelo !
					else
						' On cumule lettre par lettre, par ce que "Chiffres et des Lettres". C'etait pas drole... Mais drole d'emission...
						Nombre_STR = Nombre_STR & mid(list_sizes_tmp, boucle, 1)
					End if
				End if

			next boucle

			' Increment fonts number
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number += 1

			' Display informations about font
			DEBUG("Load_png_font() : Font name : '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			DEBUG("Load_png_font() : Sizes     : '", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			for boucle as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_nb_sizes(Nombre_police)
				DEBUG(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle) & " ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			next boucle
			
			DEBUG("'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

		End if
		
		if Position_FIN = Len(Buffer_Fichier) Then exit for
	Next Nombre_police

	' Fix 
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number -= 1

	dim loaded_ttf_config as boolean = false
	
	' Load INI file by font
	For Nombre_police as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number

		DEBUG("Load_png_font() : Loading fonts configuration from '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	
		for boucle as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_nb_sizes(Nombre_police)
			
			' Read INI values from font file
			dim test as string = CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "width")

			' If this works, we continue ! We put coordinates values by fonts
			if NOT test = "" Then
				' WIDTH
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).width = val(CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "width"))

				' HEIGHT
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).height = val(CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "height"))

				' ORG_X
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).org_x = val(CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "org_x"))

				' ORG_Y
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).org_y = val(CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "org_y"))

				' SIZE_X
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).size_x = val(CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "size_x"))

				' SIZE_Y
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).size_y = val(CPCDOS_INSTANCE.Read_INI_value(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_ini(Nombre_police), "FONT_SIZE_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(Nombre_police, boucle), "size_y"))

				loaded_ttf_config = true
			Else
				' NEXT !
				continue for
			End if

		next boucle

	Next Nombre_police


	if loaded_ttf_config = true Then
		DEBUG("Load_png_font() : TTF font configuration loaded !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		return true
	else
		DEBUG("Load_png_font() : Unable to load TTF font configuration.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
End function

Function _SYSTEME_Cpcdos_OSx__.Load_TTF_Map() as boolean
	' This function allow to load PNG image to memory

	DEBUG("Load_TTF_Map() : Loading TTF bitmap", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	For Nombre_police as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number

		DEBUG("Load_TTF_Map() : Loading converted '" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) & "' font", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

		' Load png bitmap to memory
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_img_id(Nombre_police) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_png(Nombre_police), CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_id_handle)

		if CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_img_id(Nombre_police) = 0 then
			DEBUG("[ERROR] Unable to load FONT map " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_path_png(Nombre_police) & ". Index (" & Nombre_police & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			return false
		else
			DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		end if

	next Nombre_police

	DEBUG("Load_TTF_Map() : Finish!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	return true

	For Nombre_police as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number
		for boucle as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_nb_sizes(Nombre_police)
			DEBUG(" === " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police) & " ===", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			' WIDTH
			DEBUG(" - WIDTH:" 	& CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).width, 	CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			' HEIGHT
			DEBUG(" - HEIGHT:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).height, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			' ORG_X
			DEBUG(" - ORG_X:" 	& CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).org_x, 	CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			' ORG_Y
			DEBUG(" - ORG_Y:" 	& CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).org_y, 	CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			' SIZE_X
			DEBUG(" - SIZE_X:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).size_x, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

			' SIZE_Y
			DEBUG(" - SIZE_Y:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(Nombre_police, boucle).size_y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		next boucle
	Next Nombre_police


	return true
End function

Sub _SYSTEME_Cpcdos_OSx__.font_check_array(byref font_size as integer, byval font_name as string, byref font_name_index as integer)
	' This function allow to convert 
	' --> font_size : value to array index SIZE
	' --> font_name : name to array index NAME

	if font_name_index < 0 then
		if len(font_name) > 0 Then
			For Nombre_police as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number
				if ucase(CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(Nombre_police)) = ucase(font_name) Then
					font_name_index = Nombre_police

					exit for
				end if
			next Nombre_police
		end if
	End if

	' Si pas trouve
	if font_name_index < 0 Then
		DEBUG("font_check_array() : Not found font into memory ! '" & font_name & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		return
	End if

	if font_size > 0 Then
		For Nombre_sizes as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.fonts_number
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_sizes(font_name_index, Nombre_sizes) = font_size Then
				' Mettre a jour la valeur directement dans la reference memoire
				font_size = Nombre_sizes
				exit for
			end if
		next Nombre_sizes
	end if

End sub


sub _SYSTEME_Cpcdos_OSx__.debug_font(police_index as integer, size_index as integer)
	DEBUG(" === " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_name(police_index) & " ===", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	' WIDTH
	DEBUG(" - WIDTH:" 	& CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(police_index, size_index).width, 	CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	' HEIGHT
	DEBUG(" - HEIGHT:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(police_index, size_index).height, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	' ORG_X
	DEBUG(" - ORG_X:" 	& CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(police_index, size_index).org_x, 	CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	' ORG_Y
	DEBUG(" - ORG_Y:" 	& CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(police_index, size_index).org_y, 	CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	' SIZE_X
	DEBUG(" - SIZE_X:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(police_index, size_index).size_x, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

	' SIZE_Y
	DEBUG(" - SIZE_Y:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.font_manager.font_pos(police_index, size_index).size_y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

end sub