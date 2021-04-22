' Service Creation Initialisation
' Gestionnaire graphique de Cpcdos

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 03/02/2021

' 03-JAN-2021	: Ajout du clic droit
' 20-JAN-2021	: Ajout de l'explorateur
' 15-10-2018	: Adaptation 2.1 beta 1.1
' 17-01-2018	: AJOUT du numero de handle temporaire pour le fond d'ecran
' 31-10-2017	: CORRECTION du support d'interaction graphique du textebox
' 26-10-2017	: AJOUT du support d'actualisation graphique du textebox et l'interaction clavier de base
' 06-07-2017	: Ajout des interacton indirect evenementielles KeyPress() et KeyPress(valeur)
' 01-06-2017	: Ajout des modes d'affichage du fond d'ecran
'					0 : Remplir l'écran (PAR DEFAUT)
'					1 : Image ajusté à l'écran 
'					2 : Vignettes (02-06-2017)
'					3 : Image brute centré
'					4 : Image brute

' 19-05-2017	: Readaptation du PNG et le picturebox


#include once "Cpcdos.bi"

#print
#print ============ Interface Utilisateur Graphique ==============

Constructor _SCI_Cpcdos_OSx__()
	DEBUG(" * Instanciation du SCI --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets", 1, 1, 2, 0, 0, 1, 0, "")
End Constructor

Destructor _SCI_Cpcdos_OSx__()
	DEBUG(" * De-instanciation du SCI --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
End Destructor

#print * Tests et application resolutions
Function _SCI_Cpcdos_OSx__.Initialiser_ECRAN(Resolution as String, Bits as integer) as integer
	' Initialiser l'affichage
	Resolution = UCASE(Resolution)
	Dim Res_X as integer = Val(MID(Resolution, 1, instr(Resolution, "X")-1))
	Dim Res_Y as integer = Val(MID(Resolution, instr(Resolution, "X")+1))
	
	Initialiser_ECRAN = Initialiser_ECRAN(Res_X, Res_Y, Bits)
End Function

Function _SCI_Cpcdos_OSx__.Initialiser_ECRAN(Res_X as integer, Res_Y as integer, Bits as integer) as integer
	' Initialiser l'affichage
	
	dim Message_erreur as String
	
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Test de la r‚solution " & Res_X & "x" & Res_Y & "x" & Bits & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
	Else
		DEBUG("[SCI] Testing screen resolution " & Res_X & "x" & Res_Y & "x" & Bits & " ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
	End if
	
	IF Res_X >= 320 Then ' Resolution X minimum
		IF Res_Y >= 200 Then ' Resolution Y minimum
			IF Bits >= 16 Then ' bpp minimum
				IF Bits <= 32 Then ' bpp Maximum
					' La structure d'entre a ete correctement respectee
					
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_resolution = this.RetourVAR
					
					' Maintenant on teste si la resolution est disponible sur la carte graphique du PC
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.test_Resolution(Res_X, Res_Y, Bits) = TRUE Then
						' ************ RESOLUTION SUPPORTEE ************
						
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] R‚solution compatible avec votre carte graphique. Tentative d'application...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
						Else
							DEBUG("[SCI] Screen resolution is compatible with your graphique card. Attempted ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
						End if
						
						

						if CPCDOS_INSTANCE.SYSTEME_INSTANCE.set_Resolution(Res_X, Res_Y, Bits) = TRUE Then
						
							' Savoir si on recharge les bitmaps ou non
							CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Actuel = Bits
							if CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Precedent = 0 Then CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Precedent = Bits

							' ************ OK FRANCKY ************
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Resolution " & Res_X & "x" & Res_Y & "x" & Bits & " appliqu‚e avec succes!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
							Else
								DEBUG("[SCI] Screen resolution " & Res_X & "x" & Res_Y & "x" & Bits & " applied with succes!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
							End if

							' Si le bit de couleur est diffent, alors on recharge les bitmaps a la source
							if CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Precedent <> CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Actuel Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Rechargement AUTO des bitmaps en " & Bit_Actuel & " bits...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
								Else
									DEBUG("[SCI] AUTO bitmaps reloading to " & Bit_Actuel & " bits...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CONS, this.RetourVAR )
								End if
								
								ENTRER_SectionCritique()

								' On reload tout 
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Auto_Reload_FILE()

								' On recupere le nouveau bit
								CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Precedent = CPCDOS_INSTANCE.SCI_INSTANCE.Bit_Actuel

								SORTIR_SectionCritique()
							End if

							Initialiser_ECRAN = 1
							Exit function
							' ************ OK FRANCKY ************
							
						Else  ' ************ GROS PROBLEME ************

							Message_erreur = ERRAVT("ERR_052", 0)
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] ERR_052 : " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
							Else
								DEBUG("[SCI] ERR_052 : " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
							End if

							Initialiser_ECRAN = 4
							Exit function

						End If
						
					Else ' ************ RESOLUTION NON SUPPORTEE ************

						' ************ Elle n'est pas disponible ************
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] La r‚solution de " & Res_X & "x" & Res_Y & "x" & Bits & " n'est pas support‚ par votre systeme.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
						Else
							DEBUG("[SCI] Screen resolution " & Res_X & "x" & Res_Y & "x" & Bits & " isn't compatible with your system.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
						End if
						Initialiser_ECRAN = 2
						Exit function
						' ************ Elle n'est pas disponible ************
					END IF
					
					
					' ************ Erreurs de mise en forme des resolution ************
				Else
					' > 32 bits
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Je ne peux pas voir plus de couleurs que vos yeux le peuvent... 32 bits est mon maximum! C'est deja pas mal non?", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
					Else
						DEBUG("[SCI] I can't see more colors that your eyes can... 32 bits is my maximum! It's already good? no?", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
					End if
					Initialiser_ECRAN = 3
					Exit function
				End if
			Else
				' < 16 bits
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Je ne suis pas une vielle GameBoy qui ne sait pas afficher plus de couleurs. Mon minimum est 16 bits. Un peut de couleurs dans la vie quand meme! ;-)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
				Else
					DEBUG("[SCI] I'm not a older GameBoy who can't display more colors. My minimum is 16 bits. A few colors in the live! ;-)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
				End if
				Initialiser_ECRAN = 3
				Exit function
			End if
		Else
		' < 200px en Y
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Specifiez une resolution superieur ou egale a 320x200.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
			Else
				DEBUG("[SCI] Please put a screen resolution > or = at 320x200.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
			End if
			Initialiser_ECRAN = 2
			Exit function
		END IF
	ELSE
		' < 320px en X
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] Specifiez une resolution superieur ou egale a 320x200.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
		Else
			DEBUG("[SCI] Please put a screen resolution > or = at 320x200.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
		End if
		Initialiser_ECRAN = 2
		Exit function
	END IF
End Function

Function _SCI_Cpcdos_OSx__.charger_Curseurs_properties() as boolean
	' Cette fonction permet de charger les valeur de propriete du curseur

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Chargement des proprietes des curseurs graphiques", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
	Else
		DEBUG("[SCI] Loading gui cursor properties", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
	End if

	' Vitesses max
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.Mouse_max_Speed = cdbl(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CURSOR_MAX_SPEED", 3, _CLE_))
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.Mouse_min_Speed = cdbl(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CURSOR_MIN_SPEED", 3, _CLE_))

	' Innercie
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.Mouse_max_Speed = cdbl(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CURSOR_INERTIA_SPEED", 3, _CLE_))
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.Mouse_min_Speed = cdbl(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CURSOR_CONSTANT_SPEED", 3, _CLE_))

	' Espacement du curseur de chargement
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_POS_X = val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LOAD_PX", 3, _CLE_))
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_POS_Y = val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LOAD_PY", 3, _CLE_))

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Proprietes du curseurs graphiques chargés !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
	Else
		DEBUG("[SCI] Gui cursors properties loaded !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
	End if

	return true
End function

Function _SCI_Cpcdos_OSx__.charger_Curseurs(Handle as integer) as integer
	' Cette fonction permet de charger les icones, et curseurs graphiques
	
	IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE then 
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] Chargement des curseurs graphiques", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
		Else
			DEBUG("[SCI] Loading gui  cursor", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
		End if

		Dim var_LOAD_IMG as String 		= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LOAD_IMG", 3, _CLE_)
		Dim var_CURSOR_IMG as String 	= CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CURSOR_IMG", 3, _CLE_)

		if CPCDOS_INSTANCE.Fichier_Existe(var_CURSOR_IMG) = true then
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Creer_BITMAP_depuis_FILE(var_CURSOR_IMG, Handle)

			if CPCDOS_INSTANCE.Fichier_Existe(var_LOAD_IMG) = true then
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Creer_BITMAP_depuis_FILE(var_LOAD_IMG, Handle)
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Curseurs graphiques chargés !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
				Else
					DEBUG("[SCI] Loaded gui cursors !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
				End if
				return 2
			Else
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Impossible de charger le curseur de 'chargement'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
				Else
					DEBUG("[SCI] Unable to load 'loading' gui cursor", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
				End if
			End if
			return 1
		Else
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Impossible de charger le curseur", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
			Else
				DEBUG("[SCI] Unable to load gui cursor", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
			End if
			return 0
		End if
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] Veuillez executer cette commande en mode GUI", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
		Else
			DEBUG("[SCI] Please to execute thie comand in GUI mode", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR )
		End if

	End if
End Function



Function _SCI_Cpcdos_OSx__.charger_Fond(CHEMIN as String, Handle as integer) as integer
	' Cette fonction permet de charger le fond d'ecran en memoire dans la video page 3
	
	
	' Definir sur la VideoPage 3
	ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_FOND_IMG, CPCDOS_INSTANCE._PAGE_VIDEO_WORK
	screenlock
	
	Dim Resolution_X as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X()
	Dim Resolution_Y as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y()
	
	Dim Couleur_Arriereplan as string = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("SCR_COLOR", 3, this._CLE_)
	Dim Fond_R as integer = val(Mid(Couleur_Arriereplan, 1, 3))
	Dim Fond_V as integer = val(Mid(Couleur_Arriereplan, 5, 3))
	Dim Fond_B as integer = val(Mid(Couleur_Arriereplan, 9, 3))
	dim Message_erreur as String
	
	' Hauteur
	' Largeur
	Dim as integer Hauteur, Largeur, PosX, PosY
	
	DIM SCR_IMG_MODE as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("SCR_IMG_MODE", 3, this._CLE_))
	
	' Charger l'image
	dim IMAGE_FOND 		as ANY ptr
	Dim Nouvelle_PTR 	as ANY PTR
	dim IMAGE_FOND_REP 	as Any PTR
	
	Dim ImageID 		as integer
	
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG = this.RetourVAR
	
	' Eviter les plantages ;)
	if Fond_R < 0 Then Fond_R = 0
	if Fond_V < 0 Then Fond_V = 0
	if Fond_B < 0 Then Fond_B = 0
	if Fond_R > 255 Then Fond_R = 255
	if Fond_V > 255 Then Fond_V = 255
	if Fond_B > 255 Then Fond_B = 255
		
	' Couleur de fond par defaut (Temporaire)
	Color RGB(255, 255, 255), RGB(Fond_R, Fond_V, Fond_B)
	cls
	
	
	
	IF NOT CHEMIN = "" Then
	
		ImageID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Creer_BITMAP_depuis_FILE(CHEMIN, Handle)
		
		Largeur = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_x(ImageID)
		Hauteur = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_y(ImageID)


		' MODE 0 : Remplir l'écran (PAR DEFAUT)
		If SCR_IMG_MODE = 0 Then
			
			' Chercher le plus petit axe
			IF Hauteur < Largeur  Then
				Largeur = int(Largeur / (Hauteur/Resolution_Y))
				Hauteur = int(Resolution_Y)
			ElseIf Hauteur > Largeur Then
				Hauteur = int(Hauteur / (Largeur/Resolution_X))
				Largeur = int(Resolution_X)			
			End if
			
			' Centrer l'image
			PosX = int((Resolution_X / 2) - (Largeur / 2))
			PosY = int((Resolution_Y / 2) - (Hauteur / 2))

			IF ImageID > 0 Then
				' On redimentionne l'image aux dimentions souhaite
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.ReSize_BITMAP(ImageID, Largeur, Hauteur)
				
			End if
		
			
		' MODE 1 : Image ajusté à l'écran 
		ElseIf SCR_IMG_MODE = 1 Then

			' On cherche le plus grand axe pour le retrecir jusqu'au bords de l'ecran en
			'  suivant l'algo pour que l'axe opposee suit sans perte
			if Largeur > Resolution_X Then 
				Hauteur = int(Hauteur / (Largeur/Resolution_X))
				Largeur = int(Resolution_X)
			End if
			
			IF Hauteur > Resolution_Y Then
				Largeur = int(Largeur / (Hauteur/Resolution_Y))
				Hauteur = int(Resolution_Y)
			End if

			' Centrer l'image
			PosX = int((Resolution_X / 2) - (Largeur / 2))
			PosY = int((Resolution_Y / 2) - (Hauteur / 2))
		
			
			' if IMAGE_FOND <> 0 Then
			if ImageID <> 0 Then
				
				' On redimentionne l'image aux dimentions souhaite			
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.ReSize_BITMAP(ImageID, Largeur, Hauteur)

			End if
		
		' MODE 2 : Adapté à l'écran (peut deformer l'image)
		ElseIf SCR_IMG_MODE = 2 Then
			PosX = 0
			PosY = 0
			 
			
			if ImageID <> 0 Then
				
				' On redimentionne l'image aux dimentions souhaite
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.ReSize_BITMAP(ImageID, Resolution_X, Resolution_Y)
				
			End if
			
		' MODE 3 : Vignettes
		ElseIf SCR_IMG_MODE = 3 Then
			
			' Allouer une image de la taille de l'ecran
			Dim ImageID_FOND as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Creer_BITMAP("IMG_FOND_ReSized", Resolution_X, Resolution_Y, Handle)
			
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(ImageID_FOND) <> 0 Then
				' Repeter le morceau d'image jusqu'au bords de l'ecran en X et Y
				For Boucle_X as integer = 1 to Resolution_X STEP Largeur
					For Boucle_Y as integer = 1 to Resolution_Y STEP Hauteur
						put CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(ImageID_FOND), (Boucle_X, Boucle_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(ImageID), ALPHA
					Next Boucle_Y
				Next Boucle_X
			Else
				Message_erreur = ERRAVT("AVT_082", 0)
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] " & Message_erreur & " lors du chargement du fond d'ecran (ID:" & ImageID & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				Else
					DEBUG("[SCI] " & Message_erreur & " during loading background screen (ID:" & ImageID & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
				End if
			End if

			
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Supprimer_BITMAP(ImageID)
			
			ImageID = ImageID_FOND
		
		
		' MODE 4 : Image brute centré
		ElseIF SCR_IMG_MODE = 4 Then
			PosX = int((CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X() / 2) - (Largeur / 2))
			PosY = int((CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y() / 2) - (Hauteur / 2))

		' MODE 5 : Image brute
		Else
			PosX = 0
			PosY = 0
		
		End if

		
		if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(ImageID) <> 0 Then
			' Placer l'image 
			put (PosX, PosY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(ImageID), Alpha

			CPCDOS_INSTANCE.SCI_INSTANCE.BACKGROUND_IMAGE = ImageID
		else
			Message_erreur = ERRAVT("AVT_082", 0)
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] " & Message_erreur & " lors du chargement du fond d'ecran (ID:" & ImageID & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[SCI] " & Message_erreur & " during loading background screen (ID:" & ImageID & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End if
		End if
		
		' Detruire l'ancienne adresse memoire
		' CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Supprimer_BITMAP(ImageID)
	
	END IF

	' Definition de la page de travail 
	ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN

	Function = 1
End Function

Function _SCI_Cpcdos_OSx__.creer_ContextMenu(Pos_X as integer, Pos_Y as integer) as boolean
	' Cette fonction permet d'afficher un menu contextuel a un emplacement
	
	' Temporaire
	Dim Size_X as integer = 200
	Dim Size_Y as integer = 200

	Dim texte_array(0 to 24) as string

	texte_array(0) = "Element 1"
	texte_array(1) = "Blabla 2"
	texte_array(2) = "Machin 3"

	dim Couleur_FNT_R as integer = 0
	dim Couleur_FNT_V as integer = 0
	dim Couleur_FNT_B as integer = 0

	' Recuperer le nom de fichier du fond d'ecran du menu contextuel
	dim Image as string = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.CONTEXT.BACKGROUND", 3, this._CLE_)

	ContextMenu_IsOpen = true

	if CPCDOS_INSTANCE.SCI_INSTANCE.ContextMenu_Background_ID < 1 Then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] creer_ContextMenu() Chargement de l'image de fond de " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] creer_ContextMenu() Loading background image from " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
		
		' Charger l'image et recuperer son ID
		CPCDOS_INSTANCE.SCI_INSTANCE.ContextMenu_Background_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(Image, 123)

		

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] creer_ContextMenu() " & Image & " --> id:" & ContextMenu_Background_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(ContextMenu_Background_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] creer_ContextMenu() " & Image & " --> id:" & ContextMenu_Background_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(ContextMenu_Background_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	Else
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] creer_ContextMenu() Image de fond de " & Image & " deja chargee", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] creer_ContextMenu() Background " & Image & " already loaded", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	End if

	' Creer un nouveau bitmap temporaire avec les nouvelles dimentions
	Dim ContextMenu_Background_ID_TEMP as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dupliquer_BITMAP(ContextMenu_Background_ID)

	' return true

	' Ajouter du texte
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_texte(ContextMenu_Background_ID_TEMP, texte_array(0), 24 , 10, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_texte(ContextMenu_Background_ID_TEMP, texte_array(1), 24 , 30, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_texte(ContextMenu_Background_ID_TEMP, texte_array(2), 24 , 50, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)

	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] creer_ContextMenu() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & " " & Size_X & "," & Size_Y & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(ContextMenu_Background_ID_TEMP)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		else
			DEBUG("[SCI] creer_ContextMenu() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & " " & Size_X & "," & Size_Y & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(ContextMenu_Background_ID_TEMP)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		End if
	end if


	' Hop on dessine dans le buffer video
	CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(ContextMenu_Background_ID_TEMP, Pos_X, Pos_Y, 0, 0, Size_X, Size_Y)

	' Supprimer le bitmap temporaire
	' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(ContextMenu_Background_ID_TEMP)

	return true
End Function


Function _SCI_Cpcdos_OSx__.creer_Msgbox(Texte as String, Titre as String, Type_Avertissement as Integer, Type_message as Integer, CleID as Double) as integer
	


	return 1
End Function


Function THREAD_Screen_Video Alias "THREAD_Screen_Video" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error

	Dim blittage as boolean = false
	Dim As integer Pos_X, Pos_Y, Scroll_Weel, TypeClic, Clip, Presente
	Dim Etat_Thread as uinteger
	Dim EN_VIE as boolean = true
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
			' ********* D E B U T  *********

			if NOT CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT > 0 Then
				Presente = CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpc_GetMouse(Pos_X, Pos_Y)	
				CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video(Pos_X, Pos_Y, Presente)
			End if

			'  ********* F I N  *********
			
		END SCOPE
		end if
		
		doevents(0)
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function

Sub _SCI_Cpcdos_OSx__.Blitter_Video()
	IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE then 
		ENTRER_SectionCritique()
		
		Dim as integer Pos_X, Pos_Y, Presente
	
		Presente = CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpc_GetMouse(Pos_X, Pos_Y)
		CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video(Pos_X, Pos_Y, Presente)
		
		SORTIR_SectionCritique()
	END IF
End sub

Sub _SCI_Cpcdos_OSx__.Blitter_Video(byval Pos_X as integer, Pos_Y as integer, SourisPresente as integer)

	IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE then 
		' Afficher copier la page video WORK a la page principal pour l'ecran
		Flip (CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN)
		
		' *** CURSEUR CUSTOM ***
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.UseFB_Mouse = false Then
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_ID) <> 0 Then
				if SourisPresente = 0 Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Dessiner_ecran(CPCDOS_INSTANCE._PAGE_VIDEO_MAIN, CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_ID, Pos_X, Pos_Y, True)
			End if
		End if

	
		' *** CURSEUR DE CHARGEMENT ***
		if CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_AFFICHER_STACK > 0 Then
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_ID) <> 0 Then
				if SourisPresente = 0 Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Dessiner_ecran(CPCDOS_INSTANCE._PAGE_VIDEO_MAIN, CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_ID, Pos_X + CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_POS_X, Pos_Y + CPCDOS_INSTANCE.SYSTEME_INSTANCE.CURSEUR_LOAD_POS_Y, True)
			End if
			
		End if
	End if
End Sub

Function THREAD__SCI Alias "THREAD__SCI" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	
	' ============= PUBLIC VARIABLES =============	
	Dim as integer Ancien_X, Ancien_Y, Ancien_Clic, Ancien_Scroll
	Dim As integer Pos_X, Pos_Y, Scroll_Weel, TypeClic, Clip, Presente
	DIM CLE as double = CPCDOS_INSTANCE.Generer_cle(thread_struct.KERNEL_ID, thread_struct.OS_ID, thread_struct.USER_ID, thread_struct.PROC_ID, thread_struct.THREAD_ID)
	Dim blittage as boolean = false	
	Dim InkeyRecup as boolean
	dim ToucheRecupere as String = ""
	
	' ============= PUBLIC VARIABLES =============
	

	Dim Etat_Thread as uinteger
	Dim EN_VIE 		as Boolean = TRUE
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT


	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		SCOPE
			' ********* D E B U T  *********
			
			' On recommence ici
			doevents(0)
			
			' Fermer le processus GUI (Ce qui va fermer automatiquement tous les threads associes)
			IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = FALSE Then 
				CPCDOS_INSTANCE.Fermer_processus(thread_struct.PROC_ID)
			End if
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT > 0 Then 
				' Presente = GetMouse(Pos_X, Pos_Y)
				
				CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video(Pos_X, Pos_Y, Presente)
			End if
			
			Ancien_X = Pos_X
			Ancien_Y = Pos_Y
			Ancien_Clic = TypeClic
			Ancien_Scroll = Scroll_Weel
			

			if InkeyRecup = true Then
				' CPCDOS_INSTANCE.SYSTEME_INSTANCE.Touche_Inkey = ""
				InkeyRecup = false
				ToucheRecupere = ""
			End if
			
			
			
			' Si textebox focus
			IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox Then
				if CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Exec = TRUE AND CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE THEN
					ToucheRecupere += Inkey

					' Ah, c'est un caractere special!
					if instr(ToucheRecupere, chr(255)) > 0 Then
						if len(ToucheRecupere) = 2 Then
							Dim Taille_Texte as uinteger
							
							Dim UserEdit_Pos as uinteger = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).PROP_TYPE.UserEdit_Pos
							' Compater l'ensemble des caracteres speciaux
							
							IF ToucheRecupere = CPCDOS_INSTANCE.SYSTEME_INSTANCE.KEY_LEFT Then if UserEdit_Pos > 0 Then UserEdit_Pos -= 1
							IF ToucheRecupere = CPCDOS_INSTANCE.SYSTEME_INSTANCE.KEY_RIGHT Then UserEdit_Pos += 1
							IF ToucheRecupere = CPCDOS_INSTANCE.SYSTEME_INSTANCE.KEY_BEGIN Then 
								UserEdit_Pos = 0
							End if
							IF ToucheRecupere = CPCDOS_INSTANCE.SYSTEME_INSTANCE.KEY_END Then 
								UserEdit_Pos = len(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).Texte)
							End if
							
							IF ToucheRecupere = CPCDOS_INSTANCE.SYSTEME_INSTANCE.KEY_TOP Then 
								
								DIM TEXTE as String = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).Texte
								Dim Texte_Avant as String = mid(TEXTE, 1, UserEdit_Pos)
								Dim Texte_Apres as String = mid(TEXTE, UserEdit_Pos)
								Dim NombreCRLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CRLF)
								Dim NombreCR as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CR)
								Dim NombreLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, LF)

								Dim TypeRetour as String
								Dim TypeRetourOct as integer
								Dim NombreLignes as integer
								
								IF NombreCRLF > 0 Then
									TypeRetour = CRLF
									TypeRetourOct = 2
								ElseIf NombreLF > 0 Then
									TypeRetour = LF
									TypeRetourOct = 1
								ElseIf NombreCR > 0 Then
									TypeRetour = CR
									TypeRetourOct = 1
								Else
									TypeRetour = ""
									TypeRetourOct = 0
								End if
				
								Dim Pos_CRLF_Avant as integer = InstrREV(Texte_Avant, TypeRetour)
								if Pos_CRLF_Avant < 1 Then Pos_CRLF_Avant = 0
								Dim NombreCaractere_Avant as integer = abs(Pos_CRLF_Avant - UserEdit_Pos)
								
								Dim PosCRLF_Apres as integer = Instr(Texte_Apres, TypeRetour)
								if PosCRLF_Apres < 1 Then PosCRLF_Apres = 0
								Dim NombreCaractere_Apres as integer = PosCRLF_Apres
								
					
								
								
								UserEdit_Pos = UserEdit_Pos - (PosCRLF_Apres + Pos_CRLF_Avant + TypeRetourOct)
								if UserEdit_Pos > Len(TEXTE) Then UserEdit_Pos = Len(TEXTE)
								if UserEdit_Pos < 1 Then UserEdit_Pos = 0
								
							End if
							IF ToucheRecupere = CPCDOS_INSTANCE.SYSTEME_INSTANCE.KEY_DOWN Then 
							
								DIM TEXTE as String = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).Texte
								Dim Texte_Avant as String = mid(TEXTE, 1, UserEdit_Pos)
								Dim Texte_Apres as String = mid(TEXTE, UserEdit_Pos)
								Dim NombreCRLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CRLF)
								Dim NombreCR as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CR)
								Dim NombreLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, LF)

								Dim TypeRetour as String
								Dim TypeRetourOct as integer
								Dim NombreLignes as integer
								
								IF NombreCRLF > 0 Then
									TypeRetour = CRLF
									TypeRetourOct = 2
								ElseIf NombreLF > 0 Then
									TypeRetour = LF
									TypeRetourOct = 1
								ElseIf NombreCR > 0 Then
									TypeRetour = CR
									TypeRetourOct = 1
								Else
									TypeRetour = ""
									TypeRetourOct = 0
								End if
				
								Dim NombreCaractere_Avant as integer 	
								Dim NombreCaractere_Apres as integer
								Dim Pos_CRLF_Avant as integer = InstrREV(Texte_Avant, TypeRetour)
								IF Pos_CRLF_Avant = 0 Then 
									Pos_CRLF_Avant = UserEdit_Pos ' Y'a pas de CRLF donc on est au debut
									NombreCaractere_Avant = (UserEdit_Pos - TypeRetourOct) - 1
								ELSE
									Pos_CRLF_Avant += TypeRetourOct*2
									NombreCaractere_Avant = abs(UserEdit_Pos - Pos_CRLF_Avant)
								End if
								
								
								
								Dim PosCRLF_Apres as integer = Instr(Texte_Apres, TypeRetour)
								
								If PosCRLF_Apres > 0 Then ' Uniquement s'il y a un CRLF a la fin. Autrement on zappe!
									NombreCaractere_Apres = PosCRLF_Apres
									
									
									UserEdit_Pos = (NombreCaractere_Avant + NombreCaractere_Apres + TypeRetourOct) + UserEdit_Pos 
									
									if UserEdit_Pos > Len(TEXTE) Then UserEdit_Pos = Len(TEXTE)
								End if
							End if


							' Jamais supperieur +1 au texte
							Taille_Texte = Len(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).Texte)
							IF UserEdit_Pos > Taille_Texte Then UserEdit_Pos = Taille_Texte
							
							' Positionner le curseur!
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).PROP_TYPE.UserEdit_Pos = UserEdit_Pos
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).PROP_TYPE.Pos_User_New = true
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).PROP_TYPE.Move_Keyb = true
							
							
							' Mettre a jour graphiquement
							CPCDOS_INSTANCE.SCI_INSTANCE.IUG_Updater(CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1))
				
							' Et on vide le buffer que ca ne se repete pas
							ToucheRecupere = ""
							InkeyRecup = true
							
							Continue While
						else
						
							
						End if
					End if
				End if
			End if

			' Faire clignoter le textebox FOCUS
			IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox Then
				
				Dim EstDifferent as boolean = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).Affiche_EditBar
				
				' Switch entre TRUE et FALSE toutes les 1 secondes
				CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX).Affiche_EditBar = CPCDOS_INSTANCE.TIMING_500MS
				
				' Mettre a jour graphiquement
				CPCDOS_INSTANCE.SCI_INSTANCE.IUG_Updater(CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1))
			End if
			
			
			' Y'a quelque chose dans le buffer du clavier
			IF NOT ToucheRecupere = "" Then
				InkeyRecup = true
			
				' ****************************************************************************
				' ** E V E N E M E N T S  S A N S   I N T E R A C T I O N S   D I R E C T S **
				' ****************************************************************************
				
				Dim Pret_Pour_Evenement as Boolean = FALSE
				Dim Index_Focus_OBJ 	as integer 	= 0
				Dim _CLE_OBJ_ 			as Double 	= 0

				Dim Nom_Objet 			as String 	= ""
				Dim Texte_Obj 			as String 	= ""
				Dim Fichier_evenement 	as String 	= ""
				
				DIM Evenement_A_Executer as String
				
				' On est deja focus sur une picturebox
				IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.PictureBox Then
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement

					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Index_Focus_OBJ).Texte
						
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
					
					' On est deja focus sur un bouton
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.Bouton Then
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(Index_Focus_OBJ).Texte
						
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
					
					' On est deja focus sur un Textebloc
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBlock Then
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(Index_Focus_OBJ).Texte
						
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
					
					
					' TexteBox
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox Then
					
					DIM PasDeINKEY as boolean = FALSE
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Compatibilite 
					' IF ToucheRecupere = CR Then ToucheRecupere = CRLF
					' IF ToucheRecupere = LF Then ToucheRecupere = CRLF
					
					
					
					' Le multi-ligne est desactive
					IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.Multi_Lignes = FALSE Then
						IF ToucheRecupere = CR Then PasDeINKEY = TRUE
						IF ToucheRecupere = LF Then PasDeINKEY = TRUE
					End if
					
					Dim console_avant_ligne as String
					
					IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.Editable = TRUE Then
					
						' Des qu'on tape au clavier, on affiche la barre
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Affiche_EditBar = TRUE

						Dim Texte_Avant as String 
						Dim Texte_Apres as String 

						
						if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Texte = "" Then
							Texte_Avant = ""
							Texte_Apres = ""
						Else
							' On decoupe le texte selon la position du curseur utilisateur
							Texte_Avant = Mid(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Texte, 1, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.UserEdit_Pos)
							Texte_Apres = Mid(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Texte, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.UserEdit_Pos + 1)
						End if
						
						' Touche BackSpace on supprime le caractere AVANT la position du curseur
						IF ToucheRecupere = TOUCHE_BACK Then
							' Effacer + deplacer le curseur uniquement si y'a du texte..  ogique
						
							if NOT Texte_Avant = "" Then
								Texte_Avant = Mid(Texte_Avant, 1, Len(Texte_Avant) - 1)
								CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.UserEdit_Pos -= 1
							End if
						
						' Touche SUPPR on supprime le caractere APRES la position du curseur
						ElseIf ToucheRecupere = TOUCHE_SUPPR Then
							
							' Effacer (ne pas deplacer le curseur) uniquement si y'a du texte.. logique encore une fois
							if NOT Texte_Apres = "" Then
								Texte_Apres = Mid(Texte_Apres, 2, Len(Texte_Apres))
							End if
						Else
							IF PasDeINKEY = FALSE Then ' Si la touche ENTRE n'est PAS pressee et qu'on est en multi/mono ligne
								' Ajouter la touche pressee !
								Texte_Avant += ToucheRecupere
								CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.UserEdit_Pos += 1
							END IF
						End if

						' Et on assemble les deux parties
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Texte = Texte_Avant & Texte_Apres
						
						console_avant_ligne = Texte_Avant
						
						' Actualiser l'affichage du textebox
						CPCDOS_INSTANCE.SCI_INSTANCE.IUG_Updater(CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.TextBox, Index_Focus_OBJ, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1))

					End if
					
					' Si oui on recupere le nom de l'objet et sa cle numerique
					Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Identification_Objet.Nom
					_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Identification_Objet._CLE_
					Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).Texte
					
					
					' Si on est en mode CONSOLE GRAPHIQUE
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.Console = TRUE Then
						dim touche_entre as boolean = false
						if ToucheRecupere = CR Then touche_entre = true
						if ToucheRecupere = LF Then touche_entre = true
						if ToucheRecupere = CRLF Then touche_entre = true
						
						
						' ' L'utilisateur presse la touche ENTRER
						if touche_entre = true then
						
							
							' ' On recupere la derniere ligne
							dim ligne_exec as string = Mid(console_avant_ligne, InstrREV(console_avant_ligne, ToucheRecupere, len(console_avant_ligne) - 1) + 1)
							
							
							if len(ligne_exec) > 2 then

								' ' Et on execute la ligne recuperee
								CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL(ligne_exec, _CLE_OBJ_, 2, 330, "#GUI_TXTBOX:" & Index_Focus_OBJ)
							
								CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ).PROP_TYPE.UserEdit_Pos = Len(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(Index_Focus_OBJ))
							end if
						End if
					End if
						
					IF NOT Fichier_evenement = "" Then
							' Go !
						Pret_Pour_Evenement = TRUE
					 End if
					 
					' Progressbar
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.ProgressBar Then
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(Index_Focus_OBJ).Texte
						
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
					
					' Checkbox
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.CheckBox Then
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(Index_Focus_OBJ).Texte
						
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
						' On est deja focus sur un bouton
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.Explorer Then
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(Index_Focus_OBJ).Texte
						
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
				ELSEIF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_TYPE = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.Fenetre Then
					' Autrement si on est focus uniquement sur une fenetre
					
					' Recuperer l'index et le fichier evenement
					Index_Focus_OBJ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.POSITION(1)).OBJET_FOCUS_INDEX
					Fichier_evenement = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(Index_Focus_OBJ).PROP_TYPE.Fichier_evenement
					
					' Verifier s'il y a un ficheir evenement
					IF NOT Fichier_evenement = "" Then
					
						' Si oui on recupere le nom de l'objet et sa cle numerique
						Nom_Objet = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(Index_Focus_OBJ).Identification_Objet.Nom
						_CLE_OBJ_ = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(Index_Focus_OBJ).Identification_Objet._CLE_
						Texte_obj  = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(Index_Focus_OBJ).Titre
						' Go !
						Pret_Pour_Evenement = TRUE
					End if
				End if
				
				' Si un evenement est pret a etre execute, alors on l'execute!
				IF Pret_Pour_Evenement = TRUE Then
				
					dim Retour_str as String = ""
					' Si c'est la touche ENTRER
					if ToucheRecupere = CRLF OR ToucheRecupere = CR OR ToucheRecupere = LF Then
						Evenement_A_Executer = "KeyEnter"
						if NOT instr(CPCDOS_INSTANCE.SCI_INSTANCE.Event_Liste_Noire, Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "(1)") > 0 Then
							
											
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Appel d'un evenement graphique (" & Nom_Objet & " CLE:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALEUR) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
								else
									DEBUG("[SCI] Calling graphical event (" & Nom_Objet & " KEY:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALUE) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
								End if
							end if
							
							' Enlever le CR/LF a la fin
							Texte_obj = Mid(Texte_obj, 1, len(Texte_obj) - len(ToucheRecupere))
							
							if CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("##FONCTION=:" & Fichier_evenement & _
												":=##/F:" & Nom_Objet & "." & Evenement_A_Executer & "(" & Texte_obj & ")", _CLE_OBJ_, 2, 0, "")  _
												= "ERR_050" Then
								CPCDOS_INSTANCE.SCI_INSTANCE.Event_Liste_Noire += Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "(1);"
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
									DEBUG("[SCI] BLACK LIST EVENT " & Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "(1)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
								End if
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] FIN de l'evenement graphique (" & Nom_Objet & " CLE:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALEUR) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
								else
									DEBUG("[SCI] END graphical event (" & Nom_Objet & " KEY:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALUE) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
								End if
							end if
						End if ' black list?
					End if ' CRLF
					
					Evenement_A_Executer = "KeyPress"
					if NOT instr(CPCDOS_INSTANCE.SCI_INSTANCE.Event_Liste_Noire, Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "()") > 0 Then
						
										
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Appel d'un evenement graphique (" & Nom_Objet & " CLE:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "() Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							else
								DEBUG("[SCI] Calling graphical event (" & Nom_Objet & " KEY:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "() Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							End if
						end if
					
						if CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("##FONCTION=:" & Fichier_evenement & _
											":=##/F:" & Nom_Objet & "." & Evenement_A_Executer & "(" & ToucheRecupere & ")", _CLE_OBJ_, 2, 0, "")  _
											= "ERR_050" Then
							CPCDOS_INSTANCE.SCI_INSTANCE.Event_Liste_Noire += Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "();"
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								DEBUG("[SCI] BLACK LIST EVENT " & Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "()", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							End if
						End if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] FIN de l'evenement graphique (" & Nom_Objet & " CLE:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "() Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							else
								DEBUG("[SCI] END graphical event (" & Nom_Objet & " KEY:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "() Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							End if
						end if
					End if ' black list?
					
					if NOT instr(CPCDOS_INSTANCE.SCI_INSTANCE.Event_Liste_Noire, Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "(1)") > 0 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Appel d'un evenement graphique (" & Nom_Objet & " CLE:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALEUR) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							else
								DEBUG("[SCI] Calling graphical event (" & Nom_Objet & " KEY:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALEUR) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							End if
						end if
						if CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CpcdosCP_SHELL("##FONCTION=:" & Fichier_evenement & _
											":=##/F:" & Nom_Objet & "." & Evenement_A_Executer & "()", _CLE_OBJ_, 2, 0, "") _
										= "ERR_050" Then
										
							CPCDOS_INSTANCE.SCI_INSTANCE.Event_Liste_Noire += Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "(1);"
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								DEBUG("[SCI] BLACK LIST EVENT " & Fichier_evenement & "->" & Nom_Objet & ":" & Evenement_A_Executer & "(1)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							End if
						End if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] FIN de l'evenement graphique (" & Nom_Objet & " CLE:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALEUR) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							else
								DEBUG("[SCI] END graphical event (" & Nom_Objet & " KEY:" & HEX(_CLE_OBJ_, 8) & ") --> " & Evenement_A_Executer & "(VALEUR) Source '" & Fichier_evenement & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SCI_INSTANCE.RetourVAR)
							End if
						end if
					End if ' Black list?
				End if
			
			End if
			
			Presente = CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpc_GetMouse(Pos_X, Pos_Y, Scroll_Weel, TypeClic, Clip)
			
			if Presente <> 0 Then
				Dim Message_erreur as string = ERRAVT("ERR_060", 0)
				DEBUG("[SCI] " & Message_erreur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
			else
				' Si un bouton de la souris est bien presse!
				IF (TypeClic = 1) OR (TypeClic = 2) OR (TypeClic = 4) Then
				
					' Si la fenetre n'est pas en etat de deplacement
					IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT = 0 Then
						
						 If(TypeClic = 2) Then ' DESACTIVATED


							' Verifier si le menu contextuel est dejà ouvert
							if CPCDOS_INSTANCE.SCI_INSTANCE.ContextMenu_IsOpen = false Then

								' Creer menu contextuel
								CPCDOS_INSTANCE.SCI_INSTANCE.creer_ContextMenu(Pos_X - 5, Pos_Y - 5)
							End if
						else

							CPCDOS_INSTANCE.SCI_INSTANCE.ContextMenu_IsOpen = false
							CPCDOS_INSTANCE.SCI_INSTANCE.Interaction_SOURIS_FENETRE(Pos_X, Pos_Y, TypeClic)
		
						End if
					else

						' Si la souris a bouge
						IF NOT CPCDOS_INSTANCE.SCI_INSTANCE.A_POS_X = Pos_X OR NOT CPCDOS_INSTANCE.SCI_INSTANCE.A_POS_Y = POS_Y Then
							
							ScreenLock
							' On stock les anciennes positions de la souris
							CPCDOS_INSTANCE.SCI_INSTANCE.A_POS_X = Pos_X
							CPCDOS_INSTANCE.SCI_INSTANCE.A_POS_Y = Pos_Y
							
							' Actualiser le fond
							CPCDOS_INSTANCE.SCI_INSTANCE.ActualiserGUI(3, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT)
							
							' Deplacer la fenetre relatif a la position d'origine et de la souris
							CPCDOS_INSTANCE.SCI_INSTANCE.DeplacerFenetre_TO_POS(Pos_X - CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RELATIF_X, Pos_Y - CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RELATIF_Y)
							
							ScreenUnlock
							' doevents(0) ' 1 millisecondes
							CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video(Pos_X, Pos_Y, Presente)
						End if
					End if ' Autrement on fait rien
				else
					' Si le bouton est relache
					IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT > 0 Then
						ScreenLock
						' Si la fenetre etait en deplacement
						Flip 3, 2
						
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT = 0
						CPCDOS_INSTANCE.SCI_INSTANCE.ActualiserGUI(0, 0)
					
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RELATIF_X = 0
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RELATIF_Y = 0
						
						ScreenUnlock
						' doevents(0) ' 1 millisecondes
						
						' Si la fenetre est pas en deplacement mais les positions changes
					ElseIF NOT CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT > 0 Then
					
						' Ici ou les principales interactions utilisateur graphiques se font !
						IF Ancien_X <> Pos_X OR Ancien_Y <> Pos_Y OR Ancien_Clic <> TypeClic OR Ancien_Scroll <> Scroll_Weel Then
							CPCDOS_INSTANCE.SCI_INSTANCE.Interaction_SOURIS_FENETRE(Pos_X, Pos_Y, TypeClic)
						End if
					End if
				End if
			end if
			
			'  ********* F I N  *********
		END SCOPE
		end if
		
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function


Function THREAD_RefreshGUI_Elements Alias "THREAD_RefreshGUI_Elements" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error

	Dim Etat_Thread as uinteger
	Dim EN_VIE as boolean = true
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	Dim Compteur as uinteger
	
	Dim _OSID as uinteger			= thread_struct.OS_ID
	
	while(EN_VIE)
		Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

		if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
		if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
		if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
		
		Compteur += 1
		
		SCOPE
			' ********* D E B U T  *********
			Dim Elements_Trouves as integer = 0
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_TEXTBLOCK > 0 Then
				' Actualiser toutes les TextBlock
				For _INDEX_ as integer = 0 to CPCDOS_INSTANCE._MAX_GUI_TEXTBLOCK
					
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(_INDEX_).Identification_Objet.OS_id = _OSID Then
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(_INDEX_).IUG_UPDATER > 0 then 
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(_INDEX_).THREAD_OK = 1
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_TextBlock(_INDEX_, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(_INDEX_).Identification_Objet.Index_FNT_PARENT)
							Elements_Trouves += 1
							if Elements_Trouves >= CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_TEXTBLOCK Then exit for
						End if
					End if
				Next _INDEX_
			end if
			
			Elements_Trouves = 0
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_PROGRESSBAR > 0 Then
				' Actualiser tous les progressbar
				For _INDEX_ as integer = 0 to CPCDOS_INSTANCE._MAX_GUI_PROGRESSBAR
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(_INDEX_).Identification_Objet.OS_id = _OSID Then
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(_INDEX_).IUG_UPDATER > 0 then 
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(_INDEX_).THREAD_OK = 1
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_ProgressBar(_INDEX_, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(_INDEX_).Identification_Objet.Index_FNT_PARENT)
							Elements_Trouves += 1
							if Elements_Trouves >= CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_PROGRESSBAR Then exit for
						End if
					End if
				Next _INDEX_
			End if
			
			
			Elements_Trouves = 0
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_BOUTON > 0 Then
			' Actualiser tous les bouton
				For _INDEX_ as integer = 0 to CPCDOS_INSTANCE._MAX_GUI_BOUTON
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(_INDEX_).Identification_Objet.OS_id = _OSID Then
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(_INDEX_).IUG_UPDATER > 0 then 
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(_INDEX_).THREAD_OK = 1
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_Bouton(_INDEX_, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(_INDEX_).Identification_Objet.Index_FNT_PARENT)
							Elements_Trouves += 1
							if Elements_Trouves >= CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_BOUTON Then exit for
						End if
					End if
				Next _INDEX_
			End if
			
			Elements_Trouves = 0
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_CHECKBOX > 0 Then
				' Actualiser tous checkbox
				For _INDEX_ as integer = 0 to CPCDOS_INSTANCE._MAX_GUI_CHECKBOX
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(_INDEX_).Identification_Objet.OS_id = _OSID Then
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(_INDEX_).IUG_UPDATER > 0 then 
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(_INDEX_).THREAD_OK = 1
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_CheckBox(_INDEX_, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(_INDEX_).Identification_Objet.Index_FNT_PARENT)
							Elements_Trouves += 1
							if Elements_Trouves >= CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_CHECKBOX Then exit for
						End if
					End if
				Next _INDEX_
			End if
			
			Elements_Trouves = 0
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_TEXTBOX > 0 Then
				' Actualiser tous les textbox
				For _INDEX_ as integer = 0 to CPCDOS_INSTANCE._MAX_GUI_TEXTBOX
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(_INDEX_).Identification_Objet.OS_id = _OSID Then
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(_INDEX_).IUG_UPDATER > 0 then 
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(_INDEX_).THREAD_OK = 1
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_TextBox(_INDEX_, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(_INDEX_).Identification_Objet.Index_FNT_PARENT)
							Elements_Trouves += 1
							if Elements_Trouves >= CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_TEXTBOX Then exit for
						End if
					End if
				Next _INDEX_
			End if
			
			Elements_Trouves = 0
			
			if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_EXPLORER > 0 Then
			' Actualiser tous les explorer
				For _INDEX_ as integer = 0 to CPCDOS_INSTANCE._MAX_GUI_EXPLORER
					if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(_INDEX_).Identification_Objet.OS_id = _OSID Then
						IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(_INDEX_).IUG_UPDATER > 0 then 
							CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(_INDEX_).THREAD_OK = 1
							CPCDOS_INSTANCE.SCI_INSTANCE.Creer_Explorer(_INDEX_, CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__EXPLORER(_INDEX_).Identification_Objet.Index_FNT_PARENT)
							Elements_Trouves += 1
							if Elements_Trouves >= CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.RefreshGUI_Elements_EXPLORER Then exit for
						End if
					End if
				Next _INDEX_
			End if
			
			
			'  ********* F I N  *********
			
		END SCOPE
		end if
		
		doevents(100000) ' 100 ms
	wend
	

	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function
			

Function THREAD_IUG_PICTUREBOX  cdecl alias "THREAD_IUG_PICTUREBOX" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer : On local Error Goto Intercept_Error
	
	' ============= PUBLIC VARIABLES =============
	DIM CLE as double = CPCDOS_INSTANCE.Generer_cle(thread_struct.KERNEL_ID, thread_struct.OS_ID, thread_struct.USER_ID, thread_struct.PROC_ID, thread_struct.THREAD_ID)
	
	
	' ============= PUBLIC VARIABLES =============
	

	Dim Etat_Thread as uinteger
	Dim EN_VIE as boolean = true
	Function = CPCDOS_INSTANCE.__THREAD_DEFAUT
	
	doevents(1000)
	
	ENTRER_SectionCritique()

	' Si l'updater est demandee et que le thread n'a pas ete lance
	For Boucle_Picturebox as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_PICTUREBOX
		' doevents(100)
	
		IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).IUG_UPDATER > 0 Then
			IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).THREAD_OK = 0 Then
				' On sait que le thread n'a pas ete lance, donc on cherche le PID de la fenetre parent
				For _INDEX_PID_ as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_FENETRE
					IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).Identification_Objet.Handle_PARENT = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Identification_Objet.handle Then
						

							

						Dim LibererTemps 	as integer = 0
						Dim ACU 			as integer = 0
						Dim temps_precedent as double = timer
						DIM ID_Bitmap 		as integer = CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).IMG_ID
						' On indique dans l'instance que le thread est bien en cours!
						CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).THREAD_OK = 1

						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_TYPE	(ID_Bitmap) = CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.PictureBox
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_PID	(ID_Bitmap) = _INDEX_PID_
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actu_Bitmap_Index	(ID_Bitmap) = Boucle_Picturebox
						
						SORTIR_SectionCritique()
						return CPCDOS_INSTANCE.__THREAD_OK
					end if
				Next _INDEX_PID_
			End if
		End if
	Next Boucle_Picturebox
	
	SORTIR_SectionCritique()
	
						' while(EN_VIE)
							' EN_VIE = false

						
							''Liberer le CPU
							' doevents(0)
							' Etat_Thread = cpinti.gestionnaire_tache.cpinti_etat_thread(1, thread_struct.PROC_ID, thread_struct.THREAD_ID)

							' if Etat_Thread = CPCDOS_INSTANCE.__ARRETE 		Then EN_VIE = FALSE : Exit While ' Arreter le thread
							' if Etat_Thread = CPCDOS_INSTANCE.__EN_ARRET 	Then EN_VIE = FALSE : Exit While ' Arreter le thread
							' if Etat_Thread = CPCDOS_INSTANCE.__EN_PAUSE 	Then Continue While	' Mettre en pause/Sauter le code
							' if Etat_Thread = CPCDOS_INSTANCE.__EN_ATTENTE 	Then Continue While	' Mettre en pause/Sauter le code
							' if Etat_Thread = CPCDOS_INSTANCE.__EN_EXECUTION Then				' Executer le thread normalement
							
							' SCOPE
							''********* D E B U T  *********
							
								' ENTRER_SectionCritique()
								
								''Si le bitmap s'est actualise
								' if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Actualise(ID_Bitmap) = true Then
									
									' IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = TRUE Then 
									
										''L'index de l'objet + index TID parent trouve, on execute!
										' IF CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).Identification_Objet.Handle_PARENT > 0 Then
											'' Tant que son TID est en vie, on continue d'actualiser!
											
											' if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_FPS(temps_precedent, ACU) > 0 Then
												''Afficher le nombre de FPS
												' CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).TEXTE = "OpenGL 3D engine - SOFTWARE RENDERING - VIDEO_PTR:0x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(Boucle_Picturebox).IMG_ID) & " FPS:" & ACU & ".  "

												' ACU = 0
												' temps_precedent = timer
											' else
												' ACU = ACU + 1
											' End if
											
											
											' CPCDOS_INSTANCE.SCI_INSTANCE.IUG_Updater(CPCDOS_INSTANCE.SCI_INSTANCE.GUI_TYPE.PictureBox, Boucle_Picturebox , _INDEX_PID_ )
											' CPCDOS_INSTANCE.SCI_INSTANCE.Blitter_Video()
											
										' else
											''Si son TID est null, on quitte!
											
											' EN_VIE = FALSE
										' End if
									' End if ' GUI_Mode
								' End if
								' SORTIR_SectionCritique()
								

								
							'' ********* F I N  *********
			
							' END SCOPE
							' end if
						' Wend ' while(EN_VIE)
						
					' End if
					
					' if EN_VIE = FALSE Then Return CPCDOS_INSTANCE.__THREAD_OK
				' Next _INDEX_PID_
			' End if
		' End if
	' Next Boucle_Picturebox


	return CPCDOS_INSTANCE.__THREAD_OK
	
	' *** E R R O R   I N T E R C E P T I O N ***
	Intercept_Error:
		cpinti.interception.Erreur_Fatale(Err, Erl, cptr(ZString ptr, Ermn), cptr(ZString ptr, Erfn))
End Function



Function _SCI_Cpcdos_OSx__.IMG_Recuperer_Taille_XY(byref Source as any ptr) as string
	' Cette fonction permet de recuperer la taille en pixel d'un bitmap
	'  du type hhhhXllll
	' Source	= Image source
	'  Retourne Taille en px
	' 			"0" si probleme
	
	Dim As Integer Largeur, Hauteur, bpp, pitch
	Dim As Any Ptr pixdata
	If ImageInfo(Source, Largeur, Hauteur, bpp, pitch, pixdata) = 0 Then
		IMG_Recuperer_Taille_XY = Largeur & "X" & Hauteur
	Else
		IMG_Recuperer_Taille_XY = "0"
	End If
End Function

Function _SCI_Cpcdos_OSx__.IMG_Recuperer_Taille_X(byref Source as any ptr) as integer
	' Cette fonction permet de recuperer la taille en pixel d'un bitmap
	' Source	= Image source
	'  Retourne Taille px en en X
	' 			"0" si probleme
	
	Dim As Integer Largeur, Hauteur, bpp, pitch
	Dim As Any Ptr pixdata
	If ImageInfo(Source, Largeur, Hauteur, bpp, pitch, pixdata) = 0 Then
		IMG_Recuperer_Taille_X = Largeur
	Else
		IMG_Recuperer_Taille_X = 0
	End If
End Function

Function _SCI_Cpcdos_OSx__.IMG_Recuperer_Taille_Y(byref Source as any ptr) as integer
	' Cette fonction permet de recuperer la taille en pixel d'un bitmap
	'  du type hhhhXllll
	' Source	= Image source
	'  Retourne Taille px en Y
	' 			"0" si probleme
	
	Dim As Integer Largeur, Hauteur, bpp, pitch
	Dim As Any Ptr pixdata
	If ImageInfo(Source, Largeur, Hauteur, bpp, pitch, pixdata) = 0 Then
		IMG_Recuperer_Taille_Y = Hauteur
	Else
		IMG_Recuperer_Taille_Y = 0
	End If
End Function

Function _SCI_Cpcdos_OSx__.IMG_Recuperer_bpp(byref Source as any ptr) as integer
	' Cette fonction permet de recuperer le bpp d'un bitmap
	'  du type hhhhXllll
	' Source	= Image source
	'  Retourne (8, 16, 21, 32) bits
	' 			0 si probleme
	
	' IMG_Recuperer_bpp = val(Info_Affichage("0x02"))
	IMG_Recuperer_bpp = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()

End Function

Function _SCI_Cpcdos_OSx__.IMG_Changer_taille_Rapide(byref Source as any ptr, byref Nouveau_IMG as any ptr, Taille_X as integer, Taille_Y as integer, Nouveau_X as integer, Nouveau_Y as integer) as any ptr
	' Cette fonction permet de re-tailler la taille des images sans anti-alliasing
	' Source		= Image source
	' Nouveau_X		= Nouvelle taille en X
	' Nouveau_Y		= Nouvelle taille en Y
	'  Retourne 1 = OK
	'			2 = Coordonne X mauvaise
	'			3 = Coordonne Y mauvaise
	'			4 = Erreur source
	
	ENTRER_SectionCritique()
	
	' Voir pour reecrire cette fonction en assembleur
	Dim Calc_X				as single
	Dim Calc_Y				as single
	
	Dim Boucle_X			as integer
	Dim Boucle_Y			as integer
	Dim Action_X			as integer
	Dim Action_Y			as integer
	Dim Acc_X				as integer
	Dim Acc_Y				as integer
	Dim AccPSET_X			as integer
	Dim AccPSET_Y			as integer

	
	' Verifier si il faut agrandir l'image ou la retrecir
	IF Nouveau_X < Taille_X Then
		' ON retrecit en X
		Action_X = 1
	ElseIF Nouveau_X > Taille_X THEN
		' On agrandit
		Action_X = 2
	Else
		Action_X = 0
		' Change pas
	End if
	IF Nouveau_Y < Taille_Y Then
		' ON retrecit en Y
		Action_Y = 1
	ElseIF Nouveau_Y > Taille_Y THEN
		' On agrandit en Y
		Action_Y = 2
	Else
		' Change pas
		Action_Y = 0
	End if
	
	Calc_Y = ((Taille_Y/Nouveau_Y))
	Calc_X = ((Taille_X/Nouveau_X))
	IF Action_X = 1 Then
		IF Action_Y = 1 Then
			' *** Reduction en X et Y ***
			AccPSET_Y = 0
			For Boucle_Y = 1 to Taille_Y step Calc_Y
				AccPSET_Y = AccPSET_Y + 1
				AccPSET_X = 0
				For Boucle_X = 1 to Taille_X step Calc_X
					AccPSET_X = AccPSET_X + 1
					Put Nouveau_IMG, (AccPSET_X , AccPSET_Y), Source, (Boucle_X, Boucle_Y)-(Boucle_X+1, Boucle_Y+1), PSet
				Next Boucle_X
			Next Boucle_Y
		ElseIF Action_Y = 2 Then 
			' Reduction en X et Agrandissement en Y
			For Boucle_Y = 1 to Nouveau_Y
				AccPSET_X = 0
				For Boucle_X = 1 to Taille_X step Calc_X
					AccPSET_X = AccPSET_X + 1
					Put Nouveau_IMG, (AccPSET_X , Boucle_Y), Source, (Boucle_X, Boucle_Y / (Nouveau_Y/Taille_Y))-(Boucle_X+1, Boucle_Y / (Nouveau_Y/Taille_Y) + 1), PSet
				Next Boucle_X
			Next Boucle_Y
		End if
	ELSEIF Action_X = 2 Then
		IF Action_Y = 2 Then
			' Agrandissement en X et Y
			For Boucle_Y = 1 to Nouveau_Y
				For Boucle_X = 1 to Nouveau_X
					Put Nouveau_IMG, (Boucle_X , Boucle_Y), Source, (Boucle_X / (Nouveau_X/Taille_X), Boucle_Y / (Nouveau_Y/Taille_Y))-(Boucle_X / (Nouveau_X/Taille_X) + 1, Boucle_Y / (Nouveau_Y/Taille_Y) + 1), PSet
				Next Boucle_X
			Next Boucle_Y
		ELSEIF Action_Y = 1 Then
			' Agrandissement en X et Reduction en Y
			AccPSET_Y = 0
			For Boucle_Y = 1 to Taille_Y Step Calc_Y
				AccPSET_Y = AccPSET_Y + 1
				For Boucle_X = 1 to Nouveau_X
					Put Nouveau_IMG, (Boucle_X , AccPSET_Y), Source, (Boucle_X / (Nouveau_X/Taille_X), Boucle_Y)-(Boucle_X / (Nouveau_X/Taille_X) + 1, Boucle_Y+1), PSet
				Next Boucle_X
			Next Boucle_Y
		End IF
	End if	
	Function = Nouveau_IMG
	
	SORTIR_SectionCritique()
	
End function

' Function _SCI_Cpcdos_OSx__.IMG_Changer_taille(byval Source as any ptr, Nouveau_X as integer, Nouveau_Y as integer) as any ptr

Function _SCI_Cpcdos_OSx__.IMG_Changer_taille(byref Source as any ptr, byref Destination as any ptr, Nouveau_X as integer, Nouveau_Y as integer, RegenBitmap as boolean) as any ptr
	' Cette fonction permet de re-tailler la taille des images sans anti-alliasing
	' Source		= Image source
	' Nouveau_X		= Nouvelle taille en X
	' Nouveau_Y		= Nouvelle taille en Y
	'  Retourne 1 = OK
	'			2 = Coordonne X mauvaise
	'			3 = Coordonne Y mauvaise
	'			4 = Erreur source
	
	ENTRER_SectionCritique()
	
	' Voir pour reecrire cette fonction en assembleur
	Dim Calc_X				as single
	Dim Calc_Y				as single
	
	Dim Boucle_X			as single
	Dim Boucle_Y			as single
	Dim Taille_X			as integer
	Dim Taille_Y			as integer
	Dim Action_X			as integer
	Dim Action_Y			as integer
	Dim Acc_X				as integer
	Dim Acc_Y				as integer
	Dim AccPSET_X			as integer
	Dim AccPSET_Y			as integer
	' Recuperer bpp
	Dim bpp_Image_Source 	as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsParPixels(TRUE)

	
	' Recuperer x, y en px
	Dim Taille_Image_Source as string = IMG_Recuperer_Taille_XY(Source)


	IF Taille_Image_Source = "0" Then
		' Impossible de recuperer la taille, le bitmap n'est pas valide
		IMG_Changer_taille = FALSE
		SORTIR_SectionCritique()
		Exit function
	End if
	Taille_X = Val(MID(Taille_Image_Source, 1, instr(Taille_Image_Source, "X")-1))
	Taille_Y = Val(MID(Taille_Image_Source, instr(Taille_Image_Source, "X")+1))
	
	if RegenBitmap = true then
		Destination = ImageCreate(Nouveau_X, Nouveau_Y, RGBA(255, 100, 255, 255), bpp_Image_Source)
	End if
	
	' Verifier si il faut agrandir l'image ou la retrecir
	IF Nouveau_X < Taille_X Then
		' ON retrecit en X
		Action_X = 1
		Calc_X = (Taille_X/(Taille_X-Nouveau_X))*10
	ElseIF Nouveau_X > Taille_X THEN
		' On agrandit en X
		Action_X = 2
		Calc_X = (Nouveau_X/(Nouveau_X-Taille_X))*10
	Else
		Action_X = 0
		' Change pas
	End if
	IF Nouveau_Y < Taille_Y Then
		' ON retrecit en Y
		Action_Y = 1
		Calc_Y = (Taille_Y/(Taille_Y-Nouveau_Y))*10
	ElseIF Nouveau_Y > Taille_Y THEN
		' On agrandit en Y
		Action_Y = 2
		Calc_Y = (Nouveau_Y/(Nouveau_Y-Taille_Y))*10
	Else
		' Change pas
		Action_Y = 0
	End if
	
	Calc_Y = ((Taille_Y/Nouveau_Y))
	Calc_X = ((Taille_X/Nouveau_X))
	
	' P'tite correction!
	if Calc_Y = 0 Then Calc_Y = 1
	if Calc_X = 0 Then Calc_X = 1

	
	IF Action_X = 1 Then
		IF Action_Y = 1 Then
			' *** Reduction en X et Y ***
			AccPSET_Y = 0
			For Boucle_Y = 0 to Taille_Y step Calc_Y
				AccPSET_X = 0
				For Boucle_X = 1 to Taille_X step Calc_X
					Put Destination, (AccPSET_X , AccPSET_Y), Source, (Boucle_X, Boucle_Y)-(Boucle_X+1, Boucle_Y+1), PSet
					AccPSET_X = AccPSET_X + 1
				Next Boucle_X
				AccPSET_Y = AccPSET_Y + 1
			Next Boucle_Y
		ElseIF Action_Y = 2 Then 
			' Reduction en X et Agrandissement en Y
			For Boucle_Y = 0 to Nouveau_Y
				AccPSET_X = 0
				For Boucle_X = 0 to Taille_X step Calc_X
					Put Destination, (AccPSET_X , Boucle_Y), Source, (Boucle_X, Boucle_Y / (Nouveau_Y/Taille_Y))-(Boucle_X+1, Boucle_Y / (Nouveau_Y/Taille_Y) + 1), PSet
					AccPSET_X = AccPSET_X + 1
				Next Boucle_X
			Next Boucle_Y
		End if
	ELSEIF Action_X = 2 Then
		IF Action_Y = 2 Then
			' Agrandissement en X et Y
			For Boucle_Y = 0 to Nouveau_Y
				For Boucle_X = 0 to Nouveau_X
					Put Destination, (Boucle_X , Boucle_Y), Source, (Boucle_X / (Nouveau_X/Taille_X), Boucle_Y / (Nouveau_Y/Taille_Y))-(Boucle_X / (Nouveau_X/Taille_X) + 1, Boucle_Y / (Nouveau_Y/Taille_Y) + 1), PSet
				Next Boucle_X
			Next Boucle_Y
		ELSEIF Action_Y = 1 Then
			' Agrandissement en X et Reduction en Y
			AccPSET_Y = 0

			For Boucle_Y = 0 to Taille_Y Step Calc_Y
				For Boucle_X = 0 to Nouveau_X
					Put Destination, (Boucle_X , AccPSET_Y), Source, (Boucle_X / (Nouveau_X/Taille_X), Boucle_Y)-(Boucle_X / (Nouveau_X/Taille_X) + 1, Boucle_Y+1), PSet
				Next Boucle_X
				AccPSET_Y = AccPSET_Y + 1
			Next Boucle_Y
		End IF
	End if
	
	Function = Destination

	SORTIR_SectionCritique()
End function


Function _SCI_Cpcdos_OSx__.FILE_FORMAT_load_icons() as boolean ' ID : 11111
	' Cette fonction permet de charger les icones graphiques des formats de fichiers :)
	' Bien qu'il soit evident qu'il faut que la commande SYS/ /fileformat-update soit executée

	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] FILE_FORMAT_load_icons() Chargement des icones graphiques.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	else
		DEBUG("[SCI] FILE_FORMAT_load_icons() Loading graphic icon file.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	End if
	
	' Ne pas load si la GUI n'est pas en route
	If CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = False Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] FILE_FORMAT_load_icons() Impossible de charger les icones. Veuillez utiliser cette fonction depuis une interface graphique.'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[SCI] FILE_FORMAT_load_icons() Unable to load icons. Please use this function from GUI.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
		return false
	end if

	
	' Uniquement s'il y a deja des formats
	if CPCDOS_INSTANCE.FORMAT_nombre > 0 Then
		for boucle as integer = 0 to CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_MAX
		
			DEBUG("[SCI] FILE_FORMAT_load_icons() [" & boucle & "] '" & CPCDOS_INSTANCE.FORMAT_Icones_min(boucle) & "' & '" & CPCDOS_INSTANCE.FORMAT_Icones_max(boucle)& " ... ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			
			' Charger les grosses icones
			if NOT CPCDOS_INSTANCE.FORMAT_Icones_max(boucle) = "NULL" Then
				CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_file_icon_MAX_ID(boucle) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.FORMAT_Icones_max(boucle), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)
				
			End if
			
			' Charger les petites icones
			if NOT CPCDOS_INSTANCE.FORMAT_Icones_min(boucle) = "NULL" Then
				CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_file_icon_MIN_ID(boucle) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.FORMAT_Icones_min(boucle), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)
			End if
			
		next boucle
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] FILE_FORMAT_load_icons() Termine!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[SCI] FILE_FORMAT_load_icons() Finished!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
		return true
	else
	
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] FILE_FORMAT_load_icons() Impossible de charger les icones. Veuillez mettre a jour la liste 'sys/ /fileformat-update'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		else
			DEBUG("[SCI] FILE_FORMAT_load_icons() Unable to load icons. Please update list 'sys/ /fileformat-update'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		End if
		return false
	End if
	
	
		
End function




