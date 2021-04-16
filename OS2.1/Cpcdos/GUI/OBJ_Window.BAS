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

				' Code de la nouvelle fenetre here :)

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
