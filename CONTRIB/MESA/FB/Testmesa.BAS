
REM Test OpenGL sous Cpcdos
REM Sebastien FAVIER le 21-10-2016

Declare sub CPC_Blitter cdecl Alias "CPC_Blitter"()

Extern "C++" lib "wrp"
	namespace mesa_3d
		declare function __mesa_main(pointeur as uinteger PTR) as integer
	

	end namespace
end extern

' ScreenRes 640, 400

' Dim SHARED ScrPointeur As Any Ptr

' ScrPointeur = ScreenPtr()

' Print "Debut... " & ScrPointeur & "."
' mesa_3d.__mesa_main(ScrPointeur)

' print "fin!"





' print "Resolutions supportes en 32bits:"
' Dim As Integer mode, w, h
' mode = ScreenList(32)
' While (mode <> 0)
    ' w = HiWord(mode)
    ' h = LoWord(mode)
    ' Print w & "x" & h
    ' mode = ScreenList()
' Wend
' Print "Pressez une toucheuuuuh"
' sleep
COMMON SHARED BUFFER_PUT as ANY PTR
COMMON SHARED BUFFER_CONTEXT as ANY PTR

' Verouiller l'ecran
' screenlock
' Changer la resolution
' ScreenRes 800, 600
ScreenRes 800, 600, 32



sleep 200
' Creer un buffer
BUFFER_PUT = ImageCreate(800, 600, RGB(255, 0, 255), 32)
Sleep 200
' Recuperer les informations de pointeurs
ImageInfo BUFFER_PUT, , , , , BUFFER_CONTEXT


Sleep 100
ScreenRes 1024, 768, 32

' screenunlock
Print "Pointeur buffer : " & BUFFER_PUT & ". Pointeur video : " & BUFFER_CONTEXT & "."
put (112, 84), BUFFER_PUT, PSet
' Print "Pret!" : sleep
CPC_Blitter()


Print "Execution..."
mesa_3d.__mesa_main(BUFFER_CONTEXT)

print "fin!"



public sub CPC_Blitter cdecl Alias "CPC_Blitter"()
	' put (20,50), ScrPointeur, PRESET
	put (112, 84), BUFFER_PUT, PSet
	' ScreenSync()
end sub

