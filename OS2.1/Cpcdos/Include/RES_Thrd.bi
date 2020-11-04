' Entete de RES_Thrd.bas

Declare function Client_THREAD 				cdecl Alias "Client_THREAD"				(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
Declare function Serveur_THREAD 			cdecl Alias "Serveur_THREAD"			(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer

