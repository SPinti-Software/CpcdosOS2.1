#print * Bouton
#include once "Cpcdos.bi"

Function _SCI_Cpcdos_OSx__.Creer_Bouton(_index_ as integer, _INDEX_PID_ as integer) as integer
	
	dim Message_erreur as String
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		' IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SCI] Creer_Bouton() IND:" & _index_ & " [0x" & hex(this._CLE_) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
	end if
	
	IF this.GUI_Mode = TRUE Then
	
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Bouton() Creation du bouton en cours ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Bouton() Graphic bouton creation in progress ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		IF this.INST_INIT_GUI.GUI__BOUTON(_index_).Initialisation_OK = FALSE Then
		
			' Premiere initialisation
			this.INST_INIT_GUI.GUI__BOUTON(_index_).Initialisation_OK = TRUE
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Premiere initialisation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] First initialization ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			' Incrementer le nombre d'objets present dans la fenetre parent
			this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Nombre_OBJETS + 1	
		
			' Chercher un emplacement libre pour stocker le numero d'index correspondant a l'objet 
			'  pour la restitution graphique des objets dans l'ordre de la creation
			For index_free as integer = 1 to CPCDOS_INSTANCE._MAX_GUI___OBJS
				IF this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "" Then
					this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Ordre_OBJETS(index_free) = "BOUTON:" & _index_
					exit for
				End if
			Next index_free
		else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Proprietes deja initialises", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Properties already initialised", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		End if
		
		
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Recuperation des donnees d'instances depuis la memoire SCI...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			else
				DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Getting instance data from SCI memory ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
			End if
		end if
	
		Dim Pos_Fenetre_X 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_X
		Dim Pos_Fenetre_Y 	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).POS_Y + this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).SIZ_TITRE
		Dim Siz_Fenetre_X	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_X
		Dim Siz_Fenetre_Y	as integer = this.INST_INIT_GUI.GUI__FENETRE(_INDEX_PID_).Siz_Y
		
		Dim Texte 			as string = CPCDOS_INSTANCE.remplacer_Variable_DYN(this.INST_INIT_GUI.GUI__BOUTON(_index_).TEXTE, this._CLE_, this.RetourVAR)

		Dim Pos_X 			as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).POS_X + Pos_Fenetre_X
		
		Dim Pos_Y 			as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).POS_Y + Pos_Fenetre_Y
		
		Dim Siz_X 			as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).SIZ_X
		Dim Siz_Y 			as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).SIZ_Y
		
		Dim Pression 		as boolean = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Pression
		
		Dim AutoSizeIMG		as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.AutoSizeIMG
		
		Dim Couleur_R 		as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Couleur_CTN_R
		Dim Couleur_V 		as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Couleur_CTN_V
		Dim Couleur_B 		as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Couleur_CTN_B
		
		Dim Couleur_FNT_R as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Couleur_FNT_R
		Dim Couleur_FNT_V as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Couleur_FNT_V
		Dim Couleur_FNT_B as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Couleur_FNT_B
		
		Dim Couleur_ALPHA 	as integer
		
		Dim Image 			as String = this.INST_INIT_GUI.GUI__BOUTON(_index_).Image
		Dim Image_Ancien	as String = this.INST_INIT_GUI.GUI__BOUTON(_index_).Image_Ancien
		
		Dim Image_Survole 	as String = this.INST_INIT_GUI.GUI__BOUTON(_index_).Image_Survole
		
		Dim Bordure as integer = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Bordure
		
		' TYPE_OBJ 
		' 0 : Bouton normal
		' 1 : Flat style
		
	
		IF Len(Image) > 0 Then
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Image source : " & Image & " Position:" & Pos_X & "x" & Pos_Y & " Taille objet:" & Siz_X & "x" & Siz_Y & ". Mode:" & AutoSizeIMG & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Source image : " & Image & " Position:" & Pos_X & "x" & Pos_Y & " Object size:" & Siz_X & "x" & Siz_Y & ". Mode:" & AutoSizeIMG & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		end if
		
		
		
		' Si l'image precedente ne correspond pas a l'image actuel, c'est que l'image a change
		' C'est aussi probable que si on change d'adresse, cela ne fait rien
		IF NOT Image_Ancien = "" Then
			IF NOT Image_Ancien = Image Then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Le fichier image source '" & Image_Ancien & "' a change --> '" & Image & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Source picture file '" & Image_Ancien & "' has change --> '" & Image & "'.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			
				' Supprimer les anciennes images!
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)
				this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID = 0
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)
				this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID = 0
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)
				this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID = 0
				CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Supprimer_BITMAP(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)
				this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID = 0

			End if
		End if
		
		
		
		' DANS TOUS LES CAS :
		' S'il y a une image, et que le pointeur = NULL, alors on la charge en memoire et
		'  on recupere son adresse memoire qu'on le stocke dans un pointeur.
		IF NOT Image = "" Then
			IF this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID < 1 Then 
				' Obtenir la ,nouvelle adresse memoire de l'image
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
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Bouton(" & _index_ & ")_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.Handle)
				
				Else
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Chargement de l'image de fond de " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Loading background image from " & Image, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					' Save le path de l'image de cote
					this.INST_INIT_GUI.GUI__BOUTON(_index_).Image_Ancien = Image
					
					' Charger l'image et recuperer son ID
					this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(Image, this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.Handle)
					
					
					this.INST_INIT_GUI.GUI__BOUTON(_index_).DejaSize = false 
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] " & Image & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] " & Image & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if
				
				' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
				IF AutoSizeIMG = 0 OR AutoSizeIMG = 1 Then
					' Creer le buffeur memoire
					this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Bouton(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.Handle)
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Copie du bitmap ORIGINAL id:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID) & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Copy original bitmap id:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID) & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					
					' Copier le bitmap originale vers le bitmap courant
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID, this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if
				
			End if
		END IF
		
		' 		=== S U R V O L E ===
		
		IF NOT Image_Survole = "" Then
			IF this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID < 1 Then 
				' Obtenir la ,nouvelle adresse memoire de l'image
				' Lire la ,nouvelle adresse memoire de l'image,
				'  dans le cas ou le developpeur indique deja un pointeur, alors on recupere ce dernier
				IF INSTR(Image_Survole, "@") = 1 Then
					Dim IMG_ORIGINE as Any PTR
					IF Instr(Ucase(Image_Survole), "0X") > 0 Then 
						' Sous forme d'une adresse hexadecimale
						IMG_ORIGINE = Cast(any ptr, cint(val("&h" & Mid(Image_Survole, 4))))
						
					Else
						' Sous forme d'une adresse unsigned integer
						IMG_ORIGINE = Cast(any ptr, cint(val(Mid(Image_Survole, 2))))
					End if
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap definit depuis l'adresse [0x" & HEX(IMG_ORIGINE) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap defined from address [0x" & HEX(IMG_ORIGINE) & "] from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_PTR("Bouton(" & _index_ & ")_DYN_PTR", IMG_ORIGINE, this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.Handle)
				
				Else
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Chargement de l'image de survole " & Image_Survole, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Loading overflown image from " & Image_Survole, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					' Save le path de l'image de cote
					this.INST_INIT_GUI.GUI__BOUTON(_index_).Image_Survole_Ancien = Image_Survole
					
					' Charger l'image et recuperer son ID
					this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP_depuis_FILE(Image_Survole, this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.Handle)
					
					
					this.INST_INIT_GUI.GUI__BOUTON(_index_).DejaSize = false 
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] " & Image_Survole & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] ORIGINALE(" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & ") depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] " & Image_Survole & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] ORIGINAL(" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & ") from instance index number " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if
				
				' Creer ce nouveau buffer uniquement en autosize 0 ou 1 car le 2 recreer un nouveau dans tous les cas
				IF AutoSizeIMG = 0 OR AutoSizeIMG = 1 Then
					' Creer le buffeur memoire
					this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Creer_BITMAP("Bouton(" & _index_ & ")", Siz_X, Siz_Y, Couleur_R, Couleur_V, Couleur_B, 255, this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.Handle)
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] (P1) Buffer du conteneur --> bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] cree!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Couleur de fond RVB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] (P1) Contener buffer --> bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " PTR:[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] created!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & ") 0,0-" & Siz_X & "," & Siz_Y & " : Background color RGB " & Couleur_R & ", " & Couleur_V & ", " & Couleur_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Copie du bitmap survole ORIGINAL id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] --> Vers le nouveau bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Copy original overflown bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] --> to the new bitmap id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & " PTR[0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "] ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if

					' Copier le bitmap originale vers le bitmap courant
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Copier_BITMAP(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID, this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)
					
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap orignal copie!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						else
							DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Orignal bitmap copied!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
						End if
					end if
				End if
				
			End if
		END IF
		
		IF AutoSizeIMG = 0 Then
			' AutoSizeIMG = 0 : Normal l'image est coupe si plus grand que le bouton
			'						+ bordure de la couleur du bouton si plus petite
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Aucune modification de la taille du bouton(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] No modifications about size of bouton(" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		ElseIF AutoSizeIMG = 1 Then
			' Dimentions du bouton = dimentions de l'image
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:1 --> Ajustation du bouton selon les dimentions de l'image source de " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:1 --> Button ajusting according source image dimensions " & Siz_X & "x" & Siz_Y, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
					
			' On recupere les informations X et Y d'une image
			Siz_X = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_x(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)
			Siz_Y = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_y(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)
			
			
			' Et on les transmets aux objets en meme temps que le PUT d'en bas!
			this.INST_INIT_GUI.GUI__BOUTON(_index_).SIZ_X = Siz_X
			this.INST_INIT_GUI.GUI__BOUTON(_index_).SIZ_Y = Siz_Y

		ElseIF AutoSizeIMG = 2 Then
			' Dimentions de l'image = dimentions du bouton (Fonctions de redimentionnement)
			' /!\ Pour les prochaines version, utiliser la fonction IMG_Changer_taille_RAPIDE()
			' Et aussi eviter de RE-redimentionner si il a deja ete fait (Augmentation memoire!)
			
			
			if this.INST_INIT_GUI.GUI__BOUTON(_index_).DejaSize = false Then
				this.INST_INIT_GUI.GUI__BOUTON(_index_).DejaSize = true
				
				
				' Et la il va subir sa modificaion mouahahahha!
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				' Redimentionner l'image aux dimensions du picturebox
				this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ORG_ID, Siz_X, Siz_Y)

				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & Image & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & Image & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				
				' --------------- SURVOLE ---------------
				
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Ecrasement de id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> IMG_Changer_taille() source id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID)) & "] --> " & Siz_X & "x" & Siz_Y & " (Writing on id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & " PTR [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "])", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				' Redimentionner l'image aux dimensions du picturebox
				this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.ReSize_BITMAP_NewID(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ORG_ID, Siz_X, Siz_Y)

				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> Nouvelle taille " & Siz_X & "x" & Siz_Y & " concernant " & Image_Survole & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & " re-charge en memoire a l'adresse [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "] depuis l'index d'instance numero " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] AutoSizeIMG:2 --> New size " & Siz_X & "x" & Siz_Y & " about " & Image_Survole & " --> id:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & " re-loaded in memory at address [0x" & HEX(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "] from instance index number  " & _index_ & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
				
				' --------------- FIN SURVOLE ---------------
				
			Else
			
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Bitmap deja redimentionne (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Already redimentionned bitmap (" & Siz_X & "x" & Siz_Y & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				end if
			End if
		End if
		
		' Le pointeur final !! :)
		' Pointeur_IMG = this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_PTR

		' Si la fenetre est en cours de deplacement alors on la rend transparente
		IF this.INST_INIT_GUI.DEPLACEMENT > 0 Then
			if this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Alpha < 150 Then
				Couleur_ALPHA = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Alpha
			else
				Couleur_ALPHA = 150
			end if
		else
			' Alpha programme
			Couleur_ALPHA = this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Alpha
		End if
		
		' Faire sorte que meme si le pointeur video qui s'update est pas dispo
		'  qu'il puisse actualiser son contenu "NOIR" pour que le texte se s'ecrit pas par dessus
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID) > 0 Then
			Dim as integer En_trop_X, En_trop_Y
			' Verifier que l'image sorte pas de la fenetre
			IF (Pos_X-Pos_Fenetre_X) + Siz_X > Siz_Fenetre_X Then En_trop_X = ((Pos_X-Pos_Fenetre_X) + Siz_X) - Siz_Fenetre_X
			IF (Pos_Y-Pos_Fenetre_Y) + Siz_Y > Siz_Fenetre_Y Then En_trop_Y = ((Pos_Y-Pos_Fenetre_Y) + Siz_Y) - Siz_Fenetre_Y
			
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Y & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X & "," & Siz_Y & " : Buffer video [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			'''' GUILLAUME : Crash trouve 21-05-2019 22:40
			
			' Hop on dessine dans le buffer video
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID, Pos_X, Pos_Y, 0, 0, Siz_X - En_trop_X, Siz_Y - En_trop_Y, true, Couleur_ALPHA)
			' put (Pos_X, Pos_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_ID), (0, 0)- step(Siz_X - En_trop_X, Siz_Y - En_trop_Y), ALPHA, Couleur_ALPHA
			
			IF this.INST_INIT_GUI.GUI__BOUTON(_index_).PROP_TYPE.Survole = True Then
				if CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID) <> 0 Then
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Dessiner_ecran(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID, Pos_X, Pos_Y, 0, 0, Siz_X - En_trop_X, Siz_Y - En_trop_Y, true, this.INST_INIT_GUI.GUI__BOUTON(_index_).IMAGE_SURVOLE_OPACITE)
					' put (Pos_X, Pos_Y), CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID), (0, 0)- step(Siz_X - En_trop_X, Siz_Y - En_trop_Y), ALPHA, this.INST_INIT_GUI.GUI__BOUTON(_index_).IMAGE_SURVOLE_OPACITE
				Else
					Message_erreur = ERRAVT("AVT_082", 0)
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] " & Message_erreur & " lors du chargement du IMG_SURVOLE_ID (" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & "). Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X - En_trop_X & "," & Siz_Y - En_trop_Y & " : Buffer barre de titre [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					else
						DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] " & Message_erreur & " during loading IMG_SURVOLE_ID. (" & this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID & "). Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Pos_X & "," & Pos_Y & "-" & Siz_X - En_trop_X & "," & Siz_Y - En_trop_Y & " : Bar title buffer [0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Recuperer_BITMAP_PTR(this.INST_INIT_GUI.GUI__BOUTON(_index_).IMG_SURVOLE_ID)) & "] Alpha 128", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
					End if
				End if
			End if
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Siz_X & "," & Siz_Y & " : Contour bouton RVB 020, 020, 020", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				Else
					DEBUG("[SCI] Creer_Bouton() [0x" & hex(this._CLE_) & "] Buffer_drawing(0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR(), 8) & ") " & Siz_X & "," & Siz_Y & " : Button border RGB 020, 020, 020" & Couleur_FNT_R & ", " & Couleur_FNT_V & ", " & Couleur_FNT_B, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
			
			IF len(Texte) > 0 Then
			

				Dim Position_Texte_X as integer = (Siz_X / 2) - ((LEN(Texte)*8) / 2)
				Dim Position_Texte_Y as integer = (Siz_Y / 2) - (8 / 2) ' TEMPORAIRE --> 8 etant la hauteur en pixels
				
				if Bordure = 0 Then
					IF Pression = TRUE Then
						Position_Texte_X = Position_Texte_X + 1
						Position_Texte_Y = Position_Texte_Y + 1
					End if
				End if
				
				' Si des caracteres ASCII sont present on ecrit dans le bitmap
				IF len(Texte) > 0 Then
					CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran(Texte, Pos_X + Position_Texte_X, Pos_Y + Position_Texte_Y, Couleur_FNT_R, Couleur_FNT_V, Couleur_FNT_B)
				End if
	
			End if
			' Contour noirci
			Line (Pos_X, Pos_Y)- step (Siz_X, Siz_Y), RGB(20, 20, 20), B
			
			
			if Bordure = 0 Then
				IF Pression = True Then
					' *** Clic enfonce ***
					
					' Gauche
					Line (Pos_X + 1, Pos_Y + 1)- step (0, Siz_Y - 2), RGB(100, 100, 100)
					
					' Haut
					Line (Pos_X + 1, Pos_Y + 1)- step (Siz_X - 2, 0), RGB(100, 100, 100)
					
					' Droite
					Line (Pos_X - 1 + Siz_X, Pos_Y + 2)- step (0, Siz_Y - 4), RGB(200, 200, 200)
					
					' Bas
					Line (Pos_X + 1, Pos_Y - 1 + Siz_Y)- step (Siz_X - 2, 0), RGB(200, 200, 200)
				
				Else
					' *** Clic non enfonce ***
					
					' Gauche
					Line (Pos_X + 1, Pos_Y + 1)- step (0, Siz_Y - 2), RGB(200, 200, 200)
					
					' Haut
					Line (Pos_X + 1, Pos_Y + 1)- step (Siz_X - 2, 0), RGB(200, 200, 200)
					
					' Droite
					Line (Pos_X - 1 + Siz_X, Pos_Y + 2)- step (0, Siz_Y - 4), RGB(100, 100, 100)
					
					' Bas
					Line (Pos_X + 1, Pos_Y - 1 + Siz_Y)- step (Siz_X - 2, 0), RGB(100, 100, 100)
				End if
			End if
			
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 AND this.INST_INIT_GUI.DEPLACEMENT = 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SCI] Creer_Bouton() Operations terminees. Retourne handle:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				else
					DEBUG("[SCI] Creer_Bouton() Finished operations. Return handle:" & this.INST_INIT_GUI.GUI__BOUTON(_index_).identification_objet.handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, this.RetourVAR)
				End if
			end if
		Else
			' Gros probleme...
			Creer_Bouton = -1 ' ERREUR
		End if

	End if
	
	Creer_Bouton = this.INST_INIT_GUI.GUI__BOUTON(_index_).Identification_Objet.handle ' OK
	
	this.INST_INIT_GUI.GUI__BOUTON(_index_).BIT_ORG = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
	
End function
