#print * Fenetre
#include once "Cpcdos.bi"

Function _SCI_Cpcdos_OSx__.Creer_Fenetre(_Proprietes as CPCDOS_GUI_INIT__, _index_ as integer) as integer
 
	dim Message_erreur as String
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Creer_Fenetre() IND:" & _index_ & " [0x" & hex(this._CLE_) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
	end if
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
			' Dim ICONE_PTR as ANY PTR 			= this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_PTR
			' Dim ICONE_PTR_ORG as ANY PTR 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_PTR_ORG
			' Dim ICONE_PTR_ANCIEN as ANY PTR 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_PTR_ANCIEN
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
			' Dim BT_CLOSE_PTR as ANY PTR 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_PTR
			' Dim BT_CLOSE_PTR_ORG as ANY PTR 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_PTR_ORG
			' Dim BT_CLOSE_PTR_ANCIEN as ANY PTR 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_PTR_ANCIEN
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
			' Dim BT_SIZEUP_PTR as ANY PTR 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_PTR
			' Dim BT_SIZEUP_PTR_ORG as ANY PTR 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_PTR_ORG
			' Dim BT_SIZEUP_PTR_ANCIEN as ANY PTR = this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_PTR_ANCIEN
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
			' Dim BT_SIZEDOWN_PTR as ANY PTR 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_PTR
			' Dim BT_SIZEDOWN_PTR_ORG as ANY PTR 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_PTR_ORG
			' Dim BT_SIZEDOWN_PTR_ANCIEN as ANY PTR = this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_PTR_ANCIEN
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
			' Dim BT_REDUCT_PTR as ANY PTR 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_PTR
			' Dim BT_REDUCT_PTR_ORG as ANY PTR 	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_PTR_ORG
			' Dim BT_REDUCT_PTR_ANCIEN as ANY PTR = this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_PTR_ANCIEN
			Dim POS_BT_REDUCT_X 	as integer 		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_REDUCT_X
			Dim POS_BT_REDUCT_Y 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_REDUCT_Y
			Dim POS_BT_REDUCT_POS 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).POS_BT_REDUCT_POS
			Dim SIZ_BT_REDUCT_X 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_REDUCT_X
			Dim SIZ_BT_REDUCT_Y 	as integer		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_REDUCT_Y
			Dim SIZ_BT_REDUCT_T 	as boolean		= this.INST_INIT_GUI.GUI__FENETRE(_index_).SIZ_BT_REDUCT
			Dim BT_Reduct_DejaSize as boolean	= this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_DejaSize
			
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

			
			Dim Couleur_ALPHA 				as integer
			Dim Couleur_Alpha_MODE 			as integer = this.INST_INIT_GUI.GUI__FENETRE(_index_).Alpha_Mode

			Dim Couleur_Alpha_CONTENEUR 	as integer
			Dim Couleur_Alpha_TITRE 		as integer
			
			Dim PTR_BUFFER_TITRE_2 			as any ptr
			
			
			' Verificateur presence par handle
			' if this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID > 0 Then
				' if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.IsPresent_BITMAP_byhandle(this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle) = 0 Then
					' Print "NON PRESENT, ON RECHARGE LES BITMAPS !!!!! de " & _index_ & " handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle & ".   "
				' End if
			' End if
			
			
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
			
			
			If Couleur_Alpha_MODE = 0 Then 
				' Tout transparent
				Couleur_Alpha_CONTENEUR 	= Couleur_ALPHA
				Couleur_Alpha_TITRE 		= Couleur_ALPHA
			
			
			ElseIf Couleur_Alpha_MODE = 1 Then
				' Uniquement le conteneur
				Couleur_Alpha_CONTENEUR 	= Couleur_ALPHA
				Couleur_Alpha_TITRE 		= 255
				
			ElseIf Couleur_Alpha_MODE = 2 Then
				' Uniquement la barre de titre
				Couleur_Alpha_CONTENEUR 	= 255
				Couleur_Alpha_TITRE 		= Couleur_ALPHA
			End if
			
			
			
			' Si l'image precedente ne correspond pas a l'image actuel, c'est que l'image a change
			' C'est aussi probable que si on change d'adresse, cela ne fait rien
			' IF NOT Image_Ancien = "" Then
				' IF NOT Image_Ancien = Image Then
					

				' End if
			' End if
			
			
			
			' Sauvegarder de cote le BPP
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BIT_ORG = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
			
			
			
			' ==========================  I C O N E   C L O S E   C H E M I N  ==========================
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
				IF NOT BT_CLOSE_CHEMIN = "" Then
					if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID < 1 Then 
						
						' Obtenir la ,nouvelle adresse memoire de l'image
						' Lire la ,nouvelle adresse memoire de l'image,
						'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
						IF INSTR(BT_CLOSE_CHEMIN, "@") = 1 Then
							Dim IMG_ORIGINE as Any PTR
							IF Instr(Ucase(BT_CLOSE_CHEMIN), "0X") > 0 Then 
								' Sous forme d'une adresse hexadecimale
								IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(BT_CLOSE_CHEMIN, 4))))
								
							Else
								' Sous forme d'une adresse unsigned integer
								IMG_ORIGINE = Cast(any ptr, cint(val(Mid(BT_CLOSE_CHEMIN, 2))))
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Fenetre_Bouton_CLOSE(" & _index_ & ")ORG_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
						Else
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Chargement de l'ICONE FERMETURE depuis " & BT_CLOSE_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Loading CLOSING WINDOW image from " & BT_CLOSE_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Save le path de l'image de cote
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ANCIEN = BT_CLOSE_CHEMIN
							
							' Charger l'image et recuperer son ID
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_CLOSE_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_DejaSize = false 
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_CLOSE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_CLOSE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if				
						End if
						
						' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
						' IF SIZ_ICONE = TRUE Then
						' Creer le buffeur memoire
						this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_CLOSE(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID, this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						' End if
					End if
					
					
				' S'il y a PAS d'images ni rien, ca sera simplement un carre de couleurs :)
				END IF
				
				IF this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID < 1 Then 
					
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_CLOSE(" & _index_ & ") ORG", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_CLOSE(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = True
				Else
					' Nous avons l'image chargee!
				
					' Image non retrecie
					IF SIZ_ICONE = FALSE Then
					
						' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le picturebox
						'						+ bordure de la couleur du picturebox si plus petite
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> Aucune modification de la taille de l'icone fermeture de lapplication (" & SIZ_BT_CLOSE_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> No modifications about size of closing application icon (" & SIZ_BT_CLOSE_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						

					Else
						' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
						' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
						
						
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = false Then
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = true

							' Et la il va subir sa modificaion mouahahahha!
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Redimentionner l'image aux dimensions du picturebox
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ORG_IMG_ID, Siz_X, Siz_Y)

							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & BT_CLOSE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & BT_CLOSE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if

						Else
						
							' Autrement pas besoin de se retaper toute ces operations, le bitmap est deja redimentionnee
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
						End if
					End if ' 
				End if ' BT_CLOSE_PTR_ORG
			End if
			
			' ==========================  I C O N E   A G R A N D I S S E M E N T   C H E M I N  ==========================
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
				IF NOT BT_SIZEUP_CHEMIN = "" Then
					if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID < 1 Then 
						
						' Obtenir la ,nouvelle adresse memoire de l'image
						' Lire la ,nouvelle adresse memoire de l'image,
						'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
						IF INSTR(BT_SIZEUP_CHEMIN, "@") = 1 Then
							Dim IMG_ORIGINE as Any PTR
							IF Instr(Ucase(BT_SIZEUP_CHEMIN), "0X") > 0 Then 
								' Sous forme d'une adresse hexadecimale
								IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(BT_SIZEUP_CHEMIN, 4))))
								
							Else
								' Sous forme d'une adresse unsigned integer
								IMG_ORIGINE = Cast(any ptr, cint(val(Mid(BT_SIZEUP_CHEMIN, 2))))
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Fenetre_Bouton_SIZEUP(" & _index_ & ")ORG_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
						Else
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Chargement de l'ICONE AGRANDISSEMENT depuis " & BT_SIZEUP_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Loading SIZEUP WINDOW image from " & BT_SIZEUP_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Save le path de l'image de cote
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ANCIEN = BT_SIZEUP_CHEMIN
							
							' Charger l'image et recuperer son ID
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_SIZEUP_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_DejaSize = false 
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_SIZEUP_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_SIZEUP_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if				
						End if
						
						' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
						' IF SIZ_ICONE = TRUE Then
						' Creer le buffeur memoire
						this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEUP(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID, this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						' End if
					End if
					
					
				' S'il y a PAS d'images ni rien, ca sera simplement un carre de couleurs :)
				END IF
				
				IF this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID < 1 Then 
					
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEUP(" & _index_ & ") ORG", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEUP(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = True
				Else
					' Nous avons l'image chargee!
				
					' Image non retrecie
					IF SIZ_ICONE = FALSE Then
					
						' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le picturebox
						'						+ bordure de la couleur du picturebox si plus petite
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> Aucune modification de la taille de l'icone d'agrandissement de lapplication (" & SIZ_BT_SIZEUP_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> No modifications about size of sizeup application icon (" & SIZ_BT_SIZEUP_X & "x" & SIZ_BT_SIZEUP_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						

					Else
						' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
						' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
						
						
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = false Then
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = true

							' Et la il va subir sa modificaion mouahahahha!
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Redimentionner l'image aux dimensions du picturebox
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ORG_ID, Siz_X, Siz_Y)

							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & BT_SIZEUP_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & BT_SIZEUP_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if

						Else
						
							' Autrement pas besoin de se retaper toute ces operations, le bitmap est deja redimentionnee
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
						End if
					End if ' 
				End if ' BT_SIZEUP_PTR_ORG
			End if
			
			' ==========================  I C O N E   R E T R E C I S S E M E N T   C H E M I N  ==========================
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
				IF NOT BT_SIZEDOWN_CHEMIN = "" Then
					if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID < 1 Then 
						
						' Obtenir la ,nouvelle adresse memoire de l'image
						' Lire la ,nouvelle adresse memoire de l'image,
						'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
						IF INSTR(BT_SIZEDOWN_CHEMIN, "@") = 1 Then
							Dim IMG_ORIGINE as Any PTR
							IF Instr(Ucase(BT_SIZEDOWN_CHEMIN), "0X") > 0 Then 
								' Sous forme d'une adresse hexadecimale
								IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(BT_SIZEDOWN_CHEMIN, 4))))
								
							Else
								' Sous forme d'une adresse unsigned integer
								IMG_ORIGINE = Cast(any ptr, cint(val(Mid(BT_SIZEDOWN_CHEMIN, 2))))
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Fenetre_Bouton_SIZEUP(" & _index_ & ")ORG_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
						Else
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Chargement de l'ICONE RETRECISSEMENT depuis " & BT_SIZEDOWN_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Loading SIZEDOWN WINDOW image from " & BT_SIZEDOWN_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Save le path de l'image de cote
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ANCIEN = BT_SIZEDOWN_CHEMIN
							
							' Charger l'image et recuperer son ID
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_SIZEDOWN_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_DejaSize = false 
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_SIZEDOWN_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_SIZEDOWN_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if				
						End if
						
						' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
						' IF SIZ_ICONE = TRUE Then
						' Creer le buffeur memoire
						this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEDOWN(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID, this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						' End if
					End if
					
					
				' S'il y a PAS d'images ni rien, ca sera simplement un carre de couleurs :)
				END IF
				
				IF this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID < 1 Then 
					
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEDOWN(" & _index_ & ") ORG", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEDOWN(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = True
				Else
					' Nous avons l'image chargee!
				
					' Image non retrecie
					IF SIZ_ICONE = FALSE Then
					
						' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le picturebox
						'						+ bordure de la couleur du picturebox si plus petite
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> Aucune modification de la taille de l'icone de reduction de lapplication (" & SIZ_BT_SIZEDOWN_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> No modifications about size of sizedown application icon (" & SIZ_BT_SIZEDOWN_X & "x" & SIZ_BT_SIZEDOWN_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						

					Else
						' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
						' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
						
						
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = false Then
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = true

							' Et la il va subir sa modificaion mouahahahha!
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Redimentionner l'image aux dimensions du picturebox
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ORG_ID, Siz_X, Siz_Y)

							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & BT_SIZEDOWN_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & BT_SIZEDOWN_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if

						Else
						
							' Autrement pas besoin de se retaper toute ces operations, le bitmap est deja redimentionnee
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
						End if
					End if ' 
				End if ' BT_SIZEDOWN_PTR_ORG
			End if
			
			
			' ==========================  I C O N E   R E D U C T I O N   C H E M I N  ==========================
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
				IF NOT BT_REDUCT_CHEMIN = "" Then
					if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID < 1 Then 
						
						' Obtenir la ,nouvelle adresse memoire de l'image
						' Lire la ,nouvelle adresse memoire de l'image,
						'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
						IF INSTR(BT_REDUCT_CHEMIN, "@") = 1 Then
							Dim IMG_ORIGINE as Any PTR
							IF Instr(Ucase(BT_REDUCT_CHEMIN), "0X") > 0 Then 
								' Sous forme d'une adresse hexadecimale
								IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(BT_REDUCT_CHEMIN, 4))))
								
							Else
								' Sous forme d'une adresse unsigned integer
								IMG_ORIGINE = Cast(any ptr, cint(val(Mid(BT_REDUCT_CHEMIN, 2))))
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Fenetre_Bouton_SIZEUP(" & _index_ & ")ORG_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
						Else
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Chargement de l'ICONE RETRECISSEMENT depuis " & BT_REDUCT_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Loading SIZEDOWN WINDOW image from " & BT_REDUCT_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Save le path de l'image de cote
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_ANCIEN = BT_REDUCT_CHEMIN
							
							' Charger l'image et recuperer son ID
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(BT_REDUCT_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_DejaSize = false 
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_REDUCT_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & BT_REDUCT_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if				
						End if
						
						' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
						' IF SIZ_ICONE = TRUE Then
						' Creer le buffeur memoire
						this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEDOWN(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID, this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						' End if
					End if
					
					
				' S'il y a PAS d'images ni rien, ca sera simplement un carre de couleurs :)
				END IF
				
				IF this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID < 1 Then 
					
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEDOWN(" & _index_ & ") ORG", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_Bouton_SIZEDOWN(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

					this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = True
				Else
					' Nous avons l'image chargee!
				
					' Image non retrecie
					IF SIZ_ICONE = FALSE Then
					
						' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le picturebox
						'						+ bordure de la couleur du picturebox si plus petite
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> Aucune modification de la taille de l'icone de reduction de lapplication (" & SIZ_BT_REDUCT_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> No modifications about size of sizedown application icon (" & SIZ_BT_REDUCT_X & "x" & SIZ_BT_REDUCT_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						

					Else
						' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
						' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
						
						
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = false Then
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_Close_DejaSize = true

							' Et la il va subir sa modificaion mouahahahha!
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Redimentionner l'image aux dimensions du picturebox
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ORG_ID, Siz_X, Siz_Y)

							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & BT_REDUCT_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & BT_REDUCT_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if

						Else
						
							' Autrement pas besoin de se retaper toute ces operations, le bitmap est deja redimentionnee
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
						End if
					End if ' 
				End if ' BT_REDUCT_PTR_ORG
			End if
			
			
			' =================================  I C O N E   C H E M I N  =================================
			
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
				IF NOT ICONE_CHEMIN = "" Then
					if this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID < 1 Then 
						
						' Obtenir la ,nouvelle adresse memoire de l'image
						' Lire la ,nouvelle adresse memoire de l'image,
						'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
						IF INSTR(ICONE_CHEMIN, "@") = 1 Then
							Dim IMG_ORIGINE as Any PTR
							IF Instr(Ucase(ICONE_CHEMIN), "0X") > 0 Then 
								' Sous forme d'une adresse hexadecimale
								IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(ICONE_CHEMIN, 4))))
								
							Else
								' Sous forme d'une adresse unsigned integer
								IMG_ORIGINE = Cast(any ptr, cint(val(Mid(ICONE_CHEMIN, 2))))
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Fenetre_Icone(" & _index_ & ")ORG_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
						Else
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Chargement de l'ICONE FERMETURE depuis " & ICONE_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Loading CLOSING WINDOW image from " & ICONE_CHEMIN, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Save le path de l'image de cote
							this.INST_INIT_GUI.GUI__FENETRE(_index_).Icone_ANCIEN = ICONE_CHEMIN
							
							' Charger l'image et recuperer son ID
							this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(ICONE_CHEMIN, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_DejaSize = false 
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & ICONE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & ICONE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if				
						End if
						
						' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
						' IF SIZ_ICONE = TRUE Then
						' Creer le buffeur memoire
						this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_ICONE(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID, this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						' End if
					End if
					
					
				' S'il y a PAS d'images ni rien, ca sera simplement un carre de couleurs :)
				END IF
				
				IF this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID < 1 Then 
					
					this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_ICONE(" & _index_ & ") ORG", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
					this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_ICONE(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

					this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_DejaSize = True
				Else
					' Nous avons l'image chargee!
				
					' Image non retrecie
					IF SIZ_ICONE = FALSE Then
					
						' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le picturebox
						'						+ bordure de la couleur du picturebox si plus petite
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> Aucune modification de la taille de l'icone application (" & SIZ_BT_SIZEUP_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> No modifications about size of application icon (" & SIZ_BT_SIZEUP_X & "x" & SIZ_BT_CLOSE_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						

					Else
						' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
						' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
						
						
						if this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_DejaSize = false Then
							this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_DejaSize = true

							' Et la il va subir sa modificaion mouahahahha!
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							' Redimentionner l'image aux dimensions du picturebox
							this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_ORG_IMG_ID, Siz_X, Siz_Y)

							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & ICONE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & ICONE_CHEMIN & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if

						Else
						
							' Autrement pas besoin de se retaper toute ces operations, le bitmap est deja redimentionnee
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
						End if
					End if ' 
				End if ' ICONE
			End if
			
			
			' =================================  I M G   T I T R E   =================================
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
				IF NOT IMG_TITRE = "" Then 
					Dim Precedent_NumeroID as integer = 0
					
					' Supprimer l'ancienne bar si la taille a changee
					IF NOT this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.SizeUP = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.ASizeUP Then
						' CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)
						' this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID = 0
						
						
						
						this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.ASizeUP = this.INST_INIT_GUI.GUI__FENETRE(_index_).PROP_TYPE.SizeUP
					End if
				
				
					' Si l'icone de l'application n'a pas ete chargee, alors on le charge
					if this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID < 1 Then
						
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Chargement de l'image de la barre de titre depuis " & IMG_TITRE, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Loading title bar image from " & IMG_TITRE, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
								
						' Charger l'image et recuperer son ID
						this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(IMG_TITRE, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_PictureBox() [0x" & hex(this._CLE_) & "] " & IMG_TITRE & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_PictureBox() [0x" & hex(this._CLE_) & "] " & IMG_TITRE & " --> id:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] IMG_Changer_taille() source [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)) & "] --> " & Taille_X_ecran & "x" & Siz_Titre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] IMG_Changer_taille() source [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)) & "] --> " & Taille_X_ecran & "x" & Siz_Titre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						' Recuperer l'ancien ID
						Precedent_NumeroID = this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID
						
						
						
						' Redimentionner l'image aux dimensions du picturebox
						this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID, Taille_X_ecran, Siz_Titre)

						' On supprime l'ancien ID
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(Precedent_NumeroID)
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Nouvelle taille " & Taille_X_ecran & "x" & Siz_Titre & " concernant " & IMG_TITRE & " --> re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] New size " & Taille_X_ecran & "x" & Siz_Titre & " about " & IMG_TITRE & " --> re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
					End if
				End if
			End if
		
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creation du buffer du conteneur --> bitmap " & Taille_X_ecran & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creating contener buffer --> bitmap " & Taille_X_ecran & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Creer le buffer de la fenetre
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_buffer(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer du conteneur --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_taille(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Contener buffer --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_taille(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID) & " bytes)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			IF Siz_Titre > 0 Then ' UNIQUEMENT SI ON VOIT LA BARRE DE TITRE
			
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creation du buffer de la barre de titre --> bitmap " & Siz_X & "x" & Siz_Titre & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creating title bar buffer --> bitmap " & Siz_X & "x" & Siz_Titre & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				' Creer le buffer de la fenetre
				this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_buffer_titre(" & _index_ & ")", Siz_X, Siz_Titre, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
				

				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer de la barre de titre --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Titre & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_taille(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Title bar buffer --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Titre & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_taille(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID) & " bytes)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			Else
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Impossible de creer le buffeur de la barre de titre. Taille a 0", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Unable to create title bar buffer. Size at 0.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			End if

			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creation du buffer de l'ombre --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creating shadow buffer --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Creer le buffer OMBRE de la fenetre
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_ombre_buffer(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer de l'ombre --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_taille(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Shadow buffer --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_taille(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID) & " bytes)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Si du type 0, 3 ou 5 alors on dessine le fond
			IF TYPE_OBJ = 0 OR TYPE_OBJ = 3 OR TYPE_OBJ = 4 Then 
				' Couleur de fond
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_FOND_R & ", " & Couleur_FOND_V & ", " & Couleur_FOND_B & " Taux brute:" & Ombre & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID), 8) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_FOND_R & ", " & Couleur_FOND_V & ", " & Couleur_FOND_B & " Raw rate:" & Ombre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID), (0, 0)- step (Siz_X, Siz_Y), RGB(Couleur_FOND_R, Couleur_FOND_V, Couleur_FOND_B), BF
				
				
			else
			
				' Dim as integer Pos_X_TMP, Pos_Y_TMP, Siz_X_TMP, Siz_Y_TMP
				Dim as integer Max_X, Max_Y
				
				Max_X = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X()
				Max_Y = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y()
				
				' Pos_X_TMP = POS_X
				' Pos_Y_TMP = POS_Y
				
				' Siz_X_TMP = Siz_X
				' Siz_Y_TMP = Siz_Y
				
				' ' Si on est negatif
				' if Pos_X_TMP < 0 then Pos_X_TMP = 0
				
				' ' Si on sort de l'ecran de maniere absolue
				' if Pos_X_TMP > Max_X then Pos_X_TMP = Max_X
				
				' ' Si on est negatif
				' if Pos_Y_TMP < 0 then Pos_Y_TMP = 0
				
				' ' Si on sort de l'ecran de maniere absolue
				' if Pos_Y_TMP > Max_Y then Pos_Y_TMP = Max_Y
				
				' ' Si on sort de l'ecran de maniere relatif
				' if Pos_X_TMP + Siz_X_TMP > Max_X Then Siz_X_TMP = (Siz_X_TMP - ((Pos_X_TMP + Siz_X_TMP) - Max_X)) - 5
				
				' ' Si on sort de l'ecran de maniere relatif
				' if Pos_Y_TMP + Siz_Y_TMP > Max_Y Then Siz_Y_TMP = (Siz_Y_TMP - ((Pos_Y_TMP + Siz_Y_TMP) - Max_Y)) - 5
				
				' IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						' DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_getting(0x" & hex(PTR_BUFFER, 8) & ") " & Pos_X_TMP & "x" & Pos_Y_TMP & " " & Siz_X_TMP & "x" & Siz_Y_TMP & " : Couleur de fond RVB " & Couleur_FOND_R & ", " & Couleur_FOND_V & ", " & Couleur_FOND_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					' else
						' DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_getting(0x" & hex(PTR_BUFFER, 8) & ") " & Pos_X_TMP & "x" & Pos_Y_TMP & " " & Siz_X_TMP & "x" & Siz_Y_TMP & " : Background color RGB " & Couleur_FOND_R & ", " & Couleur_FOND_V & ", " & Couleur_FOND_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					' End if
				' end if
			
				' **** Futur "bug" a corriger, le fond qui capture NOIR si on sors la fenetre de l'ecran
				' Get (Pos_X,Pos_Y)-step(Siz_X, Siz_Y), PTR_BUFFER

			End if
			
			if CONTENEUR_COMPLET = FALSE Then
				' Si du type 0, 1, 2, 3, alors on dessine la barre de titre
				IF TYPE_OBJ = 0 OR TYPE_OBJ = 1 OR TYPE_OBJ = 2 OR TYPE_OBJ = 3 Then
					' Partie ou va acceuir le titre
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Titre & " : Couleur de fond du titre RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Titre & " : Background title color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID), (0, 0)- step (Siz_X , Siz_Titre), RGB(Couleur_R, Couleur_V, Couleur_B), BF
			
				End if
			End if
			
			IF Bordure = 1 Then
				' Cadre contour
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Bordure RVB 20, 20, 20", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Border RVB 20, 20, 20", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID), (0, 0)- step (Siz_X, Siz_Y), RGB(20, 20, 20), B
				
			End if
			
			
			
			' Afficher l'omre sous la fenetre
			IF Ombre > 0 Then
			
				' Que ca ne fasse pas de conneries!
				if Ombre > 255 then Ombre = 255
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Ombre sous la fenetre RVB " & Couleur_OMBRE_R & ", " & Couleur_OMBRE_V & ", " & Couleur_OMBRE_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Shadow under window RGB " & Couleur_OMBRE_R & ", " & Couleur_OMBRE_V & ", " & Couleur_OMBRE_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID), (0, 0)- step (Siz_X, Siz_Y), RGB(Couleur_OMBRE_R, Couleur_OMBRE_V, Couleur_OMBRE_B), BF
				
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Buffer de l'ombre[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)) & "] Alpha " & Ombre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Shadow buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)) & "] Alpha " & Ombre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				
				If Couleur_Alpha_MODE = 0 Then
					' Ombrage SOUS TOUTE la fenetre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, Pos_X + Ombre_PX, Pos_Y + Ombre_PY, 0, 0, Siz_X, Siz_Y, true, Ombre)
					' put (Pos_X + Ombre_PX, Pos_Y + Ombre_PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID), (0, 0)- step(Siz_X, Siz_Y), ALPHA, Ombre)
				
				ElseIf Couleur_Alpha_MODE = 1 Then
					' Ombrage plus clair SOUS le conteneur
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, Pos_X + Ombre_PX, Pos_Y + Ombre_PY + Siz_Titre, 0, 0, Siz_X, Siz_Y - Siz_Titre,true, abs(Ombre - abs(Couleur_ALPHA - Ombre)))
					' put (Pos_X + Ombre_PX, Pos_Y + Ombre_PY + Siz_Titre), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID), (0, 0)- step(Siz_X, Siz_Y - Siz_Titre), ALPHA, abs(Ombre - abs(Couleur_ALPHA - Ombre))
					
					' Ombrage plus fonce SOUS la barre de titre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, Pos_X + Ombre_PX, Pos_Y + Ombre_PY, 0, 0, Siz_X, Siz_Titre - 1, true, Ombre)
					' put (Pos_X + Ombre_PX, Pos_Y + Ombre_PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID), (0, 0)- step(Siz_X, Siz_Titre - 1), ALPHA, Ombre
				
				ElseIf Couleur_Alpha_MODE = 2 Then
					' Ombrage plus sombre SOUS le conteneur
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, Pos_X + Ombre_PX, Pos_Y + Ombre_PY + Siz_Titre, 0, 0, Siz_X, Siz_Y - Siz_Titre, true, Ombre)
					' put (Pos_X + Ombre_PX, Pos_Y + Ombre_PY + Siz_Titre), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID), (0, 0)- step(Siz_X, Siz_Y - Siz_Titre), ALPHA, Ombre
					
					
					' Ombrage plus clair sous le titre
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID, Pos_X + Ombre_PX, Pos_Y + Ombre_PY, 0, 0, Siz_X, Siz_Titre - 1, true, abs(Ombre - abs(Couleur_ALPHA - Ombre)))
					' put (Pos_X + Ombre_PX, Pos_Y + Ombre_PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID), (0, 0)- step(Siz_X, Siz_Titre - 1), ALPHA, abs(Ombre - abs(Couleur_ALPHA - Ombre))

				End if
					
				If CONTENEUR_COMPLET = FALSE Then
					' Si du type 0, 1, 2, 3, alors on dessine la ligne de separation et les caracteres
					IF TYPE_OBJ = 0 OR TYPE_OBJ = 1 OR TYPE_OBJ = 2 OR TYPE_OBJ = 3 Then
										
						IF this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID > 0 Then
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Titre & " : Buffer image barre de titre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Titre & " : Image bar title buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID, 0, 0, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID, true, false)
							' put CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID), (0, 0), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).TITRE_IMG_ID), (0, 0)- step(Siz_X, Siz_Titre), ALPHA
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creation du buffer de la barre de titre --> bitmap " & Siz_X & "x" & Siz_Titre & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Creating title bar buffer --> bitmap " & Siz_X & "x" & Siz_Titre & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							
							
							this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Fenetre_buffer_2_titre(" & _index_ & ")", Siz_X, Siz_Titre, 255, 0, 255, 0, this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle)

							
							IF POS_ICONE_POS = 0 OR POS_ICONE_POS = 1 Then
								' Gauche (Aucune modification)
							ElseIF POS_ICONE_POS = 2 Then
								' Centre
								POS_ICONE_X = (Siz_X/2) - (SIZ_ICONE_X)
								
							ElseIF POS_ICONE_POS = 3 Then
								' Droite
								POS_ICONE_X = Siz_X + POS_ICONE_X - SIZ_ICONE_X
							End if
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_CLOSE_X & "," & POS_ICONE_Y & "-" & SIZ_ICONE_X & "," & SIZ_ICONE_Y & " : Buffer image icone [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_CLOSE_X & "," & POS_ICONE_Y & "-" & SIZ_ICONE_X & "," & SIZ_ICONE_Y & " : Image icon buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if

							' Placer l'icone de l'application dans le buffer de la barre de titre
							CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID, POS_ICONE_X, POS_ICONE_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID, true, false)
							' put CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID), (POS_ICONE_X, POS_ICONE_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).ICONE_IMG_ID), (0, 0)- step(Siz_X, Siz_Titre), ALPHA, 255
							
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
								
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_CLOSE_X & "," & POS_BT_CLOSE_Y & "-" & SIZ_BT_CLOSE_X & "," & SIZ_BT_CLOSE_Y & " : Buffer image icone fermeture [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_CLOSE_X & "," & POS_BT_CLOSE_Y & "-" & SIZ_BT_CLOSE_X & "," & SIZ_BT_CLOSE_Y & " : Image closing icon buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if
								
								
								' Placer l'icone de fermeture dans le buffer de la barre de titre
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_CLOSE_IMG_ID, POS_BT_CLOSE_X, POS_BT_CLOSE_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID, true, false)
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
								
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_SIZEUP_X & "," & POS_BT_SIZEUP_Y & "-" & SIZ_BT_SIZEUP_X & "," & SIZ_BT_SIZEUP_Y & " : Buffer image icone agrandissement fenetre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_SIZEUP_X & "," & POS_BT_SIZEUP_Y & "-" & SIZ_BT_SIZEUP_X & "," & SIZ_BT_SIZEUP_Y & " : Image window size up icon buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if
								
								' Placer l'icone de agrandissement de la fenetre dans le buffer de la barre de titre
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID, POS_BT_SIZEUP_X, POS_BT_SIZEUP_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID, true, false)

								
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
								
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_SIZEDOWN_X & "," & POS_BT_SIZEDOWN_Y & "-" & SIZ_BT_SIZEDOWN_X & "," & SIZ_BT_SIZEDOWN_Y & " : Buffer image icone retrecissement fenetre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_SIZEDOWN_X & "," & POS_BT_SIZEDOWN_Y & "-" & SIZ_BT_SIZEDOWN_X & "," & SIZ_BT_SIZEDOWN_Y & " : Image window size down icon buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if
								
								
								' Placer l'icone de agrandissement de la fenetre dans le buffer de la barre de titre
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEDOWN_IMG_ID, POS_BT_SIZEDOWN_X, POS_BT_SIZEDOWN_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID, true, false)
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
								
								IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
									IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_REDUCT_X & "," & POS_BT_REDUCT_Y & "-" & SIZ_BT_REDUCT_X & "," & SIZ_BT_REDUCT_Y & " : Buffer image icone retrecissement fenetre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									else
										DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & ") " & POS_BT_REDUCT_X & "," & POS_BT_REDUCT_Y & "-" & SIZ_BT_REDUCT_X & "," & SIZ_BT_REDUCT_Y & " : Image window size down icon buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_SIZEUP_IMG_ID)) & "] Alpha " & Couleur_ALPHA, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
									End if
								end if
								
								
								' Placer l'icone de agrandissement de la fenetre dans le buffer de la barre de titre
								CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BT_REDUCT_IMG_ID, POS_BT_REDUCT_X, POS_BT_REDUCT_Y, 0, 0, Siz_X, Siz_Titre, this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID, true, false)
							End if
							
							
							' ====== LIGNE DESSOUS =====
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)) & ") 0," & Siz_Titre & "-" & Siz_X & ",0 : Ligne dessous du titre RVB 20, 20, 20", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)) & ") 0," & Siz_Titre & "-" & Siz_X & ",0 : Line under title RGB 20, 20, 20", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							' Ligne en dessous du titre
							Line CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID), (0, Siz_Titre)- step (Siz_X, 0), RGB(20, 20, 20), BF
							
						
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)) & ") " & POS_TITRE_X & "," & POS_TITRE_Y & " : TextTexte barre de titre '" & Titre & "' RVB " & Couleur_TITRE_R & ", " & Couleur_TITRE_V & ", " & Couleur_TITRE_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)) & ") " & POS_TITRE_X & "," & POS_TITRE_Y & " : Title bar text '" & Titre & "' RGB " & Couleur_TITRE_R & ", " & Couleur_TITRE_V & ", " & Couleur_TITRE_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
							' Dessiner les caracteres du titre de la fenetre
							Draw string CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID), (POS_TITRE_X, POS_TITRE_Y), Titre, RGB(Couleur_TITRE_R, Couleur_TITRE_V,Couleur_TITRE_B)
							
							
							IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
								IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] PUSH FINAL Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Buffer barre de titre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								else
									DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] FINAL PUSH Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Bar title buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								End if
							end if
						End if
					End if
				End if
			End if
			
			' ----------------------------------------------------------------------------------------------
			'            P U S H   F I N A L
			' ----------------------------------------------------------------------------------------------
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] PUSH FINAL Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y + Siz_Titre + 1 & "-" & Siz_X & "," & Siz_Y - Siz_Titre - 1 & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] FINAL PUSH Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y + Siz_Titre + 1 & "-" & Siz_X & "," & Siz_Y - Siz_Titre - 1 & " : Video buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if

			' Coller le tout dans le buffer video actuel
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID, Pos_X, Pos_Y + Siz_Titre, 0, 0, Siz_X, Siz_Y - Siz_Titre, true, Couleur_Alpha_CONTENEUR)
			' put (Pos_X, Pos_Y + Siz_Titre), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID), (0, 0)- step(Siz_X, Siz_Y - Siz_Titre), ALPHA, Couleur_Alpha_CONTENEUR
			
			
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID) > 0 Then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] PUSH FINAL Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Buffer barre de titre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] FINAL PUSH Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Bar title buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if

				' On ecrit la barre de titre dans le buffer final
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID, Pos_X, Pos_Y, 0, 0, Siz_X, Siz_Titre, true, Couleur_Alpha_TITRE)
				' put (Pos_X, Pos_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID), (0, 0)- step(Siz_X, Siz_Titre), ALPHA, Couleur_Alpha_TITRE  ' Couleur un peut blanchatre
			Else
				Message_erreur = ERRAVT("AVT_082", 0)
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & Message_erreur & " lors du chargement du BUFFER_TITRE_IMG_ID. Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Buffer barre de titre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & Message_erreur & " during loading BUFFER_TITRE_IMG_ID. Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Bar title buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			End if
			
			
			If CONTENEUR_COMPLET = FALSE Then
				' Si du type 0, 1, 2, 3, alors on dessine la ligne de separation et les caracteres
				IF TYPE_OBJ = 0 OR TYPE_OBJ = 1 OR TYPE_OBJ = 2 OR TYPE_OBJ = 3 Then
				
				
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] PUSH FINAL Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Buffer barre de titre 2[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)) & "] Alpha " & Couleur_Alpha_TITRE & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] FINAL PUSH Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Titre & " : Bar title buffer 2 [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)) & "] Alpha " & Couleur_Alpha_TITRE & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					
					IF Couleur_Alpha_MODE = 0 Then
						Couleur_Alpha_TITRE = Couleur_ALPHA
					Else
						Couleur_Alpha_TITRE = 255
					End if

					
					if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID) <> 0 Then
						' On ecrit la barre de titre dans le buffer final
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID, Pos_X, Pos_Y, 0, 0, Siz_X, Siz_Titre, true, Couleur_Alpha_TITRE)
						' put (Pos_X, Pos_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID), (0, 0)- step(Siz_X, Siz_Titre), ALPHA, Couleur_Alpha_TITRE 
					Else
						Message_erreur = ERRAVT("AVT_082", 0)
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & Message_erreur & " lors du chargement du BUFFER_TITRE_2_IMG_ID (ID:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
						Else
							DEBUG("[SCI] Creer_Fenetre() [0x" & hex(this._CLE_) & "] " & Message_erreur & " during loading BUFFER_TITRE_2_IMG_ID (ID:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID & ").", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
						End if
					End if


				End if
			End if
			
			' ----------------------------------------------------------------------------------------------
			'            D E S T R U C T I O N   D E S   T E M P O R A I R E S
			' ----------------------------------------------------------------------------------------------
			
		
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID)
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_2_IMG_ID = 0
			
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID)
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_TITRE_IMG_ID = 0

			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID)
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_OMBRE_WIN_IMG_ID = 0
			
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_Bitmap(this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID)
			this.INST_INIT_GUI.GUI__FENETRE(_index_).BUFFER_WIN_IMG_ID = 0

			' ----------------------------------------------------------------------------------------------
			'            D E S T R U C T I O N   D E S   T E M P O R A I R E S
			' ----------------------------------------------------------------------------------------------
			
		End scope

	End if
	
	Creer_Fenetre = this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle ' OK


	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SCI] Creer_Fenetre() Operations terminee. Retour handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		else
			DEBUG("[SCI] Creer_Fenetre() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__FENETRE(_index_).Identification_Objet.Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
		End if
	end if
End function
