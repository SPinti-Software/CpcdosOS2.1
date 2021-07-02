#print * ListBox
#include once "Cpcdos.bi"


Function _SCI_Cpcdos_OSx__.Creer_ListBox(_index_ as integer, _INDEX_PID_ as integer) as integer
	
	dim Message_erreur as String

	DEBUG("[SCI] Creer_ListBox() IND:" & _index_ & " [0x" & hex(this._CLE_) & "] '" & this.INST_INIT_GUI.GUI__ListBox(_index_).identification_objet.Nom & "' --> window '" & this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).identification_objet.Nom & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)


	IF this.GUI_Mode = TRUE Then	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_ListBox() Creation de l'explorateur en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_ListBox() Graphic ListBox creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__ListBox(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__ListBox(_index_).Initialisation_OK = TRUE

			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Incrementer le nombre d'objets present dans la fenetre parent
			this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS + 1	
		
			' Chercher un emplacement libre pour stocker le numero d'index correspondant a l'objet 
			'  pour la restitution graphique des objets dans l'ordre de la creation
			For index_free as integer = 1 to CPCDOS_INSTANCE._MAX_GUI___OBJS
				IF this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "" Then
					this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "LISTBOX:" & _index_
					exit for
				End if
			Next index_free
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		if this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Press = true Then
			if cpc_mouse_state(0) = 0 Then this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Press = false
		End if
		

		if true then
			dim Reload as boolean = true
			While(Reload)
				Reload = false
				
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			
				Dim Pos_Fenetre_X 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_X
				Dim Pos_Fenetre_Y 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_Y + this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).SIZ_TITRE
				Dim Siz_Fenetre_X	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_X
				Dim Siz_Fenetre_Y	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_Y
				
				Dim Texte 			as string = this.INST_INIT_GUI.GUI__ListBox(_index_).Texte

				Dim Pos_X 			as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).POS_X + Pos_Fenetre_X
				
				Dim Pos_Y 			as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).POS_Y + Pos_Fenetre_Y

				' Correction
				if this.INST_INIT_GUI.GUI__ListBox(_index_).SCROLLING_Y < 1 Then this.INST_INIT_GUI.GUI__ListBox(_index_).SCROLLING_Y = 1
				Dim SCROLLING_Y 	as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).SCROLLING_Y
				
				Dim Siz_X 			as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).SIZ_X
				Dim Siz_Y 			as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).SIZ_Y
			
				Dim IMG_BUFFER_ID	as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_BUFFER_ID

				' Mode bureau
				Dim DESKTOPMODE 	as boolean = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.DESKTOPMODE

				Dim IMG_SCROLL_ID	as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_SCROLL_ID
				
				Dim AutoSizeIMG		as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.AutoSizeIMG
				
				Dim Couleur_R 		as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Couleur_CTN_R
				Dim Couleur_V 		as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Couleur_CTN_V
				Dim Couleur_B 		as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Couleur_CTN_B
				
				Dim Couleur_FNT_R as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Couleur_FNT_R
				Dim Couleur_FNT_V as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Couleur_FNT_V
				Dim Couleur_FNT_B as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Couleur_FNT_B
				

				Dim Couleur_ALPHA 	as integer

				Dim DisplayDrives 	as boolean

				Dim Mode_Affichage 	as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).Mode_Affichage
				
				' Position des colonnes
				Dim POS_Col_Icone 		as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.ICON_COL_PX", 3, _CLE_))
				Dim POS_Col_Nom 		as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.NAME_COL_PX", 3, _CLE_))
				Dim POS_Col_Taille 		as integer = (Siz_X/2) - (Siz_X / 8) ' 200
				Dim POS_Col_Description as integer = (Siz_X/2) ' 260
				Dim POS_Col_Attribut 	as integer = (Siz_X/2) + (Siz_X / 3) ' 520

				Dim Pos_Col_X_STEP		as integer = 100
				Dim Pos_Col_Y_STEP		as integer = 80

				' Taille de la BAR
				Dim Scrol_Bar_SX		as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SCROLLBAR_SIZE_X", 3, _CLE_))
				Dim Scrol_Bar_SY		as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SCROLLBAR_SIZE_Y", 3, _CLE_))
				
				' Position de la BAR (selon sa taille)
				Dim Scrol_Bar_PX		as integer = Siz_X - Scrol_Bar_SX
				Dim Scrol_Bar_PY		as integer = SCROLLING_Y

				' Marge 'anti-clic'
				Dim Marge_Secu			as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.NO_CLICABLE_ZONE", 3, _CLE_))

				' Recuperer la position du curseur RELATIF a la position du picturebox
				Dim Position_clic_X as integer = cpc_mouse_state(1) - Pos_X
				Dim Position_clic_Y as integer = cpc_mouse_state(2) - Pos_Y

				Dim Bordure as integer = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Bordure
				
				Dim Lines_array(CPCDOS_INSTANCE._MAX_GUI_ListBox_ELEMENTS) as string
				Dim ZoneClic as integer = 16
				dim Espacement as integer = 16

				Dim Size_ICON_Text_MAX as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.ICON_MODE.NAME_SIZE_MAX", 3, _CLE_))
				Dim Espacement_POS_X_icon as integer  = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.ICON_MODE.SPACING", 3, _CLE_))
				Dim instance_FICHER_DOSSIER_ as _FICHER_DOSSIER_ 

				
				dim Text_work as String = Texte
				instance_FICHER_DOSSIER_.nb_elements = 0
				for boucle as integer = 1 to instance_FICHER_DOSSIER_.nb_MAX_elements

					' S'il y a plusieurs elements
					if instr(Text_work, ";") > 0 Then
						' Recuperer l'item
						dim item as String = Mid(Text_work, 1, Instr(Text_work, ";") - 1)

						' Cuter apres le ;
						Text_work = Mid(Text_work, Instr(Text_work, ";") + 1)

						'DEBUG(" ****** item '" & item & "' Text_work:" & Text_work, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)

						instance_FICHER_DOSSIER_.nb_elements += 1
						instance_FICHER_DOSSIER_.liste_Elements(boucle) = item
					Else
						' S'il y a/reste 1 seul element
						instance_FICHER_DOSSIER_.nb_elements += 1
						instance_FICHER_DOSSIER_.liste_Elements(boucle) = Text_work

						'DEBUG(" ****** item '" & Texte & "' Text_work:" & Text_work, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						
						exit for
					End if

					
					
				Next boucle
				
				

				Dim Path_ListBox_program as string = UCASE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.PROGRAM", 3, _CLE_))
				
				' Generer les proprietes par defaut d'un menu contextuel d'un objet graphique
				this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.OBJ_context_menu = CPCDOS_INSTANCE.SCI_INSTANCE.generer_ContextMenu_properties(GUI_TYPE.ListBox, _index_)
				
				IF this.INST_INIT_GUI.DEPLACEMENT > 0 Then
					if this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Alpha < 150 Then
						Couleur_ALPHA = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Alpha
					else
						Couleur_ALPHA = 150
					end if
				else
					' Alpha programme
					Couleur_ALPHA = this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Alpha
				End if
				
				Dim alpha_buffer as integer = 255
				Dim CPY_Source		as String 
				if Couleur_ALPHA = 0 Then alpha_buffer = 0
				
				' Supprimer le buffer si la taille a changee
				if IMG_BUFFER_ID > 0 Then
					if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_x(IMG_BUFFER_ID) <> Siz_X Then
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(IMG_BUFFER_ID)
						IMG_BUFFER_ID = 0
					elseif CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_y(IMG_BUFFER_ID) <> Siz_Y Then
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(IMG_BUFFER_ID)
						IMG_BUFFER_ID = 0
					End if
					
					' Afficher que la taille a changee
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						if IMG_BUFFER_ID = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] La taille a changee, rechargement du buffer en " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							Else
								DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Size has changed, reloading buffer to " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						END IF
					End if
				End if
				
				if IMG_BUFFER_ID = 0 Then
					if DESKTOPMODE = false Then 
						DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Background image buffer", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
						this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_BUFFER_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("ListBox(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, Couleur_ALPHA, this.INST_INIT_GUI.GUI__ListBox(_index_).Identification_Objet.Handle)
					else
						DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Desktop mode buffer", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
						' this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_BUFFER_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("ListBox_Desktop(" & _index_ & ")", Siz_X, Siz_Y, 255, 0, 255, 0, this.INST_INIT_GUI.GUI__ListBox(_index_).Identification_Objet.Handle)
						this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_BUFFER_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.DESKTOP.BACKGROUND", 3, _CLE_), this.INST_INIT_GUI.GUI__ListBox(_index_).Identification_Objet.Handle)
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP(this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_BUFFER_ID, Siz_X, Siz_Y)
					End if

					IMG_BUFFER_ID = this.INST_INIT_GUI.GUI__ListBox(_index_).IMG_BUFFER_ID
				End if
				
				DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] ListBox(" & _index_ & ") --> Buffer ID " & IMG_BUFFER_ID & " Buffer size " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Normal, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
				
				if CPCDOS_INSTANCE.SCI_INSTANCE.LST_BACKGROUND_ID = 0 Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Premier chargement du background", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] First background loading", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					CPCDOS_INSTANCE.SCI_INSTANCE.LST_BACKGROUND_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.BACKGROUND", 3, _CLE_), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)
				End if

				' Charger ler scroll bar si pas charge
				if CPCDOS_INSTANCE.SCI_INSTANCE.EXP_SCROLL_ID = 0 Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Premier chargement du scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] First scroll bar loading", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					CPCDOS_INSTANCE.SCI_INSTANCE.EXP_SCROLL_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SCROLLBAR", 3, _CLE_), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)
				End if

				if Mode_Affichage = 0 OR Mode_Affichage = 1 Then
					' Charger ler survole si pas charge
					if CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ID = 0 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Premier chargement du SURVOL bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] First SURVOL bar loading", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_LEFT_BORDER_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE_LEFT_BORDER", 3, _CLE_), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)

						CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE", 3, _CLE_), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)


						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP(CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ID, Scrol_Bar_PX - Marge_Secu, val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE_SIZE_Y", 3, _CLE_)))


						CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_RIGHT_BORDER_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE_RIGHT_BORDER", 3, _CLE_), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)
					End if
				Else
					if CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ICO_ID = 0 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Premier chargement du SURVOL bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] First SURVOL bar loading", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ICO_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE", 3, _CLE_), CPCDOS_INSTANCE.SCI_INSTANCE.icon_ID)

							' Mode icone
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP(CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ICO_ID, Pos_Col_X_STEP, (Pos_Col_Y_STEP  / 2) + 20)

					End if
				End if
				
				' Push l'image background sur le buffer
				if DESKTOPMODE = false Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.LST_BACKGROUND_ID, IMG_BUFFER_ID, 0, 0)
				
				Scope
					scope
						
						Dim Resultat as Boolean
						
						
						dim Increment_X_icones as integer = 0
						dim Increment_Y_icones as integer = 0


						dim Pos_lst_X as integer = 0
						dim Pos_lst_Y as integer = (Increment_Y_icones * Pos_Col_Y_STEP) + 1

						for b as integer = 1 to instance_FICHER_DOSSIER_.nb_Elements
							
							

							if Mode_Affichage = 0 OR Mode_Affichage = 1 Then
								' Mode Petite liste et moyenne liste
								Pos_lst_Y = (b * (8 + espacement))
							Else
								' Mode icone

								' Incrementer 1 par 1 position X des icones
								Increment_X_icones += 1

								' Calculer en pixels
								Pos_lst_X = ((Increment_X_icones * Pos_Col_X_STEP) + 1) - (Pos_Col_X_STEP / 2)

								' Si on arrive au rebord de l'ListBox
								if Pos_lst_X + Pos_Col_X_STEP >= Siz_X Then
									
									' On remet X a 1
									Increment_X_icones = 0

									' Re-calculer en pixels
									Pos_lst_X = ((Increment_X_icones * Pos_Col_X_STEP) + 1) - (Pos_Col_X_STEP / 2)

									' et on decend d'un etage Y
									Increment_Y_icones += 1
									
									' Calculer en pixels
									Pos_lst_Y = (Increment_Y_icones * Pos_Col_Y_STEP) + 1
								End if
							End if


							' Dossier en cours
							Lines_array(b) = instance_FICHER_DOSSIER_.liste_Elements(b)

							if Mode_Affichage = 0 OR Mode_Affichage = 1 Then
								' Icone MIN
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_texte(IMG_BUFFER_ID, instance_FICHER_DOSSIER_.liste_Elements(b), POS_Col_Nom , 0 + Pos_lst_Y + 9, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)

								if DisplayDrives = true Then
									CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_file_icon_MIN_ID(CPCDOS_INSTANCE.FORMAT_INDEX_UNKNOW), IMG_BUFFER_ID, POS_Col_Icone, 0 + Pos_lst_Y)
								Else
									CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_file_icon_MIN_ID(CPCDOS_INSTANCE.FORMAT_INDEX_DIR), IMG_BUFFER_ID, POS_Col_Icone, 0 + Pos_lst_Y)
								End if
							Else
								' Icone MAX
								Dim Nom_element as String = instance_FICHER_DOSSIER_.liste_Elements(b)

								dim Pos_X_icon_item as integer = Pos_lst_X - (Espacement_POS_X_icon/2)
								dim Pos_X_name_item as integer = Pos_lst_X - ((Len(Nom_element)*8) /2)

								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_texte(IMG_BUFFER_ID, Nom_element, Pos_X_name_item , 0 + Pos_lst_Y + 45, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)

								if DisplayDrives = true Then
									CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_file_icon_MAX_ID(CPCDOS_INSTANCE.FORMAT_INDEX_UNKNOW), IMG_BUFFER_ID, Pos_X_icon_item, 0 + Pos_lst_Y)
								Else
									CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.FORMAT_file_icon_MAX_ID(CPCDOS_INSTANCE.FORMAT_INDEX_DIR), IMG_BUFFER_ID, Pos_X_icon_item, 0 + Pos_lst_Y)
								End if
							End if

						next b
							
					End scope

					if CPCDOS_INSTANCE.SCI_INSTANCE.EXP_SCROLL_ID > 0 Then
						' Dessiner le scroll bar
						IF DESKTOPMODE = false Then CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.EXP_SCROLL_ID, IMG_BUFFER_ID, Scrol_Bar_PX, Scrol_Bar_PY)



					Else
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Impossible de dessiner le scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Unable to drax scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
						End if
					End if
				End scope
				
				

				' Checker le clic !
				' Clic GAUCHE
				if this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Press = false Then
					if cpc_mouse_state(0) = 1 Then
					
						this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Press = true
						

						' Clic AVANT le scrool bar
						if Position_clic_X < Scrol_Bar_PX - Marge_Secu Then ' 80 : marge anti-fausse manoeuvre
							
							Dim Clic_FICHIER as boolean
							Dim Clic_DOSSIER as boolean
							Dim Element as String
							Dim boucle as integer

							If Mode_Affichage = 0 or Mode_Affichage = 1 Then
								' Mode Petite liste et Moyenne liste

								for boucle = 1 to CPCDOS_INSTANCE._MAX_GUI_ListBox_ELEMENTS
									dim Pos_lst_Y as integer = (1 + boucle * (8 + espacement))
									
									if Position_clic_Y >= Pos_lst_Y - (ZoneClic/3) Then
										IF Position_clic_Y <= Pos_lst_Y + ZoneClic  Then ' Si clic dans la zone

											element = Lines_array(boucle)

											Clic_DOSSIER = true
											exit for
										End if
									End if
								Next boucle
							Else
								' Mode icone

								Dim Pos_lst_X as integer = 0
								Dim Pos_lst_Y as integer = 0

								Dim boucle_X as integer = 0
								Dim boucle_Y as integer = 0

								for boucle = 1 to CPCDOS_INSTANCE._MAX_GUI_ListBox_ELEMENTS

									' Incrementer 1 par 1 position X des icones
									boucle_X += 1

									' Calculer en pixels
									Pos_lst_X = ((boucle_X * Pos_Col_X_STEP) + 1) - (Pos_Col_X_STEP / 2)

									' Si on arrive au rebord de l'ListBox
									if Pos_lst_X + Pos_Col_X_STEP >= Siz_X Then
										
										' On remet X a 1
										boucle_X = 0

										' Re-calculer en pixels
										Pos_lst_X = ((boucle_X * Pos_Col_X_STEP) + 1) - (Pos_Col_X_STEP / 2)

										' et on decend d'un etage Y
										boucle_Y += 1
										
										' Calculer en pixels
										Pos_lst_Y = (boucle_Y * Pos_Col_Y_STEP) + 1
									End if

									' Checker la position du clic en X
									if Position_clic_X > Pos_lst_X - ((Size_ICON_Text_MAX*8) / 2) 	AND 	Position_clic_X < Pos_lst_X + ((Size_ICON_Text_MAX*8) / 2) Then

										' Checker la position du clic en Y
										If Position_clic_Y > Pos_lst_Y 		AND 	Position_clic_Y < Pos_lst_Y + Pos_Col_Y_STEP Then

											' Retrouver l'element sur le quel l'utilisateur a clique
											element = Lines_array(boucle)

											Clic_DOSSIER = true
											exit for

										End if

									End if

								Next boucle							
							End if ' Mode affichage

							' --------------------------------------------------------------

							If Clic_DOSSIER = true Then
									
								
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] SELECTION --> '" & element & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] SELECTION --> '" & element & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if

							End if ' Clic Fichier/Dossier

						End if ' Marge securite

					End if ' Mouse state

				End if ' Press = false

				' Si l'utilisateur a clique (mais pas dans les fichiers)
				if cpc_mouse_state(0) = 1 AND reload = false Then
					' Clic SUR le scroll bar

					' Recuperer la position du curseur RELATIF a la position du picturebox
					

					if Position_clic_X > Scrol_Bar_PX AND Position_clic_X < Scrol_Bar_PX + Scrol_Bar_SX Then
						' Put la position du curseur sur la barre

						this.INST_INIT_GUI.GUI__ListBox(_index_).SCROLLING_Y = Position_clic_Y - (Scrol_Bar_SY / 2)
					End if

					' reload = true
				End if

				if DESKTOPMODE = false Then
					' Surligne uniquement s'il suvole
					if Mode_Affichage = 0 or Mode_Affichage = 1 Then
						' Mode petite et moyenne liste

						IF this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Survole = TRUE Then
							if Position_clic_X > 0 AND Position_clic_X < Scrol_Bar_PX - Marge_Secu Then ' 80 : marge securite

								if CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ID > 0 AND CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_LEFT_BORDER_ID > 0 AND CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_RIGHT_BORDER_ID > 0 Then
									dim Position_Y as integer = (1 + (Position_clic_Y/espacement) * (espacement)) - espacement/2

									Dim alpha_ as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE_OPACITY", 3, _CLE_))
									if alpha_ < 1 Then alpha_ = 1

									' Dessiner le scroll bar
									CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ID, IMG_BUFFER_ID, 0, Position_Y, alpha_)
									
								Else
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Impossible de dessiner le scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Unable to drax scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
									End if
								End if

							End if
						End if
					else
						' Mode icone
						IF this.INST_INIT_GUI.GUI__ListBox(_index_).PROP_TYPE.Survole = TRUE Then
							if Position_clic_X > 0 AND Position_clic_X < Scrol_Bar_PX - Marge_Secu Then ' 80 : marge securite

								if CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ICO_ID > 0 Then

									Dim Pos_lst_X as integer = 0
									Dim Pos_lst_Y as integer = 0

									Dim boucle_X as integer = 0
									Dim boucle_Y as integer = 0

									for boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_ListBox_ELEMENTS

										' Incrementer 1 par 1 position X des icones
										boucle_X += 1

										' Calculer en pixels
										Pos_lst_X = ((boucle_X * Pos_Col_X_STEP) + 1) - (Pos_Col_X_STEP / 2)

										' Si on arrive au rebord de l'ListBox
										if Pos_lst_X + Pos_Col_X_STEP >= Siz_X Then
											
											' On remet X a 1
											boucle_X = 0

											' Re-calculer en pixels
											Pos_lst_X = ((boucle_X * Pos_Col_X_STEP) + 1) - (Pos_Col_X_STEP / 2)

											' et on decend d'un etage Y
											boucle_Y += 1
											
											' Calculer en pixels
											Pos_lst_Y = (boucle_Y * Pos_Col_Y_STEP) + 1
										End if

										' Checker la position en X
										if Position_clic_X > Pos_lst_X - ((Size_ICON_Text_MAX*8) / 2) 	AND 	Position_clic_X < Pos_lst_X + ((Size_ICON_Text_MAX*8) / 2) Then

											' Checker la position en Y
											If Position_clic_Y > Pos_lst_Y 		AND 	Position_clic_Y < Pos_lst_Y + (Pos_Col_Y_STEP / 2) + 20 Then

												Dim alpha_ as integer = Val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.LISTBOX.SURVOLE_OPACITY", 3, _CLE_))
												if alpha_ < 1 Then alpha_ = 1

												' Dessiner le scroll bar
												CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_CP(CPCDOS_INSTANCE.SCI_INSTANCE.EXP_Survole_ICO_ID, IMG_BUFFER_ID, Pos_lst_X - ((Size_ICON_Text_MAX*8) / 2), Pos_lst_Y, alpha_)

											End if

										End if

									Next boucle		



									
									
								Else
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Impossible de dessiner le scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Unable to drax scroll bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Erreur, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
									End if
								End if

							End if
						End if
					End if
				End if ' Desktop mode
				
				' Rechargement de l'objet
				if reload = true then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Demande de rechargement graphique de l'objet. Changement de repertoire --> " & CPY_Source, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_ListBox() [0x" & hex(this._CLE_) & "] Asking to reload graphic object. Changing directory --> " & CPY_Source, CPCDOS_INSTANCE.DEBUG_INSTANCE.ECRAN, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				Else

					if DESKTOPMODE = false Then
						' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BACKGROUND_IMAGE, 0, 0, 0, 0, Siz_X , Siz_Y, true, Couleur_ALPHA)
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(IMG_BUFFER_ID, Pos_X, Pos_Y, 0, 0, Siz_X , Siz_Y, true, Couleur_ALPHA)
					else
						' Copier le buffer dans une page video avec le fond d'ecran neutre
						ENTRER_SectionCritique()
						
						ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_FOND_IMG, CPCDOS_INSTANCE._PAGE_VIDEO_WORK
						' Copier le fond d'ecran
						' Flip 3, 4

						
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(IMG_BUFFER_ID, Pos_X, Pos_Y, 0, 0, Siz_X , Siz_Y, true, Couleur_ALPHA)

						SORTIR_SectionCritique()
						ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
					End if
				end if
				
			Wend ' reload
		End if ' IF fenetre_focus
	End if
	
	
	
	
	Creer_ListBox = this.INST_INIT_GUI.GUI__ListBox(_index_).Identification_Objet.handle ' OK
	
	this.INST_INIT_GUI.GUI__ListBox(_index_).BIT_ORG = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
	
End function
