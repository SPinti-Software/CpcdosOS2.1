	.intel_syntax noprefix

.section .text
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13BIT_CONVERTERERPv
__ZN21_SYSTEME_CPCDOS_OSX__13BIT_CONVERTERERPv:
push ebp
mov ebp, esp
sub esp, 260
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-120], eax
push offset _Lt_03E9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-124], eax
.Lt_03C4:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-28]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_GfxImageInfo
add esp, 28
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-116]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push 1
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_03C8
push -1
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push 24
push offset _Lt_03C7
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
push 1
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
cmp dword ptr [ebp-20], eax
je .Lt_03D0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _fb_GfxImageCreate
add esp, 20
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-136], 0
lea eax, [ebp-136]
push eax
lea eax, [ebp-40]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-132], 0
lea eax, [ebp-132]
push eax
mov dword ptr [ebp-128], 0
lea eax, [ebp-128]
push eax
push dword ptr [ebp-8]
call _fb_GfxImageInfo
add esp, 28
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push -1
push dword ptr [ebp-32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_03D5
push -1
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push 33
push offset _Lt_03D4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-248], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-252], eax
jmp .Lt_03DC
.Lt_03DF:
push 1
push dword ptr [ebp-12]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp-32]
imul eax, dword ptr [ebp-248]
mov ebx, dword ptr [ebp-40]
add ebx, eax
push ebx
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp-28]
imul ebx, dword ptr [ebp-248]
mov eax, dword ptr [ebp-36]
add eax, ebx
push eax
call _fb_GfxImageConvertRow
add esp, 24
.Lt_03DD:
inc dword ptr [ebp-248]
.Lt_03DC:
mov eax, dword ptr [ebp-252]
cmp dword ptr [ebp-248], eax
jle .Lt_03DF
.Lt_03DE:
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp-8]
call _fb_UIntToStr
add esp, 4
push eax
push 15
push offset _Lt_03E3
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-244]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03D0:
.Lt_03CF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_03C5:
push dword ptr [ebp-124]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-120]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LIBPNG_ERROR_CALLBACK
_LIBPNG_ERROR_CALLBACK:
push ebp
mov ebp, esp
sub esp, 160
.Lt_03EB:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-156], eax
push offset _Lt_0401
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-160], eax
push 0
push -1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_03ED
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 2
push offset _Lt_03F2
push -1
push 0
push dword ptr [ebp+12]
push -1
push 3
push offset _Lt_03F0
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03F9:
push 0
push 0
push 0
push 8
push 0
call _fb_GfxScreen
add esp, 20
test eax, eax
je .Lt_03FA
lea eax, [.Lt_03FA]
push eax
lea eax, [.Lt_03F9]
push eax
push offset _Lt_03E1
push 62
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_03FA:
push 1
push 2
push offset _Lt_03F2
push -1
push 0
push dword ptr [ebp+12]
push -1
push 3
push offset _Lt_03F0
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03EC:
push dword ptr [ebp-160]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-156]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_PNGE8FBSTRINGii
__ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_PNGE8FBSTRINGii:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0407
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_0403:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_PNGE8FBSTRINGiiRiRi
add esp, 24
mov dword ptr [ebp-4], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0404:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_JPGE8FBSTRINGii
__ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_JPGE8FBSTRINGii:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_040D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_0409:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_JPGE8FBSTRINGiiRiRi
add esp, 24
mov dword ptr [ebp-4], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_040A:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__7TRANS32EjjPv
__ZN21_SYSTEME_CPCDOS_OSX__7TRANS32EjjPv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0414
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_040F:
mov eax, dword ptr [ebp+12]
and eax, 16777215
cmp eax, 16711935
je .Lt_0412
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0410
jmp .Lt_0411
.Lt_0412:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_0411:
.Lt_0410:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_PNGE8FBSTRINGiiRiRi
__ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_PNGE8FBSTRINGiiRiRi:
push ebp
mov ebp, esp
sub esp, 280
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-156], eax
push offset _Lt_0407
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-160], eax
.Lt_0416:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-12]
mov dword ptr [ebp-44], eax
lea eax, [ebp-12]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], 8
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 1
mov dword ptr [ebp-24], 8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 7
push offset _Lt_0419
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fopen
add esp, 8
mov dword ptr [ebp-48], eax
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-140]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-144], 0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_041B
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_041D
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 6
push offset _Lt_0423
push -1
push -1
push dword ptr [ebp+12]
push 48
push offset _Lt_0422
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_041C
.Lt_041D:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 6
push offset _Lt_0423
push -1
push -1
push dword ptr [ebp+12]
push 38
push offset _Lt_042A
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
.Lt_041C:
.Lt_041B:
.Lt_041A:
cmp dword ptr [ebp-48], 0
jne .Lt_042F
push 0
push -1
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_0430
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_0432
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0432
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-116]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0417
.Lt_042F:
.Lt_042E:
push dword ptr [ebp-48]
push 8
push 1
lea eax, [ebp-12]
push eax
call _fread
add esp, 16
cmp eax, 8
je .Lt_043B
push 0
push -1
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_043C
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_0432
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0432
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-116]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-48]
call _fclose
add esp, 4
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0417
.Lt_043B:
.Lt_043A:
push 8
push 0
lea eax, [ebp-12]
push eax
call _png_sig_cmp
add esp, 12
test eax, eax
je .Lt_0446
push 0
push -1
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_0447
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_0432
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0432
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-116]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-48]
call _fclose
add esp, 4
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0417
.Lt_0446:
.Lt_0445:
push 0
push offset _LIBPNG_ERROR_CALLBACK
push 0
push offset _Lt_041F
call _png_create_read_struct
add esp, 16
mov dword ptr [ebp-148], eax
cmp dword ptr [ebp-148], 0
jne .Lt_0452
push 0
push -1
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_0453
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_0432
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0432
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-116]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-48]
call _fclose
add esp, 4
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0417
.Lt_0452:
.Lt_0451:
push dword ptr [ebp-148]
call _png_create_info_struct
add esp, 4
mov dword ptr [ebp-152], eax
cmp dword ptr [ebp-152], 0
jne .Lt_045D
push 0
push -1
push 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 8
push offset _Lt_045E
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_0432
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0432
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-116]
push eax
push 11
push offset _Lt_03EF
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-256]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-48]
call _fclose
add esp, 4
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0417
.Lt_045D:
.Lt_045C:
push dword ptr [ebp-48]
push dword ptr [ebp-148]
call _png_init_io
add esp, 8
push 8
push dword ptr [ebp-148]
call _png_set_sig_bytes
add esp, 8
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_read_info
add esp, 8
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_get_image_width
add esp, 8
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_get_image_height
add esp, 8
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_get_bit_depth
add esp, 8
movzx ebx, al
mov dword ptr [ebp-52], ebx
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_get_channels
add esp, 8
movzx ebx, al
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-56]
imul ebx, dword ptr [ebp-52]
mov dword ptr [ebp-60], ebx
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_get_color_type
add esp, 8
movzx ebx, al
mov dword ptr [ebp-64], ebx
cmp dword ptr [ebp-64], 2
jne .Lt_0468
.Lt_0469:
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_046B
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_046D
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_046E
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_046C
.Lt_046D:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_047D
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push 28
push offset _Lt_047C
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
.Lt_046C:
.Lt_046B:
.Lt_046A:
jmp .Lt_0467
.Lt_0468:
cmp dword ptr [ebp-64], 6
jne .Lt_0488
.Lt_0489:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_048B
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_048D
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push 53
push offset _Lt_048E
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_048C
.Lt_048D:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_047D
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push 29
push offset _Lt_0499
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
.Lt_048C:
.Lt_048B:
.Lt_048A:
jmp .Lt_0467
.Lt_0488:
cmp dword ptr [ebp-64], 0
jne .Lt_04A4
.Lt_04A5:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04A7
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04A9
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push 64
push offset _Lt_04AA
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04A8
.Lt_04A9:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
push dword ptr [ebp-56]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_047D
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push 38
push offset _Lt_04B5
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04A8:
.Lt_04A7:
.Lt_04A6:
jmp .Lt_0467
.Lt_04A4:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04C2
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04C4
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 43
push offset _Lt_04C5
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04C3
.Lt_04C4:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 36
push offset _Lt_04C7
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04C3:
.Lt_04C2:
.Lt_04C1:
mov dword ptr [ebp-4], 0
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0417
.Lt_04C0:
.Lt_0467:
push 0
push 0
push 4294902015
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _fb_GfxImageCreate
add esp, 20
mov dword ptr [ebp-144], eax
mov eax, dword ptr [ebp-144]
add eax, 32
mov dword ptr [ebp-164], eax
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_read_update_info
add esp, 8
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_get_rowbytes
add esp, 8
mov dword ptr [ebp-68], eax
push 1
push dword ptr [ebp-68]
call _calloc
add esp, 8
mov dword ptr [ebp-168], eax
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04CA
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 10
push offset _Lt_04CC
push -1
push -1
push dword ptr [ebp-68]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push 8
push dword ptr [ebp-168]
call _fb_HEXEx_p
add esp, 8
push eax
push 15
push offset _Lt_04CB
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04C9
.Lt_04CA:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 10
push offset _Lt_04CC
push -1
push -1
push dword ptr [ebp-68]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push 8
push dword ptr [ebp-168]
call _fb_HEXEx_p
add esp, 8
push eax
push 15
push offset _Lt_04D2
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04C9:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-184], 0
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
dec ebx
mov dword ptr [ebp-188], ebx
jmp .Lt_04D9
.Lt_04DC:
inc dword ptr [ebp-104]
fild dword ptr [ebp-104]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [eax]
imul ecx, dword ptr [ebx]
push ecx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_057F]
fxch st(1)
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_04DE
mov dword ptr [ebp-104], 0
push 0
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
.Lt_04DE:
.Lt_04DD:
push 0
push dword ptr [ebp-168]
push dword ptr [ebp-148]
call _png_read_row
add esp, 12
cmp dword ptr [ebp-64], 2
jne .Lt_04E0
.Lt_04E1:
push 1
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
push dword ptr [ebp+16]
push dword ptr [ebp-164]
push 24
push dword ptr [ebp-168]
call _fb_GfxImageConvertRow
add esp, 24
mov ecx, dword ptr [ebp-144]
mov dword ptr [ebp-192], ecx
push offset _Lt_03E1
push 252
push dword ptr [ebp-192]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0580
jmp eax
.Lt_0580:
mov eax, dword ptr [ebp-192]
mov ecx, dword ptr [eax+16]
add dword ptr [ebp-164], ecx
jmp .Lt_04DF
.Lt_04E0:
cmp dword ptr [ebp-64], 6
jne .Lt_04E3
.Lt_04E4:
cmp dword ptr [ebp+16], 32
jne .Lt_04E6
.Lt_04E7:
mov dword ptr [ebp-192], 0
mov ecx, dword ptr [ebp-68]
dec ecx
mov dword ptr [ebp-196], ecx
jmp .Lt_04E9
.Lt_04EC:
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-204], ecx
push offset _Lt_03E1
push 260
push dword ptr [ebp-204]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0581
jmp eax
.Lt_0581:
mov eax, dword ptr [ebp-204]
add eax, dword ptr [ebp-192]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-200], ecx
push offset _Lt_03E1
push 260
push dword ptr [ebp-200]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0582
jmp eax
.Lt_0582:
mov eax, dword ptr [ebp-200]
mov cl, byte ptr [ebx+2]
mov byte ptr [eax], cl
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-212], ecx
push offset _Lt_03E1
push 261
push dword ptr [ebp-212]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0583
jmp eax
.Lt_0583:
mov eax, dword ptr [ebp-212]
add eax, dword ptr [ebp-192]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-208], ecx
push offset _Lt_03E1
push 261
push dword ptr [ebp-208]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0584
jmp eax
.Lt_0584:
mov eax, dword ptr [ebp-208]
mov cl, byte ptr [ebx+1]
mov byte ptr [eax+1], cl
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-220], ecx
push offset _Lt_03E1
push 262
push dword ptr [ebp-220]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0585
jmp eax
.Lt_0585:
mov eax, dword ptr [ebp-220]
add eax, dword ptr [ebp-192]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-216], ecx
push offset _Lt_03E1
push 262
push dword ptr [ebp-216]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0586
jmp eax
.Lt_0586:
mov eax, dword ptr [ebp-216]
mov cl, byte ptr [ebx]
mov byte ptr [eax+2], cl
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-228], ecx
push offset _Lt_03E1
push 263
push dword ptr [ebp-228]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0587
jmp eax
.Lt_0587:
mov eax, dword ptr [ebp-228]
add eax, dword ptr [ebp-192]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-224], ecx
push offset _Lt_03E1
push 263
push dword ptr [ebp-224]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0588
jmp eax
.Lt_0588:
mov eax, dword ptr [ebp-224]
mov cl, byte ptr [ebx+3]
mov byte ptr [eax+3], cl
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-232], ecx
push offset _Lt_03E1
push 269
push dword ptr [ebp-232]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0589
jmp eax
.Lt_0589:
mov eax, dword ptr [ebp-232]
movzx ecx, byte ptr [eax]
cmp ecx, 255
jne .Lt_04F7
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-236], ecx
push offset _Lt_03E1
push 270
push dword ptr [ebp-236]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_058A
jmp eax
.Lt_058A:
mov eax, dword ptr [ebp-236]
movzx ecx, byte ptr [eax+1]
cmp ecx, 255
jne .Lt_04FA
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-240], ecx
push offset _Lt_03E1
push 271
push dword ptr [ebp-240]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_058B
jmp eax
.Lt_058B:
mov eax, dword ptr [ebp-240]
movzx ecx, byte ptr [eax+2]
cmp ecx, 255
jne .Lt_04FD
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-244], ecx
push offset _Lt_03E1
push 272
push dword ptr [ebp-244]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_058C
jmp eax
.Lt_058C:
mov eax, dword ptr [ebp-244]
movzx ecx, byte ptr [eax+3]
test ecx, ecx
jne .Lt_0500
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-248], ecx
push offset _Lt_03E1
push 273
push dword ptr [ebp-248]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_058D
jmp eax
.Lt_058D:
mov eax, dword ptr [ebp-248]
mov byte ptr [eax], 255
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-252], eax
push offset _Lt_03E1
push 274
push dword ptr [ebp-252]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_058E
jmp eax
.Lt_058E:
mov eax, dword ptr [ebp-252]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-256], eax
push offset _Lt_03E1
push 275
push dword ptr [ebp-256]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_058F
jmp eax
.Lt_058F:
mov eax, dword ptr [ebp-256]
mov byte ptr [eax+2], 255
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-260], eax
push offset _Lt_03E1
push 276
push dword ptr [ebp-260]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0590
jmp eax
.Lt_0590:
mov eax, dword ptr [ebp-260]
mov byte ptr [eax+3], 0
mov dword ptr [ebp-80], 1
.Lt_0500:
.Lt_04FF:
.Lt_04FD:
.Lt_04FC:
.Lt_04FA:
.Lt_04F9:
.Lt_04F7:
.Lt_04F6:
add dword ptr [ebp-164], 4
.Lt_04EA:
add dword ptr [ebp-192], 4
.Lt_04E9:
mov eax, dword ptr [ebp-196]
cmp dword ptr [ebp-192], eax
jle .Lt_04EC
.Lt_04EB:
jmp .Lt_04E5
.Lt_04E6:
cmp dword ptr [ebp+16], 24
jne .Lt_0505
.Lt_0506:
mov dword ptr [ebp-196], 0
mov eax, dword ptr [ebp-68]
dec eax
mov dword ptr [ebp-200], eax
jmp .Lt_0508
.Lt_050B:
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-208], eax
push offset _Lt_03E1
push 295
push dword ptr [ebp-208]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0591
jmp eax
.Lt_0591:
mov eax, dword ptr [ebp-208]
add eax, dword ptr [ebp-196]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-204], ecx
push offset _Lt_03E1
push 295
push dword ptr [ebp-204]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0592
jmp eax
.Lt_0592:
mov eax, dword ptr [ebp-204]
mov cl, byte ptr [ebx+2]
mov byte ptr [eax], cl
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-216], ecx
push offset _Lt_03E1
push 296
push dword ptr [ebp-216]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0593
jmp eax
.Lt_0593:
mov eax, dword ptr [ebp-216]
add eax, dword ptr [ebp-196]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-212], ecx
push offset _Lt_03E1
push 296
push dword ptr [ebp-212]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0594
jmp eax
.Lt_0594:
mov eax, dword ptr [ebp-212]
mov cl, byte ptr [ebx+1]
mov byte ptr [eax+1], cl
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-224], ecx
push offset _Lt_03E1
push 297
push dword ptr [ebp-224]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0595
jmp eax
.Lt_0595:
mov eax, dword ptr [ebp-224]
add eax, dword ptr [ebp-196]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-220], ecx
push offset _Lt_03E1
push 297
push dword ptr [ebp-220]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0596
jmp eax
.Lt_0596:
mov eax, dword ptr [ebp-220]
mov cl, byte ptr [ebx]
mov byte ptr [eax+2], cl
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-232], ecx
push offset _Lt_03E1
push 298
push dword ptr [ebp-232]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0597
jmp eax
.Lt_0597:
mov eax, dword ptr [ebp-232]
add eax, dword ptr [ebp-196]
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-228], ecx
push offset _Lt_03E1
push 298
push dword ptr [ebp-228]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0598
jmp eax
.Lt_0598:
mov eax, dword ptr [ebp-228]
mov cl, byte ptr [ebx+3]
mov byte ptr [eax+3], cl
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-236], ecx
push offset _Lt_03E1
push 304
push dword ptr [ebp-236]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0599
jmp eax
.Lt_0599:
mov eax, dword ptr [ebp-236]
movzx ecx, byte ptr [eax]
cmp ecx, 255
jne .Lt_0516
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-240], ecx
push offset _Lt_03E1
push 305
push dword ptr [ebp-240]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_059A
jmp eax
.Lt_059A:
mov eax, dword ptr [ebp-240]
movzx ecx, byte ptr [eax+1]
cmp ecx, 255
jne .Lt_0519
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-244], ecx
push offset _Lt_03E1
push 306
push dword ptr [ebp-244]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_059B
jmp eax
.Lt_059B:
mov eax, dword ptr [ebp-244]
movzx ecx, byte ptr [eax+2]
cmp ecx, 255
jne .Lt_051C
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-248], ecx
push offset _Lt_03E1
push 307
push dword ptr [ebp-248]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_059C
jmp eax
.Lt_059C:
mov eax, dword ptr [ebp-248]
movzx ecx, byte ptr [eax+3]
test ecx, ecx
jne .Lt_051F
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-252], ecx
push offset _Lt_03E1
push 308
push dword ptr [ebp-252]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_059D
jmp eax
.Lt_059D:
mov eax, dword ptr [ebp-252]
mov byte ptr [eax], 255
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-256], eax
push offset _Lt_03E1
push 309
push dword ptr [ebp-256]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_059E
jmp eax
.Lt_059E:
mov eax, dword ptr [ebp-256]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-260], eax
push offset _Lt_03E1
push 310
push dword ptr [ebp-260]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_059F
jmp eax
.Lt_059F:
mov eax, dword ptr [ebp-260]
mov byte ptr [eax+2], 255
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-264], eax
push offset _Lt_03E1
push 311
push dword ptr [ebp-264]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A0
jmp eax
.Lt_05A0:
mov eax, dword ptr [ebp-264]
mov byte ptr [eax+3], 0
mov dword ptr [ebp-80], 1
.Lt_051F:
.Lt_051E:
.Lt_051C:
.Lt_051B:
.Lt_0519:
.Lt_0518:
.Lt_0516:
.Lt_0515:
add dword ptr [ebp-164], 4
.Lt_0509:
add dword ptr [ebp-196], 4
.Lt_0508:
mov eax, dword ptr [ebp-200]
cmp dword ptr [ebp-196], eax
jle .Lt_050B
.Lt_050A:
mov dword ptr [ebp-196], 0
mov eax, dword ptr [ebp-68]
dec eax
mov dword ptr [ebp-200], eax
jmp .Lt_0525
.Lt_0528:
add dword ptr [ebp-164], -4
.Lt_0526:
add dword ptr [ebp-196], 4
.Lt_0525:
mov eax, dword ptr [ebp-200]
cmp dword ptr [ebp-196], eax
jle .Lt_0528
.Lt_0527:
mov eax, dword ptr [ebp-144]
mov dword ptr [ebp-192], eax
push offset _Lt_03E1
push 325
push dword ptr [ebp-192]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A1
jmp eax
.Lt_05A1:
mov eax, dword ptr [ebp-192]
mov ecx, dword ptr [eax+16]
add dword ptr [ebp-164], ecx
jmp .Lt_04E5
.Lt_0505:
cmp dword ptr [ebp+16], 15
je .Lt_052B
.Lt_052C:
cmp dword ptr [ebp+16], 16
jne .Lt_052A
.Lt_052B:
mov dword ptr [ebp-196], 0
mov ecx, dword ptr [ebp-68]
dec ecx
mov dword ptr [ebp-200], ecx
jmp .Lt_052E
.Lt_0531:
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-204], ecx
push offset _Lt_03E1
push 328
push dword ptr [ebp-204]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A2
jmp eax
.Lt_05A2:
mov eax, dword ptr [ebp-204]
add eax, dword ptr [ebp-196]
movzx ecx, byte ptr [eax+2]
mov dword ptr [ebp-84], ecx
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-208], ecx
push offset _Lt_03E1
push 329
push dword ptr [ebp-208]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A3
jmp eax
.Lt_05A3:
mov eax, dword ptr [ebp-208]
add eax, dword ptr [ebp-196]
movzx ecx, byte ptr [eax+1]
mov dword ptr [ebp-88], ecx
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-212], ecx
push offset _Lt_03E1
push 330
push dword ptr [ebp-212]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A4
jmp eax
.Lt_05A4:
mov eax, dword ptr [ebp-212]
add eax, dword ptr [ebp-196]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-92], ecx
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-216], ecx
push offset _Lt_03E1
push 331
push dword ptr [ebp-216]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A5
jmp eax
.Lt_05A5:
mov eax, dword ptr [ebp-216]
add eax, dword ptr [ebp-196]
movzx ecx, byte ptr [eax+3]
mov dword ptr [ebp-96], ecx
cmp dword ptr [ebp-84], 255
jne .Lt_0537
cmp dword ptr [ebp-88], 255
jne .Lt_0539
cmp dword ptr [ebp-92], 255
jne .Lt_053B
cmp dword ptr [ebp-96], 0
jne .Lt_053D
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-220], ecx
push offset _Lt_03E1
push 339
push dword ptr [ebp-220]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A6
jmp eax
.Lt_05A6:
mov eax, dword ptr [ebp-220]
add eax, dword ptr [ebp-196]
mov byte ptr [eax+2], 255
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-224], eax
push offset _Lt_03E1
push 340
push dword ptr [ebp-224]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A7
jmp eax
.Lt_05A7:
mov eax, dword ptr [ebp-224]
add eax, dword ptr [ebp-196]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-228], eax
push offset _Lt_03E1
push 341
push dword ptr [ebp-228]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A8
jmp eax
.Lt_05A8:
mov eax, dword ptr [ebp-228]
add eax, dword ptr [ebp-196]
mov byte ptr [eax], 255
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-232], eax
push offset _Lt_03E1
push 342
push dword ptr [ebp-232]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05A9
jmp eax
.Lt_05A9:
mov eax, dword ptr [ebp-232]
add eax, dword ptr [ebp-196]
mov byte ptr [eax+3], 255
mov dword ptr [ebp-80], 1
.Lt_053D:
.Lt_053C:
.Lt_053B:
.Lt_053A:
.Lt_0539:
.Lt_0538:
.Lt_0537:
.Lt_0536:
.Lt_052F:
add dword ptr [ebp-196], 4
.Lt_052E:
mov eax, dword ptr [ebp-200]
cmp dword ptr [ebp-196], eax
jle .Lt_0531
.Lt_0530:
push 1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
push dword ptr [ebp+16]
push dword ptr [ebp-164]
push 32
push dword ptr [ebp-168]
call _fb_GfxImageConvertRow
add esp, 24
mov eax, dword ptr [ebp-144]
mov dword ptr [ebp-192], eax
push offset _Lt_03E1
push 350
push dword ptr [ebp-192]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05AA
jmp eax
.Lt_05AA:
mov eax, dword ptr [ebp-192]
mov ecx, dword ptr [eax+16]
add dword ptr [ebp-164], ecx
.Lt_052A:
.Lt_04E5:
jmp .Lt_04DF
.Lt_04E3:
cmp dword ptr [ebp-64], 0
jne .Lt_0543
.Lt_0544:
cmp dword ptr [ebp+16], 24
je .Lt_0547
.Lt_0548:
cmp dword ptr [ebp+16], 32
jne .Lt_0546
.Lt_0547:
mov dword ptr [ebp-192], 0
mov ecx, dword ptr [ebp-68]
dec ecx
mov dword ptr [ebp-196], ecx
jmp .Lt_054A
.Lt_054D:
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-204], ecx
push offset _Lt_03E1
push 357
push dword ptr [ebp-204]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05AB
jmp eax
.Lt_05AB:
mov eax, dword ptr [ebp-204]
add eax, dword ptr [ebp-192]
movzx ecx, byte ptr [eax]
shl ecx, 16
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-208], eax
push offset _Lt_03E1
push 357
push dword ptr [ebp-208]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05AC
jmp eax
.Lt_05AC:
mov eax, dword ptr [ebp-208]
add eax, dword ptr [ebp-192]
movzx ecx, byte ptr [eax]
shl ecx, 8
or ebx, ecx
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-212], ecx
push offset _Lt_03E1
push 357
push dword ptr [ebp-212]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05AD
jmp eax
.Lt_05AD:
mov eax, dword ptr [ebp-212]
add eax, dword ptr [ebp-192]
movzx ecx, byte ptr [eax]
or ebx, ecx
or ebx, 4278190080
mov ecx, dword ptr [ebp-164]
mov dword ptr [ebp-200], ecx
push offset _Lt_03E1
push 357
push dword ptr [ebp-200]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05AE
jmp eax
.Lt_05AE:
mov eax, dword ptr [ebp-200]
mov dword ptr [eax], ebx
add dword ptr [ebp-164], 4
.Lt_054B:
inc dword ptr [ebp-192]
.Lt_054A:
mov ebx, dword ptr [ebp-196]
cmp dword ptr [ebp-192], ebx
jle .Lt_054D
.Lt_054C:
jmp .Lt_0545
.Lt_0546:
cmp dword ptr [ebp+16], 15
je .Lt_0553
.Lt_0554:
cmp dword ptr [ebp+16], 16
jne .Lt_0552
.Lt_0553:
mov dword ptr [ebp-192], 0
mov ebx, dword ptr [ebp-68]
dec ebx
mov dword ptr [ebp-196], ebx
jmp .Lt_0556
.Lt_0559:
mov ebx, dword ptr [ebp-168]
mov dword ptr [ebp-200], ebx
push offset _Lt_03E1
push 362
push dword ptr [ebp-200]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05AF
jmp eax
.Lt_05AF:
mov eax, dword ptr [ebp-200]
add eax, dword ptr [ebp-192]
movzx ebx, byte ptr [eax+2]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-168]
mov dword ptr [ebp-204], ebx
push offset _Lt_03E1
push 363
push dword ptr [ebp-204]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B0
jmp eax
.Lt_05B0:
mov eax, dword ptr [ebp-204]
add eax, dword ptr [ebp-192]
movzx ebx, byte ptr [eax+1]
mov dword ptr [ebp-88], ebx
mov ebx, dword ptr [ebp-168]
mov dword ptr [ebp-208], ebx
push offset _Lt_03E1
push 364
push dword ptr [ebp-208]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B1
jmp eax
.Lt_05B1:
mov eax, dword ptr [ebp-208]
add eax, dword ptr [ebp-192]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp-168]
mov dword ptr [ebp-212], ebx
push offset _Lt_03E1
push 365
push dword ptr [ebp-212]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B2
jmp eax
.Lt_05B2:
mov eax, dword ptr [ebp-212]
add eax, dword ptr [ebp-192]
movzx ebx, byte ptr [eax+3]
mov dword ptr [ebp-96], ebx
cmp dword ptr [ebp-84], 255
jne .Lt_055F
cmp dword ptr [ebp-88], 255
jne .Lt_0561
cmp dword ptr [ebp-92], 255
jne .Lt_0563
cmp dword ptr [ebp-96], 0
jne .Lt_0565
mov ebx, dword ptr [ebp-168]
mov dword ptr [ebp-216], ebx
push offset _Lt_03E1
push 373
push dword ptr [ebp-216]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B3
jmp eax
.Lt_05B3:
mov eax, dword ptr [ebp-216]
add eax, dword ptr [ebp-192]
mov byte ptr [eax+2], 255
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-220], eax
push offset _Lt_03E1
push 374
push dword ptr [ebp-220]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B4
jmp eax
.Lt_05B4:
mov eax, dword ptr [ebp-220]
add eax, dword ptr [ebp-192]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-224], eax
push offset _Lt_03E1
push 375
push dword ptr [ebp-224]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B5
jmp eax
.Lt_05B5:
mov eax, dword ptr [ebp-224]
add eax, dword ptr [ebp-192]
mov byte ptr [eax], 255
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-228], eax
push offset _Lt_03E1
push 376
push dword ptr [ebp-228]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B6
jmp eax
.Lt_05B6:
mov eax, dword ptr [ebp-228]
add eax, dword ptr [ebp-192]
mov byte ptr [eax+3], 255
.Lt_0565:
.Lt_0564:
.Lt_0563:
.Lt_0562:
.Lt_0561:
.Lt_0560:
.Lt_055F:
.Lt_055E:
add dword ptr [ebp-164], 4
.Lt_0557:
add dword ptr [ebp-192], 4
.Lt_0556:
mov eax, dword ptr [ebp-196]
cmp dword ptr [ebp-192], eax
jle .Lt_0559
.Lt_0558:
mov dword ptr [ebp-192], 0
mov eax, dword ptr [ebp-68]
dec eax
mov dword ptr [ebp-196], eax
jmp .Lt_056B
.Lt_056E:
push 0
push 4
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-200], eax
push offset _Lt_03E1
push 384
push dword ptr [ebp-200]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B7
jmp eax
.Lt_05B7:
mov eax, dword ptr [ebp-200]
add eax, dword ptr [ebp-192]
movzx ebx, byte ptr [eax]
shl ebx, 16
mov eax, dword ptr [ebp-168]
mov dword ptr [ebp-204], eax
push offset _Lt_03E1
push 384
push dword ptr [ebp-204]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B8
jmp eax
.Lt_05B8:
mov eax, dword ptr [ebp-204]
add eax, dword ptr [ebp-192]
movzx ecx, byte ptr [eax]
shl ecx, 8
or ebx, ecx
mov ecx, dword ptr [ebp-168]
mov dword ptr [ebp-208], ecx
push offset _Lt_03E1
push 384
push dword ptr [ebp-208]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05B9
jmp eax
.Lt_05B9:
mov eax, dword ptr [ebp-208]
add eax, dword ptr [ebp-192]
movzx ecx, byte ptr [eax]
or ebx, ecx
or ebx, 4278190080
push ebx
fild dword ptr [ebp-184]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-192]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-144]
call _fb_GfxPset
add esp, 24
.Lt_056C:
inc dword ptr [ebp-192]
.Lt_056B:
mov ebx, dword ptr [ebp-196]
cmp dword ptr [ebp-192], ebx
jle .Lt_056E
.Lt_056D:
jmp .Lt_0545
.Lt_0552:
push dword ptr [ebp-68]
push dword ptr [ebp-168]
push dword ptr [ebp-164]
call _memcpy
add esp, 12
mov ebx, dword ptr [ebp-100]
add dword ptr [ebp-164], ebx
.Lt_0572:
.Lt_0545:
.Lt_0543:
.Lt_04DF:
.Lt_04DA:
inc dword ptr [ebp-184]
.Lt_04D9:
mov ebx, dword ptr [ebp-188]
cmp dword ptr [ebp-184], ebx
jle .Lt_04DC
.Lt_04DB:
lea ebx, [ebp-140]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 13
push offset _Lt_0573
push -1
lea ebx, [ebp-180]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-180]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-168]
call _free
add esp, 4
push dword ptr [ebp-152]
push dword ptr [ebp-148]
call _png_read_end
add esp, 8
push 0
lea eax, [ebp-152]
push eax
lea eax, [ebp-148]
push eax
call _png_destroy_read_struct
add esp, 12
push dword ptr [ebp-48]
call _fclose
add esp, 4
mov eax, dword ptr [ebp-144]
mov dword ptr [ebp-4], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0576
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0578
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 37
push offset _Lt_0579
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0577
.Lt_0578:
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 21
push offset _Lt_057B
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0577:
.Lt_0576:
.Lt_0575:
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0417:
push dword ptr [ebp-160]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-156]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_JPGE8FBSTRINGiiRiRi
__ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_JPGE8FBSTRINGiiRiRi:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_040D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_05BA:
lea eax, [ebp+16]
push eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10CHARGERJPGE8FBSTRINGRiRiRi
add esp, 20
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05BB:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-20]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13DEBUT_MEMOIREEP13_JPEG_BUFFER_Phi
__ZN21_SYSTEME_CPCDOS_OSX__13DEBUT_MEMOIREEP13_JPEG_BUFFER_Phi:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_05BF:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_05C4
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push offset _Lt_03E1
push 423
push dword ptr [ebp-4]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05C6
jmp eax
.Lt_05C6:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 424
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05C7
jmp eax
.Lt_05C7:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], ebx
.Lt_05C0:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_05D2
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_05C8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 430
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05D4
jmp eax
.Lt_05D4:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
push offset _Lt_03E1
push 430
push dword ptr [ebp-12]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05D5
jmp eax
.Lt_05D5:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+20]
cmp dword ptr [ebx+16], ecx
jae .Lt_05CD
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-24], ecx
push offset _Lt_03E1
push 431
push dword ptr [ebp-24]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05D6
jmp eax
.Lt_05D6:
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebp-28], ecx
push offset _Lt_03E1
push 431
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05D7
jmp eax
.Lt_05D7:
mov eax, dword ptr [ebp-28]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-32], ecx
push offset _Lt_03E1
push 432
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05D8
jmp eax
.Lt_05D8:
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+16]
inc ecx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 432
push dword ptr [ebp-32]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05D9
jmp eax
.Lt_05D9:
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+16], ebx
jmp .Lt_05CC
.Lt_05CD:
mov dword ptr [ebp-4], 0
.Lt_05CC:
.Lt_05C9:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__14GET_FIN_BUFFEREP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__14GET_FIN_BUFFEREP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_05DF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_05DA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 441
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05E1
jmp eax
.Lt_05E1:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
push offset _Lt_03E1
push 441
push dword ptr [ebp-12]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05E2
jmp eax
.Lt_05E2:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+16]
cmp ecx, dword ptr [eax+20]
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_05DB:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__5GET8UEP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__5GET8UEP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05E7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_05E4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov bl, al
mov byte ptr [ebp-4], bl
.Lt_05E5:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__4SKIPEP13_JPEG_BUFFER_i
__ZN21_SYSTEME_CPCDOS_OSX__4SKIPEP13_JPEG_BUFFER_i:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_05E9:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_05ED
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push offset _Lt_03E1
push 449
push dword ptr [ebp-4]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05EF
jmp eax
.Lt_05EF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
add ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push offset _Lt_03E1
push 449
push dword ptr [ebp-4]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_05F0
jmp eax
.Lt_05F0:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+16], ebx
.Lt_05EA:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_05F4
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_05F1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
sal eax, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
mov ebx, eax
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
add ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_05F2:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__5GET32EP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__5GET32EP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_05F9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_05F6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
shl eax, 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
mov ebx, eax
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
add ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_05F7:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__7GET16LEEP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__7GET16LEEP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_05FE
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_05FB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
sal eax, 8
add eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_05FC:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__7GET32LEEP13_JPEG_BUFFER_
__ZN21_SYSTEME_CPCDOS_OSX__7GET32LEEP13_JPEG_BUFFER_:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_0603
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0600:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__7GET16LEEP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__7GET16LEEP13_JPEG_BUFFER_
add esp, 8
sal eax, 16
mov ebx, eax
add ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0601:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__4GETNEP13_JPEG_BUFFER_Phi
__ZN21_SYSTEME_CPCDOS_OSX__4GETNEP13_JPEG_BUFFER_Phi:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0605:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_060A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push offset _Lt_03E1
push 473
push dword ptr [ebp-4]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_060C
jmp eax
.Lt_060C:
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
push dword ptr [ebp+16]
call _memcpy
add esp, 12
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 474
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_060D
jmp eax
.Lt_060D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+16]
add ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 474
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_060E
jmp eax
.Lt_060E:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+16], ebx
.Lt_0606:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__13BUILD_HUFFMANEP15_TABLE_HUFFMAN_Pi
__ZN21_SYSTEME_CPCDOS_OSX__13BUILD_HUFFMANEP15_TABLE_HUFFMAN_Pi:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-32], eax
push offset _Lt_0650
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-36], eax
.Lt_060F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
.Lt_0614:
mov dword ptr [ebp-44], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-48], eax
push offset _Lt_03E1
push 484
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0652
jmp eax
.Lt_0652:
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp-48]
add ebx, eax
mov eax, dword ptr [ebx]
dec eax
mov dword ptr [ebp-52], eax
jmp .Lt_0617
.Lt_061A:
mov eax, dword ptr [ebp-40]
inc eax
mov bl, al
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-56], eax
push offset _Lt_03E1
push 485
push dword ptr [ebp-56]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0653
jmp eax
.Lt_0653:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-60], eax
push offset _Lt_03E1
push 485
push 256
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0654
jmp eax
.Lt_0654:
mov eax, dword ptr [ebp-56]
add eax, dword ptr [ebp-60]
mov byte ptr [eax+1280], bl
inc dword ptr [ebp-8]
.Lt_0618:
inc dword ptr [ebp-44]
.Lt_0617:
mov ebx, dword ptr [ebp-52]
cmp dword ptr [ebp-44], ebx
jle .Lt_061A
.Lt_0619:
.Lt_0612:
inc dword ptr [ebp-40]
.Lt_0611:
cmp dword ptr [ebp-40], 15
jle .Lt_0614
.Lt_0613:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ebx
push offset _Lt_03E1
push 490
push dword ptr [ebp-16]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0655
jmp eax
.Lt_0655:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
push offset _Lt_03E1
push 490
push 256
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0656
jmp eax
.Lt_0656:
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-20]
mov byte ptr [eax+1280], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 1
.Lt_0622:
mov eax, dword ptr [ebp-8]
sub eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 495
push dword ptr [ebp-44]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0657
jmp eax
.Lt_0657:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-48], eax
push offset _Lt_03E1
push 495
push 16
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0658
jmp eax
.Lt_0658:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ecx, dword ptr [ebp-44]
add ecx, eax
mov dword ptr [ecx+1612], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 496
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0659
jmp eax
.Lt_0659:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-56], eax
push offset _Lt_03E1
push 496
push 256
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_065A
jmp eax
.Lt_065A:
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp-56]
movzx ebx, byte ptr [eax+1280]
mov eax, dword ptr [ebp-40]
cmp ebx, eax
jne .Lt_0628
.Lt_0629:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 497
push dword ptr [ebp-68]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_065B
jmp eax
.Lt_065B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-72], eax
push offset _Lt_03E1
push 497
push 256
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_065C
jmp eax
.Lt_065C:
mov eax, dword ptr [ebp-68]
add eax, dword ptr [ebp-72]
movzx ebx, byte ptr [eax+1280]
mov eax, dword ptr [ebp-40]
cmp ebx, eax
jne .Lt_062A
mov ax, word ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-76], ebx
push offset _Lt_03E1
push 498
push dword ptr [ebp-76]
mov bx, ax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_065D
jmp eax
.Lt_065D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-80], eax
push offset _Lt_03E1
push 498
push 255
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_065E
jmp eax
.Lt_065E:
mov eax, dword ptr [ebp-80]
sal eax, 1
mov ecx, dword ptr [ebp-76]
add ecx, eax
mov word ptr [ecx+512], bx
inc dword ptr [ebp-8]
inc dword ptr [ebp-12]
jmp .Lt_0629
.Lt_062A:
mov ebx, dword ptr [ebp-12]
dec ebx
mov ecx, 1
push ecx
mov cl, byte ptr [ebp-40]
pop eax
sal eax, cl
mov ecx, eax
cmp ebx, ecx
jl .Lt_0630
lea ecx, [_CPCDOS_INSTANCE+589352]
push ecx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0632
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0634
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 34
push offset _Lt_0635
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0633
.Lt_0634:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 26
push offset _Lt_0637
push -1
lea ecx, [ebp-84]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0633:
.Lt_0632:
.Lt_0631:
mov dword ptr [ebp-4], 0
jmp .Lt_0610
.Lt_0630:
.Lt_062F:
.Lt_0628:
.Lt_0627:
mov eax, 16
sub eax, dword ptr [ebp-40]
mov ecx, dword ptr [ebp-12]
push ecx
mov ecx, eax
xchg eax, [esp]
sal eax, cl
mov ecx, eax
pop eax
mov ebx, ecx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-60], eax
push offset _Lt_03E1
push 513
push dword ptr [ebp-60]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_065F
jmp eax
.Lt_065F:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-64], eax
push offset _Lt_03E1
push 513
push 17
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0660
jmp eax
.Lt_0660:
mov eax, dword ptr [ebp-64]
sal eax, 2
mov ecx, dword ptr [ebp-60]
add ecx, eax
mov dword ptr [ecx+1540], ebx
sal dword ptr [ebp-12], 1
.Lt_0620:
inc dword ptr [ebp-40]
.Lt_061F:
cmp dword ptr [ebp-40], 16
jle .Lt_0622
.Lt_0621:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-24], ebx
push offset _Lt_03E1
push 516
push dword ptr [ebp-24]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0661
jmp eax
.Lt_0661:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+1608], 4294967295
push 512
push 255
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call _memset
add esp, 12
mov dword ptr [ebp-40], 0
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-44], ebx
jmp .Lt_063E
.Lt_0641:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 520
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0662
jmp eax
.Lt_0662:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-56], eax
push offset _Lt_03E1
push 520
push 256
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0663
jmp eax
.Lt_0663:
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp-56]
movzx ebx, byte ptr [eax+1280]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 9
jg .Lt_0645
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-64], ebx
push offset _Lt_03E1
push 522
push dword ptr [ebp-64]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0664
jmp eax
.Lt_0664:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 522
push 255
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0665
jmp eax
.Lt_0665:
mov eax, dword ptr [ebp-68]
sal eax, 1
mov ebx, dword ptr [ebp-64]
add ebx, eax
movzx eax, word ptr [ebx+512]
mov ebx, 9
sub ebx, dword ptr [ebp-48]
mov ecx, ebx
sal eax, cl
mov dword ptr [ebp-60], eax
mov eax, 9
sub eax, dword ptr [ebp-48]
mov ebx, 1
mov ecx, eax
sal ebx, cl
mov dword ptr [ebp-72], ebx
mov dword ptr [ebp-76], 0
mov ebx, dword ptr [ebp-72]
dec ebx
mov dword ptr [ebp-80], ebx
jmp .Lt_0649
.Lt_064C:
mov bl, byte ptr [ebp-40]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-84], eax
push offset _Lt_03E1
push 525
push dword ptr [ebp-84]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0666
jmp eax
.Lt_0666:
mov eax, dword ptr [ebp-76]
add eax, dword ptr [ebp-60]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 525
push 511
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0667
jmp eax
.Lt_0667:
mov eax, dword ptr [ebp-84]
add eax, dword ptr [ebp-88]
mov byte ptr [eax], bl
.Lt_064A:
inc dword ptr [ebp-76]
.Lt_0649:
mov ebx, dword ptr [ebp-80]
cmp dword ptr [ebp-76], ebx
jle .Lt_064C
.Lt_064B:
.Lt_0645:
.Lt_0644:
.Lt_063F:
inc dword ptr [ebp-40]
.Lt_063E:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebp-40], ebx
jle .Lt_0641
.Lt_0640:
mov dword ptr [ebp-4], 1
.Lt_0610:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-32]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__18GROW_BUFFER_UNSAFEEP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__18GROW_BUFFER_UNSAFEEP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_0668:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_067D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-4], 0
.Lt_066A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03E1
push 535
push dword ptr [ebp-20]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_067F
jmp eax
.Lt_067F:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+292], 0
je .Lt_066F
mov dword ptr [ebp-4], 0
jmp .Lt_066E
.Lt_066F:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_066E:
cmp dword ptr [ebp-4], 255
jne .Lt_0672
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0675
mov al, byte ptr [ebp-36]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 543
push dword ptr [ebp-44]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0680
jmp eax
.Lt_0680:
mov eax, dword ptr [ebp-44]
mov byte ptr [eax+256], bl
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-48], ebx
push offset _Lt_03E1
push 544
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0681
jmp eax
.Lt_0681:
mov eax, dword ptr [ebp-48]
mov dword ptr [eax+292], 1
jmp .Lt_0669
.Lt_0675:
.Lt_0674:
.Lt_0672:
.Lt_0671:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03E1
push 548
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0682
jmp eax
.Lt_0682:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+260]
shl ebx, 8
or ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03E1
push 548
push dword ptr [ebp-24]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0683
jmp eax
.Lt_0683:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+260], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-32], ebx
push offset _Lt_03E1
push 549
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0684
jmp eax
.Lt_0684:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+264]
add ebx, 8
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 549
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0685
jmp eax
.Lt_0685:
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+264], ebx
.Lt_066C:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
push offset _Lt_03E1
push 550
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0686
jmp eax
.Lt_0686:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+264], 24
jle .Lt_066A
.Lt_066B:
.Lt_0669:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__6DECODEEP14_TABLEAU_JPEG_P15_TABLE_HUFFMAN_
__ZN21_SYSTEME_CPCDOS_OSX__6DECODEEP14_TABLEAU_JPEG_P15_TABLE_HUFFMAN_:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-80], eax
push offset _Lt_06D1
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-84], eax
.Lt_0687:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03E1
push 560
push dword ptr [ebp-20]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06D3
jmp eax
.Lt_06D3:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+264], 16
jge .Lt_068B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__18GROW_BUFFER_UNSAFEEP14_TABLEAU_JPEG_
add esp, 8
.Lt_068B:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03E1
push 562
push dword ptr [ebp-24]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06D4
jmp eax
.Lt_06D4:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ebx
push offset _Lt_03E1
push 562
push dword ptr [ebp-28]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06D5
jmp eax
.Lt_06D5:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+264]
add ecx, -9
mov eax, dword ptr [ebx+260]
shr eax, cl
mov ebx, eax
mov dword ptr [ebp-12], ebx
and dword ptr [ebp-12], 511
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-32], ebx
push offset _Lt_03E1
push 564
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06D6
jmp eax
.Lt_06D6:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-36], eax
push offset _Lt_03E1
push 564
push 511
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06D7
jmp eax
.Lt_06D7:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 255
jge .Lt_0691
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-88], ebx
push offset _Lt_03E1
push 566
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06D8
jmp eax
.Lt_06D8:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-92], eax
push offset _Lt_03E1
push 566
push 256
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06D9
jmp eax
.Lt_06D9:
mov eax, dword ptr [ebp-88]
add eax, dword ptr [ebp-92]
movzx ebx, byte ptr [eax+1280]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-96], eax
push offset _Lt_03E1
push 566
push dword ptr [ebp-96]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06DA
jmp eax
.Lt_06DA:
mov eax, dword ptr [ebp-96]
mov ecx, dword ptr [eax+264]
cmp ebx, ecx
jle .Lt_0696
lea ecx, [_CPCDOS_INSTANCE+589352]
push ecx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0698
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_069A
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 66
push offset _Lt_069B
push -1
lea ecx, [ebp-128]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0699
.Lt_069A:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 54
push offset _Lt_069D
push -1
lea ecx, [ebp-128]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0699:
.Lt_0698:
.Lt_0697:
mov dword ptr [ebp-4], -1
jmp .Lt_0688
.Lt_0696:
.Lt_0695:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-100], eax
push offset _Lt_03E1
push 576
push dword ptr [ebp-100]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06DB
jmp eax
.Lt_06DB:
mov eax, dword ptr [ebp-100]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-104], ecx
push offset _Lt_03E1
push 576
push dword ptr [ebp-104]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06DC
jmp eax
.Lt_06DC:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-108], eax
push offset _Lt_03E1
push 576
push 256
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06DD
jmp eax
.Lt_06DD:
mov eax, dword ptr [ebp-104]
add eax, dword ptr [ebp-108]
movzx ecx, byte ptr [eax+1280]
mov eax, dword ptr [ebx+264]
sub eax, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-100], ecx
push offset _Lt_03E1
push 576
push dword ptr [ebp-100]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06DE
jmp eax
.Lt_06DE:
mov eax, dword ptr [ebp-100]
mov dword ptr [eax+264], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-112], ebx
push offset _Lt_03E1
push 577
push dword ptr [ebp-112]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06DF
jmp eax
.Lt_06DF:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-116], eax
push offset _Lt_03E1
push 577
push 255
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06E0
jmp eax
.Lt_06E0:
mov eax, dword ptr [ebp-112]
add eax, dword ptr [ebp-116]
movzx ebx, byte ptr [eax+1024]
mov dword ptr [ebp-4], ebx
jmp .Lt_0688
.Lt_0691:
.Lt_0690:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-40], ebx
push offset _Lt_03E1
push 580
push dword ptr [ebp-40]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E1
jmp eax
.Lt_06E1:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+264], 16
jge .Lt_06A6
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 581
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E2
jmp eax
.Lt_06E2:
mov eax, dword ptr [ebp-88]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-92], ebx
push offset _Lt_03E1
push 581
push dword ptr [ebp-92]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E3
jmp eax
.Lt_06E3:
mov eax, dword ptr [ebp-92]
mov ecx, dword ptr [eax+264]
neg ecx
add ecx, 16
mov eax, dword ptr [ebx+260]
shl eax, cl
and eax, 65535
mov dword ptr [ebp-8], eax
jmp .Lt_06A5
.Lt_06A6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 583
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E4
jmp eax
.Lt_06E4:
mov eax, dword ptr [ebp-88]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-92], ecx
push offset _Lt_03E1
push 583
push dword ptr [ebp-92]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E5
jmp eax
.Lt_06E5:
mov eax, dword ptr [ebp-92]
mov ecx, dword ptr [eax+264]
add ecx, -16
mov eax, dword ptr [ebx+260]
shr eax, cl
and eax, 65535
mov dword ptr [ebp-8], eax
.Lt_06A5:
mov dword ptr [ebp-16], 10
.Lt_06AB:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 588
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E6
jmp eax
.Lt_06E6:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-92], eax
push offset _Lt_03E1
push 588
push 17
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06E7
jmp eax
.Lt_06E7:
mov eax, dword ptr [ebp-92]
sal eax, 2
mov ecx, dword ptr [ebp-88]
add ecx, eax
mov eax, dword ptr [ecx+1540]
cmp dword ptr [ebp-8], eax
jae .Lt_06B1
jmp .Lt_06AC
.Lt_06B1:
inc dword ptr [ebp-16]
.Lt_06AD:
jmp .Lt_06AB
.Lt_06AC:
cmp dword ptr [ebp-16], 17
jne .Lt_06B3
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 593
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E8
jmp eax
.Lt_06E8:
mov eax, dword ptr [ebp-88]
mov ecx, dword ptr [eax+264]
add ecx, -16
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 593
push dword ptr [ebp-88]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06E9
jmp eax
.Lt_06E9:
mov eax, dword ptr [ebp-88]
mov dword ptr [eax+264], ebx
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06B6
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06B8
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 46
push offset _Lt_06B9
push -1
lea ebx, [ebp-100]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06B7
.Lt_06B8:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 41
push offset _Lt_06BB
push -1
lea ebx, [ebp-100]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06B7:
.Lt_06B6:
.Lt_06B5:
mov dword ptr [ebp-4], -1
jmp .Lt_0688
.Lt_06B3:
.Lt_06B2:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
push offset _Lt_03E1
push 605
push dword ptr [ebp-44]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06EA
jmp eax
.Lt_06EA:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+264]
cmp dword ptr [ebp-16], ebx
jle .Lt_06BF
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06C1
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06C3
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 48
push offset _Lt_06C4
push -1
lea ebx, [ebp-96]
push ebx
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
jmp .Lt_06C2
.Lt_06C3:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 39
push offset _Lt_06C6
push -1
lea ebx, [ebp-96]
push ebx
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
.Lt_06C2:
.Lt_06C1:
.Lt_06C0:
mov dword ptr [ebp-4], -1
jmp .Lt_0688
.Lt_06BF:
.Lt_06BE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03E1
push 615
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06EB
jmp eax
.Lt_06EB:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+264]
sub ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03E1
push 615
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06EC
jmp eax
.Lt_06EC:
mov eax, dword ptr [ebp-48]
mov dword ptr [eax+264], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 616
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06ED
jmp eax
.Lt_06ED:
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-56], ebx
push offset _Lt_03E1
push 616
push dword ptr [ebp-56]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06EE
jmp eax
.Lt_06EE:
mov eax, dword ptr [ebp-56]
mov ecx, dword ptr [ebx+260]
push ecx
mov cl, byte ptr [eax+264]
xchg eax, [esp]
shr eax, cl
mov ecx, eax
pop eax
mov ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-60], ebx
push offset _Lt_03E1
push 617
push 17
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06EF
jmp eax
.Lt_06EF:
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [_BMASK+eax*4]
and dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-64], ebx
push offset _Lt_03E1
push 618
push dword ptr [ebp-64]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06F0
jmp eax
.Lt_06F0:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 618
push 16
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06F1
jmp eax
.Lt_06F1:
mov eax, dword ptr [ebp-68]
sal eax, 2
mov ebx, dword ptr [ebp-64]
add ebx, eax
mov eax, dword ptr [ebx+1612]
add dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-72], eax
push offset _Lt_03E1
push 619
push dword ptr [ebp-72]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_06F2
jmp eax
.Lt_06F2:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-76], eax
push offset _Lt_03E1
push 619
push 255
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06F3
jmp eax
.Lt_06F3:
mov eax, dword ptr [ebp-72]
add eax, dword ptr [ebp-76]
movzx ebx, byte ptr [eax+1024]
mov dword ptr [ebp-4], ebx
.Lt_0688:
push dword ptr [ebp-84]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-80]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__20COMBINER_ETENDU_RECUEP14_TABLEAU_JPEG_i
__ZN21_SYSTEME_CPCDOS_OSX__20COMBINER_ETENDU_RECUEP14_TABLEAU_JPEG_i:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0700
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_06F4:
mov eax, dword ptr [ebp+16]
dec eax
mov ebx, 1
mov ecx, eax
sal ebx, cl
mov ecx, ebx
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-12], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ecx
push offset _Lt_03E1
push 627
push dword ptr [ebp-16]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0702
jmp eax
.Lt_0702:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+16]
cmp dword ptr [eax+264], ecx
jge .Lt_06F8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__18GROW_BUFFER_UNSAFEEP14_TABLEAU_JPEG_
add esp, 8
.Lt_06F8:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-20], ecx
push offset _Lt_03E1
push 628
push dword ptr [ebp-20]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0703
jmp eax
.Lt_0703:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+264]
sub ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03E1
push 628
push dword ptr [ebp-20]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0704
jmp eax
.Lt_0704:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+264], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-24], ebx
push offset _Lt_03E1
push 629
push dword ptr [ebp-24]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0705
jmp eax
.Lt_0705:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ebx
push offset _Lt_03E1
push 629
push dword ptr [ebp-28]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0706
jmp eax
.Lt_0706:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebx+260]
push ecx
mov cl, byte ptr [eax+264]
xchg eax, [esp]
shr eax, cl
mov ecx, eax
pop eax
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-32], ecx
push offset _Lt_03E1
push 630
push 17
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0707
jmp eax
.Lt_0707:
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [_BMASK+eax*4]
and dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ecx
jae .Lt_06FE
mov ecx, -1
push ecx
mov cl, byte ptr [ebp+16]
pop eax
sal eax, cl
mov ecx, eax
mov eax, ecx
add eax, dword ptr [ebp-12]
inc eax
mov ecx, eax
mov dword ptr [ebp-4], ecx
jmp .Lt_06F5
.Lt_06FE:
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
.Lt_06F5:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-36]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12DECODE_BLOCKEP14_TABLEAU_JPEG_R7FBARRAYIsEP15_TABLE_HUFFMAN_S5_i
__ZN21_SYSTEME_CPCDOS_OSX__12DECODE_BLOCKEP14_TABLEAU_JPEG_R7FBARRAYIsEP15_TABLE_HUFFMAN_S5_i:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-52], eax
push offset _Lt_072F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-56], eax
.Lt_0709:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__6DECODEEP14_TABLEAU_JPEG_P15_TABLE_HUFFMAN_
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jge .Lt_070C
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_070E
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0710
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 57
push offset _Lt_0711
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_070F
.Lt_0710:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 42
push offset _Lt_0713
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
.Lt_070F:
.Lt_070E:
.Lt_070D:
mov dword ptr [ebp-4], 0
jmp .Lt_070A
.Lt_070C:
.Lt_070B:
push 128
push 0
mov dword ptr [ebp-24], 0
push offset _Lt_03E1
push 663
mov eax, dword ptr [ebp+16]
add eax, 28
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
add eax, 24
push dword ptr [eax]
push dword ptr [ebp-24]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0731
jmp eax
.Lt_0731:
mov eax, dword ptr [ebp-24]
sal eax, 1
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _memset
add esp, 12
cmp dword ptr [ebp-20], 0
je .Lt_0716
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__20COMBINER_ETENDU_RECUEP14_TABLEAU_JPEG_i
add esp, 12
mov dword ptr [ebp-28], eax
jmp .Lt_0732
.Lt_0716:
mov dword ptr [ebp-28], 0
.Lt_0732:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-36], eax
push offset _Lt_03E1
push 665
push 3
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0733
jmp eax
.Lt_0733:
mov eax, dword ptr [ebp-36]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebx+13812]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-44], eax
push offset _Lt_03E1
push 666
push 3
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0734
jmp eax
.Lt_0734:
mov eax, dword ptr [ebp-44]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+13812], eax
mov ax, word ptr [ebp-12]
mov dword ptr [ebp-48], 0
push offset _Lt_03E1
push 667
mov ebx, dword ptr [ebp+16]
add ebx, 28
push dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
add ebx, 24
push dword ptr [ebx]
push dword ptr [ebp-48]
mov bx, ax
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0735
jmp eax
.Lt_0735:
mov eax, dword ptr [ebp-48]
sal eax, 1
mov ecx, dword ptr [ebp+16]
add eax, dword ptr [ecx]
mov word ptr [eax], bx
mov dword ptr [ebp-16], 1
.Lt_071D:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__6DECODEEP14_TABLEAU_JPEG_P15_TABLE_HUFFMAN_
add esp, 12
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
jge .Lt_0721
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0723
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0725
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 57
push offset _Lt_0711
push -1
lea ebx, [ebp-80]
push ebx
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
jmp .Lt_0724
.Lt_0725:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 42
push offset _Lt_0713
push -1
lea ebx, [ebp-80]
push ebx
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
.Lt_0724:
.Lt_0723:
.Lt_0722:
mov dword ptr [ebp-4], 0
jmp .Lt_070A
.Lt_0721:
.Lt_0720:
mov eax, dword ptr [ebp-68]
and eax, 15
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-68]
sar eax, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-64], 0
jne .Lt_0729
cmp dword ptr [ebp-68], 240
je .Lt_072B
jmp .Lt_071E
.Lt_072B:
add dword ptr [ebp-16], 16
jmp .Lt_0728
.Lt_0729:
mov eax, dword ptr [ebp-60]
add dword ptr [ebp-16], eax
push dword ptr [ebp-64]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__20COMBINER_ETENDU_RECUEP14_TABLEAU_JPEG_i
add esp, 12
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-72], ebx
push offset _Lt_03E1
push 690
push 79
push dword ptr [ebp-72]
mov bx, ax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0736
jmp eax
.Lt_0736:
mov eax, dword ptr [ebp-72]
movzx ecx, byte ptr [_VALEURS_TRAME+eax]
mov dword ptr [ebp-76], ecx
push offset _Lt_03E1
push 690
mov ecx, dword ptr [ebp+16]
add ecx, 28
push dword ptr [ecx]
mov ecx, dword ptr [ebp+16]
add ecx, 24
push dword ptr [ecx]
push dword ptr [ebp-76]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0737
jmp eax
.Lt_0737:
mov eax, dword ptr [ebp-76]
sal eax, 1
mov ecx, dword ptr [ebp+16]
add eax, dword ptr [ecx]
mov word ptr [eax], bx
inc dword ptr [ebp-16]
.Lt_0728:
.Lt_071F:
cmp dword ptr [ebp-16], 64
jl .Lt_071D
.Lt_071E:
mov dword ptr [ebp-4], 1
.Lt_070A:
push dword ptr [ebp-56]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-52]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
__ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_073F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0738:
add dword ptr [ebp+12], 128
cmp dword ptr [ebp+12], 0
jge .Lt_073B
mov byte ptr [ebp-4], 0
jmp .Lt_0739
.Lt_073B:
cmp dword ptr [ebp+12], 255
jle .Lt_073D
mov byte ptr [ebp-4], 255
jmp .Lt_0739
.Lt_073D:
mov al, byte ptr [ebp+12]
mov byte ptr [ebp-4], al
.Lt_0739:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__10IDCT_BLOCKEPhiR7FBARRAYIsES0_
__ZN21_SYSTEME_CPCDOS_OSX__10IDCT_BLOCKEPhiR7FBARRAYIsES0_:
push ebp
mov ebp, esp
sub esp, 208
push ebx
.Lt_0741:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0789
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-4], 0
mov eax, offset _Lt_07D1
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-24], 0
push offset _Lt_03E1
push 752
mov eax, dword ptr [ebp+20]
add eax, 28
push dword ptr [eax]
mov eax, dword ptr [ebp+20]
add eax, 24
push dword ptr [eax]
push dword ptr [ebp-24]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_078B
jmp eax
.Lt_078B:
mov eax, dword ptr [ebp-24]
sal eax, 1
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
lea ebx, [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-4], 0
.Lt_0748:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-36], ebx
push offset _Lt_03E1
push 755
push dword ptr [ebp-36]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_078C
jmp eax
.Lt_078C:
mov eax, dword ptr [ebp-36]
movsx ebx, word ptr [eax+16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-40], eax
push offset _Lt_03E1
push 755
push dword ptr [ebp-40]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_078D
jmp eax
.Lt_078D:
mov eax, dword ptr [ebp-40]
movsx ecx, word ptr [eax+32]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
push offset _Lt_03E1
push 755
push dword ptr [ebp-44]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_078E
jmp eax
.Lt_078E:
mov eax, dword ptr [ebp-44]
movsx ecx, word ptr [eax+48]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-48], ecx
push offset _Lt_03E1
push 755
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_078F
jmp eax
.Lt_078F:
mov eax, dword ptr [ebp-48]
movsx ecx, word ptr [eax+64]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-52], ecx
push offset _Lt_03E1
push 755
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0790
jmp eax
.Lt_0790:
mov eax, dword ptr [ebp-52]
movsx ecx, word ptr [eax+80]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-56], ecx
push offset _Lt_03E1
push 755
push dword ptr [ebp-56]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0791
jmp eax
.Lt_0791:
mov eax, dword ptr [ebp-56]
movsx ecx, word ptr [eax+96]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-60], ecx
push offset _Lt_03E1
push 755
push dword ptr [ebp-60]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0792
jmp eax
.Lt_0792:
mov eax, dword ptr [ebp-60]
movsx ecx, word ptr [eax+112]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0751
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-68], ecx
push offset _Lt_03E1
push 756
push dword ptr [ebp-68]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0793
jmp eax
.Lt_0793:
mov eax, dword ptr [ebp-68]
movsx ecx, word ptr [eax]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-72], eax
push offset _Lt_03E1
push 756
push dword ptr [ebp-72]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0794
jmp eax
.Lt_0794:
mov eax, dword ptr [ebp-72]
movzx ecx, byte ptr [eax]
imul ebx, ecx
sal ebx, 2
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-76], ebx
push offset _Lt_03E1
push 757
push dword ptr [ebp-76]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0795
jmp eax
.Lt_0795:
mov eax, dword ptr [ebp-76]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-80], ebx
push offset _Lt_03E1
push 758
push dword ptr [ebp-80]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0796
jmp eax
.Lt_0796:
mov eax, dword ptr [ebp-80]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-84], ebx
push offset _Lt_03E1
push 759
push dword ptr [ebp-84]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0797
jmp eax
.Lt_0797:
mov eax, dword ptr [ebp-84]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-88], ebx
push offset _Lt_03E1
push 760
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0798
jmp eax
.Lt_0798:
mov eax, dword ptr [ebp-88]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-92], ebx
push offset _Lt_03E1
push 761
push dword ptr [ebp-92]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0799
jmp eax
.Lt_0799:
mov eax, dword ptr [ebp-92]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+128], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-96], ebx
push offset _Lt_03E1
push 762
push dword ptr [ebp-96]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_079A
jmp eax
.Lt_079A:
mov eax, dword ptr [ebp-96]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+160], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-100], ebx
push offset _Lt_03E1
push 763
push dword ptr [ebp-100]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_079B
jmp eax
.Lt_079B:
mov eax, dword ptr [ebp-100]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+192], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-104], ebx
push offset _Lt_03E1
push 764
push dword ptr [ebp-104]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_079C
jmp eax
.Lt_079C:
mov eax, dword ptr [ebp-104]
mov ebx, dword ptr [ebp-64]
mov dword ptr [eax+224], ebx
jmp .Lt_0750
.Lt_0751:
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-116], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-116]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_079D
jmp eax
.Lt_079D:
mov eax, dword ptr [ebp-116]
movsx ebx, word ptr [eax+32]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-120], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-120]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_079E
jmp eax
.Lt_079E:
mov eax, dword ptr [ebp-120]
movzx ecx, byte ptr [eax+16]
imul ebx, ecx
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-124], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-124]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_079F
jmp eax
.Lt_079F:
mov eax, dword ptr [ebp-124]
movsx ebx, word ptr [eax+96]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-128], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-128]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A0
jmp eax
.Lt_07A0:
mov eax, dword ptr [ebp-128]
movzx ecx, byte ptr [eax+48]
imul ebx, ecx
mov dword ptr [ebp-88], ebx
mov ebx, dword ptr [ebp-88]
add ebx, dword ptr [ebp-84]
push ebx
fild dword ptr [esp]
add esp, 4
fmul qword ptr [_Lt_07A1]
fistp dword ptr [ebp-80]
fild dword ptr [ebp-80]
fild dword ptr [ebp-88]
fmul qword ptr [_Lt_07A2]
fxch st(1)
faddp
fistp dword ptr [ebp-72]
fild dword ptr [ebp-80]
fild dword ptr [ebp-84]
fmul qword ptr [_Lt_07A3]
fxch st(1)
faddp
fistp dword ptr [ebp-76]
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-132], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-132]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A4
jmp eax
.Lt_07A4:
mov eax, dword ptr [ebp-132]
movsx ebx, word ptr [eax]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-136], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-136]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A5
jmp eax
.Lt_07A5:
mov eax, dword ptr [ebp-136]
movzx ecx, byte ptr [eax]
imul ebx, ecx
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-140], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-140]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A6
jmp eax
.Lt_07A6:
mov eax, dword ptr [ebp-140]
movsx ebx, word ptr [eax+64]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-144], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-144]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A7
jmp eax
.Lt_07A7:
mov eax, dword ptr [ebp-144]
movzx ecx, byte ptr [eax+32]
imul ebx, ecx
mov dword ptr [ebp-88], ebx
mov ebx, dword ptr [ebp-88]
add ebx, dword ptr [ebp-84]
sal ebx, 12
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp-84]
sub ebx, dword ptr [ebp-88]
sal ebx, 12
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-76]
add ebx, dword ptr [ebp-64]
mov dword ptr [ebp-100], ebx
mov ebx, dword ptr [ebp-64]
sub ebx, dword ptr [ebp-76]
mov dword ptr [ebp-112], ebx
mov ebx, dword ptr [ebp-72]
add ebx, dword ptr [ebp-68]
mov dword ptr [ebp-104], ebx
mov ebx, dword ptr [ebp-68]
sub ebx, dword ptr [ebp-72]
mov dword ptr [ebp-108], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-148], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-148]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A8
jmp eax
.Lt_07A8:
mov eax, dword ptr [ebp-148]
movsx ebx, word ptr [eax+112]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-152], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-152]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07A9
jmp eax
.Lt_07A9:
mov eax, dword ptr [ebp-152]
movzx ecx, byte ptr [eax+56]
imul ebx, ecx
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-156], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-156]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07AA
jmp eax
.Lt_07AA:
mov eax, dword ptr [ebp-156]
movsx ebx, word ptr [eax+80]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-160], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-160]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07AB
jmp eax
.Lt_07AB:
mov eax, dword ptr [ebp-160]
movzx ecx, byte ptr [eax+40]
imul ebx, ecx
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-164], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-164]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07AC
jmp eax
.Lt_07AC:
mov eax, dword ptr [ebp-164]
movsx ebx, word ptr [eax+48]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-168], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-168]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07AD
jmp eax
.Lt_07AD:
mov eax, dword ptr [ebp-168]
movzx ecx, byte ptr [eax+24]
imul ebx, ecx
mov dword ptr [ebp-72], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-172], ebx
push offset _Lt_03E1
push 773
push dword ptr [ebp-172]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07AE
jmp eax
.Lt_07AE:
mov eax, dword ptr [ebp-172]
movsx ebx, word ptr [eax+16]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-176], eax
push offset _Lt_03E1
push 773
push dword ptr [ebp-176]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07AF
jmp eax
.Lt_07AF:
mov eax, dword ptr [ebp-176]
movzx ecx, byte ptr [eax+8]
imul ebx, ecx
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-72]
add ebx, dword ptr [ebp-64]
mov dword ptr [ebp-88], ebx
mov ebx, dword ptr [ebp-76]
add ebx, dword ptr [ebp-68]
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp-76]
add ebx, dword ptr [ebp-64]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp-72]
add ebx, dword ptr [ebp-68]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-92]
add ebx, dword ptr [ebp-88]
push ebx
fild dword ptr [esp]
add esp, 4
fmul qword ptr [_Lt_07B0]
fistp dword ptr [ebp-96]
fild dword ptr [ebp-64]
fmul qword ptr [_Lt_07B1]
fistp dword ptr [ebp-64]
fild dword ptr [ebp-68]
fmul qword ptr [_Lt_07B2]
fistp dword ptr [ebp-68]
fild dword ptr [ebp-72]
fmul qword ptr [_Lt_07B3]
fistp dword ptr [ebp-72]
fild dword ptr [ebp-76]
fmul qword ptr [_Lt_07B4]
fistp dword ptr [ebp-76]
fild dword ptr [ebp-96]
fild dword ptr [ebp-80]
fmul qword ptr [_Lt_07B5]
fxch st(1)
faddp
fistp dword ptr [ebp-80]
fild dword ptr [ebp-96]
fild dword ptr [ebp-84]
fmul qword ptr [_Lt_07B6]
fxch st(1)
faddp
fistp dword ptr [ebp-84]
fild dword ptr [ebp-88]
fmul qword ptr [_Lt_07B7]
fistp dword ptr [ebp-88]
fild dword ptr [ebp-92]
fmul qword ptr [_Lt_07B8]
fistp dword ptr [ebp-92]
mov ebx, dword ptr [ebp-80]
add ebx, dword ptr [ebp-76]
add ebx, dword ptr [ebp-92]
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-84]
add ebx, dword ptr [ebp-72]
add ebx, dword ptr [ebp-88]
mov dword ptr [ebp-72], ebx
mov ebx, dword ptr [ebp-84]
add ebx, dword ptr [ebp-68]
add ebx, dword ptr [ebp-92]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-80]
add ebx, dword ptr [ebp-64]
add ebx, dword ptr [ebp-88]
mov dword ptr [ebp-64], ebx
add dword ptr [ebp-100], 512
add dword ptr [ebp-104], 512
add dword ptr [ebp-108], 512
add dword ptr [ebp-112], 512
mov ebx, dword ptr [ebp-76]
add ebx, dword ptr [ebp-100]
sar ebx, 10
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-180], ecx
push offset _Lt_03E1
push 778
push dword ptr [ebp-180]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07B9
jmp eax
.Lt_07B9:
mov eax, dword ptr [ebp-180]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-72]
add ebx, dword ptr [ebp-104]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-184], eax
push offset _Lt_03E1
push 779
push dword ptr [ebp-184]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07BA
jmp eax
.Lt_07BA:
mov eax, dword ptr [ebp-184]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-68]
add ebx, dword ptr [ebp-108]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-188], eax
push offset _Lt_03E1
push 780
push dword ptr [ebp-188]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07BB
jmp eax
.Lt_07BB:
mov eax, dword ptr [ebp-188]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-64]
add ebx, dword ptr [ebp-112]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-192], eax
push offset _Lt_03E1
push 781
push dword ptr [ebp-192]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07BC
jmp eax
.Lt_07BC:
mov eax, dword ptr [ebp-192]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp-112]
sub ebx, dword ptr [ebp-64]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-196], eax
push offset _Lt_03E1
push 782
push dword ptr [ebp-196]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07BD
jmp eax
.Lt_07BD:
mov eax, dword ptr [ebp-196]
mov dword ptr [eax+128], ebx
mov ebx, dword ptr [ebp-108]
sub ebx, dword ptr [ebp-68]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-200], eax
push offset _Lt_03E1
push 783
push dword ptr [ebp-200]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07BE
jmp eax
.Lt_07BE:
mov eax, dword ptr [ebp-200]
mov dword ptr [eax+160], ebx
mov ebx, dword ptr [ebp-104]
sub ebx, dword ptr [ebp-72]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-204], eax
push offset _Lt_03E1
push 784
push dword ptr [ebp-204]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07BF
jmp eax
.Lt_07BF:
mov eax, dword ptr [ebp-204]
mov dword ptr [eax+192], ebx
mov ebx, dword ptr [ebp-100]
sub ebx, dword ptr [ebp-76]
sar ebx, 10
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-208], eax
push offset _Lt_03E1
push 785
push dword ptr [ebp-208]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C0
jmp eax
.Lt_07C0:
mov eax, dword ptr [ebp-208]
mov dword ptr [eax+224], ebx
.Lt_0750:
add dword ptr [ebp-20], 2
inc dword ptr [ebp-16]
add dword ptr [ebp-8], 4
.Lt_0746:
inc dword ptr [ebp-4]
.Lt_0745:
cmp dword ptr [ebp-4], 7
jle .Lt_0748
.Lt_0747:
mov ebx, offset _Lt_07D1
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-4], 0
.Lt_0777:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-88], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C1
jmp eax
.Lt_07C1:
mov eax, dword ptr [ebp-88]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-92], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-92]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C2
jmp eax
.Lt_07C2:
mov eax, dword ptr [ebp-92]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-60], ebx
mov ebx, dword ptr [ebp-60]
add ebx, dword ptr [ebp-56]
push ebx
fild dword ptr [esp]
add esp, 4
fmul qword ptr [_Lt_07A1]
fistp dword ptr [ebp-52]
fild dword ptr [ebp-52]
fild dword ptr [ebp-60]
fmul qword ptr [_Lt_07A2]
fxch st(1)
faddp
fistp dword ptr [ebp-44]
fild dword ptr [ebp-52]
fild dword ptr [ebp-56]
fmul qword ptr [_Lt_07A3]
fxch st(1)
faddp
fistp dword ptr [ebp-48]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-96], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-96]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C3
jmp eax
.Lt_07C3:
mov eax, dword ptr [ebp-96]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-100], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-100]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C4
jmp eax
.Lt_07C4:
mov eax, dword ptr [ebp-100]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-60], ebx
mov ebx, dword ptr [ebp-60]
add ebx, dword ptr [ebp-56]
sal ebx, 12
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-56]
sub ebx, dword ptr [ebp-60]
sal ebx, 12
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-36]
mov dword ptr [ebp-72], ebx
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-48]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-40]
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-40]
sub ebx, dword ptr [ebp-44]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-104], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-104]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C5
jmp eax
.Lt_07C5:
mov eax, dword ptr [ebp-104]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-108], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-108]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C6
jmp eax
.Lt_07C6:
mov eax, dword ptr [ebp-108]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-112], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-112]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C7
jmp eax
.Lt_07C7:
mov eax, dword ptr [ebp-112]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-116], ebx
push offset _Lt_03E1
push 794
push dword ptr [ebp-116]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C8
jmp eax
.Lt_07C8:
mov eax, dword ptr [ebp-116]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-36]
mov dword ptr [ebp-60], ebx
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-40]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-36]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-40]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-64]
add ebx, dword ptr [ebp-60]
push ebx
fild dword ptr [esp]
add esp, 4
fmul qword ptr [_Lt_07B0]
fistp dword ptr [ebp-68]
fild dword ptr [ebp-36]
fmul qword ptr [_Lt_07B1]
fistp dword ptr [ebp-36]
fild dword ptr [ebp-40]
fmul qword ptr [_Lt_07B2]
fistp dword ptr [ebp-40]
fild dword ptr [ebp-44]
fmul qword ptr [_Lt_07B3]
fistp dword ptr [ebp-44]
fild dword ptr [ebp-48]
fmul qword ptr [_Lt_07B4]
fistp dword ptr [ebp-48]
fild dword ptr [ebp-68]
fild dword ptr [ebp-52]
fmul qword ptr [_Lt_07B5]
fxch st(1)
faddp
fistp dword ptr [ebp-52]
fild dword ptr [ebp-68]
fild dword ptr [ebp-56]
fmul qword ptr [_Lt_07B6]
fxch st(1)
faddp
fistp dword ptr [ebp-56]
fild dword ptr [ebp-60]
fmul qword ptr [_Lt_07B7]
fistp dword ptr [ebp-60]
fild dword ptr [ebp-64]
fmul qword ptr [_Lt_07B8]
fistp dword ptr [ebp-64]
mov ebx, dword ptr [ebp-52]
add ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-64]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-56]
add ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-60]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-56]
add ebx, dword ptr [ebp-40]
add ebx, dword ptr [ebp-64]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-52]
add ebx, dword ptr [ebp-36]
add ebx, dword ptr [ebp-60]
mov dword ptr [ebp-36], ebx
add dword ptr [ebp-72], 65536
add dword ptr [ebp-76], 65536
add dword ptr [ebp-80], 65536
add dword ptr [ebp-84], 65536
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-72]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-120], ebx
push offset _Lt_03E1
push 799
push dword ptr [ebp-120]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07C9
jmp eax
.Lt_07C9:
mov eax, dword ptr [ebp-120]
mov byte ptr [eax], bl
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-76]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-124], ebx
push offset _Lt_03E1
push 800
push dword ptr [ebp-124]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07CA
jmp eax
.Lt_07CA:
mov eax, dword ptr [ebp-124]
mov byte ptr [eax+1], bl
mov ebx, dword ptr [ebp-40]
add ebx, dword ptr [ebp-80]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-128], ebx
push offset _Lt_03E1
push 801
push dword ptr [ebp-128]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07CB
jmp eax
.Lt_07CB:
mov eax, dword ptr [ebp-128]
mov byte ptr [eax+2], bl
mov ebx, dword ptr [ebp-36]
add ebx, dword ptr [ebp-84]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-132], ebx
push offset _Lt_03E1
push 802
push dword ptr [ebp-132]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07CC
jmp eax
.Lt_07CC:
mov eax, dword ptr [ebp-132]
mov byte ptr [eax+3], bl
mov ebx, dword ptr [ebp-84]
sub ebx, dword ptr [ebp-36]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-136], ebx
push offset _Lt_03E1
push 803
push dword ptr [ebp-136]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07CD
jmp eax
.Lt_07CD:
mov eax, dword ptr [ebp-136]
mov byte ptr [eax+4], bl
mov ebx, dword ptr [ebp-80]
sub ebx, dword ptr [ebp-40]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-140], ebx
push offset _Lt_03E1
push 804
push dword ptr [ebp-140]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07CE
jmp eax
.Lt_07CE:
mov eax, dword ptr [ebp-140]
mov byte ptr [eax+5], bl
mov ebx, dword ptr [ebp-76]
sub ebx, dword ptr [ebp-44]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-144], ebx
push offset _Lt_03E1
push 805
push dword ptr [ebp-144]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07CF
jmp eax
.Lt_07CF:
mov eax, dword ptr [ebp-144]
mov byte ptr [eax+6], bl
mov ebx, dword ptr [ebp-72]
sub ebx, dword ptr [ebp-48]
sar ebx, 17
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5CLAMPEi
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-148], ebx
push offset _Lt_03E1
push 806
push dword ptr [ebp-148]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07D0
jmp eax
.Lt_07D0:
mov eax, dword ptr [ebp-148]
mov byte ptr [eax+7], bl
add dword ptr [ebp-8], 32
mov ebx, dword ptr [ebp+16]
add dword ptr [ebp-12], ebx
.Lt_0775:
inc dword ptr [ebp-4]
.Lt_0774:
cmp dword ptr [ebp-4], 7
jle .Lt_0777
.Lt_0776:
.Lt_0742:
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

.section .bss
.balign 4
	.lcomm	_Lt_07D1,256

.section .text
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_07E7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_07D9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
push offset _Lt_03E1
push 814
push dword ptr [ebp-12]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07E9
jmp eax
.Lt_07E9:
mov eax, dword ptr [ebp-12]
movzx ebx, byte ptr [eax+256]
cmp ebx, 255
je .Lt_07DD
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ebx
push offset _Lt_03E1
push 815
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07EA
jmp eax
.Lt_07EA:
mov eax, dword ptr [ebp-28]
mov bl, byte ptr [eax+256]
mov byte ptr [ebp-8], bl
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-32], ebx
push offset _Lt_03E1
push 816
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07EB
jmp eax
.Lt_07EB:
mov eax, dword ptr [ebp-32]
mov byte ptr [eax+256], 255
mov al, byte ptr [ebp-8]
mov byte ptr [ebp-4], al
jmp .Lt_07DA
.Lt_07DD:
.Lt_07DC:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET8UEP13_JPEG_BUFFER_
add esp, 8
mov byte ptr [ebp-8], al
movzx eax, byte ptr [ebp-8]
cmp eax, 255
je .Lt_07E2
mov byte ptr [ebp-4], 255
jmp .Lt_07DA
.Lt_07E2:
.Lt_07E1:
.Lt_07E3:
movzx eax, byte ptr [ebp-8]
cmp eax, 255
jne .Lt_07E4
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET8UEP13_JPEG_BUFFER_
add esp, 8
mov byte ptr [ebp-8], al
jmp .Lt_07E3
.Lt_07E4:
mov al, byte ptr [ebp-8]
mov byte ptr [ebp-4], al
.Lt_07DA:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-20]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__6RE_SETEP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__6RE_SETEP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_07EC:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_07FC
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push offset _Lt_03E1
push 830
push dword ptr [ebp-4]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07FE
jmp eax
.Lt_07FE:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+264], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 831
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_07FF
jmp eax
.Lt_07FF:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+260], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
push offset _Lt_03E1
push 832
push dword ptr [ebp-12]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0800
jmp eax
.Lt_0800:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+292], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+13812], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+13868], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+13924], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03E1
push 836
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0801
jmp eax
.Lt_0801:
mov eax, dword ptr [ebp-28]
mov byte ptr [eax+256], 255
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 838
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0802
jmp eax
.Lt_0802:
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+316], 0
je .Lt_07F7
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03E1
push 839
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0803
jmp eax
.Lt_0803:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 839
push dword ptr [ebp-44]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0804
jmp eax
.Lt_0804:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [ebx+316]
mov dword ptr [eax+320], ecx
jmp .Lt_07F6
.Lt_07F7:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-44], ecx
push offset _Lt_03E1
push 841
push dword ptr [ebp-44]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0805
jmp eax
.Lt_0805:
mov eax, dword ptr [ebp-44]
mov dword ptr [eax+320], 2147483647
.Lt_07F6:
.Lt_07ED:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__24PARSE_ENTROPY_CODED_DATAEP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__24PARSE_ENTROPY_CODED_DATAEP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 360
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_087D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0806:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__6RE_SETEP14_TABLEAU_JPEG_
add esp, 8
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03E1
push 851
push dword ptr [ebp-8]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_087F
jmp eax
.Lt_087F:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+296], 1
jne .Lt_080A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 852
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0880
jmp eax
.Lt_0880:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+300]
mov dword ptr [ebp-28], ebx
lea ebx, [ebp-160]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
pop edi
lea ebx, [ebp-160]
mov dword ptr [ebp-192], ebx
lea ebx, [ebp-160]
mov dword ptr [ebp-188], ebx
mov dword ptr [ebp-184], 128
mov dword ptr [ebp-180], 2
mov dword ptr [ebp-176], 1
mov dword ptr [ebp-172], 64
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 63
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-204], ebx
push offset _Lt_03E1
push 854
push 3
push dword ptr [ebp-204]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0881
jmp eax
.Lt_0881:
mov eax, dword ptr [ebp-204]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13816]
add eax, 7
sar eax, 3
mov dword ptr [ebp-196], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-216], eax
push offset _Lt_03E1
push 855
push 3
push dword ptr [ebp-216]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0882
jmp eax
.Lt_0882:
mov eax, dword ptr [ebp-216]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13820]
add eax, 7
sar eax, 3
mov dword ptr [ebp-208], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-208]
dec eax
mov dword ptr [ebp-220], eax
jmp .Lt_0812
.Lt_0815:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp-196]
dec eax
mov dword ptr [ebp-224], eax
jmp .Lt_0817
.Lt_081A:
push dword ptr [ebp-28]
mov eax, dword ptr [ebp+12]
lea ebx, [eax+7068]
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-248], eax
push offset _Lt_03E1
push 860
push 3
push dword ptr [ebp-248]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0883
jmp eax
.Lt_0883:
mov eax, dword ptr [ebp-248]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13808]
imul eax, 1680
add ebx, eax
push ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+348]
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-236], ebx
push offset _Lt_03E1
push 859
push 3
push dword ptr [ebp-236]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0884
jmp eax
.Lt_0884:
mov eax, dword ptr [ebp-236]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13804]
imul eax, 1680
add ebx, eax
push ebx
lea ebx, [ebp-192]
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12DECODE_BLOCKEP14_TABLEAU_JPEG_R7FBARRAYIsEP15_TABLE_HUFFMAN_S5_i
add esp, 24
test eax, eax
jne .Lt_0822
mov dword ptr [ebp-4], 0
jmp .Lt_0807
.Lt_0822:
.Lt_0821:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-284], eax
push offset _Lt_03E1
push 867
push 3
push dword ptr [ebp-284]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0885
jmp eax
.Lt_0885:
mov eax, dword ptr [ebp-284]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13800]
mov dword ptr [ebp-288], eax
push offset _Lt_03E1
push 867
push 255
push dword ptr [ebp-288]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0886
jmp eax
.Lt_0886:
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-288]
lea ebx, [eax]
push ebx
lea ebx, [ebp-192]
push ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-272], ebx
push offset _Lt_03E1
push 865
push 3
push dword ptr [ebp-272]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0887
jmp eax
.Lt_0887:
mov eax, dword ptr [ebp-272]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx+13824]
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-256], ebx
push offset _Lt_03E1
push 864
push 3
push dword ptr [ebp-256]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0888
jmp eax
.Lt_0888:
mov eax, dword ptr [ebp-256]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-264], eax
push offset _Lt_03E1
push 864
push 3
push dword ptr [ebp-264]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0889
jmp eax
.Lt_0889:
mov eax, dword ptr [ebp-264]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebp-24]
imul eax, dword ptr [ecx+13824]
sal eax, 3
mov ecx, dword ptr [ebx+13832]
add ecx, eax
mov eax, dword ptr [ebp-20]
sal eax, 3
add ecx, eax
push ecx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10IDCT_BLOCKEPhiR7FBARRAYIsES0_
add esp, 20
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-292], ecx
push offset _Lt_03E1
push 870
push dword ptr [ebp-292]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_088A
jmp eax
.Lt_088A:
mov eax, dword ptr [ebp-292]
mov ecx, dword ptr [eax+320]
dec ecx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-292], eax
push offset _Lt_03E1
push 870
push dword ptr [ebp-292]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_088B
jmp eax
.Lt_088B:
mov eax, dword ptr [ebp-292]
mov dword ptr [eax+320], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-296], ebx
push offset _Lt_03E1
push 871
push dword ptr [ebp-296]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_088C
jmp eax
.Lt_088C:
mov eax, dword ptr [ebp-296]
cmp dword ptr [eax+320], 0
jg .Lt_0830
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-300], eax
push offset _Lt_03E1
push 872
push dword ptr [ebp-300]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_088D
jmp eax
.Lt_088D:
mov eax, dword ptr [ebp-300]
cmp dword ptr [eax+264], 24
jge .Lt_0833
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__18GROW_BUFFER_UNSAFEEP14_TABLEAU_JPEG_
add esp, 8
.Lt_0833:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-304], eax
push offset _Lt_03E1
push 873
push dword ptr [ebp-304]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_088E
jmp eax
.Lt_088E:
mov eax, dword ptr [ebp-304]
movzx ebx, byte ptr [eax+256]
cmp ebx, 208
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-308], eax
push offset _Lt_03E1
push 873
push dword ptr [ebp-308]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_088F
jmp eax
.Lt_088F:
mov eax, dword ptr [ebp-308]
movzx ecx, byte ptr [eax+256]
cmp ecx, 215
setle cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
test ebx, ebx
jne .Lt_0837
mov dword ptr [ebp-4], 1
jmp .Lt_0807
.Lt_0837:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__6RE_SETEP14_TABLEAU_JPEG_
add esp, 8
.Lt_0830:
.Lt_082F:
.Lt_0818:
inc dword ptr [ebp-20]
.Lt_0817:
mov ebx, dword ptr [ebp-224]
cmp dword ptr [ebp-20], ebx
jle .Lt_081A
.Lt_0819:
.Lt_0813:
inc dword ptr [ebp-24]
.Lt_0812:
mov ebx, dword ptr [ebp-220]
cmp dword ptr [ebp-24], ebx
jle .Lt_0815
.Lt_0814:
jmp .Lt_0809
.Lt_080A:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-164]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
pop edi
lea ebx, [ebp-164]
mov dword ptr [ebp-196], ebx
lea ebx, [ebp-164]
mov dword ptr [ebp-192], ebx
mov dword ptr [ebp-188], 128
mov dword ptr [ebp-184], 2
mov dword ptr [ebp-180], 1
mov dword ptr [ebp-176], 64
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 63
mov dword ptr [ebp-24], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-200], ebx
push offset _Lt_03E1
push 881
push dword ptr [ebp-200]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0890
jmp eax
.Lt_0890:
mov eax, dword ptr [ebp-200]
mov ebx, dword ptr [eax+280]
dec ebx
mov dword ptr [ebp-204], ebx
jmp .Lt_083B
.Lt_083E:
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-208], ebx
push offset _Lt_03E1
push 882
push dword ptr [ebp-208]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0891
jmp eax
.Lt_0891:
mov eax, dword ptr [ebp-208]
mov ebx, dword ptr [eax+276]
dec ebx
mov dword ptr [ebp-212], ebx
jmp .Lt_0841
.Lt_0844:
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-224], ebx
push offset _Lt_03E1
push 884
push dword ptr [ebp-224]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0892
jmp eax
.Lt_0892:
mov eax, dword ptr [ebp-224]
mov ebx, dword ptr [eax+296]
dec ebx
mov dword ptr [ebp-228], ebx
jmp .Lt_0847
.Lt_084A:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-236], ebx
push offset _Lt_03E1
push 885
push dword ptr [ebp-236]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0893
jmp eax
.Lt_0893:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-240], eax
push offset _Lt_03E1
push 885
push 3
push dword ptr [ebp-240]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0894
jmp eax
.Lt_0894:
mov eax, dword ptr [ebp-240]
sal eax, 2
mov ebx, dword ptr [ebp-236]
add ebx, eax
mov eax, dword ptr [ebx+300]
mov dword ptr [ebp-232], eax
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-252], eax
push offset _Lt_03E1
push 886
push 3
push dword ptr [ebp-252]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0895
jmp eax
.Lt_0895:
mov eax, dword ptr [ebp-252]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13796]
imul eax, dword ptr [ebp-24]
mov dword ptr [ebp-244], eax
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-264], eax
push offset _Lt_03E1
push 887
push 3
push dword ptr [ebp-264]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0896
jmp eax
.Lt_0896:
mov eax, dword ptr [ebp-264]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13792]
imul eax, dword ptr [ebp-20]
mov dword ptr [ebp-256], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-272], eax
push offset _Lt_03E1
push 890
push 3
push dword ptr [ebp-272]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0897
jmp eax
.Lt_0897:
mov eax, dword ptr [ebp-272]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13796]
dec eax
mov dword ptr [ebp-276], eax
jmp .Lt_0854
.Lt_0857:
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-288], eax
push offset _Lt_03E1
push 891
push 3
push dword ptr [ebp-288]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0898
jmp eax
.Lt_0898:
mov eax, dword ptr [ebp-288]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-36]
add eax, dword ptr [ebp-244]
sal eax, 3
imul eax, dword ptr [ebx+13824]
mov dword ptr [ebp-280], eax
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-296], eax
push offset _Lt_03E1
push 892
push 3
push dword ptr [ebp-296]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0899
jmp eax
.Lt_0899:
mov eax, dword ptr [ebp-296]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13792]
dec eax
mov dword ptr [ebp-300], eax
jmp .Lt_085D
.Lt_0860:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [ebp-256]
sal eax, 3
mov dword ptr [ebp-304], eax
push dword ptr [ebp-232]
mov eax, dword ptr [ebp+12]
lea ebx, [eax+7068]
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-328], eax
push offset _Lt_03E1
push 896
push 3
push dword ptr [ebp-328]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_089A
jmp eax
.Lt_089A:
mov eax, dword ptr [ebp-328]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13808]
imul eax, 1680
add ebx, eax
push ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+348]
mov ebx, dword ptr [ebp-232]
mov dword ptr [ebp-316], ebx
push offset _Lt_03E1
push 895
push 3
push dword ptr [ebp-316]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_089B
jmp eax
.Lt_089B:
mov eax, dword ptr [ebp-316]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13804]
imul eax, 1680
add ebx, eax
push ebx
lea ebx, [ebp-196]
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12DECODE_BLOCKEP14_TABLEAU_JPEG_R7FBARRAYIsEP15_TABLE_HUFFMAN_S5_i
add esp, 24
test eax, eax
jne .Lt_0868
mov dword ptr [ebp-4], 0
jmp .Lt_0807
.Lt_0868:
.Lt_0867:
mov eax, dword ptr [ebp-232]
mov dword ptr [ebp-356], eax
push offset _Lt_03E1
push 903
push 3
push dword ptr [ebp-356]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_089C
jmp eax
.Lt_089C:
mov eax, dword ptr [ebp-356]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13800]
mov dword ptr [ebp-360], eax
push offset _Lt_03E1
push 903
push 255
push dword ptr [ebp-360]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_089D
jmp eax
.Lt_089D:
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-360]
lea ebx, [eax]
push ebx
lea ebx, [ebp-196]
push ebx
mov ebx, dword ptr [ebp-232]
mov dword ptr [ebp-344], ebx
push offset _Lt_03E1
push 903
push 3
push dword ptr [ebp-344]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_089E
jmp eax
.Lt_089E:
mov eax, dword ptr [ebp-344]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx+13824]
mov ebx, dword ptr [ebp-232]
mov dword ptr [ebp-336], ebx
push offset _Lt_03E1
push 902
push 3
push dword ptr [ebp-336]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_089F
jmp eax
.Lt_089F:
mov eax, dword ptr [ebp-336]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13832]
add eax, dword ptr [ebp-280]
add eax, dword ptr [ebp-304]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10IDCT_BLOCKEPhiR7FBARRAYIsES0_
add esp, 20
.Lt_085E:
inc dword ptr [ebp-32]
.Lt_085D:
mov eax, dword ptr [ebp-300]
cmp dword ptr [ebp-32], eax
jle .Lt_0860
.Lt_085F:
.Lt_0855:
inc dword ptr [ebp-36]
.Lt_0854:
mov eax, dword ptr [ebp-276]
cmp dword ptr [ebp-36], eax
jle .Lt_0857
.Lt_0856:
.Lt_0848:
inc dword ptr [ebp-28]
.Lt_0847:
mov eax, dword ptr [ebp-228]
cmp dword ptr [ebp-28], eax
jle .Lt_084A
.Lt_0849:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-216], eax
push offset _Lt_03E1
push 907
push dword ptr [ebp-216]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_08A0
jmp eax
.Lt_08A0:
mov eax, dword ptr [ebp-216]
mov ebx, dword ptr [eax+320]
dec ebx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-216], eax
push offset _Lt_03E1
push 907
push dword ptr [ebp-216]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_08A1
jmp eax
.Lt_08A1:
mov eax, dword ptr [ebp-216]
mov dword ptr [eax+320], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-220], ebx
push offset _Lt_03E1
push 908
push dword ptr [ebp-220]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_08A2
jmp eax
.Lt_08A2:
mov eax, dword ptr [ebp-220]
cmp dword ptr [eax+320], 0
jg .Lt_0874
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-224], eax
push offset _Lt_03E1
push 909
push dword ptr [ebp-224]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_08A3
jmp eax
.Lt_08A3:
mov eax, dword ptr [ebp-224]
cmp dword ptr [eax+264], 24
jge .Lt_0877
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__18GROW_BUFFER_UNSAFEEP14_TABLEAU_JPEG_
add esp, 8
.Lt_0877:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-228], eax
push offset _Lt_03E1
push 910
push dword ptr [ebp-228]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_08A4
jmp eax
.Lt_08A4:
mov eax, dword ptr [ebp-228]
movzx ebx, byte ptr [eax+256]
cmp ebx, 208
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-232], eax
push offset _Lt_03E1
push 910
push dword ptr [ebp-232]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_08A5
jmp eax
.Lt_08A5:
mov eax, dword ptr [ebp-232]
movzx ecx, byte ptr [eax+256]
cmp ecx, 215
setle cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
test ebx, ebx
jne .Lt_087B
mov dword ptr [ebp-4], 1
jmp .Lt_0807
.Lt_087B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__6RE_SETEP14_TABLEAU_JPEG_
add esp, 8
.Lt_0874:
.Lt_0873:
.Lt_0842:
inc dword ptr [ebp-20]
.Lt_0841:
mov ebx, dword ptr [ebp-212]
cmp dword ptr [ebp-20], ebx
jle .Lt_0844
.Lt_0843:
.Lt_083C:
inc dword ptr [ebp-24]
.Lt_083B:
mov ebx, dword ptr [ebp-204]
cmp dword ptr [ebp-24], ebx
jle .Lt_083E
.Lt_083D:
.Lt_0809:
mov dword ptr [ebp-4], 1
.Lt_0807:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14PROCESS_MARKEREP14_TABLEAU_JPEG_i
__ZN21_SYSTEME_CPCDOS_OSX__14PROCESS_MARKEREP14_TABLEAU_JPEG_i:
push ebp
mov ebp, esp
sub esp, 156
push ebx
push esi
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_091C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_08AA:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+16], 255
jne .Lt_08AD
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_08AF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08B1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 25
push offset _Lt_08B2
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_08B0
.Lt_08B1:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 26
push offset _Lt_08B4
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08B0:
.Lt_08AF:
.Lt_08AE:
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
jmp .Lt_08AC
.Lt_08AD:
cmp dword ptr [ebp+16], 194
jne .Lt_08B6
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_08B8
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08BA
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 48
push offset _Lt_08BB
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_08B9
.Lt_08BA:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 45
push offset _Lt_08BD
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08B9:
.Lt_08B8:
.Lt_08B7:
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
jmp .Lt_08AC
.Lt_08B6:
cmp dword ptr [ebp+16], 221
jne .Lt_08BF
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
cmp eax, 4
je .Lt_08C2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_08C4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08C6
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 34
push offset _Lt_08C7
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_08C5
.Lt_08C6:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 25
push offset _Lt_08C9
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08C5:
.Lt_08C4:
.Lt_08C3:
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
.Lt_08C2:
.Lt_08C1:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-24], ebx
push offset _Lt_03E1
push 953
push dword ptr [ebp-24]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_091E
jmp eax
.Lt_091E:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+316], ebx
mov dword ptr [ebp-4], 1
jmp .Lt_08AB
jmp .Lt_08AC
.Lt_08BF:
cmp dword ptr [ebp+16], 219
jne .Lt_08CD
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+324]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
add eax, -2
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
.Lt_08CF:
cmp dword ptr [ebp-8], 0
jle .Lt_08D0
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
sar eax, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
and eax, 15
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-24], 0
je .Lt_08D3
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_08D5
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08D7
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 28
push offset _Lt_08D8
push -1
lea ebx, [ebp-48]
push ebx
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
jmp .Lt_08D6
.Lt_08D7:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 23
push offset _Lt_08DA
push -1
lea ebx, [ebp-48]
push ebx
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
.Lt_08D6:
.Lt_08D5:
.Lt_08D4:
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
.Lt_08D3:
.Lt_08D2:
cmp dword ptr [ebp-32], 3
jle .Lt_08DD
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_08DF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08E1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 29
push offset _Lt_08E2
push -1
lea ebx, [ebp-48]
push ebx
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
jmp .Lt_08E0
.Lt_08E1:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 28
push offset _Lt_08E4
push -1
lea ebx, [ebp-48]
push ebx
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
.Lt_08E0:
.Lt_08DF:
.Lt_08DE:
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
.Lt_08DD:
.Lt_08DC:
mov dword ptr [ebp-40], 0
.Lt_08E9:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET8UEP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 985
push dword ptr [ebp-44]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_091F
jmp eax
.Lt_091F:
mov eax, dword ptr [ebp-32]
sal eax, 6
mov ecx, dword ptr [ebp-40]
mov dword ptr [ebp-48], ecx
push offset _Lt_03E1
push 985
push 79
push dword ptr [ebp-48]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0920
jmp eax
.Lt_0920:
mov eax, dword ptr [ebp-48]
movzx ecx, byte ptr [_VALEURS_TRAME+eax]
add esi, ecx
mov dword ptr [ebp-52], esi
push offset _Lt_03E1
push 985
push 255
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0921
jmp eax
.Lt_0921:
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebp-52]
mov byte ptr [eax], bl
.Lt_08E7:
inc dword ptr [ebp-40]
.Lt_08E6:
cmp dword ptr [ebp-40], 63
jle .Lt_08E9
.Lt_08E8:
add dword ptr [ebp-8], -65
jmp .Lt_08CF
.Lt_08D0:
mov ebx, dword ptr [ebp-8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_08AB
jmp .Lt_08AC
.Lt_08CD:
cmp dword ptr [ebp+16], 196
jne .Lt_08EE
mov dword ptr [ebp-20], 0
lea ebx, [ebp-84]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 16
rep stosd
pop edi
lea ebx, [ebp-84]
mov dword ptr [ebp-116], ebx
lea ebx, [ebp-84]
mov dword ptr [ebp-112], ebx
mov dword ptr [ebp-108], 64
mov dword ptr [ebp-104], 4
mov dword ptr [ebp-100], 1
mov dword ptr [ebp-96], 16
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 15
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+324]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
add eax, -2
mov dword ptr [ebp-8], eax
.Lt_08F1:
cmp dword ptr [ebp-8], 0
jle .Lt_08F2
mov dword ptr [ebp-120], 0
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-124]
sar eax, 4
mov dword ptr [ebp-128], eax
mov eax, dword ptr [ebp-124]
and eax, 15
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp-128]
cmp eax, 1
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-132]
cmp ebx, 3
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_08F5
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_08F7
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08F9
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 30
push offset _Lt_08FA
push -1
lea ebx, [ebp-152]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_08F8
.Lt_08F9:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 29
push offset _Lt_08FC
push -1
lea ebx, [ebp-152]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08F8:
.Lt_08F7:
.Lt_08F6:
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
.Lt_08F5:
.Lt_08F4:
mov dword ptr [ebp-144], 0
.Lt_0901:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp-144]
mov dword ptr [ebp-148], ebx
push offset _Lt_03E1
push 1012
push 15
push dword ptr [ebp-148]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0922
jmp eax
.Lt_0922:
mov eax, dword ptr [ebp-148]
mov dword ptr [ebp+eax*4-84], ebx
mov ebx, dword ptr [ebp-144]
mov dword ptr [ebp-156], ebx
push offset _Lt_03E1
push 1013
push 15
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0923
jmp eax
.Lt_0923:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [ebp+eax*4-84]
add dword ptr [ebp-120], ebx
.Lt_08FF:
inc dword ptr [ebp-144]
.Lt_08FE:
cmp dword ptr [ebp-144], 15
jle .Lt_0901
.Lt_0900:
add dword ptr [ebp-8], -17
cmp dword ptr [ebp-128], 0
jne .Lt_0906
lea ebx, [ebp-84]
push ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+348]
mov ebx, dword ptr [ebp-132]
imul ebx, 1680
add eax, ebx
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__13BUILD_HUFFMANEP15_TABLE_HUFFMAN_Pi
add esp, 12
test eax, eax
jne .Lt_0909
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
.Lt_0909:
.Lt_0908:
mov eax, dword ptr [ebp-132]
mov dword ptr [ebp-152], eax
push offset _Lt_03E1
push 1020
push 3
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0924
jmp eax
.Lt_0924:
mov eax, dword ptr [ebp-152]
imul eax, 1680
mov ebx, dword ptr [ebp+12]
add ebx, eax
lea eax, [ebx+1372]
mov dword ptr [ebp-20], eax
jmp .Lt_0905
.Lt_0906:
lea eax, [ebp-84]
push eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax+7068]
mov eax, dword ptr [ebp-132]
imul eax, 1680
add ebx, eax
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__13BUILD_HUFFMANEP15_TABLE_HUFFMAN_Pi
add esp, 12
test eax, eax
jne .Lt_090E
mov dword ptr [ebp-4], 0
jmp .Lt_08AB
.Lt_090E:
.Lt_090D:
mov eax, dword ptr [ebp-132]
mov dword ptr [ebp-152], eax
push offset _Lt_03E1
push 1025
push 3
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0925
jmp eax
.Lt_0925:
mov eax, dword ptr [ebp-152]
imul eax, 1680
mov ebx, dword ptr [ebp+12]
add ebx, eax
lea eax, [ebx+8092]
mov dword ptr [ebp-20], eax
.Lt_0905:
mov dword ptr [ebp-144], 0
mov eax, dword ptr [ebp-120]
dec eax
mov dword ptr [ebp-148], eax
jmp .Lt_0912
.Lt_0915:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET8UEP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-152], ebx
push offset _Lt_03E1
push 1029
push dword ptr [ebp-152]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0926
jmp eax
.Lt_0926:
mov eax, dword ptr [ebp-152]
add eax, dword ptr [ebp-144]
mov byte ptr [eax], bl
.Lt_0913:
inc dword ptr [ebp-144]
.Lt_0912:
mov ebx, dword ptr [ebp-148]
cmp dword ptr [ebp-144], ebx
jle .Lt_0915
.Lt_0914:
mov ebx, dword ptr [ebp-120]
sub dword ptr [ebp-8], ebx
jmp .Lt_08F1
.Lt_08F2:
mov ebx, dword ptr [ebp-8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_08AB
jmp .Lt_08AC
.Lt_08EE:
mov ebx, dword ptr [ebp+16]
cmp ebx, 224
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
cmp eax, 239
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ebp+16]
cmp eax, 254
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0918
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
add eax, -2
push eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4SKIPEP13_JPEG_BUFFER_i
add esp, 12
mov dword ptr [ebp-4], 1
jmp .Lt_08AB
.Lt_0918:
.Lt_08AC:
mov dword ptr [ebp-4], 0
.Lt_08AB:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__19PROCESS_SCAN_HEADEREP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__19PROCESS_SCAN_HEADEREP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 152
push ebx
push esi
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-60], eax
push offset _Lt_098B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-64], eax
.Lt_092E:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-20], ebx
push offset _Lt_03E1
push 1044
push dword ptr [ebp-20]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_098D
jmp eax
.Lt_098D:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+296], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ebx
push offset _Lt_03E1
push 1045
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_098E
jmp eax
.Lt_098E:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+296]
cmp ebx, 1
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 1046
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_098F
jmp eax
.Lt_098F:
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+296]
cmp ecx, 4
setg cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-36], ecx
push offset _Lt_03E1
push 1047
push dword ptr [ebp-36]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0990
jmp eax
.Lt_0990:
mov eax, dword ptr [ebp-36]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [eax+296]
cmp esi, dword ptr [ecx+332]
setg dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .Lt_0938
lea esi, [_CPCDOS_INSTANCE+589352]
push esi
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_093A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_093C
mov eax, dword ptr [ebp+8]
lea esi, [eax+100]
push esi
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 54
push offset _Lt_093D
push -1
lea esi, [ebp-76]
push esi
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_093B
.Lt_093C:
mov eax, dword ptr [ebp+8]
lea esi, [eax+100]
push esi
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 47
push offset _Lt_093F
push -1
lea esi, [ebp-76]
push esi
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.Lt_093B:
.Lt_093A:
.Lt_0939:
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_0938:
.Lt_0937:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
push offset _Lt_03E1
push 1058
push dword ptr [ebp-44]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0991
jmp eax
.Lt_0991:
mov eax, dword ptr [ebp-44]
mov esi, dword ptr [eax+296]
sal esi, 1
add esi, 6
cmp dword ptr [ebp-12], esi
je .Lt_0943
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0945
mov esi, dword ptr [ebp+8]
lea eax, [esi+100]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 44
push offset _Lt_0946
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0944
.Lt_0945:
mov eax, dword ptr [ebp+8]
lea esi, [eax+100]
push esi
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 38
push offset _Lt_0948
push -1
lea esi, [ebp-76]
push esi
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0944:
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_0943:
.Lt_0942:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 1068
push dword ptr [ebp-68]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0992
jmp eax
.Lt_0992:
mov eax, dword ptr [ebp-68]
mov esi, dword ptr [eax+296]
dec esi
mov dword ptr [ebp-72], esi
jmp .Lt_094C
.Lt_094F:
mov esi, dword ptr [ebp+12]
lea eax, [esi+324]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-76], eax
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp+12]
lea esi, [eax+324]
push esi
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-88], eax
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+332]
dec esi
mov dword ptr [ebp-144], esi
jmp .Lt_0954
.Lt_0957:
mov esi, dword ptr [ebp-84]
mov dword ptr [ebp-152], esi
push offset _Lt_03E1
push 1072
push 3
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0993
jmp eax
.Lt_0993:
mov eax, dword ptr [ebp-152]
imul eax, 56
mov esi, dword ptr [ebp+12]
add esi, eax
mov eax, dword ptr [ebp-76]
cmp dword ptr [esi+13788], eax
jne .Lt_095B
jmp .Lt_0956
.Lt_095B:
.Lt_0955:
inc dword ptr [ebp-84]
.Lt_0954:
mov eax, dword ptr [ebp-144]
cmp dword ptr [ebp-84], eax
jle .Lt_0957
.Lt_0956:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+332]
cmp dword ptr [ebp-84], esi
jne .Lt_095E
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_095E:
mov esi, dword ptr [ebp-88]
sar esi, 4
mov eax, dword ptr [ebp-84]
mov dword ptr [ebp-104], eax
push offset _Lt_03E1
push 1075
push 3
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0994
jmp eax
.Lt_0994:
mov eax, dword ptr [ebp-104]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov dword ptr [ebx+13804], esi
mov esi, dword ptr [ebp-84]
mov dword ptr [ebp-112], esi
push offset _Lt_03E1
push 1076
push 3
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0995
jmp eax
.Lt_0995:
mov eax, dword ptr [ebp-112]
imul eax, 56
mov esi, dword ptr [ebp+12]
add esi, eax
cmp dword ptr [esi+13804], 3
jle .Lt_0964
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0966
mov esi, dword ptr [ebp+8]
lea eax, [esi+100]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 36
push offset _Lt_0967
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0965
.Lt_0966:
mov eax, dword ptr [ebp+8]
lea esi, [eax+100]
push esi
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 31
push offset _Lt_0969
push -1
lea esi, [ebp-148]
push esi
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0965:
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_0964:
.Lt_0963:
mov eax, dword ptr [ebp-88]
and eax, 15
mov esi, dword ptr [ebp-84]
mov dword ptr [ebp-120], esi
push offset _Lt_03E1
push 1085
push 3
push dword ptr [ebp-120]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0996
jmp eax
.Lt_0996:
mov eax, dword ptr [ebp-120]
imul eax, 56
mov esi, dword ptr [ebp+12]
add esi, eax
mov dword ptr [esi+13808], ebx
mov ebx, dword ptr [ebp-84]
mov dword ptr [ebp-128], ebx
push offset _Lt_03E1
push 1086
push 3
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0997
jmp eax
.Lt_0997:
mov eax, dword ptr [ebp-128]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+13808], 3
jle .Lt_0970
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0972
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+100]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 35
push offset _Lt_0973
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0971
.Lt_0972:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 30
push offset _Lt_0975
push -1
lea ebx, [ebp-148]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0971:
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_0970:
.Lt_096F:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-132], eax
push offset _Lt_03E1
push 1095
push dword ptr [ebp-132]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0998
jmp eax
.Lt_0998:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-136], eax
push offset _Lt_03E1
push 1095
push 3
push dword ptr [ebp-136]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0999
jmp eax
.Lt_0999:
mov eax, dword ptr [ebp-136]
sal eax, 2
mov ebx, dword ptr [ebp-132]
add ebx, eax
mov eax, dword ptr [ebp-84]
mov dword ptr [ebx+300], eax
.Lt_094D:
inc dword ptr [ebp-8]
.Lt_094C:
mov eax, dword ptr [ebp-72]
cmp dword ptr [ebp-8], eax
jle .Lt_094F
.Lt_094E:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
test eax, eax
je .Lt_097B
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_097D
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 36
push offset _Lt_0967
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_097C
.Lt_097D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 31
push offset _Lt_0969
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.Lt_097C:
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_097B:
.Lt_097A:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
push ebx
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+324]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
test eax, eax
je .Lt_0983
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0985
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0987
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 36
push offset _Lt_0967
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0986
.Lt_0987:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 31
push offset _Lt_0969
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0986:
.Lt_0985:
.Lt_0984:
mov dword ptr [ebp-4], 0
jmp .Lt_092F
.Lt_0983:
.Lt_0982:
mov dword ptr [ebp-4], 1
.Lt_092F:
push dword ptr [ebp-64]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-60]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__20PROCESS_FRAME_HEADEREP14_TABLEAU_JPEG_i
__ZN21_SYSTEME_CPCDOS_OSX__20PROCESS_FRAME_HEADEREP14_TABLEAU_JPEG_i:
push ebp
mov ebp, esp
sub esp, 292
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-128], eax
push offset _Lt_0A96
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-132], eax
.Lt_099D:
mov eax, dword ptr [ebp+12]
lea ebx, [eax+324]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-40], 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 11
jge .Lt_09A1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09A3
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09A5
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 45
push offset _Lt_09A6
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09A4
.Lt_09A5:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 38
push offset _Lt_09A8
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09A4:
.Lt_09A3:
.Lt_09A2:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09A1:
.Lt_09A0:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 8
je .Lt_09AB
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09AD
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09AF
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 37
push offset _Lt_09B0
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09AE
.Lt_09AF:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 38
push offset _Lt_09B2
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09AE:
.Lt_09AD:
.Lt_09AC:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09AB:
.Lt_09AA:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 1152
push dword ptr [ebp-44]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0A98
jmp eax
.Lt_0A98:
mov eax, dword ptr [ebp-44]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-48], ebx
push offset _Lt_03E1
push 1154
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0A99
jmp eax
.Lt_0A99:
mov eax, dword ptr [ebp-48]
cmp dword ptr [eax+4], 0
jne .Lt_09B7
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09B9
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09BB
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 30
push offset _Lt_09BC
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09BA
.Lt_09BB:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 30
push offset _Lt_09BE
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09BA:
.Lt_09B9:
.Lt_09B8:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09B7:
.Lt_09B6:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__5GET16EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 1165
push dword ptr [ebp-52]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0A9A
jmp eax
.Lt_0A9A:
mov eax, dword ptr [ebp-52]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-56], ebx
push offset _Lt_03E1
push 1167
push dword ptr [ebp-56]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0A9B
jmp eax
.Lt_0A9B:
mov eax, dword ptr [ebp-56]
cmp dword ptr [eax], 0
jne .Lt_09C3
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09C5
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09C7
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 26
push offset _Lt_09C8
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09C6
.Lt_09C7:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 33
push offset _Lt_09CA
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09C6:
.Lt_09C5:
.Lt_09C4:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09C3:
.Lt_09C2:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-40]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_09CD
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09CF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09D1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 53
push offset _Lt_09D2
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09D0
.Lt_09D1:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 43
push offset _Lt_09D4
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09D0:
.Lt_09CF:
.Lt_09CE:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09CD:
.Lt_09CC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-60], eax
push offset _Lt_03E1
push 1191
push dword ptr [ebp-60]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0A9C
jmp eax
.Lt_0A9C:
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [ebp-40]
mov dword ptr [eax+8], ebx
mov dword ptr [ebp-24], 0
mov ebx, dword ptr [ebp-40]
dec ebx
mov dword ptr [ebp-136], ebx
jmp .Lt_09D8
.Lt_09DB:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-144], ebx
push offset _Lt_03E1
push 1193
push 3
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A9D
jmp eax
.Lt_0A9D:
mov eax, dword ptr [ebp-144]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov dword ptr [ebx+13832], 0
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-152], ebx
push offset _Lt_03E1
push 1194
push 3
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A9E
jmp eax
.Lt_0A9E:
mov eax, dword ptr [ebp-152]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov dword ptr [ebx+13840], 0
.Lt_09D9:
inc dword ptr [ebp-24]
.Lt_09D8:
mov ebx, dword ptr [ebp-136]
cmp dword ptr [ebp-24], ebx
jle .Lt_09DB
.Lt_09DA:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-64], ebx
push offset _Lt_03E1
push 1197
push dword ptr [ebp-64]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0A9F
jmp eax
.Lt_0A9F:
mov eax, dword ptr [ebp-64]
mov ebx, dword ptr [eax+8]
imul ebx, 3
add ebx, 8
cmp dword ptr [ebp-16], ebx
je .Lt_09E2
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09E4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09E6
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 31
push offset _Lt_09E7
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09E5
.Lt_09E6:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 25
push offset _Lt_09E9
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09E5:
.Lt_09E4:
.Lt_09E3:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09E2:
.Lt_09E1:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-136], eax
push offset _Lt_03E1
push 1208
push dword ptr [ebp-136]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AA0
jmp eax
.Lt_0AA0:
mov eax, dword ptr [ebp-136]
mov ebx, dword ptr [eax+8]
dec ebx
mov dword ptr [ebp-140], ebx
jmp .Lt_09ED
.Lt_09F0:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-148], ebx
push offset _Lt_03E1
push 1209
push 3
push dword ptr [ebp-148]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA1
jmp eax
.Lt_0AA1:
mov eax, dword ptr [ebp-148]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13788], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-156], ebx
push offset _Lt_03E1
push 1211
push 3
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA2
jmp eax
.Lt_0AA2:
mov eax, dword ptr [ebp-156]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-24]
inc eax
cmp dword ptr [ebx+13788], eax
je .Lt_09F6
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-228], eax
push offset _Lt_03E1
push 1213
push 3
push dword ptr [ebp-228]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA3
jmp eax
.Lt_0AA3:
mov eax, dword ptr [ebp-228]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebx+13788], eax
je .Lt_09FA
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09FC
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09FE
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push 37
push offset _Lt_09FF
push -1
lea ebx, [ebp-240]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09FD
.Lt_09FE:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push 40
push offset _Lt_0A01
push -1
lea ebx, [ebp-240]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09FD:
.Lt_09FC:
.Lt_09FB:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_09FA:
.Lt_09F9:
.Lt_09F6:
.Lt_09F5:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
sar eax, 4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-164], ebx
push offset _Lt_03E1
push 1225
push 3
push dword ptr [ebp-164]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA4
jmp eax
.Lt_0AA4:
mov eax, dword ptr [ebp-164]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13792], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-172], ebx
push offset _Lt_03E1
push 1226
push 3
push dword ptr [ebp-172]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA5
jmp eax
.Lt_0AA5:
mov eax, dword ptr [ebp-172]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13792]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-180], ebx
push offset _Lt_03E1
push 1226
push 3
push dword ptr [ebp-180]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA6
jmp eax
.Lt_0AA6:
mov eax, dword ptr [ebp-180]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13792]
cmp eax, 4
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0A0A
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A0C
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A0E
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 26
push offset _Lt_0A0F
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A0D
.Lt_0A0E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 27
push offset _Lt_0A11
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A0D:
.Lt_0A0C:
.Lt_0A0B:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_0A0A:
.Lt_0A09:
mov eax, dword ptr [ebp-28]
and eax, 15
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-188], ebx
push offset _Lt_03E1
push 1237
push 3
push dword ptr [ebp-188]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA7
jmp eax
.Lt_0AA7:
mov eax, dword ptr [ebp-188]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13796], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-196], ebx
push offset _Lt_03E1
push 1238
push 3
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA8
jmp eax
.Lt_0AA8:
mov eax, dword ptr [ebp-196]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebx+13796]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-204], ebx
push offset _Lt_03E1
push 1238
push 3
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AA9
jmp eax
.Lt_0AA9:
mov eax, dword ptr [ebp-204]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13796]
cmp eax, 4
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0A1A
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A1C
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A1E
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 16
push offset _Lt_0A1F
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A1D
.Lt_0A1E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 16
push offset _Lt_0A1F
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A1D:
.Lt_0A1C:
.Lt_0A1B:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_0A1A:
.Lt_0A19:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__4GET8EP13_JPEG_BUFFER_
add esp, 8
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-212], ebx
push offset _Lt_03E1
push 1248
push 3
push dword ptr [ebp-212]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AAA
jmp eax
.Lt_0AAA:
mov eax, dword ptr [ebp-212]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13800], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-220], ebx
push offset _Lt_03E1
push 1249
push 3
push dword ptr [ebp-220]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AAB
jmp eax
.Lt_0AAB:
mov eax, dword ptr [ebp-220]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+13800], 3
jle .Lt_0A27
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A29
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A2B
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 17
push offset _Lt_0A2C
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A2A
.Lt_0A2B:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 17
push offset _Lt_0A2E
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-232]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-232]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A2A:
.Lt_0A29:
.Lt_0A28:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_0A27:
.Lt_0A26:
.Lt_09EE:
inc dword ptr [ebp-24]
.Lt_09ED:
mov eax, dword ptr [ebp-140]
cmp dword ptr [ebp-24], eax
jle .Lt_09F0
.Lt_09EF:
cmp dword ptr [ebp+16], 0
je .Lt_0A31
mov dword ptr [ebp-4], 1
jmp .Lt_099E
.Lt_0A31:
.Lt_0A30:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 1265
push dword ptr [ebp-68]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AAC
jmp eax
.Lt_0AAC:
mov eax, dword ptr [ebp-68]
mov ebx, 1073741824
mov ecx, dword ptr [eax]
push eax
mov eax, ebx
xor edx, edx
div ecx
mov ebx, eax
pop eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-72], eax
push offset _Lt_03E1
push 1265
push dword ptr [ebp-72]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AAD
jmp eax
.Lt_0AAD:
mov eax, dword ptr [ebp-72]
mov ecx, dword ptr [eax+8]
push eax
mov eax, ebx
xor edx, edx
div ecx
mov ebx, eax
pop eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-76], eax
push offset _Lt_03E1
push 1265
push dword ptr [ebp-76]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AAE
jmp eax
.Lt_0AAE:
mov eax, dword ptr [ebp-76]
mov ecx, dword ptr [eax+4]
cmp ebx, ecx
jae .Lt_0A36
lea ecx, [_CPCDOS_INSTANCE+589352]
push ecx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A38
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A3A
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 45
push offset _Lt_0A3B
push -1
lea ecx, [ebp-144]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A39
.Lt_0A3A:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 35
push offset _Lt_0A3D
push -1
lea ecx, [ebp-144]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A39:
.Lt_0A38:
.Lt_0A37:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_0A36:
.Lt_0A35:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-136], eax
push offset _Lt_03E1
push 1276
push dword ptr [ebp-136]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AAF
jmp eax
.Lt_0AAF:
mov eax, dword ptr [ebp-136]
mov ecx, dword ptr [eax+8]
dec ecx
mov dword ptr [ebp-140], ecx
jmp .Lt_0A41
.Lt_0A44:
mov ecx, dword ptr [ebp-24]
mov dword ptr [ebp-148], ecx
push offset _Lt_03E1
push 1277
push 3
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AB0
jmp eax
.Lt_0AB0:
mov eax, dword ptr [ebp-148]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [ecx+13792], eax
jle .Lt_0A48
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-164], eax
push offset _Lt_03E1
push 1277
push 3
push dword ptr [ebp-164]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AB1
jmp eax
.Lt_0AB1:
mov eax, dword ptr [ebp-164]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13792]
mov dword ptr [ebp-32], eax
.Lt_0A48:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-156], eax
push offset _Lt_03E1
push 1278
push 3
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AB2
jmp eax
.Lt_0AB2:
mov eax, dword ptr [ebp-156]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [ecx+13796], eax
jle .Lt_0A4E
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-164], eax
push offset _Lt_03E1
push 1278
push 3
push dword ptr [ebp-164]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AB3
jmp eax
.Lt_0AB3:
mov eax, dword ptr [ebp-164]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13796]
mov dword ptr [ebp-36], eax
.Lt_0A4E:
.Lt_0A42:
inc dword ptr [ebp-24]
.Lt_0A41:
mov eax, dword ptr [ebp-140]
cmp dword ptr [ebp-24], eax
jle .Lt_0A44
.Lt_0A43:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-80], eax
push offset _Lt_03E1
push 1281
push dword ptr [ebp-80]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AB4
jmp eax
.Lt_0AB4:
mov eax, dword ptr [ebp-80]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+268], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-84], ecx
push offset _Lt_03E1
push 1282
push dword ptr [ebp-84]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AB5
jmp eax
.Lt_0AB5:
mov eax, dword ptr [ebp-84]
mov ecx, dword ptr [ebp-36]
mov dword ptr [eax+272], ecx
mov ecx, dword ptr [ebp-32]
sal ecx, 3
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-88], eax
push offset _Lt_03E1
push 1283
push dword ptr [ebp-88]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AB6
jmp eax
.Lt_0AB6:
mov eax, dword ptr [ebp-88]
mov dword ptr [eax+284], ebx
mov ebx, dword ptr [ebp-36]
sal ebx, 3
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-92], eax
push offset _Lt_03E1
push 1284
push dword ptr [ebp-92]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AB7
jmp eax
.Lt_0AB7:
mov eax, dword ptr [ebp-92]
mov dword ptr [eax+288], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-100], ebx
push offset _Lt_03E1
push 1285
push dword ptr [ebp-100]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AB8
jmp eax
.Lt_0AB8:
mov eax, dword ptr [ebp-100]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-104], ebx
push offset _Lt_03E1
push 1285
push dword ptr [ebp-104]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AB9
jmp eax
.Lt_0AB9:
mov eax, dword ptr [ebp-104]
mov ecx, dword ptr [eax+284]
add ecx, dword ptr [ebx]
add ecx, 4294967295
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-108], ebx
push offset _Lt_03E1
push 1285
push dword ptr [ebp-108]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ABA
jmp eax
.Lt_0ABA:
mov eax, dword ptr [ebp-108]
mov ecx, dword ptr [eax+284]
push eax
mov eax, ebx
xor edx, edx
div ecx
mov ebx, eax
pop eax
mov ecx, ebx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-96], eax
push offset _Lt_03E1
push 1285
push dword ptr [ebp-96]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ABB
jmp eax
.Lt_0ABB:
mov eax, dword ptr [ebp-96]
mov dword ptr [eax+276], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-116], ebx
push offset _Lt_03E1
push 1286
push dword ptr [ebp-116]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ABC
jmp eax
.Lt_0ABC:
mov eax, dword ptr [ebp-116]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-120], ebx
push offset _Lt_03E1
push 1286
push dword ptr [ebp-120]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ABD
jmp eax
.Lt_0ABD:
mov eax, dword ptr [ebp-120]
mov ecx, dword ptr [eax+288]
add ecx, dword ptr [ebx+4]
add ecx, 4294967295
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-124], ebx
push offset _Lt_03E1
push 1286
push dword ptr [ebp-124]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ABE
jmp eax
.Lt_0ABE:
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [eax+288]
push eax
mov eax, ebx
xor edx, edx
div ecx
mov ebx, eax
pop eax
mov ecx, ebx
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-112], eax
push offset _Lt_03E1
push 1286
push dword ptr [ebp-112]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ABF
jmp eax
.Lt_0ABF:
mov eax, dword ptr [ebp-112]
mov dword ptr [eax+280], ebx
mov dword ptr [ebp-24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-136], ebx
push offset _Lt_03E1
push 1288
push dword ptr [ebp-136]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AC0
jmp eax
.Lt_0AC0:
mov eax, dword ptr [ebp-136]
mov ebx, dword ptr [eax+8]
dec ebx
mov dword ptr [ebp-140], ebx
jmp .Lt_0A5F
.Lt_0A62:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-152], ebx
push offset _Lt_03E1
push 1289
push dword ptr [ebp-152]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AC1
jmp eax
.Lt_0AC1:
mov eax, dword ptr [ebp-152]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-160], ebx
push offset _Lt_03E1
push 1289
push 3
push dword ptr [ebp-160]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC2
jmp eax
.Lt_0AC2:
mov eax, dword ptr [ebp-160]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13792]
imul eax, dword ptr [ebx]
add eax, dword ptr [ebp-32]
add eax, 4294967295
xor edx, edx
div dword ptr [ebp-32]
mov ebx, eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-148], eax
push offset _Lt_03E1
push 1289
push 3
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC3
jmp eax
.Lt_0AC3:
mov eax, dword ptr [ebp-148]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13816], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-172], ebx
push offset _Lt_03E1
push 1290
push dword ptr [ebp-172]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AC4
jmp eax
.Lt_0AC4:
mov eax, dword ptr [ebp-172]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-180], ebx
push offset _Lt_03E1
push 1290
push 3
push dword ptr [ebp-180]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC5
jmp eax
.Lt_0AC5:
mov eax, dword ptr [ebp-180]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13796]
imul eax, dword ptr [ebx+4]
add eax, dword ptr [ebp-36]
add eax, 4294967295
xor edx, edx
div dword ptr [ebp-36]
mov ebx, eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-168], eax
push offset _Lt_03E1
push 1290
push 3
push dword ptr [ebp-168]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC6
jmp eax
.Lt_0AC6:
mov eax, dword ptr [ebp-168]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13820], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-192], ebx
push offset _Lt_03E1
push 1291
push dword ptr [ebp-192]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0AC7
jmp eax
.Lt_0AC7:
mov eax, dword ptr [ebp-192]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-200], ebx
push offset _Lt_03E1
push 1291
push 3
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC8
jmp eax
.Lt_0AC8:
mov eax, dword ptr [ebp-200]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13792]
imul eax, dword ptr [ebx+276]
sal eax, 3
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-188], ebx
push offset _Lt_03E1
push 1291
push 3
push dword ptr [ebp-188]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC9
jmp eax
.Lt_0AC9:
mov eax, dword ptr [ebp-188]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13824], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-212], ebx
push offset _Lt_03E1
push 1292
push dword ptr [ebp-212]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0ACA
jmp eax
.Lt_0ACA:
mov eax, dword ptr [ebp-212]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-220], ebx
push offset _Lt_03E1
push 1292
push 3
push dword ptr [ebp-220]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACB
jmp eax
.Lt_0ACB:
mov eax, dword ptr [ebp-220]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13796]
imul eax, dword ptr [ebx+280]
sal eax, 3
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-208], ebx
push offset _Lt_03E1
push 1292
push 3
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACC
jmp eax
.Lt_0ACC:
mov eax, dword ptr [ebp-208]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13828], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-236], ebx
push offset _Lt_03E1
push 1293
push 3
push dword ptr [ebp-236]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACD
jmp eax
.Lt_0ACD:
mov eax, dword ptr [ebp-236]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-244], eax
push offset _Lt_03E1
push 1293
push 3
push dword ptr [ebp-244]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACE
jmp eax
.Lt_0ACE:
mov eax, dword ptr [ebp-244]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebx+13824]
imul eax, dword ptr [ecx+13828]
mov ebx, eax
push ebx
call _malloc
add esp, 4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-228], ebx
push offset _Lt_03E1
push 1293
push 3
push dword ptr [ebp-228]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACF
jmp eax
.Lt_0ACF:
mov eax, dword ptr [ebp-228]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13836], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-252], ebx
push offset _Lt_03E1
push 1294
push 3
push dword ptr [ebp-252]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD0
jmp eax
.Lt_0AD0:
mov eax, dword ptr [ebp-252]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+13836], 0
jne .Lt_0A80
dec dword ptr [ebp-24]
.Lt_0A81:
cmp dword ptr [ebp-24], 0
jl .Lt_0A82
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-284], ebx
push offset _Lt_03E1
push 1297
push 3
push dword ptr [ebp-284]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD1
jmp eax
.Lt_0AD1:
mov eax, dword ptr [ebp-284]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx+13836]
call _free
add esp, 4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-292], ebx
push offset _Lt_03E1
push 1298
push 3
push dword ptr [ebp-292]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD2
jmp eax
.Lt_0AD2:
mov eax, dword ptr [ebp-292]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov dword ptr [ebx+13832], 0
dec dword ptr [ebp-24]
jmp .Lt_0A81
.Lt_0A82:
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A88
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A8A
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 31
push offset _Lt_0A8B
push -1
lea ebx, [ebp-288]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-288]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A89
.Lt_0A8A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 24
push offset _Lt_0A8D
push -1
lea ebx, [ebp-288]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-288]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A89:
.Lt_0A88:
.Lt_0A87:
mov dword ptr [ebp-4], 0
jmp .Lt_099E
.Lt_0A80:
.Lt_0A7F:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-268], eax
push offset _Lt_03E1
push 1310
push 3
push dword ptr [ebp-268]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD3
jmp eax
.Lt_0AD3:
mov eax, dword ptr [ebp-268]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-260], eax
push offset _Lt_03E1
push 1310
push 3
push dword ptr [ebp-260]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD4
jmp eax
.Lt_0AD4:
mov eax, dword ptr [ebp-260]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebx+13836]
mov dword ptr [ecx+13832], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-276], eax
push offset _Lt_03E1
push 1311
push 3
push dword ptr [ebp-276]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD5
jmp eax
.Lt_0AD5:
mov eax, dword ptr [ebp-276]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13840], 0
.Lt_0A60:
inc dword ptr [ebp-24]
.Lt_0A5F:
mov ecx, dword ptr [ebp-140]
cmp dword ptr [ebp-24], ecx
jle .Lt_0A62
.Lt_0A61:
mov dword ptr [ebp-4], 1
.Lt_099E:
push dword ptr [ebp-132]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-128]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__18DECODE_JPEG_HEADEREP14_TABLEAU_JPEG_i
__ZN21_SYSTEME_CPCDOS_OSX__18DECODE_JPEG_HEADEREP14_TABLEAU_JPEG_i:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0B03
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0ADC:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
push offset _Lt_03E1
push 1319
push dword ptr [ebp-12]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B05
jmp eax
.Lt_0B05:
mov eax, dword ptr [ebp-12]
mov byte ptr [eax+256], 255
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
add esp, 8
movzx ebx, al
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 216
je .Lt_0AE0
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0AE2
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0AE4
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push 2
push dword ptr [ebp-8]
call _fb_HEXEx_i
add esp, 8
push eax
push 31
push offset _Lt_0AE5
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0AE3
.Lt_0AE4:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push 2
push dword ptr [ebp-8]
call _fb_HEXEx_i
add esp, 8
push eax
push 30
push offset _Lt_0AE8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0AE3:
.Lt_0AE2:
.Lt_0AE1:
mov dword ptr [ebp-4], 0
jmp .Lt_0ADD
.Lt_0AE0:
.Lt_0ADF:
cmp dword ptr [ebp+16], 1
jne .Lt_0AEC
mov dword ptr [ebp-4], 1
jmp .Lt_0ADD
.Lt_0AEC:
.Lt_0AEB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
add esp, 8
movzx ebx, al
mov dword ptr [ebp-8], ebx
.Lt_0AED:
mov ebx, dword ptr [ebp-8]
cmp ebx, 192
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
cmp eax, 193
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0AEE
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__14PROCESS_MARKEREP14_TABLEAU_JPEG_i
add esp, 12
test eax, eax
jne .Lt_0AF0
mov dword ptr [ebp-4], 0
jmp .Lt_0ADD
.Lt_0AF0:
.Lt_0AEF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
add esp, 8
movzx ebx, al
mov dword ptr [ebp-8], ebx
.Lt_0AF1:
cmp dword ptr [ebp-8], 255
jne .Lt_0AF2
mov ebx, dword ptr [ebp+12]
lea eax, [ebx+324]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_FIN_BUFFEREP13_JPEG_BUFFER_
add esp, 8
test eax, eax
je .Lt_0AF5
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0AF7
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0AF9
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 30
push offset _Lt_0AFA
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0AF8
.Lt_0AF9:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 29
push offset _Lt_0AFD
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0AF8:
.Lt_0AF7:
.Lt_0AF6:
mov dword ptr [ebp-4], 0
jmp .Lt_0ADD
.Lt_0AF5:
.Lt_0AF4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
add esp, 8
movzx ebx, al
mov dword ptr [ebp-8], ebx
jmp .Lt_0AF1
.Lt_0AF2:
jmp .Lt_0AED
.Lt_0AEE:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__20PROCESS_FRAME_HEADEREP14_TABLEAU_JPEG_i
add esp, 12
test eax, eax
jne .Lt_0B01
mov dword ptr [ebp-4], 0
jmp .Lt_0ADD
.Lt_0B01:
.Lt_0B00:
mov dword ptr [ebp-4], 1
.Lt_0ADD:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__17DECODE_JPEG_IMAGEEP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__17DECODE_JPEG_IMAGEEP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0B18
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0B08:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
push offset _Lt_03E1
push 1366
push dword ptr [ebp-12]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B1A
jmp eax
.Lt_0B1A:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+316], 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__18DECODE_JPEG_HEADEREP14_TABLEAU_JPEG_i
add esp, 12
test eax, eax
jne .Lt_0B0C
mov dword ptr [ebp-4], 0
jmp .Lt_0B09
.Lt_0B0C:
.Lt_0B0B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
add esp, 8
movzx ebx, al
mov dword ptr [ebp-8], ebx
.Lt_0B0D:
cmp dword ptr [ebp-8], 217
je .Lt_0B0E
cmp dword ptr [ebp-8], 218
jne .Lt_0B10
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__19PROCESS_SCAN_HEADEREP14_TABLEAU_JPEG_
add esp, 8
test eax, eax
jne .Lt_0B12
mov dword ptr [ebp-4], 0
jmp .Lt_0B09
.Lt_0B12:
.Lt_0B11:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__24PARSE_ENTROPY_CODED_DATAEP14_TABLEAU_JPEG_
add esp, 8
test eax, eax
jne .Lt_0B14
mov dword ptr [ebp-4], 0
jmp .Lt_0B09
.Lt_0B14:
.Lt_0B13:
jmp .Lt_0B0F
.Lt_0B10:
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__14PROCESS_MARKEREP14_TABLEAU_JPEG_i
add esp, 12
test eax, eax
jne .Lt_0B16
mov dword ptr [ebp-4], 0
jmp .Lt_0B09
.Lt_0B16:
.Lt_0B15:
.Lt_0B0F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_MARKEREP14_TABLEAU_JPEG_
add esp, 8
movzx ebx, al
mov dword ptr [ebp-8], ebx
jmp .Lt_0B0D
.Lt_0B0E:
mov dword ptr [ebp-4], 1
.Lt_0B09:
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

.globl _RESAMPLE_ROW_1
_RESAMPLE_ROW_1:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B1E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B1B:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_0B1C:
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

.globl _RESAMPLE_ROW_V_2
_RESAMPLE_ROW_V_2:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_0B2B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0B20:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-20], eax
jmp .Lt_0B23
.Lt_0B26:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03E1
push 1400
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B2D
jmp eax
.Lt_0B2D:
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
imul ebx, 3
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 1400
push dword ptr [ebp-32]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B2E
jmp eax
.Lt_0B2E:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [ebp-8]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, 2
sar ebx, 2
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-24], ebx
push offset _Lt_03E1
push 1400
push dword ptr [ebp-24]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B2F
jmp eax
.Lt_0B2F:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-8]
mov byte ptr [eax], bl
.Lt_0B24:
inc dword ptr [ebp-8]
.Lt_0B23:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-8], ebx
jle .Lt_0B26
.Lt_0B25:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0B21:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RESAMPLE_ROW_H_2
_RESAMPLE_ROW_H_2:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-56], eax
push offset _Lt_0B4D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-60], eax
.Lt_0B30:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+20], 1
jne .Lt_0B33
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 1412
push dword ptr [ebp-68]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B4F
jmp eax
.Lt_0B4F:
mov eax, dword ptr [ebp-68]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-64], ebx
push offset _Lt_03E1
push 1412
push dword ptr [ebp-64]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B50
jmp eax
.Lt_0B50:
mov eax, dword ptr [ebp-64]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-76], ecx
push offset _Lt_03E1
push 1413
push dword ptr [ebp-76]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B51
jmp eax
.Lt_0B51:
mov eax, dword ptr [ebp-76]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-72], ecx
push offset _Lt_03E1
push 1413
push dword ptr [ebp-72]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B52
jmp eax
.Lt_0B52:
mov eax, dword ptr [ebp-72]
mov cl, byte ptr [ebx]
mov byte ptr [eax+1], cl
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .Lt_0B31
.Lt_0B33:
.Lt_0B32:
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-20], ecx
push offset _Lt_03E1
push 1417
push dword ptr [ebp-20]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B53
jmp eax
.Lt_0B53:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
push offset _Lt_03E1
push 1417
push dword ptr [ebp-16]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B54
jmp eax
.Lt_0B54:
mov eax, dword ptr [ebp-16]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-28], ecx
push offset _Lt_03E1
push 1418
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B55
jmp eax
.Lt_0B55:
mov eax, dword ptr [ebp-28]
movzx ecx, byte ptr [eax]
imul ecx, 3
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], eax
push offset _Lt_03E1
push 1418
push dword ptr [ebp-32]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B56
jmp eax
.Lt_0B56:
mov eax, dword ptr [ebp-32]
movzx ecx, byte ptr [eax+1]
add ebx, ecx
add ebx, 2
sar ebx, 2
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-24], ebx
push offset _Lt_03E1
push 1418
push dword ptr [ebp-24]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B57
jmp eax
.Lt_0B57:
mov eax, dword ptr [ebp-24]
mov byte ptr [eax+1], bl
mov dword ptr [ebp-8], 1
mov ebx, dword ptr [ebp+20]
add ebx, -2
mov dword ptr [ebp-64], ebx
jmp .Lt_0B3E
.Lt_0B41:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-72], ebx
push offset _Lt_03E1
push 1420
push dword ptr [ebp-72]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B58
jmp eax
.Lt_0B58:
mov eax, dword ptr [ebp-72]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
imul ebx, 3
add ebx, 2
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-80], ebx
push offset _Lt_03E1
push 1421
push dword ptr [ebp-80]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B59
jmp eax
.Lt_0B59:
mov eax, dword ptr [ebp-80]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax-1]
add ebx, dword ptr [ebp-68]
sar ebx, 2
mov al, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-76], ebx
push offset _Lt_03E1
push 1421
push dword ptr [ebp-76]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B5A
jmp eax
.Lt_0B5A:
mov eax, dword ptr [ebp-8]
sal eax, 1
mov ecx, dword ptr [ebp-76]
add ecx, eax
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-88], ebx
push offset _Lt_03E1
push 1422
push dword ptr [ebp-88]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B5B
jmp eax
.Lt_0B5B:
mov eax, dword ptr [ebp-88]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax+1]
add ebx, dword ptr [ebp-68]
sar ebx, 2
mov al, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-84], ebx
push offset _Lt_03E1
push 1422
push dword ptr [ebp-84]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B5C
jmp eax
.Lt_0B5C:
mov eax, dword ptr [ebp-8]
sal eax, 1
mov ecx, dword ptr [ebp-84]
add ecx, eax
mov byte ptr [ecx+1], bl
.Lt_0B3F:
inc dword ptr [ebp-8]
.Lt_0B3E:
mov ebx, dword ptr [ebp-64]
cmp dword ptr [ebp-8], ebx
jle .Lt_0B41
.Lt_0B40:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-40], ebx
push offset _Lt_03E1
push 1424
push dword ptr [ebp-40]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B5D
jmp eax
.Lt_0B5D:
mov eax, dword ptr [ebp-40]
add eax, dword ptr [ebp+20]
movzx ebx, byte ptr [eax-2]
imul ebx, 3
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-44], eax
push offset _Lt_03E1
push 1424
push dword ptr [ebp-44]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B5E
jmp eax
.Lt_0B5E:
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebp+20]
movzx ecx, byte ptr [eax-1]
add ebx, ecx
add ebx, 2
sar ebx, 2
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-36], ebx
push offset _Lt_03E1
push 1424
push dword ptr [ebp-36]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B5F
jmp eax
.Lt_0B5F:
mov eax, dword ptr [ebp-8]
sal eax, 1
mov ecx, dword ptr [ebp-36]
add ecx, eax
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 1425
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B60
jmp eax
.Lt_0B60:
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-48], ebx
push offset _Lt_03E1
push 1425
push dword ptr [ebp-48]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B61
jmp eax
.Lt_0B61:
mov eax, dword ptr [ebp-8]
sal eax, 1
mov ecx, dword ptr [ebp-48]
add ecx, eax
mov al, byte ptr [ebx-1]
mov byte ptr [ecx+1], al
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0B31:
push dword ptr [ebp-60]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-56]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RESAMPLE_ROW_HV_2
_RESAMPLE_ROW_HV_2:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0B79
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_0B62:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+20], 1
jne .Lt_0B65
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03E1
push 1434
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B7B
jmp eax
.Lt_0B7B:
mov eax, dword ptr [ebp-48]
movzx ebx, byte ptr [eax]
imul ebx, 3
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-52], eax
push offset _Lt_03E1
push 1434
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B7C
jmp eax
.Lt_0B7C:
mov eax, dword ptr [ebp-52]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, 2
sar ebx, 2
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 1434
push dword ptr [ebp-44]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B7D
jmp eax
.Lt_0B7D:
mov eax, dword ptr [ebp-44]
mov byte ptr [eax], bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-60], ebx
push offset _Lt_03E1
push 1435
push dword ptr [ebp-60]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B7E
jmp eax
.Lt_0B7E:
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-56], ebx
push offset _Lt_03E1
push 1435
push dword ptr [ebp-56]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B7F
jmp eax
.Lt_0B7F:
mov eax, dword ptr [ebp-56]
mov cl, byte ptr [ebx]
mov byte ptr [eax+1], cl
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .Lt_0B63
.Lt_0B65:
.Lt_0B64:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-20], ecx
push offset _Lt_03E1
push 1439
push dword ptr [ebp-20]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B80
jmp eax
.Lt_0B80:
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [eax]
imul ecx, 3
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
push offset _Lt_03E1
push 1439
push dword ptr [ebp-24]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B81
jmp eax
.Lt_0B81:
mov eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax]
add ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
add ebx, 2
sar ebx, 2
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-28], ebx
push offset _Lt_03E1
push 1440
push dword ptr [ebp-28]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B82
jmp eax
.Lt_0B82:
mov eax, dword ptr [ebp-28]
mov byte ptr [eax], bl
mov dword ptr [ebp-8], 1
mov ebx, dword ptr [ebp+20]
dec ebx
mov dword ptr [ebp-44], ebx
jmp .Lt_0B6F
.Lt_0B72:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-48], ebx
push offset _Lt_03E1
push 1443
push dword ptr [ebp-48]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B83
jmp eax
.Lt_0B83:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
imul ebx, 3
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-52], eax
push offset _Lt_03E1
push 1443
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B84
jmp eax
.Lt_0B84:
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp-8]
movzx ecx, byte ptr [eax]
add ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
imul ebx, 3
add ebx, dword ptr [ebp-16]
add ebx, 8
sar ebx, 4
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-56], ebx
push offset _Lt_03E1
push 1444
push dword ptr [ebp-56]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B85
jmp eax
.Lt_0B85:
mov eax, dword ptr [ebp-8]
sal eax, 1
mov ecx, dword ptr [ebp-56]
add ecx, eax
mov byte ptr [ecx-1], bl
mov ebx, dword ptr [ebp-16]
imul ebx, 3
add ebx, dword ptr [ebp-12]
add ebx, 8
sar ebx, 4
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-60], ebx
push offset _Lt_03E1
push 1445
push dword ptr [ebp-60]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B86
jmp eax
.Lt_0B86:
mov eax, dword ptr [ebp-8]
sal eax, 1
mov ecx, dword ptr [ebp-60]
add ecx, eax
mov byte ptr [ecx], bl
.Lt_0B70:
inc dword ptr [ebp-8]
.Lt_0B6F:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebp-8], ebx
jle .Lt_0B72
.Lt_0B71:
mov ebx, dword ptr [ebp-16]
add ebx, 2
sar ebx, 2
mov cl, bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-32], ebx
push offset _Lt_03E1
push 1447
push dword ptr [ebp-32]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B87
jmp eax
.Lt_0B87:
mov eax, dword ptr [ebp+20]
sal eax, 1
mov ecx, dword ptr [ebp-32]
add ecx, eax
mov byte ptr [ecx-1], bl
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0B63:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-36]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RESAMPLE_ROW_GENERIC
_RESAMPLE_ROW_GENERIC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0B97
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0B88:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_0B8B
.Lt_0B8E:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_0B90
.Lt_0B93:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-36], eax
push offset _Lt_03E1
push 1457
push dword ptr [ebp-36]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B99
jmp eax
.Lt_0B99:
mov eax, dword ptr [ebp-36]
add eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-32], ebx
push offset _Lt_03E1
push 1457
push dword ptr [ebp-32]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0B9A
jmp eax
.Lt_0B9A:
mov eax, dword ptr [ebp+24]
imul eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebp-32]
add ecx, eax
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
.Lt_0B91:
inc dword ptr [ebp-12]
.Lt_0B90:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-12], eax
jle .Lt_0B93
.Lt_0B92:
.Lt_0B8C:
inc dword ptr [ebp-8]
.Lt_0B8B:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-8], eax
jle .Lt_0B8E
.Lt_0B8D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0B89:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__16YCBCR_TO_RGB_ROWEPhS0_S0_S0_ii
__ZN21_SYSTEME_CPCDOS_OSX__16YCBCR_TO_RGB_ROWEPhS0_S0_S0_ii:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_0B9B:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0BB6
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
dec eax
mov dword ptr [ebp-16], eax
jmp .Lt_0B9E
.Lt_0BA1:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
push offset _Lt_03E1
push 1467
push dword ptr [ebp-24]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BB8
jmp eax
.Lt_0BB8:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax]
sal ebx, 16
add ebx, 32768
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 1469
push dword ptr [ebp-44]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BB9
jmp eax
.Lt_0BB9:
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax]
add ebx, -128
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 1470
push dword ptr [ebp-52]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BBA
jmp eax
.Lt_0BBA:
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax]
add ebx, -128
mov dword ptr [ebp-48], ebx
fild dword ptr [ebp-20]
fild dword ptr [ebp-40]
fmul qword ptr [_Lt_0BBB]
fxch st(1)
faddp
fistp dword ptr [ebp-28]
fild dword ptr [ebp-20]
fild dword ptr [ebp-40]
fmul qword ptr [_Lt_0BBC]
fxch st(1)
fsubrp
fild dword ptr [ebp-48]
fmul qword ptr [_Lt_0BBD]
fxch st(1)
fsubrp
fistp dword ptr [ebp-32]
fild dword ptr [ebp-20]
fild dword ptr [ebp-48]
fmul qword ptr [_Lt_0BBE]
fxch st(1)
faddp
fistp dword ptr [ebp-36]
sar dword ptr [ebp-28], 16
sar dword ptr [ebp-32], 16
sar dword ptr [ebp-36], 16
cmp dword ptr [ebp-28], 0
jge .Lt_0BA8
mov dword ptr [ebp-64], 0
jmp .Lt_0BBF
.Lt_0BA8:
cmp dword ptr [ebp-28], 255
jle .Lt_0BA6
mov dword ptr [ebp-60], 255
jmp .Lt_0BC0
.Lt_0BA6:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-60], ebx
.Lt_0BC0:
mov ebx, dword ptr [ebp-60]
mov dword ptr [ebp-64], ebx
.Lt_0BBF:
mov bl, byte ptr [ebp-64]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-56], eax
push offset _Lt_03E1
push 1477
push dword ptr [ebp-56]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BC1
jmp eax
.Lt_0BC1:
mov eax, dword ptr [ebp-56]
mov byte ptr [eax], bl
cmp dword ptr [ebp-32], 0
jge .Lt_0BAD
mov dword ptr [ebp-76], 0
jmp .Lt_0BC2
.Lt_0BAD:
cmp dword ptr [ebp-32], 255
jle .Lt_0BAB
mov dword ptr [ebp-72], 255
jmp .Lt_0BC3
.Lt_0BAB:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-72], ebx
.Lt_0BC3:
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-76], ebx
.Lt_0BC2:
mov bl, byte ptr [ebp-76]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-68], eax
push offset _Lt_03E1
push 1478
push dword ptr [ebp-68]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BC4
jmp eax
.Lt_0BC4:
mov eax, dword ptr [ebp-68]
mov byte ptr [eax+1], bl
cmp dword ptr [ebp-36], 0
jge .Lt_0BB2
mov dword ptr [ebp-88], 0
jmp .Lt_0BC5
.Lt_0BB2:
cmp dword ptr [ebp-36], 255
jle .Lt_0BB0
mov dword ptr [ebp-84], 255
jmp .Lt_0BC6
.Lt_0BB0:
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-84], ebx
.Lt_0BC6:
mov ebx, dword ptr [ebp-84]
mov dword ptr [ebp-88], ebx
.Lt_0BC5:
mov bl, byte ptr [ebp-88]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-80], eax
push offset _Lt_03E1
push 1479
push dword ptr [ebp-80]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BC7
jmp eax
.Lt_0BC7:
mov eax, dword ptr [ebp-80]
mov byte ptr [eax+2], bl
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-92], ebx
push offset _Lt_03E1
push 1480
push dword ptr [ebp-92]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0BC8
jmp eax
.Lt_0BC8:
mov eax, dword ptr [ebp-92]
mov byte ptr [eax+3], 255
mov eax, dword ptr [ebp+32]
add dword ptr [ebp+12], eax
.Lt_0B9F:
inc dword ptr [ebp-4]
.Lt_0B9E:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-4], eax
jle .Lt_0BA1
.Lt_0BA0:
.Lt_0B9C:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12CLEANUP_JPEGEP14_TABLEAU_JPEG_
__ZN21_SYSTEME_CPCDOS_OSX__12CLEANUP_JPEGEP14_TABLEAU_JPEG_:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0BC9:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0BEA
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0BCC
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0BCE
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 20
push offset _Lt_0BCF
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
jmp .Lt_0BCD
.Lt_0BCE:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 19
push offset _Lt_0BD1
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
.Lt_0BCD:
.Lt_0BCC:
.Lt_0BCB:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+332]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0BD5
.Lt_0BD8:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-28], ebx
push offset _Lt_03E1
push 1497
push 3
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0BEC
jmp eax
.Lt_0BEC:
mov eax, dword ptr [ebp-28]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+13832], 0
je .Lt_0BDC
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 1498
push 3
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0BED
jmp eax
.Lt_0BED:
mov eax, dword ptr [ebp-44]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx+13836]
call _free
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 1499
push 3
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0BEE
jmp eax
.Lt_0BEE:
mov eax, dword ptr [ebp-52]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov dword ptr [ebx+13832], 0
.Lt_0BDC:
.Lt_0BDB:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-36], ebx
push offset _Lt_03E1
push 1501
push 3
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0BEF
jmp eax
.Lt_0BEF:
mov eax, dword ptr [ebp-36]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+13840], 0
je .Lt_0BE4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-44], ebx
push offset _Lt_03E1
push 1502
push 3
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0BF0
jmp eax
.Lt_0BF0:
mov eax, dword ptr [ebp-44]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx+13840]
call _free
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-52], ebx
push offset _Lt_03E1
push 1503
push 3
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0BF1
jmp eax
.Lt_0BF1:
mov eax, dword ptr [ebp-52]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov dword ptr [ebx+13840], 0
.Lt_0BE4:
.Lt_0BE3:
.Lt_0BD6:
inc dword ptr [ebp-4]
.Lt_0BD5:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-4], ebx
jle .Lt_0BD8
.Lt_0BD7:
.Lt_0BCA:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__15LOAD_JPEG_IMAGEEP14_TABLEAU_JPEG_RiRiRii
__ZN21_SYSTEME_CPCDOS_OSX__15LOAD_JPEG_IMAGEEP14_TABLEAU_JPEG_RiRiRii:
push ebp
mov ebp, esp
sub esp, 472
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-268], eax
push offset _Lt_0CAC
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-272], eax
.Lt_0BF2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+28]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+28]
cmp ebx, 4
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0BF5
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0BF7
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0BF9
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 25
push offset _Lt_0BFA
push -1
lea ebx, [ebp-284]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0BF8
.Lt_0BF9:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 25
push offset _Lt_0BFC
push -1
lea ebx, [ebp-284]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0BF8:
.Lt_0BF7:
.Lt_0BF6:
mov dword ptr [ebp-4], 0
jmp .Lt_0BF3
.Lt_0BF5:
.Lt_0BF4:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+332], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__17DECODE_JPEG_IMAGEEP14_TABLEAU_JPEG_
add esp, 8
test eax, eax
jne .Lt_0C00
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12CLEANUP_JPEGEP14_TABLEAU_JPEG_
add esp, 8
mov dword ptr [ebp-4], 0
jmp .Lt_0BF3
.Lt_0C00:
.Lt_0BFF:
cmp dword ptr [ebp+28], 0
je .Lt_0C02
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-8], eax
jmp .Lt_0C01
.Lt_0C02:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+332]
mov dword ptr [ebp-8], ebx
.Lt_0C01:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+332]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 3
setl bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0C06
mov dword ptr [ebp-12], 1
jmp .Lt_0C05
.Lt_0C06:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+332]
mov dword ptr [ebp-12], eax
.Lt_0C05:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-52]
mov dword ptr [ebp-84], eax
lea eax, [ebp-52]
mov dword ptr [ebp-80], eax
mov dword ptr [ebp-76], 16
mov dword ptr [ebp-72], 4
mov dword ptr [ebp-68], 1
mov dword ptr [ebp-64], 4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 3
lea eax, [ebp-212]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
pop edi
pop eax
lea eax, [ebp-212]
mov dword ptr [ebp-244], eax
lea eax, [ebp-212]
mov dword ptr [ebp-240], eax
mov dword ptr [ebp-236], 128
mov dword ptr [ebp-232], 32
mov dword ptr [ebp-228], 1
mov dword ptr [ebp-224], 4
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 3
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-276], eax
jmp .Lt_0C0B
.Lt_0C0E:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-284], eax
push offset _Lt_03E1
push 1549
push 3
push dword ptr [ebp-284]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CAE
jmp eax
.Lt_0CAE:
mov eax, dword ptr [ebp-284]
sal eax, 5
lea ebx, [ebp+eax-212]
mov dword ptr [ebp-280], ebx
push 1
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+324]
add eax, 3
push eax
call _calloc
add esp, 8
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-292], ebx
push offset _Lt_03E1
push 1550
push 3
push dword ptr [ebp-292]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CAF
jmp eax
.Lt_0CAF:
mov eax, dword ptr [ebp-292]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov dword ptr [ecx+13840], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-304], ebx
push offset _Lt_03E1
push 1551
push 3
push dword ptr [ebp-304]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CB0
jmp eax
.Lt_0CB0:
mov eax, dword ptr [ebp-304]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+13840], 0
jne .Lt_0C16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12CLEANUP_JPEGEP14_TABLEAU_JPEG_
add esp, 8
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0C18
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0C1A
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
push 0
push 31
push offset _Lt_0A8B
push -1
lea ebx, [ebp-432]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-432]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-432]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0C19
.Lt_0C1A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
push 0
push 24
push offset _Lt_0A8D
push -1
lea ebx, [ebp-432]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-432]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-432]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0C19:
.Lt_0C18:
.Lt_0C17:
mov dword ptr [ebp-4], 0
jmp .Lt_0BF3
.Lt_0C16:
.Lt_0C15:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-312], eax
push offset _Lt_03E1
push 1563
push dword ptr [ebp-312]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB1
jmp eax
.Lt_0CB1:
mov eax, dword ptr [ebp-312]
fild dword ptr [eax+268]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-320], eax
push offset _Lt_03E1
push 1563
push 3
push dword ptr [ebp-320]
fstp qword ptr [ebp-428]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CB2
jmp eax
.Lt_0CB2:
mov eax, dword ptr [ebp-320]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
fild dword ptr [ebx+13792]
fld qword ptr [ebp-428]
fdivrp
mov ebx, dword ptr [ebp-280]
mov dword ptr [ebp-308], ebx
push offset _Lt_03E1
push 1563
push dword ptr [ebp-308]
fstp qword ptr [ebp-436]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB3
jmp eax
.Lt_0CB3:
mov eax, dword ptr [ebp-308]
fld qword ptr [ebp-436]
fistp dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-328], eax
push offset _Lt_03E1
push 1564
push dword ptr [ebp-328]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB4
jmp eax
.Lt_0CB4:
mov eax, dword ptr [ebp-328]
fild dword ptr [eax+272]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-336], eax
push offset _Lt_03E1
push 1564
push 3
push dword ptr [ebp-336]
fstp qword ptr [ebp-444]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CB5
jmp eax
.Lt_0CB5:
mov eax, dword ptr [ebp-336]
imul eax, 56
mov ebx, dword ptr [ebp+12]
add ebx, eax
fild dword ptr [ebx+13796]
fld qword ptr [ebp-444]
fdivrp
mov ebx, dword ptr [ebp-280]
mov dword ptr [ebp-324], ebx
push offset _Lt_03E1
push 1564
push dword ptr [ebp-324]
fstp qword ptr [ebp-452]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB6
jmp eax
.Lt_0CB6:
mov eax, dword ptr [ebp-324]
fld qword ptr [ebp-452]
fistp dword ptr [eax+16]
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-344], eax
push offset _Lt_03E1
push 1565
push dword ptr [ebp-344]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB7
jmp eax
.Lt_0CB7:
mov eax, dword ptr [ebp-344]
mov ebx, dword ptr [eax+16]
sar ebx, 1
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-340], eax
push offset _Lt_03E1
push 1565
push dword ptr [ebp-340]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB8
jmp eax
.Lt_0CB8:
mov eax, dword ptr [ebp-340]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-356], eax
push offset _Lt_03E1
push 1566
push dword ptr [ebp-356]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CB9
jmp eax
.Lt_0CB9:
mov eax, dword ptr [ebp-356]
mov ecx, dword ptr [eax+12]
add ecx, dword ptr [ebx+324]
add ecx, 4294967295
push 0
push ecx
fild qword ptr [esp]
add esp, 8
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-360], ecx
push offset _Lt_03E1
push 1566
push dword ptr [ebp-360]
fstp qword ptr [ebp-460]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CBA
jmp eax
.Lt_0CBA:
mov eax, dword ptr [ebp-360]
fild dword ptr [eax+12]
fld qword ptr [ebp-460]
fdivrp
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-348], eax
push offset _Lt_03E1
push 1566
push dword ptr [ebp-348]
fstp qword ptr [ebp-468]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CBB
jmp eax
.Lt_0CBB:
mov eax, dword ptr [ebp-348]
fld qword ptr [ebp-468]
fistp dword ptr [eax+20]
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-364], eax
push offset _Lt_03E1
push 1567
push dword ptr [ebp-364]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CBC
jmp eax
.Lt_0CBC:
mov eax, dword ptr [ebp-364]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-376], eax
push offset _Lt_03E1
push 1568
push 3
push dword ptr [ebp-376]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CBD
jmp eax
.Lt_0CBD:
mov eax, dword ptr [ebp-376]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-368], eax
push offset _Lt_03E1
push 1568
push dword ptr [ebp-368]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CBE
jmp eax
.Lt_0CBE:
mov eax, dword ptr [ebp-368]
mov ecx, dword ptr [ebx+13832]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp-24]
mov dword ptr [ebp-388], ecx
push offset _Lt_03E1
push 1569
push 3
push dword ptr [ebp-388]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CBF
jmp eax
.Lt_0CBF:
mov eax, dword ptr [ebp-388]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-380], eax
push offset _Lt_03E1
push 1569
push dword ptr [ebp-380]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CC0
jmp eax
.Lt_0CC0:
mov eax, dword ptr [ebp-380]
mov ecx, dword ptr [ebx+13832]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-392], ecx
push offset _Lt_03E1
push 1571
push dword ptr [ebp-392]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CC1
jmp eax
.Lt_0CC1:
mov eax, dword ptr [ebp-392]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-396], eax
push offset _Lt_03E1
push 1571
push dword ptr [ebp-396]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CC2
jmp eax
.Lt_0CC2:
mov eax, dword ptr [ebp-396]
mov ecx, dword ptr [eax+16]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0C35
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-472], ecx
push offset _Lt_03E1
push 1572
push dword ptr [ebp-472]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CC9
jmp eax
.Lt_0CC9:
mov eax, dword ptr [ebp-472]
mov ecx, offset _RESAMPLE_ROW_1
mov dword ptr [eax], ecx
jmp .Lt_0C34
.Lt_0C35:
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-400], ecx
push offset _Lt_03E1
push 1573
push dword ptr [ebp-400]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CCA
jmp eax
.Lt_0CCA:
mov eax, dword ptr [ebp-400]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-404], eax
push offset _Lt_03E1
push 1573
push dword ptr [ebp-404]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CCB
jmp eax
.Lt_0CCB:
mov eax, dword ptr [ebp-404]
mov ecx, dword ptr [eax+16]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0C38
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-424], ecx
push offset _Lt_03E1
push 1574
push dword ptr [ebp-424]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CCC
jmp eax
.Lt_0CCC:
mov eax, dword ptr [ebp-424]
mov ecx, offset _RESAMPLE_ROW_V_2
mov dword ptr [eax], ecx
jmp .Lt_0C34
.Lt_0C38:
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-408], ecx
push offset _Lt_03E1
push 1575
push dword ptr [ebp-408]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CCD
jmp eax
.Lt_0CCD:
mov eax, dword ptr [ebp-408]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-412], eax
push offset _Lt_03E1
push 1575
push dword ptr [ebp-412]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CCE
jmp eax
.Lt_0CCE:
mov eax, dword ptr [ebp-412]
mov ecx, dword ptr [eax+16]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0C3D
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-424], ecx
push offset _Lt_03E1
push 1576
push dword ptr [ebp-424]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CCF
jmp eax
.Lt_0CCF:
mov eax, dword ptr [ebp-424]
mov ecx, offset _RESAMPLE_ROW_H_2
mov dword ptr [eax], ecx
jmp .Lt_0C34
.Lt_0C3D:
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-416], ecx
push offset _Lt_03E1
push 1577
push dword ptr [ebp-416]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD0
jmp eax
.Lt_0CD0:
mov eax, dword ptr [ebp-416]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-280]
mov dword ptr [ebp-420], eax
push offset _Lt_03E1
push 1577
push dword ptr [ebp-420]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD1
jmp eax
.Lt_0CD1:
mov eax, dword ptr [ebp-420]
mov ecx, dword ptr [eax+16]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0C42
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-424], ecx
push offset _Lt_03E1
push 1578
push dword ptr [ebp-424]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD2
jmp eax
.Lt_0CD2:
mov eax, dword ptr [ebp-424]
mov ecx, offset _RESAMPLE_ROW_HV_2
mov dword ptr [eax], ecx
jmp .Lt_0C34
.Lt_0C42:
mov ecx, dword ptr [ebp-280]
mov dword ptr [ebp-424], ecx
push offset _Lt_03E1
push 1580
push dword ptr [ebp-424]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD3
jmp eax
.Lt_0CD3:
mov eax, dword ptr [ebp-424]
mov ecx, offset _RESAMPLE_ROW_GENERIC
mov dword ptr [eax], ecx
.Lt_0C34:
.Lt_0C0C:
inc dword ptr [ebp-24]
.Lt_0C0B:
mov ecx, dword ptr [ebp-276]
cmp dword ptr [ebp-24], ecx
jle .Lt_0C0E
.Lt_0C0D:
push 1
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+324]
imul eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
imul eax, dword ptr [ecx+328]
inc eax
push eax
call _calloc
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0C4C
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12CLEANUP_JPEGEP14_TABLEAU_JPEG_
add esp, 8
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0C4E
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0C50
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 31
push offset _Lt_0A8B
push -1
lea ecx, [ebp-284]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0C4F
.Lt_0C50:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+100]
push ecx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 24
push offset _Lt_0A8D
push -1
lea ecx, [ebp-284]
push ecx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0C4F:
.Lt_0C4E:
.Lt_0C4D:
mov dword ptr [ebp-4], 0
jmp .Lt_0BF3
.Lt_0C4C:
.Lt_0C4B:
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+328]
add ecx, 4294967295
mov dword ptr [ebp-280], ecx
jmp .Lt_0C55
.Lt_0C58:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+324]
imul eax, dword ptr [ebp-8]
imul eax, dword ptr [ebp-32]
mov ecx, eax
mov eax, dword ptr [ebp-36]
add eax, ecx
mov dword ptr [ebp-284], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-292], eax
jmp .Lt_0C5B
.Lt_0C5E:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-300], eax
push offset _Lt_03E1
push 1600
push 3
push dword ptr [ebp-300]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CD4
jmp eax
.Lt_0CD4:
mov eax, dword ptr [ebp-300]
sal eax, 5
lea ecx, [ebp+eax-212]
mov dword ptr [ebp-296], ecx
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-308], ecx
push offset _Lt_03E1
push 1601
push dword ptr [ebp-308]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD5
jmp eax
.Lt_0CD5:
mov eax, dword ptr [ebp-308]
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-312], ecx
push offset _Lt_03E1
push 1601
push dword ptr [ebp-312]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD6
jmp eax
.Lt_0CD6:
mov eax, dword ptr [ebp-312]
mov ecx, dword ptr [eax+16]
sar ecx, 1
mov eax, dword ptr [ebx+24]
cmp eax, ecx
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-304], eax
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-364], eax
push offset _Lt_03E1
push 1606
push dword ptr [ebp-364]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD7
jmp eax
.Lt_0CD7:
mov eax, dword ptr [ebp-364]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-360], eax
push offset _Lt_03E1
push 1605
push dword ptr [ebp-360]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CD8
jmp eax
.Lt_0CD8:
mov eax, dword ptr [ebp-360]
push dword ptr [eax+20]
cmp dword ptr [ebp-304], 0
je .Lt_0C6D
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-348], eax
push offset _Lt_03E1
push 1604
push dword ptr [ebp-348]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CDA
jmp eax
.Lt_0CDA:
mov eax, dword ptr [ebp-348]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-356], ecx
jmp .Lt_0CD9
.Lt_0C6D:
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-352], ecx
push offset _Lt_03E1
push 1604
push dword ptr [ebp-352]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CDB
jmp eax
.Lt_0CDB:
mov eax, dword ptr [ebp-352]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-356], ecx
.Lt_0CD9:
push dword ptr [ebp-356]
cmp dword ptr [ebp-304], 0
je .Lt_0C69
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-336], ecx
push offset _Lt_03E1
push 1603
push dword ptr [ebp-336]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CDD
jmp eax
.Lt_0CDD:
mov eax, dword ptr [ebp-336]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-344], ecx
jmp .Lt_0CDC
.Lt_0C69:
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-340], ecx
push offset _Lt_03E1
push 1603
push dword ptr [ebp-340]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CDE
jmp eax
.Lt_0CDE:
mov eax, dword ptr [ebp-340]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-344], ecx
.Lt_0CDC:
push dword ptr [ebp-344]
mov ecx, dword ptr [ebp-24]
mov dword ptr [ebp-332], ecx
push offset _Lt_03E1
push 1602
push 3
push dword ptr [ebp-332]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CDF
jmp eax
.Lt_0CDF:
mov eax, dword ptr [ebp-332]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
push dword ptr [ecx+13840]
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-320], ecx
push offset _Lt_03E1
push 1602
push dword ptr [ebp-320]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE0
jmp eax
.Lt_0CE0:
mov eax, dword ptr [ebp-320]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-324], ecx
push offset _Lt_03E1
push 1602
push dword ptr [ebp-324]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE1
jmp eax
.Lt_0CE1:
call dword ptr [ebp-324]
add esp, 20
mov ecx, dword ptr [ebp-24]
mov dword ptr [ebp-316], ecx
push offset _Lt_03E1
push 1602
push 3
push dword ptr [ebp-316]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CE2
jmp eax
.Lt_0CE2:
mov eax, dword ptr [ebp-316]
mov dword ptr [ebp+eax*4-52], ebx
mov ebx, dword ptr [ebp-296]
mov dword ptr [ebp-368], ebx
push offset _Lt_03E1
push 1607
push dword ptr [ebp-368]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE3
jmp eax
.Lt_0CE3:
mov eax, dword ptr [ebp-368]
mov ebx, dword ptr [eax+24]
inc ebx
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-368], eax
push offset _Lt_03E1
push 1607
push dword ptr [ebp-368]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE4
jmp eax
.Lt_0CE4:
mov eax, dword ptr [ebp-368]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-296]
mov dword ptr [ebp-372], ebx
push offset _Lt_03E1
push 1608
push dword ptr [ebp-372]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE5
jmp eax
.Lt_0CE5:
mov eax, dword ptr [ebp-372]
mov ebx, dword ptr [ebp-296]
mov dword ptr [ebp-376], ebx
push offset _Lt_03E1
push 1608
push dword ptr [ebp-376]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE6
jmp eax
.Lt_0CE6:
mov eax, dword ptr [ebp-376]
mov ecx, dword ptr [eax+16]
cmp dword ptr [ebx+24], ecx
jl .Lt_0C75
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-380], ecx
push offset _Lt_03E1
push 1609
push dword ptr [ebp-380]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE7
jmp eax
.Lt_0CE7:
mov eax, dword ptr [ebp-380]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-388], eax
push offset _Lt_03E1
push 1610
push dword ptr [ebp-388]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE8
jmp eax
.Lt_0CE8:
mov eax, dword ptr [ebp-388]
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-384], ecx
push offset _Lt_03E1
push 1610
push dword ptr [ebp-384]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CE9
jmp eax
.Lt_0CE9:
mov eax, dword ptr [ebp-384]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-392], ecx
push offset _Lt_03E1
push 1611
push dword ptr [ebp-392]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CEA
jmp eax
.Lt_0CEA:
mov eax, dword ptr [ebp-392]
mov ecx, dword ptr [eax+28]
inc ecx
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-392], eax
push offset _Lt_03E1
push 1611
push dword ptr [ebp-392]
mov ebx, ecx
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CEB
jmp eax
.Lt_0CEB:
mov eax, dword ptr [ebp-392]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-296]
mov dword ptr [ebp-396], ebx
push offset _Lt_03E1
push 1612
push dword ptr [ebp-396]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CEC
jmp eax
.Lt_0CEC:
mov eax, dword ptr [ebp-396]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-404], ebx
push offset _Lt_03E1
push 1612
push 3
push dword ptr [ebp-404]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CED
jmp eax
.Lt_0CED:
mov eax, dword ptr [ebp-404]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ecx+13820]
cmp dword ptr [ebx+28], eax
jge .Lt_0C7E
mov eax, dword ptr [ebp-296]
mov dword ptr [ebp-408], eax
push offset _Lt_03E1
push 1613
push dword ptr [ebp-408]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CEE
jmp eax
.Lt_0CEE:
mov eax, dword ptr [ebp-408]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-416], ebx
push offset _Lt_03E1
push 1613
push 3
push dword ptr [ebp-416]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0CEF
jmp eax
.Lt_0CEF:
mov eax, dword ptr [ebp-416]
imul eax, 56
mov ecx, dword ptr [ebp+12]
add ecx, eax
mov eax, dword ptr [ebx+8]
add eax, dword ptr [ecx+13824]
mov ecx, dword ptr [ebp-296]
mov dword ptr [ebp-408], ecx
push offset _Lt_03E1
push 1613
push dword ptr [ebp-408]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF0
jmp eax
.Lt_0CF0:
mov eax, dword ptr [ebp-408]
mov dword ptr [eax+8], ebx
.Lt_0C7E:
.Lt_0C7D:
.Lt_0C75:
.Lt_0C74:
.Lt_0C5C:
inc dword ptr [ebp-24]
.Lt_0C5B:
mov ebx, dword ptr [ebp-292]
cmp dword ptr [ebp-24], ebx
jle .Lt_0C5E
.Lt_0C5D:
cmp dword ptr [ebp-8], 3
jl .Lt_0C83
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp-292], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+332], 3
jne .Lt_0C86
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+324]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
push dword ptr [ebp-292]
push dword ptr [ebp-284]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__16YCBCR_TO_RGB_ROWEPhS0_S0_S0_ii
add esp, 28
jmp .Lt_0C85
.Lt_0C86:
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+324]
add eax, 4294967295
mov dword ptr [ebp-304], eax
jmp .Lt_0C8A
.Lt_0C8D:
mov eax, dword ptr [ebp-292]
mov dword ptr [ebp-312], eax
push offset _Lt_03E1
push 1623
push dword ptr [ebp-312]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF1
jmp eax
.Lt_0CF1:
mov eax, dword ptr [ebp-312]
add eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-284]
mov dword ptr [ebp-308], ebx
push offset _Lt_03E1
push 1623
push dword ptr [ebp-308]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF2
jmp eax
.Lt_0CF2:
mov eax, dword ptr [ebp-308]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
mov ecx, dword ptr [ebp-292]
mov dword ptr [ebp-320], ecx
push offset _Lt_03E1
push 1624
push dword ptr [ebp-320]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF3
jmp eax
.Lt_0CF3:
mov eax, dword ptr [ebp-320]
add eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-284]
mov dword ptr [ebp-316], ecx
push offset _Lt_03E1
push 1624
push dword ptr [ebp-316]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF4
jmp eax
.Lt_0CF4:
mov eax, dword ptr [ebp-316]
mov cl, byte ptr [ebx]
mov byte ptr [eax+1], cl
mov ecx, dword ptr [ebp-292]
mov dword ptr [ebp-328], ecx
push offset _Lt_03E1
push 1625
push dword ptr [ebp-328]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF5
jmp eax
.Lt_0CF5:
mov eax, dword ptr [ebp-328]
add eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-284]
mov dword ptr [ebp-324], ecx
push offset _Lt_03E1
push 1625
push dword ptr [ebp-324]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF6
jmp eax
.Lt_0CF6:
mov eax, dword ptr [ebp-324]
mov cl, byte ptr [ebx]
mov byte ptr [eax+2], cl
mov ecx, dword ptr [ebp-284]
mov dword ptr [ebp-332], ecx
push offset _Lt_03E1
push 1626
push dword ptr [ebp-332]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF7
jmp eax
.Lt_0CF7:
mov eax, dword ptr [ebp-332]
mov byte ptr [eax+3], 255
mov eax, dword ptr [ebp-8]
add dword ptr [ebp-284], eax
.Lt_0C8B:
inc dword ptr [ebp-28]
.Lt_0C8A:
mov eax, dword ptr [ebp-304]
cmp dword ptr [ebp-28], eax
jbe .Lt_0C8D
.Lt_0C8C:
.Lt_0C85:
jmp .Lt_0C82
.Lt_0C83:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-292], eax
cmp dword ptr [ebp-8], 1
jne .Lt_0C96
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+324]
add ecx, 4294967295
mov dword ptr [ebp-300], ecx
jmp .Lt_0C99
.Lt_0C9C:
mov ecx, dword ptr [ebp-292]
mov dword ptr [ebp-308], ecx
push offset _Lt_03E1
push 1634
push dword ptr [ebp-308]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF8
jmp eax
.Lt_0CF8:
mov eax, dword ptr [ebp-308]
add eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-284]
mov dword ptr [ebp-304], ecx
push offset _Lt_03E1
push 1634
push dword ptr [ebp-304]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CF9
jmp eax
.Lt_0CF9:
mov eax, dword ptr [ebp-304]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
.Lt_0C9A:
inc dword ptr [ebp-28]
.Lt_0C99:
mov ecx, dword ptr [ebp-300]
cmp dword ptr [ebp-28], ecx
jbe .Lt_0C9C
.Lt_0C9B:
jmp .Lt_0C95
.Lt_0C96:
mov dword ptr [ebp-28], 0
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+324]
add eax, 4294967295
mov dword ptr [ebp-300], eax
jmp .Lt_0CA1
.Lt_0CA4:
mov eax, dword ptr [ebp-292]
mov dword ptr [ebp-308], eax
push offset _Lt_03E1
push 1638
push dword ptr [ebp-308]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CFA
jmp eax
.Lt_0CFA:
mov eax, dword ptr [ebp-308]
add eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-284]
mov dword ptr [ebp-304], ecx
push offset _Lt_03E1
push 1638
push dword ptr [ebp-304]
mov ebx, eax
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CFB
jmp eax
.Lt_0CFB:
mov eax, dword ptr [ebp-304]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
mov ecx, dword ptr [ebp-284]
mov dword ptr [ebp-312], ecx
push offset _Lt_03E1
push 1639
push dword ptr [ebp-312]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0CFC
jmp eax
.Lt_0CFC:
mov eax, dword ptr [ebp-312]
mov byte ptr [eax+1], 255
add dword ptr [ebp-284], 2
.Lt_0CA2:
inc dword ptr [ebp-28]
.Lt_0CA1:
mov eax, dword ptr [ebp-300]
cmp dword ptr [ebp-28], eax
jbe .Lt_0CA4
.Lt_0CA3:
.Lt_0C95:
.Lt_0C82:
.Lt_0C56:
inc dword ptr [ebp-32]
.Lt_0C55:
mov eax, dword ptr [ebp-280]
cmp dword ptr [ebp-32], eax
jbe .Lt_0C58
.Lt_0C57:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12CLEANUP_JPEGEP14_TABLEAU_JPEG_
add esp, 8
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [eax+324]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+328]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [eax+332]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-4], ebx
.Lt_0BF3:
push dword ptr [ebp-272]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-268]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__14_TESTER_SI_JPGEPhi
__ZN21_SYSTEME_CPCDOS_OSX__14_TESTER_SI_JPGEPhi:
push ebp
mov ebp, esp
sub esp, 14024
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-14020], eax
push offset _Lt_0D0D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-14024], eax
.Lt_0D0A:
lea eax, [ebp-14016]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3503
rep stosd
pop edi
pop eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-13692]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__13DEBUT_MEMOIREEP13_JPEG_BUFFER_Phi
add esp, 16
push 1
lea eax, [ebp-14016]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__18DECODE_JPEG_HEADEREP14_TABLEAU_JPEG_i
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0D0B:
push dword ptr [ebp-14024]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-14020]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__12_DECODER_JPGEPhiRiRiRii
__ZN21_SYSTEME_CPCDOS_OSX__12_DECODER_JPGEPhiRiRiRii:
push ebp
mov ebp, esp
sub esp, 14024
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-14020], eax
push offset _Lt_0D12
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-14024], eax
.Lt_0D0F:
lea eax, [ebp-14016]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 3503
rep stosd
pop edi
pop eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-13692]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__13DEBUT_MEMOIREEP13_JPEG_BUFFER_Phi
add esp, 16
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
lea eax, [ebp-14016]
push eax
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__15LOAD_JPEG_IMAGEEP14_TABLEAU_JPEG_RiRiRii
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_0D10:
push dword ptr [ebp-14024]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-14020]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN21_SYSTEME_CPCDOS_OSX__8_LIREJPGEPhiRiRiRii
__ZN21_SYSTEME_CPCDOS_OSX__8_LIREJPGEPhiRiRiRii:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0D21
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0D14:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__14_TESTER_SI_JPGEPhi
add esp, 12
test eax, eax
je .Lt_0D17
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__12_DECODER_JPGEPhiRiRiRii
add esp, 28
mov dword ptr [ebp-4], eax
jmp .Lt_0D15
.Lt_0D17:
.Lt_0D16:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0D19
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D1B
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 44
push offset _Lt_0D1C
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
jmp .Lt_0D1A
.Lt_0D1B:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 42
push offset _Lt_0D1E
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
.Lt_0D1A:
.Lt_0D19:
.Lt_0D18:
mov dword ptr [ebp-4], 0
.Lt_0D15:
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

.globl __ZN21_SYSTEME_CPCDOS_OSX__10CHARGERJPGE8FBSTRINGRiRiRi
__ZN21_SYSTEME_CPCDOS_OSX__10CHARGERJPGE8FBSTRINGRiRiRi:
push ebp
mov ebp, esp
sub esp, 184
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_0DAB
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_0D23:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-12], 3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_0D26
mov dword ptr [ebp-4], 0
jmp .Lt_0D24
.Lt_0D26:
.Lt_0D25:
call _fb_FileFree
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 1
push 0
push dword ptr [ebp+12]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0D28
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0D2A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D2C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 30
push offset _Lt_0D2D
push -1
lea ebx, [ebp-56]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0D2B
.Lt_0D2C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 25
push offset _Lt_0D2F
push -1
lea ebx, [ebp-56]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0D2B:
.Lt_0D2A:
.Lt_0D29:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
jmp .Lt_0D24
.Lt_0D28:
.Lt_0D27:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0D32
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D34
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 6
push offset _Lt_0423
push -1
push -1
push dword ptr [ebp+12]
push 39
push offset _Lt_0D35
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
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
jmp .Lt_0D33
.Lt_0D34:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 6
push offset _Lt_0423
push -1
push -1
push dword ptr [ebp+12]
push 30
push offset _Lt_0D39
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
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
.Lt_0D33:
.Lt_0D32:
.Lt_0D31:
push dword ptr [ebp-32]
call _fb_FileSize
add esp, 4
mov ebx, eax
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jge .Lt_0D3E
.Lt_0D3F:
push dword ptr [ebp-32]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0D40
lea eax, [.Lt_0D40]
push eax
lea eax, [.Lt_0D3F]
push eax
push offset _Lt_03E1
push 1721
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0D40:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0D42
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D44
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 30
push offset _Lt_0D45
push -1
lea ebx, [ebp-56]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0D43
.Lt_0D44:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 28
push offset _Lt_0D47
push -1
lea ebx, [ebp-56]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0D43:
.Lt_0D42:
.Lt_0D41:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
jmp .Lt_0D24
.Lt_0D3E:
.Lt_0D3D:
push dword ptr [ebp-16]
call _malloc
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0D4A:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-32]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0D4B
lea eax, [.Lt_0D4B]
push eax
lea eax, [.Lt_0D4A]
push eax
push offset _Lt_03E1
push 1734
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0D4B:
.Lt_0D4C:
push dword ptr [ebp-32]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0D4D
lea eax, [.Lt_0D4D]
push eax
lea eax, [.Lt_0D4C]
push eax
push offset _Lt_03E1
push 1736
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0D4D:
push dword ptr [ebp-12]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call __ZN21_SYSTEME_CPCDOS_OSX__8_LIREJPGEPhiRiRiRii
add esp, 28
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-24], 0
je .Lt_0D4F
push dword ptr [ebp-24]
call _free
add esp, 4
.Lt_0D4F:
cmp dword ptr [ebp-20], 0
je .Lt_0D51
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-52], 0
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D53
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 6
push offset _Lt_0D57
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0D56
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0D55
push -1
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_p
add esp, 8
push eax
push 30
push offset _Lt_0D54
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
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
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0D52
.Lt_0D53:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+100]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 6
push offset _Lt_0D57
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_0D60
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0D55
push -1
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_p
add esp, 8
push eax
push 27
push offset _Lt_0D5F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
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
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0D52:
push 0
push dword ptr [ebp-8]
push 4294902015
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _fb_GfxImageCreate
add esp, 20
mov dword ptr [ebp-52], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-56], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
dec ebx
mov dword ptr [ebp-60], ebx
jmp .Lt_0D69
.Lt_0D6C:
mov dword ptr [ebp-64], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
dec eax
mov dword ptr [ebp-68], eax
jmp .Lt_0D6E
.Lt_0D71:
push 0
push 4
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-72], eax
push offset _Lt_03E1
push 1759
push dword ptr [ebp-72]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0DAD
jmp eax
.Lt_0DAD:
mov eax, dword ptr [ebp-72]
movzx ebx, byte ptr [eax]
shl ebx, 16
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-76], eax
push offset _Lt_03E1
push 1759
push dword ptr [ebp-76]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0DAE
jmp eax
.Lt_0DAE:
mov eax, dword ptr [ebp-76]
movzx edx, byte ptr [eax+1]
shl edx, 8
or ebx, edx
mov edx, dword ptr [ebp-48]
mov dword ptr [ebp-80], edx
push offset _Lt_03E1
push 1759
push dword ptr [ebp-80]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_0DAF
jmp eax
.Lt_0DAF:
mov eax, dword ptr [ebp-80]
movzx edx, byte ptr [eax+2]
or ebx, edx
or ebx, 4278190080
push ebx
fild dword ptr [ebp-56]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-64]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-52]
call _fb_GfxPset
add esp, 24
mov ebx, dword ptr [ebp+24]
mov edx, dword ptr [ebx]
add dword ptr [ebp-48], edx
inc dword ptr [ebp-28]
fild dword ptr [ebp-28]
mov edx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
imul eax, dword ptr [edx]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0DB0]
fxch st(1)
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_0D76
mov dword ptr [ebp-28], 0
push 0
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
.Lt_0D76:
.Lt_0D75:
.Lt_0D6F:
inc dword ptr [ebp-64]
.Lt_0D6E:
mov eax, dword ptr [ebp-68]
cmp dword ptr [ebp-64], eax
jle .Lt_0D71
.Lt_0D70:
.Lt_0D6A:
inc dword ptr [ebp-56]
.Lt_0D69:
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-56], eax
jle .Lt_0D6C
.Lt_0D6B:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D78
mov eax, dword ptr [ebp+8]
lea edx, [eax+100]
push edx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 6
push offset _Lt_0D57
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_0D7B
push -1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0D7A
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0D55
push -1
push -1
push 8
push dword ptr [ebp-52]
call _fb_HEXEx_p
add esp, 8
push eax
push 24
push offset _Lt_0D79
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
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
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0D77
.Lt_0D78:
mov eax, dword ptr [ebp+8]
lea edx, [eax+100]
push edx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 6
push offset _Lt_0D57
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 8
push offset _Lt_0D89
push -1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_046F
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 9
push offset _Lt_0D88
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0D55
push -1
push -1
push 8
push dword ptr [ebp-52]
call _fb_HEXEx_p
add esp, 8
push eax
push 23
push offset _Lt_0D87
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
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
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0D77:
cmp dword ptr [ebp-20], 0
je .Lt_0D96
push dword ptr [ebp-20]
call _free
add esp, 4
.Lt_0D96:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0D98
mov eax, dword ptr [ebp+8]
lea edx, [eax+100]
push edx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 14
push offset _Lt_0D99
push -1
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_p
add esp, 8
push eax
push 30
push offset _Lt_0D54
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0D97
.Lt_0D98:
mov eax, dword ptr [ebp+8]
lea edx, [eax+100]
push edx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 11
push offset _Lt_0D9E
push -1
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_p
add esp, 8
push eax
push 28
push offset _Lt_0D9D
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0D97:
mov dword ptr [ebp-20], 0
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
jmp .Lt_0D24
.Lt_0D51:
.Lt_0D50:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0DA3
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0DA5
mov eax, dword ptr [ebp+8]
lea edx, [eax+100]
push edx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 41
push offset _Lt_0DA6
push -1
lea edx, [ebp-56]
push edx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0DA4
.Lt_0DA5:
mov eax, dword ptr [ebp+8]
lea edx, [eax+100]
push edx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 37
push offset _Lt_0DA8
push -1
lea edx, [ebp-56]
push edx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0DA4:
.Lt_0DA3:
.Lt_0DA2:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
.Lt_0D24:
push dword ptr [ebp-44]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-40]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__bitm_dec:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_03E1
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0DB2
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
_Lt_03C7:	.ascii	"bit_converter() SOURCE:\0"
.balign 4
_Lt_03C8:	.ascii	" DEST:\0"
.balign 4
_Lt_03D4:	.ascii	"CONVERT bitPerPixel_DESTINATION:\0"
.balign 4
_Lt_03D5:	.ascii	" PITCH:\0"
.balign 4
_Lt_03E1:	.ascii	"Core\\bitm_dec.bas\0"
.balign 4
_Lt_03E3:	.ascii	"NouvelleImage:\0"
.balign 4
_Lt_03E9:	.ascii	"BIT_CONVERTER\0"
.balign 4
_Lt_03ED:	.ascii	"ERR_046\0"
.balign 4
_Lt_03EF:	.ascii	"[SYSTEME] \0"
.balign 4
_Lt_03F0:	.ascii	" (\0"
.balign 4
_Lt_03F2:	.ascii	")\0"
.balign 4
_Lt_0401:	.ascii	"LIBPNG_ERROR_CALLBACK\0"
.balign 4
_Lt_0407:	.ascii	"CHARGER_PNG\0"
.balign 4
_Lt_040D:	.ascii	"CHARGER_JPG\0"
.balign 4
_Lt_0414:	.ascii	"TRANS32\0"
.balign 4
_Lt_0419:	.ascii	"rb\0"
.balign 4
_Lt_041F:	.ascii	"1.5.23\0"
.balign 4
_Lt_0422:	.ascii	"[SYSTEME] Chargement d'une image PNG(v1.5.23) '\0"
.balign 4
_Lt_0423:	.ascii	"' ...\0"
.balign 4
_Lt_042A:	.ascii	"[SYSTEM] Loading PNG(v1.5.23) image '\0"
.balign 4
_Lt_0430:	.ascii	"ERR_015\0"
.balign 4
_Lt_0432:	.ascii	"\"\0"
.balign 4
_Lt_043C:	.ascii	"AVT_043\0"
.balign 4
_Lt_0447:	.ascii	"AVT_044\0"
.balign 4
_Lt_0453:	.ascii	"AVT_045\0"
.balign 4
_Lt_045E:	.ascii	"AVT_046\0"
.balign 4
_Lt_046E:	.ascii	"[SYSTEME] Information du PNG charg\202 RVB r\202solution:\0"
.balign 4
_Lt_046F:	.ascii	"x\0"
.balign 4
_Lt_0470:	.ascii	" profondeur:\0"
.balign 4
_Lt_0471:	.ascii	" canal:\0"
.balign 4
_Lt_047C:	.ascii	"[SYSTEM] PNG info. RGB Size\0"
.balign 4
_Lt_047D:	.ascii	" depth:\0"
.balign 4
_Lt_048E:	.ascii	"[SYSTEME] Information du PNG charg\202 RVBA r\202solution:\0"
.balign 4
_Lt_0499:	.ascii	"[SYSTEM] PNG info. RGBA Size\0"
.balign 4
_Lt_04AA:	.ascii	"[SYSTEME] Information du PNG charg\202 Nuances de gris r\202solution:\0"
.balign 4
_Lt_04B5:	.ascii	"[SYSTEM] PNG info. Grade of grey Size\0"
.balign 4
_Lt_04C5:	.ascii	"[SYSTEME] Format de couleurs non support\202s\0"
.balign 4
_Lt_04C7:	.ascii	"[SYSTEM] Color format not supported\0"
.balign 4
_Lt_04CB:	.ascii	" PTR source 0x\0"
.balign 4
_Lt_04CC:	.ascii	" rowbytes\0"
.balign 4
_Lt_04D2:	.ascii	" Source PTR 0x\0"
.balign 4
_Lt_0573:	.ascii	"Deallocation\0"
.balign 4
_Lt_0579:	.ascii	"[SYSTEME] Chargement du PNG termine!\0"
.balign 4
_Lt_057B:	.ascii	"[SYSTEM] PNG Loaded!\0"
.balign 8
_Lt_057F:	.quad	0x4018000000000000
.balign 4
_Lt_05C4:	.ascii	"DEBUT_MEMOIRE\0"
.balign 4
_Lt_05D2:	.ascii	"GET8\0"
.balign 4
_Lt_05DF:	.ascii	"GET_FIN_BUFFER\0"
.balign 4
_Lt_05E7:	.ascii	"GET8U\0"
.balign 4
_Lt_05ED:	.ascii	"SKIP\0"
.balign 4
_Lt_05F4:	.ascii	"GET16\0"
.balign 4
_Lt_05F9:	.ascii	"GET32\0"
.balign 4
_Lt_05FE:	.ascii	"GET16LE\0"
.balign 4
_Lt_0603:	.ascii	"GET32LE\0"
.balign 4
_Lt_060A:	.ascii	"GETN\0"
.balign 4
_Lt_0635:	.ascii	"[SYSTEME] Mauvaise taille du code\0"
.balign 4
_Lt_0637:	.ascii	"[SYSTEME] Bad code length\0"
.balign 4
_Lt_0650:	.ascii	"BUILD_HUFFMAN\0"
.balign 4
_Lt_067D:	.ascii	"GROW_BUFFER_UNSAFE\0"
.balign 4
_Lt_069B:	.ascii	"[SYSTEME] Erreur de decodage, code bits -> Taille hauteur mauvais\0"
.balign 4
_Lt_069D:	.ascii	"[SYSTEME] Decodage error, bit code -> Bad height size\0"
.balign 4
_Lt_06B9:	.ascii	"[SYSTEME] Erreur de decodage, code non trouve\0"
.balign 4
_Lt_06BB:	.ascii	"[SYSTEME] Decodage error, code not found\0"
.balign 4
_Lt_06C4:	.ascii	"[SYSTEME] Erreur de decodage, code bits mauvais\0"
.balign 4
_Lt_06C6:	.ascii	"[SYSTEME] Decodage error, bad bit code\0"
.balign 4
_Lt_06D1:	.ascii	"DECODE\0"
.balign 4
_Lt_0700:	.ascii	"COMBINER_ETENDU_RECU\0"
.balign 4
_VALEURS_TRAME:
.byte 0
.byte 1
.byte 8
.byte 16
.byte 9
.byte 2
.byte 3
.byte 10
.byte 17
.byte 24
.byte 32
.byte 25
.byte 18
.byte 11
.byte 4
.byte 5
.byte 12
.byte 19
.byte 26
.byte 33
.byte 40
.byte 48
.byte 41
.byte 34
.byte 27
.byte 20
.byte 13
.byte 6
.byte 7
.byte 14
.byte 21
.byte 28
.byte 35
.byte 42
.byte 49
.byte 56
.byte 57
.byte 50
.byte 43
.byte 36
.byte 29
.byte 22
.byte 15
.byte 23
.byte 30
.byte 37
.byte 44
.byte 51
.byte 58
.byte 59
.byte 52
.byte 45
.byte 38
.byte 31
.byte 39
.byte 46
.byte 53
.byte 60
.byte 61
.byte 54
.byte 47
.byte 55
.byte 62
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.byte 63
.balign 4
_Lt_0711:	.ascii	"[SYSTEME] Bloc de decodage huffman mauvais, JPG corrompu\0"
.balign 4
_Lt_0713:	.ascii	"[SYSTEME] Bad huffman table, JPG corrompu\0"
.balign 4
_Lt_072F:	.ascii	"DECODE_BLOCK\0"
.balign 4
_Lt_073F:	.ascii	"CLAMP\0"
.balign 4
_Lt_0789:	.ascii	"IDCT_BLOCK\0"
.balign 8
_Lt_07A1:	.quad	0x40A1520000000000
.balign 8
_Lt_07A2:	.quad	0xC0BD900000000000
.balign 8
_Lt_07A3:	.quad	0x40A87E0000000000
.balign 8
_Lt_07B0:	.quad	0x40B2D00000000000
.balign 8
_Lt_07B1:	.quad	0x40931C0000000000
.balign 8
_Lt_07B2:	.quad	0x40C06D0000000000
.balign 8
_Lt_07B3:	.quad	0x40C8950000000000
.balign 8
_Lt_07B4:	.quad	0x40B8050000000000
.balign 8
_Lt_07B5:	.quad	0xC0ACCC0000000000
.balign 8
_Lt_07B6:	.quad	0xC0C4810000000000
.balign 8
_Lt_07B7:	.quad	0xC0BF630000000000
.balign 8
_Lt_07B8:	.quad	0xC098F80000000000
.balign 4
_Lt_07E7:	.ascii	"GET_MARKER\0"
.balign 4
_Lt_07FC:	.ascii	"RE_SET\0"
.balign 4
_Lt_087D:	.ascii	"PARSE_ENTROPY_CODED_DATA\0"
.balign 4
_Lt_08B2:	.ascii	"[SYSTEME] Marker attentu\0"
.balign 4
_Lt_08B4:	.ascii	"[SYSTEME] Expected marker\0"
.balign 4
_Lt_08BB:	.ascii	"[SYSTEME] Format JPG (progressive) non supporte\0"
.balign 4
_Lt_08BD:	.ascii	"[SYSTEME] format not supported (progressive)\0"
.balign 4
_Lt_08C7:	.ascii	"[SYSTEME] Mauvaise taille du DRI \0"
.balign 4
_Lt_08C9:	.ascii	"[SYSTEME] Bad DRI length\0"
.balign 4
_Lt_08D8:	.ascii	"[SYSTEME] Mauvais type DQT \0"
.balign 4
_Lt_08DA:	.ascii	"[SYSTEME] Bad DQT type\0"
.balign 4
_Lt_08E2:	.ascii	"[SYSTEME] Table DQT corrompu\0"
.balign 4
_Lt_08E4:	.ascii	"[SYSTEME] Corrupt DQT table\0"
.balign 4
_Lt_08FA:	.ascii	"[SYSTEME] Entete DHT corrompu\0"
.balign 4
_Lt_08FC:	.ascii	"[SYSTEME] Corrupt DHT header\0"
.balign 4
_Lt_091C:	.ascii	"PROCESS_MARKER\0"
.balign 4
_Lt_093D:	.ascii	"[SYSTEME] Mauvais nombre de composantes, JPG corrumpu\0"
.balign 4
_Lt_093F:	.ascii	"[SYSTEME] Bas SOS component count, corrupt JPG\0"
.balign 4
_Lt_0946:	.ascii	"[SYSTEME] Mauvaise taille SOS, JPG corrompu\0"
.balign 4
_Lt_0948:	.ascii	"[SYSTEME] Bad SOS length, corrupt SOS\0"
.balign 4
_Lt_0967:	.ascii	"[SYSTEME] Mauvais SOS, JPG corrompu\0"
.balign 4
_Lt_0969:	.ascii	"[SYSTEME] Bad SOS, corrupt SOS\0"
.balign 4
_Lt_0973:	.ascii	"[SYSTEME] Mauvais AC, JPG corrompu\0"
.balign 4
_Lt_0975:	.ascii	"[SYSTEME] Bad AC, corrupt SOS\0"
.balign 4
_Lt_098B:	.ascii	"PROCESS_SCAN_HEADER\0"
.balign 4
_Lt_09A6:	.ascii	"[SYSTEME] Mauvaise taille SOF, JPG corrrompu\0"
.balign 4
_Lt_09A8:	.ascii	"[SYSTEME] bad SOF length, corrupt JPG\0"
.balign 4
_Lt_09B0:	.ascii	"[SYSTEME] Format 8 bits non supporte\0"
.balign 4
_Lt_09B2:	.ascii	"[SYSTEME] 8 bits format non supported\0"
.balign 4
_Lt_09BC:	.ascii	"[SYSTEME] Format non supporte\0"
.balign 4
_Lt_09BE:	.ascii	"[SYSTEME] No supported format\0"
.balign 4
_Lt_09C8:	.ascii	"[SYSTEME] Entete corrompu\0"
.balign 4
_Lt_09CA:	.ascii	"[SYSTEME] Header width corrupted\0"
.balign 4
_Lt_09D2:	.ascii	"[SYSTEME] Mauvais nombre de composants, JPG corrompu\0"
.balign 4
_Lt_09D4:	.ascii	"[SYSTEME] Bad component count, corrupt JPG\0"
.balign 4
_Lt_09E7:	.ascii	"[SYSTEME] Mauvaise taille SOF \0"
.balign 4
_Lt_09E9:	.ascii	"[SYSTEME] Bad SOF length\0"
.balign 4
_Lt_09FF:	.ascii	"[SYSTEME] Composant ID, JPG corrompu\0"
.balign 4
_Lt_0A01:	.ascii	"[SYSTEME] bad component ID, corrupt JPG\0"
.balign 4
_Lt_0A0F:	.ascii	"[SYSTEME] Height corrompu\0"
.balign 4
_Lt_0A11:	.ascii	"[SYSTEME] Height corrupted\0"
.balign 4
_Lt_0A1F:	.ascii	"[SYSTEME] Bad V\0"
.balign 4
_Lt_0A2C:	.ascii	"[SYSTEME] Bad QT\0"
.balign 4
_Lt_0A2E:	.ascii	"[SYSTEME] Bat QT\0"
.balign 4
_Lt_0A3B:	.ascii	"[SYSTEME] Image trop grand pour etre decodee\0"
.balign 4
_Lt_0A3D:	.ascii	"[SYSTEME] Image to large to decode\0"
.balign 4
_Lt_0A8B:	.ascii	"[SYSTEME] Memoire insuffisante\0"
.balign 4
_Lt_0A8D:	.ascii	"[SYSTEME] Out of memory\0"
.balign 4
_Lt_0A96:	.ascii	"PROCESS_FRAME_HEADER\0"
.balign 4
_Lt_0AE5:	.ascii	"[SYSTEME] SOI corrompu marker:\0"
.balign 4
_Lt_0AE8:	.ascii	"[SYSTEME] Corrupt SOI marker:\0"
.balign 4
_Lt_0AFA:	.ascii	"[SYSTEME] Marker SOF manquant\0"
.balign 4
_Lt_0AFD:	.ascii	"[SYSTEME] Missing SOF marker\0"
.balign 4
_Lt_0B03:	.ascii	"DECODE_JPEG_HEADER\0"
.balign 4
_Lt_0B18:	.ascii	"DECODE_JPEG_IMAGE\0"
.balign 4
_Lt_0B1E:	.ascii	"RESAMPLE_ROW_1\0"
.balign 4
_Lt_0B2B:	.ascii	"RESAMPLE_ROW_V_2\0"
.balign 4
_Lt_0B4D:	.ascii	"RESAMPLE_ROW_H_2\0"
.balign 4
_Lt_0B79:	.ascii	"RESAMPLE_ROW_HV_2\0"
.balign 4
_Lt_0B97:	.ascii	"RESAMPLE_ROW_GENERIC\0"
.balign 4
_Lt_0BB6:	.ascii	"YCBCR_TO_RGB_ROW\0"
.balign 8
_Lt_0BBB:	.quad	0x40F66E9000000000
.balign 8
_Lt_0BBC:	.quad	0x40E6DA4000000000
.balign 8
_Lt_0BBD:	.quad	0x40D6068000000000
.balign 8
_Lt_0BBE:	.quad	0x40FC5A2000000000
.balign 4
_Lt_0BCF:	.ascii	"[SYSTEME] Nettoyage\0"
.balign 4
_Lt_0BD1:	.ascii	"[SYSTEME] Cleaning\0"
.balign 4
_Lt_0BEA:	.ascii	"CLEANUP_JPEG\0"
.balign 4
_Lt_0BFA:	.ascii	"[SYSTEME] Erreur interne\0"
.balign 4
_Lt_0BFC:	.ascii	"[SYSTEME] internal error\0"
.balign 4
_Lt_0CAC:	.ascii	"LOAD_JPEG_IMAGE\0"
.balign 4
_Lt_0D0D:	.ascii	"_TESTER_SI_JPG\0"
.balign 4
_Lt_0D12:	.ascii	"_DECODER_JPG\0"
.balign 4
_Lt_0D1C:	.ascii	"[SYSTEME] Type d'image inconnu ou corrompu.\0"
.balign 4
_Lt_0D1E:	.ascii	"[SYSTEME] Unknow image type or corrupted \0"
.balign 4
_Lt_0D21:	.ascii	"_LIREJPG\0"
.balign 4
_Lt_0D2D:	.ascii	"[SYSTEME] Fichier introuvable\0"
.balign 4
_Lt_0D2F:	.ascii	"[SYSTEME] File not found\0"
.balign 4
_Lt_0D35:	.ascii	"[SYSTEME] Chargement d'une image JPG '\0"
.balign 4
_Lt_0D39:	.ascii	"[SYSTEME] Loading JPG image '\0"
.balign 4
_Lt_0D45:	.ascii	"[SYSTEME] Le fichier est vide\0"
.balign 4
_Lt_0D47:	.ascii	"[SYSTEME] The file is empty\0"
.balign 4
_Lt_0D54:	.ascii	"[SYSTEME] Composantes RVB [0x\0"
.balign 4
_Lt_0D55:	.ascii	"] \0"
.balign 4
_Lt_0D56:	.ascii	" octets sur \0"
.balign 4
_Lt_0D57:	.ascii	" bits\0"
.balign 4
_Lt_0D5F:	.ascii	"[SYSTEM] RGB component [0x\0"
.balign 4
_Lt_0D60:	.ascii	" bytes with \0"
.balign 4
_Lt_0D79:	.ascii	"[SYSTEME] PTR final [0x\0"
.balign 4
_Lt_0D7A:	.ascii	" octets (\0"
.balign 4
_Lt_0D7B:	.ascii	") sur \0"
.balign 4
_Lt_0D87:	.ascii	"[SYSTEM] Final PTR [0x\0"
.balign 4
_Lt_0D88:	.ascii	" bytes (\0"
.balign 4
_Lt_0D89:	.ascii	") with \0"
.balign 4
_Lt_0D99:	.ascii	"] supprimees.\0"
.balign 4
_Lt_0D9D:	.ascii	"[SYSTEM] RGB components [0x\0"
.balign 4
_Lt_0D9E:	.ascii	"] deleted.\0"
.balign 4
_Lt_0DA6:	.ascii	"[SYSTEME] Erreur durant le decodage JPEG\0"
.balign 4
_Lt_0DA8:	.ascii	"[SYSTEME] Error during JPEG decodage\0"
.balign 4
_Lt_0DAB:	.ascii	"CHARGERJPG\0"
.balign 8
_Lt_0DB0:	.quad	0x4010000000000000
.balign 4
_Lt_0DB2:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor__bitm_dec
