#print * TexteBloc
#include once "Cpcdos.bi"

Function _SCI_Cpcdos_OSx__.Creer_TextBlock(_index_ as integer, _INDEX_PID_ as integer) as integer
	

	DEBUG("[SCI] Creer_TextBlock() IND:" & _index_ & " [0x" & hex(this._CLE_) & "] '" & this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).identification_objet.Nom & "' --> window '" & this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).identification_objet.Nom & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)


	
	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_TextBlock() Creation du textebloc en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_TextBlock() Graphic textblock creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).Initialisation_OK = TRUE
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Incrementer le nombre d'objets present dans la fenetre parent
			this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS + 1	
		
			' Chercher un emplacement libre pour stocker le numero d'index correspondant a l'objet 
			'  pour la restitution graphique des objets dans l'ordre de la creation
			For index_free as integer = 1 to CPCDOS_INSTANCE._MAX_GUI___OBJS
				IF this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "" Then
					this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "TEXTBLOCK:" & _index_
					exit for
				End if
			Next index_free
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		Dim Pos_Fenetre_X 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_X
		Dim Pos_Fenetre_Y 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_Y' + this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).SIZ_TITRE
		Dim Siz_Fenetre_X	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_X
		Dim Siz_Fenetre_Y	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_Y
		
		Dim Texte 			as string = CPCDOS_INSTANCE.remplacer_Variable_DYN(this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).TEXTE, this._CLE_, this.RetourVAR)
		
		Dim Pos_X 			as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).POS_X + Pos_Fenetre_X
		
		Dim Pos_Y 			as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).POS_Y + Pos_Fenetre_Y
		
		Dim Siz_X 			as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).SIZ_X
		Dim Siz_Y 			as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).SIZ_Y
		
		Dim AutoSizeIMG		as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.AutoSizeIMG
		
		Dim Couleur_FOND_R 		as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Couleur_CTN_R
		Dim Couleur_FOND_V 		as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Couleur_CTN_V
		Dim Couleur_FOND_B 		as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Couleur_CTN_B
		
		Dim Couleur_FNT_R as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Couleur_FNT_R
		Dim Couleur_FNT_V as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Couleur_FNT_V
		Dim Couleur_FNT_B as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Couleur_FNT_B
		
		Dim BORDURE 		as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Bordure
		Dim Fond_Couleur 	as integer = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.Fond_Couleur 
		
		' Nombre de retour chariot
		Dim NombreCRLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CRLF)
		Dim NombreCR as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CR)
		Dim NombreLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, LF)

		' Generer les proprietes par defaut d'un menu contextuel d'un objet graphique
		this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).PROP_TYPE.OBJ_context_menu = CPCDOS_INSTANCE.SCI_INSTANCE.generer_ContextMenu_properties(GUI_TYPE.Textblock, _index_)
	
		Dim TypeRetour as String
		Dim TypeRetourOct as integer
		Dim NombreLignes as integer
		
		IF NombreCRLF > 0 Then
			NombreLignes = NombreCRLF + 1
			TypeRetour = CRLF
			TypeRetourOct = 2
		ElseIf NombreLF > 0 Then
			NombreLignes = NombreLF + 1
			TypeRetour = LF
			TypeRetourOct = 1
		ElseIf NombreCR > 0 Then
			NombreLignes = NombreCR + 1
			TypeRetour = CR
			TypeRetourOct = 1
		Else
			NombreLignes = 1
			TypeRetour = ""
			TypeRetourOct = 0
		End if
		
		Dim TableauLignes(NombreLignes) as string
		Dim LaPlusGrand 				as integer
		
		IF TypeRetourOct > 0 Then
			Dim PositionDebut as integer = 1
			Dim PositionFin as integer = Instr(Texte, TypeRetour)
			For Boucle_texte as integer = 1 to NombreLignes

				TableauLignes(Boucle_texte) = Mid(Texte, PositionDebut, (PositionFin-1) - PositionDebut)
				
				' Si la ligne est la plus grande alors on la stocke
				IF Len(TableauLignes(Boucle_texte)) > LaPlusGrand Then LaPlusGrand = Len(TableauLignes(Boucle_texte))
				
				PositionDebut = PositionFin + TypeRetourOct
				PositionFin = Instr(PositionDebut, Texte, TypeRetour)
			
			Next Boucle_texte
		End if

		
		IF AutoSizeIMG = 0 Then
			' AutoSizeIMG = 0 : Normal
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Aucune modification de la taille du textebloc(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] No modifications about size of textbloc(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		ElseIF AutoSizeIMG = 1 Then
			' Dimentions du textebloc = dimentions du texte
	
			' Si le CRLF est present
			IF NombreCRLF > 0 Then
				SIZ_Y = 8 + NombreCRLF * 8 ' ---> Multiplier taille du caractere par le nombre de retour de lignes (Revoir avec l'UTF8)
			ElseIf NombreLF > 0 Then
				SIZ_Y = 8 + NombreLF * 8 ' ---> Multiplier taille du caractere par le nombre de retour de lignes (Revoir avec l'UTF8)
			ElseIf NombreCR > 0 Then
				SIZ_Y = 8 + NombreCR * 8 ' ---> Multiplier taille du caractere par le nombre de retour de lignes (Revoir avec l'UTF8)
			Else
				SIZ_Y = 4 + 8 ' Aucun retour chariot, donc juste la taille Y du caractere ASCII (Et UTF8 a revoir!)
			End if
			

			SIZ_Y = SIZ_Y + 8
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Ajustation du textebloc selon les dimentions de l'image source de " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] textblock ajusting according source image dimensions " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			IF NombreLignes > 0 Then
				SIZ_X = 6 + LaPlusGrand * 8
				this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).SIZ_X = SIZ_X
			Else
				this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).SIZ_X = LEN(TEXTE) * 8
			End if
			
			this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).SIZ_Y = SIZ_Y ' ---> Multiplier taille du caractere par le nombre de retour de lignes (Revoir avec l'UTF8)

			
		ElseIF AutoSizeIMG = 2 Then
			' Dimentions du textebloc vectorisable pour reduire ou grossir du texte (peut devenir tres moche..)

		End if
		

		' Si il y a un fond de couleurs (COL:1)
		if Fond_Couleur = TRUE Then
			Line (Pos_X, Pos_Y)- step (Siz_X, Siz_Y), RGB(Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B), BF
		End if
		
		' Afficher le texte
		IF len(Texte) > 0 Then
			Dim Position_Texte_X as integer = Pos_X
			Dim Position_Texte_Y as integer = Pos_Y
						
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Position_Texte_X & "," & Position_Texte_Y & ": Texte du Textebloc '" & Texte & "' RVB " & Couleur_FNT_R & ", " & Couleur_FNT_V & ", " & Couleur_FNT_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBlock() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Position_Texte_X & "," & Position_Texte_Y & ": Textblock text '" & Texte & "' RGB " & Couleur_FNT_R & ", " & Couleur_FNT_V & ", " & Couleur_FNT_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Ecrire le texte sur le buffer
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran_ml(Texte, TableauLignes(), NombreLignes, TypeRetourOct, Position_Texte_X + 1, Position_Texte_Y, Siz_X + 1, Siz_Y + 1, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
			' Ecrire les caracteres dans le bufer
			' if TypeRetourOct > 0 Then
				' Dim PositionEnY as integer = 1
				' For Boucle_texte as integer = 1 to NombreLignes
					
					
					' Draw String (Position_Texte_X + 1, Position_Texte_Y + PositionEnY), TableauLignes(Boucle_texte), RGB(Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B) ' TEMP. Faire sorte a ce que le texte soit decoupe pour le multi-ligne ou non
					' PositionEnY = (Boucle_texte * 8) + 1
				' Next Boucle_texte
			' Else
				' Draw String (Position_Texte_X + 1, Position_Texte_Y + 1), Texte, RGB(Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B) ' TEMP. Faire sorte a ce que le texte soit decoupe pour le multi-ligne ou non
			' End if
		End if		
		
		IF BORDURE = 1 Then
			' Contour noirci
			Line (Pos_X - 1, Pos_Y - 1)- step (Siz_X + 1, Siz_Y + 1), RGB(20, 20, 20), B
			
		ElseIF BORDURE = 2 Then ' Effet 3D
			
			' Gauche
			Line (Pos_X, Pos_Y + 1)- step (0, Siz_Y), RGB(200, 200, 200)
			
			' Haut
			Line (Pos_X, Pos_Y)- step (Siz_X, 0), RGB(200, 200, 200)
			
			' Droite
			Line (Pos_X + Siz_X, Pos_Y + 1)- step (0, Siz_Y - 1), RGB(100, 100, 100)
			
			' Bas
			Line (Pos_X, Pos_Y + Siz_Y + 1)- step (Siz_X, 0), RGB(100, 100, 100)
			
		END IF
		

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_TextBlock() Operations terminees. Retourne handle:" & this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_TextBlock() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
		
	Else
		' Gros probleme...
		Creer_TextBlock = -1 ' ERREUR
	End if
	
	Creer_TextBlock = this.INST_INIT_GUI.GUI__TEXTBLOCK(_index_).Identification_Objet.handle ' OK
	
End function
