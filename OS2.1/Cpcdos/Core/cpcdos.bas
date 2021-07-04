' Contient des fonctions et variables concernant 
' Cpcdos en general

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 16/10/2018

' 16-10-2018	: Adaptation 2.1 beta 1.1
' 31-10-2017	: AJOUT des LTRIM et RTRIM sur les tabulations, espaces et CR & LF des noms de fichiers/path

#print Spinti Software Cpcdos OSx Cree Pour Concevoir Des OS
#print Par FAVIER Sebastien COPYRIGHT(C)SPINTI SOFTWARE

REM ====================================================
REM Developpe par : SPinti Software - Sebastien FAVIER
REM =====================================================
REM Copyright(C)Spinti Software. SPinti Software(TM)
REM Source protege par les droits d'auteur (Dossier No:J8781B5)
REM =====================================================

#define FBCALL

#include once "Cpcdos.bi"

#print
#print ============ Cpcdos ==============
' **** Instanciations **** 	
Dim SHARED CPCDOS_INSTANCE as __Noyau_Cpcdos_OSx__

' Constructeur prioritaire
Sub __CPCDOSOSX() Constructor 101
	_Memoire_Libre_Depart = fre
	DEBUG(" * Preparation du demarrage des modules du noyau", 1, 1, 15, 0, 0, 1, 0, "")
	print ' Probleme de CR-LF par ce que le module DEBUG n'est pas charge	
		
	LA_DATE = "28/03/95"
	L_HEURE  = "17:23:16"
End sub

' Dernier destructeur 
Sub __END_CPCDOSOSX() Destructor 65535
	DEBUG(" * Dechargement des modules du noyau... [OK]", 1, 1, 6, 0, 0, 1, 0, "")
End sub

Constructor __Noyau_Cpcdos_OSx__()
	DEBUG(" * Instanciation du noyau Cpcdos --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets", 1, 1, 2, 0, 0, 1, 0, "")
End Constructor

Destructor __Noyau_Cpcdos_OSx__()
	DEBUG(" * De-instanciation du noyau Cpcdos --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
End Destructor

Constructor _TYPES_Cpcdos_OSx__()
	DEBUG(" * Instanciation des Types --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets ", 1, 1, 2, 0, 0, 1, 0, "")
	' intro()
End Constructor

Destructor _TYPES_Cpcdos_OSx__()
	' CPCDOS_INSTANCE.CPINTI_INSTANCE->destructor()
	DEBUG(" * De-instanciation des Types --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
End Destructor


function nearbyint (byval x as double) as double
	' Wrapper de compatibilite
	nearbyint = rint(x)
End function

#print * Generateurs d identifiants numeriques et Authentifications
Sub __Noyau_Cpcdos_OSx__.Generer_id_kernel()
	' Cette fonction permet de generer un ID_KERNEL unique entre 1000 et 9999
	'  qui servira pour autentification de base du systeme via l'instance en cours
	' Ce qui permet aussi l'instance propre de plusieurs simultanes ;)
	
	this.ID_KERNEL = int(Generer_RND(1, 15))
End sub

Function __Noyau_Cpcdos_OSx__.Generer_cle_NIV_1(id_Kernel as uinteger, id_OS as uinteger, id_Util as uinteger) as double
		' Generer une cle finale de niveau 1 (Kernel, OS, Utilisateur)
		Dim kernel 	as String 	= STR(BIN(id_Kernel, 4)) 	' 4 bits
		Dim os 		as String 	= STR(BIN(id_OS	, 4)) 		' 4 bits
		Dim User 	as String 	= STR(BIN(id_Util	, 8)) 	' 8 bits

		return Val("&B" & kernel & os & User) ' assembler les bits + convertir en decimal double
End Function

Function __Noyau_Cpcdos_OSx__.Generer_cle_NIV_2(id_PID as uinteger, id_TID as uinteger) as double
		' Generer une cle finale de niveau 1 (Kernel, OS, Utilisateur)
		Dim pid 	as String 	= STR(BIN(id_PID	, 8)) 		' 8 bits
		Dim tid 	as String 	= STR(BIN(id_TID	, 12)) 	' 12 bits
		
		return Val("&B" & pid & tid) ' assembler les bits + convertir en decimal double
End Function

Function __Noyau_Cpcdos_OSx__.Generer_cle_ASM(CLE_NIV_1 as double, CLE_NIV_2 as double) as double
		' Generer une cle finale de niveau 1 (Kernel, OS, Utilisateur)
		Dim cle_1 	as String 	= STR(Bin(CLE_NIV_1)) 	' 16 bits
		Dim cle_2 	as String 	= STR(Bin(CLE_NIV_2)) 	' 20 bits
		
		return Val("&B" & cle_1 & cle_2) ' assembler les bits + convertir en decimal double
End Function

Function __Noyau_Cpcdos_OSx__.Generer_cle(id_Kernel as uinteger, id_OS as uinteger, id_Util as uinteger, id_PID as uinteger, id_TID as uinteger) as double
		' Generer une cle finale de niveau 1 (Kernel, OS, Utilisateur)
		Dim kernel 	as String 	= STR(BIN(id_Kernel	, 4)) 	' 4 bits
		Dim os 		as String 	= STR(BIN(id_OS		, 4)) 	' 4 bits
		Dim User 	as String 	= STR(BIN(id_Util	, 8)) 	' 8 bits
	
		Dim pid 	as String 	= STR(BIN(id_PID	, 8)) 	' 8 bits
		Dim tid 	as String 	= STR(BIN(id_TID	, 12)) 	' 12 bits
		
		return Val("&B" & kernel & os & User & pid & tid) ' Assembler les bits + convertir en decimal double
End Function

Function __Noyau_Cpcdos_OSx__.get_id_kernel() as uinteger
	' Cette fonction importante, permet de retourner le numero d'identification du kernel
	'  genere precedement
	
	get_id_kernel = this.ID_KERNEL
End Function

Function __Noyau_Cpcdos_OSx__.get_id_kernel(CLE as double) as uinteger
	' Extraire le numero ID du kernel

	get_id_kernel = Val("&B" & MID(STR(Bin(CLE, 36)), 1, 4))
End Function

Function __Noyau_Cpcdos_OSx__.get_id_OS() as uinteger
	' Extraire le numero ID de l'OS
	get_id_OS = this.ID_OS
End Function

Function __Noyau_Cpcdos_OSx__.get_id_OS(CLE as double) as uinteger
	' Extraire le numero ID de l'OS
	get_id_OS = Val("&B" & MID(STR(Bin(CLE, 36)), 5, 4))
End Function

Function __Noyau_Cpcdos_OSx__.get_id_Utilisateur() as uinteger
	' Extraire le numero ID de l'USER
	get_id_Utilisateur = this.ID_UTIL
End Function

Function __Noyau_Cpcdos_OSx__.get_id_Utilisateur(CLE as double) as uinteger
	' Extraire le numero ID de l'USER
	get_id_Utilisateur = Val("&B" & MID(STR(Bin(CLE, 36)), 9, 8))
End Function

Function __Noyau_Cpcdos_OSx__.get_id_PID(CLE as double) as uinteger
	' Extraire le numero ID du processus
	get_id_PID = Val("&B" & MID(STR(Bin(CLE, 36)), 17, 8))
End Function

Function __Noyau_Cpcdos_OSx__.get_id_TID(CLE as double) as uinteger
	' Extraire le numero ID du Thread
	get_id_TID = Val("&B" & MID(STR(Bin(CLE, 36)), 25, 12))
End Function


Function __Noyau_Cpcdos_OSx__.Generer_RND(Debut as double, Fin as double) as double
	' Cette fonction permet de generer un nombre aleratoire sur une intervalle personnalisee

	Function = RND() * (Fin - Debut) + Debut
End function

#print * Indicateur de charge
Function __Noyau_Cpcdos_OSx__.get_En_Charge() as boolean
	if CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK > 0 Then 
		Function = true
	else
		Function = false
	End if
End Function

Sub __Noyau_Cpcdos_OSx__.En_Charge(oui as boolean)
	' Ce qui permet d'indiquer qu'un module est en charge
	' pour ameliorer la repartition des taches et aussi afficher le sablier

	
	if oui = true Then 
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK += 1
		
	else
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK -= 1
		
	End if

	if CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode Then
		' Forcer le blittage uniquement s'il y a 1 ou 0 en load
		if CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK = 0 OR CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK = 1 Then
			CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video()
		End if
	End if
	
	if CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK < 0 Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK = 0
End sub

#print * Processus
Function __Noyau_Cpcdos_OSx__.Creer_processus(ByRef _STRUCT_PROCESSUS as _STRUCT_PROCESSUS_Cpcdos_OSx__) as uinteger
	' Cette focntion permet de creer un processus vierge, sans threads
	'	NomProcessus	: Nom du processus	
	' Retourne le numero de PID du processus (Genere par CPinti Core)

	ENTRER_SectionCritique()
	_STRUCT_PROCESSUS.Nom = ucase(MID(_STRUCT_PROCESSUS.Nom, 1, 30))
	
	' Dim NomProcessus_CHAR as CONST ZString PTR = 

	' 
	_STRUCT_PROCESSUS.PROC_ID  = cpinti.gestionnaire_tache.cpinti_creer_processus(get_id_kernel(), _STRUCT_PROCESSUS.OS_ID, _STRUCT_PROCESSUS.USER_ID, _
																					_STRUCT_PROCESSUS.PROC_ID_PARENT, strptr(_STRUCT_PROCESSUS.Nom))
	Function = _STRUCT_PROCESSUS.PROC_ID
	
	SORTIR_SectionCritique()
end Function


Function __Noyau_Cpcdos_OSx__.Fermer_processus(PID as uinteger) as boolean
	' Cette fonction permet de fermer un processus et ses threads associes
	'	PID		: Numero de PID du processus

	
	'
	' Fermer completement le processus et ses threads associes + nettoyage memoire
	Function = cpinti.gestionnaire_tache.cpinti_arreter_processus(get_id_kernel(), PID)
	
End function

Function __Noyau_Cpcdos_OSx__.Gerer_processus(PID as uinteger, Action as integer) as integer
	' Cette fonction permet de changer l'etat du processus
	'	PID		: Numero de PID du processus
	'	Action	:
	' 		__EN_EXECUTION 	= 83 	' 0x53
	' 		__EN_PAUSE 		= 101 	' 0x65
	' 		__EN_ATTENTE 	= 98 	' 0x62
	' 		__EN_ARRET 		= 70	' 0x46
	
	' Envoyer la requete a CPinti Core et retourner le resultat
	' Gerer_processus = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_gerer_processus(get_id_kernel(), PID, Action)
	Function = 0
	
End function

#print * Thread structure execution template
public function EXEC_THREAD cdecl Alias "EXEC_THREAD"(byval arg as any ptr) as any ptr
	' Fonction "template" principal pour executer les threads
	
	
	On local Error Goto Intercept_Error
	
	' Bloquer toutes les interruptions
	ENTRER_SectionCritique()
	
	' Resultats d'execution
	Dim Resultats as Integer
	
	' Declarer la forme du thread
	Dim Thread_execution as Function(Argument as _STRUCT_THREAD_Cpcdos_OSx__) as integer
	
	' Convertir les arguments en tableau structure de thread
	dim thread_struct as _STRUCT_THREAD_Cpcdos_OSx__ = *cptr(_STRUCT_THREAD_Cpcdos_OSx__ ptr, arg)
	
	' Afficher les informations
	DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("[THREAD #" & thread_struct.THREAD_ID & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(" ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("Execution", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(")._eip        : '0x" & hex(cuint(thread_struct.Fonction), 8) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(")._esp        : '0x" & hex(cuint(thread_struct.esp), 8) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(")._stack      : '0x" & hex(cuint(thread_struct.stack), 8) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(").Nom         : '" & thread_struct.Nom 			& "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(").PROC_ID     : '" & thread_struct.PROC_ID 		& "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(").OS_ID       : '" & thread_struct.OS_ID 		& "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(").USER_ID     : '" & thread_struct.USER_ID 		& "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG(" * (", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("0x" & hex(varptr(thread_struct)), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(").THREAD_ID   : '" & thread_struct.THREAD_ID 	& "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

	' NE rien executer si la structure est vide!
	if thread_struct.PROC_ID = 0 AND thread_struct.USER_ID = 0 AND thread_struct.OS_ID = 0 Then
		DEBUG("[ERROR] Structure thread vide!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	else
		' Definir le point d'entre
		Thread_execution = thread_struct.Fonction
		
		' Autoriser les interruptions
		SORTIR_SectionCritique()
		
		
		
		' ================================================
		' ===== Executer le thread jusqu'a son arret =====
		

		Resultats = Thread_execution(thread_struct)
		
		
		' ================================================
		' ================================================
		
		
		
		' Bloquer toutes les interruptions
		ENTRER_SectionCritique()
	end if
	
	' Afficher les informations a l'ecran
	DEBUG("", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG("[THREAD #" & thread_struct.THREAD_ID & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(" a retourne le code '" & Resultats & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(" ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(" Fin d'execution du thread, nettoyage memoire", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	DEBUG(" ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	' Autoriser les interruptions
	SORTIR_SectionCritique()
	
	' Fermer le thread
	CPCDOS_INSTANCE.Fin_Thread(thread_struct.PROC_ID, thread_struct.THREAD_ID)
	
	
	return 0
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End function

#print * Threads



Function __Noyau_Cpcdos_OSx__.Creer_thread(byref _STRUCT_THREAD as _STRUCT_THREAD_Cpcdos_OSx__) as uinteger
	' Cette fonction permet de creer un nouveau thread DANS un processus specifie
	'	NomThread	: Nom du thread
	'	PID			: PID du processus parent (hebergeur)
	' 	Fonction	: Adresse memoire DEBUT de la fonction
	' _ARG_1,2,3,4	: Arguments pour le thread
	
	' Renvoie le numero TID du thread corrrespondant au processus

	_STRUCT_THREAD.Nom = ucase(MID(_STRUCT_THREAD.Nom, 1, 29)) & chr(0)

	_STRUCT_THREAD.THREAD_ID  = cpinti.gestionnaire_tache.cpinti_creer_thread(get_id_kernel(), _STRUCT_THREAD.OS_ID, _STRUCT_THREAD.USER_ID, _STRUCT_THREAD.PROC_ID, strptr(_STRUCT_THREAD.Nom), _STRUCT_THREAD.Priorite, _
				ProcPtr(EXEC_THREAD), _STRUCT_THREAD.ARG_CP, cuint(VarPtr(_STRUCT_THREAD)))
	
	
	
	Function = _STRUCT_THREAD.THREAD_ID

End Function

sub ptr_Update_TID(adresse as uinteger, TID as uinteger) 
	' Cette fonction permet de mettre a jour le TID dans l'adresse memoire avant que le thread soit execute
	*cptr(_STRUCT_THREAD_Cpcdos_OSx__ ptr, cptr(any ptr, adresse)).THREAD_ID = TID
	
End sub

Function __Noyau_Cpcdos_OSx__.Fermer_thread(PID as uinteger, TID as uinteger, force as boolean) as integer
	' Cette fonction permet de fermer un thread associe a un processus (envoie un signal)
	'	PID		: Numero PID du processus
	'	TID		: Numero TID du thread
	
	function  = cpinti.gestionnaire_tache.cpinti_arreter_thread(1, PID, TID, force)
End Function

Function __Noyau_Cpcdos_OSx__.Fin_Thread(PID as uinteger, TID as uinteger) as integer

	' Cette fonction permet de finaliser l'execution d'un thread
	'	PID		: Numero PID du processus
	'	TID		: Numero TID du thread
	
	function  = cpinti.gestionnaire_tache.cpinti_fin_thread(1, PID, TID)
End Function


Function __Noyau_Cpcdos_OSx__.get_NombreThreads() as uinteger
	' Cette fonction permet de fermer un thread associe a un processus (envoie un signal)
	'	PID		: Numero PID du processus
	'	TID		: Numero TID du thread
	
	function = cpinti.gestionnaire_tache.cpinti_get_nombre_threads()
End Function


Function __Noyau_Cpcdos_OSx__.Gerer_thread(PID as uinteger, TID as uinteger, Action as integer) as integer
	' Cette fonction permet de gerer les threads
	'	PID		: Numero PID du processus
	'	TID		: Numero TID du thread
	'	Action	:
	' 		__EN_EXECUTION 	= 83 	' 0x53
	' 		__EN_PAUSE 		= 101 	' 0x65
	' 		__EN_ATTENTE 	= 98 	' 0x62
	' 		__EN_ARRET 		= 70	' 0x46
	
	' Envoyer la requete a CPinti Core et recuperer le resultat
	' Gerer_thread = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_gerer_thread(get_id_kernel(), PID, TID, Action)
	
	return 0
End Function


Function __Noyau_Cpcdos_OSx__.get_Nom_Thread(TID as uinteger) as String
	' Cette fonction permet d'obtenir le nom d'un thread
	'	TID		: Numero TID du thread
	'   Retourne le nom du thread
	
	
	' Retourner en String
	Function = *cast(ZString ptr, cpinti.gestionnaire_tache.cpinti_get_nom_thread(TID))
End Function

Function __Noyau_Cpcdos_OSx__.get_ThreadEnCours() as uinteger
	' Cette fonction permet d'obtenir le nom d'un thread
	'	PID		: Numero PID du processus
	'	TID		: Numero TID du thread
	'   Retourne le nom du thread
	
	Function = cpinti.gestionnaire_tache.get_ThreadEnCours()
	
End Function

Function __Noyau_Cpcdos_OSx__.get_Nom_Processus(PID as uinteger) as String
	' Cette fonction permet d'obtenir le nom d'un thread
	'	PID		: Numero PID du processus
	'   Retourne le nom du processus
	
	Function = *cast(ZString ptr, cpinti.gestionnaire_tache.cpinti_get_nom_processus(PID))
	
End Function

Function __Noyau_Cpcdos_OSx__.get_List_Processus(display as integer) as String
	' Cette fonction permet d'obtenir le nom d'un thread
	'	PID		: Numero PID du processus
	'   Retourne le nom du processus
	' display :
	'	0 : Nom%CRLF%Nom%CRLF%Nom%CRLF%
	'	1 : Nom [threads]%CRLF%Nom [threads]%CRLF%Nom [threads]%CRLF%
	'	2 : 
	'	3 : 
	'	4 : Nom;nom;nom;
	'	5 : Nom [threads];Nom [threads];Nom [threads];
	'	6 : 
	'	7 :

	
	Dim Liste_Processus as String = ""
	for boucle as integer = 0 to CPCDOS_INSTANCE.SYSTEME_INSTANCE._MAX_PROCESSUS
		' Checker si le PID existe
		Dim processus_name as String = *cast(ZString ptr, cpinti.gestionnaire_tache.cpinti_get_nom_processus(boucle))
		

		' S'il existe
		if len(processus_name) > 1 Then

			' Recuperer le nombre de threads du processus
			Dim nb_thread as integer = cpinti.gestionnaire_tache.cpinti_get_nombre_thread_in_processus(boucle)

			if display = 0 Then
				Liste_Processus += processus_name & CRLF
			Elseif display = 1 Then
				Liste_Processus += processus_name & " [" & nb_thread & " threads]" & CRLF
			Elseif display = 2 Then
				Liste_Processus += "[PID " & boucle & "] '" & processus_name & "' [" & nb_thread & " threads]" & CRLF
			Elseif display = 3 Then

			Elseif display = 4 Then
				Liste_Processus += processus_name & ";"
			Elseif display = 5 Then
				Liste_Processus += processus_name & " [" & nb_thread & " threads];"
			Elseif display = 6 Then
				Liste_Processus += "[PID " & boucle & "] '" & processus_name & "' [" & nb_thread & " threads];"
			Elseif display = 7 Then

			End if
		end if
	Next boucle
	
	return Liste_Processus
End Function

#print * Compression et decompression ZIP, GZ


Function __Noyau_Cpcdos_OSx__.Fichier_decompress(ByVal Source as String, ByVal Destination as String) as integer
	' Cette fonction permet de decompresser un fichier ZIP
	'	Source	: Source d'acces au fichier
	'	Source	: Destination ecriture


	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Destination, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)

	 Dim As zip_t Ptr zip_instance = zip_open(Source, ZIP_CHECKCONS, NULL)
    If (zip_instance = NULL) Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[ERREUR] Impossible d'ouvrir le ZIP", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[ERREUR] Unable to open ZIP file", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
        Return 0
    End If

	
    ' Recuperer chaque fichier dans le ZIP (API libZip)
    For i As Integer = 0 To (zip_get_num_entries(zip_instance, 0) - 1)
		DEBUG("[ZIP] " & Source & " --> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
        decompress_fichier(zip_instance, i, Destination)
    Next
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("Archive extraite dans '" & Destination & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "") 
	else
		DEBUG("Archive extracted in '" & Destination & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	end if
	
	' Fermer l'instance de l'archive
	zip_close(zip_instance)

	return 1
End Function

Function __Noyau_Cpcdos_OSx__.decompress_fichier(ByVal zip_instance As zip_t Ptr, ByVal i As Integer, Destination as string) as boolean
    ' Cette fonction permet d'extraire 1 fichier de l'archive ou de creer le repertoires
	
	#define BUFFER_SIZE (1024 * 512)
    Static As UByte chunk(0 To (BUFFER_SIZE - 1))
    #define buffer (@chunk(0))

    ' Recuperer le nom de l'archive
    Dim As String NomFichier = *zip_get_name(zip_instance, i, 0)
    IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("'" & NomFichier & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	Else
		DEBUG("'" & NomFichier & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

    Dim As zip_stat stat
    If (zip_stat_index(zip_instance, i, 0, @stat)) Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[ERREUR] zip_stat_index() Erreur interne. L'arhive est peut etre corrompue.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[ERREUR] zip_stat_index() Internal error, archive is maybe corrupted", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
        Return false
    End If

    If ((stat.valid And ZIP_STAT_SIZE) = 0) Then
        IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[ERREUR] Impossible d'avoir la taille de l'achive.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		Else
			DEBUG("[ERREUR] Unable to get archive size.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
        Return false
    End If
	
	' Afficher la taille du fichier extrait
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		if stat.size > _GIGA_OCTETS Then 
			DEBUG(" (" & cint(stat.size / _GIGA_OCTETS) & " go) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		elseif stat.size > _MEGA_OCTETS Then 
			DEBUG(" (" & cint(stat.size / _MEGA_OCTETS) & " mo) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		elseif stat.size > _KILO_OCTETS Then 
			DEBUG(" (" & cint(stat.size / _KILO_OCTETS) & " ko) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG(" (" & cint(stat.size / _OCTETS) & " o) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
	Else
		if stat.size > _GIGA_OCTETS Then 
			DEBUG(" (" & cint(stat.size / _GIGA_OCTETS) & " gb) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		elseif stat.size > _MEGA_OCTETS Then 
			DEBUG(" (" & cint(stat.size / _MEGA_OCTETS) & " mb) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		elseif stat.size > _KILO_OCTETS Then 
			DEBUG(" (" & cint(stat.size / _KILO_OCTETS) & " kb) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG(" (" & cint(stat.size / _OCTETS) & " b) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
	End if

    ' Creer les repertoires si besoin
    if Creer_repertoires_Parents(Destination & "\" & NomFichier) = false Then

		' Ecrire le fichier courant
		Dim As Integer fo = FreeFile()
		If (Open(Destination & "\" & NomFichier, For Binary, Access Write, As #fo)) Then
			if NOT instr(NomFichier, "/") > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[ERREUR] Impossible d'ouvrir l'archive. Le fichier est peut etre corrompu.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				Else
					DEBUG("[ERREUR] Unable to open archive. File is maybe corrupted.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				End if
			Else
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[DOSSIER]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				Else
					DEBUG("[FOLDER]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				End if
				
				DEBUG(" ... [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			End if
			Return false
		End If
		
		Dim As zip_file_t Ptr fi = zip_fopen_index(zip_instance, i, 0)

		Do
			' Decoder le fichier dans le zip
			Dim As Integer bytes = zip_fread(fi, buffer, BUFFER_SIZE)
			If (bytes < 0) Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[ERREUR] zip_fread() erreur lors de la lecture du fichier dans l'archive.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				Else
					DEBUG("[ERREUR] zip_fread() error during reading file in archive.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				End if
				Exit Do
			End If
			
			' Si on est a la fin
			If (bytes = 0) Then
				Exit Do
			End If

			' Ecrire les octets!
			If (Put(#fo, , *buffer, bytes)) Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[ERREUR] Impossible d'ecrire dans le fichier ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				Else
					DEBUG("[ERREUR] Unable to write to file.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
				End if
				Exit Do
			End If
		Loop
		
		DEBUG(" ... [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

		' Fermer le fichier courant
		Close #fo
		
		' Fermer l'instance
		zip_fclose(fi)
	End if
	
	
	
	return true
End function

Function __Noyau_Cpcdos_OSx__.Creer_repertoires_Parents(ByVal file As ZString Ptr) as boolean
   ' Cette fonction permet de creer les repertoires
   
   Creer_repertoires_Parents = false
    Dim As UByte Ptr p = file
    Do
        Select Case (*p)
        Case Asc("/")
            *p = 0
            if MkDir(*file) = 0 Then Creer_repertoires_Parents = true
            *p = Asc("/")
        Case 0
            Exit Do
        End Select
        p += 1
    Loop
End Function

Function __Noyau_Cpcdos_OSx__.Fichier_compress(ByVal Source as String, ByVal Destination as String) as integer
	' Cette fonction permet de decompresser un fichier ZIP
	'	Source	: Source d'acces au fichier
	'	Source	: Destination ecriture


	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Destination, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)

	
	Dim Resultats as integer = -1
	
	return resultats
End Function


#print * Lecture et ecriture de fichiers
Function __Noyau_Cpcdos_OSx__.Lire_fichier_complet(ByVal Source as String) as String
	' Cette fonction permet de lire un fichier complet
	'	Source	: Source d'acces au fichier
	' Retourne le contenu du fichier

	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	
	Dim TailleFichier as uinteger = Taille_Fichier(Source)
	
	' Si le fichier est vide..... on sort!
	if TailleFichier < 1 Then 
		return ""
	end if
	
	Dim Mode as string = "rb"
	
	' Creation d'un nouveau pointeur
	Dim Buffer_CCP_CHAR as string = Space(TailleFichier) 
	
	
	' Lire le fichier depuis CPinti Core
	Dim Resultat as boolean = cpinti.gestionnaire_fichier.cpinti_Lire_Fichier_complet(strptr(Source), strptr(Mode), strptr(Buffer_CCP_CHAR), TailleFichier)

	' Checker le resultat
	IF Resultat = false then
		' Sachant que le fichier est dabord teste, et qu'il y a une erreur...
		' Il y a donc une erreur interne
		Dim Message_erreur as String = ERRAVT("ERR_015", 0)
		DEBUG("[CpcdosC+]  : Erreur d'acces interne. " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		
		Function = ""
	else
		Function = Buffer_CCP_CHAR
	End if
End Function



Function __Noyau_Cpcdos_OSx__.Fichier_Existe(ByVal Source as String) as boolean
	' Cette fonction permet de verifier l'existence d'un fichier
	'	Source	: Source d'acces au fichier
	' Retourne 	TRUE presents
	'			FALSE pas present

	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)

	

	if FileExists( Source ) <> 0 then 
		function = true 
	else 
		function = false
	End if
	

	
End Function

Function __Noyau_Cpcdos_OSx__.Taille_Fichier(ByVal Source as String) as uinteger
	' Cette fonction permet de recuperer la taille d'un fichier
	'	Source	: Source d'acces au fichier
	' Retourne la taille du fichier en unsigned int
	
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source

	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	
	Function = FileLen( Source )
	
	exit function
	
	' ' Transformer en CHAR*
	' Dim Source_CHAR as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(Source)
	
	
	' ' Recuperer la  taille du fichier
	' Dim Taille_Du_Fichier as uinteger = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_Taille_Fichier(Source_CHAR)
	
	
	' IF Taille_Du_Fichier < 0 then
		' ' ' Sachant que le fichier est dabord teste, il s'agirait donc
		' ' ' d'une erreur interne de CPinti mais il concerne ce fichier
		' Dim Message_erreur as String = ERRAVT("ERR_015", 0)
		' DEBUG("[CpcdosC+] (CPinti core) : Erreur d'acces interne. " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	' End if
	
	' ' Liberer la memoire
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(Source_CHAR)
	
	' ' Renvoyer le resultat
	' Function = Taille_Du_Fichier
End Function

Function __Noyau_Cpcdos_OSx__.Ecrire_fichier_complet(ByVal Source as String, ByVal Donnees as String, ByVal FLAG as integer) as double
	' Cette fonction permet de lire un fichier complet
	'	Source	: Source d'acces au fichier
	' Retourne le contenu du fichier

	Dim f As Integer = FreeFile
	Dim retour_attributs as UInteger
	Dim Retour as String
	
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	 
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	
	' Eviter d'ecrire sur un nom de dossier
	Retour = Dir(Source, CPCDOS_INSTANCE.SYSTEME_INSTANCE.Attributs_IO_INSTANCE.attrib_Directory, retour_attributs) 
	
	if NOT Retour = "" Then
		Return -1
	end if
	
	
	' DEBUG("FLAG:" & FLAG, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	' UTILISATION DU STD DE FREEBAASIC !! TEMPORAIRE !!
	if FLAG = 1 Then ' Binaire
		Open Source For Binary Access Write As #f
	ElseIf FLAG = 2 Then ' Appending
		Open Source For Append Access Write As #f
	ElseIf FLAG = 3 Then ' Appending + binaire
		Open Source For Append Access Write As #f
	Else
		Open Source For Binary Access Write As #f
	End if
	
	If Err > 0 Then return -2

	if Donnees = "" Then
		put #f, , chr(0)
	Else
		put #f, , Donnees
	End if

	close #f
	
	function = len(Donnees)
	
	exit function
	
	' ' Transformer en CHAR*
	' Dim Source_CHAR as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(Source)
	
	' ' Transformer en CHAR* 
	' DIM Donnees_CHAR as CONST ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(Donnees)
	
	' ' Lire le fichier depuis CPinti Core
	' Dim Resultat as double = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_Ecrire_Fichier_complet(Source_CHAR, Donnees_CHAR, FLAG)
	
	' IF Resultat < 0 then
		' ' Erreur d'ecriture
		' Dim Message_erreur as String = ERRAVT("ERR_015", 0)
		' DEBUG("[CpcdosC+] (CPinti core) : Erreur d'acces interne. " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		
		' Ecrire_fichier_complet = -1
	' else
	
		' ' Renvoyer le nobre d'octets ecrits
		' Ecrire_fichier_complet = Resultat
	' End if
	
	' ' Liberer la memoire
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(Donnees_CHAR)
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(Source_CHAR)
End Function

Function __Noyau_Cpcdos_OSx__.Supprimer_Fichier(ByVal Source as String, ByVal securise as boolean, ByVal NombrePasses as integer) as boolean
	' Cette fonction permet de supprier un fichier du disque
	'	Source	: Source d'acces au fichier
	'	securise: Effacement securise
	'	NmPasses: Nombre de passes d'effacement
	
	' Retourne 	TRUE OK
	'			FALSE pas OK
	
	

	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[KERNEL] Suppression du fichier '" & Source & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	Else
		DEBUG("[KERNEL] Deleting file '" & Source & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	End if
	
	
	dim resultat as boolean = kill(Source)
	if resultat = 0 then 
		DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		return true
	else
		DEBUG("[ERROR]", CPCDOS_INSTANCE.DEBUG_INSTANCE.ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		return false
	end if
	
	' Transformer en CHAR*
	' Dim Source_CHAR as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(Source)
	
	
	' Supprimer le fichier depuis CPinti Core
	' Supprimer_Fichier = CPCDOS_INSTANCE.CPintiCore_INSTANCE.cpinti_Supprimer_Fichier(Source_CHAR, securise, NombrePasses)
	
	' Liberer la memoire
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(Source_CHAR)
	' function = false
End Function

Function __Noyau_Cpcdos_OSx__.Copier_Fichier(ByVal Source as String, ByVal Destination as String, ByVal Priorite as integer, ByVal Var_Progression as String, ByVal Var_Octets as String, ByVal Var_OctetsParSec as String) as boolean
	' Cette fonction permet de copier un fichier source a une destination
	
	'	Source	: Source d'acces au fichier source
	'	securise: Source d'acces au fichier destination
	' Priorite	= 0	: Copie par defaut a priorite automatisee (selon la charge du CPU)
	' 			= 1	: Copie normale (50%)
	' 			= 2	: Copie prioritaire, priorise plus le thread actuel (70%)
	'			= 3 : Copie a section critique (Bloque tous les autre threads et priorise a 100%)
	
	' VAR_Progression	: Variable destination pour la progression en %
	' VAR_Octets		: Variable destination pour la progression en octets
	' VAR_OctetsParSec	: Variable destination pour le nombre d'octets par secondes

	' Retourne 	TRUE OK
	'			FALSE pas OK
	
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Destination, ":") > 0 Then Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Destination
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Destination, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)

	
	Dim Source_CHAR 			as ZString PTR = strptr(Source)
	Dim Destination_CHAR 		as ZString PTR = strptr(Destination)
	' Dim VAR_Progression_CHAR 	as ZString PTR = strptr(VAR_Progression)
	' Dim VAR_Octets_CHAR 		as ZString PTR = strptr(VAR_Octets)
	' Dim VAR_OctetsParSec_CHAR 	as ZString PTR = strptr(VAR_OctetsParSec)
	
	' Transformer en CHAR*
	' Dim Source_CHAR 			as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(Source)
	' Dim Destination_CHAR 		as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(Destination)
	Dim VAR_Progression_CHAR 	as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(VAR_Progression)
	Dim VAR_Octets_CHAR 		as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(VAR_Octets)
	Dim VAR_OctetsParSec_CHAR 	as ZString PTR = CPCDOS_INSTANCE.SYSTEME_INSTANCE.AllouerString(VAR_OctetsParSec)

	
	' Copier le fichier depuis CPinti Core
	Copier_Fichier = cpinti.gestionnaire_fichier.cpinti_Copier_Fichier(Source_CHAR, Destination_CHAR, Priorite, VAR_Progression_CHAR, VAR_Octets_CHAR, VAR_OctetsParSec_CHAR)

	' Liberer la memoire
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(VAR_OctetsParSec_CHAR)
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(VAR_Octets_CHAR)
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(VAR_Progression_CHAR)
	
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(Destination_CHAR)
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.DesAllouerString(Source_CHAR)

End Function

Function __Noyau_Cpcdos_OSx__.Renommer_Fichier(ByVal Source as String, ByVal Destination as String) as boolean
	' Cette fonction permet de renommer un fichier source a une destination
	
	'	Source	: Source d'acces au fichier source
	'	securise: Source d'acces au fichier destination
	' Priorite	= 0	: Copie par defaut a priorite automatisee (selon la charge du CPU)
	' 			= 1	: Copie normale (50%)
	' 			= 2	: Copie prioritaire, priorise plus le thread actuel (70%)
	'			= 3 : Copie a section critique (Bloque tous les autre threads et priorise a 100%)
	
	' VAR_Progression	: Variable destination pour la progression en %
	' VAR_Octets		: Variable destination pour la progression en octets
	' VAR_OctetsParSec	: Variable destination pour le nombre d'octets par secondes

	' Retourne 	TRUE OK
	'			FALSE pas OK
	
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Destination, ":") > 0 Then Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Destination
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Destination, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	

	Destination = Mid(Source, 1, InstrREV(Source, "\")) & Destination
	
	
	' UTILISATION TEMPORAIRE DU CRT0 DE FREEBASIC !! Independance en cours ;)
	Dim Resultat as integer = NAME(Source, Destination)
	
	' Compatibilite avec DOS
	if Resultat = 0 Then Resultat = 1
	Renommer_Fichier = Resultat
End Function

Function __Noyau_Cpcdos_OSx__.Deplacer_Fichier(ByVal Source as String, ByVal Destination as String) as boolean
	' Cette fonction permet de deplacer un fichier source a une destination
	
	'	Source	: Source d'acces au fichier source
	'	securise: Source d'acces au fichier destination
	' Priorite	= 0	: Copie par defaut a priorite automatisee (selon la charge du CPU)
	' 			= 1	: Copie normale (50%)
	' 			= 2	: Copie prioritaire, priorise plus le thread actuel (70%)
	'			= 3 : Copie a section critique (Bloque tous les autre threads et priorise a 100%)
	
	' VAR_Progression	: Variable destination pour la progression en %
	' VAR_Octets		: Variable destination pour la progression en octets
	' VAR_OctetsParSec	: Variable destination pour le nombre d'octets par secondes

	' Retourne 	TRUE OK
				' FALSE pas OK
	
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Source, ":") > 0 Then Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Source
	' Obtenir le path courant si le path n'est pas abolue mais relative
	if NOT instr(Destination, ":") > 0 Then Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_ExeEnCours(2) & "\" & Destination
	
	
	' Filtrer les TAB, espaces et Retour chariot CR & LF 
	Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Source, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	Destination = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Rtrim(Rtrim(Ltrim(Rtrim(Rtrim(Ltrim(Destination, CHR(09)), CR), LF)), CHR(09))), TRUE, TRUE, FALSE)
	
	Destination = Mid(Source, 1, InstrREV(Source, "\")) & Destination
	
	
	' UTILISATION TEMPORAIRE DU CRT0 DE FREEBASIC !! Independance en cours ;)
	' Dim Resultat as integer = NAME(Source, Destination)
	
	dim Resultat as integer = -1
	
	' Compatibilite avec DOS
	if Resultat = 0 Then Resultat = 1
	
	function = Resultat
End Function


#print * Heure
Function __Noyau_Cpcdos_OSx__.get_Heure(ByVal format_ as string) as string
	' Obtenir l'heure actuel dans un formatage personnalisee!
	' Format exemple avec 14 heure 50 minutes et 42 secondes
	' 	HH:MM:SS ( 14:50:42 )
	' 	HHhMM    ( 14h50    )
	' 	HH-MM:SS ( 14-50:42 )
	' 	SS.HH.MM ( 42.14.50 )
	'   etc...
	
	ENTRER_SectionCritique()
	
	Dim Calc_ 		as integer
	' Trier l'heure du systeme synchronise
	Dim gTime		(0 to 2) as integer
	
	' index 0:Heure 1:Minutes 2:Secondes
	Dim _PRESENT	(0 to 2) as integer
	
	' Tout en majuscule
	format_ = UCASE(format_)

	
	Dim Resultat 	as string
	
	' Declarer les tableaux
	Dim Empl_TEMPS	(0 to 3) as String
	Dim final_TEMPS	(0 to 3) as String
	Dim Empl_SEP	(0 to 1) as String
	
	

	' Recuperer le RANG 1
	Empl_TEMPS	(0) = MID(format_, 1, 2) ' Recuperer le 1er rang
	Empl_SEP	(0) = MID(format_, 3, 1) ' Recuperer le 1er separateur
	
	
	' Recuperer le RANG 2
	Empl_TEMPS	(1) = MID(format_, 4, 2) ' Recuperer le 2eme rang
	Empl_SEP	(1) = MID(format_, 6, 1) ' Recuperer le 1er separateur
	
	' Recuperer le RANG 3
	Empl_TEMPS	(2) = MID(format_, 7, 2) ' Recuperer le 3er rang
	
	' Chercher la presence de HH
	For b as integer = 0 to 2
		IF Empl_TEMPS(b) = this.TYPES_INSTANCE._RTC_Heure Then 
			gTime(b) = this.SYSTEME_INSTANCE.get_Heures()
			_PRESENT(0) = 1
			exit for ' Optimisation
		End if
	Next b
	
	' Chercher la presence de MM
	For b as integer = 0 to 2
		IF Empl_TEMPS(b) = this.TYPES_INSTANCE._RTC_Minutes Then 
			gTime(b) = this.SYSTEME_INSTANCE.get_Minutes()
			_PRESENT(1) = 1
			exit for ' Optimisation
		End if
	Next b
	
	' Chercher la presence de SS
	For b as integer = 0 to 2
		IF Empl_TEMPS(b) = this.TYPES_INSTANCE._RTC_Secondes Then 
			gTime(b) = this.SYSTEME_INSTANCE.get_Secondes()
			_PRESENT(2) = 1
			exit for ' Optimisation
		End if
	Next b	
	
	' Calculer le nombre de rangs presents
	Calc_ = _PRESENT(0) + _PRESENT(1) + _PRESENT(2)	
	
	if Calc_ = 3 Then ' Les 3 rangs sont presents
		Resultat = gTime(0) & Empl_SEP(0) & gTime(1) & Empl_SEP(1) & gTime(2)
	ElseIF Calc_ = 2 Then ' 2 Rangs seulement
		Resultat = gTime(0) & Empl_SEP(0) & gTime(1)
	ElseIF Calc_ = 1 Then ' 1 Rang seulement
		Resultat = gTime(0) & ""
	Else
		Resultat = "<FORMAT ERR>" ' Erreur de format
	End if
	
	' Retourner le resultat
	Function = Resultat
	
	SORTIR_SectionCritique()
End Function

#print * Date
Function __Noyau_Cpcdos_OSx__.get_Date(ByVal format_ as string) as string
	' Obtenir la date actuel dans un formatage personnalisee!
	' Format exemple avec 14 heure 50 minutes et 42 secondes
	' 	HH:MM:SS ( 14:50:42 )
	' 	HHhMM    ( 14h50    )
	' 	HH-MM:SS ( 14-50:42 )
	' 	SS.HH.MM ( 42.14.50 )
	'   etc...
	
	ENTRER_SectionCritique()
	
	Dim Addit 		as integer
	Dim Calc_ 		as integer
	
	' Trier l'heure du systeme synchronise
	Dim gDate		(0 to 2) 	as integer
	
	' index 0:Heure 1:Minutes 2:Secondes
	Dim _PRESENT	(0 to 2) 	as integer
	
	Dim Resultat 	as string
	
	' Declarer les tableaux
	Dim Empl_DATE	(0 to 3) 	as String
	Dim final_DATE	(0 to 3) 	as String
	Dim Empl_SEP	(0 to 1) 	as String
	
	

	' Tout en majuscule
	format_ = UCASE(format_)
	
	' Recuperer le RANG 1
	IF (MID(format_, 1, 4) = this.TYPES_INSTANCE._RTC_ANNEE(1)) OR (MID(format_, 1, 4) = this.TYPES_INSTANCE._RTC_ANNEE(3)) Then ' YYYY/AAAA ?
		Empl_DATE (0) = MID(format_, 1, 4)
		Addit = 2
	ELSE ' Autre chose!
		Empl_DATE (0) = MID(format_, 1, 2)
	END IF

	Empl_SEP	(0) = MID(format_, 3 + Addit, 1) ' Recuperer le 1er separateur
	
	
	' Recuperer le RANG 2
	Empl_DATE	(1) = MID(format_, 4 + Addit, 2) ' Recuperer le 2eme rang
	Empl_SEP	(1) = MID(format_, 6 + Addit, 1) ' Recuperer le 1er separateur
	
	' Recuperer le RANG 3
	IF (MID(format_, 7 + Addit, 4) = this.TYPES_INSTANCE._RTC_ANNEE(1)) OR (MID(format_, 7 + Addit, 4) = this.TYPES_INSTANCE._RTC_ANNEE(3)) Then ' YYYY ?
		Empl_DATE (2) = MID(format_, 7 + Addit, 4)
	ELSE ' Autre chose!
		Empl_DATE (2) = MID(format_, 7 + Addit, 2)
	END IF
	
	' Chercher la presence de DD ou JJ
	For b as integer = 0 to 2
		IF (Empl_DATE(b) = this.TYPES_INSTANCE._RTC_Jour(0)) OR (Empl_DATE(b) = this.TYPES_INSTANCE._RTC_Jour(1)) Then ' DD ou JJ
			gDate(b) = this.SYSTEME_INSTANCE.get_Jour()
			_PRESENT(0) = 1
			exit for ' Optimisation
		End if
	Next b
	
	' Chercher la presence de MM
	For b as integer = 0 to 2
		IF Empl_DATE(b) = this.TYPES_INSTANCE._RTC_MOIS Then 
			gDate(b) = this.SYSTEME_INSTANCE.get_Mois()
			_PRESENT(1) = 1
			exit for ' Optimisation
		End if
	Next b
	
	' Chercher la presence de YY / YYYY ou AA / AAAA
	For b as integer = 0 to 2
		IF (Empl_DATE(b) = this.TYPES_INSTANCE._RTC_ANNEE(0)) OR (Empl_DATE(b) = this.TYPES_INSTANCE._RTC_ANNEE(1))  OR (Empl_DATE(b) = this.TYPES_INSTANCE._RTC_ANNEE(2))  OR (Empl_DATE(b) = this.TYPES_INSTANCE._RTC_ANNEE(3)) Then
			if Len(Empl_DATE(b)) = 2 Then
				' YY
				gDate(b) = this.SYSTEME_INSTANCE.get_Annee() 
			ELSE
				' YYYY
				gDate(b) = val(this.SYSTEME_INSTANCE.get_Siecle() & this.SYSTEME_INSTANCE.get_Annee())
			End if
			_PRESENT(2) = 1
			exit for ' Optimisation
		End if
	Next b	
	
	' Calculer le nombre de rangs presents
	Calc_ = _PRESENT(0) + _PRESENT(1) + _PRESENT(2)	
	if Calc_ = 3 Then ' Les 3 rangs sont presents
		Resultat = gDate(0) & Empl_SEP(0) & gDate(1) & Empl_SEP(1) & gDate(2)
	ElseIF Calc_ = 2 Then ' 2 Rangs seulement
		Resultat = gDate(0) & Empl_SEP(0) & gDate(1)
	ElseIF Calc_ = 1 Then ' 1 Rang seulement
		Resultat = gDate(0) & ""
	Else
		Resultat = "<FORMAT ERR>" ' Erreur de format
	End if
	
	' Retourner le resultat
	Function = Resultat
	
	SORTIR_SectionCritique()

End Function 


Function __Noyau_Cpcdos_OSx__.get_Date_format() as String
	' Cette fonction permet de retourner le format de date
	
	get_Date_format = get_Date_format(Generer_cle(get_id_kernel(), get_id_OS(), get_id_Utilisateur(), 0, 0))
End Function

Function __Noyau_Cpcdos_OSx__.get_Date_format(_CLE_ as Double) as String
	' Cette fonction permet de retourner le format de date
	
	get_Date_format = UCASE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_DATE.FORMAT", 4, _CLE_))
End Function

Function __Noyau_Cpcdos_OSx__.get_Time_format() as String
	' Cette fonction permet de retourner le format de l'heure
	
	get_Time_format = get_Time_format(Generer_cle(get_id_kernel(), get_id_OS(), get_id_Utilisateur(), 0, 0))
End Function

Function __Noyau_Cpcdos_OSx__.get_Time_format(_CLE_ as Double) as String
	' Cette fonction permet de retourner le format de l'heure
	
	get_Time_format = UCASE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_TIME.FORMAT", 4, _CLE_))
End Function

#print * Manipulation de chaines
Function __Noyau_Cpcdos_OSx__.remplacer_Variable_DYN(ByVal Source as String, ByVal _CLE_ as double, ByVal RetourVAR as String) as String
	' Cette fonction permet de remplacer une variable DYNAMIQUE ${} par %% puis par son contenu
	
	Dim NIVEAU_CCP as integer = 4 ' Niveau OS par defaut
	
	' Verification suplementaire de la syntaxe
	if INSTR(Source, "${") > 0 Then
		if INSTR(Source, "${") < instr(Source, ":") Then
			if instr(Source, "}:") > 0 Then
				if instr(Source, "}:1") > 0 Then Source = remplacer_Caractere(Source, "}:1", "}") : NIVEAU_CCP = 1
				if instr(Source, "}:2") > 0 Then Source = remplacer_Caractere(Source, "}:2", "}") : NIVEAU_CCP = 2
				if instr(Source, "}:3") > 0 Then Source = remplacer_Caractere(Source, "}:3", "}") : NIVEAU_CCP = 3
				if instr(Source, "}:4") > 0 Then Source = remplacer_Caractere(Source, "}:4", "}") : NIVEAU_CCP = 4
				if instr(Source, "}:5") > 0 Then Source = remplacer_Caractere(Source, "}:5", "}") : NIVEAU_CCP = 5
			End if
		End if
		
		if INSTR(Source, "${") < INSTR(Source, "}") Then
			Source = remplacer_Caractere(Source, "${", "%")
			Source = remplacer_Caractere(Source, "}", "%")
		End if
	End if
	
	' Remplacer les variables par leur contenu
	Dim Resultat as String = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Rempl_VAR(Source, NIVEAU_CCP _
											, CPCDOS_INSTANCE.get_id_kernel			(_CLE_) _
											, CPCDOS_INSTANCE.get_id_OS				(_CLE_) _
											, CPCDOS_INSTANCE.get_id_Utilisateur	(_CLE_) _
											, CPCDOS_INSTANCE.get_id_PID			(_CLE_) _
											, CPCDOS_INSTANCE.get_id_TID			(_CLE_) _
											, RetourVAR)

	return Resultat
End function


Function __Noyau_Cpcdos_OSx__.remplacer_Caractere(ByVal Source as String, ByVal Caracteres as String, ByVal Remplacement as String) as String
	' Cette fonction permet de remplacer 1 ou une sequence de caracteres par celui definit
	
	' Pour eviter la boucle fatale ahah
	IF Source = "" OR Caracteres = Remplacement OR Caracteres = "" Then 
		remplacer_Caractere = "-1"
		Exit function
	End if
	
	IF INSTR(Source, Caracteres) > 0 Then

		Dim Taille_Source 		as integer = LEN(Source)
		Dim Taille_Caracteres	as integer = LEN(Caracteres)
		Dim POS_Caract 			as integer
		
		Dim DEBUT				as String
		Dim FIN					as String

		For Boucle as integer = 1 to Taille_Source
			POS_Caract = Instr(Source, Caracteres)
			
			IF POS_Caract > 0 Then
				DEBUT = MID(Source, 1, POS_Caract - 1)
				FIN = MID(Source, POS_Caract + Taille_Caracteres)
			Else
				Source = DEBUT & Remplacement & FIN
				exit for
			End if
			' Assemblage
			Source = DEBUT & Remplacement & FIN
		Next boucle
	End if
	

	remplacer_Caractere = Source
End Function

Function __Noyau_Cpcdos_OSx__.compter_Caractere(ByVal Source as String, ByVal Caracteres as String) as Integer
	' Cette fonction permet de compter le nombre de caractere souhaite
	
	' Pour eviter la boucle fatale ahah
	IF Source = "" OR Caracteres = "" Then 
		compter_Caractere = -1
		Exit function
	End if

	Dim Taille_Source 		as integer = LEN(Source)
	Dim Taille_Caracteres	as integer = LEN(Caracteres)
	Dim POS_Caract 			as integer
	Dim Comptage			as integer = 0
	
	Dim DEBUT				as String
	Dim FIN					as String

	For Boucle as integer = 1 to Taille_Source
		POS_Caract = Instr(Source, Caracteres)
		
		IF POS_Caract > 0 Then
			Comptage = Comptage + 1
			DEBUT = MID(Source, 1, POS_Caract - 1)
			FIN = MID(Source, POS_Caract + Taille_Caracteres)
		Else
			Source = DEBUT & FIN
			exit for
		End if
		' Assemblage
		Source = DEBUT & FIN
	Next boucle
	

	compter_Caractere = Comptage
End Function


#print * Gestionnaire des Systemes d exploitations
Sub __Noyau_Cpcdos_OSx__.update_OS_LISTE()
	' Cette fonction permet de mettre a jour la liste des OS
	'  present dans OS.LST
	
	Dim OS_LISTE as String = "OS/OS.LST"
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Cpcdos] Mise a jours des informations des OS installes ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		Else
			DEBUG("[Cpcdos] Updating informations about installed OS  ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End If
	End if
	
	
	Dim Position_Debut 	as integer = 1
	Dim Position_FIN 	as integer = 1
	Dim Position_2PTS 	as integer = 1

	' Lire le contenu depuis CPinti core
	Dim Buffer_Fichier 	as String = CPCDOS_INSTANCE.Lire_fichier_complet(OS_LISTE)
	
	Dim Chaine_Ligne 	as string
	
	For Boucle as integer = 0 to CPCDOS_INSTANCE._MAX_NOMBRE_OS
		
		Position_FIN = INSTR(Position_Debut, Buffer_Fichier, CRLF)
		
		if Position_FIN < 1 then Position_FIN = Len(Buffer_Fichier)
		
		' Recuperer la ligne dans le fichier en supprimant le CRLF a la fin
		Chaine_Ligne = Mid(Buffer_Fichier, Position_Debut, Position_FIN - Position_Debut)
		
		if Chaine_Ligne = "" Then Exit for
		
		Position_Debut = Position_FIN + 2
		
		' Boot screen
		if instr(Chaine_Ligne, "BOOTSCR=") > 0 Then
			CPCDOS_INSTANCE._LISTE__OS_BOOTSCREEN = RTRIM(RTRIM(RTRIM(MID(Chaine_Ligne, Instr(Chaine_Ligne, "BOOTSCR=") + 8), chr(13)), chr(10)))
			
			' Ne fait pas partie de la liste des OS
			Boucle -= 1
		else
		
			' Recuperer le nom de l'OS
			CPCDOS_INSTANCE._LISTE__OS_NOM(Boucle) = RTRIM(RTRIM(RTRIM(MID(Chaine_Ligne, 1, Instr(Chaine_Ligne, ":") - 1), chr(13)), chr(10)))

			' Recuperer le Source d'acces de l'OS
			CPCDOS_INSTANCE._LISTE__OS_PATH(Boucle) =  RTRIM(RTRIM(RTRIM(MID(Chaine_Ligne, Instr(Chaine_Ligne, ":") + 1), chr(13)), chr(10)))
			
			' Mettre a jour le nombre d'OS
			CPCDOS_INSTANCE._LISTE__OS_NB = Boucle + 1
		End if
		
		if Position_FIN = Len(Buffer_Fichier) Then exit for
	Next Boucle
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Cpcdos] Mise a jour terminee.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		Else
			DEBUG("[Cpcdos] Updating terminated.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End If
	End if
End Sub

Function __Noyau_Cpcdos_OSx__.get_NombreOSPresent() as integer
	' Cette fonction permet d'obtenir le nombre d'OS present dans le fichier
	'  OS.LST
	
	get_NombreOSPresent = CPCDOS_INSTANCE._LISTE__OS_NB
	
End function

Function __Noyau_Cpcdos_OSx__.get_OSPresent() as String
	' Cette fonction permet d'obtenir le nombre d'OS present dans le fichier
	'  OS.LST
	Dim Liste_Present as String = ""
	
	For Boucle as integer = 0 to CPCDOS_INSTANCE._MAX_NOMBRE_OS - 1
		if NOT CPCDOS_INSTANCE._LISTE__OS_NOM(Boucle) = "" Then
			Liste_Present = Liste_Present & Boucle & ":" & CPCDOS_INSTANCE._LISTE__OS_NOM(Boucle) & " PATH:OS/" & CPCDOS_INSTANCE._LISTE__OS_PATH(Boucle) & CRLF
		End if
	Next Boucle
	
	
	Function = Liste_Present
End function

Function __Noyau_Cpcdos_OSx__.get_OSPresent(_INDEX_ as integer) as String
	' Cette fonction permet de retourner le nom + path de l'OS via son index
	' Renvoit rien si ya rien aha
	
	Dim OS_Present as String = ""
	
	IF _INDEX_ = CPCDOS_INSTANCE._MAX_NOMBRE_OS Then OS_Present = "Without OS - Cpcdos blank kernel interface"
	
	if NOT CPCDOS_INSTANCE._LISTE__OS_NOM(_INDEX_) = "" Then 
		OS_Present = CPCDOS_INSTANCE._LISTE__OS_NOM(_INDEX_) & " PATH:OS/" & CPCDOS_INSTANCE._LISTE__OS_PATH(_INDEX_)
	End if
	
	Function = OS_Present
End function

Function __Noyau_Cpcdos_OSx__.test_OSPresent(ByVal Nom as String) as Integer
	' Cette fonction permet de retourner l'index d'un nom d'OS existant
	
	' Dernier de la liste
	if Nom = "#WITHOUT-SANSOS#" Then
		Function = CPCDOS_INSTANCE._MAX_NOMBRE_OS
		exit function
	End if
	
	' Enlever les espaces
	Nom = UCASE(CPCDOS_INSTANCE.remplacer_Caractere(Nom, " ", ""))

	For Boucle as integer = 0 to CPCDOS_INSTANCE._MAX_NOMBRE_OS - 1
		if NOT CPCDOS_INSTANCE._LISTE__OS_NOM(Boucle) = "" Then 
			IF Ucase(CPCDOS_INSTANCE._LISTE__OS_NOM(Boucle)) = Nom Then
				' Renvoyer le numero d'INDEX
				Function = Boucle
				exit function
			End if
		End if
	Next Boucle

	Function = -1 ' OS non trouve
End function


Function __Noyau_Cpcdos_OSx__.Charger_Image(ByVal ImageSource as String) as Any PTR
	' Cette fonction permet de charger une image PNG, JPG, JTIF ou MJPEG
	' Renvoie le pointeur
	Dim Hauteur as integer
	Dim Largeur as integer

	Function = Charger_Image(ImageSource, Hauteur, Largeur)
	
End Function

Function __Noyau_Cpcdos_OSx__.Charger_Image(ByVal ImageSource as String, byref Hauteur as integer, byref Largeur as integer) as Any PTR
	' Cette fonction permet de charger une image PNG, JPG, JPEG, JFIF ou MJPG
	' Renvoie le pointeur et les dimensions X et Y

	
	IF CPCDOS_INSTANCE.NOGUI = FALSE THEN
		ImageSource = Ucase(ImageSource)
		
		If Mid(ImageSource, Len(ImageSource) - 3) = ".PNG" Then
			' Charger une image PNG
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> Format PNG supporte!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> Supported PNG format !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
			
			return CPCDOS_INSTANCE.SYSTEME_INSTANCE.Charger_PNG(ImageSource, CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(), 50, Hauteur, Largeur)

		ElseIF Mid(ImageSource, Len(ImageSource) - 3) = ".JPG" OR _
				Mid(ImageSource, Len(ImageSource) - 4) = ".JPEG" OR _
				Mid(ImageSource, Len(ImageSource) - 4) = ".JFIF" OR _
				Mid(ImageSource, Len(ImageSource) - 4) = ".MJPG" Then
			' Charger une image JPG, JPEG, JFIF ou MJPG
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> Format JPG supporte!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> Supported JPG format !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
				
			return CPCDOS_INSTANCE.SYSTEME_INSTANCE.Charger_JPG(ImageSource, CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(), 50, Hauteur, Largeur)
			
		End if
		
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> Format non supporte!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> No supported format !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
	else
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> Mode non GUI, image non chargee", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[CPCDOS] Charge_Image() '" & ImageSource & "' --> NO GUI mode, image not loaded", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
	End if
	
End Function



function __Noyau_Cpcdos_OSx__.Read_INI_value (Fichier_source as string, Section as string, Cle as string) as string
    ' Cette fonction permet de lire dans un fichier INI

	Dim Chaine_Ligne 			as string
	Dim NouvelleSection 	as string
    dim Step_str 			as integer
	Dim Gauche_str 			as string
	Dim Droite_Str 			as string
	
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[CPCDOS] Read_INI_value() '" & Fichier_source & "' --> [" & Section & "] '" & Cle & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[CPCDOS] Read_INI_value() '" & Fichier_source & "' --> [" & Section & "] '" & Cle & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
	if Fichier_Existe(Fichier_source) = true then
		Dim Buffer_Fichier as String = Lire_fichier_complet(Fichier_source)
		Dim Position_FIN as integer
		Dim Position_Debut as integer = 1
			
		For Boucle as integer = 0 to compter_Caractere(Buffer_Fichier, CRLF)
		
			Position_FIN = INSTR(Position_Debut, Buffer_Fichier, CRLF)
			
			if Position_FIN < 1 then Position_FIN = Len(Buffer_Fichier)
			
			' Recuperer la ligne dans le fichier en supprimant le CRLF a la fin
			Chaine_Ligne = Mid(Buffer_Fichier, Position_Debut, Position_FIN - Position_Debut)
			
			Position_Debut = Position_FIN + 2

			if left(Chaine_Ligne,1) = "[" and right(Chaine_Ligne,1) = "]" then
				NouvelleSection = mid(Chaine_Ligne, 2, len(Chaine_Ligne)-2)
			elseif instr(Chaine_Ligne, "=") > 0 then
				Step_str = instr(Chaine_Ligne, "=")
				Gauche_str = trim(left(Chaine_Ligne,Step_str-1))
				Droite_Str = trim(right(Chaine_Ligne, len(Chaine_Ligne)-Step_str))
				if (NouvelleSection = Section) and (Gauche_str = Cle) then
				
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						DEBUG("[OK] Value '" & Droite_Str & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					End if
					
					return Droite_Str
				end if
			end if
			if Position_FIN = Len(Buffer_Fichier) Then exit for
		Next Boucle
	End if
	
end function


Function __Noyau_Cpcdos_OSx__.Load_list_format(source as String) as boolean
	' Cette fonction permet de charger la liste des formats de fichiers
	

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[CPCDOS] Load_list_format() Mise a jour de la liste des formats de fichiers depuis '" & source & "' ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	Else
		DEBUG("[CPCDOS] Load_list_format() Updating file format list from '" & source & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	End if
	
	' Recperer les proprietes du DOSSIER
	FORMAT_Extention	(0) = "NULL"
	FORMAT_Programme	(0) = "NULL"
	FORMAT_Description	(0) = Read_INI_value(source, "DIR", "DESCRIPTION")
	FORMAT_Icones_min	(0) = Read_INI_value(source, "DIR", "ICON_MIN")
	FORMAT_Icones_max	(0) = Read_INI_value(source, "DIR", "ICON_MAX")
	
	
	' recuperer 1 par 1 les elements pour format de fichier
	For boucle as integer = 1 to FORMAT_MAX
		FORMAT_Extention	(boucle) 	= Ucase(Read_INI_value(source, "EXT_" & boucle, "FORMAT"))
		FORMAT_Description	(boucle)	= Read_INI_value(source, "EXT_" & boucle, "DESCRIPTION")
		FORMAT_Icones_min	(boucle)	= Read_INI_value(source, "EXT_" & boucle, "ICON_MIN")
		FORMAT_Icones_max	(boucle)	= Read_INI_value(source, "EXT_" & boucle, "ICON_MAX")
		FORMAT_Programme	(boucle)	= Read_INI_value(source, "EXT_" & boucle, "PROGRAM")
		
		FORMAT_nombre = FORMAT_nombre + 1
	Next boucle
	
	
	FORMAT_Extention	(23) = Read_INI_value(source, "DRIVE", "FORMAT")
	FORMAT_Programme	(23) = Read_INI_value(source, "DRIVE", "PROGRAM")
	FORMAT_Description	(23) = Read_INI_value(source, "DRIVE", "DESCRIPTION")
	FORMAT_Icones_min	(23) = Read_INI_value(source, "DRIVE", "ICON_MIN")
	FORMAT_Icones_max	(23) = Read_INI_value(source, "DRIVE", "ICON_MAX")

	FORMAT_Extention	(24) = Read_INI_value(source, "EXT_DEF", "FORMAT")
	FORMAT_Programme	(24) = Read_INI_value(source, "EXT_DEF", "PROGRAM")
	FORMAT_Description	(24) = Read_INI_value(source, "EXT_DEF", "DESCRIPTION")
	FORMAT_Icones_min	(24) = Read_INI_value(source, "EXT_DEF", "ICON_MIN")
	FORMAT_Icones_max	(24) = Read_INI_value(source, "EXT_DEF", "ICON_MAX")
	

	DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	
	
	return true
End Function

Function __Noyau_Cpcdos_OSx__.Executer_Fichier(source as String, _cle_ as double) as boolean
	' Cette fonction permet d'executer un fichier avec un format attribué (Image, programme etc...)
	
	Dim Extension as string = Ucase(MID(source, InstrREV(source, ".") + 1))
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[CPCDOS] Executer_Fichier() Recherche du format pour '" & source & "' (" & Extension & ") ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	Else
		DEBUG("[CPCDOS] Executer_Fichier() Checking format for '" & source & "' (" & Extension & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	End if
	
	' Rechercher l'index de l'extension enregistre
	
	
	Dim Index_extension as integer = FORMAT_MAX
	For boucle as integer = 1 to FORMAT_MAX
	
		' Si extension correspond
		if Extension = Ucase(CPCDOS_INSTANCE.FORMAT_Extention(boucle)) Then
			Index_extension = boucle
			exit for
		End if
	Next boucle
	
	if Index_extension = FORMAT_MAX then
		' Extension inconnue
		DEBUG("[ERROR]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		
		return false
	else
		DEBUG("[OK] (" & Index_extension & ") --> '" & FORMAT_Programme(Index_extension) & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		
		' Extenxion connue, on lance le programme associe
		if Len(FORMAT_Programme(Index_extension)) > 1 then
			if FORMAT_Programme(Index_extension) = "NULL" Then
				' Pas de programmes associes
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[CPCDOS] Executer_Fichier() Extension connue, mais pas de programmes associe", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[CPCDOS] Executer_Fichier() Known extension, but no associated programs", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			else
				CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("SET/ _ARG_1 = " & source, _cle_, 3, 0, "")
				CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("EXE/ " & FORMAT_Programme(Index_extension) & "\#SAMEID", _cle_, 3, 0, "")
			End if
		End if
	End if
	

End function

public function __Noyau_Cpcdos_OSx__.Screenshot(_cle_ as double) as boolean
	' Cette fonction permet d'effectuer une capture d'ecran


	Dim Size_X as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X()
	Dim Size_Y as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y()

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[Instagrammeur] Screenshot !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	else
		DEBUG("[Instagrammer] Screenshot !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
	End if

	' Creer un buffer
	dim screenshot_ID as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("screenshot", Size_X, Size_Y, 0, 0, 0, 0, 123)
	
	' Capturer l'ecran
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Capture_ecran(screenshot_ID, 1, 1, Size_X, Size_Y)

	' Recuperer le nom de l'OS
	Dim NomOS as String = CPCDOS_INSTANCE.get_OSPresent(CPCDOS_INSTANCE.get_id_OS(_cle_))
				
	' Recuperer le nom de l'OS
	NomOS = MID(NomOS, 1, instr(NomOS, "PATH:") - 2)

	' Recuperer le path
	Dim Path_screen as string = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("SCR_SAVE", 3, _cle_)
	Dim File_name as string = NomOS & "_" & CPCDOS_INSTANCE.get_Date(CPCDOS_INSTANCE.get_Date_format()) & "_" & CPCDOS_INSTANCE.get_Heure(CPCDOS_INSTANCE.get_Time_format()) & "_" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Secondes() & "_" & ".png"
	file_name = CPCDOS_INSTANCE.remplacer_Caractere(File_name, "/"		, "-")
	file_name = CPCDOS_INSTANCE.remplacer_Caractere(File_name, "\"		, "-")
	file_name = CPCDOS_INSTANCE.remplacer_Caractere(File_name, ":"		, "-")

	Dim path_final as String = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Path_screen & "\" & File_name, TRUE, TRUE, FALSE)

	Dim Resultat as boolean = CPCDOS_INSTANCE.SYSTEME_INSTANCE.creer_Repertoire(Path_screen, "")
			
	If Resultat = true Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Screenshot] Repertoire introuvable, creation ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		Else
			DEBUG("[Screenshot] No exist folder, creating ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Action, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		End if
		DEBUG("[OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if

	' Enregistrer la capture
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.Save_png(screenshot_ID, path_final)

	' Supprimer le buffer
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(screenshot_ID)

	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[Instagrameur] Screenshot enregistre sous '" & path_final & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		else
			DEBUG("[Instagramer] Saved screenshot under '" & path_final & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	end if

	return true
End function

public sub __Noyau_Cpcdos_OSx__.tester_erreur_memoire()
	SCOPE
		Dim testerreur as boolean = false
		for Boucle as integer = 1 to CPCDOS_INSTANCE.SHELLCCP_INSTANCE._MAX_CMD_CCP
			if boucle > CPCDOS_INSTANCE.SHELLCCP_INSTANCE._MAX_CMD_CCP then exit for
		
			' DEV temporaire: Si commande vide alors on saute
			'  directement aux commandes graphiques
			IF CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(boucle) = "" AND boucle < 128 Then boucle = 128
			
			' Chercher la syntaxe Francophone
			IF Instr(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle), "/") > 0 OR Instr(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle), ".") = 1 Then
			Else
				testerreur = true
				Print "FR ERREUR(" & boucle & "):" & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_FR(Boucle) & "."
			End if
			
			' Chercher la syntaxe Anglophone
			IF Instr(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle), "/") > 0 OR Instr(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle), ".") = 1 Then
			Else
				testerreur = true
				Print "EN ERREUR(" & boucle & "):" & CPCDOS_INSTANCE.SHELLCCP_INSTANCE.Liste_CMD_EN(Boucle) & "."
			End if
			
		Next Boucle


		if testerreur = true Then 
			Print "Des erreurs detectes"
			Print "Appuyer sur une touche"
			sleep
		End if
	END SCOPE
end SUB


