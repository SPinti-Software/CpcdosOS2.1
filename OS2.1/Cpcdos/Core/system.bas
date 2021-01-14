' Contient des fonctions et variables concernant 
' le systeme de Cpcdos

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 11-MAR-2020

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
		
		' Masquer le curseur
		Setmouse(0, 0, 0)
		
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
			Setmouse(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X / 2, CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y / 2, 1)
			
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
	return lister_Repertoire(RepertoireSource, Filtre, _FICHER_DOSSIER_, 0)
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
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Directory, retour_attributs) '' Get first file name/attributes, according to supplied file spec and attribute mask
	
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

	Function = "null"
End Function

	
	

