' Contient des fonctions et variables concernant 
' le systeme de Cpcdos

' Par Sebastien FAVIER
' Reecriture le 15/10/2018
' Mise a jour le 05/03/2021

' 05-02-2021	: Ajout des conditions de securité
' 15-10-2018	: Adaptation en beta 2.1
' 19-01-2018	: AJOUT du garbage collector pour les bitmaps (GUI)
' 17-11-2017 	: AJOUT du gestionnaire de bitmaps
' 07-11-2020	: AJOUT de la suppression des bitmaps par 1 numero de handle
' 10-09-2020	: CORRECTIONS des crashs provoque par des pointeurs NULL, et NON verifies !

#print * GESTIONNAIRE MEMOIRE BITMAP

#include once "Cpcdos.bi"	' Declaration/Fonctions communs
' =====================================================================================
'   							M E M O I R E   B I T M A P
' =====================================================================================

#print * Allocation bitmap

Function _memoire_bitmap.Bloc_Libre() as integer
	' Permet de chercher un bloc d'espace libre
	' Renvoie un numero d'ID
	
	For Boucle as integer = 1 to this._MAX_BITMAP_ID
		if this.utilise(Boucle) = false Then
		
			' Une fois qu'on a trouve un emplacement libre, on renvoie le numero
			Function = Boucle
			exit function
			
		End if	
	Next Boucle
	
	function = -1
End Function

Function _memoire_bitmap.Creer_BITMAP(TX as integer, TY as integer, byval Handle as Integer) as integer
	Function = Creer_BITMAP("_SANS_NOM_", TX, TY, 255, 000, 255, 255, Handle)
End Function

Function _memoire_bitmap.Creer_BITMAP(Nom as String, TX as integer, TY as integer, byval Handle as Integer) as integer
	Function = Creer_BITMAP(Nom, TX, TY, 255, 000, 255, 255, Handle)
End Function



Function _memoire_bitmap.Creer_BITMAP(TX as integer, TY as integer, Rouge as integer, Vert as integer, Bleu as integer, OpaciteAlpha_ as integer, byval Handle as Integer) as integer
	Function = Creer_BITMAP("_SANS_NOM_", TX, TY, Rouge, Vert, Bleu, OpaciteAlpha_, Handle)
End Function

Function _memoire_bitmap.Creer_BITMAP(Nom_ as String, TX_ as integer, TY_ as integer, Rouge as integer, Vert as integer, Bleu as integer, OpaciteAlpha_ as integer, byval Handle as Integer) as integer
	' Permet de creer un bitmap vide, et renvoie son numero d'ID
	
	' Rechercher un emplacement libre
	Dim Index_Libre as integer = Bloc_Libre()
	
	Function = Creer_BITMAP(Index_Libre, Nom_, TX_, TY_, Rouge, Vert, Bleu, OpaciteAlpha_, Handle)
	
End Function

Function _memoire_bitmap.Creer_BITMAP_depuis_PTR(Nom_ as String, Pointeur as Any PTR, byval Handle as Integer) as integer
	
	
	function = Creer_BITMAP_depuis_PTR(Nom_, Pointeur, Handle, 0, 0)

End Function

Function _memoire_bitmap.Creer_BITMAP_depuis_PTR(Nom_ as String, Pointeur as Any PTR, byval Handle as Integer, TX_ as integer, TY_ as integer) as integer
	' Rechercher un emplacement libre
	
	if Pointeur > 0 Then
		Dim Index_Libre as integer = Bloc_Libre()
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() parent handle:" & Handle & " id:" & Index_Libre & " depuis l'offset [0x" & hex(Pointeur) & "] Nom:" & Nom_, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() parent handle:" & Handle & " id:" & Index_Libre & " from l'offset [0x" & hex(Pointeur) & "] Name:" & Nom_, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		if Index_Libre < 0 then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return -1
		End if
		
		Dim as integer Taille_, Bits_, TX, TY

		
		if ImageInfo(Pointeur, TX, TY, Bits_) <> 0  Then	
			if TX_ <= 0 AND TY_ <= 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" [ERREUR] Creer_BITMAP_depuis_PTR() aucune informations. Impossible de continuer", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG(" [ERROR] Creer_BITMAP_depuis_PTR() nothing informations. Unable to continue", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
				Function = 0
				Exit function
			Else
				' Ah on a au moins la taille X et Y du bitmap
				TX = TX_
				TY = TY_
			End if
		End if
		
		if Bits_ < 16 OR Bits_ > 32 then 
			Bits_ = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(TRUE)
		End if

		' Associer le buffer
		this.donnees_RVBA(Index_Libre) = Pointeur

		' Et push ses donnees
		this.Handle_parent	(Index_Libre) = Handle
		this.Nom			(Index_Libre) = Nom_
		this.Taille			(Index_Libre) = (TX_ * TY_ * Bits_)
		this.TX				(Index_Libre) = TX_
		this.TY				(Index_Libre) = TY_
		this.bits			(Index_Libre) = Bits_
		this.OpaciteAlpha	(Index_Libre) = 255
		this.utilise		(Index_Libre) = TRUE
		this.LoadFromPTR	(Index_Libre) = TRUE

		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK] id:" & Index_Libre & " offset depuis le bitmap existant [0x" & Hex(this.donnees_RVBA(Index_Libre)) & "] " & TX_ & "x" & TY_ & " " & Bits_ & " bits - handle:" & Handle & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK] id:" & Index_Libre & " offset from existing bitmap [0x" & Hex(this.donnees_RVBA(Index_Libre)) & "] " & TX_ & "x" & TY_ & " " & Bits_ & " bits - handle:" & Handle & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		Function = Index_Libre
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERREUR] ptr [0x" & Hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERROR] ptr[0x" & Hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
End Function


Function _memoire_bitmap.Creer_BITMAP(byval NumeroID as integer, Nom_ as String, TX_ as integer, TY_ as integer, Rouge as integer, Vert as integer, Bleu as integer, OpaciteAlpha_ as integer, byval Handle as Integer) as integer

	IF NumeroID > 0 Then

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Creer_BITMAP() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return -1
		End if

		ENTRER_SectionCritique()
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Creer_BITMAP() parent handle:" & Handle & " id:" & NumeroID & " Nom:" & Nom_ & " " & TX_ & "x" & TY_ & " RVBA(" & Rouge & "," & Vert & "," & Bleu & "," & OpaciteAlpha_ & ")" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Creer_BITMAP() parent handle:" & Handle & " id:" & NumeroID & " Name:" & Nom_ & " " & TX_ & "x" & TY_ & " RGBA(" & Rouge & "," & Vert & "," & Bleu & "," & OpaciteAlpha_ & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
			
		' Si les coordonees X,Y sont inferieur a 1
		if TX_ < 1 OR TY_ < 1 Then  SORTIR_SectionCritique() : Return 0
		
		Dim Bits_ as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(TRUE)
		
		' Creer le buffer
		this.donnees_RVBA(NumeroID) = ImageCreate(TX_, TY_, RGBA(Rouge, Vert, Bleu, OpaciteAlpha_), Bits_)

		' Et push ses donnees
		this.Handle_parent	(NumeroID) = Handle
		this.Nom			(NumeroID) = Nom_
		this.Taille			(NumeroID) = (TX_ * TY_ * Bits_)
		this.TX				(NumeroID) = TX_
		this.TY				(NumeroID) = TY_
		this.bits			(NumeroID) = Bits_
		this.OpaciteAlpha	(NumeroID) = OpaciteAlpha_
		this.utilise		(NumeroID) = TRUE
		this.EstFILE		(NumeroID) = FALSE
		
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG(" [OK] offset bitmap [0x" & Hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG(" [OK] bitmap offset [0x" & Hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		
		
		Function = NumeroID
		
		SORTIR_SectionCritique()
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Creer_BITMAP() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Creer_BITMAP() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return -1
	End if
		
End Function


Function _memoire_bitmap.Creer_BITMAP_depuis_FILE(byval ImageSource as String, byval Handle as Integer) as integer
	' Permet de charger un fichier jpg, png, bmp.. et le stocker en memoire
	' puis renvoie un numero d'ID
	
	if Handle > 0 Then
		' Rechercher un emplacement libre
		Dim Index_Libre as integer = Bloc_Libre()
		Dim as integer Hauteur, Largeur
		Dim Bits_ as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
		
		

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_FILE() parent handle:" & Handle & " Source '" & ImageSource & "'" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_FILE() parent handle:" & Handle & " Source '" & ImageSource & "'", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		if Index_Libre < 0 then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return -1
		End if
		
		
		' Si aucune image a ete specifie
		if ImageSource = "" Then Function = 0 : Exit Function
		
		' Creer le buffer
		this.donnees_RVBA(Index_Libre) = CPCDOS_INSTANCE.Charger_Image(ImageSource, Hauteur, Largeur)
		
		if this.donnees_RVBA(Index_Libre) <= 0 then
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("Creer_BITMAP_depuis_FILE() [ERREUR] Bitmap nulle", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("Creer_BITMAP_depuis_FILE() [ERROR] null bitmap", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
			return -1
		End if
		
		' Et push ses donnees
		this.Handle_Parent	(Index_Libre) = Handle
		this.Nom			(Index_Libre) = ImageSource
		this.Taille			(Index_Libre) = Hauteur * Largeur * Bits_
		this.TX				(Index_Libre) = Largeur
		this.TY				(Index_Libre) = Hauteur
		this.bits			(Index_Libre) = Bits_
		this.EstFILE		(Index_Libre) = TRUE
		this.utilise		(Index_Libre) = TRUE
		
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("Creer_BITMAP_depuis_FILE() [OK] id:" & Index_Libre & " offset bitmap [0x" & Hex(this.donnees_RVBA(Index_Libre)) & "] " & Bits_ & " bits", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("Creer_BITMAP_depuis_FILE() [OK] id:" & Index_Libre & " bitmap offset [0x" & Hex(this.donnees_RVBA(Index_Libre)) & "] " & Bits_ & " bits", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		return Index_Libre
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_FILE() [ERREUR] Handle : " & Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Creer_BITMAP_depuis_FILE() [ERROR] Handle : " & Handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return -1
	End if	
End Function

#print Blurry
function _memoire_bitmap.apply_blurry(byval NumeroID as integer, intensite as integer) as boolean
	return apply_blurry(0, NumeroID, intensite)
End function

function _memoire_bitmap.apply_blurry(byval NumeroID_background as integer, byval NumeroID as integer, intensite as integer) as boolean
	' Permet d'appliquer du flou sur une image

	DEBUG("apply_blurry() NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)

	If NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("apply_blurry() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return -1
		End if

		if this.utilise(NumeroID) = TRUE Then
		
			' Supprimer_BITMAP(NumeroID) 
			
			Dim Bits_ as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
			Dim as integer Hauteur, Largeur
			' Detruire l'ancien pointeur !!!
			Dim ImageSource as String = this.Nom(NumeroID)
			
			
			if Modifier_BITMAP_depuis_PTR(NumeroID, CPCDOS_INSTANCE.SYSTEME_INSTANCE.buffer_to_blurry(Recuperer_BITMAP_PTR(NumeroID), intensite)) = true Then
				Function = true
			Else
				Function = false
			End if

			if NumeroID_background > 0 Then
				DEBUG("apply_blurry() Background NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
					DEBUG("apply_blurry() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					return -1
				End if

				if Modifier_BITMAP_depuis_PTR(NumeroID_background, CPCDOS_INSTANCE.SYSTEME_INSTANCE.buffer_to_blurry(Recuperer_BITMAP_PTR(NumeroID_background), intensite)) = true Then
					Function = true
				Else
					Function = false
				End if

			End if

		Else
			Function = false
		End if

	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] apply_blurry() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] apply_blurry() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if

	
end function

#print * Smart reload
Function _memoire_bitmap.Reload_FILE(byval NumeroID as integer) as boolean
	' Permet de recharger un fichier PNG via son ID
	' Dans le cas ou on change de BITS
	If NumeroID > 0 Then

		
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Reload_FILE() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return -1
		End if

		if this.utilise(NumeroID) = TRUE Then
		
			Supprimer_BITMAP(NumeroID)
			
			IF this.EstFILE(NumeroID) = TRUE Then
				Dim Bits_ as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
				Dim as integer Hauteur, Largeur
				' Detruire l'ancien pointeur !!!
				Dim ImageSource as String = this.Nom(NumeroID)
				
				
				
				this.donnees_RVBA	(NumeroID) = CPCDOS_INSTANCE.Charger_Image(ImageSource, Hauteur, Largeur)
				this.Taille			(NumeroID) = Hauteur * Largeur * Bits_
				this.TX				(NumeroID) = Largeur
				this.TY				(NumeroID) = Hauteur
				this.bits			(NumeroID) = Bits_
				Function = true
				
			Else
				Function = false
			End if
		Else
			Function = false
		End if

	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Reload_FILE() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Reload_FILE() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End function

Function _memoire_bitmap.Auto_Reload_FILE() as boolean
	' Permet de recharger tous les fichier image en memoire
	' Dans le cas ou on change de BITS
	

	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() Suppression et rechargement de toutes les references BITMAP" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() Deleting all and reloading BITMAP references", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
	For Boucle as integer = 1 to this._MAX_BITMAP_ID
		Supprimer_BITMAP(Boucle)
	Next Boucle
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() Deferencement des identifiants des ressources graphiques des objets ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() Deleting graphic objects  ressource id references...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
	this.Supprimer_ID_Objets()
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Auto_Reload_FILE() [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
	Function = true
	
End function

#print * Gestion bitmap des objet GUI
Function _memoire_bitmap.Supprimer_ID_Objets() as boolean
	' Cette fonction permet de supprimer toutes les references des bitmap OBJETS
	' pour que chaque objet les rechargent independament!

	' Chercher les fenetres
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_FENETRE
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).Initialisation_OK = TRUE Then
		
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_CLOSE_IMG_ID 		= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_CLOSE_ORG_IMG_ID 	= 0
			
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).ICONE_IMG_ID 			= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).ICONE_ORG_IMG_ID 		= 0
			
			
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).TITRE_IMG_ID		 	= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BUFFER_TITRE_IMG_ID		= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BUFFER_TITRE_2_IMG_ID	= 0
			
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BUFFER_WIN_IMG_ID		= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BUFFER_OMBRE_WIN_IMG_ID	= 0
			
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_SIZEUP_IMG_ID		= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_SIZEUP_IMG_ORG_ID	= 0
			
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_SIZEDOWN_IMG_ID		= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_SIZEDOWN_IMG_ORG_ID	= 0
			
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_REDUCT_IMG_ID		= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__FENETRE(boucle).BT_REDUCT_IMG_ORG_ID	= 0
	
		End if
	Next boucle

	' Chercher les boutons
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_BOUTON
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(boucle).Initialisation_OK = TRUE Then
		
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(boucle).IMG_ID 					= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(boucle).IMG_ORG_ID 				= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__BOUTON(boucle).IMG_SURVOLE_ID 			= 0
			
		End if
	Next boucle

	' Chercher les picturebox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_PICTUREBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(boucle).Initialisation_OK = TRUE Then
		
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(boucle).IMG_ID 				= 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PICTUREBOX(boucle).IMG_ORG_ID 			= 0
			
		End if
	Next boucle

	' Textbloc (Y'en a pas !)
	' For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_TEXTBLOCK
		' if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBLOCK(boucle).Initialisation_OK = TRUE Then
		' End if
	' Next boucle

	' Chercher les TextBox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_TEXTBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(boucle).Initialisation_OK = TRUE Then
		
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(boucle).IMG_ID = 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__TEXTBOX(boucle).IMG_ORG_ID = 0
			
		End if
	Next boucle

	' Chercher les Progressbar
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_PROGRESSBAR
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(boucle).Initialisation_OK = TRUE Then
		
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(boucle).IMG_ID = 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(boucle).IMG_prog_ID = 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__PROGRESSBAR(boucle).IMG_ORG_ID = 0
			
		End if
	Next boucle
	
	' Chercher les checkbox
	For boucle as integer = 1 to CPCDOS_INSTANCE._MAX_GUI_CHECKBOX
		if CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(boucle).Initialisation_OK = TRUE Then
		
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(boucle).IMG_ID = 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(boucle).IMG_fond_ID = 0
			CPCDOS_INSTANCE.SCI_INSTANCE.INST_INIT_GUI.GUI__CHECKBOX(boucle).IMG_ORG_ID = 0
			
		End if
	Next boucle

	Function = true
End Function

#print * Copie duplicat
Function _memoire_bitmap.Dupliquer_BITMAP(byval NumeroID as integer) as integer
	' Permet de dupliquer un bitmap dans un nouvel ID
	' Retourne le numero ID
	
	if NumeroID > 0 Then
		Dim NouvelID as integer

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dupliquer_BITMAP() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return -1
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() id:" & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() id:" & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		if NumeroID >= this._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return 0
		end if
		IF this.utilise(NumeroID) = TRUE Then
			Dim as integer Bits_
			
			
			' On cree chercher un nouveau bloc vide
			NouvelID = Bloc_Libre()
			
			if NouvelID < 0 then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
				return -1
			End if
			
			' On copie l'originale dans ce nouveau bloc
			if Copier_BITMAP(NumeroID, NouvelID) = False Then
				Function = -1
			Else
				' Et on le retourne une fois copie
				Function = NouvelID
			End if
			
		Else
			Function = 0
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [OK] Nouvel id:" & NouvelID & " offset bitmap [0x" & hex(this.donnees_RVBA(NouvelID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [OK] New id:" & NouvelID & " bitmap offset [0x" & hex(this.donnees_RVBA(NouvelID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		return NouvelID
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dupliquer_BITMAP() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return -1
	End if
	
	return -1
End Function

Function _memoire_bitmap.Copier_BITMAP(byval NumeroID_SOURCE as integer, byval NumeroID_DESTINATION as integer) as boolean
	' Permet de copier un bitmap dans un autre depuis son ID
	' TRUE : ok
	' FALSE: Probleme
	
	if NumeroID_SOURCE > 0 AND NumeroID_DESTINATION > 0 Then

		if NumeroID_SOURCE > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Copier_BITMAP() [ERROR] NumeroID_SOURCE : " & NumeroID_SOURCE & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		if NumeroID_DESTINATION > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Copier_BITMAP() [ERROR] NumeroID_DESTINATION : " & NumeroID_DESTINATION & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Copier_BITMAP() id source:" & NumeroID_SOURCE & " id destination:" & NumeroID_DESTINATION, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Copier_BITMAP() source id:" & NumeroID_SOURCE & " destination id:" & NumeroID_DESTINATION, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		
		
		if NumeroID_SOURCE >= this._MAX_BITMAP_ID OR NumeroID_DESTINATION >= This._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Copier_BITMAP() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Copier_BITMAP() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return 0
		end if
		
		IF this.utilise(NumeroID_SOURCE) = TRUE Then
			Dim as integer Bits_, OpAlpha_
			Dim as integer TX_, TY_, NouvelID, handle_
			Dim Nom_ as String
			
			' On recupere les proprietes d'ID d'origine
			Bits_ 		= this.Bits			(NumeroID_SOURCE)
			OpAlpha_	= this.Bits			(NumeroID_SOURCE)
			TX_ 		= this.TX			(NumeroID_SOURCE)
			TY_			= this.TY			(NumeroID_SOURCE)
			Nom_		= this.Nom			(NumeroID_SOURCE)
			handle_		= this.Handle_Parent(NumeroID_SOURCE)
			
			' On supprime l'ancien ID
			Supprimer_BITMAP(NumeroID_DESTINATION)

			' Et on le recree!
			IF Creer_BITMAP(NumeroID_DESTINATION, Nom_, TX_, TY_, 255, 000, 255, OpAlpha_, handle_) = FALSE Then
				return false
			End if
			
			' Une fois cree, on modifie son PTR depuis une autre source (NumeroID_SOURCE)
			' IF Modifier_BITMAP_CP(NumeroID_DESTINATION, NumeroID_SOURCE, 0, 0) = FALSE Then
			IF Modifier_BITMAP_depuis_PTR_CP(NumeroID_DESTINATION, this.donnees_RVBA(NumeroID_SOURCE)) = FALSE Then
				return false
			End if
			
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK] Nouvel offset bitmap RVBA [0x" & hex(this.donnees_RVBA(NumeroID_DESTINATION)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK] New RVBA bitmap offset [0x" & hex(this.donnees_RVBA(NumeroID_DESTINATION)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		return True
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Copier_BITMAP() [ERREUR] NumeroID_SOURCE " & NumeroID_SOURCE & " NumeroID_DESTINATION :" & NumeroID_DESTINATION, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Copier_BITMAP() [ERROR] NumeroID_SOURCE " & NumeroID_SOURCE & " NumeroID_DESTINATION :" & NumeroID_DESTINATION, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

#print * Resize memory
Function _memoire_bitmap.ReSize_BITMAP_NewID(byval NumeroID as integer, TX_ as integer, TY_ as integer) as integer
	' Cette fonction permet de re-sizer un bitmap en creant un nouveau ID
	
	Dim Index_Libre as integer = 0
	Dim Bits_ as integer = 0
	DIM IMG_PTR_TMP as Any PTR
	
	if NumeroID > 0 Then

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("ReSize_BITMAP_NewID() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() id:" & NumeroID & " source [0x" & hex(this.donnees_RVBA(NumeroID)) & "] Taille finale:" & TX_ & "x" & TY_ , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() id:" & NumeroID & " source [0x" & hex(this.donnees_RVBA(NumeroID)) & "] finale size:" & TX_ & "x" & TY_, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if

		if NumeroID >= this._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return true
		end if

		Index_Libre = Dupliquer_BITMAP(NumeroID)

		if Index_Libre > 0 Then
			Bits_ = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() Destination id:" & Index_Libre & " PTR [0x" & hex(this.donnees_RVBA(Index_Libre)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() Destination id:" & Index_Libre & " PTR [0x" & hex(this.donnees_RVBA(Index_Libre)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
			
			
			CPCDOS_INSTANCE.SCI_INSTANCE.IMG_Changer_taille(this.donnees_RVBA(NumeroID), IMG_PTR_TMP, TX_, TY_, true)
			
			if Modifier_BITMAP_depuis_PTR(Index_Libre, IMG_PTR_TMP) = false Then 
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" [ERREUR] ReSize_BITMAP_NewID()", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG(" [ERROR] ReSize_BITMAP_NewID()", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
				
				return -1
			End if
			
			this.Taille			(Index_Libre) = TY_ * TX_ * Bits_
			this.TX				(Index_Libre) = TX_
			this.TY				(Index_Libre) = TY_
			this.Bits			(Index_Libre) = Bits_

			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" [OK] id:" & Index_Libre & " Offset bitmap modifie [0x" & HEX(this.donnees_RVBA(Index_Libre)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG(" [OK] id:" & Index_Libre & " Modified bitmap offset [0x" & HEX(this.donnees_RVBA(Index_Libre)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
			
			return Index_Libre
		Else
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() [ERREUR] Index_Libre : " & Index_Libre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() [ERROR] Index_Libre : " & Index_Libre, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return -1
		End if
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] ReSize_BITMAP_NewID() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return -1
	End if

End Function

Function _memoire_bitmap.ReSize_BITMAP(byval NumeroID as integer, TX_ as integer, TY_ as integer) as boolean
	' Cette fonction permet de re-sizer un bitmap en gardant son ID
	
	if NumeroID > 0 Then

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("ReSize_BITMAP() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] ReSize_BITMAP() id:" & NumeroID & " duplication 'tmp' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] ReSize_BITMAP() id:" & NumeroID & " duplication 'tmp' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		
		if NumeroID >= this._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] ReSize_BITMAP() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] ReSize_BITMAP() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return true
		end if
		
		Dim ReSize_TMP as integer = Dupliquer_BITMAP(NumeroID)

		if ReSize_TMP > 0 Then
			Dim Bits_ as integer = CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels()

			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[_memoire_bitmap] ReSize_BITMAP() OK id:" & NumeroID & " Taille finale:" & TX_ & "x" & TY_ & " " & Bits_ & " bits source (tmp:" & ReSize_TMP & ") [0x" & hex(this.donnees_RVBA(ReSize_TMP)) & "] Destination id:" & NumeroID & " [0x" & hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[_memoire_bitmap] ReSize_BITMAP() OK id:" & NumeroID & " Final size:" & TX_ & "x" & TY_ & " " & Bits_ & " bits source (tmp:" & ReSize_TMP & ") [0x" & hex(this.donnees_RVBA(ReSize_TMP)) & "] Destination id:" & NumeroID & " [0x" & hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if

			this.donnees_RVBA(NumeroID) = CPCDOS_INSTANCE.SCI_INSTANCE.IMG_Changer_taille(this.donnees_RVBA(ReSize_TMP), this.donnees_RVBA(NumeroID), TX_, TY_, true)
			
			this.Taille			(NumeroID) = TY_ * TX_ * Bits_
			this.TX				(NumeroID) = TX_
			this.TY				(NumeroID) = TY_
			this.Bits			(NumeroID) = Bits_
			
			Supprimer_BITMAP(ReSize_TMP)
			
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG(" [OK] id:" & NumeroID & " Offset bitmap [0x" & HEX(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG(" [OK] id:" & NumeroID & " Bitmap offset [0x" & HEX(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
			
			return true
		Else
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] ReSize_BITMAP() [ERREUR] ReSize_TMP : " & ReSize_TMP, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] ReSize_BITMAP() [ERROR] ReSize_TMP : " & ReSize_TMP, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return false
		End if
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] ReSize_BITMAP() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] ReSize_BITMAP() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if

End Function

Function _memoire_bitmap.Modifier_BITMAP_depuis_PTR(byval NumeroID as integer, Pointeur as Any ptr) as boolean
	' Permet de modifier le pointeur du bitmap par un autre
	
	if NumeroID > 0 AND Pointeur > 0 Then

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Modifier_BITMAP_depuis_PTR() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() id source:" & NumeroID & " offset [0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() source id:" & NumeroID & " offset [0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		
		if NumeroID >= this._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return true
		end if
		
		this.donnees_RVBA(NumeroID) = Pointeur
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if

		return true
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() [ERREUR] NumeroID : " & NumeroID & " ptr [0x" & Hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() [ERROR] NumeroID : " & NumeroID & " ptr [0x" & Hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function


Function _memoire_bitmap.Modifier_BITMAP_depuis_PTR_CP(byval NumeroID as integer, Pointeur as Any ptr) as boolean
	' Permet de dupliquer pointeur bitmap

	if NumeroID > 0 Then

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Modifier_BITMAP_CP() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if


		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() Pointeur source [0x" & hex(this.donnees_RVBA(NumeroID)) & "] destination offset [0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() Pointeur source [0x" & hex(this.donnees_RVBA(NumeroID)) & "] destination offset [0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if

		if NumeroID >= this._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return false
		end if
		
		if Pointeur <> 0 Then
			' Placer l'image dans l'autre buffer
			put this.donnees_RVBA(NumeroID), (0, 0), Pointeur, alpha
			
		Else
			return false
			Exit function
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK] bitmap transfere vers strcture [0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK] bitmap transfered to structure [0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if

		return true
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

Function _memoire_bitmap.Modifier_BITMAP_CP(byval NumeroID as integer, byval NumeroID_Dest as integer, PX as integer, PY as integer) as boolean
	return Modifier_BITMAP_CP(NumeroID, NumeroID_Dest, PX, PY, 0)
End function


Function _memoire_bitmap.Modifier_BITMAP_CP(byval NumeroID as integer, byval NumeroID_Dest as integer, PX as integer, PY as integer, alpha_ as integer) as boolean
	' Permet de dupliquer pointeur bitmap

	if NumeroID > 0 AND NumeroID_Dest > 0 then

		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Modifier_BITMAP_CP() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		if NumeroID_Dest > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Modifier_BITMAP_CP() [ERROR] NumeroID_Dest : " & NumeroID_Dest & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() id source:" & NumeroID & " id:" & NumeroID_Dest, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() id source:" & NumeroID & " id:" & NumeroID_Dest, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() Pointeur source [0x" & hex(this.donnees_RVBA(NumeroID)) & "] destination relatif pos(" & PX & "x" & PY & ") offset [0x" & hex(this.donnees_RVBA(NumeroID_Dest)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() source pointer [0x" & hex(this.donnees_RVBA(NumeroID)) & "] destination relative pos(" & PX & "x" & PY & ") offset [0x" & hex(this.donnees_RVBA(NumeroID_Dest)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if

		if NumeroID >= this._MAX_BITMAP_ID OR NumeroID_Dest >= This._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return 0
		end if
		
		if this.donnees_RVBA(NumeroID_Dest) <> 0 AND this.donnees_RVBA(NumeroID) <> 0 Then
			' Placer l'image dans l'autre buffer
			if alpha_ > 0 Then
				put this.donnees_RVBA(NumeroID_Dest), (PX, PY), this.donnees_RVBA(NumeroID), alpha, alpha_
			Else
				put this.donnees_RVBA(NumeroID_Dest), (PX, PY), this.donnees_RVBA(NumeroID), alpha
			End if
		Else
		
			return false
		End if
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		return true
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() [ERREUR] NumeroID : " & NumeroID & " NumeroID_Dest:" & NumeroID_Dest, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_CP() [ERROR] NumeroID : " & NumeroID & " NumeroID_Dest:" & NumeroID_Dest, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

Function _memoire_bitmap.Modifier_BITMAP_texte(byval NumeroID as integer, Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
	' Permet d'ecrire du texte sur un bitmap

	if NumeroID > 0 then 
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Modifier_BITMAP_texte() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() Texte:'" & Texte & "' " & PX & "x" & PY & " id source:" & NumeroID & " PTR[0x" & hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() Texte:'" & Texte & "' " & PX & "x" & PY & " source id:" & NumeroID & " PTR[0x" & hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if

		if NumeroID >= this._MAX_BITMAP_ID Then 	
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() [ERREUR] Bitmap ID ressources max ateinte " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() [ERROR] Bitmap ID full " & this._MAX_BITMAP_ID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return 0
		end if
		
		' Faire sorte a ce que le texte soit decoupe pour le multi-ligne ou non
		Draw String this.donnees_RVBA(NumeroID), (PX, PY), Texte, RGB(R, V, B)
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		return true
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

Function _memoire_bitmap.Modifier_BITMAP_texte(Pointeur as any ptr, Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
	' Permet d'ecrire du texte sur un bitmap
	
	if Pointeur > 0 Then

		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() Texte:'" & Texte & "' " & PX & "x" & PY & " source PTR[0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() Texte:'" & Texte & "' " & PX & "x" & PY & " source PTR[0x" & hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		if Pointeur = 0 then Return false
		
		' Faire sorte a ce que le texte soit decoupe pour le multi-ligne ou non
		Draw String Pointeur, (PX, PY), Texte, RGB(R, V, B)
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		return True
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() [ERREUR] ptr [0x" & Hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Modifier_BITMAP_texte() [ERROR] ptr [0x" & Hex(Pointeur) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

#print * Info structure
Function _memoire_bitmap.Recuperer_BITMAP_PTR(byval NumeroID as integer) as any ptr
	' Permet de recuperer le pointeur via son ID
	
	if NumeroID > 0 Then
	
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_PTR() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return 0
		End if

		' Ah.. Ici le bit est different... Faut donc le recharger!
		if this.EstFILE	(NumeroID) = true Then
			if this.bits(NumeroID) <> CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() : Bit de couleur different pour (" & NumeroID & ") source:" & this.bits(NumeroID) & " actuel:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(true) & " rechargement du fichier source ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() : Unable to load bitmap, ID (" & NumeroID & ") source:" & this.bits(NumeroID) & " actual:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(true) & " reloading source file ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
				
				if Reload_FILE(NumeroID) = false Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() : Impossible de recharger le bitmap, l'ID (" & NumeroID & ") n'existe pas ou le fichier de ressource n'est pas attribue.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					Else
						DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() : Unable to load bitmap, ID (" & NumeroID & ") not exist, or ressource file isn't attributed.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					End if
					return 0
				End if
			End if
		Else
			if this.bits(NumeroID) <> CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() : Pas de recharge, plantage possible : Bit de couleur different pour (" & NumeroID & ") source:" & this.bits(NumeroID) & " actuel:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(true), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				Else
					DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() : No reload, crash is possible : Unable to load bitmap, ID (" & NumeroID & ") source:" & this.bits(NumeroID) & " actual:" & CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels(true), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				End if
			End if
			
			' Function = CPCDOS_INSTANCE.SYSTEME_INSTANCE.bit_converter(this.donnees_RVBA(NumeroID))
		End if
		
		return this.donnees_RVBA(NumeroID)
		
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() [ERREUR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_PTR() [ERROR] NumeroID : " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function


Function _memoire_bitmap.Recuperer_BITMAP_x(byval NumeroID as integer) as integer
	' Permet de recuperer la taille x
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_x() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return 0
		End if

		return this.TX(NumeroID)
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_x() [ERREUR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_x() [ERROR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return 0
	End if
End Function

Function _memoire_bitmap.Recuperer_BITMAP_y(byval NumeroID as integer) as integer
	' Permet de recuperer la taille y
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_y() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return 0
		End if

		return this.TY(NumeroID)
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_y() [ERREUR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_y() [ERROR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return 0
	End if
End Function

Function _memoire_bitmap.Recuperer_BITMAP_bits(byval NumeroID as integer) as integer
	' Permet de recuperer le bits
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_bits() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return 0
		End if

		return this.bits(NumeroID)
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_bits() [ERREUR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_bits() [ERROR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return 0
	End if
	
End Function

Function _memoire_bitmap.Recuperer_BITMAP_xybit(byval NumeroID as integer) as string
	' Recuperer x, y, bits

	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_xybit() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return ""
		End if

		return this.TX(NumeroID) & "x" & this.TY(NumeroID) & "x" & this.bits(NumeroID)
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_xybit() [ERREUR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_xybit() [ERROR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return ""
	End if
end function

Function _memoire_bitmap.Recuperer_BITMAP_taille(byval NumeroID as integer) as integer
	' Permet de recuperer la taille en octets
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_taille() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return 0
		End if

		return this.Taille(NumeroID)
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_taille() [ERREUR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_taille() [ERROR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return 0
	End if
	
End Function


Function _memoire_bitmap.Recuperer_BITMAP_Nombre() as integer
	' Permet de recuperer le nombre d'elements 
	
	Dim Valeur as integer = 0
	For Boucle as integer = 1 to this._MAX_BITMAP_ID
		if this.utilise(Boucle) = true Then
			Valeur += 1
			
		End if	
	Next Boucle
	
	Function = Valeur
End Function

Function _memoire_bitmap.Recuperer_BITMAP_Liste() as String
	' Permet de recuperer la liste des elements
	
	Dim Valeur as integer = 0
	Dim Texte as String = ""
	Dim AjoutFILE as String
	Dim AjoutHANDLE as String
	For Boucle as integer = 1 to this._MAX_BITMAP_ID
		if this.utilise(Boucle) = true Then
			Valeur += 1
			IF this.EstFILE(Boucle) = TRUE Then AjoutFILE = "FILE" else AjoutFILE = ""
			IF this.Handle_Parent(Boucle) > 0 Then 
				AjoutHANDLE = CPCDOS_INSTANCE.SYSTEME_INSTANCE.getHandleType(this.Handle_Parent(Boucle))
			else
				AjoutHANDLE = "ERR"
			End if
			Texte += Valeur & ") id:" & Boucle & " handle:" & this.Handle_Parent(Boucle) & "[" & AjoutHANDLE & "] " & this.TX(Boucle) & "x" & this.TY(Boucle) & "x" & this.bits(Boucle) & " " & this.Taille(Boucle) & "b" & " PTR[0x" & hex(this.donnees_RVBA(Boucle)) & "] '" & this.Nom(Boucle) & "' (" & AjoutFILE & ")" & CRLF
		End if	
	Next Boucle
	
	Function = Texte
End Function

Function _memoire_bitmap.Recuperer_BITMAP_Taille() as Uinteger
	' Permet de recuperer la taille en octets
	
	Dim Valeur as integer = 0
	Dim Taille_F as Uinteger = 0
	For Boucle as integer = 1 to this._MAX_BITMAP_ID
		if this.utilise(Boucle) = true Then
			Taille_F += This.Taille(Boucle)
		End if	
	Next Boucle
	
	Function = Taille_F
End Function

Function _memoire_bitmap.Recuperer_BITMAP_id_by_Handle(byval handle as integer) as integer
	' Recuperer l'ID via son numero de handle
	
	if handle > 0 Then
		For boucle as integer = 0 to this._MAX_BITMAP_ID
			if this.Handle_Parent(boucle) = handle Then
				return boucle ' Retourner son ID
			End if
		Next boucle
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_id_by_Handle() [ERREUR] handle " & handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_id_by_Handle() [ERROR] handle " & handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return -1
	End if
End Function

Function _memoire_bitmap.Recuperer_BITMAP_ptr_by_Handle(byval handle as integer) as any ptr
	' Recuperer le pointeur via son numero de handle (le premier de la liste)
	
	if handle > 0 Then
		For boucle as integer = 0 to this._MAX_BITMAP_ID
			if this.Handle_Parent(boucle) = handle Then
				return this.Donnees_RVBA(boucle)
			End if
		Next boucle
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_ptr_by_Handle() [ERREUR] handle " & handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_ptr_by_Handle() [ERROR] handle " & handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return 0
	End if
End Function

Function _memoire_bitmap.Recuperer_BITMAP_Handle(byval NumeroID as integer) as Integer
	' Permet de recuperer le numero dee handle de l'objet parent
	

	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_Handle() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return 0
		End if

		if this.utilise(NumeroID) = true Then
			return This.Handle_Parent(NumeroID)
		End if	
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_Handle() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_Handle() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if

	return 0
End Function


Function _memoire_bitmap.Recuperer_BITMAP_nom(byval NumeroID as integer) as String
	' Permet de recuperer la taille en octets
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Recuperer_BITMAP_nom() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return "<null>"
		End if

		return this.Nom(NumeroID)
	Else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_nom() [ERREUR] NumeroID " & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Recuperer_BITMAP_nom() [ERROR] NumeroID" & NumeroID & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return "<null>"
	End if
	
End Function

#print * Garbage collector
Function _memoire_bitmap.GarbageCollector() as String
	' Cette fonction permet de supprimer tous les bitmaps qui ne sont plus references par
	'  leur numero de handle.
	
	Dim NombreBitmaps 	as Integer = 0
	Dim NombreErreurs	as integer = 0
	Dim MemoireLibere 	as UInteger = 0
	
	Dim Taille as integer
	Dim Handle as integer
	Dim offset as any ptr
	
	Dim Resultat 		as String = ""
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] GarbageCollector() : Recherche des bitmaps non references par leur handle parent ..." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] GarbageCollector() : Research unreferenced bitmaps with their parent handle ..." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
	For Boucle as integer = 1 to this._MAX_BITMAP_ID
		
		' Si cette reference est en memoire
		If this.utilise(Boucle) = TRUE Then

			' Si le handle n'existe plus
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.getHandleType(this.Handle_Parent(Boucle)) = "null" Then
			
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("Garbage collector --> Reference BITMAP nulle trouve! id:" & Boucle & " a l'adresse [0x" & hex(this.donnees_RVBA(Boucle)) & "] associe au numero de handle:" & this.Handle_parent(boucle) & " qui n'existe plus. Suppression en cours!" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					Else
						DEBUG("Garbage collector --> Null BITMAP reference found! id:" & Boucle & " at address [0x" & hex(this.donnees_RVBA(Boucle)) & "] associed to handle:" & this.Handle_parent(boucle) & " who not exist. Deleting in progress!" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					End if
				End if
				
				Taille = this.Taille(Boucle)
				Handle = this.handle_Parent(Boucle)
				offset = this.donnees_RVBA(Boucle)
			
				' On le supprime illico de la memoire
				IF Supprimer_BITMAP(Boucle) = TRUE Then
				
					' Incrementer le nombre de bitmaps non references
					NombreBitmaps += 1
					
					' Incrementer le nombre d'octets libere
					MemoireLibere += Taille
				
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[OK] Garbage collector --> id:" & Boucle & " PTR[0x" & hex(offset) & "] handle:" & Handle & " supprime!" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
						Else
							DEBUG("[OK] Garbage collector --> id:" & Boucle & " PTR[0x" & hex(offset) & "] handle:" & Handle & " deleted!" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
						End if
					End if
				Else
					NombreErreurs += 1
					' Ooups une erreur
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[ERREUR] Garbage collector --> id:" & Boucle & " PTR[0x" & hex(this.donnees_RVBA(Boucle)) & "] handle:" & this.Handle_parent(boucle) & " Impossible de le supprimer" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
						Else
							DEBUG("[ERROR] Garbage collector --> id:" & Boucle & " PTR[0x" & hex(this.donnees_RVBA(Boucle)) & "] handle:" & this.Handle_parent(boucle) & " unable to delete" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
						End if
					End if
				End if
			End if
		End if
	Next Boucle
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] GarbageCollector() : Recherche terminee. " & NombreBitmaps & " bitmaps supprimes " & int(MemoireLibere/1024) & " Ko libere" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] GarbageCollector() : End of research. " & NombreBitmaps & " deleted bitmaps " & int(MemoireLibere/1024) & " Kb free" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
	End if
	
	IF NombreBitmaps > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			Resultat = NombreBitmaps & " bitmaps " & int(MemoireLibere/1024) & " ko"
		Else
			Resultat = NombreBitmaps & " bitmaps " & int(MemoireLibere/1024) & " kb"
		End if
	End if
	
	Function = Resultat
	
End Function

Function _memoire_bitmap.IsPresent_BITMAP_byhandle(byval handle as integer) as integer
	' Cette fonction permet de tester la presence d'un bitmap asocie a un numero de handle
	' Retourne le numero d'ID
	if handle > 0 Then
		For boucle as integer = 1 to this._MAX_BITMAP_ID
			If this.utilise(Boucle) = TRUE Then
			
				' Si le numero de handle correspond
				if this.Handle_Parent(Boucle) = handle Then
					
					return boucle
				End if
			End if
		Next boucle
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] IsPresent_BITMAP_byhandle() [ERREUR] handle " & handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] IsPresent_BITMAP_byhandle() [ERROR] handle " & handle, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return -1
	End if
End Function

Function _memoire_bitmap.Supprimer_BITMAP_byhandle(byval handle as integer) as integer
	' Permet de supprimer TOUS les bitmaps d'un handle
	
	if handle > 0 Then
		Dim trouve as integer = false
		' parcourir toute la memoire a la recherche des handle
		For boucle as integer = 1 to this._MAX_BITMAP_ID
			If this.utilise(Boucle) = TRUE Then
			
				' Si le numero de handle correspond
				if this.Handle_Parent(Boucle) = handle Then
				
					trouve += 1
					
					' on le supprime!
					Supprimer_BITMAP(boucle)
					
				End if
				
			End if
		Next boucle
		
		' Retourner le resultat
		return trouve
	End if
	
End function

Function _memoire_bitmap.Supprimer_BITMAP(byval NumeroID as integer) as Boolean
	' Permet de supprimer un bitmap
	
		if NumeroID > 0 Then
			if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
				DEBUG("Supprimer_BITMAP() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
				return false
			End if

			IF this.utilise(NumeroID) = TRUE Then
				
				IF this.LoadFromPTR(NumeroID) = FALSE Then ' Ne pas supprimer si c'est charge depuis un pointeur tiers
					if this.donnees_RVBA(NumeroID) <> 0 Then
					
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG("[_memoire_bitmap] Supprimer_BITMAP() id " & NumeroID & " Nom:'" & this.Nom(NumeroID) & "' handle:" & this.Handle_Parent(NumeroID) & " Offset:[0x" & hex(this.donnees_RVBA(NumeroID)) & "]" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
							Else
								DEBUG("[_memoire_bitmap] Supprimer_BITMAP() id " & NumeroID & " Name:'" & this.Nom(NumeroID) & "' handle:" & this.Handle_Parent(NumeroID) & " Offset:[0x" & hex(this.donnees_RVBA(NumeroID)) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
							End if
						End if
						ImageDestroy(this.donnees_RVBA(NumeroID))
						this.donnees_RVBA	(NumeroID) 	= 0
						this.Bits			(NumeroID) 	= 0
						this.OpaciteAlpha	(NumeroID) 	= 0
						this.TX				(NumeroID) 	= 0
						this.TY				(NumeroID) 	= 0
						this.Taille			(NumeroID) 	= 0
						this.Handle_Parent	(NumeroID) 	= 0
						this.Nom			(NumeroID) 	= ""
						this.utilise		(NumeroID) 	= FALSE
						this.EstFILE		(NumeroID) 	= False
						this.Notification	(NumeroID) 	= FALSE
						this.LoadFromPTR	(NumeroID) 	= FALSE
						this.Actu_Bitmap_TYPE(NumeroID) = 0
						this.Actu_Bitmap_PID (NumeroID) = 0
						this.Actu_Bitmap_Index(NumeroID)= 0
						
						IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
							IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
								DEBUG(" [OK] " & NumeroID & " supprime", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
							Else
								DEBUG(" [OK] " & NumeroID & " deleted", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
							End if
						End if
						
						Return true
					End if
				Else
					IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
						IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
							DEBUG("[_memoire_bitmap] Supprimer_BITMAP() id " & NumeroID & " est un pointeur tiers Offset:[0x" & hex(this.donnees_RVBA(NumeroID)) & "]. Suppression non autorise." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
						Else
							DEBUG("[_memoire_bitmap] Supprimer_BITMAP() id " & NumeroID & " is a external pointer Offset:[0x" & hex(this.donnees_RVBA(NumeroID)) & "] Deleting is not autorized.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
						End if
					End if
				End if
			Else
			
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[_memoire_bitmap] Supprimer_BITMAP() id " & NumeroID & " introuvable !" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					Else
						DEBUG("[_memoire_bitmap] Supprimer_BITMAP() id " & NumeroID & " not found !", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
					End if
				End if
			End if
		else
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Supprimer_BITMAP() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Supprimer_BITMAP() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
			return false
		End if
		
		return false
		
End Function

#print * Refresh buffer notification
Sub _memoire_bitmap.Actualise(NumeroID as integer, valeur as boolean)
	' Cette fonction permet de notifier dans l'ID que le contenu est reactualise
	
	' DEBUG("*** SET Actualise(" & ID & ") = " & valeur & "." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Actualise() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return
		End if

		CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Notification(NumeroID) = valeur
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Actualise() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Actualise() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return
	End if
End sub

' #2
Function _memoire_bitmap.Actualise(NumeroID as integer) as boolean
	' Cette fonction permet de savoir s'il y a eu du contenu reactualise ou non
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Actualise#2() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		Function = CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Notification(NumeroID)
		
		CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Notification(NumeroID) = false
	
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Actualise() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Actualise() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function


#print * Screen buffer writter
Function _memoire_bitmap.Ecrire_ecran_ml(byval PAGE_VIDEO as integer, Texte as String, TableauLignes() as String, NombreLignes as integer, TypeRetourOct as integer, PX as integer, PY as integer, SX as integer, SY as integer, R as integer, V as integer, B as integer) as boolean
	' On definit la page video avant de dessiner
	if PAGE_VIDEO >= 0 Then
		ScreenSet PAGE_VIDEO, PAGE_VIDEO
		Function = Ecrire_ecran_ml(Texte, TableauLignes(), NombreLignes, TypeRetourOct, PX, PY, SX, SY, R, V, B)
		ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Ecrire_ecran_ml() [ERREUR] PAGE_VIDEO " & PAGE_VIDEO, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Ecrire_ecran_ml() [ERROR] PAGE_VIDEO " & PAGE_VIDEO, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

Function _memoire_bitmap.Ecrire_ecran_ml(Texte as String, TableauLignes() as String, NombreLignes as integer, TypeRetourOct as integer, PX as integer, PY as integer, SX as integer, SY as integer, R as integer, V as integer, B as integer) as boolean
	Dim Position_Texte_X as integer = PX + 3
	Dim Position_Texte_Y as integer = PY + 4
	
	IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Ecrire_ecran() Texte:'" & Texte & "' Nombre lignes:" & NombreLignes & " R:" & R & " V:" & V & " B:" & B & " " & PX & "x" & PY & " source PTR SCREEN[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR()) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Ecrire_ecran() Text:'" & Texte & "' Lines number:" & NombreLignes & " R:" & R & " G:" & V & " B:" & B & " " & PX & "x" & PY & " source PTR SCREEN[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR()) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		' Couper la zone graphique pour couper le texte qui depasse
		view screen (PX, PY)-(PX + SX, PY + SY)
		' Ecrire les caracteres dans le bufer
		if TypeRetourOct > 0 Then
			Dim PositionEnY as integer = 1
			For Boucle_texte as integer = 1 to NombreLignes
				
				
				
				Draw String (Position_Texte_X + 1, Position_Texte_Y + PositionEnY), TableauLignes(Boucle_texte), RGB(R, V, B) ' TEMP. Faire sorte a ce que le texte soit decoupe pour le multi-ligne ou non
				PositionEnY = (Boucle_texte * 8) + 1
			Next Boucle_texte
		Else
			CPCDOS_INSTANCE.SYSTEME_INSTANCE.MEMOIRE_MAP.Ecrire_ecran(Texte, Position_Texte_X + 1, Position_Texte_Y + 1, R, V, B)
		End if
		view  ' reset
		
		return true
	End if
End Function

Function _memoire_bitmap.Ecrire_ecran(byval Texte as String, PX as integer, PY as integer, R as integer, V as integer, B as integer) as boolean
	' Permet d'ecrire du texte sur un l'ecran directement
	IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[_memoire_bitmap] Ecrire_ecran() Texte:'" & Texte & "' " & " R:" & R & " V:" & V & " B:" & B & " " & PX & "x" & PY & " source PTR SCREEN[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR()) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG("[_memoire_bitmap] Ecrire_ecran() Texte:'" & Texte & "' " & " R:" & R & " G:" & V & " B:" & B & " " & PX & "x" & PY & " source PTR SCREEN[0x" & hex(CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_EcranPTR()) & "]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		
		' Faire sorte a ce que le texte soit decoupe pour le multi-ligne ou non
		Draw String (PX, PY), Texte, RGB(R, V, B)
		
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			Else
				DEBUG(" [OK]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_VALIDATION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			End if
		End if
		Function = true
	End if
	
End Function

Function  _memoire_bitmap.Capture_ecran(byval NumeroID as integer, PX as integer, PY as integer, SX as integer, SY as integer) as boolean
	' Capturer un morceau de l'ecran
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Capture_ecran#2() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 Then
				if PX < 0 then PX = 0
				if PY < 0 then PY = 0

				if SX < 1 then SX = 1
				if SY < 1 then SY = 1

				if (PX + SX-1) >= CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X() Then
					SX = SX - ((PX+SX)-CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_X())
				End if
				if (PY + SY-1) >= CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y() Then
					SY = SY - ((PY+SY)-CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_Resolution_Y())
				End if

				Get (PX, PY)- STEP (SX-1, SY-1),  CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID)
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Capture_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Capture_ecran() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function
' #1
' ================
Function _memoire_bitmap.Dessiner_ecran(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer) as boolean
	' On definit la page video avant de dessiner
	if PAGE_VIDEO >= 0 AND NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#1() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			ScreenSet PAGE_VIDEO, PAGE_VIDEO
			Function = Dessiner_ecran(NumeroID, PX, PY)
			ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #2
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer) as boolean
	' Permet de dessiner le bitmap sur l'ecran
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#2() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 Then
				put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), ALPHA
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #3
Function _memoire_bitmap.Dessiner_ecran(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer) as boolean
	' On definit la page video avant de dessiner
	if PAGE_VIDEO >= 0 AND NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#3() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			ScreenSet PAGE_VIDEO, PAGE_VIDEO
			Function = Dessiner_ecran(NumeroID, PX, PY, SX1, SY1, SX2, SY2)
			ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #4
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer) as boolean
	' Permet de dessiner le bitmap sur l'ecran
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#4() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 Then
				put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), ALPHA
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' ================
' #5
Function _memoire_bitmap.Dessiner_ecran(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean) as boolean
	' On definit la page video avant de dessiner
	if PAGE_VIDEO >= 0 AND NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#5() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			ScreenSet PAGE_VIDEO, PAGE_VIDEO
			Function = Dessiner_ecran(NumeroID, PX, PY, CanalAlpha)
			ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #6
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#6() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 Then
				if CanalAlpha = true Then
					if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() = 32 Then
						'put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), Alpha, 255
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), ALPHA
					Else
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), ALPHA
					End if
				Else
					put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), ALPHA
				End if
				
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #7
Function _memoire_bitmap.Dessiner_ecran(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean) as boolean
	' On definit la page video avant de dessiner
	
	if PAGE_VIDEO >= 0 AND NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#7() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			ScreenSet PAGE_VIDEO, PAGE_VIDEO
			Function = Dessiner_ecran(NumeroID, PX, PY, SX1, SY1, SX2, SY2, CanalAlpha)
			ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #8
' Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, Effet as integer) as boolean
	' ' Permet de dessiner le bitmap sur l'ecran avec le canal alpha
	
	' IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
		' if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 AND NumeroID > 0 Then
			' if Effet = 0 Then
				' put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), OR
			' elseif Effet = 1 Then
				' put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), XOR
			' Function = true
		' Else
			' Function = false
		' End if
	' End if	
' End Function

' #9
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#9() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 AND NumeroID > 0 Then
				if CanalAlpha = true Then
					if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() = 32 Then
						' put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), Alpha, 255
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), ALPHA
					Else
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), ALPHA
					End if
				Else
					put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), ALPHA
				End if
				
				Function = true
			Else
				Function = false
			End if
		End if	
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' ================
' #10
Function _memoire_bitmap.Dessiner_ecran(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean, Valeur as integer) as boolean
	' On definit la page video avant de dessiner
	
	if PAGE_VIDEO >= 0 AND NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#10() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			ScreenSet PAGE_VIDEO, PAGE_VIDEO
			Function = Dessiner_ecran(NumeroID, PX, PY, CanalAlpha, valeur)
			ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #11
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer, CanalAlpha as boolean, valeur as integer) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha et l'opacite
	
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#11() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 AND NumeroID > 0 Then
				if CanalAlpha = true Then
					put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), Alpha, valeur
				Else
					put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), ALPHA
				End if
				
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

' #12
Function _memoire_bitmap.Dessiner_ecran(byval PAGE_VIDEO as integer, byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean, valeur as integer) as boolean
	' On definit la page video avant de dessiner
	
	if PAGE_VIDEO >= 0 AND NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#12() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			ScreenSet PAGE_VIDEO, PAGE_VIDEO
			Function = Dessiner_ecran(NumeroID, PX, PY, SX1, SY1, SX2, SY2, CanalAlpha, valeur)
			ScreenSet CPCDOS_INSTANCE._PAGE_VIDEO_WORK, CPCDOS_INSTANCE._PAGE_VIDEO_MAIN
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] PAGE_VIDEO " & PAGE_VIDEO & " NumeroID " & NumeroID , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
End Function

' #13
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, CanalAlpha as boolean, valeur as integer) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha et l'opacite
	if NumeroID > 0 Then
		if NumeroID > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#13() [ERROR] NumeroID : " & NumeroID & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if
		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID) > 0 AND NumeroID > 0 Then
				if CanalAlpha = true Then
					put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), Alpha, valeur
				Else
					put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID), (SX1, SY1)-(SX2, SY2), ALPHA
				End if
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID " & NumeroID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID " & NumeroID , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
	
	
End Function

' ================
' #14
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID_Source as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, byval NumeroID_Destination as integer, CanalAlpha as boolean, noth as boolean = false) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha et l'opacite
	
	if NumeroID_Source > 0 Then

		if NumeroID_Source > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#14() [ERROR] NumeroID_Source : " & NumeroID_Source & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source) > 0 AND CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Destination) > 0 AND NumeroID_Destination > 0 AND NumeroID_Source > 0 Then
				if CanalAlpha = true Then
					if CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_BitsparPixels() = 32 Then
						put CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), ALPHA
						'put CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), Alpha, 255
					Else
						put CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), ALPHA
					End if
				Else
					put CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), ALPHA
				End if
				
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID_Source " & NumeroID_Source, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID_Source " & NumeroID_Source , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

' ================
' #15
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID_Source as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, byval NumeroID_Destination as integer, effet as effet_img, valeur as integer, ef as boolean) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha et l'opacite
	
	if NumeroID_Source > 0 Then

		if NumeroID_Source > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#15() [ERROR] NumeroID_Source : " & NumeroID_Source & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source) > 0 AND CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Destination) > 0 AND NumeroID_Destination > 0 AND NumeroID_Source > 0 Then
				
				select case effet
					case _pset
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), pset
					case _preset
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), preset
					case _and
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), and
					case _or
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), or
					case _xor
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), xor
					case _trans
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), trans
					case _alpha
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), alpha
					case _alpha_value
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), alpha, valeur
					case _add
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), add
					case _add_value
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), add, valeur
					case _shadow_effect
						' Effet d'ombre fenetre ()
						put Recuperer_BITMAP_PTR(NumeroID_Destination), (PX, PY), Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), and
					case _custom_2
					case _custom_3
					case _custom_4
				End select
				
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID_Source " & NumeroID_Source, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID_Source " & NumeroID_Source , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

' #16
Function _memoire_bitmap.Dessiner_ecran(byval NumeroID_Source as integer, PX as integer, PY as integer, SX1 as integer, SY1 as integer, SX2 as integer, SY2 as integer, effet as effet_img, valeur as integer, ef as boolean) as boolean
	' Permet de dessiner le bitmap sur l'ecran avec le canal alpha et l'opacite
	
	if NumeroID_Source > 0 Then

		if NumeroID_Source > CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID Then
			DEBUG("Dessiner_ecran#16() [ERROR] NumeroID_Source : " & NumeroID_Source & " too big! Unable to use this ! (MAX " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP._MAX_BITMAP_ID & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
			return false
		End if

		IF CPCDOS_INSTANCE.SCI_INSTANCE.GUI_Mode = True Then 
			if CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source) > 0 AND NumeroID_Source > 0 Then
				
				select case effet
					case _pset
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), pset
					case _preset
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), preset
					case _and
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), and
					case _or
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), or
					case _xor
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), xor
					case _trans
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), trans
					case _alpha
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), alpha
					case _alpha_value
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), alpha, valeur
					case _add
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), add
					case _add_value
						put (PX, PY), CPCDOS_INSTANCE.SYSTEME_INSTANCE.Memoire_MAP.Recuperer_BITMAP_PTR(NumeroID_Source), (SX1, SY1)-(SX2, SY2), add, valeur
					case _custom_2
					case _custom_3
					case _custom_4
				End select
				
				Function = true
			Else
				Function = false
			End if
		End if
	else
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERREUR] NumeroID_Source " & NumeroID_Source, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		Else
			DEBUG("[_memoire_bitmap] Dessiner_ecran() [ERROR] NumeroID_Source " & NumeroID_Source , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, CPCDOS_INSTANCE.SYSTEME_INSTANCE.RetourVAR_PNG)
		End if
		return false
	End if
	
End Function

