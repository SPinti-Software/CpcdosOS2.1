typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int32 len; int32 size; } FBSTRING;
typedef int8 boolean;
#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
void fb_Init( int32, uint8**, int32 );
#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
void fb_End( int32 );
#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
int32 __FB__PE_CpcdosOSx_INIT_( int32 );
#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
int32 __CPCDOS_INIT_1( int32 );

#line 8 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
int32 __FB__PE_CpcdosOSx_INIT_( int32 _ARG0$1 )
#line 8 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
{
	#line 8 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	int32 fb$result$1;
	#line 8 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	__builtin_memset( &fb$result$1, 0, 4 );
	#line 8 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	label$2:;
	#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	int32 _RETOUR$1;
	#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	int32 vr$1 = __CPCDOS_INIT_1( _ARG0$1 );
	#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	_RETOUR$1 = vr$1;
	#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	fb$result$1 = _RETOUR$1;
	#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	label$3:;
	#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	return fb$result$1;
#line 9 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
}

#line 1 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
int32 main( int32 __FB_ARGC__$0, char** __FB_ARGV__$0 )
#line 1 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
{
	#line 1 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	int32 fb$result$0;
	#line 1 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	__builtin_memset( &fb$result$0, 0, 4 );
	#line 1 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	fb_Init( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0, 0 );
	#line 1 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	label$0:;
	// ' == By Sebastien FAVIER. Wrapping & entry point for Cpcdos OSx and CPinti Core ==
	// ' [FR] Veuillez ne pas modifier ce code.
	// ' [EN] Please do not modify this code.
	// Declare function __FB__PE_CpcdosOSx_INIT_ cdecl Alias "__FB__PE_CpcdosOSx_INIT_"(_ARG0 as integer) as integer
	// extern "C" lib "cpc":declare function __CPCDOS_INIT_1(_ARG0 as integer) as integer:end extern
	// DIM _RETOUR AS INTEGER=__CPCDOS_INIT_1(_ARG0):__FB__PE_CpcdosOSx_INIT_=_RETOUR:end function:__FB__PE_CpcdosOSx_INIT_(0)
	#line 8 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	__FB__PE_CpcdosOSx_INIT_( 0 );
	// end 1
	#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	fb_End( 1 );
	#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	label$1:;
	#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	fb_End( 0 );
	#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	return fb$result$0;
#line 10 "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
}
