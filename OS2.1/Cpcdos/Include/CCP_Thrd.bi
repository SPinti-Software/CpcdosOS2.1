' Entete de CCP_Thrd.bas

declare function Shell_THREAD cdecl Alias "Shell_THREAD" (ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
declare function Wrapper_THREAD cdecl Alias "Wrapper_THREAD"(ByVal thread_struct as _STRUCT_THREAD_Cpcdos_OSx__) as integer
