#print * Explorer
#include once "Cpcdos.bi"

Declare Function 	cpc_mouse_state					cdecl Alias "cpc_mouse_state" 					(param as integer) as integer ' 0:clic 1:posx 2:posy 3:scrool

Function _SCI_Cpcdos_OSx__.Creer_Explorer(_Proprietes as CPCDOS_GUI_INIT__, _index_ as integer, _INDEX_PID_ as integer) as integer
	
	dim Message_erreur as String
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Creer_Explorer() IND:" & _index_ & " [0x" & hex(this._CLE_) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
	end if
	
	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Explorer() Creation de l'explorateur en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Explorer() Graphic explorer creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__EXPLORER(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__EXPLORER(_index_).Initialisation_OK = TRUE
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Explorer() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Explorer() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Incrementer le nombre d'objets present dans la fenetre parent
			this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS + 1	
		
			' Chercher un emplacement libre pour stocker le numero d'index correspondant a l'objet 
			'  pour la restitution graphique des objets dans l'ordre de la creation
			For index_free as integer = 1 to CPCDOS_INSTANCE._MAX_GUI___OBJS
				IF this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "" Then
					this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "EXPLORER:" & _index_
					exit for
				End if
			Next index_free
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Explorer() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Explorer() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Explorer() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Explorer() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		Dim Pos_Fenetre_X 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_X
		Dim Pos_Fenetre_Y 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_Y + this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).SIZ_TITRE
		Dim Siz_Fenetre_X	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_X
		Dim Siz_Fenetre_Y	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_Y
		
		Dim Texte 			as string = this.INST_INIT_GUI.GUI__EXPLORER(_index_).Texte

		Dim Pos_X 			as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).POS_X + Pos_Fenetre_X
		
		Dim Pos_Y 			as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).POS_Y + Pos_Fenetre_Y
		
		Dim Siz_X 			as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).SIZ_X
		Dim Siz_Y 			as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).SIZ_Y
	
		
		Dim AutoSizeIMG		as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.AutoSizeIMG
		
		Dim Couleur_R 		as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Couleur_CTN_R
		Dim Couleur_V 		as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Couleur_CTN_V
		Dim Couleur_B 		as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Couleur_CTN_B
		
		Dim Couleur_FNT_R as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Couleur_FNT_R
		Dim Couleur_FNT_V as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Couleur_FNT_V
		Dim Couleur_FNT_B as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Couleur_FNT_B
		
		Dim Couleur_ALPHA 	as integer
		
		Dim Image 			as String = this.INST_INIT_GUI.GUI__EXPLORER(_index_).Image
		Dim Image_Ancien	as String = this.INST_INIT_GUI.GUI__EXPLORER(_index_).Image_Ancien
	
		
		Dim Bordure as integer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).PROP_TYPE.Bordure
		
		Dim Lines_array(64) as string
		dim Espacement as integer = 2
	
		Dim instance_FICHER_DOSSIER_ as _FICHER_DOSSIER_ 
		
		
		
		' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("Explorer:" & Texte, Pos_X , Pos_Y, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
		Scope
			Texte = Rtrim(Texte)
			
			Dim Affichage_Breve as boolean
			Dim Source 			as String
			Dim CPY_Source		as String 
			
			Dim SourceRecherche as String
			Dim Source_exe_path as String
			
			
			Source 			= Rtrim(Rtrim(Ltrim(Ltrim(Texte, CHR(09))), CHR(09)))
			CPY_Source		= CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Source, TRUE, TRUE, FALSE)
			
			
			
			IF Instr(CPY_Source, "\") > 0 Then
				' Ex: REP/ Dossier\    ou   REP/ Dossier\*.*
				'  --> REP/ Dossier\*.*
				SourceRecherche = Mid(Source, InstrREV(CPY_Source, "\") +1)
				
				If SourceRecherche = "" Then SourceRecherche = "\*.*"
				
				IF NOT Instr(CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(SourceRecherche, TRUE, TRUE, FALSE), "_") > 0 Then
					SourceRecherche = "\*.*"
				Else
					Source = Mid(Source, 1, InstrREV(CPY_Source, "\") -1)
					IF NOT Instr(SourceRecherche, "\") > 0 Then SourceRecherche = "\" & SourceRecherche
				End if
	
			Else
				' Ex: REP/ .
				' --> REP/ .\*.*
				IF Len(CPY_Source) = 1 Then
					IF CPY_Source = "." Then
						SourceRecherche = ".\*.*"
						Source = ""
					Else
						SourceRecherche = ".\*.*"
						Source = ""
					End if
				Else
					' EX: REP/
					' --> REP/ *.*
					SourceRecherche = "\*.*"
					' Source = ""
				End if
			End if
			
			' Si rien n'a ete precise
			if Source = "" Then
				' Si on ne precise rien, alors c'est le dossier courant dans l'executable
				Source_exe_path = UCASE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("_EXE_PATH_F_", 2, _CLE_))
				
				' Verifier si la variable existe
				if Source_exe_path = Ucase(CPCDOS_INSTANCE._CONTENU_IMPROPABLE) Then Source_exe_path = ""
				
				' Optimisation
				IF NOT Source_exe_path = "" Then
					Source = Source_exe_path
					Source = CPCDOS_INSTANCE.SYSTEME_INSTANCE.check_NomAutorise(Source_exe_path, TRUE, TRUE, FALSE)
				
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[CpcdosC+] Recuperation du contenu du repertoire '" & Source & "' avec les filtres '" & SourceRecherche & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						Else
							DEBUG("[CpcdosC+] Getting '" & Source & "' directory content with '" & SourceRecherche & "' filters ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					END IF

				Else
					Source = "."
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[CpcdosC+] Recuperation du contenu du repertoire CPCDOS avec les filtres '" & SourceRecherche & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						Else
							DEBUG("[CpcdosC+] Getting CPCDOS directory content with '" & SourceRecherche & "' filters ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					END IF
				End if
			Else
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[CpcdosC+] Recuperation du contenu du repertoire '" & Source & "' avec les filtres '" & SourceRecherche & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					Else
						DEBUG("[CpcdosC+] Getting '" & Source & "' directory content with '" & SourceRecherche & "' filters ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				END IF
			End if
		
		
			scope
				
				Dim Resultat as Boolean = CPCDOS_INSTANCE.SYSTEME_INSTANCE.lister_Repertoire(Source, SourceRecherche, instance_FICHER_DOSSIER_)
				
				If instance_FICHER_DOSSIER_.Est_OK = False Then
					' ERREUR
					DEBUG("0", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
					
					Dim Message_erreur as String = ERRAVT("ERR_064", 0)
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[CpcdosC+] " & Message_erreur & ". '" & Texte & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					Else
						DEBUG("[CpcdosC+] " & Message_erreur & ". '" & Texte & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
					
				Else
					Dim TailleCH 		as integer
					Dim TailleFichier 	as uinteger
					Dim TailleFinal 	as uinteger
					Dim TexteTaille 	as String
					Dim as String octets, kilo, mega, giga, tera
					Dim Resultat_chaine as String = ""
					
					Dim TexteTaille_FINAL as String

					' Afficher la bonne taille (Octets, Kilos, Mega, Giga)
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						octets = "o"
						kilo = "ko"
						mega = "mo"
						giga = "go"
						tera = "to"
					Else
						octets = "b"
						kilo = "kb"
						mega = "mb"
						giga = "gb"
						tera = "tb"
					End if
					
					for b as integer = 1 to instance_FICHER_DOSSIER_.nb_Elements
		
						' Positionnement label
						dim Pos_lst_Y as integer = (b * 8) + Espacement
						
						if instance_FICHER_DOSSIER_.attributs_Elements(b).EstUnDossier = True Then
						
							TexteTaille = ""
	
							' Dossier en cours
							Lines_array(b) = "D:" & instance_FICHER_DOSSIER_.liste_Elements(b)
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("D :" & instance_FICHER_DOSSIER_.liste_Elements(b) , Pos_X , Pos_Y + Pos_lst_Y, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
							
						Else

							
							' Recuperer la taille du fichier et le convertir en KiloOctets
							TailleFichier = instance_FICHER_DOSSIER_.attributs_Elements(b).taille
							
							' Incrmenter la taille total
							TailleFinal += TailleFichier
							
							Scope 

								' Attribuer l'unite correspondante a la taille
								IF TailleFichier < 1 Then
									' Fichier VIDE
									TexteTaille = "0 " & octets
								Else
									IF (TailleFichier/1024^4) < 1 Then ' Tera
										IF (TailleFichier/1024^3) < 1 Then ' Giga
											IF (TailleFichier/1024^2) < 1 Then ' Mega
												IF (TailleFichier/1024) < 1 Then ' Kilo
													TexteTaille = TailleFichier & " " & octets ' OCTETS
												Else
													TexteTaille = Left(str(TailleFichier/1024), instr(str(TailleFichier/1024), ".") + 3) & " " & kilo ' KILOS
												End if
											Else
												TexteTaille = Left(str(TailleFichier/1024^2), instr(str(TailleFichier/1024^2), ".") + 3) & " " & mega ' MEGA
											End if
										Else
											TexteTaille = Left(str(TailleFichier/1024^3), instr(str(TailleFichier/1024^3), ".") + 3) & " " & giga ' GIGA
										End if
									Else
										TexteTaille = Left(str(TailleFichier/1024^4), instr(str(TailleFichier/1024^4), ".") + 3) & " " & tera ' TERA
									End if
								End if
							End Scope

							' Fichier en cours
							Lines_array(b) = "F:" & instance_FICHER_DOSSIER_.liste_Elements(b)
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("F :" & instance_FICHER_DOSSIER_.liste_Elements(b) , Pos_X , Pos_Y + Pos_lst_Y, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)

						end if
						
						' ** Ajouter les autres attributs **
						
						' Lecture Seule
						' if instance_FICHER_DOSSIER_.attributs_Elements(b).attrib_ReadOnly = True Then Resultat_chaine += ",r"
						
						' Cache
						' if instance_FICHER_DOSSIER_.attributs_Elements(b).attrib_Hidden = True Then Resultat_chaine += ",h"
						
						' Systeme
						' if instance_FICHER_DOSSIER_.attributs_Elements(b).attrib_System = True Then Resultat_chaine += ",s"
						
						' Archive
						' if instance_FICHER_DOSSIER_.attributs_Elements(b).attrib_Archive = True Then Resultat_chaine += ",a"
						
						' Normal
						' if instance_FICHER_DOSSIER_.attributs_Elements(b).attrib_Normal = True Then Resultat_chaine += ",n"

						' Taille du fichier
						' TexteTaille

					next b
					
					
					
					' Attribuer l'unite correspondante a la taille
					IF TailleFinal < 1 Then
						' Fichier VIDE
						TexteTaille_FINAL = "0 " & octets
					Else
						IF (TailleFinal/1024^4) < 1 Then ' Tera
							IF (TailleFinal/1024^3) < 1 Then ' Giga
								IF (TailleFinal/1024^2) < 1 Then ' Mega
									IF (TailleFinal/1024) < 1 Then ' Kilo
										TexteTaille_FINAL = TailleFinal & " " & octets ' OCTETS
									Else
										TexteTaille_FINAL = Left(str(TailleFinal/1024), instr(str(TailleFinal/1024), ".") + 3) & " " & kilo ' KILOS
									End if
								Else
									TexteTaille_FINAL = Left(str(TailleFinal/1024^2), instr(str(TailleFinal/1024^2), ".") + 3) & " " & mega ' MEGA
								End if
							Else
								TexteTaille_FINAL = Left(str(TailleFinal/1024^3), instr(str(TailleFinal/1024^3), ".") + 3) & " " & giga ' GIGA
							End if
						Else
							TexteTaille_FINAL = Left(str(TailleFinal/1024^4), instr(str(TailleFinal/1024^4), ".") + 3) & " " & tera ' TERA
						End if
					End if

					' Resultats totaux
					' instance_FICHER_DOSSIER_.nb_Dossiers
					' instance_FICHER_DOSSIER_.nb_Fichiers
					' instance_FICHER_DOSSIER_.nb_Elements
					' TexteTaille_FINAL


				End if
			End scope
		End scope
		
		
		' Checker le clic !
		' Clic GAUCHE
		if cpc_mouse_state(0) = 1 Then
		
			' Recuperer la position du curseur RELATIF a la position du picturebox
			Dim Position_clic_X as integer = cpc_mouse_state(1) - Pos_X
			Dim Position_clic_Y as integer = cpc_mouse_state(2) - Pos_Y
			
			for boucle as integer = 0 to 64
				if Position_clic_Y > boucle * 8 AND Position_clic_Y < boucle * 8 + 8 + espacement Then ' Si clic dans la zone
				
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("Debug : " & Mid(Lines_array(boucle), 1, 2), Pos_X , Pos_Y + (instance_FICHER_DOSSIER_.nb_Elements*8) + Espacement + 24, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
					
					Dim element as String = Mid(Lines_array(boucle), 3)
					If Mid(Lines_array(boucle), 1, 2) = "F:" Then 
						' FICHIER
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("Clic FICHIER : " & element, Pos_X , Pos_Y + (instance_FICHER_DOSSIER_.nb_Elements*8) + Espacement + 12, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
					else
						' DOSSIER
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("Clic DOSSIER : " & element, Pos_X , Pos_Y + (instance_FICHER_DOSSIER_.nb_Elements*8) + Espacement + 12, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
					End if
				End if
			Next boucle
		
			' Afficher la position du clic
			' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran("Clic!: X:" & Position_clic_X & " Position_clic_Y:" & Position_clic_Y, Pos_X , Pos_Y + (instance_FICHER_DOSSIER_.nb_Elements*8) + Espacement + 12, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
			
		End if
		
	end if
	
	Creer_Explorer = this.INST_INIT_GUI.GUI__EXPLORER(_index_).Identification_Objet.handle ' OK
	
	this.INST_INIT_GUI.GUI__EXPLORER(_index_).BIT_ORG = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
	
End function
