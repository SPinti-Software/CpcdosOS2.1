#print * Fenetre
#include once "Cpcdos.bi"

Function _SCI_Cpcdos_OSx__.Creer_Fenetre(_index_ as integer) as integer
 
	dim Message_erreur as String

	DEBUG("[SCI] Creer_Fenetre() IND:" & _index_ & " [0x" & hex(this._CLE_) & "] Window '" & this.INST_INIT_GUI.GUI__FENETRE(_index_).identification_objet.Nom & " title '" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Titre & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)


	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Fenetre() Creation de la fenetre graphique en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Fenetre() Graphic window creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__FENETRE(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__FENETRE(_index_).Initialisation_OK = TRUE
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if

		' return this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle

		' Mode bureau
		Dim DESKTOPMODE as boolean = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.DESKTOPMODE
		
		if DESKTOPMODE = true Then 
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] mode desktop (index " & _index_ & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Desktop mode (index " & _index_ & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
			End if
			CPCDOS_INSTANCE.SCI_INSTANCE.DESKTOPMODE_Index_Fenetre = _index_
		else
			

			Scope


				Dim Pos_X as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_X - 1
				Dim Pos_Y as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_Y - 2
				
				Dim POS_Titre_X as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_TITRE_X
				Dim POS_Titre_Y as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_TITRE_Y
				
				Dim Siz_Titre as integer 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_TITRE 
				
				Dim CONTENEUR_COMPLET as boolean = this.INST_INIT_GUI.GUI__FENETRE(_index_).CONTENEUR_COMPLET
				if CONTENEUR_COMPLET = TRUE Then Siz_Titre = 0 ' Le conteneur vraiment au complet

				
				
				Dim Siz_X as integer 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_X + 2
				Dim Siz_Y as integer
				
				IF CONTENEUR_COMPLET = FALSE Then
					Siz_Y = this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_Y + Siz_Titre + 4
				Else
					Pos_Y = Pos_Y + 2
					Siz_Y = this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_Y + 1
				End if
				
				Dim Titre 		as string = this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE
				
				Dim IMG_TITRE	as String = this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_TITRE
				
				Dim Taille_X_ecran as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X()
				


				
				' Icone application
				Dim ICONE_CHEMIN as String 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE
				Dim ICONE_ANCIEN as String 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ANCIEN
				Dim POS_ICONE_X as integer 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_ICONE_X
				Dim POS_ICONE_Y as integer 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_ICONE_Y
				Dim POS_ICONE_POS as integer 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_ICONE_POS
				Dim SIZ_ICONE_X as integer			= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_ICONE_X
				Dim SIZ_ICONE_Y as integer 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_ICONE_Y
				Dim SIZ_ICONE 	as boolean 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_ICONE
				Dim ICONE_DejaSize 	as boolean 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_DejaSize
				
				
				
				' Icone bouton fermeture
				Dim BT_CLOSE_CHEMIN as String 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE 
				Dim BT_CLOSE_ANCIEN as String 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ANCIEN

				Dim POS_BT_CLOSE_X 		as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_CLOSE_X
				Dim POS_BT_CLOSE_Y 		as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_CLOSE_Y
				Dim POS_BT_CLOSE_POS	as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_CLOSE_POS
				Dim SIZ_BT_CLOSE_X 		as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_CLOSE_X
				Dim SIZ_BT_CLOSE_Y 		as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_CLOSE_Y
				Dim SIZ_BT_CLOSE_T 		as boolean	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_CLOSE
				Dim BT_Close_DejaSize 	as boolean 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_DejaSize
				
				' Icone bouton agrandissement
				Dim BT_SIZEUP_CHEMIN as String		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP
				Dim BT_SIZEUP_ANCIEN as String 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_ANCIEN

				Dim POS_BT_SIZEUP_X 	as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_SIZEUP_X
				Dim POS_BT_SIZEUP_Y 	as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_SIZEUP_Y
				Dim POS_BT_SIZEUP_POS 	as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_SIZEUP_POS
				Dim SIZ_BT_SIZEUP_X 	as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_SIZEUP_X
				Dim SIZ_BT_SIZEUP_Y 	as integer	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_SIZEUP_Y
				Dim SIZ_BT_SIZEUP_T 	as boolean	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_SIZEUP
				Dim BT_SizeUp_DejaSize 	as boolean 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_DejaSize
				
				' Icone bouton resize
				Dim BT_SIZEDOWN_CHEMIN as String 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN
				Dim BT_SIZEDOWN_ANCIEN as String 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_ANCIEN

				Dim POS_BT_SIZEDOWN_X  as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_SIZEDOWN_X
				Dim POS_BT_SIZEDOWN_Y 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_SIZEDOWN_Y
				Dim POS_BT_SIZEDOWN_POS	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_SIZEDOWN_POS
				Dim SIZ_BT_SIZEDOWN_X 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_SIZEDOWN_X
				Dim SIZ_BT_SIZEDOWN_Y 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_SIZEDOWN_Y
				Dim SIZ_BT_SIZEDOWN_T 	as boolean 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_SIZEDOWN
				Dim BT_SizeDown_DejaSize as boolean	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_DejaSize
				
				' Icone reduction
				Dim BT_REDUCT_CHEMIN as String 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT
				Dim BT_REDUCT_ANCIEN as String 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_ANCIEN

				Dim POS_BT_REDUCT_X 	as integer 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_REDUCT_X
				Dim POS_BT_REDUCT_Y 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_REDUCT_Y
				Dim POS_BT_REDUCT_POS 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_REDUCT_POS
				Dim SIZ_BT_REDUCT_X 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_REDUCT_X
				Dim SIZ_BT_REDUCT_Y 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_REDUCT_Y
				Dim SIZ_BT_REDUCT_T 	as boolean		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_REDUCT
				Dim BT_Reduct_DejaSize as boolean	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_DejaSize
				

				Dim Menu_Context		as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.ContextMenu

				Dim SizeUP 				as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.SizeUP
				Dim Sizeable 			as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Sizeable
				Dim Sizeable_ANGL 		as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Sizeable_ANGL
				Dim Reductable 			as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Reductable
				
				Dim Fermable 			as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Fermable
				
				
				Dim Bordure 			as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Bordure
				Dim Ombre 				as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Ombre
				
				
				Dim Couleur_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_R
				Dim Couleur_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_V
				Dim Couleur_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_B
				
				Dim Couleur_FOND_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_CTN_R
				Dim Couleur_FOND_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_CTN_V
				Dim Couleur_FOND_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_CTN_B
				
				Dim Couleur_TITRE_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_TITRE_R
				Dim Couleur_TITRE_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_TITRE_B
				Dim Couleur_TITRE_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_TITRE_B
				
				Dim Couleur_OMBRE_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_OMBRE_R
				Dim Couleur_OMBRE_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_OMBRE_V
				Dim Couleur_OMBRE_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_OMBRE_B
				
				Dim Ombre_PX as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Ombre_PX
				Dim Ombre_PY as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Ombre_PY
				
				Dim TYPE_OBJ as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.TYPE_OBJ
				

				' Type 0 : Fenetre normale + Titre
				' Type 1 : Fenetre + Titre , sans conteneur visible
				' Type 2 : Fenetre + Titre , sans bitmap de la barre de titre
				' Type 3 : Fenetre + Titre , sans bitmap de la barre de titre , sans conteneur visible
				' Type 4 : Fenetre sans barre de titre
				' Type 5 : Fenetre sans barre de titre , sans conteneur visible (Objets flottants)

				' Path image
				dim design_Image		(0 to 16) as string

				' BitmapID
				dim design_Image_ID_org	(0 to 16) as integer
				dim design_Image_ID		(0 to 16) as integer

				' Exemples : 
				' "SX:WIN" : Size X relatif a la Size X de la fenetre
				' "SY:WIN" : Size Y relatif a la Size Y de la fenetre
				' "SXCALC:-14" : Size X Calculation de -14 pixels
				' "SYCALC:14" : Size Y Calculation de +14 pixels
				dim design_Image_param(0 to 16) as string
				
				' 0 : Top Left  1 : Top Right  2 : Down left  3 : Down right
				dim design_Image_pos_relatif(0 to 16) as integer ' Position relative
				
				' Positionnement relative
				dim design_Image_px(0 to 16) as integer
				dim design_Image_py(0 to 16) as integer
				dim design_Image_sx(0 to 16) as integer
				dim design_Image_sy(0 to 16) as integer
				
				' Colorisation
				dim design_Image_alpha(0 to 16) as integer

				' Charger le de reduction si non charge
				if CPCDOS_INSTANCE.SCI_INSTANCE.BT_REDUCT_IMG_ID < 1 Then 
					CPCDOS_INSTANCE.SCI_INSTANCE.BT_REDUCT_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_REDUCT_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
				End if

				' Charger le de retrecissement si non charge
				if CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEDOWN_IMG_ID < 1 Then 
					CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEDOWN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_SIZEDOWN_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
				End if

				' Charger le d'agrandissement si non charge
				if CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEUP_IMG_ID < 1 Then 
					CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEUP_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_SIZEUP_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
				End if

				' Charger le de fermeture si non charge
				if CPCDOS_INSTANCE.SCI_INSTANCE.BT_CLOSE_IMG_ID < 1 Then 
					CPCDOS_INSTANCE.SCI_INSTANCE.BT_CLOSE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_CLOSE_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
				End if

				if this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID < 1 Then 
					this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(ICONE_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
				End if

				design_Image(0) = "OS/MEDIA/GUI/WINDOW/WIN_TL.PNG"
				design_Image_pos_relatif(0) = 0
				design_Image_px(0) = 0
				design_Image_py(0) = 0
				design_Image_sx(0) = 7
				design_Image_sy(0) = 7
				design_Image_param(0) = ""
				design_Image_alpha(0) = 255

				design_Image(1) = "OS/MEDIA/GUI/WINDOW/WIN_TR.PNG"
				design_Image_pos_relatif(1) = 1
				design_Image_px(1) = 0
				design_Image_py(1) = 0
				design_Image_sx(1) = 7
				design_Image_sy(1) = 7
				design_Image_param(1) = ""
				design_Image_alpha(1) = 255

				design_Image(2) = "OS/MEDIA/GUI/WINDOW/WIN_TM.PNG"
				design_Image_pos_relatif(2) = 0
				design_Image_px(2) = 7
				design_Image_py(2) = 0
				design_Image_sx(2) = 0
				design_Image_sy(2) = 7
				design_Image_param(2) = "resize(true), sx(win), sxcalc(-14)"
				design_Image_alpha(2) = 255

				design_Image(3) = "OS/MEDIA/GUI/WINDOW/WIN_TITL.PNG"
				design_Image_pos_relatif(3) = 0
				design_Image_px(3) = 0
				design_Image_py(3) = 7
				design_Image_sx(3) = 0
				design_Image_sy(3) = 0
				design_Image_param(3) = "resize(true) sx(win)"
				design_Image_alpha(3) = 255

				' Initialiser la structure graphique de la fenetre
				for index as integer = 0 to 16
					Dim Must_resized as boolean = false

					if len(design_Image(index)) > 3 then
						design_Image_ID_org(index) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(design_Image(index), this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
						design_Image_ID(index) = design_Image_ID_org(index)

						if len(design_Image_param(index)) > 0 then
							design_Image_param(index) = ucase(design_Image_param(index))

							if instr(design_Image_param(index), "RESIZE(TRUE)") > 1 then
								' S'il doit etre resized
								Must_resized = true
							End if

							if instr(design_Image_param(index), "SX(WIN)") > 1 then
								' Recupere SX de la fenetre
								design_Image_sx(index) = Siz_X
							End if

							if instr(design_Image_param(index), "SY(WIN)") > 1 then
								' Recupere SY de la fenetre
								design_Image_sy(index) = Siz_Y
							End if

							
							if instr(design_Image_param(index), "SXCALC(") > 1 then
								' Recupere SX de la fenetre
								dim org_design_Image_param as string
								org_design_Image_param = Mid(design_Image_param(index), instr(design_Image_param(index), "SXCALC(") + 7)
								org_design_Image_param = Mid(org_design_Image_param, 1, instr(org_design_Image_param, ")") - 1)

								
								dim chiffre as integer = val(org_design_Image_param)

								' Faire le calcul
								design_Image_sx(index) = design_Image_sx(index) + chiffre
							End if

							if instr(design_Image_param(index), "SYCALC(") > 1 then
								' Recupere SY de la fenetre
								dim org_design_Image_param as string
								org_design_Image_param = Mid(design_Image_param(index), instr(design_Image_param(index), "SYCALC(") + 7)
								org_design_Image_param = Mid(org_design_Image_param, 1, instr(org_design_Image_param, ")") - 1)

								
								dim chiffre as integer = val(org_design_Image_param)

								' Faire le calcul
								design_Image_sy(index) = design_Image_sy(index) + chiffre
							End if
						End if

						if design_Image_pos_relatif(index) = 1 then
							design_Image_px(index) = Siz_X - design_Image_sx(index)
						End if

						if design_Image_pos_relatif(index) = 2 then
							design_Image_py(index) = Siz_Y - design_Image_sy(index)
						End if

						if design_Image_pos_relatif(index) = 3 then
							design_Image_px(index) = Siz_X - design_Image_sx(index)
							design_Image_py(index) = Siz_Y - design_Image_sy(index)
						End if

						' Une fois les proprietes configures 
						
						if Must_resized = true Then
							' On modifie la taille
							design_Image_ID(index) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(design_Image_ID(index), design_Image_sx(index), design_Image_sy(index))
						end if

						' Dessiner sur l'ecran
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(design_Image_ID(index), Pos_X + design_Image_px(index), Pos_Y + design_Image_py(index), 0, 0, design_Image_sx(index), design_Image_sy(index), true, design_Image_alpha(index))
					End if

				Next index
				
	
				' Dessiner la couleur de fond de base
				Line (Pos_x, Pos_Y + Siz_Titre)- step (Siz_X - 1, Siz_Y - Siz_Titre - 7), RGB(Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B), BF


				' ===== Icones =====
				IF POS_ICONE_POS = 0 OR POS_ICONE_POS = 1 Then
					' Gauche (Aucune modification)
				ElseIF POS_ICONE_POS = 2 Then
					' Centre
					POS_ICONE_X = (Siz_X/2) - (SIZ_ICONE_X)
					
				ElseIF POS_ICONE_POS = 3 Then
					' Droite
					POS_ICONE_X = Siz_X + POS_ICONE_X - SIZ_ICONE_X
				End if
				

				' Placer l'icone de l'application
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID, Pos_x + POS_ICONE_X, Pos_Y + POS_ICONE_Y, 0, 0, Siz_X, Siz_Titre, true, 255)
				
				if Fermable = true Then ' Affiche le bouton de fermeture
					' ====== BOUTON CLOSE ======
					IF POS_BT_CLOSE_POS = 0 OR POS_BT_CLOSE_POS = 1 Then
						' Gauche (Aucune modification)
						
					ElseIF POS_BT_CLOSE_POS = 2 Then
						' Centre
						POS_BT_CLOSE_X = ((Siz_X/2) - (SIZ_BT_CLOSE_X / 2)) + POS_BT_CLOSE_X
						
					ElseIF POS_BT_CLOSE_POS = 3 Then
						' Droite
						POS_BT_CLOSE_X = Siz_X - POS_BT_CLOSE_X - SIZ_BT_CLOSE_X
					End if
					
					
					' Placer l'icone de fermeture dans le buffer de la barre de titre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_CLOSE_IMG_ID, Pos_x + POS_BT_CLOSE_X, Pos_Y + POS_BT_CLOSE_Y, 0, 0, Siz_X, Siz_Titre, true, 255)
				End if
				
				
				if SizeUP = FALSE OR Sizeable = true Then ' Fenetre retrecie, on affiche l'idone d'agrandissement
					' ====== BOUTON RESIZE UP ======
					IF POS_BT_SIZEUP_POS = 0 OR POS_BT_SIZEUP_POS = 1 Then
						' Gauche (Aucune modification)
						
					ElseIF POS_BT_SIZEUP_POS = 2 Then
						' Centre
						POS_BT_SIZEUP_X = ((Siz_X/2) - (SIZ_BT_REDUCT_X / 2)) + POS_BT_SIZEUP_X
						
					ElseIF POS_BT_SIZEUP_POS = 3 Then
						' Droite
						POS_BT_SIZEUP_X = Siz_X - POS_BT_SIZEUP_X - SIZ_BT_REDUCT_X
					End if

					
					' Placer l'icone de agrandissement de la fenetre dans le buffer de la barre de titre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEUP_IMG_ID, Pos_X + POS_BT_SIZEUP_X, Pos_Y + POS_BT_SIZEUP_Y, 0, 0, Siz_X, Siz_Titre, true, 255)

					
				Else ' Fenetre Deja AGRANDIE, donc on affiche l'icone de retrecissement
				
					
					' ====== BOUTON RESIZE DOWN ======
					IF POS_BT_SIZEDOWN_POS = 0 OR POS_BT_SIZEDOWN_POS = 1 Then
						' Gauche (Aucune modification)
						
					ElseIF POS_BT_SIZEDOWN_POS = 2 Then
						' Centre
						POS_BT_SIZEDOWN_X = ((Siz_X/2) - (SIZ_BT_REDUCT_X / 2)) + POS_BT_SIZEDOWN_X
						
					ElseIF POS_BT_SIZEDOWN_POS = 3 Then
						' Droite
						POS_BT_SIZEDOWN_X = Siz_X - POS_BT_SIZEDOWN_X - SIZ_BT_REDUCT_X
					End if

					' Placer l'icone de agrandissement de la fenetre dans le buffer de la barre de titre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEDOWN_IMG_ID, Pos_x + POS_BT_SIZEDOWN_X, Pos_Y + POS_BT_SIZEDOWN_Y, 0, 0, Siz_X, Siz_Titre, true, 255)
				End If
				
				if Reductable = true Then ' Afficher le bouton de reduction
					' ====== BOUTON REDUCTION DOWN ======
					IF POS_BT_REDUCT_POS = 0 OR POS_BT_REDUCT_POS = 1 Then
						' Gauche (Aucune modification)
						
					ElseIF POS_BT_REDUCT_POS = 2 Then
						' Centre
						POS_BT_REDUCT_X = ((Siz_X/2) - (SIZ_BT_REDUCT_X / 2)) + POS_BT_REDUCT_X ' a revoir les positions comme ya plus de relatif
						
					ElseIF POS_BT_REDUCT_POS = 3 Then
						' Droite
						POS_BT_REDUCT_X = Siz_X - POS_BT_REDUCT_X - SIZ_BT_REDUCT_X ' A revoir les positions
					End if
					
					
					' Placer l'icone de agrandissement de la fenetre dans le buffer de la barre de titre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_REDUCT_IMG_ID, Pos_x + POS_BT_REDUCT_X, Pos_Y + POS_BT_REDUCT_Y, 0, 0, Siz_X, Siz_Titre, true, 255)
				End if

				Draw string (Pos_X + POS_TITRE_X, Pos_Y + POS_TITRE_Y), Titre, RGB(Couleur_TITRE_R, Couleur_TITRE_V,Couleur_TITRE_B)

			End scope
		
		End if ' No desktop mode
	
	End if ' GUI Mode

	Creer_Fenetre = this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle ' OK


	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] Creer_Fenetre() Operations terminee. Retour handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		else
			DEBUG("[SCI] Creer_Fenetre() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		End if
	end if
End function
