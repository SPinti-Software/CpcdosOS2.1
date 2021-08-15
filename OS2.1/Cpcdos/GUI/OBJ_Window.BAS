#print * Fenetre
#include once "Cpcdos.bi"

Function _SCI_Cpcdos_OSx__.Creer_Fenetre(_index_ as integer) as integer
 
	dim Message_erreur as String

	DEBUG("[SCI] Creer_Window() IND:" & _index_ & " [0x" & hex(this._CLE_) & "] Window '" & this.INST_INIT_GUI.GUI__FENETRE(_index_).identification_objet.Nom & "' title '" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Titre & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)


	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Window() Creation de la fenetre graphique en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Window() Graphic window creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__FENETRE(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__FENETRE(_index_).Initialisation_OK = TRUE
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if

		' return this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle

		' Mode bureau
		Dim DESKTOPMODE as boolean = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.DESKTOPMODE
		

		if DESKTOPMODE = true Then 
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] mode desktop (index " & _index_ & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Window() [0x" & hex(this._CLE_) & "] Desktop mode (index " & _index_ & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Surbrille, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, this.RetourVAR)
			End if
			CPCDOS_INSTANCE.SCI_INSTANCE.DESKTOPMODE_Index_Fenetre = _index_
		else

			Scope

				Dim TYPE_OBJ as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.TYPE_OBJ

				Dim Pos_X as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_X 
				Dim Pos_Y as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_Y 
				
				Dim POS_Titre_X as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_TITRE_X
				Dim POS_Titre_Y as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_TITRE_Y
				
				Dim Siz_Titre as integer 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_TITRE 
				
				Dim CONTENEUR_COMPLET as boolean = this.INST_INIT_GUI.GUI__FENETRE(_index_).CONTENEUR_COMPLET
				if CONTENEUR_COMPLET = TRUE Then Siz_Titre = 0 ' Le conteneur vraiment au complet

				Dim Taille_X_ecran as integer 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X()
				Dim Taille_Y_ecran as integer 	= CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y()
				
				Dim Siz_X as integer 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_X
				Dim Siz_Y as integer			= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_Y


				' Pas necessaire car deja fait en amont
				if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.DEPLACEMENT > 0 Then
					' Faire des corrections a la source
					CPCDOS_INSTANCE.SCI_INSTANCE.Collision_correction(_index_)
				End if

				
				IF CONTENEUR_COMPLET = FALSE Then
					Pos_Y = Pos_Y - Siz_Titre
					Siz_Y = this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_Y + Siz_Titre + 4
				Else
					Pos_Y = Pos_Y + 2
					Siz_Y = this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_Y + 1
				End if
				
				Dim Titre 		as string = this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE
				
				Dim IMG_TITRE	as String = this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_TITRE
				
				
				

				


				
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

				Dim Couleur_OMBRE_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_OMBRE_R
				Dim Couleur_OMBRE_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_OMBRE_V
				Dim Couleur_OMBRE_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_OMBRE_B
				
				Dim Ombre_PX as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Ombre_PX
				Dim Ombre_PY as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Ombre_PY

				Dim Couleur_ALPHA 		as integer

				' Si la fenetre est en cours de deplacement alors on la rend transparente
				IF this.INST_INIT_GUI.DEPLACEMENT > 0 Then
					' Si la fenetre est deja bien transparente
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Alpha < 150 Then
							Couleur_ALPHA = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Alpha
						else
							Couleur_ALPHA = 150
						end if
				else
					Couleur_ALPHA = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Alpha
				End if
				
				
				Dim Couleur_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_R
				Dim Couleur_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_V
				Dim Couleur_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_B
				
				Dim Couleur_FOND_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_CTN_R
				Dim Couleur_FOND_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_CTN_V
				Dim Couleur_FOND_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_CTN_B
				
				Dim Couleur_TITRE_R as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_TITRE_R
				Dim Couleur_TITRE_V as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_TITRE_B
				Dim Couleur_TITRE_B as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Couleur_TITRE_B
				
				' Generer les proprietes par defaut d'un menu contextuel d'un objet graphique
				this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.OBJ_context_menu = CPCDOS_INSTANCE.SCI_INSTANCE.generer_ContextMenu_properties(GUI_TYPE.Fenetre, _index_)

				


				if NOT this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID > 0 Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Window() Pas de buffer! (BUFFER_WINDOW_IMG_ID)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Window() No buffer! (BUFFER_WINDOW_IMG_ID)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if

					this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Window_buffer(" & _index_ & ")", Siz_X, Siz_Y, 255, 0, 255, 0, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Window() Buffer cree ! (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Window() Created ! (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if

				' Type 0 : Fenetre normale
				' Type 1 : Fenetre normale mais conteneur transparent
				' Type 2 : Fenetre normale sans bitmap de titre
				' Type 3 : Fenetre normale sans bitmap de titre + conteneur transparent
				' Type 4 : Fenetre sans barre de titre
				' Type 5 : Fenetre sans barre de titre + conteneur transparent

				if TYPE_OBJ = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Fenetre normale", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Normal Window", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				Elseif TYPE_OBJ = 1 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Fenetre normale, mais conteneur transparent", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Normal Window, but transparent contener", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				Elseif TYPE_OBJ = 2 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Fenetre normale sans bitmap de titre", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Normal Window without title bitmap", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				Elseif TYPE_OBJ = 3 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Fenetre normale sans bitmap de titre + conteneur transparent", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Normal Window without title bitmap + transparent contener", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				Elseif TYPE_OBJ = 4 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Fenetre sans barre de titre", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Window without title bar", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if

					' No title bar pagging
					this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_TITRE = 0

				Elseif TYPE_OBJ = 5 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Fenetre sans barre de titre + conteneur transparent", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Window() [" & TYPE_OBJ & "] Window without title bar + transparent contener", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if

					' No title bar pagging
					this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_TITRE = 0
				end if

				if TYPE_OBJ < 5 Then
					if TYPE_OBJ = 0 OR TYPE_OBJ = 1 OR TYPE_OBJ = 2 or TYPE_OBJ = 3 Then
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

						if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.REDIMENTIONNEMENT = 0 Then
							if this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_LOADED = false Then
								Dim NombreBitmapDeleted as integer = 0
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Window() Recherche d'eventuels bitmap non liberes de la memoire", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Window() Search for possible bitmaps not freed from memory ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if

								for index as integer = 0 to array_design_MAX
									' Transferer les proprietes du design dans la fenetre
									if this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index) > 0 Then
										CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index))
										CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(design_Image_ID_org(index))
										
										NombreBitmapDeleted += 1
									End if
								Next index

								if NombreBitmapDeleted > 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Window() " & NombreBitmapDeleted & " bitmaps supprimes", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Window() " & NombreBitmapDeleted & " deleted bitmaps", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								End if

								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Window() Recuperation des proprietes graphiques", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Window() Getting design property", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if
								' Recuperer les donnees (win_dgn.cpc)
								for index as integer = 0 to array_design_MAX

									IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
										IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
											DEBUG("[SCI] Creer_Window() Lecture index " & index, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
										else
											DEBUG("[SCI] Creer_Window() Reading index " & index, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
										End if
									end if

									Dim Retour as string	
									' Path image
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_image[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_image[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image(index) = retour
										Else
											Continue for
										end if
									end if

									' Position relative
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_pos_relative[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_pos_relative[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_pos_relative(index) = val(retour)
										end if
									end if

									' Position X
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_px[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_px[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_px(index) = val(retour)
										end if
									end if

									' Position y
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_py[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_py[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_py(index) = val(retour)
										end if
									end if

									' Size X 
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_sx[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_sx[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_sx(index) = val(retour)
										end if
									end if

									' Size Y
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_sy[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_sy[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_sy(index) = val(retour)
										end if
									end if

									' Parameters
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_param[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_param[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_param(index) = retour
										end if
									end if

									' Alpha opacite
									Retour = CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("design_Image_alpha[" & index & "]", 4, _CLE_)
									DEBUG("[SCI] design_Image_alpha[" & index & "] --> '" & retour & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									if len(retour) > 0 Then
										if NOT instr(retour, CPCDOS_INSTANCE._CONTENU_IMPROPABLE) > 0 then
											design_Image_alpha(index) = val(retour)
										end if
									end if
								Next index

								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Window() Lecture des proprietes termine", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
										DEBUG("[SCI] Creer_Window() Initialisation des elements graphiques", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Window() Reading properties terminated", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
										DEBUG("[SCI] Creer_Window() Initializing graphic properties", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if
							

								for index as integer = 0 to array_design_MAX
									' Transferer les proprietes du design dans la fenetre
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image(index)				= design_Image(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index)				= design_Image_ID(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index)			= design_Image_param(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_pos_relative(index)	= design_Image_pos_relative(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index)				= design_Image_px(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_py(index)				= design_Image_py(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index)				= design_Image_sx(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index)				= design_Image_sy(index)
									this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_alpha(index)			= design_Image_alpha(index)
								Next index

								' Initialiser la structure graphique de la fenetre
								for index as integer = 0 to array_design_MAX
									Dim Must_resized as boolean = false


									if len(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image(index)) > 3 then

										'if design_Image_ID_org(index) <= 0 Then 
										Design_Image_ID_org(index) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(design_Image(index), this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

										this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index) = design_Image_ID_org(index)

										if len(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index)) > 0 then

											this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index) = ucase(design_Image_param(index))

											if instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "RESIZE(TRUE)") > 0 then
												' S'il doit etre resized
												Must_resized = true
											End if

											if instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SX(WIN)") > 0 then
												' Recupere SX de la fenetre
												this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index) = Siz_X
											End if

											if instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SY(WIN)") > 0 then
												' Recupere SY de la fenetre
												this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index) = Siz_Y
											End if

											if instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SY(TITLE)") > 0 then
												' Recupere SY de la barre des taches
												this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index) = Siz_Titre
											End if

											
											if instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SXCALC(") > 0 then
												' Recupere SX de la fenetre
												dim org_design_Image_param as string
												org_design_Image_param = Mid(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SXCALC(") + 7)
												org_design_Image_param = Mid(org_design_Image_param, 1, instr(org_design_Image_param, ")") - 1)

												
												dim chiffre as integer = val(org_design_Image_param)

												' Faire le calcul
												this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index) = this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index) + chiffre
											End if

											if instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SYCALC(") > 0 then
												' Recupere SY de la fenetre
												dim org_design_Image_param as string
												org_design_Image_param = Mid(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), instr(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_param(index), "SYCALC(") + 7)
												org_design_Image_param = Mid(org_design_Image_param, 1, instr(org_design_Image_param, ")") - 1)

												
												dim chiffre as integer = val(org_design_Image_param)

												' Faire le calcul
												this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index) = this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index) + chiffre
											End if
										End if

										
										
										if this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_pos_relative(index) = 1 then
											this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index) = Siz_X - this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index) - this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index)
										End if

										if this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_pos_relative(index) = 2 then
											this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_py(index) = Siz_Y - this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index)
										End if

										if design_Image_pos_relative(index) = 3 then
											this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index) = Siz_X - this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index) - this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index)
											this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_py(index) = Siz_Y - this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index)
										End if

										' Une fois les proprietes configures 
										
										if Must_resized = true Then
											' On modifie la taille
											this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(design_Image_ID_org(index), this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index), this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index))
											DEBUG("[SCI] Creer_Window() Resizing. Source ID:" & design_Image_ID_org(index) & " Destination ID:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
										end if
									End if
								Next index

								this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_LOADED = true

							End if ' If deja loaded
						end if ' Si n'est pas en cours de redimentionnement

						' Display les elements
						for index as integer = 0 to array_design_MAX
							if this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index) > 0 Then
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
									DEBUG("[SCI] Creer_Window() Writting design. Source ID:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index) & " PosX:" & 0 + this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index) & " PosY:" & 0 + this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_py(index) & " SizX:" & 0 + this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index) & " SizY:" & 0 + this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index) & " Opacity:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_alpha(index), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								end if
								' Dessiner sur l'ecran
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_ID(index), 0 + this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_px(index), 0 + this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_py(index), 0, 0, this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sx(index), this.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_sy(index), this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, true, false) 'Bthis.INST_INIT_GUI.GUI__FENETRE(_index_).design_Image_alpha(index))
							End if
						Next index
						

						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							DEBUG("[SCI] Creer_Window() Writting icons", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						end if
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
						
						Dim ico_size_x as integer
						Dim ico_size_y as integer

						if this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID = 0 Then
							' Resize icon
							Dim Retour as integer = val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.WINDOW.ICO_S", 3, _CLE_))

							if Retour > 0 Then
								ico_size_x = val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.WINDOW.ICO_SX", 3, _CLE_))
								ico_size_y = val(CPCDOS_INSTANCE.SHELLCCP_INSTANCE.CCP_Lire_Variable("CPC_GUI.WINDOW.ICO_SY", 3, _CLE_))
								this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID = this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID

								this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID, ico_size_x, ico_size_y)
							End if
						End if

						' Placer l'icone de l'application
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID, 0 + POS_ICONE_X, 0 + POS_ICONE_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, true, false) '255)
						
						
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
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_CLOSE_IMG_ID, 0 + POS_BT_CLOSE_X, 0 + POS_BT_CLOSE_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, true, false) ' 255)
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
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEUP_IMG_ID, 0 + POS_BT_SIZEUP_X, 0 + POS_BT_SIZEUP_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, true, false) '255)

							
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
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_SIZEDOWN_IMG_ID, 0 + POS_BT_SIZEDOWN_X, 0 + POS_BT_SIZEDOWN_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, true, false) '255)
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
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(CPCDOS_INSTANCE.SCI_INSTANCE.BT_REDUCT_IMG_ID, 0 + POS_BT_REDUCT_X, 0 + POS_BT_REDUCT_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, true, false) '255)
						End if

						' Ecrire titre dans le buffer
						Draw string CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID), (0 + POS_TITRE_X, 0 + POS_TITRE_Y), Titre, RGB(Couleur_TITRE_R, Couleur_TITRE_V,Couleur_TITRE_B)
					End if

					' Conteneur
					if TYPE_OBJ = 0 OR TYPE_OBJ = 2 OR TYPE_OBJ = 4 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							DEBUG("[SCI] Creer_Window() Writting rectangle. PosX:" & 0 & " PosY:" & Pos_Y + Siz_Titre & " SizX:" & Siz_X -1 & " SizY:" & Siz_Y - Siz_Titre - 7 & " RGB:" & Couleur_FOND_R & "," & Couleur_FOND_V & "," & Couleur_FOND_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						end if

						' Dessiner la couleur de fond de base
						if TYPE_OBJ = 4 Then
							Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID), (0, 0)- step (Siz_X - 1, Siz_Y - 7), RGB(Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B), BF
						Else
							Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID), (0, 0 + Siz_Titre)- step (Siz_X - 1, Siz_Y - Siz_Titre - 7), RGB(Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B), BF
						End if
					End if

					if Couleur_ALPHA < 255 Then
						' Dessiner l'ombre
						Ombre = Ombre - (255-Couleur_ALPHA)
						if Ombre < 0 then Ombre = 0
					End if

					' Dessiner l'ombre
					if Ombre > 0 Then
						' si le buffer n'existe pas
						if NOT this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID > 0 Then
							' Creer le buffer
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Window_shadow_buffer(" & _index_ & ")", Siz_X, Siz_Y, 255, 0, 255, 0, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

							' Repliquer et transformer le buffer de la fenetre
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, 0, 0, 0, 0, Siz_X, Siz_Y, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, effet_img._shadow_effect, 0, false)
						End if
					
						' Dessiner dans la video avec de la transparence
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID > 0 Then
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, Pos_x + Ombre_PX, Pos_Y + Ombre_PY, 0, 0, Siz_X, Siz_Y, effet_img._alpha_value, Ombre, false)
						End if
					end if

					' Temporaire !
					this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Blurry_Mode = 6

					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Window() Floutage arriere plan. (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Blurry_Mode & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Window() Blurring background. (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Blurry_Mode & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					' Creer buffer s'il existe pas
					if NOT this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID > 0 then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Window() Pas de buffer! (IMG_BackGround_ID)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Window() No buffer! (IMG_BackGround_ID)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if

						this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("window_background(" & _index_ & ")", Siz_X, Siz_Y, 0, 0, 0, 0, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Window() Buffer cree ! (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Window() Created ! (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
					End if

					' si le buffer est different (taille, bit)
					if NOT CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_xybit(this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID) = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_xybit(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID) Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Window() Est different ! (IMG_BackGround_ID)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Window() Is different! (IMG_BackGround_ID)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
						
						' Supprimer l'ancien buffer
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID)

						' Creer un nouveau buffer
						this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("window_background(" & _index_ & ")", Siz_X, Siz_Y, 0, 0, 0, 0, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Window() Nouveau buffer cree ! (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Window() New buffer created ! (" & this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
					End if
					

					' Repliquer et transformer le buffer de la fenetre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, 0, 0, 0, 0, Siz_X, Siz_Y, this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID, effet_img._shadow_effect, 0, false)

					' Capturer
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Capture_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID, Pos_X, Pos_Y, Siz_X, Siz_Y - 5)

					' Flou avec le background flou aussi
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.apply_blurry(this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID, this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.Blurry_Mode / 2)

					' Placer le fond flou en premier
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).IMG_BackGround_ID, Pos_X, Pos_Y, 0, 0, Siz_X, Siz_Y, true)', Couleur_ALPHA)

					' Ecrire le buffer sur le buffer video
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID, Pos_x, Pos_Y, 0, 0, Siz_X, Siz_Y, true, Couleur_ALPHA)

					
					'if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.REDIMENTIONNEMENT > 0 Then

					

					' Detruire le buffer
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID)
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WINDOW_IMG_ID = 0

				End if  ' Type_obj < 5

			End scope
	
			
			
		End if ' No desktop mode

		
		
	
	End if ' GUI Mode

	Creer_Fenetre = this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle ' OK


	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] Creer_Window() Operations terminee. Retour handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		else
			DEBUG("[SCI] Creer_Window() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		End if
	end if
End function
