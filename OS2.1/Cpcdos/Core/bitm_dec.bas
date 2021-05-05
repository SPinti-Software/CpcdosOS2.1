' Contient des fonctions et variables concernant 
' decodage bitmap (PNG, JPG)

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 08-06-2019

' 10-06-2019	: Correction des decallages des pixels des images 24 et 32 bits
' 08-06-2019	: Ajout de bit_converter()
' 16-10-2018	: Refonte beta 2.1
' 18-05-2017	: Corrections de Zlib, et de Charger_PNG.

' 17-02-2017	: Support PNG

#include once "Cpcdos.bi"	' Declaration/Fonctions communs

#print * bit converter
function _SYSTEME_Cpcdos_OSx__.bit_converter(byref source as any ptr) as any ptr
	' Permet de convertir le deph d'un bitmap en un autre
	Dim NouvelleImage as any ptr
	
	Dim As Integer Taille_X, Taille_Y, bitPerPixel_SOURCE, bitPerPixel_DESTINATION, pitch_SOURCE, pitch_DESTINATION
	Dim as byte ptr PointeurSource, PointeurDestination
	
	ImageInfo( source,  Taille_X,  Taille_Y, bitPerPixel_SOURCE, pitch_SOURCE,  PointeurSource  )
	
	DEBUG("bit_converter() SOURCE:" & bitPerPixel_SOURCE & " DEST:" & get_BitsParPixels(true) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
	' Si le bit source est different de celui qu'on veut
	if NOT bitPerPixel_SOURCE = get_BitsParPixels(true) Then
		
		' Creer une nouvelle image
		NouvelleImage = ImageCreate(Taille_X, Taille_Y)
		
		' Recuperer les infos
		ImageInfo( NouvelleImage, , , bitPerPixel_DESTINATION, pitch_DESTINATION, PointeurDestination )
		
		DEBUG("CONVERT bitPerPixel_DESTINATION:" & bitPerPixel_DESTINATION & " PITCH:" & pitch_DESTINATION, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")

		' Convertir
		For y as integer = 0 To Taille_Y - 1
			ImageConvertRow(@PointeurSource [ y * pitch_SOURCE ],  bitPerPixel_SOURCE, _
						@PointeurDestination[ y * pitch_DESTINATION], bitPerPixel_DESTINATION, _
						Taille_X)
		Next y
		
		DEBUG("NouvelleImage:" & NouvelleImage & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, "")
		
		Function = NouvelleImage
	End if
	
	Function = source
	
End function

#print Blurry effect

public function _SYSTEME_Cpcdos_OSx__.buffer_to_blurry(byref image_src as any ptr, intensite as integer) as Any Ptr
	' Appliquer du flou dans le meme buffer, et retourne le temps en ms

	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Application de l'effet de flou x" & intensite & "% (Image source 0x" & hex(image_src) & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEM] Applying blurry  x" & intensite & "% (Image source 0x" & hex(image_src) & ") ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if

	Dim img_info As tImage
	Imageinfo(image_src, img_info.Width, img_info.height, , img_info.pitch, img_info.pixels)

	Dim As Double fEnd, fStart = Timer
	Dim Imgfloute As Any Ptr = FastBlur(img_info, intensite)
	fEnd = Timer - fStart

	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		DEBUG("[OK] " & fEnd & " ms (New source 0x" & hex(Imgfloute) & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
	End if

	return Imgfloute
End function

Function _SYSTEME_Cpcdos_OSx__.FastBlur(img As tImage, iRadius As Ubyte) As Any Ptr
	' Cette fonction permet d'appliquer une passe de flou horizontaux et verticaux

   iRadius = Iif(iRadius < 1, 1, iRadius)

   Dim Horizontale As Any Ptr = BlurPass(img, iRadius, img.width, img.height)
   
   Dim As tImage img2
   Imageinfo(Horizontale, img2.Width, img2.height, , img2.pitch, img2.pixels)
     
   Dim Verticale As Any Ptr = BlurPass(img2, iRadius, img.height, img.Width)
   ImageDestroy(Horizontale)
   
   Return Verticale
End Function

' Thank to Romain Guy
Function _SYSTEME_Cpcdos_OSx__.BlurPass(img As tImage, iRadius As Ubyte, iW as UShort, iH as UShort) As Any Ptr

   dIM AS UShort iW1 = iW - 1, iH1 = iH - 1
   
   Dim As Ulong Ptr srcPixels = img.pixels
   
   Dim pImage_blurred As Any Ptr = Imagecreate(img.height, img.width, 0, 32)
   
   Dim As tImage img_b
   Imageinfo(pImage_blurred, img_b.Width, img_b.height, , img_b.pitch, img_b.pixels)
   Dim As Ulong Ptr dstPixels = img_b.pixels

   Dim As Long previousPixelIndex, sumAlpha, sumRed, sumGreen, sumBlue, i
   Dim As Ulong pixel, windowSize = iRadius * 2 + 1, radiusPlusOne = iRadius + 1, _
                srcIndex = 0, sumLookupTable(256 * windowSize), indexLookupTable(radiusPlusOne), _
                dstIndex, x, y, nextPixelIndex, nextPixel, previousPixel
               
   Dim as Integer pitch_img = img.pitch Shr 2, pitch_b = img_b.pitch Shr 2

   For i = 0 To Ubound(sumLookupTable) - 1
      sumLookupTable(i) = i \ windowSize
   Next
   
   If iRadius < iW Then
      For i = 0 To Ubound(indexLookupTable) - 1
         indexLookupTable(i) = i
      Next
   Else
      For i = 0 To iW - 1
         indexLookupTable(i) = i
      Next
      For i = iW To Ubound(indexLookupTable) - 1
         indexLookupTable(i) = iW1
      Next
   Endif
   
   For y = 0 To iH1
      sumAlpha = 0: sumRed = 0: sumGreen = 0: sumBlue = 0
      dstIndex = y
      
      pixel = srcPixels[srcIndex]
      sumAlpha += radiusPlusOne * ((pixel Shr 24) And &hFF)
      sumRed   += radiusPlusOne * ((pixel Shr 16) And &hFF)
      sumGreen += radiusPlusOne * ((pixel Shr  8) And &hFF)
      sumBlue  += radiusPlusOne * ( pixel         And &hFF)
      
      For i = 1 To iRadius
         pixel = srcPixels[srcIndex + indexLookupTable(i)]
         sumAlpha += ((pixel Shr 24) And &hFF)         
         sumRed   += ((pixel Shr 16) And &hFF)         
         sumGreen += ((pixel Shr  8) And &hFF)         
         sumBlue  += ( pixel         And &hFF)            
      Next
      
      For x = 0 To iW1
         dstPixels[dstIndex] = sumLookupTable(sumAlpha) Shl 24 Or _
                               sumLookupTable(sumRed)   Shl 16 Or _
                               sumLookupTable(sumGreen) Shl  8 Or _
                               sumLookupTable(sumBlue)
         
         dstIndex += pitch_b
         
         nextPixelIndex = x + radiusPlusOne
         If nextPixelIndex >= iW Then nextPixelIndex = iW1
         
         previousPixelIndex = x - iRadius
         If previousPixelIndex < 0 Then previousPixelIndex = 0
         
         nextPixel =    srcPixels[srcIndex + nextPixelIndex]
         previousPixel = srcPixels[srcIndex + previousPixelIndex]
         
         sumAlpha += (nextPixel      Shr 24) And &hFF
         sumAlpha -= (previousPixel   Shr 24) And &hFF
         
         sumRed += (nextPixel         Shr 16) And &hFF
         sumRed -= (previousPixel   Shr 16) And &hFF
         
         sumGreen += (nextPixel      Shr  8) And &hFF
         sumGreen -= (previousPixel   Shr  8) And &hFF
         
         sumBlue += (nextPixel            ) And &hFF
         sumBlue -= (previousPixel         ) And &hFF
      Next
   
      srcIndex += pitch_img
   Next
   
   Return pImage_Blurred
End Function


#print * Lecteur PNG
' Fonction statique n'ayant pas de retour sur le reseau ou fichier DEBUG
Sub libpng_error_callback cdecl( byval png as png_structp,  byval  p as png_const_charp)
	Dim Message_erreur as string = ERRAVT("ERR_046", 0)
	DEBUG("[SYSTEME] " & Message_erreur & " (" & *p & ")", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	screen 0 : Print "[SYSTEME] " & Message_erreur & " (" & *p & ")"
end sub

function _SYSTEME_Cpcdos_OSx__.charger_PNG(byval Fichier as String, byval Bits  as integer, prio as integer) as any ptr
	Dim Hauteur as integer
	Dim Largeur as integer
	function = charger_PNG(Fichier, Bits, prio, Hauteur, Largeur) 
End function

function _SYSTEME_Cpcdos_OSx__.charger_JPG(byval Fichier as String, byval Bits  as integer, prio as integer) as any ptr
	Dim Hauteur as integer
	Dim Largeur as integer
	function = charger_JPG(Fichier, Bits, prio, Hauteur, Largeur) 
End function

Function _SYSTEME_Cpcdos_OSx__.trans32 ( ByVal Source As UInteger, ByVal Destination As UInteger, ByVal Parametres As Any Ptr ) As UInteger
    ' Retourne le magenta
    If (Source And &hffffff) <> &hff00ff Then
        Return Source
    Else
        Return Destination
    End If
End Function

function _SYSTEME_Cpcdos_OSx__.charger_PNG(byval Fichier as String, byval Bits  as integer, prio as integer, byref Hauteur as integer, byref Largeur as integer) as any ptr
	dim as ubyte header(0 to 7)

	dim as FILE ptr PtrFichier = fopen( Fichier, "rb" )
	
	ENTRER_SectionCritique()
	
	dim as integer profondeurbits, canaux, profondeurPixelleuumeuhmeuuuh, typecouleur, rowbytes
	
	Dim PNG_Largeur as integer
	Dim PNG_Hauteur as integer
	Dim CanalAlphaPresent as integer = 0
	Dim TestR as integer
	Dim TestV as integer
	Dim TestB as integer
	Dim TestA as integer
	Dim pitch as integer
	Dim PassageDoEvents as integer
	Dim Message_erreur as string
	Dim RetourVAR as string
	
	dim RetourVAR_PNG as String = ""
	dim imgPNG as FB.IMAGE ptr  
	
	
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Chargement d'une image PNG(v" & PNG_LIBPNG_VER_STRING & ") '" & Fichier & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEM] Loading PNG(v" & PNG_LIBPNG_VER_STRING & ") image '" & Fichier & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
	
	

	if( PtrFichier = NULL ) then
		' Fichier introuvable !	
		Message_erreur = ERRAVT("ERR_015", 0)
		DEBUG("[SYSTEME] " & Message_erreur & " " & CHR(34) & Fichier & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		SORTIR_SectionCritique()
		Exit function
	end if
	
	if( fread( @header(0), 1, 8, PtrFichier ) <> 8 ) then ' 17-02-2017 : A revoir sur la fonction fread() pour utiliser celui de CPinti Core
		Message_erreur = ERRAVT("AVT_043", 0)
		DEBUG("[SYSTEME] " & Message_erreur & " " & CHR(34) & Fichier & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		fclose(PtrFichier)
		SORTIR_SectionCritique()
		Exit function
	end if

	if(png_sig_cmp( @header(0), 0, 8 )) then
		Message_erreur = ERRAVT("AVT_044", 0)
		DEBUG("[SYSTEME] " & Message_erreur & " " & CHR(34) & Fichier & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		fclose(PtrFichier)
		SORTIR_SectionCritique()
		Exit function
	end if

	dim as png_structp png = png_create_read_struct( PNG_LIBPNG_VER_STRING, NULL, @libpng_error_callback, NULL )
	if(png = NULL) then
		Message_erreur = ERRAVT("AVT_045", 0)
		DEBUG("[SYSTEME] " & Message_erreur & " " & CHR(34) & Fichier & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		fclose(PtrFichier)
		SORTIR_SectionCritique()
		Exit function
	end if
	
	dim info as png_infop = png_create_info_struct(png)
	if(info = NULL) then
		Message_erreur = ERRAVT("AVT_046", 0)
		DEBUG("[SYSTEME] " & Message_erreur & " " & CHR(34) & Fichier & CHR(34) & ".", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		fclose(PtrFichier)
		SORTIR_SectionCritique()
		Exit function
	end if
	

	png_init_io( png, PtrFichier )
	png_set_sig_bytes( png, 8 )

	png_read_info( png, info )

	
	
	largeur = png_get_image_width( png, info )
	hauteur = png_get_image_height( png, info )
	
	
	profondeurbits = png_get_bit_depth( png, info )
	canaux = png_get_channels( png, info )
	profondeurPixelleuumeuhmeuuuh = profondeurbits * canaux
	typecouleur = png_get_color_type( png, info )

	select case( typecouleur )
		case PNG_COLOR_TYPE_RGB
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Information du PNG charg‚ RVB r‚solution:" & largeur & "x" & hauteur & "x" & profondeurPixelleuumeuhmeuuuh & " profondeur:" & profondeurbits  & " canal:" & canaux, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEM] PNG info. RGB Size" & largeur & "x" & hauteur & "x" & profondeurPixelleuumeuhmeuuuh & " depth:" & profondeurbits  & " canal:" & canaux, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				End If
			End if
		case PNG_COLOR_TYPE_RGB_ALPHA
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Information du PNG charg‚ RVBA r‚solution:" & largeur & "x" & hauteur & "x" & profondeurPixelleuumeuhmeuuuh & " profondeur:" & profondeurbits  & " canal:" & canaux, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEM] PNG info. RGBA Size" & largeur & "x" & hauteur & "x" & profondeurPixelleuumeuhmeuuuh & " depth:" & profondeurbits  & " canal:" & canaux, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				End If
			End if
		case PNG_COLOR_TYPE_GRAY
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Information du PNG charg‚ Nuances de gris r‚solution:" & largeur & "x" & hauteur & "x" & profondeurPixelleuumeuhmeuuuh & " profondeur:" & profondeurbits  & " canal:" & canaux, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEM] PNG info. Grade of grey Size" & largeur & "x" & hauteur & "x" & profondeurPixelleuumeuhmeuuuh & " depth:" & profondeurbits  & " canal:" & canaux, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				End If
			End if
		case else
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Format de couleurs non support‚s", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEM] Color format not supported", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
				End If
			End if
			
			return null
	end select

	SCOPE

		imgPNG = imagecreate( largeur, hauteur, RGBA(0, 0, 0, 0))

		dim as ubyte ptr dst = cptr( ubyte ptr, imgPNG + 1 )


		png_read_update_info( png, info )

		rowbytes = png_get_rowbytes( png, info )
		dim as ubyte ptr src = callocate( rowbytes )

		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG(" PTR source 0x" & hex(src, 8) & " " & rowbytes & " rowbytes" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG(" Source PTR 0x" & hex(src, 8) & " " & rowbytes & " rowbytes" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End if
		
		SORTIR_SectionCritique()

		for y as integer = 0 to hauteur-1
		
			' Forcer le contexte switching
			PassageDoEvents += 1
			if PassageDoEvents > (hauteur*largeur / 6) Then
				PassageDoEvents = 0
				doevents(0)
			end if
		
			png_read_row( png, src, NULL )

			select case( typecouleur )
			case PNG_COLOR_TYPE_RGB
				imageconvertrow( src, 24, dst, Bits, largeur )
				dst += imgPNG->pitch
				
			case PNG_COLOR_TYPE_RGB_ALPHA
				select case( Bits )
				case 32

					for i as integer = 0 to rowbytes-1 step 4

						dst[0] = src[i+2]
						dst[1] = src[i+1]
						dst[2] = src[i+0]
						dst[3] = src[i+3]

						
						'If dst[3] < 255 THEN
							CanalAlphaPresent = 1
						'END IF

						
						''' Si le canal alpha et le rvb indique que c'est un fond purement transparent
						''' R:255 V:255 B:255 A:0 alors on remplace par le rose Magenta pour que le kernel
						''' s'occupe d'enlever le rose pour remplacer le role du png
						'If dst[0] = 255 THEN
						'	If dst[1] = 255 THEN
						'		If dst[2] = 255 THEN
						'			If dst[3] = 0 THEN
						'				dst[0] = 255	' Rouge
						'				dst[1] = 0		' Vert
						'				dst[2] = 255	' Bleu
						'				dst[3] = 0		' Alpha
						'				CanalAlphaPresent = 1
						'			END IF
						'		END IF
						'	END IF
						'END IF

						'If dst[0] = 0 THEN
						'	If dst[1] = 0 THEN
						'		If dst[2] = 0 THEN
						'			If dst[3] = 0 THEN
						'				dst[0] = 255	' Rouge
						'				dst[1] = 0		' Vert
						'				dst[2] = 255	' Bleu
						'				dst[3] = 0		' Alpha
						'				CanalAlphaPresent = 1
						'			END IF
						'		END IF
						'	END IF
						'END IF
						
						dst += 4
					next
					
					' for i as integer = 0 to rowbytes-1 step 4
						' dst -= 4
					' next i

					' dst += imgPNG->pitch
					
				case 24
					for i as integer = 0 to rowbytes-1 step 4

						dst[0] = src[i+2]
						dst[1] = src[i+1]
						dst[2] = src[i+0]
						dst[3] = src[i+3]
						
						
						' Si le canal alpha et le rvb indique que c'est un fond purement transparent
						'  R:255 V:255 B:255 A:0 alors on remplace par le rose Magenta pour que le kernel
						'  s'occupe d'enlever le rose pour remplacer le role du png

						'If dst[0] = 0 THEN
						'	If dst[1] = 0 THEN
						'		If dst[2] = 0 THEN
						'			If dst[3] = 0 THEN
						'				dst[0] = 255	' Rouge
						'				dst[1] = 0		' Vert
						'				dst[2] = 255	' Bleu
						'				dst[3] = 0		' Alpha
						'				CanalAlphaPresent = 1
						'			END IF
						'		END IF
						'	END IF
						'END IF


						'If dst[0] = 255 THEN
						'	If dst[1] = 255 THEN
						'		If dst[2] = 255 THEN
						'			If dst[3] = 0 THEN
						'				dst[0] = 255	' Rouge
						'				dst[1] = 0		' Vert
						'				dst[2] = 255	' Bleu
						'				dst[3] = 0		' Alpha
						'				CanalAlphaPresent = 1
						'			END IF
						'		END IF
						'	END IF
						'END IF
						
						dst += 4
					next
					
					for i as integer = 0 to rowbytes-1 step 4
						dst -= 4
					next i

					dst += imgPNG->pitch
				case 15, 16
					For i as integer = 0 to rowbytes-1 step 4

						dst[0] = src[i+2]
						dst[1] = src[i+1]
						dst[2] = src[i+0]
						dst[3] = src[i+3]

						'TestR = src[i+2]
						'TestV = src[i+1]
						'TestB = src[i+0]
						'TestA = src[i+3]
						' Si le canal alpha et le rvb indique que c'est un fond purement transparent
						'  R:255 V:255 B:255 A:0 alors on remplace par le rose Magenta pour que le kernel
						'  s'occupe d'enlever le rose pour remplacer le role du png
						'If TestR = 255 THEN
						'	If TestV = 255 THEN
						'		If TestB = 255 THEN
						'			If TestA = 0 THEN
						'				src[i+2] = 255 	' Rouge
						'				src[i+1] = 0	' Vert
						'				src[i+0] = 255	' Bleu
						'				src[i+3] = 255	' Alpha
						'				CanalAlphaPresent = 1
						'			END IF
						'		END IF
						'	END IF
						'END IF

						'If TestR = 0 THEN
						'	If TestV = 0 THEN
						'		If TestB = 0 THEN
						'			If TestA = 0 THEN
						'				src[i+2] = 255 	' Rouge
						'				src[i+1] = 0	' Vert
						'				src[i+0] = 255	' Bleu
						'				src[i+3] = 255	' Alpha
						'				CanalAlphaPresent = 1
						'			END IF
						'		END IF
						'	END IF
						'END IF
					next
					imageconvertrow( src, 32, dst, Bits, largeur )
					dst += imgPNG->pitch
				end select

			case PNG_COLOR_TYPE_GRAY
				select case( Bits )
				case 24, 32
					for i as integer = 0 to rowbytes-1
						*cptr( ulong ptr, dst ) = rgb( src[i], src[i], src[i] )
						dst += 4
					next
				case 15, 16
					For i as integer = 0 to rowbytes-1 step 4
						dst[0] = src[i+2]
						dst[1] = src[i+1]
						dst[2] = src[i+0]
						dst[3] = src[i+3]

						'TestR = src[i+2]
						'TestV = src[i+1]
						'TestB = src[i+0]
						'TestA = src[i+3]
						' Si le canal alpha et le rvb indique que c'est un fond purement transparent
						' 	R:255 V:255 B:255 A:0 alors on remplace par le rose Magenta pour que le kernel
						' 	s'occupe d'enlever le rose pour remplacer le role du png
						
						'If TestR = 0 THEN
						'	If TestV = 0 THEN
						'		If TestB = 0 THEN
						'			If TestA = 0 THEN
						'				src[i+2] = 255 	' Rouge
						'				src[i+1] = 0	' Vert
						'				src[i+0] = 255	' Bleu
						'				src[i+3] = 255	' Alpha
						'			END IF
						'		END IF
						'	END IF
						'END IF

						'If TestR = 255 THEN
						'	If TestV = 255 THEN
						'		If TestB = 255 THEN
						'			If TestA = 0 THEN
						'				src[i+2] = 255 	' Rouge
						'				src[i+1] = 0	' Vert
						'				src[i+0] = 255	' Bleu
						'				src[i+3] = 255	' Alpha
						'			END IF
						'		END IF
						'	END IF
						'END IF
						dst += 4
					next
					for i as integer = 0 to rowbytes-1
						pset imgPNG, (i, y), rgb( src[i], src[i], src[i] )
					next
				case else ' Image RAW
					memcpy( dst, src, rowbytes )
					dst += pitch
				end select
			end select
		next

		DEBUG("Deallocation", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		
		deallocate( src )
	END SCOPE
	
	png_read_end( png, info )
	png_destroy_read_struct( @png, @info, 0 )
	fclose( PtrFichier )
	function = imgPNG
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Chargement du PNG termine!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEM] PNG Loaded!", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_AVERTISSEMENT, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_AFF, RetourVAR_PNG)
		End If
	End if
		
end function


#print * Lecteur JPEG

Function _SYSTEME_Cpcdos_OSx__.Charger_JPG(byval Fichier as String, byval Bits  as integer, prio as integer, byref Hauteur as integer, byref Largeur as integer) as any ptr
	Function = ChargerJPG(Fichier, Hauteur, Largeur, Bits)
End Function

sub _SYSTEME_Cpcdos_OSx__.Debut_Memoire(Instance_Buffer as _JPEG_Buffer_ ptr, buffer as ubyte ptr,length as integer)
	' Cette fonction permet de redefinir la fin du buffer par rapport a la taille
	
	Instance_Buffer->Buffer    = buffer
	Instance_Buffer->Fin_Buffer = buffer+length
end sub

function _SYSTEME_Cpcdos_OSx__.get8(Instance_Buffer as _JPEG_Buffer_ ptr) as integer
	' Cette fonction permet de recuperer le contenu du buffer
	
	if (Instance_Buffer->Buffer < Instance_Buffer->Fin_Buffer) then
		function = *Instance_Buffer->Buffer
		Instance_Buffer->Buffer+=1
	else
		return 0
	end if
end function

function _SYSTEME_Cpcdos_OSx__.get_Fin_buffer(Instance_Buffer as _JPEG_Buffer_ ptr) as integer
	' Recuperer la fin du buffer
	
	return Instance_Buffer->Buffer >= Instance_Buffer->Fin_Buffer
end function

function _SYSTEME_Cpcdos_OSx__.get8u(Instance_Buffer as _JPEG_Buffer_ ptr) as ubyte
	return get8(Instance_Buffer)
end function

sub _SYSTEME_Cpcdos_OSx__.skip(Instance_Buffer as _JPEG_Buffer_ ptr, nombre as integer)
	Instance_Buffer->Buffer += nombre
end sub

function _SYSTEME_Cpcdos_OSx__.get16(Instance_Buffer as _JPEG_Buffer_ ptr) as integer
	dim pointeur_JPEG as integer = get8(Instance_Buffer)
	return (pointeur_JPEG shl 8) + get8(Instance_Buffer)
end function

function _SYSTEME_Cpcdos_OSx__.get32(Instance_Buffer as _JPEG_Buffer_ ptr) as uinteger
	dim as uinteger pointeur_JPEG = get16(Instance_Buffer)
	return (pointeur_JPEG shl 16) + get16(Instance_Buffer)
end function

function _SYSTEME_Cpcdos_OSx__.get16le(Instance_Buffer as _JPEG_Buffer_ ptr) as integer
	dim as integer pointeur_JPEG = get8(Instance_Buffer)
	return pointeur_JPEG + (get8(Instance_Buffer) shl 8)
end function

function _SYSTEME_Cpcdos_OSx__.get32le(Instance_Buffer as _JPEG_Buffer_ ptr) as uinteger
	dim as uinteger pointeur_JPEG = get16le(Instance_Buffer)
	return pointeur_JPEG + (get16le(Instance_Buffer) shl 16)
end function

sub _SYSTEME_Cpcdos_OSx__.getn(Instance_Buffer as _JPEG_Buffer_ ptr,buffer as ubyte ptr, nombre as integer)
	memcpy(buffer, Instance_Buffer->Buffer, nombre)
	Instance_Buffer->Buffer+= nombre
end sub

#print * Algo huffman
function _SYSTEME_Cpcdos_OSx__.build_huffman(Hauteur as _table_huffman_ ptr, count as integer ptr) as integer
	' Cette fonction permet de fabriquer une table huffman
	' Merci a D.S Peters pour la traduction FreeBasic
	
	dim as integer k,code
	for i as integer = 0 to 15
		for pointeur_jpg as integer = 0 to count[i]-1
			Hauteur->Taille(k) = (i+1)
			k+=1
		next
	next
	
	Hauteur->Taille(k) = 0
	code = 0
	k = 0
	
	for pointeur_jpg as integer = 1 to 16
		Hauteur->delta(pointeur_jpg) = k - code
		if (Hauteur->Taille(k) = pointeur_jpg) then
			while (Hauteur->Taille(k) = pointeur_jpg)
				Hauteur->code(k)=code
				k+=1:code+=1
			wend
			if (code-1) >= (1 shl pointeur_jpg) then
				IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
					IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
						DEBUG("[SYSTEME] Mauvaise taille du code", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
					Else
						DEBUG("[SYSTEME] Bad code length", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
					End If
				End if

				return 0
			end if
		end if
		Hauteur->maxcode(pointeur_jpg) = code shl (16-pointeur_jpg)
		code shl= 1
	next
	Hauteur->maxcode(17) = &HFFFFFFFF

	memset(@Hauteur->fast(0), 255, 1 shl FAST_BITS)
	for i as integer =0 to k-1
		dim as integer Instance_Buffer = Hauteur->Taille(i)
		if (Instance_Buffer <= FAST_BITS) then
			dim as integer c = Hauteur->code(i) shl (FAST_BITS-Instance_Buffer)
			dim as integer m = 1 shl (FAST_BITS-Instance_Buffer)
			for pointeur_jpg as integer = 0 to m-1
				Hauteur->fast(c+pointeur_jpg) = i
			next
		end if
	next
	return 1
end function

sub _SYSTEME_Cpcdos_OSx__.grow_buffer_unsafe(pointeur_jpg as _tableau_JPEG_ ptr)
	dim as integer b
	do
		if pointeur_jpg->depassement then
			b=0
		else
			b=get8(@pointeur_jpg->Instance_Buffer)
		end if
		if (b = &Hff) then
			dim as integer c = get8(@pointeur_jpg->Instance_Buffer)
			if (c <> 0) then
				pointeur_jpg->marker = c
				pointeur_jpg->depassement = 1
				return
			end if
		end if
		pointeur_jpg->code_buffer = (pointeur_jpg->code_buffer shl 8) or b
		pointeur_jpg->code_bits += 8
	loop while (pointeur_jpg->code_bits <= 24)
end sub


function _SYSTEME_Cpcdos_OSx__.decode(pointeur_jpg as _tableau_JPEG_ ptr, Hauteur as _table_huffman_ ptr) as integer
	' Cette fonction permet de decoder un fichier JPG depuis la table huffman
	
	dim as uinteger temp
	dim as integer c,k

	if (pointeur_jpg->code_bits < 16) then grow_buffer_unsafe(pointeur_jpg)

		c = pointeur_jpg->code_buffer shr (pointeur_jpg->code_bits - FAST_BITS)
		c and= ((1 shl FAST_BITS)-1)
		k = Hauteur->fast(c)
		if (k < 255) then
		if (Hauteur->Taille(k) > pointeur_jpg->code_bits) then
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Erreur de decodage, code bits -> Taille hauteur mauvais", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEME] Decodage error, bit code -> Bad height size", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				End If
			End if
			return -1
		end if
		pointeur_jpg->code_bits -= Hauteur->Taille(k)
		return Hauteur->valeurs(k)
	end if

	if (pointeur_jpg->code_bits < 16) then
		temp = (pointeur_jpg->code_buffer shl (16 - pointeur_jpg->code_bits)) and &Hffff
	else
		temp = (pointeur_jpg->code_buffer shr (pointeur_jpg->code_bits - 16)) and &Hffff
	end if

	k=FAST_BITS+1
	do
		if (temp < Hauteur->maxcode(k)) then exit do
		k+=1
	loop

	if (k = 17) then
		pointeur_jpg->code_bits -= 16
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Erreur de decodage, code non trouve", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Decodage error, code not found", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if

		return -1
	end if

	if (k > pointeur_jpg->code_bits) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Erreur de decodage, code bits mauvais", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Decodage error, bad bit code", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
		return -1
	end if
	pointeur_jpg->code_bits -= k
	c     = pointeur_jpg->code_buffer shr pointeur_jpg->code_bits
	c and = bmask(k)
	c +   = Hauteur->delta(k)
	return Hauteur->valeurs(c)
end function

function _SYSTEME_Cpcdos_OSx__.combiner_Etendu_Recu(pointeur_jpg as _tableau_JPEG_ ptr,nombre as integer) as integer
	' Cette fonction permet de combiner le _tableau_JPEG_ recu et etendu depuis la baseline toujours etendu
	
	dim as uinteger m = 1 shl (nombre-1)
	dim as uinteger k
	if (pointeur_jpg->code_bits < nombre) then grow_buffer_unsafe(pointeur_jpg)
	pointeur_jpg->code_bits -= nombre
	k     = pointeur_jpg->code_buffer shr pointeur_jpg->code_bits
	k and = bmask(nombre)
	if (k < m) then return (-1 shl nombre) + k + 1
	return k
	
end function

dim shared as ubyte valeurs_trame(79) = { _
	0,  1,  8, 16,  9,  2,  3, 10, _
	17, 24, 32, 25, 18, 11,  4,  5, _
	12, 19, 26, 33, 40, 48, 41, 34, _
	27, 20, 13,  6,  7, 14, 21, 28, _
	35, 42, 49, 56, 57, 50, 43, 36, _
	29, 22, 15, 23, 30, 37, 44, 51, _
	58, 59, 52, 45, 38, 31, 39, 46, _
	53, 60, 61, 54, 47, 55, 62, 63, _
	63, 63, 63, 63, 63, 63, 63, 63, _
	63, 63, 63, 63, 63, 63, 63, 63}

function _SYSTEME_Cpcdos_OSx__.decode_block(pointeur_jpg as _tableau_JPEG_ ptr, aData() as short , hdc as _table_huffman_ ptr, hac as _table_huffman_ ptr, b as integer) as integer
	' Decoder les 64 entrees
	
	dim as integer diff,dc,k
	dim as integer t = decode(pointeur_jpg, hdc)
	if (t < 0) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Bloc de decodage huffman mauvais, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEME] Bad huffman table, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				End If
			End if
		return 0
	end if
	memset(@aData(0),0,64*sizeof(short))
	diff = iif(t,combiner_Etendu_Recu(pointeur_jpg, t),0)
	dc = pointeur_jpg->image_comparaison(b).dc_pred + diff
	pointeur_jpg->image_comparaison(b).dc_pred = dc
	aData(0) = dc
	k = 1
	do
		dim as integer r,Instance_Buffer
		dim as integer rs = decode(pointeur_jpg, hac)
		if (rs < 0) then
			IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
				IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
					DEBUG("[SYSTEME] Bloc de decodage huffman mauvais, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				Else
					DEBUG("[SYSTEME] Bad huffman table, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
				End If
			End if

			return 0
		end if
		Instance_Buffer = rs and 15
		r = rs shr 4
			if (Instance_Buffer = 0) then
			if (rs <> &Hf0) then exit do
			k += 16
		else
			k += r
			aData(valeurs_trame(k)) = combiner_Etendu_Recu(pointeur_jpg, Instance_Buffer)
			k +=1
		end if
	loop while (k < 64)
	return 1
end function

function _SYSTEME_Cpcdos_OSx__.clamp(x as integer) as ubyte
	x += 128
	if x<  0 then return 0
	if x>255 then return 255
	return x
end function

#print * IDCT
' Macro decodage IDCT
#define f2f(x)  int( (((x) * 4096 + 0.5)) )
#macro IDCT_1D(s0,s1,s2,s3,s4,s5,s6,s7)
	dim as integer t0,t1,t2,t3,p1,p2,p3,p4,p5,x0,x1,x2,x3
	p2 = s2
	p3 = s6
	p1 = (p2+p3) * f2f( 0.541196100)
	t2 = p1 + p3 * f2f(-1.847759065)
	t3 = p1 + p2 * f2f( 0.765366865)
	p2 = s0
	p3 = s4
	t0 = (p2+p3) shl 12
	t1 = (p2-p3) shl 12
	x0 = t0+t3
	x3 = t0-t3
	x1 = t1+t2
	x2 = t1-t2
	t0 = s7
	t1 = s5
	t2 = s3
	t3 = s1
	p3 = t0+t2
	p4 = t1+t3
	p1 = t0+t3
	p2 = t1+t2
	p5 = (p3+p4)*f2f( 1.175875602)
	t0 = t0     *f2f( 0.298631336)
	t1 = t1     *f2f( 2.053119869)
	t2 = t2     *f2f( 3.072711026)
	t3 = t3     *f2f( 1.501321110)
	p1 = p5 + p1*f2f(-0.899976223)
	p2 = p5 + p2*f2f(-2.562915447)
	p3 = p3     *f2f(-1.961570560)
	p4 = p4     *f2f(-0.390180644)
	t3 += p1+p4
	t2 += p2+p3
	t1 += p2+p4
	t0 += p1+p3
#endmacro

sub _SYSTEME_Cpcdos_OSx__.idct_block(ou as ubyte ptr, ou_stride as integer, aData() as short, dequantize as ubyte ptr)
	' Cette fonction permet de decoder le bloc IDCT
	
	static as integer aVal(64-1)
	dim as integer i
	dim as integer ptr v=@aVal(0)
	dim as ubyte ptr o,dq=dequantize
	dim as short ptr d=@aData(0)

	for i=0 to 7
		if (d[ 8]=0 and d[16]=0 and d[24]=0 and d[32]=0 and d[40]=0 and d[48]=0 and d[56]=0) then
			dim as integer dcterm = d[0] * dq[0] shl 2
			v[0] = dcterm
			v[8] = dcterm
			v[16] = dcterm
			v[24] = dcterm
			v[32] = dcterm
			v[40] = dcterm
			v[48] = dcterm
			v[56] = dcterm
		else
			IDCT_1D(d[ 0]*dq[ 0], _
				d[ 8]*dq[ 8], _
				d[16]*dq[16], _
				d[24]*dq[24], _
				d[32]*dq[32], _
				d[40]*dq[40], _
				d[48]*dq[48], _
				d[56]*dq[56])
			x0 += 512
			x1 += 512
			x2 += 512
			x3 += 512
			v[ 0] = (x0+t3) shr 10
			v[ 8] = (x1+t2) shr 10
			v[16] = (x2+t1) shr 10
			v[24] = (x3+t0) shr 10
			v[32] = (x3-t0) shr 10
			v[40] = (x2-t1) shr 10
			v[48] = (x1-t2) shr 10
			v[56] = (x0-t3) shr 10
		end if
		d +=1
		dq+=1
		v +=1
	next
	v=@aVal(0)
	o=ou
	for i=0 to 7
		IDCT_1D(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7])
		x0 += 65536
		x1 += 65536
		x2 += 65536
		x3 += 65536
		o[0] = clamp((x0+t3) shr 17)
		o[1] = clamp((x1+t2) shr 17)
		o[2] = clamp((x2+t1) shr 17)
		o[3] = clamp((x3+t0) shr 17)
		o[4] = clamp((x3-t0) shr 17)
		o[5] = clamp((x2-t1) shr 17)
		o[6] = clamp((x1-t2) shr 17)
		o[7] = clamp((x0-t3) shr 17)
		v+=8
		o+=ou_stride
	next
end sub

function _SYSTEME_Cpcdos_OSx__.get_marker(pointeur_jpg as _tableau_JPEG_ ptr) as ubyte
	dim as ubyte x=any
	if (pointeur_jpg->marker <> MARKER_NONE) then
		x = pointeur_jpg->marker
		pointeur_jpg->marker = MARKER_NONE
		return x
	end if
	x = get8u(@pointeur_jpg->Instance_Buffer)
	if (x <> &Hff) then
		return MARKER_NONE
	end if
	while (x = &Hff)
		x = get8u(@pointeur_jpg->Instance_Buffer)
	wend
	return x
end function

sub _SYSTEME_Cpcdos_OSx__.re_set(pointeur_jpg as _tableau_JPEG_ ptr)
	pointeur_jpg->code_bits         			= 0
	pointeur_jpg->code_buffer         			= 0
	pointeur_jpg->depassement              		= 0
	pointeur_jpg->image_comparaison(0).dc_pred 	= 0
	pointeur_jpg->image_comparaison(1).dc_pred 	= 0
	pointeur_jpg->image_comparaison(2).dc_pred 	= 0
	pointeur_jpg->marker = MARKER_NONE
	
	if pointeur_jpg->intervalle_redem then
		pointeur_jpg->suite = pointeur_jpg->intervalle_redem
	else
		pointeur_jpg->suite = &H7fffffff
	end if
end sub

function _SYSTEME_Cpcdos_OSx__.parse_entropy_coded_data(pointeur_JPEG as _tableau_JPEG_ ptr) as integer
	' Parser les donnees codes
	' Merci a D.S Peters pour la traduction FreeBasic
	
	
	re_set(pointeur_JPEG)
	if (pointeur_JPEG->scan_n = 1) then
	dim as integer i,pointeur_jpg,nombre = pointeur_JPEG->ordre(0)
	dim as short   aData(64-1)
	dim as integer Largeur = (pointeur_JPEG->image_comparaison(nombre).x+7) shr 3
	dim as integer Hauteur = (pointeur_JPEG->image_comparaison(nombre).y+7) shr 3
	for pointeur_jpg=0 to Hauteur-1
	  for i=0 to Largeur-1
		if decode_block(pointeur_JPEG, aData(), _
						@pointeur_JPEG->decode_huffman(0) + pointeur_JPEG->image_comparaison(nombre).hd, _
						@pointeur_JPEG->data_huffman(0) + pointeur_JPEG->image_comparaison(nombre).ha, nombre) =0 then
		  return 0
		end if

		idct_block(pointeur_JPEG->image_comparaison(nombre).Pointeur_donnees+pointeur_JPEG->image_comparaison(nombre).w2*pointeur_jpg*8+i*8, _
				   pointeur_JPEG->image_comparaison(nombre).w2                            , _
				   aData(), _
				   @pointeur_JPEG->tableau(pointeur_JPEG->image_comparaison(nombre).tq) _
				   )

		pointeur_JPEG->suite-=1
		if pointeur_JPEG->suite <= 0 then
		  if (pointeur_JPEG->code_bits < 24) then grow_buffer_unsafe(pointeur_JPEG)
		  if (RES(pointeur_JPEG->marker)=0) then return 1
		  re_set(pointeur_JPEG)
		end if
	  next
	next
	else ' interleaved!
	dim as integer i,pointeur_jpg,k,x,y
	dim as short aData(64-1)
	for pointeur_jpg=0 to pointeur_JPEG->IMG_Y-1
	  for i=0 to pointeur_JPEG->IMG_X-1
		' scan an interleaved process scan_n components in ordre
		for k=0 to pointeur_JPEG->scan_n-1
		  dim as integer nombre = pointeur_JPEG->ordre(k)
		  dim as integer jv= pointeur_jpg*pointeur_JPEG->image_comparaison(nombre).v
		  dim as integer ih= i*pointeur_JPEG->image_comparaison(nombre).Hauteur
		  ' scan out an mcu'Instance_Buffer worth of this component; that'Instance_Buffer just determined
		  ' by the basic Hauteur and V specified for the component
		  for y=0 to pointeur_JPEG->image_comparaison(nombre).v-1
			dim as integer y2 = pointeur_JPEG->image_comparaison(nombre).w2 * ((jv + y) shl 3)
			for x=0 to pointeur_JPEG->image_comparaison(nombre).Hauteur-1
			  dim as integer x2 =                    (ih + x) shl 3
			  if decode_block(pointeur_JPEG, aData(), _
							  @pointeur_JPEG->decode_huffman(0) + pointeur_JPEG->image_comparaison(nombre).hd, _
							  @pointeur_JPEG->data_huffman(0) + pointeur_JPEG->image_comparaison(nombre).ha, _
							  nombre)=0 then
				 return 0
			  end if
			 
			 
			  idct_block( pointeur_JPEG->image_comparaison(nombre).Pointeur_donnees + y2+x2, _
						  pointeur_JPEG->image_comparaison(nombre).w2, aData(), @pointeur_JPEG->tableau(pointeur_JPEG->image_comparaison(nombre).tq))
			next
		  next
		next
		pointeur_JPEG->suite-=1
		if pointeur_JPEG->suite <= 0 then
		  if (pointeur_JPEG->code_bits < 24) then grow_buffer_unsafe(pointeur_JPEG)
		  if (0=RES(pointeur_JPEG->marker)) then return 1
		  re_set(pointeur_JPEG)
		end if
	  next
	next
	end if
	return 1
end function

function _SYSTEME_Cpcdos_OSx__.process_marker(pointeur_JPEG as _tableau_JPEG_ ptr, marker as integer) as integer

	dim as integer L
	if NON(marker) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Marker attentu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Expected marker", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
		return 0
	elseif SOF2(marker) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Format JPG (progressive) non supporte", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] format not supported (progressive)", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if

		return 0
	elseif DRI(marker) then
	if (get16(@pointeur_JPEG->Instance_Buffer) <> 4) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Mauvaise taille du DRI ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Bad DRI length", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if

		return 0
	end if
	pointeur_JPEG->intervalle_redem = get16(@pointeur_JPEG->Instance_Buffer)
	return 1
	elseif DQT(marker) then  ' DQT - define quantization table
	L = get16(@pointeur_JPEG->Instance_Buffer)-2
	dim as integer p,q,t
	while (L > 0)
	  q = get8(@pointeur_JPEG->Instance_Buffer)
	  p = q shr 4
	  t = q and 15
	  if (p<>0) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Mauvais type DQT ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Bad DQT type", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if

		return 0
	  end if
	  if (t>3) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Table DQT corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Corrupt DQT table", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
		
		return 0
	  end if
	  for i as integer = 0 to 63
		pointeur_JPEG->tableau(t*64+valeurs_trame(i)) = get8u( @pointeur_JPEG->Instance_Buffer)
	  next
	  L -= 65
	wend
	return (L=0)
	elseif DHT(marker) then
	dim as ubyte ptr v
	dim as integer sizes(15),sum
	dim as integer q,tc,th
	L = get16(@pointeur_JPEG->Instance_Buffer)-2
	while (L > 0)
	  sum=0
	  q = get8(@pointeur_JPEG->Instance_Buffer)
	  tc= q shr 4
	  th= q and 15
	  if (tc > 1) or (th > 3) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Entete DHT corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Corrupt DHT header", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if

		return 0
	  end if
	  for i as integer = 0 to 15
		sizes(i) = get8(@pointeur_JPEG->Instance_Buffer)
		sum += sizes(i)
	  next
	  L -= 17
	  if (tc = 0) then
		if 0=build_huffman(@pointeur_JPEG->decode_huffman(0)+th,@sizes(0)) then
		  return 0
		end if
		v = @pointeur_JPEG->decode_huffman(th).valeurs(0)
	  else
		if 0=build_huffman(@pointeur_JPEG->data_huffman(0)+th,@sizes(0)) then
		  return 0
		end if
		v = @pointeur_JPEG->data_huffman(th).valeurs(0)
	  end if

	  for i as integer = 0 to sum-1
		v[i] = get8u(@pointeur_JPEG->Instance_Buffer)
	  next
	  L-=sum
	wend
	return (L=0)
	elseif APP(marker) or COM2(marker) then
	 skip(@pointeur_JPEG->Instance_Buffer, get16(@pointeur_JPEG->Instance_Buffer)-2)
	return 1
	end if
	return 0
end function

function _SYSTEME_Cpcdos_OSx__.process_scan_header(pointeur_JPEG as _tableau_JPEG_ ptr) as integer
  dim as integer i
  dim as integer Ls = get16(@pointeur_JPEG->Instance_Buffer)
  pointeur_JPEG->scan_n = get8(@pointeur_JPEG->Instance_Buffer)
  if (pointeur_JPEG->scan_n<1) or _
     (pointeur_JPEG->scan_n>4) or  _
     (pointeur_JPEG->scan_n>pointeur_JPEG->Instance_Buffer.nombre) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvais nombre de composantes, JPG corrumpu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Bas SOS component count, corrupt JPG", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if

    return 0
  end if
  if (Ls <> 6+2*pointeur_JPEG->scan_n) then
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] Mauvaise taille SOS, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
	Else
		DEBUG("[SYSTEME] Bad SOS length, corrupt SOS", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
	End If

    return 0
  end if
 
  for i=0 to pointeur_JPEG->scan_n-1
    dim as integer id = get8(@pointeur_JPEG->Instance_Buffer), which
    dim as integer q  = get8(@pointeur_JPEG->Instance_Buffer)
    for which = 0 to pointeur_JPEG->Instance_Buffer.nombre-1
      if (pointeur_JPEG->image_comparaison(which).id = id) then exit for
    next
    if (which = pointeur_JPEG->Instance_Buffer.nombre) then return 0
    pointeur_JPEG->image_comparaison(which).hd = q shr 4
    if (pointeur_JPEG->image_comparaison(which).hd > 3) then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvais SOS, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Bad SOS, corrupt SOS", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
		
      return 0
    end if
    pointeur_JPEG->image_comparaison(which).ha = q and 15
    if (pointeur_JPEG->image_comparaison(which).ha > 3) then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvais AC, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Bad AC, corrupt SOS", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If

		return 0
    end if
    pointeur_JPEG->ordre(i) = which
  next
  if (get8(@pointeur_JPEG->Instance_Buffer) <> 0) then
	IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
		DEBUG("[SYSTEME] Mauvais SOS, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
	Else
		DEBUG("[SYSTEME] Bad SOS, corrupt SOS", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
	End If

	return 0
  end if
  get8(@pointeur_JPEG->Instance_Buffer) ' should be 63, but might be 0
  if (get8(@pointeur_JPEG->Instance_Buffer) <> 0) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvais SOS, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Bad SOS, corrupt SOS", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
	
	return 0
  end if
  return 1
end function

function _SYSTEME_Cpcdos_OSx__.process_frame_header(pointeur_JPEG as _tableau_JPEG_ ptr,scan as integer) as integer

  dim Instance_Buffer as _JPEG_Buffer_ ptr = @pointeur_JPEG->Instance_Buffer
  dim as integer Lf,p,i,q, h_max=1,v_max=1,c

  Lf = get16(Instance_Buffer)
  ' _tableau_JPEG_
  if (Lf<11) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvaise taille SOF, JPG corrrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] bad SOF length, corrupt JPG", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if
 
  p  = get8(Instance_Buffer)
   ' _tableau_JPEG_ baseline
  if (p<>8) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Format 8 bits non supporte", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] 8 bits format non supported", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if
 
  Instance_Buffer->Hauteur = get16(Instance_Buffer)
  ' Legal, but we don't handle it--but neither does IJG
  if (Instance_Buffer->Hauteur=0) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Format non supporte", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] No supported format", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if
 
  Instance_Buffer->Largeur = get16(Instance_Buffer)
  ' _tableau_JPEG_ requires
  if (Instance_Buffer->Largeur=0) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Entete corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Header width corrupted", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if
 
  c = get8(Instance_Buffer)
   ' JFIF requires
  if (c<>3) and (c<>1) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvais nombre de composants, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Bad component count, corrupt JPG", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if

  Instance_Buffer->nombre = c
  for i=0 to c-1
    pointeur_JPEG->image_comparaison(i).Pointeur_donnees   = NULL
    pointeur_JPEG->image_comparaison(i).buffer_ligne = NULL
  next

  if Lf <> (8+3*Instance_Buffer->nombre) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Mauvaise taille SOF ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Bad SOF length", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if

  for i=0 to Instance_Buffer->nombre-1
    pointeur_JPEG->image_comparaison(i).id = get8(Instance_Buffer)
    ' JFIF requires
    if pointeur_JPEG->image_comparaison(i).id <> (i+1) then
      ' some version of jpegtran outputs non-JFIF-compliant files!
      if (pointeur_JPEG->image_comparaison(i).id <> i) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Composant ID, JPG corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] bad component ID, corrupt JPG", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
        return 0
      end if
    end if
    q = get8(Instance_Buffer)
    pointeur_JPEG->image_comparaison(i).Hauteur = (q shr 4)
    if (pointeur_JPEG->image_comparaison(i).Hauteur=0) or (pointeur_JPEG->image_comparaison(i).Hauteur > 4) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Height corrompu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Height corrupted", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
      
      return 0
    end if
    pointeur_JPEG->image_comparaison(i).v = q and 15
    if (pointeur_JPEG->image_comparaison(i).v=0) or (pointeur_JPEG->image_comparaison(i).v > 4) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Bad V", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Bad V", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
      return 0
    end if
    pointeur_JPEG->image_comparaison(i).tq = get8(Instance_Buffer)
    if (pointeur_JPEG->image_comparaison(i).tq > 3) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Bad QT", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Bat QT", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
      return 0
    end if
  next

  if (scan <> SCAN_LOAD) then
    return 1
  end if

  if ((1 shl 30) \ Instance_Buffer->Largeur \ Instance_Buffer->nombre) < Instance_Buffer->Hauteur then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Image trop grand pour etre decodee", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Image to large to decode", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if

  for i=0 to Instance_Buffer->nombre-1
    if (pointeur_JPEG->image_comparaison(i).Hauteur > h_max) then h_max = pointeur_JPEG->image_comparaison(i).Hauteur
    if (pointeur_JPEG->image_comparaison(i).v > v_max) then v_max = pointeur_JPEG->image_comparaison(i).v
  next

  pointeur_JPEG->img_h_max = h_max
  pointeur_JPEG->img_v_max = v_max
  pointeur_JPEG->IMG_W = h_max * 8
  pointeur_JPEG->IMG_H = v_max * 8
  pointeur_JPEG->IMG_X = (Instance_Buffer->Largeur + pointeur_JPEG->IMG_W-1) \ pointeur_JPEG->IMG_W
  pointeur_JPEG->IMG_Y = (Instance_Buffer->Hauteur + pointeur_JPEG->IMG_H-1) \ pointeur_JPEG->IMG_H

  for i=0 to Instance_Buffer->nombre-1
    pointeur_JPEG->image_comparaison(i).x = (Instance_Buffer->Largeur * pointeur_JPEG->image_comparaison(i).Hauteur + h_max-1) \ h_max
    pointeur_JPEG->image_comparaison(i).y = (Instance_Buffer->Hauteur * pointeur_JPEG->image_comparaison(i).v + v_max-1) \ v_max
    pointeur_JPEG->image_comparaison(i).w2 = pointeur_JPEG->IMG_X * pointeur_JPEG->image_comparaison(i).Hauteur * 8
    pointeur_JPEG->image_comparaison(i).h2 = pointeur_JPEG->IMG_Y * pointeur_JPEG->image_comparaison(i).v * 8
    pointeur_JPEG->image_comparaison(i).donnees_RAW = allocate(pointeur_JPEG->image_comparaison(i).w2 * pointeur_JPEG->image_comparaison(i).h2)
    if (pointeur_JPEG->image_comparaison(i).donnees_RAW = NULL) then
      i-=1
      while (i>=0)
        deallocate(pointeur_JPEG->image_comparaison(i).donnees_RAW)
        pointeur_JPEG->image_comparaison(i).Pointeur_donnees = NULL
        i-=1
      wend
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Memoire insuffisante", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Out of memory", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
      return 0
    end if
    pointeur_JPEG->image_comparaison(i).Pointeur_donnees   = pointeur_JPEG->image_comparaison(i).donnees_RAW
    pointeur_JPEG->image_comparaison(i).buffer_ligne = NULL
  next
  return 1
end function

function _SYSTEME_Cpcdos_OSx__.decode_jpeg_header(pointeur_JPEG as _tableau_JPEG_ ptr,scan as integer) as integer
  dim as integer m
   ' initialize cached marker to empty
  pointeur_JPEG->marker = MARKER_NONE
  m = get_marker(pointeur_JPEG)
  if (SOI(m)=0) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] SOI corrompu marker:" & hex(m,2), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Corrupt SOI marker:" & hex(m,2), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return 0
  end if

  if (scan = SCAN_TYPE) then
    return 1
  end if

  m = get_marker(pointeur_JPEG)
  while (SOF0(m)=0) and (SOF1(m)=0)
    if process_marker(pointeur_JPEG,m)=0 then
      return 0
    end if
    m = get_marker(pointeur_JPEG)
    while (m = MARKER_NONE)
      if (get_Fin_buffer(@pointeur_JPEG->Instance_Buffer)) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Marker SOF manquant", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			Else
				DEBUG("[SYSTEME] Missing SOF marker", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
			End If
		End if

        return 0
      end if
      m = get_marker(pointeur_JPEG)
    wend
  wend
  if (process_frame_header(pointeur_JPEG, scan)=0) then
    return 0
  end if

  return 1
end function

function _SYSTEME_Cpcdos_OSx__.decode_jpeg_image(pointeur_jpg as _tableau_JPEG_ ptr) as integer
	dim as integer m
	pointeur_jpg->intervalle_redem = 0

	if (decode_jpeg_header(pointeur_jpg, SCAN_LOAD)=0) then
	return 0
	end if

	m = get_marker(pointeur_jpg)
	while (EOI(m)=0)
	if (SOS(m)) then
	  if (process_scan_header(pointeur_jpg)=0) then
		return 0
	  end if
	  if (parse_entropy_coded_data(pointeur_jpg)=0) then
		return 0
	  end if
	else
	  if (process_marker(pointeur_jpg, m)=0) then
		return 0
	  end if
	end if
	m = get_marker(pointeur_jpg)
	wend

	return 1
end function

function resample_row_1(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
	return in_near
end function

function resample_row_v_2(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr
	' need to generate two samples vertically for every one in input
	dim as integer i
	for i=0 to Largeur-1
		ou[i] = (3*in_near[i] + in_far[i] + 2) shr 2
	next
	return ou
end function

function resample_row_h_2(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr

	' need to generate two samples horizontally for every one in input
	dim as integer i
	dim as ubyte ptr in = in_near
	if (Largeur = 1) then
		' if only one sample, can't do any interpolation
		ou[0] = in[0]
		ou[1] = in[0]
		return ou
	end if

	ou[0] = in[0]
	ou[1] = (in[0]*3 + in[1] + 2) shr 2
	for i=1 to Largeur-2
		dim as integer nombre = 3*in[i]+2
		ou[i*2+0] = (nombre+in[i-1]) shr 2
		ou[i*2+1] = (nombre+in[i+1]) shr 2
	next
	ou[i*2+0] = (in[Largeur-2]*3 + in[Largeur-1] + 2) shr 2
	ou[i*2+1] = in[Largeur-1]
	return ou
end function

function resample_row_hv_2(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr

	' need to generate 2x2 samples for every one in input
	dim as integer i,t0,t1
	if (Largeur = 1) then
		ou[0] =  (3*in_near[0] + in_far[0] + 2) shr 2
		ou[1] = ou[0]
		return ou
	end if

	t1 = 3*in_near[0] + in_far[0]
	ou[0] = (t1+2) shr 2
	for i=1 to Largeur-1
		t0 = t1
		t1 = 3*in_near[i]+in_far[i]
		ou[i*2-1] = (3*t0 + t1 + 8) shr 4
		ou[i*2  ] = (3*t1 + t0 + 8) shr 4
	next
	ou[Largeur*2-1] = (t1+2) shr 2
	return ou
end function

function resample_row_generic(ou as ubyte ptr, in_near as ubyte ptr, in_far as ubyte ptr, Largeur as integer, hs as integer) as ubyte ptr

	' resample with nearest-neighbor
	dim as integer i,pointeur_jpg
	for i=0 to Largeur-1
		for pointeur_jpg=0 to hs-1
			ou[i*hs+pointeur_jpg] = in_near[i]
		next
	next
	return ou
end function

#define float2fixed(x) (int((x) * 65536 + 0.5))
sub _SYSTEME_Cpcdos_OSx__.YCbCr_to_RGB_row(ou as ubyte ptr, y as ubyte ptr, pcb as ubyte ptr, pcr as ubyte ptr, count as integer, psize as integer)
	dim as integer i
	for i=0 to count-1
		dim as integer y_fixed = (y[i] shl 16) + 32768 ' rounding
		dim as integer r,g,b
		dim as integer cr = pcr[i] - 128
		dim as integer cb = pcb[i] - 128
		r = y_fixed + cr*float2fixed(1.40200f)
		g = y_fixed - cr*float2fixed(0.71414f) - cb*float2fixed(0.34414f)
		b = y_fixed                            + cb*float2fixed(1.77200f)
		r shr= 16
		g shr= 16
		b shr= 16
		ou[0]= iif(r<0,0,iif(r>255,255,r))
		ou[1]= iif(g<0,0,iif(g>255,255,g))
		ou[2]= iif(b<0,0,iif(b>255,255,b))
		ou[3]= 255
		ou+=psize
	next
end sub


sub _SYSTEME_Cpcdos_OSx__.cleanup_jpeg(pointeur_jpg as _tableau_JPEG_ ptr)
	' Nettoyer les composants temporaire
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Nettoyage", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Cleaning", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
	dim as integer i
	for i=0 to pointeur_jpg->Instance_Buffer.nombre-1
		if (pointeur_jpg->image_comparaison(i).Pointeur_donnees) then
			deallocate pointeur_jpg->image_comparaison(i).donnees_RAW
			pointeur_jpg->image_comparaison(i).Pointeur_donnees = NULL
		end if
		if (pointeur_jpg->image_comparaison(i).buffer_ligne) then
			deallocate pointeur_jpg->image_comparaison(i).buffer_ligne
			pointeur_jpg->image_comparaison(i).buffer_ligne = NULL
		end if
	next
end sub



function _SYSTEME_Cpcdos_OSx__.load_jpeg_image(byval pointeur_JPEG as _tableau_JPEG_ ptr, byref Largeur as integer, byref Hauteur as integer, byref comp as integer, byval req_comp as integer) as ubyte ptr

  dim as integer nombre, decode_n
  if (req_comp < 0) or (req_comp > 4) then
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Erreur interne", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] internal error", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return NULL
  end if
  pointeur_JPEG->Instance_Buffer.nombre = 0

  if decode_jpeg_image(pointeur_JPEG)=0 then
    cleanup_jpeg(pointeur_JPEG)
    return NULL
  end if

  if req_comp then
    nombre=req_comp
  else
    nombre=pointeur_JPEG->Instance_Buffer.nombre
  end if

  if (pointeur_JPEG->Instance_Buffer.nombre = 3) and (nombre < 3) then
    decode_n = 1
  else
    decode_n = pointeur_JPEG->Instance_Buffer.nombre
  end if

  dim as integer k
  dim as uinteger  i,pointeur_jpg
  dim as ubyte ptr pOutput
  dim as ubyte ptr cOutput(4-1)
  dim as _buffer_jpg_RESAMPLE_ res_comp(4-1)

  for k=0 to decode_n-1
    dim as _buffer_jpg_RESAMPLE_ ptr r = @res_comp(k)
    pointeur_JPEG->image_comparaison(k).buffer_ligne = callocate(pointeur_JPEG->Instance_Buffer.Largeur + 3)
    if pointeur_JPEG->image_comparaison(k).buffer_ligne = NULL then
      cleanup_jpeg(pointeur_JPEG)
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Memoire insuffisante", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] Out of memory", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
      return NULL
    end if

    r->hs      = pointeur_JPEG->img_h_max / pointeur_JPEG->image_comparaison(k).Hauteur
    r->vs      = pointeur_JPEG->img_v_max / pointeur_JPEG->image_comparaison(k).v
    r->ystep   = r->vs shr 1
    r->w_lores = (pointeur_JPEG->Instance_Buffer.Largeur + r->hs-1) / r->hs
    r->ypos    = 0
    r->line0   = pointeur_JPEG->image_comparaison(k).Pointeur_donnees
    r->line1   = pointeur_JPEG->image_comparaison(k).Pointeur_donnees

    if (r->hs = 1) and (r->vs = 1)     then
      r->resample = @resample_row_1
    elseif (r->hs = 1) and (r->vs = 2) then
      r->resample = @resample_row_v_2
    elseif (r->hs = 2) and (r->vs = 1) then
      r->resample = @resample_row_h_2
    elseif (r->hs = 2) and (r->vs = 2) then
      r->resample = @resample_row_hv_2
    else
      r->resample = @resample_row_generic
    end if
  next

  pOutput = callocate(nombre * pointeur_JPEG->Instance_Buffer.Largeur * pointeur_JPEG->Instance_Buffer.Hauteur + 1)
  if (pOutput) = NULL then
    cleanup_jpeg(pointeur_JPEG)
    IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Memoire insuffisante", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Out of memory", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
    return NULL
  end if

  for pointeur_jpg=0 to pointeur_JPEG->Instance_Buffer.Hauteur-1
    dim as ubyte ptr PtrResultat = pOutput + nombre * pointeur_JPEG->Instance_Buffer.Largeur * pointeur_jpg
    for k=0 to decode_n-1
      dim as _buffer_jpg_RESAMPLE_ ptr r = @res_comp(k)
      dim as integer y_bot = (r->ystep >= (r->vs shr 1))
      cOutput(k) = r->resample(pointeur_JPEG->image_comparaison(k).buffer_ligne, _
                               iif(y_bot,r->line1,r->line0), _
                               iif(y_bot,r->line0,r->line1), _
                               r->w_lores, _
                               r->hs)
      r->ystep+=1
      if r->ystep>= r->vs then
        r->ystep = 0
        r->line0 = r->line1
        r->ypos+=1
        if r->ypos < pointeur_JPEG->image_comparaison(k).y then
          r->line1+= pointeur_JPEG->image_comparaison(k).w2
        end if
      end if
    next
    if (nombre >= 3) then
      dim as ubyte ptr y = cOutput(0)
      if (pointeur_JPEG->Instance_Buffer.nombre = 3) then
        YCbCr_to_RGB_row(PtrResultat, y, cOutput(1), cOutput(2), pointeur_JPEG->Instance_Buffer.Largeur, nombre)
      else
        for i=0 to pointeur_JPEG->Instance_Buffer.Largeur-1
          PtrResultat[0] = y[i]
          PtrResultat[1] = y[i]
          PtrResultat[2] = y[i]
          PtrResultat[3] = 255
          PtrResultat += nombre
        next
      end if
    else
      dim as ubyte ptr y = cOutput(0)
      if (nombre = 1) then
        for i=0 to pointeur_JPEG->Instance_Buffer.Largeur-1
          PtrResultat[i] = y[i]
        next
      else
        for i=0 to pointeur_JPEG->Instance_Buffer.Largeur-1
          PtrResultat[0] = y[i]
          PtrResultat[1] = 255
          PtrResultat+=2
        next
      end if
    end if
  next
  cleanup_jpeg(pointeur_JPEG)
  Largeur = pointeur_JPEG->Instance_Buffer.Largeur
  Hauteur = pointeur_JPEG->Instance_Buffer.Hauteur
  comp = pointeur_JPEG->Instance_Buffer.nombre

  return pOutput
end function

function _SYSTEME_Cpcdos_OSx__._tester_si_JPG(PointeurBuffer as ubyte ptr, TailleBuffer as integer) as integer
	dim instance_jpeg as _tableau_JPEG_ 
	Debut_Memoire(@instance_jpeg.Instance_Buffer,PointeurBuffer,TailleBuffer)
	return decode_jpeg_header(@instance_jpeg, SCAN_type)
end function

function _SYSTEME_Cpcdos_OSx__._Decoder_JPG(byval PointeurBuffer as ubyte ptr, byval TailleBuffer as integer, byref Largeur as integer, byref Hauteur as integer, byref NombreCanaux as integer, byval CanauxReq as integer) as ubyte ptr
	dim instance_jpeg as _tableau_JPEG_ 

	Debut_Memoire(@instance_jpeg.Instance_Buffer, PointeurBuffer,TailleBuffer)
	return load_jpeg_image(@instance_jpeg,Largeur,Hauteur,NombreCanaux,CanauxReq)
end function

function _SYSTEME_Cpcdos_OSx__._lireJPG(byval PointeurBuffer as ubyte ptr, byval TailleBuffer as integer, byref Largeur as integer, byref Hauteur as integer, byref NombreCanaux as integer, CanauxReq as integer) as ubyte ptr
  
	if _tester_si_JPG(PointeurBuffer,TailleBuffer) then
		return _Decoder_JPG(PointeurBuffer, TailleBuffer, Largeur, Hauteur, NombreCanaux, CanauxReq)
	end if
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Type d'image inconnu ou corrompu.", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Unknow image type or corrupted ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
	return 0
end function

function _SYSTEME_Cpcdos_OSx__.ChargerJPG(byval Chemin as string, byref Hauteur as integer, byref Largeur as integer, byref BitesParPixels as integer) as ubyte ptr
	
	ENTRER_SectionCritique()
	
	Dim BITS as integer = BitesParPixels
	Dim CanauxReq as integer = 3
	dim Taille as integer
	Dim PtrResultat as ubyte PTR
	Dim PointeurBuffer as ubyte ptr
	Dim PassageDoEvents as integer
	
	if len(Chemin)=0 then
		return NULL
	end if
	
	
	
	dim as integer PtrFichier = FreeFile
	if open(Chemin for binary access read as #PtrFichier) then
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Fichier introuvable", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] File not found", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
		SORTIR_SectionCritique()
		return NULL
	end if
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Chargement d'une image JPG '" & Chemin & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Loading JPG image '" & Chemin & "' ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
	
	Taille = LOF(PtrFichier)
	if Taille < 1 then
		close #PtrFichier
		IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
			IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
				DEBUG("[SYSTEME] Le fichier est vide", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			Else
				DEBUG("[SYSTEME] The file is empty", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
			End If
		End if
		SORTIR_SectionCritique()
		return NULL
	end if

	PointeurBuffer = allocate(Taille)
	get #PtrFichier,,PointeurBuffer[0], Taille
	
	close #PtrFichier
	PtrResultat = _lireJPG(PointeurBuffer,Taille, Largeur,Hauteur,BitesParPixels,CanauxReq)

	if PointeurBuffer then deallocate PointeurBuffer
	if PtrResultat    then 
		
		dim Tableau_RVB as ubyte ptr = PtrResultat
		Dim ImageDestination as Any PTR
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Composantes RVB [0x" & hex(PtrResultat, 8) & "] " & Taille & " octets sur " & BITS & " bits" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEM] RGB component [0x" & hex(PtrResultat, 8) & "] " & Taille & " bytes with " & BITS & " bits" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End if
		
		' Parser les octets RVB sur le buffer
		
		ImageDestination = ImageCreate( largeur, hauteur, RGB(255, 0, 255),  BITS)
		
		SORTIR_SectionCritique()
		
		for y as integer = 0 to Hauteur-1
			for x as integer = 0 to Largeur-1
				pset ImageDestination, (x,y), RGB(Tableau_RVB[0],Tableau_RVB[1],Tableau_RVB[2])
				Tableau_RVB+=BitesParPixels
				
				PassageDoEvents += 1
				if PassageDoEvents > (Hauteur*Largeur) / 4 Then
					PassageDoEvents = 0
					doevents(0)
				end if
			
			next
		next
		
		ENTRER_SectionCritique()
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] PTR final [0x" & hex(ImageDestination, 8) & "] " & Taille & " octets (" & Largeur & "x" & Hauteur & ") sur " & BITS & " bits" , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEM] Final PTR [0x" & hex(ImageDestination, 8) & "] " & Taille & " bytes (" & Largeur & "x" & Hauteur & ") with " & BITS & " bits", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End if
		
		if PtrResultat then deallocate(PtrResultat)
		
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Composantes RVB [0x" & hex(PtrResultat, 8) & "] supprimees." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEM] RGB components [0x" & hex(PtrResultat, 8) & "] deleted." , CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_NORMAL, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End if
		
		PtrResultat = 0
		SORTIR_SectionCritique()
		return ImageDestination
	End if
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.get_DBG_DEBUG() > 0 Then
		IF CPCDOS_INSTANCE.Utilisateur_Langage = 0 Then
			DEBUG("[SYSTEME] Erreur durant le decodage JPEG", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		Else
			DEBUG("[SYSTEME] Error during JPEG decodage", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.AvecDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, RetourVAR_PNG)
		End If
	End if
	
	SORTIR_SectionCritique()
	return NULL
end function
