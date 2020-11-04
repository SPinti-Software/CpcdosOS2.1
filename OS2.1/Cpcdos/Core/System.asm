	.intel_syntax noprefix

.section .text
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__C1Ev
__ZN21_SYSTEME_CPCDOS_OSX__C1Ev:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_03C4:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-84], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-88], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 17
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 18
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 19
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 21
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 22
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 23
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
add eax, 60
mov dword ptr [eax], -1
push 0
push 29
push offset _Lt_0102
push -1
mov eax, dword ptr [ebp+8]
add eax, 64
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
add eax, 76
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 88
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 100
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 112
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 116
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 120
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 124
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 132
lea ebx, [eax]
push ebx
call __ZN15_MEMOIRE_BITMAPC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 28860
lea eax, [ebx]
push eax
call __ZN14_ATTRIBUTS_IO_C1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 28868
lea ebx, [eax]
push ebx
call __ZN15_INTERFACE_APM_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 28912
lea eax, [ebx]
push eax
call __ZN7_CPUID_C1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 29068
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 29072
lea ebx, [eax]
mov dword ptr [ebp-80], ebx
mov dword ptr [ebp-76], 0
.Lt_03D1:
push dword ptr [ebp-80]
call __ZN11_COM_PORT__C1Ev
add esp, 4
add dword ptr [ebp-80], 84
inc dword ptr [ebp-76]
cmp dword ptr [ebp-76], 9
jne .Lt_03D1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-72]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push 0
push 1
push 0
push 0
push 2
push 1
push 1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 8
push offset _Lt_03C9
push -1
push 6
push offset _Lt_03C8
push -1
push 9
push offset _Lt_03C7
push -1
push -1
push dword ptr [ebp+8]
call _fb_HEX_p
add esp, 4
push eax
push 64
push offset _Lt_03C6
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03C5:
push dword ptr [ebp-88]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-84]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__D1Ev
__ZN21_SYSTEME_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_03D6:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
push 0
push 1
push 0
push 0
push 6
push 1
push 1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_HEX_p
add esp, 4
push eax
push 70
push offset _Lt_03D8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
movzx eax, byte ptr [_CX_APM_MODE]
test eax, eax
jle .Lt_03DD
movzx eax, byte ptr [_CX_APM_MODE]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+28868]
push ebx
call __ZN15_INTERFACE_APM_14SIGNAL_SYSTEMEEh
add esp, 8
.Lt_03DD:
.Lt_03DC:
.Lt_03D7:
mov ebx, dword ptr [ebp+8]
add ebx, 29744
lea eax, [ebx]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
.Lt_03DF:
push dword ptr [ebp-44]
call __ZN11_COM_PORT__D1Ev
add esp, 4
add dword ptr [ebp-44], -84
inc dword ptr [ebp-40]
cmp dword ptr [ebp-40], 9
jne .Lt_03DF
mov eax, dword ptr [ebp+8]
add eax, 28912
lea ebx, [eax]
push ebx
call __ZN7_CPUID_D1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 28868
lea eax, [ebx]
push eax
call __ZN15_INTERFACE_APM_D1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 132
lea ebx, [eax]
push ebx
call __ZN15_MEMOIRE_BITMAPD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 100
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 88
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 76
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 64
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13ALLOUERSTRINGER8FBSTRING
__ZN21_SYSTEME_CPCDOS_OSX__13ALLOUERSTRINGER8FBSTRING:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_03E9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_03E3:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E6
push 0
push 2
push offset _Lt_0396
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_03E6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12TAILLESTRINGER8FBSTRING
add esp, 8
push eax
call _malloc
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+12]
push 0
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03E4:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPc
__ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPc:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03F0
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03EB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .Lt_03EE
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _free
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_03ED
.Lt_03EE:
mov dword ptr [ebp-4], 1
.Lt_03ED:
.Lt_03EC:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPKc
__ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPKc:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03F0
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03F2:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .Lt_03F5
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _free
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_03F4
.Lt_03F5:
mov dword ptr [ebp-4], 1
.Lt_03F4:
.Lt_03F3:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__15ALLOUERSTRING_0ERj
__ZN21_SYSTEME_CPCDOS_OSX__15ALLOUERSTRING_0ERj:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03FB
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03F8:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _calloc
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_03F9:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12TAILLESTRINGER8FBSTRING
__ZN21_SYSTEME_CPCDOS_OSX__12TAILLESTRINGER8FBSTRING:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0407
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_03FD:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-28], eax
jmp .Lt_0400
.Lt_0403:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _fb_ASC
add esp, 8
and eax, 255
mov ebx, eax
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0405
inc dword ptr [ebp-12]
.Lt_0405:
.Lt_0401:
inc dword ptr [ebp-24]
.Lt_0400:
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebp-24], ebx
jle .Lt_0403
.Lt_0402:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_03FE:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14UPDATE_MEMOIREEv
__ZN21_SYSTEME_CPCDOS_OSX__14UPDATE_MEMOIREEv:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0409:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0414
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
push 1
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_MEMOIRE_LIBREEi
add esp, 8
mov dword ptr [__MEMOIRE_ACTUEL], eax
mov eax, dword ptr [__MEMOIRE_LIBRE_DEPART]
sub eax, dword ptr [__MEMOIRE_ACTUEL]
mov dword ptr [__MEMOIRE__KRNL_OCCUPE], eax
push 0
push dword ptr [__MEMOIRE_ACTUEL]
fild qword ptr [esp]
add esp, 8
push 0
push dword ptr [__MEMOIRE_LIBRE_DEPART]
fild qword ptr [esp]
add esp, 8
fxch st(1)
fdivrp
fmul qword ptr [_Lt_0416]
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [__MEMOIRE_LIBRE_POURCENT]
add esp, 4
cmp dword ptr [__MEMOIRE_LIBRE_POURCENT], 100
jbe .Lt_040C
mov dword ptr [__MEMOIRE_LIBRE_POURCENT], 100
.Lt_040C:
cmp dword ptr [__MEMOIRE_LIBRE_POURCENT], 0
jae .Lt_040E
mov dword ptr [__MEMOIRE_LIBRE_POURCENT], 0
.Lt_040E:
push 0
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
fild qword ptr [esp]
add esp, 8
push 0
push dword ptr [__MEMOIRE_LIBRE_DEPART]
fild qword ptr [esp]
add esp, 8
fxch st(1)
fdivrp
fmul qword ptr [_Lt_0416]
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [__MEMOIRE_UTIL_POURCENT]
add esp, 4
cmp dword ptr [__MEMOIRE_UTIL_POURCENT], 100
jbe .Lt_0410
mov dword ptr [__MEMOIRE_UTIL_POURCENT], 100
.Lt_0410:
cmp dword ptr [__MEMOIRE_UTIL_POURCENT], 0
jae .Lt_0412
mov dword ptr [__MEMOIRE_UTIL_POURCENT], 0
.Lt_0412:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_040A:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16GET_CPU_POURCENTEv
__ZN21_SYSTEME_CPCDOS_OSX__16GET_CPU_POURCENTEv:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_041A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0417:
call __ZN6cpinti18gestionnaire_tache13get_cycle_cpuEv
push 0
push eax
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp-20]
call __ZN6cpinti18gestionnaire_tache17get_cycle_MAX_cpuEv
push 0
push eax
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp-20]
fdivrp
fmul qword ptr [_Lt_0416]
fchs
fadd qword ptr [_Lt_0416]
fabs
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [_CPCDOS_INSTANCE+618420]
add esp, 4
mov eax, dword ptr [_CPCDOS_INSTANCE+618420]
mov dword ptr [ebp-4], eax
.Lt_0418:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17GET_MEMOIRE_LIBREEi
__ZN21_SYSTEME_CPCDOS_OSX__17GET_MEMOIRE_LIBREEi:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0420
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_041D:
push 0
call _fb_GetMemAvail
add esp, 4
push 0
push eax
fild qword ptr [esp]
add esp, 8
fild dword ptr [ebp+12]
fxch st(1)
fdivrp
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [ebp-4]
add esp, 4
.Lt_041E:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
__ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0425
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0422:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_0423:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13SET_DBG_DEBUGEi
__ZN21_SYSTEME_CPCDOS_OSX__13SET_DBG_DEBUGEi:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0427:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_042C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
cmp byte ptr [_CPCDOS_INSTANCE+636], 1
jne .Lt_042A
mov dword ptr [ebp+12], 2
.Lt_042A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_0428:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16GET_CPINTI_DEBUGEv
__ZN21_SYSTEME_CPCDOS_OSX__16GET_CPINTI_DEBUGEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0431
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_042E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
.Lt_042F:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16SET_CPINTI_DEBUGEi
__ZN21_SYSTEME_CPCDOS_OSX__16SET_CPINTI_DEBUGEi:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0433:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0438
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
cmp byte ptr [_CPCDOS_INSTANCE+636], 1
jne .Lt_0436
mov dword ptr [ebp+12], 1
.Lt_0436:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call __ZN10cpinti_dbg10debug_modeEi
add esp, 4
.Lt_0434:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__19GET_CPINTI_FD_DEBUGEv
__ZN21_SYSTEME_CPCDOS_OSX__19GET_CPINTI_FD_DEBUGEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_043D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_043A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
.Lt_043B:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__19SET_CPINTI_FD_DEBUGEi
__ZN21_SYSTEME_CPCDOS_OSX__19SET_CPINTI_FD_DEBUGEi:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_043F:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0442
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
.Lt_0440:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16GET_PRINTF_DEBUGEv
__ZN21_SYSTEME_CPCDOS_OSX__16GET_PRINTF_DEBUGEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0447
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0444:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0445:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16SET_PRINTF_DEBUGEi
__ZN21_SYSTEME_CPCDOS_OSX__16SET_PRINTF_DEBUGEi:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0449:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_044C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
.Lt_044A:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
__ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0451
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_044E:
movzx eax, byte ptr [ebp+12]
sar eax, 4
imul eax, 10
movzx ebx, byte ptr [ebp+12]
and ebx, 15
add eax, ebx
mov bl, al
mov byte ptr [ebp-4], bl
.Lt_044F:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__7GET_RTCEv
__ZN21_SYSTEME_CPCDOS_OSX__7GET_RTCEv:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0453:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_046B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
.Lt_0455:
.Lt_0458:
push 128
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_0459
lea eax, [.Lt_0459]
push eax
lea eax, [.Lt_0458]
push eax
push offset _Lt_03D3
push 195
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0459:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+17], al
.Lt_045A:
push 130
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_045B
lea eax, [.Lt_045B]
push eax
lea eax, [.Lt_045A]
push eax
push offset _Lt_03D3
push 197
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_045B:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+18], al
.Lt_045C:
push 132
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_045D
lea eax, [.Lt_045D]
push eax
lea eax, [.Lt_045C]
push eax
push offset _Lt_03D3
push 199
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_045D:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+19], al
.Lt_045E:
push 134
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_045F
lea eax, [.Lt_045F]
push eax
lea eax, [.Lt_045E]
push eax
push offset _Lt_03D3
push 201
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_045F:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+20], al
.Lt_0460:
push 135
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_0461
lea eax, [.Lt_0461]
push eax
lea eax, [.Lt_0460]
push eax
push offset _Lt_03D3
push 203
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0461:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+21], al
.Lt_0462:
push 136
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_0463
lea eax, [.Lt_0463]
push eax
lea eax, [.Lt_0462]
push eax
push offset _Lt_03D3
push 205
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0463:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+22], al
.Lt_0464:
push 137
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_0465
lea eax, [.Lt_0465]
push eax
lea eax, [.Lt_0464]
push eax
push offset _Lt_03D3
push 207
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0465:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+23], al
.Lt_0466:
push 178
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_0467
lea eax, [.Lt_0467]
push eax
lea eax, [.Lt_0466]
push eax
push offset _Lt_03D3
push 209
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0467:
push 113
call _fb_In
add esp, 4
mov bl, al
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+24], al
.Lt_0468:
push 128
push 112
call _fb_Out
add esp, 8
test eax, eax
je .Lt_0469
lea eax, [.Lt_0469]
push eax
lea eax, [.Lt_0468]
push eax
push offset _Lt_03D3
push 212
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0469:
.Lt_0457:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+17]
push 113
call _fb_In
add esp, 4
mov cl, al
push ecx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19CONVERT_DCB_BINAIREEh
add esp, 8
movzx ecx, al
cmp ebx, ecx
jne .Lt_0455
.Lt_0456:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_0454:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__8GET_TIMEEv
__ZN21_SYSTEME_CPCDOS_OSX__8GET_TIMEEv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0470
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_046D:
call _fb_Timer
sub esp, 4
fistp dword ptr [esp]
pop eax
mov dword ptr [ebp-4], eax
.Lt_046E:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17GET_MILLISECONDESEv
__ZN21_SYSTEME_CPCDOS_OSX__17GET_MILLISECONDESEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0475
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0472:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+16]
mov dword ptr [ebp-4], ebx
.Lt_0473:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
__ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_047A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0477:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+17]
mov dword ptr [ebp-4], ebx
.Lt_0478:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11GET_MINUTESEv
__ZN21_SYSTEME_CPCDOS_OSX__11GET_MINUTESEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_047F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_047C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+18]
mov dword ptr [ebp-4], ebx
.Lt_047D:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__10GET_HEURESEv
__ZN21_SYSTEME_CPCDOS_OSX__10GET_HEURESEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0484
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0481:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+19]
mov dword ptr [ebp-4], ebx
.Lt_0482:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11GET_SEMAINEEv
__ZN21_SYSTEME_CPCDOS_OSX__11GET_SEMAINEEv:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_048A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0486:
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+776]
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx+20]
mov dword ptr [ebp-16], ecx
push offset _Lt_03D3
push 242
push 7
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_048C
jmp eax
.Lt_048C:
mov eax, dword ptr [ebp-16]
imul eax, 12
add ebx, eax
lea eax, [ebx]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0487:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-20]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__8GET_JOUREv
__ZN21_SYSTEME_CPCDOS_OSX__8GET_JOUREv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0490
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_048D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+21]
mov dword ptr [ebp-4], ebx
.Lt_048E:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__8GET_MOISEv
__ZN21_SYSTEME_CPCDOS_OSX__8GET_MOISEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0495
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0492:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+22]
mov dword ptr [ebp-4], ebx
.Lt_0493:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__9GET_ANNEEEv
__ZN21_SYSTEME_CPCDOS_OSX__9GET_ANNEEEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_049A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0497:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+23]
mov dword ptr [ebp-4], ebx
.Lt_0498:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__10GET_SIECLEEv
__ZN21_SYSTEME_CPCDOS_OSX__10GET_SIECLEEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_049F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_049C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+24]
mov dword ptr [ebp-4], ebx
.Lt_049D:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
__ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_04A9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_04A1:
cmp dword ptr [ebp+12], 0
jne .Lt_04A4
push 0
push -1
push 0
call _fb_Command
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_04A3
.Lt_04A4:
cmp dword ptr [ebp+12], 1
jne .Lt_04A5
push 0
push -1
call _fb_ExePath
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_04A3
.Lt_04A5:
cmp dword ptr [ebp+12], 2
jne .Lt_04A6
push 0
push -1
call _fb_CurDir
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_04A3
.Lt_04A6:
cmp dword ptr [ebp+12], 3
jne .Lt_04A7
push 0
push -1
call _fb_CurDir
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_04A3
.Lt_04A7:
push 0
push -1
push 0
call _fb_Command
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_04A3:
.Lt_04A2:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__15TEST_RESOLUTIONEiii
__ZN21_SYSTEME_CPCDOS_OSX__15TEST_RESOLUTIONEiii:
push ebp
mov ebp, esp
sub esp, 48
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-44], eax
push offset _Lt_04B2
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-48], eax
.Lt_04AB:
push dword ptr [ebp+20]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__15TEST_RESOLUTIONE8FBSTRINGi
add esp, 12
mov byte ptr [ebp-4], al
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04AC:
push dword ptr [ebp-48]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-44]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__15TEST_RESOLUTIONE8FBSTRINGi
__ZN21_SYSTEME_CPCDOS_OSX__15TEST_RESOLUTIONE8FBSTRINGi:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_04B2
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_04B4:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04B7
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04B9
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 4
push offset _Lt_04BB
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push 34
push offset _Lt_04BA
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04B8
.Lt_04B9:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 4
push offset _Lt_04BB
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push 31
push offset _Lt_04C1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04B8:
.Lt_04B7:
.Lt_04B6:
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__16LISTE_RESOLUTIONEi
add esp, 8
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_04C8
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04CA
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04CC
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 38
push offset _Lt_04CE
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push 11
push offset _Lt_04CD
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04CB
.Lt_04CC:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 33
push offset _Lt_04D5
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push 10
push offset _Lt_04D4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04CB:
.Lt_04CA:
.Lt_04C9:
mov byte ptr [ebp-4], 1
jmp .Lt_04C7
.Lt_04C8:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04DC
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04DE
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 48
push offset _Lt_04DF
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push 11
push offset _Lt_04CD
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04DD
.Lt_04DE:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 40
push offset _Lt_04E5
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push 10
push offset _Lt_04D4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04DD:
.Lt_04DC:
.Lt_04DB:
mov byte ptr [ebp-4], 0
.Lt_04C7:
.Lt_04B5:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16LISTE_RESOLUTIONEi
__ZN21_SYSTEME_CPCDOS_OSX__16LISTE_RESOLUTIONEi:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-32], eax
push offset _Lt_0503
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-36], eax
.Lt_04ED:
push dword ptr [ebp+12]
call _fb_GfxScreenList
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04F0
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04F2
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 6
push offset _Lt_04F4
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 46
push offset _Lt_04F3
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04F1
.Lt_04F2:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 6
push offset _Lt_04F4
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 40
push offset _Lt_04F8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04F1:
.Lt_04F0:
.Lt_04EF:
.Lt_04FC:
cmp dword ptr [ebp-16], 0
je .Lt_04FD
push 0
push -1
push 2
push offset _Lt_0396
push -1
push -1
mov eax, dword ptr [ebp-16]
and eax, 65535
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
mov eax, dword ptr [ebp-16]
shr eax, 16
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
call _fb_GfxScreenList
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_04FC
.Lt_04FD:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04EE:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-32]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14SET_RESOLUTIONEi
__ZN21_SYSTEME_CPCDOS_OSX__14SET_RESOLUTIONEi:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0534
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0505:
cmp dword ptr [_CPCDOS_INSTANCE+588], 0
jbe .Lt_0508
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
push 0
push -1
push 0
push dword ptr [_CPCDOS_INSTANCE+589480]
push dword ptr [_CPCDOS_INSTANCE+589476]
push 5
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 32
push offset _Lt_0509
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__17CCP_LIRE_VARIABLEER8FBSTRINGid
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 1
push offset _Lt_050B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
lea eax, [ebp-24]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-40]
push -1
push 1
push offset _Lt_050B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-24]
push eax
push 1
call _fb_StrInstr
add esp, 12
inc eax
push eax
lea eax, [ebp-24]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-44]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
push eax
push dword ptr [ebp-44]
push dword ptr [ebp-40]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14SET_RESOLUTIONEiii
add esp, 16
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_050D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_050F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 45
push offset _Lt_0510
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_050E
.Lt_050F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 37
push offset _Lt_0515
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
.Lt_050E:
.Lt_050D:
.Lt_050C:
mov byte ptr [ebp-4], 0
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0506
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0508:
.Lt_0507:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_051A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_051C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 25
push offset _Lt_051D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_051B
.Lt_051C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 24
push offset _Lt_0521
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.Lt_051B:
.Lt_051A:
.Lt_0519:
cmp byte ptr [_CPCDOS_INSTANCE+635], 0
jne .Lt_0526
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
.Lt_0527:
push 0
push 0
push 0
push 8
push dword ptr [ebp+12]
call _fb_GfxScreen
add esp, 20
test eax, eax
je .Lt_0528
lea eax, [.Lt_0528]
push eax
lea eax, [.Lt_0527]
push eax
push offset _Lt_03D3
push 395
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0528:
push 0
push dword ptr [_CPCDOS_INSTANCE+708]
push dword ptr [_CPCDOS_INSTANCE+680]
call _fb_Color
add esp, 12
mov byte ptr [ebp-4], 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_052A
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 5
push offset _Lt_052B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_052A:
.Lt_0529:
push -1
push 0
push 0
push 0
call _fb_SetMouse
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+52], ebx
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
jmp .Lt_0525
.Lt_0526:
mov byte ptr [_CPCDOS_INSTANCE+452383], 0
mov byte ptr [_CPCDOS_INSTANCE+452373], 1
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_052E
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+88]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 100
push offset _Lt_052F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_052D
.Lt_052E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 81
push offset _Lt_0531
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_052D:
.Lt_0525:
mov byte ptr [_CPCDOS_INSTANCE+452383], 0
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__23UPDATE_INFORMATIONECRANEv
add esp, 4
.Lt_0506:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14SET_RESOLUTIONEiii
__ZN21_SYSTEME_CPCDOS_OSX__14SET_RESOLUTIONEiii:
push ebp
mov ebp, esp
sub esp, 96
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0534
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0536:
cmp dword ptr [_CPCDOS_INSTANCE+588], 0
jbe .Lt_0539
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_053B
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_053D
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 45
push offset _Lt_0510
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_053C
.Lt_053D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 37
push offset _Lt_0515
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.Lt_053C:
.Lt_053B:
.Lt_053A:
mov byte ptr [ebp-4], 0
jmp .Lt_0537
.Lt_0539:
.Lt_0538:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_054D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_054F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 26
push offset _Lt_0550
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_054E
.Lt_054F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 7
push offset _Lt_0511
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 23
push offset _Lt_0558
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.Lt_054E:
.Lt_054D:
.Lt_054C:
cmp byte ptr [_CPCDOS_INSTANCE+635], 0
jne .Lt_0561
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
.Lt_0562:
push 0
push 0
push 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_GfxScreenRes
add esp, 24
test eax, eax
je .Lt_0563
lea eax, [.Lt_0563]
push eax
lea eax, [.Lt_0562]
push eax
push offset _Lt_03D3
push 470
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0563:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+64]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+60]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+48]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+44]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+32]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+28]
push ebx
call _fb_GfxScreenInfo
add esp, 28
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+48], ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
test eax, eax
je .Lt_0565
mov byte ptr [_CPCDOS_INSTANCE+452383], 1
mov byte ptr [_CPCDOS_INSTANCE+452373], 1
mov byte ptr [ebp-4], 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0567
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_0569
push -1
push -1
push 16
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
push eax
call _fb_HEXEx_p
add esp, 8
push eax
push 13
push offset _Lt_0568
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0567:
.Lt_0566:
push -1
push 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv
add esp, 4
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_057C]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
add esp, 4
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_057C]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_SetMouse
add esp, 16
jmp .Lt_0564
.Lt_0565:
mov byte ptr [ebp-4], 0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_056E
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0570
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset _Lt_0571
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_056F
.Lt_0570:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_0573
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_056F:
.Lt_056E:
.Lt_056D:
.Lt_0564:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
jmp .Lt_0560
.Lt_0561:
mov byte ptr [_CPCDOS_INSTANCE+452383], 0
mov byte ptr [_CPCDOS_INSTANCE+452373], 1
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0576
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 100
push offset _Lt_052F
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0575
.Lt_0576:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 81
push offset _Lt_0578
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0575:
mov byte ptr [ebp-4], 0
.Lt_0560:
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__23UPDATE_INFORMATIONECRANEv
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+48], eax
.Lt_0537:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__23UPDATE_INFORMATIONECRANEv
__ZN21_SYSTEME_CPCDOS_OSX__23UPDATE_INFORMATIONECRANEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0580
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_057D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+28], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+32], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+36], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+40], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+44], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], -1
push 0
push 29
push offset _Lt_0102
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+64]
push ebx
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+64]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+60]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+56]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+44]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+28]
push eax
call _fb_GfxScreenInfo
add esp, 28
push -1
push -1
call _fb_Width
add esp, 8
and eax, 65535
mov ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+36], ebx
push -1
push -1
call _fb_Width
add esp, 8
shr eax, 16
mov ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+40], ebx
mov byte ptr [ebp-4], 1
.Lt_057E:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANDRVEv
__ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANDRVEv:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0585
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0582:
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+64]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0583:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16GET_ECRANMEMOIREEv
__ZN21_SYSTEME_CPCDOS_OSX__16GET_ECRANMEMOIREEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_058A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0587:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.Lt_0588:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11GET_ECRANHZEv
__ZN21_SYSTEME_CPCDOS_OSX__11GET_ECRANHZEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_058F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_058C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_058D:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
__ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0594
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0591:
call _fb_GfxScreenPtr
mov dword ptr [ebp-4], eax
.Lt_0592:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__18GET_RESOLUTIONMODEEv
__ZN21_SYSTEME_CPCDOS_OSX__18GET_RESOLUTIONMODEEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0599
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0596:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-4], ebx
.Lt_0597:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11GET_CONS_XYEv
__ZN21_SYSTEME_CPCDOS_OSX__11GET_CONS_XYEv:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_05A0
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_059B:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_059C:
push dword ptr [ebp-44]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-40]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_XEv
__ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_XEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05A5
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.Lt_05A3:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_YEv
__ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_YEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05AA
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
.Lt_05A8:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14GET_RESOLUTIONEv
__ZN21_SYSTEME_CPCDOS_OSX__14GET_RESOLUTIONEv:
push ebp
mov ebp, esp
sub esp, 68
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-64], eax
push offset _Lt_05B3
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-68], eax
.Lt_05AC:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_05AD:
push dword ptr [ebp-68]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-64]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17GET_RESOLUTION_XYEv
__ZN21_SYSTEME_CPCDOS_OSX__17GET_RESOLUTION_XYEv:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_05BA
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_05B5:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_04AD
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_05B6:
push dword ptr [ebp-44]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-40]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
__ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05BF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
.Lt_05BD:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv
__ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05C4
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-4], ebx
.Lt_05C2:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
__ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05C9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05C6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-4], ebx
.Lt_05C7:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
__ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05C9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05CB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 24
jne .Lt_05CE
cmp byte ptr [ebp+12], 1
jne .Lt_05D0
mov dword ptr [ebp-4], 32
jmp .Lt_05CF
.Lt_05D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-4], ebx
.Lt_05CF:
jmp .Lt_05CD
.Lt_05CE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
.Lt_05CD:
.Lt_05CC:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__19GET_OCTETSPARPIXELSEv
__ZN21_SYSTEME_CPCDOS_OSX__19GET_OCTETSPARPIXELSEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05D6
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp-4], ebx
.Lt_05D4:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__7GET_FPSEdi
__ZN21_SYSTEME_CPCDOS_OSX__7GET_FPSEdi:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05DD
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05D8:
call _fb_Timer
fsub qword ptr [ebp+12]
fcomp qword ptr [_Lt_05DF]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05DB
call _fb_Timer
fstp qword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
jmp .Lt_05DA
.Lt_05DB:
mov dword ptr [ebp-4], -1
.Lt_05DA:
.Lt_05D9:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__16CREER_REPERTOIREE8FBSTRINGRS0_
__ZN21_SYSTEME_CPCDOS_OSX__16CREER_REPERTOIREE8FBSTRINGRS0_:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_061D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
.Lt_05E0:
mov dword ptr [ebp-8], 1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 64
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 12
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
.Lt_05E2:
push dword ptr [ebp-16]
push 0
push 1
push -1
push -1
push 12
lea eax, [ebp-60]
push eax
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_05E3
lea eax, [.Lt_05E3]
push eax
lea eax, [.Lt_05E2]
push eax
push offset _Lt_03D3
push 686
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05E3:
push 2
push offset _Lt_0341
push -1
push -1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05E5
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_05E5:
.Lt_05E4:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 1
push offset _Lt_001C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
push offset _Lt_0018
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 1
push offset _Lt_001C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
call _fb_LTrimEx
add esp, 8
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_LTRIM
add esp, 4
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTRIM
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05E8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push 2
push offset _Lt_05EA
push -1
push -1
lea eax, [ebp-28]
push eax
push 35
push offset _Lt_05E9
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05E7
.Lt_05E8:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push 2
push offset _Lt_05EA
push -1
push -1
lea eax, [ebp-28]
push eax
push 25
push offset _Lt_05EF
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05E7:
mov dword ptr [ebp-84], 1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-88], eax
jmp .Lt_05F5
.Lt_05F8:
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jle .Lt_05FA
cmp dword ptr [ebp-8], 1
jne .Lt_05FC
push 0
push -1
mov eax, dword ptr [ebp-12]
dec eax
push eax
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-92], eax
push offset _Lt_03D3
push 714
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-92]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_061F
jmp eax
.Lt_061F:
mov eax, dword ptr [ebp-92]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_05FB
.Lt_05FC:
push 0
push -1
push -1
mov eax, dword ptr [ebp-12]
dec eax
push eax
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 2
push offset _Lt_0342
push -1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-96], eax
push offset _Lt_03D3
push 716
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-96]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0620
jmp eax
.Lt_0620:
mov eax, dword ptr [ebp-96]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea ebx, [ebp-108]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-92], eax
push offset _Lt_03D3
push 716
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-92]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0621
jmp eax
.Lt_0621:
mov eax, dword ptr [ebp-92]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_05FB:
inc dword ptr [ebp-8]
push 0
push -1
push -1
mov eax, dword ptr [ebp-12]
inc eax
push eax
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_05F9
.Lt_05FA:
cmp dword ptr [ebp-8], 1
jne .Lt_0603
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-92], eax
push offset _Lt_03D3
push 728
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-92]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0622
jmp eax
.Lt_0622:
mov eax, dword ptr [ebp-92]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0602
.Lt_0603:
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 2
push offset _Lt_0342
push -1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-96], eax
push offset _Lt_03D3
push 730
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-96]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0623
jmp eax
.Lt_0623:
mov eax, dword ptr [ebp-96]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea ebx, [ebp-108]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-92], eax
push offset _Lt_03D3
push 730
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-92]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0624
jmp eax
.Lt_0624:
mov eax, dword ptr [ebp-92]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0602:
jmp .Lt_05F7
.Lt_05F9:
.Lt_05F6:
inc dword ptr [ebp-84]
.Lt_05F5:
mov eax, dword ptr [ebp-88]
cmp dword ptr [ebp-84], eax
jle .Lt_05F8
.Lt_05F7:
mov dword ptr [ebp-84], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-88], eax
jmp .Lt_060A
.Lt_060D:
push -1
mov eax, dword ptr [ebp-84]
mov dword ptr [ebp-92], eax
push offset _Lt_03D3
push 740
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-92]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0625
jmp eax
.Lt_0625:
mov eax, dword ptr [ebp-92]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
call _fb_StrLen
add esp, 8
cmp eax, 128
jle .Lt_0610
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0612
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 68
push offset _Lt_0613
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0611
.Lt_0612:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 59
push offset _Lt_0616
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0611:
mov dword ptr [ebp-4], -1
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05E1
.Lt_0610:
.Lt_060F:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp-84]
mov dword ptr [ebp-96], eax
push offset _Lt_03D3
push 750
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-96]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0626
jmp eax
.Lt_0626:
mov eax, dword ptr [ebp-96]
imul eax, 12
add eax, dword ptr [ebp-60]
lea ebx, [eax]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__23CREER_REPERTOIRE__FBCRTER8FBSTRINGS1_
add esp, 12
test al, al
jne .Lt_061B
mov dword ptr [ebp-4], -1
jmp .Lt_061A
.Lt_061B:
mov dword ptr [ebp-4], 1
.Lt_061A:
.Lt_060B:
inc dword ptr [ebp-84]
.Lt_060A:
mov eax, dword ptr [ebp-88]
cmp dword ptr [ebp-84], eax
jle .Lt_060D
.Lt_060C:
mov dword ptr [ebp-4], 1
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05E1:
push dword ptr [ebp-80]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-76]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__23CREER_REPERTOIRE__FBCRTER8FBSTRINGS1_
__ZN21_SYSTEME_CPCDOS_OSX__23CREER_REPERTOIRE__FBCRTER8FBSTRINGS1_:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_062C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0627:
push dword ptr [ebp+12]
call _fb_MkDir
add esp, 4
test eax, eax
jne .Lt_062A
mov byte ptr [ebp-4], 1
jmp .Lt_0629
.Lt_062A:
mov byte ptr [ebp-4], 0
.Lt_0629:
.Lt_0628:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17LISTER_REPERTOIREER8FBSTRINGS1_R16_FICHER_DOSSIER_
__ZN21_SYSTEME_CPCDOS_OSX__17LISTER_REPERTOIREER8FBSTRINGS1_R16_FICHER_DOSSIER_:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0661
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_062E:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+20]
lea ebx, [eax+16]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-8]
push eax
movsx eax, byte ptr [_CPCDOS_INSTANCE+618217]
movsx ebx, byte ptr [_CPCDOS_INSTANCE+618214]
or eax, ebx
movsx ebx, byte ptr [_CPCDOS_INSTANCE+618215]
or eax, ebx
movsx ebx, byte ptr [_CPCDOS_INSTANCE+618218]
or eax, ebx
push eax
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+20]
lea ebx, [eax+16]
push ebx
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call _fb_StrConcat
add esp, 20
push eax
call _fb_Dir
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0632
mov eax, dword ptr [ebp+20]
mov byte ptr [eax], 0
jmp .Lt_0631
.Lt_0632:
mov eax, dword ptr [ebp+20]
mov byte ptr [eax], 1
.Lt_0631:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
.Lt_0633:
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
je .Lt_0634
push 2
push offset _Lt_00E2
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 3
push offset _Lt_0635
push -1
lea ebx, [ebp-20]
push ebx
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0637
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 128
jl .Lt_0639
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_063B
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 45
push offset _Lt_063C
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_063A
.Lt_063B:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+88]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 45
push offset _Lt_063E
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
.Lt_063A:
jmp .Lt_0634
.Lt_0639:
.Lt_0638:
mov eax, dword ptr [ebp+20]
inc dword ptr [eax+4]
push 0
push -1
lea eax, [ebp-20]
push eax
push -1
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-44], ebx
push offset _Lt_03D3
push 819
push 128
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0663
jmp eax
.Lt_0663:
mov eax, dword ptr [ebp-44]
imul eax, 12
mov ebx, dword ptr [ebp+20]
add ebx, eax
lea eax, [ebx+28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
and eax, 16
test eax, eax
je .Lt_0642
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-52], ebx
push offset _Lt_03D3
push 824
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0664
jmp eax
.Lt_0664:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [ebp+20]
add ebx, eax
mov byte ptr [ebx+1576], 1
mov ebx, dword ptr [ebp+20]
inc dword ptr [ebx+8]
jmp .Lt_0641
.Lt_0642:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-52], eax
push offset _Lt_03D3
push 828
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0665
jmp eax
.Lt_0665:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [ebp+20]
add ebx, eax
mov byte ptr [ebx+1576], 0
mov ebx, dword ptr [ebp+20]
inc dword ptr [ebx+12]
push 0
push -1
push -1
lea ebx, [ebp-20]
push ebx
push -1
push 2
push offset _Lt_0342
push -1
mov ebx, dword ptr [ebp+20]
lea eax, [ebx+16]
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit
add esp, 20
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+20]
lea ebx, [eax+16]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0648
push 0
push -1
lea eax, [ebp-20]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0648:
.Lt_0647:
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__14TAILLE_FICHIERE8FBSTRING
add esp, 8
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-92], ecx
push offset _Lt_03D3
push 839
push 128
push dword ptr [ebp-92]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0666
jmp eax
.Lt_0666:
mov eax, dword ptr [ebp-92]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1588], ebx
lea ebx, [ebp-104]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-64]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_0641:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-48], ecx
push offset _Lt_03D3
push 843
push 128
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0667
jmp eax
.Lt_0667:
mov eax, dword ptr [ebp-48]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1584], 0
mov ecx, dword ptr [ebp-8]
and ecx, 33
test ecx, ecx
je .Lt_064D
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-52], eax
push offset _Lt_03D3
push 847
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0668
jmp eax
.Lt_0668:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov byte ptr [ecx+1577], 1
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-56], eax
push offset _Lt_03D3
push 848
push 128
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0669
jmp eax
.Lt_0669:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov eax, dword ptr [ecx+1584]
inc eax
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-56], ebx
push offset _Lt_03D3
push 848
push 128
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_066A
jmp eax
.Lt_066A:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1584], ebx
.Lt_064D:
.Lt_064C:
mov ebx, dword ptr [ebp-8]
and ebx, 1
test ebx, ebx
je .Lt_0651
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-52], ecx
push offset _Lt_03D3
push 853
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_066B
jmp eax
.Lt_066B:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov byte ptr [ecx+1580], 1
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-56], eax
push offset _Lt_03D3
push 854
push 128
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_066C
jmp eax
.Lt_066C:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov eax, dword ptr [ecx+1584]
inc eax
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-56], ebx
push offset _Lt_03D3
push 854
push 128
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_066D
jmp eax
.Lt_066D:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1584], ebx
.Lt_0651:
.Lt_0650:
mov ebx, dword ptr [ebp-8]
and ebx, 2
test ebx, ebx
je .Lt_0655
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-52], ecx
push offset _Lt_03D3
push 859
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_066E
jmp eax
.Lt_066E:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov byte ptr [ecx+1578], 1
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-56], eax
push offset _Lt_03D3
push 860
push 128
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_066F
jmp eax
.Lt_066F:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov eax, dword ptr [ecx+1584]
inc eax
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-56], ebx
push offset _Lt_03D3
push 860
push 128
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0670
jmp eax
.Lt_0670:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1584], ebx
.Lt_0655:
.Lt_0654:
mov ebx, dword ptr [ebp-8]
and ebx, 4
test ebx, ebx
je .Lt_0659
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-52], ecx
push offset _Lt_03D3
push 865
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0671
jmp eax
.Lt_0671:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov byte ptr [ecx+1579], 1
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-56], eax
push offset _Lt_03D3
push 866
push 128
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0672
jmp eax
.Lt_0672:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov eax, dword ptr [ecx+1584]
inc eax
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-56], ebx
push offset _Lt_03D3
push 866
push 128
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0673
jmp eax
.Lt_0673:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1584], ebx
.Lt_0659:
.Lt_0658:
mov ebx, dword ptr [ebp-8]
and ebx, 32
test ebx, ebx
je .Lt_065D
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
mov dword ptr [ebp-52], ecx
push offset _Lt_03D3
push 871
push 128
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0674
jmp eax
.Lt_0674:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov byte ptr [ecx+1581], 1
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-56], eax
push offset _Lt_03D3
push 872
push 128
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0675
jmp eax
.Lt_0675:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov eax, dword ptr [ecx+1584]
inc eax
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-56], ebx
push offset _Lt_03D3
push 872
push 128
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0676
jmp eax
.Lt_0676:
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ecx, dword ptr [ebp+20]
add ecx, eax
mov dword ptr [ecx+1584], ebx
.Lt_065D:
.Lt_065C:
.Lt_0637:
.Lt_0636:
push 0
push -1
lea ebx, [ebp-8]
push ebx
call _fb_DirNext
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0633
.Lt_0634:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov eax, dword ptr [ebp+20]
mov bl, byte ptr [eax]
mov byte ptr [ebp-4], bl
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_062F:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-36]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
__ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb:
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_06B5
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0679:
cmp byte ptr [ebp+20], 1
jne .Lt_067C
.Lt_067C:
.Lt_067B:
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
cmp eax, 250
jle .Lt_067E
push 0
push -1
push 250
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_067E:
push 1
push offset _Lt_067F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0681
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_067F
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0681:
push 1
push offset _Lt_0685
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0687
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_0685
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0687:
push 1
push offset _Lt_068B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_068D
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_068B
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_068D:
push 1
push offset _Lt_0691
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0693
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_0691
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0693:
push 1
push offset _Lt_0697
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0699
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_0697
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0699:
push 1
push offset _Lt_069D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_069F
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_069D
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_069F:
cmp byte ptr [ebp+16], 1
jne .Lt_06A4
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06A6
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_0342
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_0341
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06A6:
jmp .Lt_06A3
.Lt_06A4:
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06AB
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06AB:
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06B0
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 2
push offset _Lt_031F
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06B0:
.Lt_06A3:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_067A:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGb
__ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGb:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_06B5
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_06B7:
push 1
push offset _Lt_067F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06BA
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06BA:
push 1
push offset _Lt_0685
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06BC
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06BC:
push 1
push offset _Lt_068B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06BE
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06BE:
push 1
push offset _Lt_0691
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06C0
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06C0:
push 1
push offset _Lt_0697
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06C2
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06C2:
push 1
push offset _Lt_069D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06C4
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06C4:
cmp byte ptr [ebp+16], 1
jne .Lt_06C6
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06C8
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06C8:
jmp .Lt_06C5
.Lt_06C6:
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06CA
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06CA:
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_06CC
mov byte ptr [ebp-4], 0
jmp .Lt_06B8
.Lt_06CC:
.Lt_06C5:
mov byte ptr [ebp-4], 1
.Lt_06B8:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13GETHANDLETYPEEi
__ZN21_SYSTEME_CPCDOS_OSX__13GETHANDLETYPEEi:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0728
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_06CF:
mov dword ptr [ebp-24], 1
.Lt_06D4:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 963
push 65
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072A
jmp eax
.Lt_072A:
mov eax, dword ptr [ebp-28]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+4876], eax
jne .Lt_06D7
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 965
push 65
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072B
jmp eax
.Lt_072B:
mov eax, dword ptr [ebp-32]
imul eax, 2244
add ebx, eax
lea eax, [ebx+4860]
push eax
push 8
push offset _Lt_06D8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_06D7:
.Lt_06D6:
.Lt_06D2:
inc dword ptr [ebp-24]
.Lt_06D1:
cmp dword ptr [ebp-24], 64
jle .Lt_06D4
.Lt_06D3:
mov dword ptr [ebp-24], 1
.Lt_06E1:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 973
push 129
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072C
jmp eax
.Lt_072C:
mov eax, dword ptr [ebp-28]
imul eax, 396
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+152980], eax
jne .Lt_06E4
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 975
push 129
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072D
jmp eax
.Lt_072D:
mov eax, dword ptr [ebp-32]
imul eax, 396
add ebx, eax
lea eax, [ebx+152964]
push eax
push 8
push offset _Lt_06E5
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_06E4:
.Lt_06E3:
.Lt_06DF:
inc dword ptr [ebp-24]
.Lt_06DE:
cmp dword ptr [ebp-24], 128
jle .Lt_06E1
.Lt_06E0:
mov dword ptr [ebp-24], 1
.Lt_06ED:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 983
push 129
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072E
jmp eax
.Lt_072E:
mov eax, dword ptr [ebp-28]
imul eax, 360
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+204460], eax
jne .Lt_06F0
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 985
push 129
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072F
jmp eax
.Lt_072F:
mov eax, dword ptr [ebp-32]
imul eax, 360
add ebx, eax
lea eax, [ebx+204444]
push eax
push 12
push offset _Lt_06F1
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_06F0:
.Lt_06EF:
.Lt_06EB:
inc dword ptr [ebp-24]
.Lt_06EA:
cmp dword ptr [ebp-24], 128
jle .Lt_06ED
.Lt_06EC:
mov dword ptr [ebp-24], 1
.Lt_06F9:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 993
push 129
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0730
jmp eax
.Lt_0730:
mov eax, dword ptr [ebp-28]
imul eax, 324
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+251260], eax
jne .Lt_06FC
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 995
push 129
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0731
jmp eax
.Lt_0731:
mov eax, dword ptr [ebp-32]
imul eax, 324
add ebx, eax
lea eax, [ebx+251244]
push eax
push 10
push offset _Lt_06FD
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_06FC:
.Lt_06FB:
.Lt_06F7:
inc dword ptr [ebp-24]
.Lt_06F6:
cmp dword ptr [ebp-24], 128
jle .Lt_06F9
.Lt_06F8:
mov dword ptr [ebp-24], 1
.Lt_0705:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 1003
push 129
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0732
jmp eax
.Lt_0732:
mov eax, dword ptr [ebp-28]
imul eax, 380
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+293380], eax
jne .Lt_0708
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 1005
push 129
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0733
jmp eax
.Lt_0733:
mov eax, dword ptr [ebp-32]
imul eax, 380
add ebx, eax
lea eax, [ebx+293364]
push eax
push 9
push offset _Lt_0709
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_0708:
.Lt_0707:
.Lt_0703:
inc dword ptr [ebp-24]
.Lt_0702:
cmp dword ptr [ebp-24], 128
jle .Lt_0705
.Lt_0704:
mov dword ptr [ebp-24], 1
.Lt_0711:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 1013
push 129
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0734
jmp eax
.Lt_0734:
mov eax, dword ptr [ebp-28]
imul eax, 420
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+390620], eax
jne .Lt_0714
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 1015
push 129
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0735
jmp eax
.Lt_0735:
mov eax, dword ptr [ebp-32]
imul eax, 420
add ebx, eax
lea eax, [ebx+390604]
push eax
push 10
push offset _Lt_0715
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_0714:
.Lt_0713:
.Lt_070F:
inc dword ptr [ebp-24]
.Lt_070E:
cmp dword ptr [ebp-24], 128
jle .Lt_0711
.Lt_0710:
mov dword ptr [ebp-24], 1
.Lt_071D:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
push offset _Lt_03D3
push 1023
push 129
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0736
jmp eax
.Lt_0736:
mov eax, dword ptr [ebp-28]
imul eax, 368
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+342780], eax
jne .Lt_0720
push 0
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_06DA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-32], ebx
push offset _Lt_03D3
push 1025
push 129
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0737
jmp eax
.Lt_0737:
mov eax, dword ptr [ebp-32]
imul eax, 368
add ebx, eax
lea eax, [ebx+342764]
push eax
push 13
push offset _Lt_0721
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06D0
.Lt_0720:
.Lt_071F:
.Lt_071B:
inc dword ptr [ebp-24]
.Lt_071A:
cmp dword ptr [ebp-24], 128
jle .Lt_071D
.Lt_071C:
push 0
push 5
push offset _Lt_0726
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_06D0:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__System:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_03D3
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0739
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0003:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19_DEBUG_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0050:
push offset _Lt_0052
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 72
mov ebx, dword ptr [ebp+8]
add ebx, 72
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 76
mov ebx, dword ptr [ebp+8]
add ebx, 76
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 80
mov ebx, dword ptr [ebp+8]
add ebx, 80
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 84
mov ebx, dword ptr [ebp+8]
add ebx, 84
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 88
mov ebx, dword ptr [ebp+8]
add ebx, 88
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 92
mov ebx, dword ptr [ebp+8]
add ebx, 92
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 96
mov ebx, dword ptr [ebp+8]
add ebx, 96
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 100
mov ebx, dword ptr [ebp+8]
add ebx, 100
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 104
mov ebx, dword ptr [ebp+8]
add ebx, 104
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 108
mov ebx, dword ptr [ebp+8]
add ebx, 108
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 112
mov ebx, dword ptr [ebp+8]
add ebx, 112
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 116
mov ebx, dword ptr [ebp+8]
add ebx, 116
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 120
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 120
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 132
mov ebx, dword ptr [ebp+8]
add ebx, 132
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
.Lt_0051:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN7_CPUID_C1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 2
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 3
mov eax, dword ptr [ebp+8]
add eax, 60
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 61
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 62
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 63
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 65
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 66
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 67
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 68
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 69
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 70
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 71
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 72
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 73
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 74
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 75
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 76
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 77
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 78
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 79
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 80
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 81
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 82
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 83
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 84
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 85
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 86
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 87
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 88
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 89
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 90
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 91
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 92
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 93
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 94
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 95
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 96
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 97
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 98
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 99
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 100
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 101
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 102
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 103
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 104
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 105
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 106
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 107
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 108
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 109
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 110
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 111
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 112
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 113
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 114
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 115
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 116
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 117
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 118
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 119
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 120
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 124
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 128
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 132
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 144
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0059:
.Lt_005A:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN7_CPUID_aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_005E:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 61
mov ebx, dword ptr [ebp+8]
add ebx, 61
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 62
mov ebx, dword ptr [ebp+8]
add ebx, 62
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 63
mov ebx, dword ptr [ebp+8]
add ebx, 63
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 65
mov ebx, dword ptr [ebp+8]
add ebx, 65
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 66
mov ebx, dword ptr [ebp+8]
add ebx, 66
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 67
mov ebx, dword ptr [ebp+8]
add ebx, 67
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 69
mov ebx, dword ptr [ebp+8]
add ebx, 69
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 70
mov ebx, dword ptr [ebp+8]
add ebx, 70
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 71
mov ebx, dword ptr [ebp+8]
add ebx, 71
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 72
mov ebx, dword ptr [ebp+8]
add ebx, 72
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 73
mov ebx, dword ptr [ebp+8]
add ebx, 73
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 74
mov ebx, dword ptr [ebp+8]
add ebx, 74
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 75
mov ebx, dword ptr [ebp+8]
add ebx, 75
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 76
mov ebx, dword ptr [ebp+8]
add ebx, 76
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 77
mov ebx, dword ptr [ebp+8]
add ebx, 77
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 78
mov ebx, dword ptr [ebp+8]
add ebx, 78
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 79
mov ebx, dword ptr [ebp+8]
add ebx, 79
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 80
mov ebx, dword ptr [ebp+8]
add ebx, 80
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 81
mov ebx, dword ptr [ebp+8]
add ebx, 81
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 82
mov ebx, dword ptr [ebp+8]
add ebx, 82
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 83
mov ebx, dword ptr [ebp+8]
add ebx, 83
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 84
mov ebx, dword ptr [ebp+8]
add ebx, 84
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 85
mov ebx, dword ptr [ebp+8]
add ebx, 85
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 86
mov ebx, dword ptr [ebp+8]
add ebx, 86
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 87
mov ebx, dword ptr [ebp+8]
add ebx, 87
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 88
mov ebx, dword ptr [ebp+8]
add ebx, 88
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 89
mov ebx, dword ptr [ebp+8]
add ebx, 89
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 90
mov ebx, dword ptr [ebp+8]
add ebx, 90
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 91
mov ebx, dword ptr [ebp+8]
add ebx, 91
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 92
mov ebx, dword ptr [ebp+8]
add ebx, 92
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 93
mov ebx, dword ptr [ebp+8]
add ebx, 93
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 94
mov ebx, dword ptr [ebp+8]
add ebx, 94
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 95
mov ebx, dword ptr [ebp+8]
add ebx, 95
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 96
mov ebx, dword ptr [ebp+8]
add ebx, 96
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 97
mov ebx, dword ptr [ebp+8]
add ebx, 97
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 98
mov ebx, dword ptr [ebp+8]
add ebx, 98
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 99
mov ebx, dword ptr [ebp+8]
add ebx, 99
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 100
mov ebx, dword ptr [ebp+8]
add ebx, 100
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 101
mov ebx, dword ptr [ebp+8]
add ebx, 101
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 102
mov ebx, dword ptr [ebp+8]
add ebx, 102
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 103
mov ebx, dword ptr [ebp+8]
add ebx, 103
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 104
mov ebx, dword ptr [ebp+8]
add ebx, 104
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 105
mov ebx, dword ptr [ebp+8]
add ebx, 105
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 106
mov ebx, dword ptr [ebp+8]
add ebx, 106
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 107
mov ebx, dword ptr [ebp+8]
add ebx, 107
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 108
mov ebx, dword ptr [ebp+8]
add ebx, 108
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 109
mov ebx, dword ptr [ebp+8]
add ebx, 109
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 110
mov ebx, dword ptr [ebp+8]
add ebx, 110
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 111
mov ebx, dword ptr [ebp+8]
add ebx, 111
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 112
mov ebx, dword ptr [ebp+8]
add ebx, 112
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 113
mov ebx, dword ptr [ebp+8]
add ebx, 113
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 114
mov ebx, dword ptr [ebp+8]
add ebx, 114
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 115
mov ebx, dword ptr [ebp+8]
add ebx, 115
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 116
mov ebx, dword ptr [ebp+8]
add ebx, 116
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 117
mov ebx, dword ptr [ebp+8]
add ebx, 117
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 118
mov ebx, dword ptr [ebp+8]
add ebx, 118
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 119
mov ebx, dword ptr [ebp+8]
add ebx, 119
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 120
mov ebx, dword ptr [ebp+8]
add ebx, 120
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 124
mov ebx, dword ptr [ebp+8]
add ebx, 124
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 128
mov ebx, dword ptr [ebp+8]
add ebx, 128
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 132
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 132
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 144
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 144
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
.Lt_005F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN7_CPUID_D1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0066:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0067:
mov eax, dword ptr [ebp+8]
add eax, 144
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 132
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15_INTERFACE_APM_C1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
inc eax
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 29
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 30
mov word ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 33
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 34
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 35
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 37
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 38
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 39
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 41
mov byte ptr [eax], 0
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_006A:
.Lt_006B:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15_INTERFACE_APM_aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006E:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
inc ecx
mov ebx, dword ptr [ebp+8]
inc ebx
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 4
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 4
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 16
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 16
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 29
mov ebx, dword ptr [ebp+8]
add ebx, 29
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 30
mov ebx, dword ptr [ebp+8]
add ebx, 30
mov cx, word ptr [eax]
mov word ptr [ebx], cx
mov ecx, dword ptr [ebp+12]
add ecx, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 33
mov ebx, dword ptr [ebp+8]
add ebx, 33
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 34
mov ebx, dword ptr [ebp+8]
add ebx, 34
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 35
mov ebx, dword ptr [ebp+8]
add ebx, 35
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 37
mov ebx, dword ptr [ebp+8]
add ebx, 37
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 38
mov ebx, dword ptr [ebp+8]
add ebx, 38
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 39
mov ebx, dword ptr [ebp+8]
add ebx, 39
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 41
mov ebx, dword ptr [ebp+8]
add ebx, 41
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
.Lt_006F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15_INTERFACE_APM_D1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0076:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0077:
mov eax, dword ptr [ebp+8]
add eax, 16
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15_MEMOIRE_BITMAPC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 513
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2052
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 513
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 4104
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 513
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 6156
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 128
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 6669
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 128
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 7182
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 128
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 7695
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 128
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 8208
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 513
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 10260
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 513
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 12312
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 513
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 14364
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 513
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 16416
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 513
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 18468
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 513
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 20520
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 1539
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 26676
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 513
rep stosd
pop edi
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_007D:
.Lt_007E:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15_MEMOIRE_BITMAPaSERKS_:
push ebp
mov ebp, esp
sub esp, 188
push ebx
.Lt_0081:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-184], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-188], eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_0084:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-8], 4
add dword ptr [ebp-12], 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 513
jne .Lt_0084
mov ecx, dword ptr [ebp+8]
add ecx, 2052
lea ebx, [ecx]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2052
lea ecx, [ebx]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-16], 0
.Lt_0088:
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-20], 4
add dword ptr [ebp-24], 4
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 513
jne .Lt_0088
mov eax, dword ptr [ebp+8]
add eax, 4104
lea ebx, [eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 4104
lea eax, [ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_008C:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-32], 4
add dword ptr [ebp-36], 4
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 513
jne .Lt_008C
mov ecx, dword ptr [ebp+8]
add ecx, 6156
lea ebx, [ecx]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 6156
lea ecx, [ebx]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-40], 0
.Lt_0090:
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [ebp-44]
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
inc dword ptr [ebp-44]
inc dword ptr [ebp-48]
inc dword ptr [ebp-40]
cmp dword ptr [ebp-40], 513
jne .Lt_0090
mov eax, dword ptr [ebp+8]
add eax, 6669
lea ebx, [eax]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 6669
lea eax, [ebx]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-52], 0
.Lt_0094:
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
inc dword ptr [ebp-56]
inc dword ptr [ebp-60]
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 513
jne .Lt_0094
mov ecx, dword ptr [ebp+8]
add ecx, 7182
lea ebx, [ecx]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 7182
lea ecx, [ebx]
mov dword ptr [ebp-72], ecx
mov dword ptr [ebp-64], 0
.Lt_0098:
mov ecx, dword ptr [ebp-72]
mov ebx, dword ptr [ebp-68]
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
inc dword ptr [ebp-68]
inc dword ptr [ebp-72]
inc dword ptr [ebp-64]
cmp dword ptr [ebp-64], 513
jne .Lt_0098
mov eax, dword ptr [ebp+8]
add eax, 7695
lea ebx, [eax]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 7695
lea eax, [ebx]
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-76], 0
.Lt_009C:
mov eax, dword ptr [ebp-84]
mov ebx, dword ptr [ebp-80]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
inc dword ptr [ebp-80]
inc dword ptr [ebp-84]
inc dword ptr [ebp-76]
cmp dword ptr [ebp-76], 513
jne .Lt_009C
mov ecx, dword ptr [ebp+8]
add ecx, 8208
lea ebx, [ecx]
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 8208
lea ecx, [ebx]
mov dword ptr [ebp-96], ecx
mov dword ptr [ebp-88], 0
.Lt_00A0:
mov ecx, dword ptr [ebp-96]
mov ebx, dword ptr [ebp-92]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-92], 4
add dword ptr [ebp-96], 4
inc dword ptr [ebp-88]
cmp dword ptr [ebp-88], 513
jne .Lt_00A0
mov eax, dword ptr [ebp+8]
add eax, 10260
lea ebx, [eax]
mov dword ptr [ebp-104], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 10260
lea eax, [ebx]
mov dword ptr [ebp-108], eax
mov dword ptr [ebp-100], 0
.Lt_00A4:
mov eax, dword ptr [ebp-108]
mov ebx, dword ptr [ebp-104]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-104], 4
add dword ptr [ebp-108], 4
inc dword ptr [ebp-100]
cmp dword ptr [ebp-100], 513
jne .Lt_00A4
mov ecx, dword ptr [ebp+8]
add ecx, 12312
lea ebx, [ecx]
mov dword ptr [ebp-116], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 12312
lea ecx, [ebx]
mov dword ptr [ebp-120], ecx
mov dword ptr [ebp-112], 0
.Lt_00A8:
mov ecx, dword ptr [ebp-120]
mov ebx, dword ptr [ebp-116]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-116], 4
add dword ptr [ebp-120], 4
inc dword ptr [ebp-112]
cmp dword ptr [ebp-112], 513
jne .Lt_00A8
mov eax, dword ptr [ebp+8]
add eax, 14364
lea ebx, [eax]
mov dword ptr [ebp-128], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 14364
lea eax, [ebx]
mov dword ptr [ebp-132], eax
mov dword ptr [ebp-124], 0
.Lt_00AC:
mov eax, dword ptr [ebp-132]
mov ebx, dword ptr [ebp-128]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-128], 4
add dword ptr [ebp-132], 4
inc dword ptr [ebp-124]
cmp dword ptr [ebp-124], 513
jne .Lt_00AC
mov ecx, dword ptr [ebp+8]
add ecx, 16416
lea ebx, [ecx]
mov dword ptr [ebp-140], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 16416
lea ecx, [ebx]
mov dword ptr [ebp-144], ecx
mov dword ptr [ebp-136], 0
.Lt_00B0:
mov ecx, dword ptr [ebp-144]
mov ebx, dword ptr [ebp-140]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-140], 4
add dword ptr [ebp-144], 4
inc dword ptr [ebp-136]
cmp dword ptr [ebp-136], 513
jne .Lt_00B0
mov eax, dword ptr [ebp+8]
add eax, 18468
lea ebx, [eax]
mov dword ptr [ebp-152], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 18468
lea eax, [ebx]
mov dword ptr [ebp-156], eax
mov dword ptr [ebp-148], 0
.Lt_00B4:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [ebp-152]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-152], 4
add dword ptr [ebp-156], 4
inc dword ptr [ebp-148]
cmp dword ptr [ebp-148], 513
jne .Lt_00B4
mov ecx, dword ptr [ebp+8]
add ecx, 20520
lea ebx, [ecx]
mov dword ptr [ebp-164], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 20520
lea ecx, [ebx]
mov dword ptr [ebp-168], ecx
mov dword ptr [ebp-160], 0
.Lt_00B8:
push 0
push -1
push dword ptr [ebp-168]
push -1
push dword ptr [ebp-164]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-164], 12
add dword ptr [ebp-168], 12
inc dword ptr [ebp-160]
cmp dword ptr [ebp-160], 513
jne .Lt_00B8
mov eax, dword ptr [ebp+8]
add eax, 26676
lea ecx, [eax]
mov dword ptr [ebp-176], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 26676
lea eax, [ecx]
mov dword ptr [ebp-180], eax
mov dword ptr [ebp-172], 0
.Lt_00BC:
mov eax, dword ptr [ebp-180]
mov ecx, dword ptr [ebp-176]
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
add dword ptr [ebp-176], 4
add dword ptr [ebp-180], 4
inc dword ptr [ebp-172]
cmp dword ptr [ebp-172], 513
jne .Lt_00BC
.Lt_0082:
push dword ptr [ebp-188]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-184]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15_MEMOIRE_BITMAPD1Ev:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_00C5:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_00C6:
lea eax, [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, 20520
lea ecx, [ebx]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 20520
lea ebx, [ecx]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], 6156
mov dword ptr [ebp-20], 12
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 513
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 512
push eax
call _fb_ArrayDestructStr
add esp, 4
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-36]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11_COM_PORT__C1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
inc eax
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 76
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00CA:
.Lt_00CB:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11_COM_PORT__aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00CE:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
inc ecx
mov ebx, dword ptr [ebp+8]
inc ebx
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, 2
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 16
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 16
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 28
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 28
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 40
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 40
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 52
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 52
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 64
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 64
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 76
mov ebx, dword ptr [ebp+8]
add ebx, 76
push dword ptr [eax]
push dword ptr [eax+4]
pop dword ptr [ebx+4]
pop dword ptr [ebx]
.Lt_00CF:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11_COM_PORT__D1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00D6:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00D7:
mov eax, dword ptr [ebp+8]
add eax, 64
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 52
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 40
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 28
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 16
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN14_ATTRIBUTS_IO_C1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
inc eax
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 3
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 5
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 6
mov byte ptr [eax], 0
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00DA:
.Lt_00DB:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN25_FICHIER_DOSSIER_ATTRIBS_C1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
inc eax
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 3
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 5
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00DE:
.Lt_00DF:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16_FICHER_DOSSIER_aSERKS_:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_00EA:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 16
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 16
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 28
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 28
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_00ED:
push 0
push -1
push dword ptr [ebp-12]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-8], 12
add dword ptr [ebp-12], 12
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_00ED
mov eax, dword ptr [ebp+8]
add eax, 1576
lea ebx, [eax]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1576
lea eax, [ebx]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-16], 0
.Lt_00F1:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebx]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
add dword ptr [ebp-20], 16
add dword ptr [ebp-24], 16
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 129
jne .Lt_00F1
.Lt_00EB:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN21_SYSTEME_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0115:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 17
mov ebx, dword ptr [ebp+8]
add ebx, 17
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 18
mov ebx, dword ptr [ebp+8]
add ebx, 18
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 19
mov ebx, dword ptr [ebp+8]
add ebx, 19
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 21
mov ebx, dword ptr [ebp+8]
add ebx, 21
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 22
mov ebx, dword ptr [ebp+8]
add ebx, 22
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 23
mov ebx, dword ptr [ebp+8]
add ebx, 23
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 64
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 64
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 76
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 76
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 88
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 88
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 100
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 100
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 112
mov ebx, dword ptr [ebp+8]
add ebx, 112
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 116
mov ebx, dword ptr [ebp+8]
add ebx, 116
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 120
mov ebx, dword ptr [ebp+8]
add ebx, 120
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 124
mov ebx, dword ptr [ebp+8]
add ebx, 124
push dword ptr [ecx]
push dword ptr [ecx+4]
pop dword ptr [ebx+4]
pop dword ptr [ebx]
mov ecx, dword ptr [ebp+12]
add ecx, 132
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 132
lea ecx, [ebx]
push ecx
call __ZN15_MEMOIRE_BITMAPaSERKS_
add esp, 8
mov ecx, dword ptr [ebp+8]
add ecx, 28860
mov ebx, dword ptr [ebp+12]
add ebx, 28860
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov ax, word ptr [ebx+4]
mov word ptr [ecx+4], ax
mov al, byte ptr [ebx+6]
mov byte ptr [ecx+6], al
mov ebx, dword ptr [ebp+12]
add ebx, 28868
lea ecx, [ebx]
push ecx
mov ecx, dword ptr [ebp+8]
add ecx, 28868
lea ebx, [ecx]
push ebx
call __ZN15_INTERFACE_APM_aSERKS_
add esp, 8
mov ebx, dword ptr [ebp+12]
add ebx, 28912
lea ecx, [ebx]
push ecx
mov ecx, dword ptr [ebp+8]
add ecx, 28912
lea ebx, [ecx]
push ebx
call __ZN7_CPUID_aSERKS_
add esp, 8
mov ebx, dword ptr [ebp+12]
add ebx, 29068
mov ecx, dword ptr [ebp+8]
add ecx, 29068
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+8]
add eax, 29072
lea ecx, [eax]
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 29072
lea eax, [ecx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_0118:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call __ZN11_COM_PORT__aSERKS_
add esp, 8
add dword ptr [ebp-8], 84
add dword ptr [ebp-12], 84
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 9
jne .Lt_0118
.Lt_0116:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN27_STRUCT_THREAD_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0128:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 72
mov ebx, dword ptr [ebp+8]
add ebx, 72
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 73
mov ebx, dword ptr [ebp+8]
add ebx, 73
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 74
mov ebx, dword ptr [ebp+8]
add ebx, 74
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 75
mov ebx, dword ptr [ebp+8]
add ebx, 75
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 76
mov ebx, dword ptr [ebp+8]
add ebx, 76
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 77
mov ebx, dword ptr [ebp+8]
add ebx, 77
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 80
mov ebx, dword ptr [ebp+8]
add ebx, 80
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 84
mov ebx, dword ptr [ebp+8]
add ebx, 84
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 88
mov ebx, dword ptr [ebp+8]
add ebx, 88
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 92
mov ebx, dword ptr [ebp+8]
add ebx, 92
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_0129:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN30_STRUCT_PROCESSUS_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0138:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 37
mov ebx, dword ptr [ebp+8]
add ebx, 37
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 38
mov ebx, dword ptr [ebp+8]
add ebx, 38
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 39
mov ebx, dword ptr [ebp+8]
add ebx, 39
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_0139:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20_RESEAU_CPCDOS_OSX__C1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 60
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 25
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 164
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 25
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 25
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 364
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 64
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 620
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 64
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 876
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 192
rep stosd
pop edi
pop eax
push offset _Lt_0146
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0144:
.Lt_0145:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20_RESEAU_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_0149:
push offset _Lt_0146
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
add eax, 64
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 64
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_014C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-8], 4
add dword ptr [ebp-12], 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 25
jne .Lt_014C
mov ecx, dword ptr [ebp+8]
add ecx, 164
lea ebx, [ecx]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 164
lea ecx, [ebx]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-16], 0
.Lt_0150:
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-20], 4
add dword ptr [ebp-24], 4
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 25
jne .Lt_0150
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 264
lea eax, [ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_0154:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-32], 4
add dword ptr [ebp-36], 4
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 25
jne .Lt_0154
mov ecx, dword ptr [ebp+8]
add ecx, 364
lea ebx, [ecx]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 364
lea ecx, [ebx]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-40], 0
.Lt_0158:
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [ebp-44]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-44], 4
add dword ptr [ebp-48], 4
inc dword ptr [ebp-40]
cmp dword ptr [ebp-40], 64
jne .Lt_0158
mov eax, dword ptr [ebp+8]
add eax, 620
lea ebx, [eax]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 620
lea eax, [ebx]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-52], 0
.Lt_015C:
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-56], 4
add dword ptr [ebp-60], 4
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 64
jne .Lt_015C
mov ecx, dword ptr [ebp+8]
add ecx, 876
lea ebx, [ecx]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 876
lea ecx, [ebx]
mov dword ptr [ebp-72], ecx
mov dword ptr [ebp-64], 0
.Lt_0160:
push 0
push -1
push dword ptr [ebp-72]
push -1
push dword ptr [ebp-68]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-68], 12
add dword ptr [ebp-72], 12
inc dword ptr [ebp-64]
cmp dword ptr [ebp-64], 64
jne .Lt_0160
.Lt_014A:
push dword ptr [ebp-80]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-76]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN15CPCDOS_GUI_TYPEC1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_016E:
.Lt_016F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16PROPRIETES_OBJETC1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 37
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 38
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 39
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 40
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 41
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 42
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 49
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 50
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 51
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 53
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 54
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 55
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 56
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 57
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 58
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 59
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 60
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 61
mov byte ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 62
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 63
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 65
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 66
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 68
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 72
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 73
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 74
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 75
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 76
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 77
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 80
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 84
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 88
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 92
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 96
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 100
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 104
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 108
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 112
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 116
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 120
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 124
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 128
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 132
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 136
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 140
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 144
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 148
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 152
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 156
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 160
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 164
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 168
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 172
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 176
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 180
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 184
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0173:
.Lt_0174:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16PROPRIETES_OBJETaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0177:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 12
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 24
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 24
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 36
mov ecx, dword ptr [ebp+8]
add ecx, 36
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 37
mov ecx, dword ptr [ebp+8]
add ecx, 37
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 38
mov ecx, dword ptr [ebp+8]
add ecx, 38
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 39
mov ecx, dword ptr [ebp+8]
add ecx, 39
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 40
mov ecx, dword ptr [ebp+8]
add ecx, 40
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 41
mov ecx, dword ptr [ebp+8]
add ecx, 41
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 42
mov ecx, dword ptr [ebp+8]
add ecx, 42
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 44
mov ecx, dword ptr [ebp+8]
add ecx, 44
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 48
mov ecx, dword ptr [ebp+8]
add ecx, 48
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 49
mov ecx, dword ptr [ebp+8]
add ecx, 49
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 50
mov ecx, dword ptr [ebp+8]
add ecx, 50
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 51
mov ecx, dword ptr [ebp+8]
add ecx, 51
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 52
mov ecx, dword ptr [ebp+8]
add ecx, 52
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 53
mov ecx, dword ptr [ebp+8]
add ecx, 53
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 54
mov ecx, dword ptr [ebp+8]
add ecx, 54
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 55
mov ecx, dword ptr [ebp+8]
add ecx, 55
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 56
mov ecx, dword ptr [ebp+8]
add ecx, 56
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 57
mov ecx, dword ptr [ebp+8]
add ecx, 57
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 58
mov ecx, dword ptr [ebp+8]
add ecx, 58
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 59
mov ecx, dword ptr [ebp+8]
add ecx, 59
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 60
mov ecx, dword ptr [ebp+8]
add ecx, 60
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 61
mov ecx, dword ptr [ebp+8]
add ecx, 61
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 62
mov ecx, dword ptr [ebp+8]
add ecx, 62
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 63
mov ecx, dword ptr [ebp+8]
add ecx, 63
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 64
mov ecx, dword ptr [ebp+8]
add ecx, 64
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 65
mov ecx, dword ptr [ebp+8]
add ecx, 65
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 66
mov ecx, dword ptr [ebp+8]
add ecx, 66
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 68
mov ecx, dword ptr [ebp+8]
add ecx, 68
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 72
mov ecx, dword ptr [ebp+8]
add ecx, 72
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 73
mov ecx, dword ptr [ebp+8]
add ecx, 73
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 74
mov ecx, dword ptr [ebp+8]
add ecx, 74
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 75
mov ecx, dword ptr [ebp+8]
add ecx, 75
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 76
mov ecx, dword ptr [ebp+8]
add ecx, 76
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 77
mov ecx, dword ptr [ebp+8]
add ecx, 77
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 80
mov ecx, dword ptr [ebp+8]
add ecx, 80
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 84
mov ecx, dword ptr [ebp+8]
add ecx, 84
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 88
mov ecx, dword ptr [ebp+8]
add ecx, 88
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 92
mov ecx, dword ptr [ebp+8]
add ecx, 92
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 96
mov ecx, dword ptr [ebp+8]
add ecx, 96
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 100
mov ecx, dword ptr [ebp+8]
add ecx, 100
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 104
mov ecx, dword ptr [ebp+8]
add ecx, 104
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 108
mov ecx, dword ptr [ebp+8]
add ecx, 108
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 112
mov ecx, dword ptr [ebp+8]
add ecx, 112
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 116
mov ecx, dword ptr [ebp+8]
add ecx, 116
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 120
mov ecx, dword ptr [ebp+8]
add ecx, 120
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 124
mov ecx, dword ptr [ebp+8]
add ecx, 124
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 128
mov ecx, dword ptr [ebp+8]
add ecx, 128
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 132
mov ecx, dword ptr [ebp+8]
add ecx, 132
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 136
mov ecx, dword ptr [ebp+8]
add ecx, 136
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 140
mov ecx, dword ptr [ebp+8]
add ecx, 140
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 144
mov ecx, dword ptr [ebp+8]
add ecx, 144
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 148
mov ecx, dword ptr [ebp+8]
add ecx, 148
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 152
mov ecx, dword ptr [ebp+8]
add ecx, 152
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 156
mov ecx, dword ptr [ebp+8]
add ecx, 156
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 160
mov ecx, dword ptr [ebp+8]
add ecx, 160
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 164
mov ecx, dword ptr [ebp+8]
add ecx, 164
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 168
mov ecx, dword ptr [ebp+8]
add ecx, 168
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 172
mov ecx, dword ptr [ebp+8]
add ecx, 172
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 176
mov ecx, dword ptr [ebp+8]
add ecx, 176
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 180
mov ecx, dword ptr [ebp+8]
add ecx, 180
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 184
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 184
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0178:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16PROPRIETES_OBJETD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_017F:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0180:
mov eax, dword ptr [ebp+8]
add eax, 184
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 12
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN22_IDENTIFICATION_OBJET_C1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 60
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 76
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 80
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0183:
.Lt_0184:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN22_IDENTIFICATION_OBJET_aSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0187:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [eax+4]
pop dword ptr [ebx+4]
pop dword ptr [ebx]
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 12
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 24
mov ecx, dword ptr [ebp+8]
add ecx, 24
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 28
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 28
lea ebx, [ecx]
push ebx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 44
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 44
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 56
mov ecx, dword ptr [ebp+8]
add ecx, 56
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 60
mov ecx, dword ptr [ebp+8]
add ecx, 60
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 64
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 64
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 76
mov ecx, dword ptr [ebp+8]
add ecx, 76
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 80
mov ecx, dword ptr [ebp+8]
add ecx, 80
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
.Lt_0188:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN22_IDENTIFICATION_OBJET_D1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_018F:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0190:
mov eax, dword ptr [ebp+8]
add eax, 64
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 44
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 28
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19CPCDOS_GUI__FENETREC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 390
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1844
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1848
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1852
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1856
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1860
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1864
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1876
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1880
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1884
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1888
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1900
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1904
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1908
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1912
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1916
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1920
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1924
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1936
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1948
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1952
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1956
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1960
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1964
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1968
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1972
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1976
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1977
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1980
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 1992
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2004
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2008
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2012
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2016
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2020
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2024
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2028
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2032
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2033
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2036
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2048
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2060
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2064
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2068
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2072
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2076
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2080
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2084
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2088
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2089
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2092
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2104
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2116
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2120
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2124
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2128
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2132
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2136
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2140
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2144
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2145
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2148
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2160
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2172
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2176
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2180
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2184
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2188
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2192
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2196
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2200
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2201
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2204
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2208
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2212
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2216
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2220
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2224
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2228
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2232
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2236
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2240
mov dword ptr [ebx], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0193:
.Lt_0194:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19CPCDOS_GUI__FENETREaSERKS_:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0197:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
add ecx, 284
lea ebx, [ecx]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 284
lea ecx, [ebx]
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-4], 0
.Lt_019A:
push 0
push -1
push dword ptr [ebp-12]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-8], 12
add dword ptr [ebp-12], 12
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 130
jne .Lt_019A
mov eax, dword ptr [ebp+12]
add eax, 1844
mov ecx, dword ptr [ebp+8]
add ecx, 1844
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1848
mov ecx, dword ptr [ebp+8]
add ecx, 1848
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1852
mov ecx, dword ptr [ebp+8]
add ecx, 1852
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1856
mov ecx, dword ptr [ebp+8]
add ecx, 1856
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1860
mov ecx, dword ptr [ebp+8]
add ecx, 1860
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 1864
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 1864
lea ebx, [ecx]
push ebx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 1876
mov ebx, dword ptr [ebp+8]
add ebx, 1876
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 1880
mov ebx, dword ptr [ebp+8]
add ebx, 1880
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 1884
mov ebx, dword ptr [ebp+8]
add ebx, 1884
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 1888
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 1888
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 1900
mov ecx, dword ptr [ebp+8]
add ecx, 1900
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1904
mov ecx, dword ptr [ebp+8]
add ecx, 1904
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1908
mov ecx, dword ptr [ebp+8]
add ecx, 1908
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1912
mov ecx, dword ptr [ebp+8]
add ecx, 1912
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1916
mov ecx, dword ptr [ebp+8]
add ecx, 1916
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1920
mov ecx, dword ptr [ebp+8]
add ecx, 1920
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 1924
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 1924
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 1936
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 1936
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 1948
mov ecx, dword ptr [ebp+8]
add ecx, 1948
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1952
mov ecx, dword ptr [ebp+8]
add ecx, 1952
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1956
mov ecx, dword ptr [ebp+8]
add ecx, 1956
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1960
mov ecx, dword ptr [ebp+8]
add ecx, 1960
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1964
mov ecx, dword ptr [ebp+8]
add ecx, 1964
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1968
mov ecx, dword ptr [ebp+8]
add ecx, 1968
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 1972
mov ecx, dword ptr [ebp+8]
add ecx, 1972
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 1976
mov ecx, dword ptr [ebp+8]
add ecx, 1976
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 1977
mov ecx, dword ptr [ebp+8]
add ecx, 1977
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 1980
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 1980
lea ebx, [ecx]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 1992
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 1992
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 2004
mov ebx, dword ptr [ebp+8]
add ebx, 2004
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2008
mov ebx, dword ptr [ebp+8]
add ebx, 2008
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2012
mov ebx, dword ptr [ebp+8]
add ebx, 2012
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2016
mov ebx, dword ptr [ebp+8]
add ebx, 2016
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2020
mov ebx, dword ptr [ebp+8]
add ebx, 2020
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2024
mov ebx, dword ptr [ebp+8]
add ebx, 2024
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2028
mov ebx, dword ptr [ebp+8]
add ebx, 2028
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2032
mov ebx, dword ptr [ebp+8]
add ebx, 2032
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 2033
mov ebx, dword ptr [ebp+8]
add ebx, 2033
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2036
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2036
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2048
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 2048
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 2060
mov ecx, dword ptr [ebp+8]
add ecx, 2060
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2064
mov ecx, dword ptr [ebp+8]
add ecx, 2064
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2068
mov ecx, dword ptr [ebp+8]
add ecx, 2068
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2072
mov ecx, dword ptr [ebp+8]
add ecx, 2072
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2076
mov ecx, dword ptr [ebp+8]
add ecx, 2076
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2080
mov ecx, dword ptr [ebp+8]
add ecx, 2080
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2084
mov ecx, dword ptr [ebp+8]
add ecx, 2084
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2088
mov ecx, dword ptr [ebp+8]
add ecx, 2088
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 2089
mov ecx, dword ptr [ebp+8]
add ecx, 2089
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 2092
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 2092
lea ebx, [ecx]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2104
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2104
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 2116
mov ebx, dword ptr [ebp+8]
add ebx, 2116
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2120
mov ebx, dword ptr [ebp+8]
add ebx, 2120
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2124
mov ebx, dword ptr [ebp+8]
add ebx, 2124
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2128
mov ebx, dword ptr [ebp+8]
add ebx, 2128
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2132
mov ebx, dword ptr [ebp+8]
add ebx, 2132
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2136
mov ebx, dword ptr [ebp+8]
add ebx, 2136
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2140
mov ebx, dword ptr [ebp+8]
add ebx, 2140
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2144
mov ebx, dword ptr [ebp+8]
add ebx, 2144
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 2145
mov ebx, dword ptr [ebp+8]
add ebx, 2145
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2148
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2148
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2160
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 2160
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 2172
mov ecx, dword ptr [ebp+8]
add ecx, 2172
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2176
mov ecx, dword ptr [ebp+8]
add ecx, 2176
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2180
mov ecx, dword ptr [ebp+8]
add ecx, 2180
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2184
mov ecx, dword ptr [ebp+8]
add ecx, 2184
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2188
mov ecx, dword ptr [ebp+8]
add ecx, 2188
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2192
mov ecx, dword ptr [ebp+8]
add ecx, 2192
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2196
mov ecx, dword ptr [ebp+8]
add ecx, 2196
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2200
mov ecx, dword ptr [ebp+8]
add ecx, 2200
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+12]
add eax, 2201
mov ecx, dword ptr [ebp+8]
add ecx, 2201
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 2204
mov ecx, dword ptr [ebp+8]
add ecx, 2204
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2208
mov ecx, dword ptr [ebp+8]
add ecx, 2208
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2212
mov ecx, dword ptr [ebp+8]
add ecx, 2212
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2216
mov ecx, dword ptr [ebp+8]
add ecx, 2216
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2220
mov ecx, dword ptr [ebp+8]
add ecx, 2220
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2224
mov ecx, dword ptr [ebp+8]
add ecx, 2224
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2228
mov ecx, dword ptr [ebp+8]
add ecx, 2228
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2232
mov ecx, dword ptr [ebp+8]
add ecx, 2232
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 2236
mov ecx, dword ptr [ebp+8]
add ecx, 2236
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 2240
mov ecx, dword ptr [ebp+8]
add ecx, 2240
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
.Lt_0198:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19CPCDOS_GUI__FENETRED1Ev:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_01A3:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_01A4:
mov eax, dword ptr [ebp+8]
add eax, 2160
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2148
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2104
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2092
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2048
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2036
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 1992
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 1980
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 1936
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 1924
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 1888
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 1864
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, 284
lea ecx, [ebx]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 284
lea ebx, [ecx]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], 1560
mov dword ptr [ebp-20], 12
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 130
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 129
push eax
call _fb_ArrayDestructStr
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 84
lea ebx, [eax]
push ebx
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-36]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN18CPCDOS_GUI__BOUTONC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 288
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 292
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 296
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 308
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 320
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 332
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 344
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 348
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 352
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 356
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 360
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 364
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 368
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 380
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 384
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 388
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 392
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01A8:
.Lt_01A9:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN18CPCDOS_GUI__BOUTONaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01AC:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 284
mov ebx, dword ptr [ebp+8]
add ebx, 284
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 288
mov ebx, dword ptr [ebp+8]
add ebx, 288
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 292
mov ebx, dword ptr [ebp+8]
add ebx, 292
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 296
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 296
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 308
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 308
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 320
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 320
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 332
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 332
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 344
mov ebx, dword ptr [ebp+8]
add ebx, 344
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 348
mov ebx, dword ptr [ebp+8]
add ebx, 348
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 352
mov ebx, dword ptr [ebp+8]
add ebx, 352
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 356
mov ebx, dword ptr [ebp+8]
add ebx, 356
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 360
mov ebx, dword ptr [ebp+8]
add ebx, 360
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 364
mov ebx, dword ptr [ebp+8]
add ebx, 364
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 368
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 368
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 380
mov ebx, dword ptr [ebp+8]
add ebx, 380
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 384
mov ebx, dword ptr [ebp+8]
add ebx, 384
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 388
mov ebx, dword ptr [ebp+8]
add ebx, 388
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 392
mov ebx, dword ptr [ebp+8]
add ebx, 392
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_01AD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN18CPCDOS_GUI__BOUTOND1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01B4:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01B5:
mov eax, dword ptr [ebp+8]
add eax, 368
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 332
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 320
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 308
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 296
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN22CPCDOS_GUI__PICTUREBOXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 288
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 289
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 292
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 304
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 316
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 320
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 324
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 328
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 332
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 344
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 348
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 352
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 356
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01B8:
.Lt_01B9:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN22CPCDOS_GUI__PICTUREBOXaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01BC:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 284
mov ebx, dword ptr [ebp+8]
add ebx, 284
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 288
mov ebx, dword ptr [ebp+8]
add ebx, 288
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 289
mov ebx, dword ptr [ebp+8]
add ebx, 289
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 292
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 292
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 304
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 316
mov ebx, dword ptr [ebp+8]
add ebx, 316
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 320
mov ebx, dword ptr [ebp+8]
add ebx, 320
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 324
mov ebx, dword ptr [ebp+8]
add ebx, 324
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 328
mov ebx, dword ptr [ebp+8]
add ebx, 328
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 332
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 332
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 344
mov ebx, dword ptr [ebp+8]
add ebx, 344
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 348
mov ebx, dword ptr [ebp+8]
add ebx, 348
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 352
mov ebx, dword ptr [ebp+8]
add ebx, 352
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 356
mov ebx, dword ptr [ebp+8]
add ebx, 356
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_01BD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN22CPCDOS_GUI__PICTUREBOXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01C4:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01C5:
mov eax, dword ptr [ebp+8]
add eax, 332
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 292
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN21CPCDOS_GUI__TEXTBLOCKC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 288
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 292
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 296
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 308
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 312
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 316
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 320
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01C8:
.Lt_01C9:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN21CPCDOS_GUI__TEXTBLOCKaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01CC:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 284
mov ebx, dword ptr [ebp+8]
add ebx, 284
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 288
mov ebx, dword ptr [ebp+8]
add ebx, 288
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 292
mov ebx, dword ptr [ebp+8]
add ebx, 292
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 296
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 296
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 308
mov ebx, dword ptr [ebp+8]
add ebx, 308
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 312
mov ebx, dword ptr [ebp+8]
add ebx, 312
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 316
mov ebx, dword ptr [ebp+8]
add ebx, 316
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 320
mov ebx, dword ptr [ebp+8]
add ebx, 320
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_01CD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN21CPCDOS_GUI__TEXTBLOCKD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01D4:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01D5:
mov eax, dword ptr [ebp+8]
add eax, 296
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19CPCDOS_GUI__TEXTBOXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 288
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 292
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 296
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 308
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 312
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 316
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 320
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 332
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 344
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 356
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 360
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 364
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 368
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 372
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 376
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01D8:
.Lt_01D9:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19CPCDOS_GUI__TEXTBOXaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01DC:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 284
mov ebx, dword ptr [ebp+8]
add ebx, 284
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 288
mov ebx, dword ptr [ebp+8]
add ebx, 288
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 292
mov ebx, dword ptr [ebp+8]
add ebx, 292
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 296
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 296
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 308
mov ebx, dword ptr [ebp+8]
add ebx, 308
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 312
mov ebx, dword ptr [ebp+8]
add ebx, 312
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 316
mov ebx, dword ptr [ebp+8]
add ebx, 316
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 320
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 320
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 332
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 332
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 344
lea ecx, [eax]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 344
lea eax, [ecx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 356
mov ecx, dword ptr [ebp+8]
add ecx, 356
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+12]
add ebx, 360
mov ecx, dword ptr [ebp+8]
add ecx, 360
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 364
mov ecx, dword ptr [ebp+8]
add ecx, 364
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 368
mov ecx, dword ptr [ebp+8]
add ecx, 368
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 372
mov ecx, dword ptr [ebp+8]
add ecx, 372
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 376
mov ecx, dword ptr [ebp+8]
add ecx, 376
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
.Lt_01DD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19CPCDOS_GUI__TEXTBOXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01E4:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01E5:
mov eax, dword ptr [ebp+8]
add eax, 344
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 332
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 320
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 296
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 84
lea ebx, [eax]
push ebx
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN23CPCDOS_GUI__PROGRESSBARC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 288
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 289
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 292
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 304
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 316
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 320
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 324
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 328
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 332
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 344
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 348
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 352
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 356
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 360
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 364
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01E8:
.Lt_01E9:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN23CPCDOS_GUI__PROGRESSBARaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01EC:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 284
mov ebx, dword ptr [ebp+8]
add ebx, 284
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 288
mov ebx, dword ptr [ebp+8]
add ebx, 288
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 289
mov ebx, dword ptr [ebp+8]
add ebx, 289
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 292
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 292
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 304
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 316
mov ebx, dword ptr [ebp+8]
add ebx, 316
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 320
mov ebx, dword ptr [ebp+8]
add ebx, 320
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 324
mov ebx, dword ptr [ebp+8]
add ebx, 324
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 328
mov ebx, dword ptr [ebp+8]
add ebx, 328
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 332
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 332
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 344
mov ebx, dword ptr [ebp+8]
add ebx, 344
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 348
mov ebx, dword ptr [ebp+8]
add ebx, 348
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 352
mov ebx, dword ptr [ebp+8]
add ebx, 352
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 356
mov ebx, dword ptr [ebp+8]
add ebx, 356
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 360
mov ebx, dword ptr [ebp+8]
add ebx, 360
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 364
mov ebx, dword ptr [ebp+8]
add ebx, 364
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_01ED:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN23CPCDOS_GUI__PROGRESSBARD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01F4:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01F5:
mov eax, dword ptr [ebp+8]
add eax, 332
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 292
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20CPCDOS_GUI__CHECKBOXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 284
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 288
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 289
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 292
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 304
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 316
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 320
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 324
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 328
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 332
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 344
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 356
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 368
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 380
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 384
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 388
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 400
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 404
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 408
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 412
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 416
mov dword ptr [eax], 0
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01F8:
.Lt_01F9:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20CPCDOS_GUI__CHECKBOXaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01FC:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN22_IDENTIFICATION_OBJET_aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 84
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 280
mov ebx, dword ptr [ebp+8]
add ebx, 280
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 284
mov ebx, dword ptr [ebp+8]
add ebx, 284
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 288
mov ebx, dword ptr [ebp+8]
add ebx, 288
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 289
mov ebx, dword ptr [ebp+8]
add ebx, 289
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 292
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 292
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 304
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 316
mov ebx, dword ptr [ebp+8]
add ebx, 316
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 320
mov ebx, dword ptr [ebp+8]
add ebx, 320
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 324
mov ebx, dword ptr [ebp+8]
add ebx, 324
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 328
mov ebx, dword ptr [ebp+8]
add ebx, 328
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 332
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 332
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 344
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 344
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 356
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 356
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 368
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 368
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 380
mov ebx, dword ptr [ebp+8]
add ebx, 380
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 384
mov ebx, dword ptr [ebp+8]
add ebx, 384
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 388
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 388
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 400
mov ebx, dword ptr [ebp+8]
add ebx, 400
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 404
mov ebx, dword ptr [ebp+8]
add ebx, 404
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 408
mov ebx, dword ptr [ebp+8]
add ebx, 408
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 412
mov ebx, dword ptr [ebp+8]
add ebx, 412
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 416
mov ebx, dword ptr [ebp+8]
add ebx, 416
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_01FD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20CPCDOS_GUI__CHECKBOXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0204:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0205:
mov eax, dword ptr [ebp+8]
add eax, 388
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 368
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 356
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 344
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 332
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 292
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 84
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN22_IDENTIFICATION_OBJET_D1Ev
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN17CPCDOS_GUI_INIT__C1Ev:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 12
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 66
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 276
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__FENETREC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2520
lea ebx, [eax]
push ebx
call __ZN18CPCDOS_GUI__BOUTONC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2916
lea eax, [ebx]
push eax
call __ZN22CPCDOS_GUI__PICTUREBOXC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3276
lea ebx, [eax]
push ebx
call __ZN21CPCDOS_GUI__TEXTBLOCKC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 3600
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__TEXTBOXC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3980
lea ebx, [eax]
push ebx
call __ZN23CPCDOS_GUI__PROGRESSBARC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4348
lea eax, [ebx]
push eax
call __ZN20CPCDOS_GUI__CHECKBOXC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 4768
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4772
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4776
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4780
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4784
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4788
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4792
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4796
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.Lt_020B:
push dword ptr [ebp-8]
call __ZN19CPCDOS_GUI__FENETREC1Ev
add esp, 4
add dword ptr [ebp-8], 2244
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 66
jne .Lt_020B
mov ebx, dword ptr [ebp+8]
add ebx, 152900
lea eax, [ebx]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], 0
.Lt_020E:
push dword ptr [ebp-16]
call __ZN18CPCDOS_GUI__BOUTONC1Ev
add esp, 4
add dword ptr [ebp-16], 396
inc dword ptr [ebp-12]
cmp dword ptr [ebp-12], 130
jne .Lt_020E
mov eax, dword ptr [ebp+8]
add eax, 204380
lea ebx, [eax]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], 0
.Lt_0211:
push dword ptr [ebp-24]
call __ZN22CPCDOS_GUI__PICTUREBOXC1Ev
add esp, 4
add dword ptr [ebp-24], 360
inc dword ptr [ebp-20]
cmp dword ptr [ebp-20], 130
jne .Lt_0211
mov ebx, dword ptr [ebp+8]
add ebx, 251180
lea eax, [ebx]
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], 0
.Lt_0214:
push dword ptr [ebp-32]
call __ZN21CPCDOS_GUI__TEXTBLOCKC1Ev
add esp, 4
add dword ptr [ebp-32], 324
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 130
jne .Lt_0214
mov eax, dword ptr [ebp+8]
add eax, 293300
lea ebx, [eax]
mov dword ptr [ebp-40], ebx
mov dword ptr [ebp-36], 0
.Lt_0217:
push dword ptr [ebp-40]
call __ZN19CPCDOS_GUI__TEXTBOXC1Ev
add esp, 4
add dword ptr [ebp-40], 380
inc dword ptr [ebp-36]
cmp dword ptr [ebp-36], 130
jne .Lt_0217
mov ebx, dword ptr [ebp+8]
add ebx, 342700
lea eax, [ebx]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], 0
.Lt_021A:
push dword ptr [ebp-48]
call __ZN23CPCDOS_GUI__PROGRESSBARC1Ev
add esp, 4
add dword ptr [ebp-48], 368
inc dword ptr [ebp-44]
cmp dword ptr [ebp-44], 130
jne .Lt_021A
mov eax, dword ptr [ebp+8]
add eax, 390540
lea ebx, [eax]
mov dword ptr [ebp-56], ebx
mov dword ptr [ebp-52], 0
.Lt_021D:
push dword ptr [ebp-56]
call __ZN20CPCDOS_GUI__CHECKBOXC1Ev
add esp, 4
add dword ptr [ebp-56], 420
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 130
jne .Lt_021D
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-60], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-64], eax
.Lt_0208:
.Lt_0209:
push dword ptr [ebp-64]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-60]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN17CPCDOS_GUI_INIT__aSERKS_:
push ebp
mov ebp, esp
sub esp, 104
push ebx
.Lt_0221:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-100], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 12
lea ebx, [ecx]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 12
lea ecx, [ebx]
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-4], 0
.Lt_0224:
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
add dword ptr [ebp-8], 4
add dword ptr [ebp-12], 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 66
jne .Lt_0224
mov eax, dword ptr [ebp+12]
add eax, 276
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 276
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__FENETREaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 2520
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 2520
lea eax, [ebx]
push eax
call __ZN18CPCDOS_GUI__BOUTONaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 2916
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 2916
lea eax, [ebx]
push eax
call __ZN22CPCDOS_GUI__PICTUREBOXaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 3276
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 3276
lea eax, [ebx]
push eax
call __ZN21CPCDOS_GUI__TEXTBLOCKaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 3600
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 3600
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__TEXTBOXaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 3980
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 3980
lea eax, [ebx]
push eax
call __ZN23CPCDOS_GUI__PROGRESSBARaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 4348
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 4348
lea eax, [ebx]
push eax
call __ZN20CPCDOS_GUI__CHECKBOXaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 4768
mov ebx, dword ptr [ebp+8]
add ebx, 4768
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4772
mov ebx, dword ptr [ebp+8]
add ebx, 4772
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 4776
mov ebx, dword ptr [ebp+8]
add ebx, 4776
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4780
mov ebx, dword ptr [ebp+8]
add ebx, 4780
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 4784
mov ebx, dword ptr [ebp+8]
add ebx, 4784
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4788
mov ebx, dword ptr [ebp+8]
add ebx, 4788
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 4792
mov ebx, dword ptr [ebp+8]
add ebx, 4792
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 4796
lea ebx, [ecx]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 4796
lea ecx, [ebx]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-16], 0
.Lt_0228:
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call __ZN19CPCDOS_GUI__FENETREaSERKS_
add esp, 8
add dword ptr [ebp-20], 2244
add dword ptr [ebp-24], 2244
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 66
jne .Lt_0228
mov ecx, dword ptr [ebp+8]
add ecx, 152900
lea ebx, [ecx]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 152900
lea ecx, [ebx]
mov dword ptr [ebp-36], ecx
mov dword ptr [ebp-28], 0
.Lt_022C:
push dword ptr [ebp-36]
push dword ptr [ebp-32]
call __ZN18CPCDOS_GUI__BOUTONaSERKS_
add esp, 8
add dword ptr [ebp-32], 396
add dword ptr [ebp-36], 396
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 130
jne .Lt_022C
mov ecx, dword ptr [ebp+8]
add ecx, 204380
lea ebx, [ecx]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 204380
lea ecx, [ebx]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-40], 0
.Lt_0230:
push dword ptr [ebp-48]
push dword ptr [ebp-44]
call __ZN22CPCDOS_GUI__PICTUREBOXaSERKS_
add esp, 8
add dword ptr [ebp-44], 360
add dword ptr [ebp-48], 360
inc dword ptr [ebp-40]
cmp dword ptr [ebp-40], 130
jne .Lt_0230
mov ecx, dword ptr [ebp+8]
add ecx, 251180
lea ebx, [ecx]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 251180
lea ecx, [ebx]
mov dword ptr [ebp-60], ecx
mov dword ptr [ebp-52], 0
.Lt_0234:
push dword ptr [ebp-60]
push dword ptr [ebp-56]
call __ZN21CPCDOS_GUI__TEXTBLOCKaSERKS_
add esp, 8
add dword ptr [ebp-56], 324
add dword ptr [ebp-60], 324
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 130
jne .Lt_0234
mov ecx, dword ptr [ebp+8]
add ecx, 293300
lea ebx, [ecx]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 293300
lea ecx, [ebx]
mov dword ptr [ebp-72], ecx
mov dword ptr [ebp-64], 0
.Lt_0238:
push dword ptr [ebp-72]
push dword ptr [ebp-68]
call __ZN19CPCDOS_GUI__TEXTBOXaSERKS_
add esp, 8
add dword ptr [ebp-68], 380
add dword ptr [ebp-72], 380
inc dword ptr [ebp-64]
cmp dword ptr [ebp-64], 130
jne .Lt_0238
mov ecx, dword ptr [ebp+8]
add ecx, 342700
lea ebx, [ecx]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 342700
lea ecx, [ebx]
mov dword ptr [ebp-84], ecx
mov dword ptr [ebp-76], 0
.Lt_023C:
push dword ptr [ebp-84]
push dword ptr [ebp-80]
call __ZN23CPCDOS_GUI__PROGRESSBARaSERKS_
add esp, 8
add dword ptr [ebp-80], 368
add dword ptr [ebp-84], 368
inc dword ptr [ebp-76]
cmp dword ptr [ebp-76], 130
jne .Lt_023C
mov ecx, dword ptr [ebp+8]
add ecx, 390540
lea ebx, [ecx]
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 390540
lea ecx, [ebx]
mov dword ptr [ebp-96], ecx
mov dword ptr [ebp-88], 0
.Lt_0240:
push dword ptr [ebp-96]
push dword ptr [ebp-92]
call __ZN20CPCDOS_GUI__CHECKBOXaSERKS_
add esp, 8
add dword ptr [ebp-92], 420
add dword ptr [ebp-96], 420
inc dword ptr [ebp-88]
cmp dword ptr [ebp-88], 130
jne .Lt_0240
.Lt_0222:
push dword ptr [ebp-104]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-100]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN17_SCI_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0277:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [eax+4]
pop dword ptr [ebx+4]
pop dword ptr [ebx]
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 24
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea eax, [ebx]
push eax
call __ZN16PROPRIETES_OBJETaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 220
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 220
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__FENETREaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 2464
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 2464
lea eax, [ebx]
push eax
call __ZN18CPCDOS_GUI__BOUTONaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 2860
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 2860
lea eax, [ebx]
push eax
call __ZN22CPCDOS_GUI__PICTUREBOXaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 3220
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 3220
lea eax, [ebx]
push eax
call __ZN21CPCDOS_GUI__TEXTBLOCKaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 3544
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 3544
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__TEXTBOXaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 3924
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 3924
lea eax, [ebx]
push eax
call __ZN23CPCDOS_GUI__PROGRESSBARaSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 4292
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 4292
lea eax, [ebx]
push eax
call __ZN20CPCDOS_GUI__CHECKBOXaSERKS_
add esp, 8
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 4712
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 4712
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 4724
mov ebx, dword ptr [ebp+8]
add ebx, 4724
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4728
mov ebx, dword ptr [ebp+8]
add ebx, 4728
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 4732
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 4732
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 4744
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 4744
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 4756
mov ebx, dword ptr [ebp+8]
add ebx, 4756
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4760
mov ebx, dword ptr [ebp+8]
add ebx, 4760
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 4764
mov ebx, dword ptr [ebp+8]
add ebx, 4764
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 4768
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 4768
lea ecx, [ebx]
push ecx
call __ZN17CPCDOS_GUI_INIT__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+8]
add ecx, 449908
mov ebx, dword ptr [ebp+12]
add ebx, 449908
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov ebx, dword ptr [ebp+12]
add ebx, 449909
mov ecx, dword ptr [ebp+8]
add ecx, 449909
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
add eax, 449910
lea ecx, [eax]
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 449910
lea eax, [ecx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_027A:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebp-8]
mov bl, byte ptr [eax]
mov byte ptr [ecx], bl
inc dword ptr [ebp-8]
inc dword ptr [ebp-12]
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 9
jne .Lt_027A
mov ebx, dword ptr [ebp+12]
add ebx, 449919
mov ecx, dword ptr [ebp+8]
add ecx, 449919
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
add eax, 449920
lea ecx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 449920
lea ebx, [eax]
push ecx
push edi
push esi
mov edi, ecx
mov esi, ebx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
.Lt_0278:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN21_CONSOLE_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0283:
push offset _Lt_0289
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 24
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 37
mov ebx, dword ptr [ebp+8]
add ebx, 37
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 38
mov ebx, dword ptr [ebp+8]
add ebx, 38
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 39
mov ebx, dword ptr [ebp+8]
add ebx, 39
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 41
mov ebx, dword ptr [ebp+8]
add ebx, 41
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 72
mov ebx, dword ptr [ebp+8]
add ebx, 72
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 76
mov ebx, dword ptr [ebp+8]
add ebx, 76
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 80
mov ebx, dword ptr [ebp+8]
add ebx, 80
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 84
mov ebx, dword ptr [ebp+8]
add ebx, 84
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 88
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 88
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 100
mov ecx, dword ptr [ebp+8]
add ecx, 100
push dword ptr [eax]
push dword ptr [eax+4]
pop dword ptr [ecx+4]
pop dword ptr [ecx]
mov eax, dword ptr [ebp+12]
add eax, 108
mov ecx, dword ptr [ebp+8]
add ecx, 108
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 112
mov ecx, dword ptr [ebp+8]
add ecx, 112
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 116
mov ecx, dword ptr [ebp+8]
add ecx, 116
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 120
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 120
lea ebx, [ecx]
push ebx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 132
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 132
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_0286:
push 0
push -1
push dword ptr [ebp-12]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-8], 12
add dword ptr [ebp-12], 12
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 81
jne .Lt_0286
mov eax, dword ptr [ebp+12]
add eax, 1104
mov ebx, dword ptr [ebp+8]
add ebx, 1104
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 1108
mov ebx, dword ptr [ebp+8]
add ebx, 1108
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 1112
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 1112
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0284:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20_SHELL_MEMOIRE_CCP__C1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 6
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 12324
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 24624
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 36924
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 49224
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 61524
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 73824
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 86124
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 98424
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 110724
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 3075
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 123024
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 257
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 124052
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 257
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 125080
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 514
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 127136
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 771
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 130220
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 771
rep stosd
pop edi
pop eax
push offset _Lt_0292
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0290:
.Lt_0291:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20_SHELL_MEMOIRE_CCP__aSERKS_:
push ebp
mov ebp, esp
sub esp, 200
push ebx
.Lt_0295:
push offset _Lt_0292
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-196], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-200], eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_0298:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-8], 4
add dword ptr [ebp-12], 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 6
jne .Lt_0298
mov ecx, dword ptr [ebp+8]
add ecx, 24
lea ebx, [ecx]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 24
lea ecx, [ebx]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-16], 0
.Lt_029C:
push 0
push -1
push dword ptr [ebp-24]
push -1
push dword ptr [ebp-20]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-20], 12
add dword ptr [ebp-24], 12
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 1025
jne .Lt_029C
mov eax, dword ptr [ebp+8]
add eax, 12324
lea ecx, [eax]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 12324
lea eax, [ecx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_02A0:
push 0
push -1
push dword ptr [ebp-36]
push -1
push dword ptr [ebp-32]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-32], 12
add dword ptr [ebp-36], 12
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 1025
jne .Lt_02A0
mov eax, dword ptr [ebp+8]
add eax, 24624
lea ecx, [eax]
mov dword ptr [ebp-44], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24624
lea eax, [ecx]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-40], 0
.Lt_02A4:
push 0
push -1
push dword ptr [ebp-48]
push -1
push dword ptr [ebp-44]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-44], 12
add dword ptr [ebp-48], 12
inc dword ptr [ebp-40]
cmp dword ptr [ebp-40], 1025
jne .Lt_02A4
mov eax, dword ptr [ebp+8]
add eax, 36924
lea ecx, [eax]
mov dword ptr [ebp-56], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 36924
lea eax, [ecx]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-52], 0
.Lt_02A8:
push 0
push -1
push dword ptr [ebp-60]
push -1
push dword ptr [ebp-56]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-56], 12
add dword ptr [ebp-60], 12
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 1025
jne .Lt_02A8
mov eax, dword ptr [ebp+8]
add eax, 49224
lea ecx, [eax]
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 49224
lea eax, [ecx]
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-64], 0
.Lt_02AC:
push 0
push -1
push dword ptr [ebp-72]
push -1
push dword ptr [ebp-68]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-68], 12
add dword ptr [ebp-72], 12
inc dword ptr [ebp-64]
cmp dword ptr [ebp-64], 1025
jne .Lt_02AC
mov eax, dword ptr [ebp+8]
add eax, 61524
lea ecx, [eax]
mov dword ptr [ebp-80], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 61524
lea eax, [ecx]
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-76], 0
.Lt_02B0:
push 0
push -1
push dword ptr [ebp-84]
push -1
push dword ptr [ebp-80]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-80], 12
add dword ptr [ebp-84], 12
inc dword ptr [ebp-76]
cmp dword ptr [ebp-76], 1025
jne .Lt_02B0
mov eax, dword ptr [ebp+8]
add eax, 73824
lea ecx, [eax]
mov dword ptr [ebp-92], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 73824
lea eax, [ecx]
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-88], 0
.Lt_02B4:
push 0
push -1
push dword ptr [ebp-96]
push -1
push dword ptr [ebp-92]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-92], 12
add dword ptr [ebp-96], 12
inc dword ptr [ebp-88]
cmp dword ptr [ebp-88], 1025
jne .Lt_02B4
mov eax, dword ptr [ebp+8]
add eax, 86124
lea ecx, [eax]
mov dword ptr [ebp-104], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 86124
lea eax, [ecx]
mov dword ptr [ebp-108], eax
mov dword ptr [ebp-100], 0
.Lt_02B8:
push 0
push -1
push dword ptr [ebp-108]
push -1
push dword ptr [ebp-104]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-104], 12
add dword ptr [ebp-108], 12
inc dword ptr [ebp-100]
cmp dword ptr [ebp-100], 1025
jne .Lt_02B8
mov eax, dword ptr [ebp+8]
add eax, 98424
lea ecx, [eax]
mov dword ptr [ebp-116], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 98424
lea eax, [ecx]
mov dword ptr [ebp-120], eax
mov dword ptr [ebp-112], 0
.Lt_02BC:
push 0
push -1
push dword ptr [ebp-120]
push -1
push dword ptr [ebp-116]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-116], 12
add dword ptr [ebp-120], 12
inc dword ptr [ebp-112]
cmp dword ptr [ebp-112], 1025
jne .Lt_02BC
mov eax, dword ptr [ebp+8]
add eax, 110724
lea ecx, [eax]
mov dword ptr [ebp-128], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 110724
lea eax, [ecx]
mov dword ptr [ebp-132], eax
mov dword ptr [ebp-124], 0
.Lt_02C0:
push 0
push -1
push dword ptr [ebp-132]
push -1
push dword ptr [ebp-128]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-128], 12
add dword ptr [ebp-132], 12
inc dword ptr [ebp-124]
cmp dword ptr [ebp-124], 1025
jne .Lt_02C0
mov eax, dword ptr [ebp+8]
add eax, 123024
lea ecx, [eax]
mov dword ptr [ebp-140], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 123024
lea eax, [ecx]
mov dword ptr [ebp-144], eax
mov dword ptr [ebp-136], 0
.Lt_02C4:
mov eax, dword ptr [ebp-144]
mov ecx, dword ptr [ebp-140]
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
add dword ptr [ebp-140], 4
add dword ptr [ebp-144], 4
inc dword ptr [ebp-136]
cmp dword ptr [ebp-136], 257
jne .Lt_02C4
mov ebx, dword ptr [ebp+8]
add ebx, 124052
lea ecx, [ebx]
mov dword ptr [ebp-152], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 124052
lea ebx, [ecx]
mov dword ptr [ebp-156], ebx
mov dword ptr [ebp-148], 0
.Lt_02C8:
mov ebx, dword ptr [ebp-156]
mov ecx, dword ptr [ebp-152]
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
add dword ptr [ebp-152], 4
add dword ptr [ebp-156], 4
inc dword ptr [ebp-148]
cmp dword ptr [ebp-148], 257
jne .Lt_02C8
mov eax, dword ptr [ebp+8]
add eax, 125080
lea ecx, [eax]
mov dword ptr [ebp-164], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 125080
lea eax, [ecx]
mov dword ptr [ebp-168], eax
mov dword ptr [ebp-160], 0
.Lt_02CC:
mov eax, dword ptr [ebp-168]
mov ecx, dword ptr [ebp-164]
push dword ptr [eax]
push dword ptr [eax+4]
pop dword ptr [ecx+4]
pop dword ptr [ecx]
add dword ptr [ebp-164], 8
add dword ptr [ebp-168], 8
inc dword ptr [ebp-160]
cmp dword ptr [ebp-160], 257
jne .Lt_02CC
mov eax, dword ptr [ebp+8]
add eax, 127136
lea ecx, [eax]
mov dword ptr [ebp-176], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 127136
lea eax, [ecx]
mov dword ptr [ebp-180], eax
mov dword ptr [ebp-172], 0
.Lt_02D0:
push 0
push -1
push dword ptr [ebp-180]
push -1
push dword ptr [ebp-176]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-176], 12
add dword ptr [ebp-180], 12
inc dword ptr [ebp-172]
cmp dword ptr [ebp-172], 257
jne .Lt_02D0
mov eax, dword ptr [ebp+8]
add eax, 130220
lea ecx, [eax]
mov dword ptr [ebp-188], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 130220
lea eax, [ecx]
mov dword ptr [ebp-192], eax
mov dword ptr [ebp-184], 0
.Lt_02D4:
push 0
push -1
push dword ptr [ebp-192]
push -1
push dword ptr [ebp-188]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-188], 12
add dword ptr [ebp-192], 12
inc dword ptr [ebp-184]
cmp dword ptr [ebp-184], 257
jne .Lt_02D4
.Lt_0296:
push dword ptr [ebp-200]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-196]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20_SHELL_MEMOIRE_CCP__D1Ev:
push ebp
mov ebp, esp
sub esp, 392
push ebx
.Lt_02DD:
push offset _Lt_0292
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-388], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-392], eax
.Lt_02DE:
lea eax, [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, 130220
lea ecx, [ebx]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 130220
lea ebx, [ecx]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], 3084
mov dword ptr [ebp-20], 12
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 257
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 256
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-64]
mov ebx, dword ptr [ebp+8]
add ebx, 127136
lea ecx, [ebx]
mov dword ptr [ebp-64], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 127136
lea ebx, [ecx]
mov dword ptr [ebp-60], ebx
mov dword ptr [ebp-56], 3084
mov dword ptr [ebp-52], 12
mov dword ptr [ebp-48], 1
mov dword ptr [ebp-44], 257
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 256
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-96]
mov ebx, dword ptr [ebp+8]
add ebx, 110724
lea ecx, [ebx]
mov dword ptr [ebp-96], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 110724
lea ebx, [ecx]
mov dword ptr [ebp-92], ebx
mov dword ptr [ebp-88], 12300
mov dword ptr [ebp-84], 12
mov dword ptr [ebp-80], 1
mov dword ptr [ebp-76], 1025
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-128]
mov ebx, dword ptr [ebp+8]
add ebx, 98424
lea ecx, [ebx]
mov dword ptr [ebp-128], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 98424
lea ebx, [ecx]
mov dword ptr [ebp-124], ebx
mov dword ptr [ebp-120], 12300
mov dword ptr [ebp-116], 12
mov dword ptr [ebp-112], 1
mov dword ptr [ebp-108], 1025
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-160]
mov ebx, dword ptr [ebp+8]
add ebx, 86124
lea ecx, [ebx]
mov dword ptr [ebp-160], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 86124
lea ebx, [ecx]
mov dword ptr [ebp-156], ebx
mov dword ptr [ebp-152], 12300
mov dword ptr [ebp-148], 12
mov dword ptr [ebp-144], 1
mov dword ptr [ebp-140], 1025
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-192]
mov ebx, dword ptr [ebp+8]
add ebx, 73824
lea ecx, [ebx]
mov dword ptr [ebp-192], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 73824
lea ebx, [ecx]
mov dword ptr [ebp-188], ebx
mov dword ptr [ebp-184], 12300
mov dword ptr [ebp-180], 12
mov dword ptr [ebp-176], 1
mov dword ptr [ebp-172], 1025
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-224]
mov ebx, dword ptr [ebp+8]
add ebx, 61524
lea ecx, [ebx]
mov dword ptr [ebp-224], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 61524
lea ebx, [ecx]
mov dword ptr [ebp-220], ebx
mov dword ptr [ebp-216], 12300
mov dword ptr [ebp-212], 12
mov dword ptr [ebp-208], 1
mov dword ptr [ebp-204], 1025
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-256]
mov ebx, dword ptr [ebp+8]
add ebx, 49224
lea ecx, [ebx]
mov dword ptr [ebp-256], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 49224
lea ebx, [ecx]
mov dword ptr [ebp-252], ebx
mov dword ptr [ebp-248], 12300
mov dword ptr [ebp-244], 12
mov dword ptr [ebp-240], 1
mov dword ptr [ebp-236], 1025
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-288]
mov ebx, dword ptr [ebp+8]
add ebx, 36924
lea ecx, [ebx]
mov dword ptr [ebp-288], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 36924
lea ebx, [ecx]
mov dword ptr [ebp-284], ebx
mov dword ptr [ebp-280], 12300
mov dword ptr [ebp-276], 12
mov dword ptr [ebp-272], 1
mov dword ptr [ebp-268], 1025
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-320]
mov ebx, dword ptr [ebp+8]
add ebx, 24624
lea ecx, [ebx]
mov dword ptr [ebp-320], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 24624
lea ebx, [ecx]
mov dword ptr [ebp-316], ebx
mov dword ptr [ebp-312], 12300
mov dword ptr [ebp-308], 12
mov dword ptr [ebp-304], 1
mov dword ptr [ebp-300], 1025
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-352]
mov ebx, dword ptr [ebp+8]
add ebx, 12324
lea ecx, [ebx]
mov dword ptr [ebp-352], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 12324
lea ebx, [ecx]
mov dword ptr [ebp-348], ebx
mov dword ptr [ebp-344], 12300
mov dword ptr [ebp-340], 12
mov dword ptr [ebp-336], 1
mov dword ptr [ebp-332], 1025
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-384]
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea ecx, [ebx]
mov dword ptr [ebp-384], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 24
lea ebx, [ecx]
mov dword ptr [ebp-380], ebx
mov dword ptr [ebp-376], 12300
mov dword ptr [ebp-372], 12
mov dword ptr [ebp-368], 1
mov dword ptr [ebp-364], 1025
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 1024
push eax
call _fb_ArrayDestructStr
add esp, 4
push dword ptr [ebp-392]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-388]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19_SHELL_CPCDOS_OSX__C1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN20_SHELL_MEMOIRE_CCP__C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 133304
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 133308
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 453
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 135120
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 453
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 136932
mov dword ptr [ebx], 0
push offset _Lt_0292
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_02ED:
.Lt_02EE:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19_SHELL_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_02F1:
push offset _Lt_0292
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call __ZN20_SHELL_MEMOIRE_CCP__aSERKS_
add esp, 8
mov eax, dword ptr [ebp+12]
add eax, 133304
mov ebx, dword ptr [ebp+8]
add ebx, 133304
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
add ecx, 133308
lea ebx, [ecx]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 133308
lea ecx, [ebx]
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-4], 0
.Lt_02F4:
push 0
push -1
push dword ptr [ebp-12]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-8], 12
add dword ptr [ebp-12], 12
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 151
jne .Lt_02F4
mov eax, dword ptr [ebp+8]
add eax, 135120
lea ecx, [eax]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 135120
lea eax, [ecx]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-16], 0
.Lt_02F8:
push 0
push -1
push dword ptr [ebp-24]
push -1
push dword ptr [ebp-20]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-20], 12
add dword ptr [ebp-24], 12
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 151
jne .Lt_02F8
mov eax, dword ptr [ebp+12]
add eax, 136932
mov ecx, dword ptr [ebp+8]
add ecx, 136932
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
.Lt_02F2:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN19_TYPES_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_034D:
push offset _Lt_036B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-88], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-92], eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_0350:
push 0
push -1
push dword ptr [ebp-12]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-8], 12
add dword ptr [ebp-12], 12
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 8
jne .Lt_0350
mov eax, dword ptr [ebp+8]
add eax, 96
lea ebx, [eax]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 96
lea eax, [ebx]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-16], 0
.Lt_0354:
push 0
push -1
push dword ptr [ebp-24]
push -1
push dword ptr [ebp-20]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-20], 12
add dword ptr [ebp-24], 12
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 8
jne .Lt_0354
mov eax, dword ptr [ebp+8]
add eax, 192
lea ebx, [eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 192
lea eax, [ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_0358:
push 0
push -1
push dword ptr [ebp-36]
push -1
push dword ptr [ebp-32]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-32], 12
add dword ptr [ebp-36], 12
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 8
jne .Lt_0358
mov eax, dword ptr [ebp+8]
add eax, 288
lea ebx, [eax]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 288
lea eax, [ebx]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-40], 0
.Lt_035C:
push 0
push -1
push dword ptr [ebp-48]
push -1
push dword ptr [ebp-44]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-44], 12
add dword ptr [ebp-48], 12
inc dword ptr [ebp-40]
cmp dword ptr [ebp-40], 8
jne .Lt_035C
mov eax, dword ptr [ebp+8]
add eax, 384
lea ebx, [eax]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 384
lea eax, [ebx]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-52], 0
.Lt_0360:
push 0
push -1
push dword ptr [ebp-60]
push -1
push dword ptr [ebp-56]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-56], 12
add dword ptr [ebp-60], 12
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 5
jne .Lt_0360
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 444
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 444
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 456
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 456
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 468
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 468
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 480
lea ebx, [eax]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 480
lea eax, [ebx]
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-64], 0
.Lt_0364:
push 0
push -1
push dword ptr [ebp-72]
push -1
push dword ptr [ebp-68]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-68], 12
add dword ptr [ebp-72], 12
inc dword ptr [ebp-64]
cmp dword ptr [ebp-64], 2
jne .Lt_0364
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 504
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 504
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 516
lea ebx, [eax]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 516
lea eax, [ebx]
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-76], 0
.Lt_0368:
push 0
push -1
push dword ptr [ebp-84]
push -1
push dword ptr [ebp-80]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-80], 12
add dword ptr [ebp-84], 12
inc dword ptr [ebp-76]
cmp dword ptr [ebp-76], 4
jne .Lt_0368
.Lt_034E:
push dword ptr [ebp-92]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-88]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN20__NOYAU_CPCDOS_OSX__aSERKS_:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_0375:
push offset _Lt_036B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 8
mov ebx, dword ptr [ebp+8]
add ebx, 8
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 12
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea ecx, [ebx]
push ecx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 24
lea ecx, [eax]
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24
lea eax, [ecx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_0378:
push 0
push -1
push dword ptr [ebp-12]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-8], 12
add dword ptr [ebp-12], 12
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 9
jne .Lt_0378
mov eax, dword ptr [ebp+8]
add eax, 132
lea ecx, [eax]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 132
lea eax, [ecx]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-16], 0
.Lt_037C:
push 0
push -1
push dword ptr [ebp-24]
push -1
push dword ptr [ebp-20]
call _fb_StrAssign
add esp, 20
add dword ptr [ebp-20], 12
add dword ptr [ebp-24], 12
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 9
jne .Lt_037C
mov eax, dword ptr [ebp+12]
add eax, 240
mov ecx, dword ptr [ebp+8]
add ecx, 240
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 244
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 244
lea ebx, [ecx]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 256
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 256
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 268
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 268
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 280
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 280
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 292
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 292
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 304
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 304
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 316
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 316
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 328
lea ebx, [eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 328
lea eax, [ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_0380:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
add dword ptr [ebp-32], 4
add dword ptr [ebp-36], 4
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 65
jne .Lt_0380
mov ecx, dword ptr [ebp+12]
add ecx, 588
mov ebx, dword ptr [ebp+8]
add ebx, 588
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 592
mov ebx, dword ptr [ebp+8]
add ebx, 592
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 596
mov ebx, dword ptr [ebp+8]
add ebx, 596
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 600
mov ebx, dword ptr [ebp+8]
add ebx, 600
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 604
mov ebx, dword ptr [ebp+8]
add ebx, 604
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 608
mov ebx, dword ptr [ebp+8]
add ebx, 608
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 609
mov ebx, dword ptr [ebp+8]
add ebx, 609
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 610
mov ebx, dword ptr [ebp+8]
add ebx, 610
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 611
mov ebx, dword ptr [ebp+8]
add ebx, 611
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 612
mov ebx, dword ptr [ebp+8]
add ebx, 612
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 616
mov ebx, dword ptr [ebp+8]
add ebx, 616
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 620
mov ebx, dword ptr [ebp+8]
add ebx, 620
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 624
mov ebx, dword ptr [ebp+8]
add ebx, 624
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 625
mov ebx, dword ptr [ebp+8]
add ebx, 625
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 626
mov ebx, dword ptr [ebp+8]
add ebx, 626
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 627
mov ebx, dword ptr [ebp+8]
add ebx, 627
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 628
mov ebx, dword ptr [ebp+8]
add ebx, 628
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 629
mov ebx, dword ptr [ebp+8]
add ebx, 629
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 630
mov ebx, dword ptr [ebp+8]
add ebx, 630
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 631
mov ebx, dword ptr [ebp+8]
add ebx, 631
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 632
mov ebx, dword ptr [ebp+8]
add ebx, 632
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 633
mov ebx, dword ptr [ebp+8]
add ebx, 633
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 634
mov ebx, dword ptr [ebp+8]
add ebx, 634
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 635
mov ebx, dword ptr [ebp+8]
add ebx, 635
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 636
mov ebx, dword ptr [ebp+8]
add ebx, 636
mov al, byte ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+12]
add eax, 637
mov ebx, dword ptr [ebp+8]
add ebx, 637
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+12]
add ecx, 640
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 640
lea ecx, [ebx]
push ecx
call __ZN19_DEBUG_CPCDOS_OSX__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 776
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 776
lea ecx, [ebx]
push ecx
call __ZN19_TYPES_CPCDOS_OSX__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 1340
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 1340
lea ecx, [ebx]
push ecx
call __ZN21_CONSOLE_CPCDOS_OSX__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 2464
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 2464
lea ecx, [ebx]
push ecx
call __ZN17_SCI_CPCDOS_OSX__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 452416
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 452416
lea ecx, [ebx]
push ecx
call __ZN19_SHELL_CPCDOS_OSX__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 589352
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 589352
lea ecx, [ebx]
push ecx
call __ZN21_SYSTEME_CPCDOS_OSX__aSERKS_
add esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 619180
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 619180
lea ecx, [ebx]
push ecx
call __ZN20_RESEAU_CPCDOS_OSX__aSERKS_
add esp, 8
.Lt_0376:
push dword ptr [ebp-44]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-40]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	"C:\\cpcdos\\cpcdos~3\\fb\\inc\\dos\\sys\\segments.bi\0"
.balign 4
_Lt_0009:	.ascii	"_MY_CS\0"
.balign 4
_Lt_000E:	.ascii	"_MY_DS\0"
.balign 4
_Lt_0013:	.ascii	"_MY_SS\0"
.balign 4
_Lt_0018:	.ascii	"\15""\0"
.balign 4
_Lt_001A:	.ascii	"\12""\0"
.balign 4
_Lt_001C:	.ascii	"\11""\0"

.section .bss
.balign 4
	.lcomm	_Lt_003E,44
.balign 4
	.lcomm	_ISR_DATA_START,1
.balign 4
	.lcomm	_TIMER_TICKS,4
.balign 4
	.lcomm	_OLD_ISR,4
.balign 4
	.lcomm	_ISR_DATA_END,1

.section .data
.balign 4
_Lt_0052:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\Debug.bi\0"
.balign 4
_Lt_005B:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\System.bi\0"
.balign 4
_BMASK:
.int 0
.int 1
.int 3
.int 7
.int 15
.int 31
.int 63
.int 127
.int 255
.int 511
.int 1023
.int 2047
.int 4095
.int 8191
.int 16383
.int 32767
.int 65535
.skip 4,0
.balign 4
_Lt_00E2:	.ascii	".\0"
.balign 4
_Lt_0102:	.ascii	"<Non installe/Not installed>\0"
.balign 4
_Lt_0146:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\Network.bi\0"
.balign 4
_Lt_0170:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\gui.bi\0"
.balign 4
_Lt_0289:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\Console.bi\0"
.balign 4
_Lt_0292:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\CpcdosCP.bi\0"
.balign 4
_Lt_030A:	.ascii	"-\0"
.balign 4
_Lt_031F:	.ascii	"_\0"

.section .bss

.globl _ZERO_FILL
.balign 4
	.comm	_ZERO_FILL,12

.globl _LA_DATE
.balign 4
	.comm	_LA_DATE,12

.globl _L_HEURE
.balign 4
	.comm	_L_HEURE,12

.globl __MEMOIRE_LIBRE_DEPART
.balign 4
	.comm	__MEMOIRE_LIBRE_DEPART,4

.globl __MEMOIRE_ACTUEL
.balign 4
	.comm	__MEMOIRE_ACTUEL,4

.globl __MEMOIRE__KRNL_OCCUPE
.balign 4
	.comm	__MEMOIRE__KRNL_OCCUPE,4

.globl __MEMOIRE_UTIL_POURCENT
.balign 4
	.comm	__MEMOIRE_UTIL_POURCENT,4

.globl __MEMOIRE_LIBRE_POURCENT
.balign 4
	.comm	__MEMOIRE_LIBRE_POURCENT,4

.globl __REPERTOIRE_DU_NOYAU_
.balign 4
	.comm	__REPERTOIRE_DU_NOYAU_,12

.globl __REPERTOIRE_ET_NOYAU
.balign 4
	.comm	__REPERTOIRE_ET_NOYAU,12

.globl _CX_APM_MODE
.balign 4
	.comm	_CX_APM_MODE,1

.section .data
.balign 4
_Lt_0325:	.ascii	"Dimanche\0"
.balign 4
_Lt_0326:	.ascii	"Lundi\0"
.balign 4
_Lt_0327:	.ascii	"Mardi\0"
.balign 4
_Lt_0328:	.ascii	"Mercredi\0"
.balign 4
_Lt_0329:	.ascii	"Jeudi\0"
.balign 4
_Lt_032A:	.ascii	"Vendredi\0"
.balign 4
_Lt_032B:	.ascii	"Samedi\0"
.balign 4
_Lt_032C:	.ascii	"Dim\0"
.balign 4
_Lt_032D:	.ascii	"Lun\0"
.balign 4
_Lt_032E:	.ascii	"Mar\0"
.balign 4
_Lt_032F:	.ascii	"Mer\0"
.balign 4
_Lt_0330:	.ascii	"Jeu\0"
.balign 4
_Lt_0331:	.ascii	"Ven\0"
.balign 4
_Lt_0332:	.ascii	"Sam\0"
.balign 4
_Lt_0333:	.ascii	"Sunday\0"
.balign 4
_Lt_0334:	.ascii	"Monday\0"
.balign 4
_Lt_0335:	.ascii	"Thesday\0"
.balign 4
_Lt_0336:	.ascii	"Wednesday\0"
.balign 4
_Lt_0337:	.ascii	"Thursday\0"
.balign 4
_Lt_0338:	.ascii	"Friday\0"
.balign 4
_Lt_0339:	.ascii	"Saturday\0"
.balign 4
_Lt_033A:	.ascii	"Sun\0"
.balign 4
_Lt_033B:	.ascii	"Mon\0"
.balign 4
_Lt_033C:	.ascii	"Tue\0"
.balign 4
_Lt_033D:	.ascii	"Wed\0"
.balign 4
_Lt_033E:	.ascii	"Thu\0"
.balign 4
_Lt_033F:	.ascii	"Fri\0"
.balign 4
_Lt_0340:	.ascii	"Sat\0"
.balign 4
_Lt_0341:	.ascii	"/\0"
.balign 4
_Lt_0342:	.ascii	"\\\0"
.balign 4
_Lt_0343:	.ascii	":\0"
.balign 4
_Lt_0344:	.ascii	"SS\0"
.balign 4
_Lt_0345:	.ascii	"MM\0"
.balign 4
_Lt_0346:	.ascii	"HH\0"
.balign 4
_Lt_0347:	.ascii	"DD\0"
.balign 4
_Lt_0348:	.ascii	"JJ\0"
.balign 4
_Lt_0349:	.ascii	"YY\0"
.balign 4
_Lt_034A:	.ascii	"YYYY\0"
.balign 4
_Lt_034B:	.ascii	"AA\0"
.balign 4
_Lt_034C:	.ascii	"AAAA\0"
.balign 4
_Lt_036B:	.ascii	"C:\\cpcdos\\Cpcdos-DEV\\os2.1\\Cpcdos\\include\\Cpcdos.bi\0"
.balign 4
_Lt_0374:	.ascii	"<Sans OS/No OS>\0"
.balign 4
_Lt_0396:	.ascii	" \0"
.balign 4
_Lt_03C6:	.ascii	" * Instanciation des fonctions systeme --> Allocation offset:0x\0"
.balign 4
_Lt_03C7:	.ascii	" Taille:\0"
.balign 4
_Lt_03C8:	.ascii	"29828\0"
.balign 4
_Lt_03C9:	.ascii	" octets\0"
.balign 4
_Lt_03D3:	.ascii	"Core\\System.bas\0"
.balign 4
_Lt_03D8:	.ascii	" * De-instanciation des fonctions systeme --> Desallocation offset:0x\0"
.balign 4
_Lt_03E9:	.ascii	"ALLOUERSTRING\0"
.balign 4
_Lt_03F0:	.ascii	"DESALLOUERSTRING\0"
.balign 4
_Lt_03FB:	.ascii	"ALLOUERSTRING_0\0"
.balign 4
_Lt_0407:	.ascii	"TAILLESTRING\0"
.balign 4
_Lt_0414:	.ascii	"UPDATE_MEMOIRE\0"
.balign 8
_Lt_0416:	.quad	0x4059000000000000
.balign 4
_Lt_041A:	.ascii	"GET_CPU_POURCENT\0"
.balign 4
_Lt_0420:	.ascii	"GET_MEMOIRE_LIBRE\0"
.balign 4
_Lt_0425:	.ascii	"GET_DBG_DEBUG\0"
.balign 4
_Lt_042C:	.ascii	"SET_DBG_DEBUG\0"
.balign 4
_Lt_0431:	.ascii	"GET_CPINTI_DEBUG\0"
.balign 4
_Lt_0438:	.ascii	"SET_CPINTI_DEBUG\0"
.balign 4
_Lt_043D:	.ascii	"GET_CPINTI_FD_DEBUG\0"
.balign 4
_Lt_0442:	.ascii	"SET_CPINTI_FD_DEBUG\0"
.balign 4
_Lt_0447:	.ascii	"GET_PRINTF_DEBUG\0"
.balign 4
_Lt_044C:	.ascii	"SET_PRINTF_DEBUG\0"
.balign 4
_Lt_0451:	.ascii	"CONVERT_DCB_BINAIRE\0"
.balign 4
_Lt_046B:	.ascii	"GET_RTC\0"
.balign 4
_Lt_0470:	.ascii	"GET_TIME\0"
.balign 4
_Lt_0475:	.ascii	"GET_MILLISECONDES\0"
.balign 4
_Lt_047A:	.ascii	"GET_SECONDES\0"
.balign 4
_Lt_047F:	.ascii	"GET_MINUTES\0"
.balign 4
_Lt_0484:	.ascii	"GET_HEURES\0"
.balign 4
_Lt_048A:	.ascii	"GET_SEMAINE\0"
.balign 4
_Lt_0490:	.ascii	"GET_JOUR\0"
.balign 4
_Lt_0495:	.ascii	"GET_MOIS\0"
.balign 4
_Lt_049A:	.ascii	"GET_ANNEE\0"
.balign 4
_Lt_049F:	.ascii	"GET_SIECLE\0"
.balign 4
_Lt_04A9:	.ascii	"GET_EXEENCOURS\0"
.balign 4
_Lt_04AD:	.ascii	"x\0"
.balign 4
_Lt_04B2:	.ascii	"TEST_RESOLUTION\0"
.balign 4
_Lt_04BA:	.ascii	"[SYSTEME] Test de l'existence de \0"
.balign 4
_Lt_04BB:	.ascii	"...\0"
.balign 4
_Lt_04C1:	.ascii	"[SYSTEM] Testing existence of \0"
.balign 4
_Lt_04CD:	.ascii	"[SYSTEME] \0"
.balign 4
_Lt_04CE:	.ascii	" support\202e par votre carte graphique!\0"
.balign 4
_Lt_04D4:	.ascii	"[SYSTEM] \0"
.balign 4
_Lt_04D5:	.ascii	" supported by your graphic card!\0"
.balign 4
_Lt_04DF:	.ascii	" N'EST PAS support\202e par votre carte graphique!\0"
.balign 4
_Lt_04E5:	.ascii	" IS NOT supported by your graphic card!\0"
.balign 4
_Lt_04F3:	.ascii	"[SYSTEME] Listage des resolutions d'ecran en \0"
.balign 4
_Lt_04F4:	.ascii	" bits\0"
.balign 4
_Lt_04F8:	.ascii	"[SYSTEM] Listing screen resolutions in \0"
.balign 4
_Lt_0503:	.ascii	"LISTE_RESOLUTION\0"
.balign 4
_Lt_0509:	.ascii	"cpc_sys.boot.bootscreen.scr_res\0"
.balign 4
_Lt_050B:	.ascii	"X\0"
.balign 4
_Lt_0510:	.ascii	"[SYSTEME] Boot screen : pas de changements '\0"
.balign 4
_Lt_0511:	.ascii	"' ... \0"
.balign 4
_Lt_0515:	.ascii	"[SYSTEM] Boot screen : No changing '\0"
.balign 4
_Lt_051D:	.ascii	"[SYSTEME] Mode console '\0"
.balign 4
_Lt_0521:	.ascii	"[SYSTEM] Console mode '\0"
.balign 4
_Lt_052B:	.ascii	"[OK]\0"
.balign 4
_Lt_052F:	.ascii	"[SYSTEME] Vous etes en mode NOGUI, la resolution d'ecran n'a donc pas ete appliquee, mais validee !\0"
.balign 4
_Lt_0531:	.ascii	"[SYSTEM] You are in NOGUI mode, screen resolution has no applied, but validated!\0"
.balign 4
_Lt_0534:	.ascii	"SET_RESOLUTION\0"
.balign 4
_Lt_0550:	.ascii	"[SYSTEME] Changement en '\0"
.balign 4
_Lt_0558:	.ascii	"[SYSTEM] Changing to '\0"
.balign 4
_Lt_0568:	.ascii	"[OK] PTR:[0x\0"
.balign 4
_Lt_0569:	.ascii	"]\0"
.balign 4
_Lt_0571:	.ascii	"[ERREUR]\0"
.balign 4
_Lt_0573:	.ascii	"[ERROR]\0"
.balign 4
_Lt_0578:	.ascii	"[SYSTEM] YOu are un NOGUI mode, screen resolution has no applied, but validated!\0"
.balign 8
_Lt_057C:	.quad	0x4000000000000000
.balign 4
_Lt_0580:	.ascii	"UPDATE_INFORMATIONECRAN\0"
.balign 4
_Lt_0585:	.ascii	"GET_ECRANDRV\0"
.balign 4
_Lt_058A:	.ascii	"GET_ECRANMEMOIRE\0"
.balign 4
_Lt_058F:	.ascii	"GET_ECRANHZ\0"
.balign 4
_Lt_0594:	.ascii	"GET_ECRANPTR\0"
.balign 4
_Lt_0599:	.ascii	"GET_RESOLUTIONMODE\0"
.balign 4
_Lt_05A0:	.ascii	"GET_CONS_XY\0"
.balign 4
_Lt_05A5:	.ascii	"GET_CONS_X\0"
.balign 4
_Lt_05AA:	.ascii	"GET_CONS_Y\0"
.balign 4
_Lt_05B3:	.ascii	"GET_RESOLUTION\0"
.balign 4
_Lt_05BA:	.ascii	"GET_RESOLUTION_XY\0"
.balign 4
_Lt_05BF:	.ascii	"GET_RESOLUTION_X\0"
.balign 4
_Lt_05C4:	.ascii	"GET_RESOLUTION_Y\0"
.balign 4
_Lt_05C9:	.ascii	"GET_BITSPARPIXELS\0"
.balign 4
_Lt_05D6:	.ascii	"GET_OCTETSPARPIXELS\0"
.balign 4
_Lt_05DD:	.ascii	"GET_FPS\0"
.balign 8
_Lt_05DF:	.quad	0x3FF0000000000000
.balign 4
_Lt_05E9:	.ascii	"[SYSTEME] Creation du repertoire '\0"
.balign 4
_Lt_05EA:	.ascii	"'\0"
.balign 4
_Lt_05EF:	.ascii	"[SYSTEM] Creating path '\0"
.balign 4
_Lt_0613:	.ascii	"[SYSTEME] Impossible de creer le repertoire, nom dossier trop long.\0"
.balign 4
_Lt_0616:	.ascii	"[SYSTEM] Unable to create directory, folder name too large\0"
.balign 4
_Lt_061D:	.ascii	"CREER_REPERTOIRE\0"
.balign 4
_Lt_062C:	.ascii	"CREER_REPERTOIRE__FBCRT\0"
.balign 4
_Lt_0635:	.ascii	"..\0"
.balign 4
_Lt_063C:	.ascii	"[SYSTEME] Trop d'elements, veuillez filtrer.\0"
.balign 4
_Lt_063E:	.ascii	"[SYSTEM] Too much elements, please to filter\0"
.balign 4
_Lt_0661:	.ascii	"LISTER_REPERTOIRE\0"
.balign 4
_Lt_067F:	.ascii	"<\0"
.balign 4
_Lt_0685:	.ascii	">\0"
.balign 4
_Lt_068B:	.ascii	"\"\0"
.balign 4
_Lt_0691:	.ascii	"|\0"
.balign 4
_Lt_0697:	.ascii	"?\0"
.balign 4
_Lt_069D:	.ascii	"*\0"
.balign 4
_Lt_06B5:	.ascii	"CHECK_NOMAUTORISE\0"
.balign 4
_Lt_06D8:	.ascii	"Window(\0"
.balign 4
_Lt_06DA:	.ascii	") #\0"
.balign 4
_Lt_06E5:	.ascii	"Button(\0"
.balign 4
_Lt_06F1:	.ascii	"PictureBox(\0"
.balign 4
_Lt_06FD:	.ascii	"TextBloc(\0"
.balign 4
_Lt_0709:	.ascii	"TextBox(\0"
.balign 4
_Lt_0715:	.ascii	"CheckBox(\0"
.balign 4
_Lt_0721:	.ascii	"ProgressBar(\0"
.balign 4
_Lt_0726:	.ascii	"null\0"
.balign 4
_Lt_0728:	.ascii	"GETHANDLETYPE\0"
.balign 4
_Lt_0739:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor__System
