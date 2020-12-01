	.file "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS"
	.stabs "C:\\cpcdos\\Cpcdos-DEV\\",100,0,0,.Lt_0002
	.stabs "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS",100,0,0,.Lt_0002

.section .text
.Lt_0002:
	.stabs "integer:t1=-1",128,0,0,0
	.stabs "void:t7=-11",128,0,0,0
	.stabs "byte:t2=-6",128,0,0,0
	.stabs "ubyte:t3=-5",128,0,0,0
	.stabs "char:t4=-2",128,0,0,0
	.stabs "short:t5=-3",128,0,0,0
	.stabs "ushort:t6=-7",128,0,0,0
	.stabs "uinteger:t8=-8",128,0,0,0
	.stabs "longint:t9=-31",128,0,0,0
	.stabs "ulongint:t10=-32",128,0,0,0
	.stabs "single:t11=-12",128,0,0,0
	.stabs "double:t12=-13",128,0,0,0
	.stabs "string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;",128,0,0,0
	.stabs "fixstr:t14=-2",128,0,0,0
	.stabs "pchar:t15=*4;",128,0,0,0
	.stabs "boolean:t16=@s8;-16",128,0,0,0

	.stabs "FB\\__FB__PE_CpcdosOSx_INIT___CPCDOS_INIT_1.BAS",130,0,0,0
	.intel_syntax noprefix
	.stabs "__FB__PE_CPCDOSOSX_INIT_:F1",36,0,8,___FB__PE_CpcdosOSx_INIT_
	.stabs "_ARG0:p1",160,0,0,8
.balign 16

.globl ___FB__PE_CpcdosOSx_INIT_
___FB__PE_CpcdosOSx_INIT_:
	push ebp
	mov ebp, esp
	sub esp, 8
	.stabn 68,0,8,___FB__PE_CpcdosOSx_INIT_-___FB__PE_CpcdosOSx_INIT_
	mov dword ptr [ebp-4], 0
.Lt_0005:
.Lt_0007:
	push dword ptr [ebp+8]
	call ___CPCDOS_INIT_1
	add esp, 4
	mov dword ptr [ebp-8], eax
	mov eax, dword ptr [ebp-8]
	mov dword ptr [ebp-4], eax
.Lt_0006:
	mov eax, dword ptr [ebp-4]
	mov esp, ebp
	pop ebp
	ret
	.stabn 68,0,9,.Lt_0006-___FB__PE_CpcdosOSx_INIT_
	.stabs "_RETOUR:1",128,0,0,-8
	.stabn 192,0,0,.Lt_0005-___FB__PE_CpcdosOSx_INIT_
	.stabn 224,0,0,.Lt_0006-___FB__PE_CpcdosOSx_INIT_
.Lt_0008:
	.stabs "",36,0,0,.Lt_0008-___FB__PE_CpcdosOSx_INIT_
	.stabs "main",42,0,1,_main
	.stabd 68,0,1
	.stabs "main:F1",36,0,1,_main
	.stabs "__FB_ARGC__:p1",160,0,0,8
	.stabs "__FB_ARGV__:p17=*18=*4",160,0,0,12
.balign 16

.globl _main
_main:
	push ebp
	mov ebp, esp
	and esp, 0xFFFFFFF0
	sub esp, 4
	.stabn 68,0,1,_main-_main
	mov dword ptr [ebp-4], 0
	push 0
	push dword ptr [ebp+12]
	push dword ptr [ebp+8]
	call _fb_Init
	add esp, 12
.Lt_0003:
.Lt_0009:
##' == By Sebastien FAVIER. Wrapping & entry point for Cpcdos OSx and CPinti Core ==
##' [FR] Veuillez ne pas modifier ce code.
##' [EN] Please do not modify this code.
##
##
##Declare function __FB__PE_CpcdosOSx_INIT_ cdecl Alias "__FB__PE_CpcdosOSx_INIT_"(_ARG0 as integer) as integer
##extern "C" lib "cpc":declare function __CPCDOS_INIT_1(_ARG0 as integer) as integer:end extern
##DIM _RETOUR AS INTEGER=__CPCDOS_INIT_1(_ARG0):__FB__PE_CpcdosOSx_INIT_=_RETOUR:end function:__FB__PE_CpcdosOSx_INIT_(0)
	push 0
	call ___FB__PE_CpcdosOSx_INIT_
	add esp, 4
.stabn 68,0,8,.Lt_0009-_main
.Lt_000A:
##end 1
	push 1
	call _fb_End
	add esp, 4
.stabn 68,0,10,.Lt_000A-_main
.Lt_0004:
	push 0
	call _fb_End
	add esp, 4
	mov eax, dword ptr [ebp-4]
	mov esp, ebp
	pop ebp
	ret
	.stabn 68,0,11,.Lt_0004-_main
	.stabn 192,0,0,.Lt_0003-_main
	.stabn 224,0,0,.Lt_0004-_main
.Lt_000B:
	.stabs "",36,0,0,.Lt_000B-_main
	.stabs "",100,0,0,.Lt_000C
.Lt_000C:
