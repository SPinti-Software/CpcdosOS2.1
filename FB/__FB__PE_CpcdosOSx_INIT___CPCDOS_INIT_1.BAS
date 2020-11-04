' == By Sebastien FAVIER. Wrapping & entry point for Cpcdos OSx and CPinti Core ==
' [FR] Veuillez ne pas modifier ce code.
' [EN] Please do not modify this code.


Declare function __FB__PE_CpcdosOSx_INIT_ cdecl Alias "__FB__PE_CpcdosOSx_INIT_"(_ARG0 as integer) as integer
extern "C" lib "cpc":declare function __CPCDOS_INIT_1(_ARG0 as integer) as integer:end extern
public function __FB__PE_CpcdosOSx_INIT_ cdecl Alias "__FB__PE_CpcdosOSx_INIT_"(_ARG0 as integer) as integer
DIM _RETOUR AS INTEGER=__CPCDOS_INIT_1(_ARG0):__FB__PE_CpcdosOSx_INIT_=_RETOUR:end function:__FB__PE_CpcdosOSx_INIT_(0)
end 1
