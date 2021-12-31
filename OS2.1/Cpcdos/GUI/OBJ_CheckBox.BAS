#print * CheckBox
#include once "cpcdos.bi"

' Reflechir qu'aussi en cas de changement d'image a chaud l'image ne vas pas changer puisse ce qu'il est deja en memoire
'  il faudra(si changement) desallouer et recharger l'image
Function _SCI_Cpcdos_OSx__.Creer_CheckBox(_index_ as integer, _INDEX_PID_ as integer) as integer
	
	Dim CreerBuffer as boolean
	
	DEBUG("[SCI] Creer_CheckBox() IND:" & _index_ & " [0x" & hex(this._CLE_) & "] '" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).identification_objet.Nom & "' --> window '" & this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).identification_objet.Nom & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)


	
	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_CheckBox() Creation de la checkbox en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_CheckBox() Graphic checkbox creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Initialisation_OK = TRUE
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Incrementer le nombre d'objets present dans la fenetre parent
			this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS + 1	
		
			' Chercher un emplacement libre pour stocker le numero d'index correspondant a l'objet 
			'  pour la restitution graphique des objets dans l'ordre de la creation
			For index_free as integer = 1 to CPCDOS_INSTANCE._MAX_GUI___OBJS
				IF this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "" Then
					this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "CHECKBOX:" & _index_
					exit for
				End if
			Next index_free
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		Scope
			Dim Pos_Fenetre_X 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_X
			Dim Pos_Fenetre_Y 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_Y' + this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).SIZ_TITRE
			Dim Siz_Fenetre_X	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_X
			Dim Siz_Fenetre_Y	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_Y


			Dim Texte 			as string = CPCDOS_INSTANCE.remplacer_Variable_DYN(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).TEXTE, this._CLE_, this.RetourVAR)
			
			
			Dim Valeur 			as Integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Valeur
			
			Dim Pos_X 			as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).POS_X + Pos_Fenetre_X
			
			Dim Pos_Y 			as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).POS_Y + Pos_Fenetre_Y
			
			Dim Siz_X 			as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).SIZ_X
			Dim Siz_Y 			as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).SIZ_Y

			Dim IMG_Taille_X 	as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_TX
			Dim IMG_Taille_Y 	as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_TY
			
			
			Dim AutoSizeIMG		as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.AutoSizeIMG
			
			Dim Couleur_R 		as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Couleur_CTN_R
			Dim Couleur_V 		as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Couleur_CTN_V
			Dim Couleur_B 		as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Couleur_CTN_B
			
			Dim Couleur_FNT_R as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Couleur_FNT_R
			Dim Couleur_FNT_V as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Couleur_FNT_V
			Dim Couleur_FNT_B as integer = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Couleur_FNT_B
			
			Dim Couleur_ALPHA 	as integer
			
			Dim Fond_Couleur_bool as boolean = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Fond_Couleur
			Dim Fond_Couleur	as integer
			' Temporaire, Mettre la tolerance de fond
			IF Fond_Couleur_bool = TRUE Then
				Fond_Couleur = 255
			Else
				Fond_Couleur = 0
			End if
			
			Dim Image 			as String = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image
			Dim Image_Ancien	as String = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image_Ancien
			' Dim Pointeur_IMG_FOND 	as any PTR
			' Dim Pointeur_IMG 		as any PTR

			' Generer les proprietes par defaut d'un menu contextuel d'un objet graphique
			this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.OBJ_context_menu = CPCDOS_INSTANCE.SCI_INSTANCE.generer_ContextMenu_properties(GUI_TYPE.CheckBox, _index_)

			' Choisir la bonne image selon le valeur
			IF Valeur = 1 Then
				IF this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Survole = True Then
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_CHECKED_SURVOLE
				Else
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_CHECKED
				End if
			Else
				IF this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Survole = True Then
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image =  this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_NCHECKED_SURVOLE
				Else
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image =  this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_NCHECKED
				End if
			End if
			
			Image = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image
			
			IF Len(Image) > 0 Then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Image source : " & Image & " Position:" & Pos_X & "x" & Pos_Y & " Taille objet:" & Siz_X & "x" & Siz_Y & ". Mode:" & AutoSizeIMG & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Source image : " & Image & " Position:" & Pos_X & "x" & Pos_Y & " Object size:" & Siz_X & "x" & Siz_Y & ". Mode:" & AutoSizeIMG & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			end if

			IF NOT Image_Ancien = "" Then
			
				' Et que l'ancienne image ne correspond plus a l'actuelle
				IF NOT Image_Ancien = Image Then
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Le fichier image source '" & Image_Ancien & "' a change --> '" & Image & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Source picture file '" & Image_Ancien & "' has change --> '" & Image & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
						
					' Supprimer les anciennes images!
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID)
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID = 0
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID)
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID = 0
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID)
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID = 0

				End if
			End if
			
			' Sauvegarder de cote le BPP
			this.INST_INIT_GUI.GUI__CHECKBOX(_index_).BIT_ORG = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
			

			IF AutoSizeIMG = 0 Then
			
				' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que la checkbox
				'						+ bordure de la couleur de la checkbox si plus petite
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> Aucune modification de la taille image source (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] AutoSizeIMG:0 --> No modifications about size of source image(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				if Siz_X = 0 Then Siz_X = IMG_Taille_X + 5
				if Siz_Y = 0 Then Siz_Y = IMG_Taille_Y + 5
				
				' Et on les transmets aux objets en meme temps que le PUT d'en bas!
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).SIZ_X = Siz_X
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).SIZ_Y = Siz_Y
				

				
			
			ElseIF AutoSizeIMG = 1 Then
				' Dimentions de la checkbox = taille du texte
				
				Siz_X = Len(Texte) * 8 + IMG_Taille_X + 5
				Siz_Y = IMG_Taille_Y
				
				' On recupere les informations X et Y d'une image
				
				
				
				' Et on les transmets aux objets en meme temps que le PUT d'en bas!
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).SIZ_X = Siz_X
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).SIZ_Y = Siz_Y
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] AutoSizeIMG:1 --> Ajustation de la checkbox selon les dimentions de l'image source de " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] AutoSizeIMG:1 --> checkbox ajusting according source image dimensions " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			End if ' AutoSizeIMG
			
			
			
			' DANS TOUS LES CAS :
			' S'il y a une image, et que le pointeur = NULL, alors on la charge en memoire et
			'  on recupere son adresse memoire qu'on le stocke dans un pointeur.
			IF NOT Image = "" Then
				IF this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID = 0 Then 
					
					
					' Lire la ,nouvelle adresse memoire de l'image,
					'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
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
								DEBUG("[SCI] Creer_ProgressBar() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_ProgressBar() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("CheckBox(" & _index_ & ")_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
					
					Else
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Chargement de l'image de fond de " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Loading background image from " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						' Save le path de l'image de cote
						this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Image_Ancien = Image
						
						' Charger l'image et recuperer son ID
						this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(Image, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
						
						this.INST_INIT_GUI.GUI__CHECKBOX(_index_).DejaSize = false 
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] " & Image & " --> id:" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] " & Image & " --> id:" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
					End if
					

					' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
					IF AutoSizeIMG = 0 OR AutoSizeIMG = 1 Then
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Creation du buffer du conteneur --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Creating contener buffer --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						
						' Creer le buffeur memoire ( VERIFIER S'iL YA A PAS DE FUITE bitmap ICI)
						this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("CheckBox(" & _index_ & ") ORG", IMG_Taille_X, IMG_Taille_Y, Couleur_R, Couleur_V, Couleur_B, Fond_Couleur, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
						this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("CheckBox(" & _index_ & ") ORG", IMG_Taille_X, IMG_Taille_Y, Couleur_R, Couleur_V, Couleur_B, Fond_Couleur, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
						
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Copie du buffer ORIGINAL [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID)) & "] --> Vers le nouveau buffer [0x" & HEX(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID, 8) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Copy original buffer to the address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID)) & "] --> To the new buffer [0x" & HEX(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID, 8) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if
						
						' Copier le bitmap originale vers le bitmap courant
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID)
					
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Buffer orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							else
								DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Orignal buffer copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							End if
						end if

					End if
				End if
				
				
			' S'il y a PAS d'images ni rien, ca sera simplement un carre de couleurs :)
			END IF
			
			
			IF this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID < 1 Then 
			
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("CheckBox(" & _index_ & ") ORG", IMG_Taille_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
				
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("CheckBox(" & _index_ & ")", IMG_Taille_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)

				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).DejaSize = True

			End if
			
			IF NOT this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID <> 0 Then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Creation du buffer du conteneur de fond --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " opacite:" & Fond_Couleur & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets) ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Background contener buffer creating --> bitmap " & Siz_X & "x" & Siz_Y & "x" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() & " opacite:" & Fond_Couleur & " (" & (Siz_X * Siz_Y * CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()) & " octets)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				if Fond_Couleur = 0 Then
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("CheckBox(" & _index_ & ") ORG", IMG_Taille_X - 1, IMG_Taille_Y - 1, Couleur_R, Couleur_V, Couleur_B, 0, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
				Else
					this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("CheckBox(" & _index_ & ") ORG", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 0, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.Handle)
				End if
				
				
				this.INST_INIT_GUI.GUI__CHECKBOX(_index_).DejaSize = True
			End if
			
			
			' Le pointeur final !! :)
			' appliquer du flou
			if this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Blurry_Mode > 0 Then
				
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.apply_blurry(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Blurry_Mode * 2)
			End if
			
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID, 0, 0, 0, 0, IMG_Taille_X, IMG_Taille_Y, this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID, true, false)
			' put CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID), (0, 0), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_ID), (0, 0)- step(IMG_Taille_X, IMG_Taille_Y), alpha, 255
	

			' Si la fenetre est en cours de deplacement alors on la rend transparente
			IF this.INST_INIT_GUI.DEPLACEMENT > 0 Then
				if this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Alpha < 150 Then
					Couleur_ALPHA = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Alpha
				else
					Couleur_ALPHA = 150
				end if
			else
				' Alpha programme
				Couleur_ALPHA = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).PROP_TYPE.Alpha
			End if
			
			' Faire sorte que meme si le pointeur video qui s'update est pas dispo
			'  qu'il puisse actualiser son contenu "NOIR" pour que le texte se s'ecrit pas par dessus
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID) <> 0 Then
				Dim as integer En_trop_X, En_trop_Y
				
				' Verifier que l'image sorte pas de la fenetre
				IF (Pos_X-Pos_Fenetre_X) + Siz_X > Siz_Fenetre_X Then En_trop_X = ((Pos_X-Pos_Fenetre_X) + Siz_X) - Siz_Fenetre_X
				IF (Pos_Y-Pos_Fenetre_Y) + Siz_Y > Siz_Fenetre_Y Then En_trop_Y = ((Pos_Y-Pos_Fenetre_Y) + Siz_Y) - Siz_Fenetre_Y
				

				if Fond_Couleur > 0 Then
					' Si des caracteres ASCII sont present

					IF len(Texte) > 0 Then
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Modifier_BITMAP_texte(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID, Texte, IMG_Taille_X + 5, 4, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
					End if

					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_CheckBox() Operations terminees. Retourne handle:" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_CheckBox() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Y & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_CheckBox() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Y & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				
				
				' Et... Hop! on dessine dans le buffer video
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID, Pos_X, Pos_Y, 0, 0, Siz_X - En_trop_X, Siz_Y - En_trop_Y, true, Couleur_ALPHA)
				' put (Pos_X, Pos_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__CHECKBOX(_index_).IMG_fond_ID), (0, 0)- step(Siz_X - En_trop_X, Siz_Y - En_trop_Y), ALPHA, Couleur_ALPHA
				
				if Fond_Couleur = 0 Then
					' Si des caracteres ASCII sont present
					IF len(Texte) > 0 Then
						CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran(Texte, Pos_X + IMG_Taille_X + 5, Pos_Y + 4, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
					End if
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_CheckBox() Operations terminees. Retourne handle:" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_CheckBox() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if
				
			Else
				' Gros probleme...
				Creer_CheckBox = -1 ' ERREUR
			End if
		End Scope
	End if
	
	Creer_CheckBox = this.INST_INIT_GUI.GUI__CHECKBOX(_index_).Identification_Objet.handle ' OK

End function
