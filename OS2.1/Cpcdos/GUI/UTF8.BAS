' Contient des fonctions et variables concernant 
' la gestion UTF 8

' Par Sebastien FAVIER
' Reecriture le 13/10/2016
' Mise a jour le 17/10/2016


#include once "cpcdos.bi"
#include once "utf8.bi"	' Gestion UTF-8

Constructor __UTF8_Cpcdos_OSx__()
	DEBUG(" * Instanciation du module UTF-8 --> Allocation offset:0x" & hex(@this) & " Taille:" & SizeOf(this) & " octets", 1, 1, 2, 0, 0, 1, 0, "")
End Constructor

Destructor __UTF8_Cpcdos_OSx__()
	DEBUG(" * De-instanciation du module UTF-8 --> Desallocation offset:0x" & hex(@this), 1, 1, 6, 0, 0, 1, 0, "")
End Destructor