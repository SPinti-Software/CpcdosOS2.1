#print * TexteBox
#include once "Cpcdos.bi"

Function _SCI_Cpcdos_OSx__.Creer_TextBox(_Proprietes as CPCDOS_GUI_INIT__, _index_ as integer, _INDEX_PID_ as integer) as integer
	
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Creer_TextBox() IND:" & _index_ & " [0x" & hex(this._CLE_) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
	end if

	
	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_TextBox() Creation du textebox en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_TextBox() Graphic textboxk creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Initialisation_OK = TRUE
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Incrementer le nombre d'objets present dans la fenetre parent
			this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS + 1	
		
			' Chercher un emplacement libre pour stocker le numero d'index correspondant a l'objet 
			'  pour la restitution graphique des objets dans l'ordre de la creation
			For index_free as integer = 1 to CPCDOS_INSTANCE._MAX_GUI___OBJS
				IF this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "" Then
					this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "TEXTBOX:" & _index_
					exit for
				End if
			Next index_free
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		Scope
			Dim Pos_Fenetre_X 		as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_X
			Dim Pos_Fenetre_Y 		as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_Y + this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).SIZ_TITRE
			Dim Siz_Fenetre_X		as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_X
			Dim Siz_Fenetre_Y		as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_Y
			
			Dim Texte 			as string = CPCDOS_INSTANCE.remplacer_Variable_DYN(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).TEXTE, this._CLE_, this.RetourVAR)

			
			
			Dim Pos_X 				as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).POS_X + Pos_Fenetre_X
			
			Dim Pos_Y 				as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).POS_Y + Pos_Fenetre_Y
			
			Dim Siz_X 				as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_X
			Dim Siz_Y 				as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_Y
			
			Dim AutoSizeIMG			as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.AutoSizeIMG
			
			Dim Couleur_FOND_R 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Couleur_CTN_R
			Dim Couleur_FOND_V 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Couleur_CTN_V
			Dim Couleur_FOND_B 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Couleur_CTN_B
			
			Dim Couleur_FNT_R 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Couleur_FNT_R
			Dim Couleur_FNT_V 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Couleur_FNT_V
			Dim Couleur_FNT_B 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Couleur_FNT_B
			
			Dim BORDURE 			as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Bordure
			Dim Fond_Couleur 		as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Fond_Couleur 
			
			Dim Image 				as String = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Image
			Dim Image_2 			as String = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Image_2 ' a utiliser quand le textebox est sombre
			Dim Image_Ancien		as String = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Image_Ancien
			
			Dim Editable			as boolean = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Editable
			
			' Position du curseur d'edition utilisateur
			' Position par caracteres ASCII
			Dim UserEdit_Pos		as uinteger = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.UserEdit_Pos
			Dim Move_Keyb 			as boolean = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Move_Keyb
			Dim Pos_User_New		as boolean = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Pos_User_New
			Dim Pos_User_Mouse_X	as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Pos_User_Mouse_X
			Dim Pos_User_Mouse_Y	as integer = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Pos_User_Mouse_Y
			
			' Postion en unite de pixel pour l'affichage graphique
			Dim UE_PosX				as integer = 0
			Dim UE_PosY				as integer = 0

			' Si la couleur de fond est foncee, alors on utilise le curseur blanc
			if Couleur_FOND_R < 100 AND Couleur_FOND_V < 100 AND Couleur_FOND_B < 100 Then
				Image = Image_2
			End if
			
			' Si l'image precedente ne correspond pas a l'image actuel, c'est que l'image a change
			' C'est aussi probable que si on change d'adresse, cela ne fait rien
			IF NOT Image_Ancien = "" Then
				IF NOT Image_Ancien = Image Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] CreerTexteBox() [0x" & hex(this._CLE_) & "] Le fichier image source '" & Image_Ancien & "' a change --> '" & Image & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] CreerTexteBox() [0x" & hex(this._CLE_) & "] Source picture file '" & Image_Ancien & "' has change --> '" & Image & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
							
					' Supprimer les anciennes images!
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID)
					this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID = 0
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)
					this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID = 0
					
				End if
			End if
			
			' DANS TOUS LES CAS :
			' S'il y a une image, et que le pointeur = NULL, alors on la charge en memoire et
			'  on recupere son adresse memoire qu'on le stocke dans un pointeur.
			IF NOT Image = "" Then
				IF NOT CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID) <> 0 Then 
					' Obtenir la ,nouvelle adresse memoire de l'image
					
					' Si le developpeur indique deja un pointeur, alors on recupere ce dernier
					
					IF INSTR(Image, "@") = 1 Then
							Dim IMG_ORIGINE as Any PTR
							IF Instr(Ucase(Image), "0X") > 0 Then 
								' Sous forme d'une adresse hexadecimale
								IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(Image, 4))))
								
							Else
								' Sous forme d'une adresse unsigned integer
								IMG_ORIGINE = Cast(any ptr, cint(val(Mid(Image, 2))))
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("TextBox(" & _index_ & ")_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Identification_Objet.Handle)
						
						Else
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Chargement de l'image de fond de " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Loading background image from " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Save le path de l'image de cote
							this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Image_Ancien = Image
							
							' Charger l'image et recuperer son ID
							this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(Image, this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Identification_Objet.Handle)
							
							
							this.INST_INIT_GUI.GUI__TEXTBOX(_index_).DejaSize = false 
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] " & Image & " --> id:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] " & Image & " --> id:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
						End if
					
					' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
					IF AutoSizeIMG = 0 OR AutoSizeIMG = 1 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Creation du buffer du conteneur --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Creating contener buffer --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						

						' Creer le buffeur memoire
						this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("TexteBox(" & _index_ & ")", Siz_X, Siz_Y, Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B, 255, this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Identification_Objet.Handle)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_FOND_R & ", " & Couleur_FOND_V & ", " & Couleur_FOND_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_FOND_R & ", " & Couleur_FOND_V & ", " & Couleur_FOND_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID) & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID) & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID, this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
					End if
				End if
			END IF
			
			' IF AutoSizeIMG = 0 Then
				' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le bouton
				'						+ bordure de la couleur du bouton si plus petite
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Aucune modification de la taille de l'edit (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] No modifications about size of edit bar(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			' Else
			
			' IF AutoSizeIMG = 999 Then
				' ' Dimentions du bouton = dimentions de l'image
				
				' ' On recupere les informations X et Y d'une image
				' Siz_X = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_x(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)
				' Siz_Y = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_y(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)
					
				' ' Et on les transmets aux objets en meme temps que le PUT d'en bas!
				' this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_X = Siz_X
				' this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_Y = Siz_Y
					
				' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] AutoSizeIMG:1 --> Ajustation du curseur d'edition selon les dimentions de l'image source de " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					' else
						' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] AutoSizeIMG:1 --> Edition cursor ajusting according source image dimensions " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					' End if
				' end if
				
			
			' ElseIF AutoSizeIMG = 999 Then
				' Dimentions de l'image = dimentions du bouton (Fonctions de redimentionnement)
				' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
				' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
				
				
				' if this.INST_INIT_GUI.GUI__TEXTBOX(_index_).DejaSize = false Then
					' this.INST_INIT_GUI.GUI__TEXTBOX(_index_).DejaSize = true
					
					
					' ' Si EditBar_PTR est null c'est pas grave car la fonction IMG_Changer_taille() va re-creer une bitmap
					
					' ' Et la il va subir sa modificaion mouahahahha!
					' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] IMG_Changer_taille() source [0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ORG, 8) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de [0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR, 8) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						' else
							' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] IMG_Changer_taille() source [0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ORG, 8) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on [0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR, 8) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						' End if
					' end if

					' ' On redimentionne l'image aux dimentions du bouton
					
					' IMG_Changer_taille(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ORG, this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR, Siz_X, Siz_Y)

					
					' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & EditBar & " --> re-charge en memoire a l'adresse [0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR, 8) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						' else
							' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] New size " & Siz_X & "x" & Siz_Y & " about " & EditBar & " --> re-loaded in memory at address [0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR, 8) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						' End if
					' end if
					
					' ' Detruire l'ancienne adresse memoire si elle correspond a l'originale
					' IF NOT this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN Then

						' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Destruction de l'ancien pointeur EditBar_PTR_ANCIEN[0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							' else
								' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Older pointer destroying EditBar_PTR_ANCIEN[0x" & HEX(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN, 8) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							' End if
						' end if
						
						' ' Et qu'elle ne soit pas NULL evidement!
						' IF this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN <> 0 Then ImageDestroy(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN)
						' this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN = 0

					' else
						' ' this.INST_INIT_GUI.GUI__TEXTBOX(_index_).DejaSize = true
					' End if
					
					' ' Copier l'adresse du pointeur de cote pour savoir futurement si le pointeur original a change
					' this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR_ANCIEN = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR
					
				' Else
				
					' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						' else
							' DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						' End if
					' end if
				' End if
			' End if

			If NOT TEXTE = "" Then ' Enleve le bug du "-1"
				' Si le multi-ligne est desactive, on supprime tous les CR-LF
				If this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Multi_Lignes = FALSE Then 
					TEXTE = CPCDOS_INSTANCE.Remplacer_caractere(TEXTE, CR, "")
					TEXTE = CPCDOS_INSTANCE.Remplacer_caractere(TEXTE, LF, "")
				End if
			End if
			
			
			Scope
				' Nombre de retour chariot
				Dim NombreCRLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CRLF)
				Dim NombreCR as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, CR)
				Dim NombreLF as integer = CPCDOS_INSTANCE.Compter_Caractere(TEXTE, LF)
			
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

						TableauLignes(Boucle_texte) = Mid(Texte, PositionDebut, (PositionFin) - PositionDebut)
						
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
							DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Aucune modification de la taille du textebox(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] No modifications about size of textbox(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				ElseIF AutoSizeIMG = 1 Then
					' Dimentions du textebox = dimentions du texte
			
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
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] Ajustation du textebox selon les dimentions de l'image source de " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_TextBox() [0x" & hex(this._CLE_) & "] textbox ajusting according source image dimensions " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					IF NombreLignes > 0 Then
						SIZ_X = 2 + LaPlusGrand * 8
						this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_X = SIZ_X
					Else
						this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_X = LEN(TEXTE) * 8
					End if
					
					this.INST_INIT_GUI.GUI__TEXTBOX(_index_).SIZ_Y = SIZ_Y  ' ---> Multiplier taille du caractere par le nombre de retour de lignes (Revoir avec l'UTF8)

					
				ElseIF AutoSizeIMG = 2 Then
					' Dimentions du textebox vectorisable pour reduire ou grossir du texte (peut devenir tres moche..)

				End if
				
				Dim UserEdit_Pos_Y as integer = 0
				if UserEdit_Pos >= 0 Then
					' Selon la position du curseur ASCII, on va determiner la position en pixel sur la GUI_Mode
					'  en prennant en compte les retours chariots
					
					if Pos_User_New = true Then
						' Ok pas besoin de y replacer
						this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.Pos_User_New = false
						
						' Arrondir en disivant par 8 pixels
						if Move_Keyb = false Then 
							UserEdit_Pos = cint((Pos_User_Mouse_X - Pos_X) / 8)
							UserEdit_Pos_Y = cint(((Pos_User_Mouse_Y-12) - Pos_Y) / 8)
							
						End if
					End if
					
					' Si la position du curseur est plus grand que la taille du texte.
					if UserEdit_Pos > Len(TEXTE) Then
						UserEdit_Pos = Len(TEXTE)
					End if
						
					' Detecter le nombre de "touche entre" pour decendre le curseur
					Dim Texte_Avant as String = mid(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Texte, 1, UserEdit_Pos)
					
					' Connaitre le nombre de caractere avant le dernier CRLF relatif a la position du curseur
					Dim CRLF_Avant as String = Mid(Texte_Avant, 1, InstrRev(Texte_Avant, TypeRetour))
					
					Dim Nombre_CRLF as integer = CPCDOS_INSTANCE.compter_Caractere(Texte_Avant, TypeRetour) 
					
					if Nombre_CRLF < 0 Then Nombre_CRLF = 0
					if Nombre_CRLF = 0 Then CRLF_Avant = "" ' Pas de CRLF, pas de retrait de caracteres pour le curseur
					if UserEdit_Pos_Y > 1 Then
						Nombre_CRLF = UserEdit_Pos_Y
					End if
					
						
					' Mettre a jour la position ASCII si on deplace le curseur avec la souris
					this.INST_INIT_GUI.GUI__TEXTBOX(_index_).PROP_TYPE.UserEdit_Pos = UserEdit_Pos
					
					'					Pos ASCII   - Texte avant pour coller le curseur contre le textebox a gauche
					
					UE_PosX = Pos_X + (abs(UserEdit_Pos-len(CRLF_Avant)) * 8)
					UE_PosY = Pos_Y + (Nombre_CRLF * 8) + 2
					
					' locate 5, 5
					' Print "Nombre CRLF      :" & Nombre_CRLF & ".   "
					' print "Pos_User_New     :" & Pos_User_New & ".    "
					' print "Pos_User_Mouse_X :" & Pos_User_Mouse_X & ".   "
					' print "UserEdit_Pos     :" & UserEdit_Pos & ".   "
					' print "UE_PosX          :" & UE_PosX & ".   "
					' print "UE_PosY          :" & UE_PosY & ".   "
					
					' For Boucle_texte as integer = 1 to NombreLignes
					' TableauLignes

				End if
				' Si il y a un fond de couleurs (COL:1)
				if Fond_Couleur = TRUE Then
					Line (Pos_X, Pos_Y)- step (Siz_X, Siz_Y), RGB(Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B), BF
				End if
				
				
				' Afficher le texte
				IF len(Texte) > 0 Then
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran_ml(Texte, TableauLignes(), NombreLignes, TypeRetourOct, Pos_X, Pos_Y, Siz_X, Siz_Y, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
				End if
				
				' Pointeur_IMG = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).EditBar_PTR
				
				' Afficher l'EditBar

				IF this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Affiche_EditBar = TRUE Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID) > 0 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Y & " : Barre d'edition PTR[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Y & " : Edit bar PTR[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						' Couper la zone graphique pour couper le texte qui depasse
						view screen (Pos_X, Pos_Y)-(Pos_X + Siz_X, Pos_Y + Siz_Y)
						

						' Hop on dessine dans le buffer video
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID, UE_PosX, UE_PosY, 0, 0, 8, 13, true)

						
						view  ' reset
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & ") " & Siz_X & "," & Siz_Y & " : Contour barre d'edition RVB 020, 020, 020", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							Else
								DEBUG("[SCI] Creer_TexteBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__TEXTBOX(_index_).IMG_ORG_ID)) & ") " & Siz_X & "," & Siz_Y & " : Edit Bar border RGB 020, 020, 020" & Couleur_FNT_R & ", " & Couleur_FNT_V & ", " & Couleur_FNT_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
					End if
				End if
				
				IF BORDURE = 1 Then
					' Contour noirci
					Line (Pos_X - 1, Pos_Y - 1)- step (Siz_X + 1, Siz_Y + 1), RGB(20, 20, 20), B
					
				ElseIF BORDURE = 2 OR BORDURE = 0 then ' Effet 3D
					
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
						DEBUG("[SCI] Creer_TextBox() Operations terminees. Retourne handle:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_TextBox() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			End Scope
		End Scope
	Else
		' Gros probleme...
		Creer_TextBox = -1 ' ERREUR
	End if
	
	Creer_TextBox = this.INST_INIT_GUI.GUI__TEXTBOX(_index_).Identification_Objet.handle ' OK
	
End function
