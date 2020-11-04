	.intel_syntax noprefix

.section .text
.balign 16

.globl __ZN15_MEMOIRE_BITMAP10BLOC_LIBREEv
__ZN15_MEMOIRE_BITMAP10BLOC_LIBREEv:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03CF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03C4:
mov dword ptr [ebp-16], 1
.Lt_03C9:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 28
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_03D1
jmp eax
.Lt_03D1:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-20]
cmp byte ptr [eax+7182], 0
jne .Lt_03CD
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_03C5
.Lt_03CD:
.Lt_03CC:
.Lt_03C7:
inc dword ptr [ebp-16]
.Lt_03C6:
cmp dword ptr [ebp-16], 512
jle .Lt_03C9
.Lt_03C8:
mov dword ptr [ebp-4], -1
.Lt_03C5:
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

.globl __ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiii
__ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiii:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_03D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_03D2:
push dword ptr [ebp+20]
push 255
push 255
push 0
push 255
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 11
push offset _Lt_03D4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiiiiiii
add esp, 36
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03D3:
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

.globl __ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiii
__ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiii:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03D9:
push dword ptr [ebp+24]
push 255
push 255
push 0
push 255
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiiiiiii
add esp, 36
mov dword ptr [ebp-4], eax
.Lt_03DA:
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

.globl __ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiiiiiii
__ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiiiiiii:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_03D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_03DD:
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 11
push offset _Lt_03D4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiiiiiii
add esp, 36
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03DE:
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

.globl __ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiiiiiii
__ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiiiiiii:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_03D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_03E2:
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP10BLOC_LIBREEv
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiR8FBSTRINGiiiiiii
add esp, 40
mov dword ptr [ebp-4], eax
.Lt_03E3:
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

.globl __ZN15_MEMOIRE_BITMAP23CREER_BITMAP_DEPUIS_PTRER8FBSTRINGPvi
__ZN15_MEMOIRE_BITMAP23CREER_BITMAP_DEPUIS_PTRER8FBSTRINGPvi:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03E9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03E6:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP23CREER_BITMAP_DEPUIS_PTRER8FBSTRINGPviii
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_03E7:
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

.globl __ZN15_MEMOIRE_BITMAP23CREER_BITMAP_DEPUIS_PTRER8FBSTRINGPviii
__ZN15_MEMOIRE_BITMAP23CREER_BITMAP_DEPUIS_PTRER8FBSTRINGPviii:
push ebp
mov ebp, esp
sub esp, 256
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-80], eax
push offset _Lt_03E9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-84], eax
.Lt_03EB:
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP10BLOC_LIBREEv
add esp, 4
mov dword ptr [ebp-8], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_03EE
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_03F0
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 7
push offset _Lt_03F4
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 21
push offset _Lt_03F3
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_03F2
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push 59
push offset _Lt_03F1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
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
jmp .Lt_03EF
.Lt_03F0:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 8
push offset _Lt_03FE
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_03FD
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_03F2
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push 59
push offset _Lt_03F1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
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
.Lt_03EF:
.Lt_03EE:
.Lt_03ED:
cmp dword ptr [ebp-8], 0
jge .Lt_0408
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_040A
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 91
push offset _Lt_040E
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
jmp .Lt_0409
.Lt_040A:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 72
push offset _Lt_0412
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
.Lt_0409:
mov dword ptr [ebp-4], -1
jmp .Lt_03EC
.Lt_0408:
.Lt_0407:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
call _fb_GfxImageInfo
add esp, 28
test eax, eax
je .Lt_0418
mov eax, dword ptr [ebp+24]
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+28]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_041A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_041C
lea ebx, [_CPCDOS_INSTANCE+589452]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 67
push offset _Lt_041D
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
jmp .Lt_041B
.Lt_041C:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 62
push offset _Lt_041F
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
.Lt_041B:
mov dword ptr [ebp-4], 0
jmp .Lt_03EC
jmp .Lt_0419
.Lt_041A:
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-24], eax
.Lt_0419:
.Lt_0418:
.Lt_0417:
mov eax, dword ptr [ebp-16]
cmp eax, 16
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 32
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0422
push 1
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_0422:
.Lt_0421:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
push offset _Lt_03CB
push 116
push 512
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0457
jmp eax
.Lt_0457:
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+26676], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-44], eax
push offset _Lt_03CB
push 119
push 512
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0458
jmp eax
.Lt_0458:
mov eax, dword ptr [ebp-44]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+18468], eax
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 120
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0459
jmp eax
.Lt_0459:
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+28]
imul eax, dword ptr [ebp+24]
imul eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-52], ebx
push offset _Lt_03CB
push 121
push 512
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_045A
jmp eax
.Lt_045A:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+16416], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-56], ebx
push offset _Lt_03CB
push 122
push 512
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_045B
jmp eax
.Lt_045B:
mov eax, dword ptr [ebp-56]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+12312], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 123
push 512
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_045C
jmp eax
.Lt_045C:
mov eax, dword ptr [ebp-60]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+14364], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-64], eax
push offset _Lt_03CB
push 124
push 512
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_045D
jmp eax
.Lt_045D:
mov eax, dword ptr [ebp-64]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+8208], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 125
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_045E
jmp eax
.Lt_045E:
mov eax, dword ptr [ebp-68]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+10260], 255
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-72], ebx
push offset _Lt_03CB
push 126
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_045F
jmp eax
.Lt_045F:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-72]
mov byte ptr [eax+7182], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 127
push 512
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0460
jmp eax
.Lt_0460:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-76]
mov byte ptr [eax+6669], 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_042E
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0430
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
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
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 16
push offset _Lt_0436
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0434
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 132
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0461
jmp eax
.Lt_0461:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 38
push offset _Lt_0432
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0431
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
jmp .Lt_042F
.Lt_0430:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
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
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 16
push offset _Lt_0436
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0434
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 134
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0462
jmp eax
.Lt_0462:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 33
push offset _Lt_0445
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0431
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
.Lt_042F:
.Lt_042E:
.Lt_042D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03EC:
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

.globl __ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiR8FBSTRINGiiiiiii
__ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiR8FBSTRINGiiiiiii:
push ebp
mov ebp, esp
sub esp, 284
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-52], eax
push offset _Lt_03D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-56], eax
.Lt_0467:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_046A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_046C
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp+40]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp+36]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_046F
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+16]
push -1
push 6
push offset _Lt_046E
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_03F2
push -1
push -1
push dword ptr [ebp+44]
call _fb_IntToStr
add esp, 4
push eax
push 48
push offset _Lt_046D
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
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
jmp .Lt_046B
.Lt_046C:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset _Lt_0471
push -1
push -1
push dword ptr [ebp+40]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp+36]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0470
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_0486
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+16]
push -1
push 7
push offset _Lt_0485
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_03F2
push -1
push -1
push dword ptr [ebp+44]
call _fb_IntToStr
add esp, 4
push eax
push 48
push offset _Lt_046D
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
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
.Lt_046B:
.Lt_046A:
.Lt_0469:
mov eax, dword ptr [ebp+20]
cmp eax, 1
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_049B
mov dword ptr [ebp-4], 0
jmp .Lt_0468
.Lt_049B:
push 1
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
shl eax, 16
mov ebx, dword ptr [ebp+32]
shl ebx, 8
or eax, ebx
or eax, dword ptr [ebp+36]
mov ebx, dword ptr [ebp+40]
shl ebx, 24
or eax, ebx
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_GfxImageCreate
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
push offset _Lt_03CB
push 161
push 512
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04B5
jmp eax
.Lt_04B5:
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+26676], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ebx
push offset _Lt_03CB
push 164
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04B6
jmp eax
.Lt_04B6:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+44]
mov dword ptr [ebx+18468], eax
push 0
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 165
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04B7
jmp eax
.Lt_04B7:
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+24]
imul eax, dword ptr [ebp+20]
imul eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-24], ebx
push offset _Lt_03CB
push 166
push 512
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04B8
jmp eax
.Lt_04B8:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+16416], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ebx
push offset _Lt_03CB
push 167
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04B9
jmp eax
.Lt_04B9:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12312], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 168
push 512
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04BA
jmp eax
.Lt_04BA:
mov eax, dword ptr [ebp-32]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+14364], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-36], eax
push offset _Lt_03CB
push 169
push 512
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04BB
jmp eax
.Lt_04BB:
mov eax, dword ptr [ebp-36]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+8208], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
push offset _Lt_03CB
push 170
push 512
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04BC
jmp eax
.Lt_04BC:
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+40]
mov dword ptr [ebx+10260], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
push offset _Lt_03CB
push 171
push 512
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04BD
jmp eax
.Lt_04BD:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-44]
mov byte ptr [eax+7182], 1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 172
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04BE
jmp eax
.Lt_04BE:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-48]
mov byte ptr [eax+7695], 0
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04A7
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 176
push 512
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04BF
jmp eax
.Lt_04BF:
mov eax, dword ptr [ebp-60]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push 24
push offset _Lt_04A8
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
jmp .Lt_04A6
.Lt_04A7:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 178
push 512
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_04C0
jmp eax
.Lt_04C0:
mov eax, dword ptr [ebp-60]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push 24
push offset _Lt_04AE
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
.Lt_04A6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_0468:
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

.globl __ZN15_MEMOIRE_BITMAP24CREER_BITMAP_DEPUIS_FILEE8FBSTRINGi
__ZN15_MEMOIRE_BITMAP24CREER_BITMAP_DEPUIS_FILEE8FBSTRINGi:
push ebp
mov ebp, esp
sub esp, 168
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_050C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
.Lt_04C3:
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP10BLOC_LIBREEv
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
mov dword ptr [ebp-20], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04C6
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04C8
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 2
push offset _Lt_04CB
push -1
push -1
push dword ptr [ebp+12]
push -1
push 10
push offset _Lt_04CA
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_04C9
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
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04C7
.Lt_04C8:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 2
push offset _Lt_04CB
push -1
push -1
push dword ptr [ebp+12]
push -1
push 10
push offset _Lt_04CA
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_04C9
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
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04C7:
.Lt_04C6:
.Lt_04C5:
cmp dword ptr [ebp-8], 0
jge .Lt_04D7
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04D9
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 91
push offset _Lt_040E
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04D8
.Lt_04D9:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 72
push offset _Lt_0412
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04D8:
mov dword ptr [ebp-4], -1
jmp .Lt_04C4
.Lt_04D7:
.Lt_04D6:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04DD
mov dword ptr [ebp-4], 0
jmp .Lt_04C4
.Lt_04DD:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRINGRiRi
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
push offset _Lt_03CB
push 222
push 512
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_050E
jmp eax
.Lt_050E:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+26676], ebx
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-40], ebx
push offset _Lt_03CB
push 224
push 512
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_050F
jmp eax
.Lt_050F:
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
cmp dword ptr [ebx+26676], 0
ja .Lt_04E2
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04E4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04E6
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 49
push offset _Lt_04E7
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04E5
.Lt_04E6:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 47
push offset _Lt_04E9
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04E5:
.Lt_04E4:
.Lt_04E3:
mov dword ptr [ebp-4], -1
jmp .Lt_04C4
.Lt_04E2:
.Lt_04E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-44], eax
push offset _Lt_03CB
push 236
push 512
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0510
jmp eax
.Lt_0510:
mov eax, dword ptr [ebp-44]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+18468], eax
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 237
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0511
jmp eax
.Lt_0511:
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
imul eax, dword ptr [ebp-12]
imul eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-52], ebx
push offset _Lt_03CB
push 238
push 512
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0512
jmp eax
.Lt_0512:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+16416], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-56], ebx
push offset _Lt_03CB
push 239
push 512
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0513
jmp eax
.Lt_0513:
mov eax, dword ptr [ebp-56]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+12312], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 240
push 512
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0514
jmp eax
.Lt_0514:
mov eax, dword ptr [ebp-60]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+14364], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-64], eax
push offset _Lt_03CB
push 241
push 512
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0515
jmp eax
.Lt_0515:
mov eax, dword ptr [ebp-64]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebx+8208], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 242
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0516
jmp eax
.Lt_0516:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-68]
mov byte ptr [eax+7695], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-72], eax
push offset _Lt_03CB
push 243
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0517
jmp eax
.Lt_0517:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-72]
mov byte ptr [eax+7182], 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_04F4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04F6
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 6
push offset _Lt_04FA
push -1
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0434
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 248
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0518
jmp eax
.Lt_0518:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_04F8
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 36
push offset _Lt_04F7
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04F5
.Lt_04F6:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 6
push offset _Lt_04FA
push -1
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0434
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 250
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0519
jmp eax
.Lt_0519:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_0502
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 36
push offset _Lt_04F7
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04F5:
.Lt_04F4:
.Lt_04F3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_04C4:
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

.globl __ZN15_MEMOIRE_BITMAP11RELOAD_FILEEi
__ZN15_MEMOIRE_BITMAP11RELOAD_FILEEi:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_052A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_051A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03CB
push 263
push 512
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_052C
jmp eax
.Lt_052C:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
cmp byte ptr [eax+7182], 1
jne .Lt_051E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 267
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_052D
jmp eax
.Lt_052D:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-20]
cmp byte ptr [eax+7695], 1
jne .Lt_0521
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push 0
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 271
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_052E
jmp eax
.Lt_052E:
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-32]
push eax
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRINGRiRi
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-52], ebx
push offset _Lt_03CB
push 275
push 512
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_052F
jmp eax
.Lt_052F:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+26676], ebx
lea ebx, [ebp-64]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp-32]
imul ebx, dword ptr [ebp-28]
imul ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-68], ecx
push offset _Lt_03CB
push 276
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0530
jmp eax
.Lt_0530:
mov eax, dword ptr [ebp-68]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+16416], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-72], ebx
push offset _Lt_03CB
push 277
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0531
jmp eax
.Lt_0531:
mov eax, dword ptr [ebp-72]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+12312], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 278
push 512
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0532
jmp eax
.Lt_0532:
mov eax, dword ptr [ebp-76]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebx+14364], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 279
push 512
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0533
jmp eax
.Lt_0533:
mov eax, dword ptr [ebp-80]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+8208], eax
mov byte ptr [ebp-4], 1
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0520
.Lt_0521:
mov byte ptr [ebp-4], 0
.Lt_0520:
jmp .Lt_051D
.Lt_051E:
mov byte ptr [ebp-4], 0
.Lt_051D:
.Lt_051B:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP16AUTO_RELOAD_FILEEv
__ZN15_MEMOIRE_BITMAP16AUTO_RELOAD_FILEEv:
push ebp
mov ebp, esp
sub esp, 36
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0554
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0534:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0537
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0539
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 97
push offset _Lt_053A
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
jmp .Lt_0538
.Lt_0539:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 82
push offset _Lt_053C
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
.Lt_0538:
.Lt_0537:
.Lt_0536:
mov dword ptr [ebp-16], 1
.Lt_0541:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
.Lt_053F:
inc dword ptr [ebp-16]
.Lt_053E:
cmp dword ptr [ebp-16], 512
jle .Lt_0541
.Lt_0540:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0543
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0545
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 42
push offset _Lt_0546
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
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 109
push offset _Lt_0548
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0544
.Lt_0545:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 42
push offset _Lt_0546
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
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 90
push offset _Lt_054B
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0544:
.Lt_0543:
.Lt_0542:
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP19SUPPRIMER_ID_OBJETSEv
add esp, 4
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_054E
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0550
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 42
push offset _Lt_0546
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
jmp .Lt_054F
.Lt_0550:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 42
push offset _Lt_0546
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
.Lt_054F:
.Lt_054E:
.Lt_054D:
mov byte ptr [ebp-4], 1
.Lt_0535:
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

.globl __ZN15_MEMOIRE_BITMAP19SUPPRIMER_ID_OBJETSEv
__ZN15_MEMOIRE_BITMAP19SUPPRIMER_ID_OBJETSEv:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_059F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0556:
mov dword ptr [ebp-16], 1
.Lt_055B:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
push offset _Lt_03CB
push 338
push 65
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A1
jmp eax
.Lt_05A1:
mov eax, dword ptr [ebp-20]
imul eax, 2244
add ebx, eax
cmp byte ptr [ebx+5076], 1
jne .Lt_055E
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 340
push 65
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A2
jmp eax
.Lt_05A2:
mov eax, dword ptr [ebp-24]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6800], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 341
push 65
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A3
jmp eax
.Lt_05A3:
mov eax, dword ptr [ebp-28]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6804], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 343
push 65
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A4
jmp eax
.Lt_05A4:
mov eax, dword ptr [ebp-32]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6744], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-36], eax
push offset _Lt_03CB
push 344
push 65
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A5
jmp eax
.Lt_05A5:
mov eax, dword ptr [ebp-36]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6748], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
push offset _Lt_03CB
push 347
push 65
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A6
jmp eax
.Lt_05A6:
mov eax, dword ptr [ebp-40]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6696], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-44], eax
push offset _Lt_03CB
push 348
push 65
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A7
jmp eax
.Lt_05A7:
mov eax, dword ptr [ebp-44]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6700], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 349
push 65
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A8
jmp eax
.Lt_05A8:
mov eax, dword ptr [ebp-48]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6704], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-52], eax
push offset _Lt_03CB
push 351
push 65
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05A9
jmp eax
.Lt_05A9:
mov eax, dword ptr [ebp-52]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6708], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
push offset _Lt_03CB
push 352
push 65
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05AA
jmp eax
.Lt_05AA:
mov eax, dword ptr [ebp-56]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6712], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 354
push 65
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05AB
jmp eax
.Lt_05AB:
mov eax, dword ptr [ebp-60]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6856], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-64], eax
push offset _Lt_03CB
push 355
push 65
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05AC
jmp eax
.Lt_05AC:
mov eax, dword ptr [ebp-64]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6860], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 357
push 65
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05AD
jmp eax
.Lt_05AD:
mov eax, dword ptr [ebp-68]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6912], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-72], eax
push offset _Lt_03CB
push 358
push 65
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05AE
jmp eax
.Lt_05AE:
mov eax, dword ptr [ebp-72]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6916], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 360
push 65
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05AF
jmp eax
.Lt_05AF:
mov eax, dword ptr [ebp-76]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6968], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 361
push 65
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B0
jmp eax
.Lt_05B0:
mov eax, dword ptr [ebp-80]
imul eax, 2244
add ebx, eax
mov dword ptr [ebx+6972], 0
.Lt_055E:
.Lt_055D:
.Lt_0559:
inc dword ptr [ebp-16]
.Lt_0558:
cmp dword ptr [ebp-16], 64
jle .Lt_055B
.Lt_055A:
mov dword ptr [ebp-16], 1
.Lt_0571:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 368
push 129
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B1
jmp eax
.Lt_05B1:
mov eax, dword ptr [ebp-20]
imul eax, 396
add ebx, eax
cmp byte ptr [ebx+153180], 1
jne .Lt_0574
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 370
push 129
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B2
jmp eax
.Lt_05B2:
mov eax, dword ptr [ebp-24]
imul eax, 396
add ebx, eax
mov dword ptr [ebx+153244], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 371
push 129
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B3
jmp eax
.Lt_05B3:
mov eax, dword ptr [ebp-28]
imul eax, 396
add ebx, eax
mov dword ptr [ebx+153248], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 372
push 129
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B4
jmp eax
.Lt_05B4:
mov eax, dword ptr [ebp-32]
imul eax, 396
add ebx, eax
mov dword ptr [ebx+153252], 0
.Lt_0574:
.Lt_0573:
.Lt_056F:
inc dword ptr [ebp-16]
.Lt_056E:
cmp dword ptr [ebp-16], 128
jle .Lt_0571
.Lt_0570:
mov dword ptr [ebp-16], 1
.Lt_057B:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 379
push 129
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B5
jmp eax
.Lt_05B5:
mov eax, dword ptr [ebp-20]
imul eax, 360
add ebx, eax
cmp byte ptr [ebx+204668], 1
jne .Lt_057E
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 381
push 129
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B6
jmp eax
.Lt_05B6:
mov eax, dword ptr [ebp-24]
imul eax, 360
add ebx, eax
mov dword ptr [ebx+204700], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 382
push 129
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B7
jmp eax
.Lt_05B7:
mov eax, dword ptr [ebp-28]
imul eax, 360
add ebx, eax
mov dword ptr [ebx+204704], 0
.Lt_057E:
.Lt_057D:
.Lt_0579:
inc dword ptr [ebp-16]
.Lt_0578:
cmp dword ptr [ebp-16], 128
jle .Lt_057B
.Lt_057A:
mov dword ptr [ebp-16], 1
.Lt_0584:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 395
push 129
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B8
jmp eax
.Lt_05B8:
mov eax, dword ptr [ebp-20]
imul eax, 380
add ebx, eax
cmp byte ptr [ebx+293580], 1
jne .Lt_0587
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 397
push 129
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05B9
jmp eax
.Lt_05B9:
mov eax, dword ptr [ebp-24]
imul eax, 380
add ebx, eax
mov dword ptr [ebx+293612], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 398
push 129
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05BA
jmp eax
.Lt_05BA:
mov eax, dword ptr [ebp-28]
imul eax, 380
add ebx, eax
mov dword ptr [ebx+293616], 0
.Lt_0587:
.Lt_0586:
.Lt_0582:
inc dword ptr [ebp-16]
.Lt_0581:
cmp dword ptr [ebp-16], 128
jle .Lt_0584
.Lt_0583:
mov dword ptr [ebp-16], 1
.Lt_058D:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 405
push 129
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05BB
jmp eax
.Lt_05BB:
mov eax, dword ptr [ebp-20]
imul eax, 368
add ebx, eax
cmp byte ptr [ebx+342988], 1
jne .Lt_0590
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 407
push 129
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05BC
jmp eax
.Lt_05BC:
mov eax, dword ptr [ebp-24]
imul eax, 368
add ebx, eax
mov dword ptr [ebx+343016], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 408
push 129
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05BD
jmp eax
.Lt_05BD:
mov eax, dword ptr [ebp-28]
imul eax, 368
add ebx, eax
mov dword ptr [ebx+343020], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 409
push 129
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05BE
jmp eax
.Lt_05BE:
mov eax, dword ptr [ebp-32]
imul eax, 368
add ebx, eax
mov dword ptr [ebx+343024], 0
.Lt_0590:
.Lt_058F:
.Lt_058B:
inc dword ptr [ebp-16]
.Lt_058A:
cmp dword ptr [ebp-16], 128
jle .Lt_058D
.Lt_058C:
mov dword ptr [ebp-16], 1
.Lt_0597:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 416
push 129
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05BF
jmp eax
.Lt_05BF:
mov eax, dword ptr [ebp-20]
imul eax, 420
add ebx, eax
cmp byte ptr [ebx+390828], 1
jne .Lt_059A
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 418
push 129
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05C0
jmp eax
.Lt_05C0:
mov eax, dword ptr [ebp-24]
imul eax, 420
add ebx, eax
mov dword ptr [ebx+390856], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 419
push 129
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05C1
jmp eax
.Lt_05C1:
mov eax, dword ptr [ebp-28]
imul eax, 420
add ebx, eax
mov dword ptr [ebx+390860], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 420
push 129
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05C2
jmp eax
.Lt_05C2:
mov eax, dword ptr [ebp-32]
imul eax, 420
add ebx, eax
mov dword ptr [ebx+390864], 0
.Lt_059A:
.Lt_0599:
.Lt_0595:
inc dword ptr [ebp-16]
.Lt_0594:
cmp dword ptr [ebp-16], 128
jle .Lt_0597
.Lt_0596:
mov byte ptr [ebp-4], 1
.Lt_0557:
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

.globl __ZN15_MEMOIRE_BITMAP16DUPLIQUER_BITMAPEi
__ZN15_MEMOIRE_BITMAP16DUPLIQUER_BITMAPEi:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_05F8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_05C3:
mov dword ptr [ebp-8], 0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_05C6
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05C8
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_05C9
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
jmp .Lt_05C7
.Lt_05C8:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_05C9
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
.Lt_05C7:
.Lt_05C6:
.Lt_05C5:
cmp dword ptr [ebp+12], 512
jl .Lt_05CF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05D1
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 84
push offset _Lt_05D4
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05D0
.Lt_05D1:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 65
push offset _Lt_05D8
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05D0:
mov dword ptr [ebp-4], 0
jmp .Lt_05C4
.Lt_05CF:
.Lt_05CE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
push offset _Lt_03CB
push 451
push 512
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05FA
jmp eax
.Lt_05FA:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-12]
cmp byte ptr [eax+7182], 1
jne .Lt_05DC
mov dword ptr [ebp-24], 0
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP10BLOC_LIBREEv
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .Lt_05DE
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05E0
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 91
push offset _Lt_040E
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05DF
.Lt_05E0:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 72
push offset _Lt_0412
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05DF:
mov dword ptr [ebp-4], -1
jmp .Lt_05C4
.Lt_05DE:
.Lt_05DD:
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP13COPIER_BITMAPEii
add esp, 12
test al, al
jne .Lt_05E4
mov dword ptr [ebp-4], -1
jmp .Lt_05E3
.Lt_05E4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_05E3:
jmp .Lt_05DB
.Lt_05DC:
mov dword ptr [ebp-4], 0
.Lt_05DB:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_05E6
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05E8
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 481
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05FB
jmp eax
.Lt_05FB:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_04F8
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 53
push offset _Lt_05E9
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
push -1
lea eax, [ebp-84]
push eax
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
jmp .Lt_05E7
.Lt_05E8:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 483
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_05FC
jmp eax
.Lt_05FC:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_0502
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 50
push offset _Lt_05F0
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
push -1
lea eax, [ebp-84]
push eax
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
.Lt_05E7:
.Lt_05E6:
.Lt_05E5:
.Lt_05C4:
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

.globl __ZN15_MEMOIRE_BITMAP13COPIER_BITMAPEii
__ZN15_MEMOIRE_BITMAP13COPIER_BITMAPEii:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_0634
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_05FD:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0600
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0602
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 17
push offset _Lt_0604
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 45
push offset _Lt_0603
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0601
.Lt_0602:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 17
push offset _Lt_060A
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 45
push offset _Lt_0609
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0601:
.Lt_0600:
.Lt_05FF:
cmp dword ptr [ebp+12], 0
jge .Lt_0610
mov byte ptr [ebp-4], 0
jmp .Lt_05FE
.Lt_0610:
mov eax, dword ptr [ebp+12]
cmp eax, 512
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 512
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0612
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0614
lea ebx, [_CPCDOS_INSTANCE+589452]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 84
push offset _Lt_05D4
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
jmp .Lt_0613
.Lt_0614:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 65
push offset _Lt_05D8
push -1
lea eax, [ebp-28]
push eax
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
.Lt_0613:
mov byte ptr [ebp-4], 0
jmp .Lt_05FE
.Lt_0612:
.Lt_0611:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03CB
push 514
push 512
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0636
jmp eax
.Lt_0636:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
cmp byte ptr [eax+7182], 1
jne .Lt_0619
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-56], eax
push offset _Lt_03CB
push 520
push 512
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0637
jmp eax
.Lt_0637:
mov eax, dword ptr [ebp-56]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+8208]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 521
push 512
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0638
jmp eax
.Lt_0638:
mov eax, dword ptr [ebp-60]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+8208]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-64], eax
push offset _Lt_03CB
push 522
push 512
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0639
jmp eax
.Lt_0639:
mov eax, dword ptr [ebp-64]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+12312]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 523
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_063A
jmp eax
.Lt_063A:
mov eax, dword ptr [ebp-68]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+14364]
mov dword ptr [ebp-32], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-72], eax
push offset _Lt_03CB
push 524
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_063B
jmp eax
.Lt_063B:
mov eax, dword ptr [ebp-72]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 525
push 512
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_063C
jmp eax
.Lt_063C:
mov eax, dword ptr [ebp-76]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+18468]
mov dword ptr [ebp-40], eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push 255
push 0
push 255
push dword ptr [ebp-32]
push dword ptr [ebp-28]
lea eax, [ebp-52]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP12CREER_BITMAPEiR8FBSTRINGiiiiiii
add esp, 40
test eax, eax
jne .Lt_0621
mov byte ptr [ebp-4], 0
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05FE
.Lt_0621:
.Lt_0620:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 538
push 512
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_063D
jmp eax
.Lt_063D:
mov eax, dword ptr [ebp-80]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP29MODIFIER_BITMAP_DEPUIS_PTR_CPEiPv
add esp, 12
test al, al
jne .Lt_0624
mov byte ptr [ebp-4], 0
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05FE
.Lt_0624:
.Lt_0623:
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0619:
.Lt_0618:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0626
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0628
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 547
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_063E
jmp eax
.Lt_063E:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push 36
push offset _Lt_0629
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
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
jmp .Lt_0627
.Lt_0628:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 549
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_063F
jmp eax
.Lt_063F:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push 33
push offset _Lt_062E
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
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
.Lt_0627:
.Lt_0626:
.Lt_0625:
mov byte ptr [ebp-4], 1
.Lt_05FE:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP19RESIZE_BITMAP_NEWIDEiii
__ZN15_MEMOIRE_BITMAP19RESIZE_BITMAP_NEWIDEiii:
push ebp
mov ebp, esp
sub esp, 144
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_069E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_0642:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0645
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0647
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 17
push offset _Lt_064B
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 567
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A0
jmp eax
.Lt_06A0:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0649
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 44
push offset _Lt_0648
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
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
jmp .Lt_0646
.Lt_0647:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 15
push offset _Lt_0655
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 569
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A1
jmp eax
.Lt_06A1:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0649
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 44
push offset _Lt_0648
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
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
.Lt_0646:
.Lt_0645:
.Lt_0644:
cmp dword ptr [ebp+12], 1
jge .Lt_065F
mov dword ptr [ebp-4], 0
jmp .Lt_0643
.Lt_065F:
cmp dword ptr [ebp+12], 512
jl .Lt_0661
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0663
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 87
push offset _Lt_0666
push -1
lea eax, [ebp-56]
push eax
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
jmp .Lt_0662
.Lt_0663:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 68
push offset _Lt_066A
push -1
lea eax, [ebp-56]
push eax
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
.Lt_0662:
mov dword ptr [ebp-4], -1
jmp .Lt_0643
.Lt_0661:
.Lt_0660:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16DUPLIQUER_BITMAPEi
add esp, 8
mov dword ptr [ebp-8], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
mov dword ptr [ebp-12], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_066D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_066F
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 591
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A2
jmp eax
.Lt_06A2:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 9
push offset _Lt_0671
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 56
push offset _Lt_0670
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_066E
.Lt_066F:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 593
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A3
jmp eax
.Lt_06A3:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 9
push offset _Lt_0671
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 56
push offset _Lt_0670
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.Lt_066E:
.Lt_066D:
.Lt_066C:
push 1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 598
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A4
jmp eax
.Lt_06A4:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+26676]
push eax
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__18IMG_CHANGER_TAILLEERPvS1_iib
add esp, 24
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP26MODIFIER_BITMAP_DEPUIS_PTREiPv
add esp, 12
test al, al
jne .Lt_0680
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0682
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 39
push offset _Lt_0683
push -1
lea eax, [ebp-56]
push eax
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
jmp .Lt_0681
.Lt_0682:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 38
push offset _Lt_0685
push -1
lea eax, [ebp-56]
push eax
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
.Lt_0681:
mov dword ptr [ebp-4], -1
jmp .Lt_0643
.Lt_0680:
.Lt_067F:
mov eax, dword ptr [ebp+16]
imul eax, dword ptr [ebp+20]
imul eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
push offset _Lt_03CB
push 610
push 512
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A5
jmp eax
.Lt_06A5:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+16416], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-28], ebx
push offset _Lt_03CB
push 611
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A6
jmp eax
.Lt_06A6:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12312], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 612
push 512
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A7
jmp eax
.Lt_06A7:
mov eax, dword ptr [ebp-32]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+14364], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_03CB
push 613
push 512
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A8
jmp eax
.Lt_06A8:
mov eax, dword ptr [ebp-36]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+8208], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_068C
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_068E
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 617
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06A9
jmp eax
.Lt_06A9:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 27
push offset _Lt_068F
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0431
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_068D
.Lt_068E:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 619
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06AA
jmp eax
.Lt_06AA:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 28
push offset _Lt_0696
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0431
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.Lt_068D:
.Lt_068C:
.Lt_068B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0643:
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

.globl __ZN15_MEMOIRE_BITMAP13RESIZE_BITMAPEiii
__ZN15_MEMOIRE_BITMAP13RESIZE_BITMAPEiii:
push ebp
mov ebp, esp
sub esp, 260
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-44], eax
push offset _Lt_0711
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-48], eax
.Lt_06AB:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06AE
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06B0
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 23
push offset _Lt_06B2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 38
push offset _Lt_06B1
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
push -1
lea eax, [ebp-84]
push eax
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
jmp .Lt_06AF
.Lt_06B0:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 23
push offset _Lt_06B2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 38
push offset _Lt_06B1
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
push -1
lea eax, [ebp-84]
push eax
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
.Lt_06AF:
.Lt_06AE:
.Lt_06AD:
cmp dword ptr [ebp+12], 1
jge .Lt_06BA
mov byte ptr [ebp-4], 0
jmp .Lt_06AC
.Lt_06BA:
cmp dword ptr [ebp+12], 512
jl .Lt_06BC
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06BE
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 81
push offset _Lt_06C1
push -1
lea eax, [ebp-60]
push eax
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
jmp .Lt_06BD
.Lt_06BE:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 62
push offset _Lt_06C5
push -1
lea eax, [ebp-60]
push eax
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
.Lt_06BD:
mov byte ptr [ebp-4], 1
jmp .Lt_06AC
.Lt_06BC:
.Lt_06BB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16DUPLIQUER_BITMAPEi
add esp, 8
mov dword ptr [ebp-8], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
mov dword ptr [ebp-12], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06C8
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06CA
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-56], eax
push offset _Lt_03CB
push 654
push 512
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0713
jmp eax
.Lt_0713:
mov eax, dword ptr [ebp-56]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 5
push offset _Lt_06D0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 18
push offset _Lt_06CF
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-52], eax
push offset _Lt_03CB
push 654
push 512
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0714
jmp eax
.Lt_0714:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 6
push offset _Lt_06CD
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 19
push offset _Lt_06CC
push -1
push -1
push dword ptr [ebp-12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 16
push offset _Lt_06CB
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 38
push offset _Lt_06B1
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06C9
.Lt_06CA:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-56], eax
push offset _Lt_03CB
push 656
push 512
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0715
jmp eax
.Lt_0715:
mov eax, dword ptr [ebp-56]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 5
push offset _Lt_06D0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 18
push offset _Lt_06CF
push -1
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-52], eax
push offset _Lt_03CB
push 656
push 512
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0716
jmp eax
.Lt_0716:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 6
push offset _Lt_06CD
push -1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 19
push offset _Lt_06CC
push -1
push -1
push dword ptr [ebp-12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 13
push offset _Lt_06E3
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 38
push offset _Lt_06B1
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06C9:
.Lt_06C8:
.Lt_06C7:
push 1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 662
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0717
jmp eax
.Lt_0717:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+26676]
push eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 662
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0718
jmp eax
.Lt_0718:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+26676]
push eax
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__18IMG_CHANGER_TAILLEERPvS1_iib
add esp, 24
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ebx
push offset _Lt_03CB
push 662
push 512
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0719
jmp eax
.Lt_0719:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+26676], ebx
mov ebx, dword ptr [ebp+16]
imul ebx, dword ptr [ebp+20]
imul ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-28], ecx
push offset _Lt_03CB
push 664
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071A
jmp eax
.Lt_071A:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
mov dword ptr [ecx+16416], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-32], ebx
push offset _Lt_03CB
push 665
push 512
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071B
jmp eax
.Lt_071B:
mov eax, dword ptr [ebp-32]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12312], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-36], eax
push offset _Lt_03CB
push 666
push 512
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071C
jmp eax
.Lt_071C:
mov eax, dword ptr [ebp-36]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+14364], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
push offset _Lt_03CB
push 667
push 512
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071D
jmp eax
.Lt_071D:
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+8208], eax
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06FF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0701
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-52], eax
push offset _Lt_03CB
push 673
push 512
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071E
jmp eax
.Lt_071E:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_0702
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0431
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
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0700
.Lt_0701:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-52], eax
push offset _Lt_03CB
push 675
push 512
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071F
jmp eax
.Lt_071F:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 19
push offset _Lt_0709
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0431
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
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0700:
.Lt_06FF:
.Lt_06FE:
mov byte ptr [ebp-4], 1
.Lt_06AC:
push dword ptr [ebp-48]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-44]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP26MODIFIER_BITMAP_DEPUIS_PTREiPv
__ZN15_MEMOIRE_BITMAP26MODIFIER_BITMAP_DEPUIS_PTREiPv:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_074C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0720:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0723
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0725
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0727
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 58
push offset _Lt_0726
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
jmp .Lt_0724
.Lt_0725:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0727
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 58
push offset _Lt_072D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
.Lt_0724:
.Lt_0723:
.Lt_0722:
cmp dword ptr [ebp+12], 1
jge .Lt_0734
mov byte ptr [ebp-4], 0
jmp .Lt_0721
.Lt_0734:
cmp dword ptr [ebp+16], 1
jae .Lt_0736
mov byte ptr [ebp-4], 0
jmp .Lt_0721
.Lt_0736:
cmp dword ptr [ebp+12], 512
jl .Lt_0738
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_073A
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 94
push offset _Lt_073D
push -1
lea eax, [ebp-28]
push eax
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
jmp .Lt_0739
.Lt_073A:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 75
push offset _Lt_0741
push -1
lea eax, [ebp-28]
push eax
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
.Lt_0739:
mov byte ptr [ebp-4], 1
jmp .Lt_0721
.Lt_0738:
.Lt_0737:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03CB
push 707
push 512
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_074E
jmp eax
.Lt_074E:
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+26676], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0745
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0747
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 6
push offset _Lt_0748
push -1
lea eax, [ebp-28]
push eax
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
jmp .Lt_0746
.Lt_0747:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 6
push offset _Lt_0748
push -1
lea eax, [ebp-28]
push eax
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
.Lt_0746:
.Lt_0745:
.Lt_0744:
mov byte ptr [ebp-4], 1
.Lt_0721:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP29MODIFIER_BITMAP_DEPUIS_PTR_CPEiPv
__ZN15_MEMOIRE_BITMAP29MODIFIER_BITMAP_DEPUIS_PTR_CPEiPv:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0784
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_074F:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0752
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0754
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 25
push offset _Lt_0757
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 726
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0786
jmp eax
.Lt_0786:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push 70
push offset _Lt_0755
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
jmp .Lt_0753
.Lt_0754:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 25
push offset _Lt_0757
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 728
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0787
jmp eax
.Lt_0787:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push 70
push offset _Lt_0755
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
.Lt_0753:
.Lt_0752:
.Lt_0751:
cmp dword ptr [ebp+12], 1
jge .Lt_0764
mov byte ptr [ebp-4], 0
jmp .Lt_0750
.Lt_0764:
cmp dword ptr [ebp+12], 512
jl .Lt_0766
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0768
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 97
push offset _Lt_076B
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
jmp .Lt_0767
.Lt_0768:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 78
push offset _Lt_076F
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
.Lt_0767:
mov byte ptr [ebp-4], 0
jmp .Lt_0750
.Lt_0766:
.Lt_0765:
cmp dword ptr [ebp+16], 0
je .Lt_0772
.Lt_0775:
push 0
push 0
push -1
push offset _fb_hPutAlpha
push 6
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+16]
push dword ptr [_Lt_0788]
push dword ptr [_Lt_0788]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 746
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0789
jmp eax
.Lt_0789:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0776
lea eax, [.Lt_0776]
push eax
lea eax, [.Lt_0775]
push eax
push offset _Lt_03CB
push 746
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0776:
jmp .Lt_0771
.Lt_0772:
mov byte ptr [ebp-4], 0
jmp .Lt_0750
jmp .Lt_0750
.Lt_0771:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0778
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_077A
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push 41
push offset _Lt_077B
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
jmp .Lt_0779
.Lt_077A:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+16]
call _fb_HEX_p
add esp, 4
push eax
push 41
push offset _Lt_077F
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
.Lt_0779:
.Lt_0778:
.Lt_0777:
mov byte ptr [ebp-4], 1
.Lt_0750:
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

.globl __ZN15_MEMOIRE_BITMAP18MODIFIER_BITMAP_CPEiiii
__ZN15_MEMOIRE_BITMAP18MODIFIER_BITMAP_CPEiiii:
push ebp
mov ebp, esp
sub esp, 184
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_07D3
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_078A:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_078D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_078F
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 770
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D5
jmp eax
.Lt_07D5:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0727
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_0794
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 27
push offset _Lt_0793
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 770
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D6
jmp eax
.Lt_07D6:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 21
push offset _Lt_0791
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 50
push offset _Lt_0790
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
jmp .Lt_078E
.Lt_078F:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 772
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D7
jmp eax
.Lt_07D7:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0727
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_0794
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 28
push offset _Lt_07A6
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 772
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D8
jmp eax
.Lt_07D8:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 20
push offset _Lt_07A4
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 50
push offset _Lt_07A3
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
.Lt_078E:
.Lt_078D:
.Lt_078C:
mov eax, dword ptr [ebp+12]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_07B6
mov byte ptr [ebp-4], 0
jmp .Lt_078B
.Lt_07B6:
mov ebx, dword ptr [ebp+12]
cmp ebx, 512
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
cmp eax, 512
setge al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_07B8
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_07BA
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 86
push offset _Lt_07BD
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_07B9
.Lt_07BA:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 67
push offset _Lt_07C1
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07B9:
mov byte ptr [ebp-4], 0
jmp .Lt_078B
.Lt_07B8:
.Lt_07B7:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
push offset _Lt_03CB
push 787
push 512
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D9
jmp eax
.Lt_07D9:
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
cmp dword ptr [ebx+26676], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
push offset _Lt_03CB
push 787
push 512
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DA
jmp eax
.Lt_07DA:
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp+8]
add ecx, eax
cmp dword ptr [ecx+26676], 0
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_07C6
.Lt_07CA:
push 0
push 0
push -1
push offset _fb_hPutAlpha
push 6
push 0
push -65536
push -65536
push -65536
push -65536
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 789
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DB
jmp eax
.Lt_07DB:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-24], ebx
push offset _Lt_03CB
push 789
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DC
jmp eax
.Lt_07DC:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_07CB
lea eax, [.Lt_07CB]
push eax
lea eax, [.Lt_07CA]
push eax
push offset _Lt_03CB
push 789
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_07CB:
jmp .Lt_07C5
.Lt_07C6:
mov byte ptr [ebp-4], 0
jmp .Lt_078B
.Lt_07C5:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_07CD
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_07CF
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 6
push offset _Lt_0748
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_07CE
.Lt_07CF:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 6
push offset _Lt_0748
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07CE:
.Lt_07CD:
.Lt_07CC:
mov byte ptr [ebp-4], 1
.Lt_078B:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP21MODIFIER_BITMAP_TEXTEEiR8FBSTRINGiiiii
__ZN15_MEMOIRE_BITMAP21MODIFIER_BITMAP_TEXTEEiR8FBSTRINGiiiii:
push ebp
mov ebp, esp
sub esp, 152
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_0818
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_07E3:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_07E6
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_07E8
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 812
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_081A
jmp eax
.Lt_081A:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 12
push offset _Lt_07EB
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_07EA
push -1
push -1
push dword ptr [ebp+16]
push 50
push offset _Lt_07E9
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push -1
lea eax, [ebp-152]
push eax
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
jmp .Lt_07E7
.Lt_07E8:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 814
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_081B
jmp eax
.Lt_081B:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 12
push offset _Lt_07F9
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_07EA
push -1
push -1
push dword ptr [ebp+16]
push 50
push offset _Lt_07E9
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push -1
lea eax, [ebp-152]
push eax
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
.Lt_07E7:
.Lt_07E6:
.Lt_07E5:
cmp dword ptr [ebp+12], 0
jge .Lt_0807
mov byte ptr [ebp-4], 0
jmp .Lt_07E4
.Lt_0807:
cmp dword ptr [ebp+12], 512
jl .Lt_0809
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_080B
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 86
push offset _Lt_07BD
push -1
lea eax, [ebp-28]
push eax
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
jmp .Lt_080A
.Lt_080B:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push 67
push offset _Lt_07C1
push -1
lea eax, [ebp-28]
push eax
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
.Lt_080A:
mov byte ptr [ebp-4], 0
jmp .Lt_07E4
.Lt_0809:
.Lt_0808:
.Lt_080F:
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+28]
shl eax, 16
mov ebx, dword ptr [ebp+32]
shl ebx, 8
or eax, ebx
or eax, dword ptr [ebp+36]
or eax, 4278190080
push eax
push dword ptr [ebp+16]
push 4
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
push offset _Lt_03CB
push 830
push 512
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_081C
jmp eax
.Lt_081C:
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_GfxDrawString
add esp, 44
test eax, eax
je .Lt_0810
lea eax, [.Lt_0810]
push eax
lea eax, [.Lt_080F]
push eax
push offset _Lt_03CB
push 830
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0810:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0812
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0814
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 6
push offset _Lt_0748
push -1
lea eax, [ebp-28]
push eax
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
jmp .Lt_0813
.Lt_0814:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 6
push offset _Lt_0748
push -1
lea eax, [ebp-28]
push eax
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
.Lt_0813:
.Lt_0812:
.Lt_0811:
mov byte ptr [ebp-4], 1
.Lt_07E4:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP21MODIFIER_BITMAP_TEXTEEPvR8FBSTRINGiiiii
__ZN15_MEMOIRE_BITMAP21MODIFIER_BITMAP_TEXTEEPvR8FBSTRINGiiiii:
push ebp
mov ebp, esp
sub esp, 120
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0818
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_081D:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0820
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0822
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+12]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 15
push offset _Lt_0823
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_07EA
push -1
push -1
push dword ptr [ebp+16]
push 50
push offset _Lt_07E9
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0821
.Lt_0822:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
push dword ptr [ebp+12]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 15
push offset _Lt_0823
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_07EA
push -1
push -1
push dword ptr [ebp+16]
push 50
push offset _Lt_07E9
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0821:
.Lt_0820:
.Lt_081F:
.Lt_0836:
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+28]
shl eax, 16
mov ebx, dword ptr [ebp+32]
shl ebx, 8
or eax, ebx
or eax, dword ptr [ebp+36]
or eax, 4278190080
push eax
push dword ptr [ebp+16]
push 4
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp+12]
call _fb_GfxDrawString
add esp, 44
test eax, eax
je .Lt_0837
lea eax, [.Lt_0837]
push eax
lea eax, [.Lt_0836]
push eax
push offset _Lt_03CB
push 856
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0837:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0839
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_083B
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 6
push offset _Lt_0748
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
jmp .Lt_083A
.Lt_083B:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 6
push offset _Lt_0748
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
.Lt_083A:
.Lt_0839:
.Lt_0838:
mov byte ptr [ebp-4], 1
.Lt_081E:
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

.globl __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
__ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi:
push ebp
mov ebp, esp
sub esp, 112
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0887
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0840:
cmp dword ptr [ebp+12], 0
jle .Lt_0843
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 877
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0889
jmp eax
.Lt_0889:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-16]
cmp byte ptr [eax+7695], 1
jne .Lt_0846
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 878
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_088A
jmp eax
.Lt_088A:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
cmp dword ptr [ebx+8208], eax
je .Lt_0849
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_084B
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 36
push offset _Lt_0850
push -1
push -1
push 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 9
push offset _Lt_084F
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 880
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_088B
jmp eax
.Lt_088B:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+8208]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_084D
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 75
push offset _Lt_084C
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
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_084A
.Lt_084B:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 27
push offset _Lt_085B
push -1
push -1
push 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 9
push offset _Lt_085A
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 882
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_088C
jmp eax
.Lt_088C:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+8208]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_084D
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 71
push offset _Lt_0858
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
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.Lt_084A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP11RELOAD_FILEEi
add esp, 8
test al, al
jne .Lt_0864
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0866
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 62
push offset _Lt_0868
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 85
push offset _Lt_0867
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
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0865
.Lt_0866:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 49
push offset _Lt_086C
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 71
push offset _Lt_0858
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
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0865:
mov dword ptr [ebp-4], 0
jmp .Lt_0841
.Lt_0864:
.Lt_0863:
.Lt_0849:
.Lt_0848:
jmp .Lt_0845
.Lt_0846:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 895
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_088D
jmp eax
.Lt_088D:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
cmp dword ptr [ebx+8208], eax
je .Lt_0872
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0874
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
push 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 9
push offset _Lt_084F
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 897
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_088E
jmp eax
.Lt_088E:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+8208]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_084D
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 112
push offset _Lt_0875
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
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
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
jmp .Lt_0873
.Lt_0874:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
push 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 9
push offset _Lt_085A
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 899
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_088F
jmp eax
.Lt_088F:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+8208]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_084D
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 102
push offset _Lt_087D
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
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
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
.Lt_0873:
.Lt_0872:
.Lt_0871:
.Lt_0845:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 906
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0890
jmp eax
.Lt_0890:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+26676]
mov dword ptr [ebp-4], eax
.Lt_0843:
.Lt_0842:
.Lt_0841:
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

.globl __ZN15_MEMOIRE_BITMAP18RECUPERER_BITMAP_XEi
__ZN15_MEMOIRE_BITMAP18RECUPERER_BITMAP_XEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_08A1
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0891:
cmp dword ptr [ebp+12], 0
jle .Lt_0894
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 917
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08A3
jmp eax
.Lt_08A3:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+12312]
mov dword ptr [ebp-4], eax
jmp .Lt_0892
jmp .Lt_0893
.Lt_0894:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0897
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 61
push offset _Lt_0898
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
jmp .Lt_0896
.Lt_0897:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_089C
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
.Lt_0896:
mov dword ptr [ebp-4], 0
.Lt_0893:
.Lt_0892:
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

.globl __ZN15_MEMOIRE_BITMAP18RECUPERER_BITMAP_YEi
__ZN15_MEMOIRE_BITMAP18RECUPERER_BITMAP_YEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_08B2
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_08A4:
cmp dword ptr [ebp+12], 0
jle .Lt_08A7
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 932
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08B4
jmp eax
.Lt_08B4:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+14364]
mov dword ptr [ebp-4], eax
jmp .Lt_08A5
jmp .Lt_08A6
.Lt_08A7:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08AA
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 61
push offset _Lt_0898
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
jmp .Lt_08A9
.Lt_08AA:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_089C
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
.Lt_08A9:
mov dword ptr [ebp-4], 0
.Lt_08A6:
.Lt_08A5:
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

.globl __ZN15_MEMOIRE_BITMAP21RECUPERER_BITMAP_BITSEi
__ZN15_MEMOIRE_BITMAP21RECUPERER_BITMAP_BITSEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_08C3
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_08B5:
cmp dword ptr [ebp+12], 0
jle .Lt_08B8
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 946
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08C5
jmp eax
.Lt_08C5:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+8208]
mov dword ptr [ebp-4], eax
jmp .Lt_08B6
jmp .Lt_08B7
.Lt_08B8:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08BB
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 61
push offset _Lt_0898
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
jmp .Lt_08BA
.Lt_08BB:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_089C
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
.Lt_08BA:
mov dword ptr [ebp-4], 0
.Lt_08B7:
.Lt_08B6:
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

.globl __ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_TAILLEEi
__ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_TAILLEEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_08D4
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_08C6:
cmp dword ptr [ebp+12], 0
jle .Lt_08C9
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 962
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08D6
jmp eax
.Lt_08D6:
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+16416]
mov dword ptr [ebp-4], eax
jmp .Lt_08C7
jmp .Lt_08C8
.Lt_08C9:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08CC
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 61
push offset _Lt_0898
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
jmp .Lt_08CB
.Lt_08CC:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_089C
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
.Lt_08CB:
mov dword ptr [ebp-4], 0
.Lt_08C8:
.Lt_08C7:
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

.globl __ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_NOMBREEv
__ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_NOMBREEv:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_08E1
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_08D7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 1
.Lt_08DC:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 980
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08E3
jmp eax
.Lt_08E3:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-24]
cmp byte ptr [eax+7182], 1
jne .Lt_08DF
inc dword ptr [ebp-8]
.Lt_08DF:
.Lt_08DE:
.Lt_08DA:
inc dword ptr [ebp-20]
.Lt_08D9:
cmp dword ptr [ebp-20], 512
jle .Lt_08DC
.Lt_08DB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_08D8:
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

.globl __ZN15_MEMOIRE_BITMAP22RECUPERER_BITMAP_LISTEEv
__ZN15_MEMOIRE_BITMAP22RECUPERER_BITMAP_LISTEEv:
push ebp
mov ebp, esp
sub esp, 396
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-56], eax
push offset _Lt_091B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-60], eax
.Lt_08E4:
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 1
.Lt_08E9:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 997
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_091D
jmp eax
.Lt_091D:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-68]
cmp byte ptr [eax+7182], 1
jne .Lt_08EC
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-72], eax
push offset _Lt_03CB
push 999
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_091E
jmp eax
.Lt_091E:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-72]
cmp byte ptr [eax+7695], 1
jne .Lt_08EF
push 0
push 5
push offset _Lt_08F0
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08EE
.Lt_08EF:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
.Lt_08EE:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 1000
push 512
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_091F
jmp eax
.Lt_091F:
mov eax, dword ptr [ebp-76]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
cmp dword ptr [ebx+18468], 0
jle .Lt_08F3
push 0
push -1
mov ebx, dword ptr [ebp-64]
mov dword ptr [ebp-396], ebx
push offset _Lt_03CB
push 1001
push 512
push dword ptr [ebp-396]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0920
jmp eax
.Lt_0920:
mov eax, dword ptr [ebp-396]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GETHANDLETYPEEi
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08F2
.Lt_08F3:
push 0
push 4
push offset _Lt_08F5
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_08F2:
push 0
push -1
push -1
push 3
push offset _Lt_0019
push -1
push 2
push offset _Lt_0471
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 4
push offset _Lt_0901
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-104], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0921
jmp eax
.Lt_0921:
mov eax, dword ptr [ebp-104]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
push -1
push 4
push offset _Lt_08FF
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-100], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0922
jmp eax
.Lt_0922:
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push 2
push offset _Lt_08FD
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-96], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0923
jmp eax
.Lt_0923:
mov eax, dword ptr [ebp-96]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+16416]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-92], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0924
jmp eax
.Lt_0924:
mov eax, dword ptr [ebp-92]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+8208]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0925
jmp eax
.Lt_0925:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+14364]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0926
jmp eax
.Lt_0926:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+12312]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0434
push -1
push -1
lea eax, [ebp-52]
push eax
push -1
push 2
push offset _Lt_08F8
push -1
push -1
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 1005
push 512
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0927
jmp eax
.Lt_0927:
mov eax, dword ptr [ebp-80]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 9
push offset _Lt_08F6
push -1
push -1
push dword ptr [ebp-64]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_0794
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
lea eax, [ebp-332]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
lea eax, [ebp-368]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.Lt_08EC:
.Lt_08EB:
.Lt_08E7:
inc dword ptr [ebp-64]
.Lt_08E6:
cmp dword ptr [ebp-64], 512
jle .Lt_08E9
.Lt_08E8:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08E5:
push dword ptr [ebp-60]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-56]
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

.globl __ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_TAILLEEv
__ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_TAILLEEv:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_08D4
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0928:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 1
.Lt_092D:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 1018
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0934
jmp eax
.Lt_0934:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
cmp byte ptr [eax+7182], 1
jne .Lt_0930
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-32], eax
push offset _Lt_03CB
push 1019
push 512
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0935
jmp eax
.Lt_0935:
mov eax, dword ptr [ebp-32]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+16416]
add dword ptr [ebp-12], eax
.Lt_0930:
.Lt_092F:
.Lt_092B:
inc dword ptr [ebp-24]
.Lt_092A:
cmp dword ptr [ebp-24], 512
jle .Lt_092D
.Lt_092C:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0929:
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

.globl __ZN15_MEMOIRE_BITMAP29RECUPERER_BITMAP_ID_BY_HANDLEEi
__ZN15_MEMOIRE_BITMAP29RECUPERER_BITMAP_ID_BY_HANDLEEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_094C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0936:
cmp dword ptr [ebp+12], 0
jle .Lt_0939
mov dword ptr [ebp-16], 0
.Lt_093D:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 1031
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_094E
jmp eax
.Lt_094E:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+18468], eax
jne .Lt_0940
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_0937
.Lt_0940:
.Lt_093F:
.Lt_093B:
inc dword ptr [ebp-16]
.Lt_093A:
cmp dword ptr [ebp-16], 512
jle .Lt_093D
.Lt_093C:
jmp .Lt_0938
.Lt_0939:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0942
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 71
push offset _Lt_0943
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
jmp .Lt_0941
.Lt_0942:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 70
push offset _Lt_0947
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
.Lt_0941:
mov dword ptr [ebp-4], -1
.Lt_0938:
.Lt_0937:
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

.globl __ZN15_MEMOIRE_BITMAP30RECUPERER_BITMAP_PTR_BY_HANDLEEi
__ZN15_MEMOIRE_BITMAP30RECUPERER_BITMAP_PTR_BY_HANDLEEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0966
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_094F:
cmp dword ptr [ebp+12], 0
jle .Lt_0952
mov dword ptr [ebp-16], 0
.Lt_0956:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 1050
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0968
jmp eax
.Lt_0968:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+18468], eax
jne .Lt_0959
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1051
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0969
jmp eax
.Lt_0969:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+26676]
mov dword ptr [ebp-4], eax
jmp .Lt_0950
.Lt_0959:
.Lt_0958:
.Lt_0954:
inc dword ptr [ebp-16]
.Lt_0953:
cmp dword ptr [ebp-16], 512
jle .Lt_0956
.Lt_0955:
jmp .Lt_0951
.Lt_0952:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_095C
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 72
push offset _Lt_095D
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
jmp .Lt_095B
.Lt_095C:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 71
push offset _Lt_0961
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
.Lt_095B:
mov dword ptr [ebp-4], 0
.Lt_0951:
.Lt_0950:
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

.globl __ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_HANDLEEi
__ZN15_MEMOIRE_BITMAP23RECUPERER_BITMAP_HANDLEEi:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_097D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_096A:
cmp dword ptr [ebp+12], 0
jle .Lt_096D
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 1069
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_097F
jmp eax
.Lt_097F:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-16]
cmp byte ptr [eax+7182], 1
jne .Lt_0970
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 1070
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0980
jmp eax
.Lt_0980:
mov eax, dword ptr [ebp-20]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+18468]
mov dword ptr [ebp-4], eax
jmp .Lt_096B
.Lt_0970:
.Lt_096F:
jmp .Lt_096C
.Lt_096D:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0973
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 61
push offset _Lt_0974
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
jmp .Lt_0972
.Lt_0973:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_0978
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
.Lt_0972:
mov dword ptr [ebp-4], -1
jmp .Lt_096B
.Lt_096C:
mov dword ptr [ebp-4], 0
.Lt_096B:
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

.globl __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_NOMEi
__ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_NOMEi:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0992
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0981:
cmp dword ptr [ebp+12], 0
jle .Lt_0984
push 0
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1089
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0994
jmp eax
.Lt_0994:
mov eax, dword ptr [ebp-24]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_0982
jmp .Lt_0983
.Lt_0984:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0987
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 58
push offset _Lt_0988
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
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
jmp .Lt_0986
.Lt_0987:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 57
push offset _Lt_098C
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
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
.Lt_0986:
push 0
push 7
push offset _Lt_0990
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
.Lt_0983:
.Lt_0982:
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

.globl __ZN15_MEMOIRE_BITMAP16GARBAGECOLLECTOREv
__ZN15_MEMOIRE_BITMAP16GARBAGECOLLECTOREv:
push ebp
mov ebp, esp
sub esp, 172
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-52], eax
push offset _Lt_0A19
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-56], eax
.Lt_0995:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-48]
push eax
call _fb_StrInit
add esp, 20
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0998
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_099A
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 103
push offset _Lt_099B
push -1
lea eax, [ebp-68]
push eax
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
jmp .Lt_0999
.Lt_099A:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 98
push offset _Lt_099D
push -1
lea eax, [ebp-68]
push eax
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
.Lt_0999:
.Lt_0998:
.Lt_0997:
mov dword ptr [ebp-60], 1
.Lt_09A2:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
push offset _Lt_03CB
push 1127
push 512
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A1B
jmp eax
.Lt_0A1B:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-64]
cmp byte ptr [eax+7182], 1
jne .Lt_09A5
push 5
push offset _Lt_09A7
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 1130
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A1C
jmp eax
.Lt_0A1C:
mov eax, dword ptr [ebp-68]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GETHANDLETYPEEi
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_09A9
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09AB
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09AD
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
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
push -1
push 42
push offset _Lt_09B3
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 1134
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A1D
jmp eax
.Lt_0A1D:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 31
push offset _Lt_09B1
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 1134
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A1E
jmp eax
.Lt_0A1E:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 17
push offset _Lt_09AF
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push 57
push offset _Lt_09AE
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
jmp .Lt_09AC
.Lt_09AD:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
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
push -1
push 38
push offset _Lt_09C0
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 1136
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A1F
jmp eax
.Lt_0A1F:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 22
push offset _Lt_09BE
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 1136
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A20
jmp eax
.Lt_0A20:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 16
push offset _Lt_09BC
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push 55
push offset _Lt_09BB
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
.Lt_09AC:
.Lt_09AB:
.Lt_09AA:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-72], eax
push offset _Lt_03CB
push 1140
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A21
jmp eax
.Lt_0A21:
mov eax, dword ptr [ebp-72]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+16416]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 1141
push 512
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A22
jmp eax
.Lt_0A22:
mov eax, dword ptr [ebp-76]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+18468]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 1142
push 512
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A23
jmp eax
.Lt_0A23:
mov eax, dword ptr [ebp-80]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+26676]
mov dword ptr [ebp-36], eax
push dword ptr [ebp-60]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
cmp al, 1
jne .Lt_09CC
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp-28]
add dword ptr [ebp-24], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09CE
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09D0
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 11
push offset _Lt_09D3
push -1
push -1
push dword ptr [ebp-32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_09D2
push -1
push -1
push dword ptr [ebp-36]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push 31
push offset _Lt_09D1
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
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09CF
.Lt_09D0:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 10
push offset _Lt_09DB
push -1
push -1
push dword ptr [ebp-32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_09D2
push -1
push -1
push dword ptr [ebp-36]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push 31
push offset _Lt_09D1
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
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09CF:
.Lt_09CE:
.Lt_09CD:
jmp .Lt_09CB
.Lt_09CC:
inc dword ptr [ebp-20]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09E4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_09E6
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push 28
push offset _Lt_09EA
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 1165
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A24
jmp eax
.Lt_0A24:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_09D2
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 1165
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A25
jmp eax
.Lt_0A25:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push 35
push offset _Lt_09E7
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
jmp .Lt_09E5
.Lt_09E6:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push 18
push offset _Lt_09F5
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-88], eax
push offset _Lt_03CB
push 1167
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A26
jmp eax
.Lt_0A26:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_09D2
push -1
push -1
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-84], eax
push offset _Lt_03CB
push 1167
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A27
jmp eax
.Lt_0A27:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 8
push offset _Lt_07EC
push -1
push -1
push dword ptr [ebp-60]
call _fb_IntToStr
add esp, 4
push eax
push 34
push offset _Lt_09F2
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
.Lt_09E5:
.Lt_09E4:
.Lt_09E3:
.Lt_09CB:
.Lt_09A9:
.Lt_09A8:
.Lt_09A5:
.Lt_09A4:
.Lt_09A0:
inc dword ptr [ebp-60]
.Lt_099F:
cmp dword ptr [ebp-60], 512
jle .Lt_09A2
.Lt_09A1:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_09FE
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A00
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push 11
push offset _Lt_0A03
push -1
push -1
push 0
push dword ptr [ebp-24]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0A28]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 20
push offset _Lt_0A02
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push 60
push offset _Lt_0A01
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
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_09FF
.Lt_0A00:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push 9
push offset _Lt_0A0B
push -1
push -1
push 0
push dword ptr [ebp-24]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0A28]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 18
push offset _Lt_0A0A
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push 57
push offset _Lt_0A09
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
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.Lt_09FF:
.Lt_09FE:
.Lt_09FD:
cmp dword ptr [ebp-16], 0
jle .Lt_0A12
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A14
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_0A15
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-24]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0A28]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0A16
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0A13
.Lt_0A14:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_0A15
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-24]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0A28]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0A17
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0A13:
.Lt_0A12:
.Lt_0A11:
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0996:
push dword ptr [ebp-56]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-52]
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

.globl __ZN15_MEMOIRE_BITMAP25ISPRESENT_BITMAP_BYHANDLEEi
__ZN15_MEMOIRE_BITMAP25ISPRESENT_BITMAP_BYHANDLEEi:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0A36
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0A29:
mov dword ptr [ebp-16], 1
.Lt_0A2E:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 1200
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A38
jmp eax
.Lt_0A38:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-20]
cmp byte ptr [eax+7182], 1
jne .Lt_0A31
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1203
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A39
jmp eax
.Lt_0A39:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+18468], eax
jne .Lt_0A34
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_0A2A
.Lt_0A34:
.Lt_0A33:
.Lt_0A31:
.Lt_0A30:
.Lt_0A2C:
inc dword ptr [ebp-16]
.Lt_0A2B:
cmp dword ptr [ebp-16], 512
jle .Lt_0A2E
.Lt_0A2D:
.Lt_0A2A:
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

.globl __ZN15_MEMOIRE_BITMAP25SUPPRIMER_BITMAP_BYHANDLEEi
__ZN15_MEMOIRE_BITMAP25SUPPRIMER_BITMAP_BYHANDLEEi:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_0A47
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0A3A:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 1
.Lt_0A3F:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1217
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A49
jmp eax
.Lt_0A49:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-24]
cmp byte ptr [eax+7182], 1
jne .Lt_0A42
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 1220
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A4A
jmp eax
.Lt_0A4A:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+18468], eax
jne .Lt_0A45
inc dword ptr [ebp-8]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
.Lt_0A45:
.Lt_0A44:
.Lt_0A42:
.Lt_0A41:
.Lt_0A3D:
inc dword ptr [ebp-20]
.Lt_0A3C:
cmp dword ptr [ebp-20], 512
jle .Lt_0A3F
.Lt_0A3E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0A3B:
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

.globl __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
__ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi:
push ebp
mov ebp, esp
sub esp, 208
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0ABF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0A4B:
cmp dword ptr [ebp+12], 0
jle .Lt_0A4E
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
push offset _Lt_03CB
push 1241
push 512
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC1
jmp eax
.Lt_0AC1:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-16]
cmp byte ptr [eax+7182], 1
jne .Lt_0A51
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 1243
push 512
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC2
jmp eax
.Lt_0AC2:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-20]
cmp byte ptr [eax+6669], 0
jne .Lt_0A54
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1244
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC3
jmp eax
.Lt_0AC3:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
cmp dword ptr [ebx+26676], 0
je .Lt_0A57
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A59
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A5B
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-100], eax
push offset _Lt_03CB
push 1248
push 512
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC4
jmp eax
.Lt_0AC4:
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0A61
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-96], eax
push offset _Lt_03CB
push 1248
push 512
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC5
jmp eax
.Lt_0AC5:
mov eax, dword ptr [ebp-96]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0A5F
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-92], eax
push offset _Lt_03CB
push 1248
push 512
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC6
jmp eax
.Lt_0AC6:
mov eax, dword ptr [ebp-92]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
push -1
push 7
push offset _Lt_0A5D
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_0A5C
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
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A5A
.Lt_0A5B:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-100], eax
push offset _Lt_03CB
push 1250
push 512
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC7
jmp eax
.Lt_0AC7:
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 12
push offset _Lt_0A61
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-96], eax
push offset _Lt_03CB
push 1250
push 512
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC8
jmp eax
.Lt_0AC8:
mov eax, dword ptr [ebp-96]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+18468]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0A5F
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-92], eax
push offset _Lt_03CB
push 1250
push 512
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AC9
jmp eax
.Lt_0AC9:
mov eax, dword ptr [ebp-92]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
push -1
push 8
push offset _Lt_0A6C
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_0A5C
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
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A5A:
.Lt_0A59:
.Lt_0A58:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 1253
push 512
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACA
jmp eax
.Lt_0ACA:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_GfxImageDestroy
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-32], ebx
push offset _Lt_03CB
push 1254
push 512
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACB
jmp eax
.Lt_0ACB:
mov eax, dword ptr [ebp-32]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+26676], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-36], ebx
push offset _Lt_03CB
push 1255
push 512
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACC
jmp eax
.Lt_0ACC:
mov eax, dword ptr [ebp-36]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+8208], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-40], ebx
push offset _Lt_03CB
push 1256
push 512
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACD
jmp eax
.Lt_0ACD:
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+10260], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-44], ebx
push offset _Lt_03CB
push 1257
push 512
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACE
jmp eax
.Lt_0ACE:
mov eax, dword ptr [ebp-44]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+12312], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-48], ebx
push offset _Lt_03CB
push 1258
push 512
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACF
jmp eax
.Lt_0ACF:
mov eax, dword ptr [ebp-48]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+14364], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-52], ebx
push offset _Lt_03CB
push 1259
push 512
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD0
jmp eax
.Lt_0AD0:
mov eax, dword ptr [ebp-52]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+16416], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-56], ebx
push offset _Lt_03CB
push 1260
push 512
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD1
jmp eax
.Lt_0AD1:
mov eax, dword ptr [ebp-56]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+18468], 0
push 0
push 1
push offset _Lt_0000
push -1
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-60], ebx
push offset _Lt_03CB
push 1261
push 512
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD2
jmp eax
.Lt_0AD2:
mov eax, dword ptr [ebp-60]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
lea eax, [ebx+20520]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-64], eax
push offset _Lt_03CB
push 1262
push 512
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD3
jmp eax
.Lt_0AD3:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-64]
mov byte ptr [eax+7182], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-68], eax
push offset _Lt_03CB
push 1263
push 512
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD4
jmp eax
.Lt_0AD4:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-68]
mov byte ptr [eax+7695], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-72], eax
push offset _Lt_03CB
push 1264
push 512
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD5
jmp eax
.Lt_0AD5:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-72]
mov byte ptr [eax+6156], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 1265
push 512
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD6
jmp eax
.Lt_0AD6:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-76]
mov byte ptr [eax+6669], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 1266
push 512
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD7
jmp eax
.Lt_0AD7:
mov eax, dword ptr [ebp-80]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-84], ebx
push offset _Lt_03CB
push 1267
push 512
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD8
jmp eax
.Lt_0AD8:
mov eax, dword ptr [ebp-84]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+2052], 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-88], ebx
push offset _Lt_03CB
push 1268
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AD9
jmp eax
.Lt_0AD9:
mov eax, dword ptr [ebp-88]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+4104], 0
lea ebx, [_CPCDOS_INSTANCE+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A8A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A8C
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 10
push offset _Lt_0A8E
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 7
push offset _Lt_0A8D
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
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0A8B
.Lt_0A8C:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 9
push offset _Lt_0A92
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 7
push offset _Lt_0A8D
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
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A8B:
.Lt_0A8A:
.Lt_0A89:
mov byte ptr [ebp-4], 1
jmp .Lt_0A4C
.Lt_0A57:
.Lt_0A56:
jmp .Lt_0A53
.Lt_0A54:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0A97
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0A99
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 29
push offset _Lt_0A9C
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1283
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ADA
jmp eax
.Lt_0ADA:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 34
push offset _Lt_0A9A
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_0A5C
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
push -1
lea eax, [ebp-84]
push eax
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
jmp .Lt_0A98
.Lt_0A99:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 29
push offset _Lt_0AA4
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-24], eax
push offset _Lt_03CB
push 1285
push 512
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ADB
jmp eax
.Lt_0ADB:
mov eax, dword ptr [ebp-24]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+26676]
call _fb_HEX_p
add esp, 4
push eax
push -1
push 34
push offset _Lt_0AA2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_0A5C
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
push -1
lea eax, [ebp-84]
push eax
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
.Lt_0A98:
.Lt_0A97:
.Lt_0A96:
.Lt_0A53:
jmp .Lt_0A50
.Lt_0A51:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0AAB
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0AAD
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 15
push offset _Lt_0AAE
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_0A5C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0AAC
.Lt_0AAD:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 13
push offset _Lt_0AB2
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 41
push offset _Lt_0A5C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0AAC:
.Lt_0AAB:
.Lt_0AAA:
.Lt_0A50:
jmp .Lt_0A4D
.Lt_0A4E:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0AB7
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_0AB8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0AB6
.Lt_0AB7:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 51
push offset _Lt_0ABB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0AB6:
.Lt_0A4D:
mov byte ptr [ebp-4], 0
.Lt_0A4C:
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

.globl __ZN15_MEMOIRE_BITMAP9ACTUALISEEib
__ZN15_MEMOIRE_BITMAP9ACTUALISEEib:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0ADC:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0AE8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 0
jle .Lt_0ADF
lea eax, [_CPCDOS_INSTANCE+589484]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
push offset _Lt_03CB
push 1318
push 512
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AEA
jmp eax
.Lt_0AEA:
add ebx, dword ptr [ebp-12]
mov al, byte ptr [ebp+16]
mov byte ptr [ebx+6156], al
jmp .Lt_0ADE
.Lt_0ADF:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0AE2
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_0AB8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0AE1
.Lt_0AE2:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 51
push offset _Lt_0ABB
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0AE1:
.Lt_0ADE:
.Lt_0ADD:
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

.globl __ZN15_MEMOIRE_BITMAP9ACTUALISEEi
__ZN15_MEMOIRE_BITMAP9ACTUALISEEi:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0AE8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0AEB:
cmp dword ptr [ebp+12], 0
jle .Lt_0AEE
lea eax, [_CPCDOS_INSTANCE+589484]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ebx
push offset _Lt_03CB
push 1333
push 512
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AF9
jmp eax
.Lt_0AF9:
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+6156]
mov byte ptr [ebp-4], al
lea eax, [_CPCDOS_INSTANCE+589484]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-20], ebx
push offset _Lt_03CB
push 1335
push 512
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0AFA
jmp eax
.Lt_0AFA:
add ebx, dword ptr [ebp-20]
mov byte ptr [ebx+6156], 0
jmp .Lt_0AED
.Lt_0AEE:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0AF2
lea ebx, [_CPCDOS_INSTANCE+589452]
push ebx
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 52
push offset _Lt_0AB8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0AF1
.Lt_0AF2:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 51
push offset _Lt_0ABB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0AF1:
.Lt_0AED:
.Lt_0AEC:
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

.globl __ZN15_MEMOIRE_BITMAP15ECRIRE_ECRAN_MLEiR8FBSTRINGR7FBARRAYIS0_Eiiiiiiiii
__ZN15_MEMOIRE_BITMAP15ECRIRE_ECRAN_MLEiR8FBSTRINGR7FBARRAYIS0_Eiiiiiiiii:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0AFE
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0AFB:
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
push dword ptr [ebp+56]
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP15ECRIRE_ECRAN_MLER8FBSTRINGR7FBARRAYIS0_Eiiiiiiiii
add esp, 48
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0AFC:
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

.globl __ZN15_MEMOIRE_BITMAP15ECRIRE_ECRAN_MLER8FBSTRINGR7FBARRAYIS0_Eiiiiiiiii
__ZN15_MEMOIRE_BITMAP15ECRIRE_ECRAN_MLER8FBSTRINGR7FBARRAYIS0_Eiiiiiiiii:
push ebp
mov ebp, esp
sub esp, 224
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0AFE
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0B00:
mov eax, dword ptr [ebp+28]
add eax, 3
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+32]
add eax, 4
mov dword ptr [ebp-12], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0B03
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0B05
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
push eax
call _fb_HEX_p
add esp, 4
push eax
push -1
push 22
push offset _Lt_0B0B
push -1
push -1
push dword ptr [ebp+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B0A
push -1
push -1
push dword ptr [ebp+48]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B09
push -1
push -1
push dword ptr [ebp+44]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B08
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 17
push offset _Lt_0B07
push -1
push -1
push dword ptr [ebp+12]
push 41
push offset _Lt_0B06
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0B04
.Lt_0B05:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
push eax
call _fb_HEX_p
add esp, 4
push eax
push -1
push 22
push offset _Lt_0B0B
push -1
push -1
push dword ptr [ebp+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+52]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B0A
push -1
push -1
push dword ptr [ebp+48]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B1F
push -1
push -1
push dword ptr [ebp+44]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B08
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 16
push offset _Lt_0B1E
push -1
push -1
push dword ptr [ebp+12]
push 40
push offset _Lt_0B1D
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0B04:
.Lt_0B03:
.Lt_0B02:
push -1073741823
push 0
push 0
mov eax, dword ptr [ebp+40]
add eax, dword ptr [ebp+32]
push eax
mov eax, dword ptr [ebp+36]
add eax, dword ptr [ebp+28]
push eax
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call _fb_GfxView
add esp, 28
cmp dword ptr [ebp+24], 0
jle .Lt_0B32
mov dword ptr [ebp-24], 1
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-32], eax
jmp .Lt_0B34
.Lt_0B37:
.Lt_0B39:
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+44]
shl eax, 16
mov ebx, dword ptr [ebp+48]
shl ebx, 8
or eax, ebx
or eax, dword ptr [ebp+52]
or eax, 4278190080
push eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-36], eax
push offset _Lt_03CB
push 1378
mov eax, dword ptr [ebp+16]
add eax, 28
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
add eax, 24
push dword ptr [eax]
push dword ptr [ebp-36]
call _fb_ArrayBoundChk
add esp, 20
test eax, eax
je .Lt_0B3E
jmp eax
.Lt_0B3E:
mov eax, dword ptr [ebp-36]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
push 4
mov ebx, dword ptr [ebp-24]
add ebx, dword ptr [ebp-12]
push ebx
fild dword ptr [esp]
add esp, 4
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp-8]
inc ebx
push ebx
fild dword ptr [esp]
add esp, 4
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxDrawString
add esp, 44
test eax, eax
je .Lt_0B3A
lea eax, [.Lt_0B3A]
push eax
lea eax, [.Lt_0B39]
push eax
push offset _Lt_03CB
push 1378
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0B3A:
mov eax, dword ptr [ebp-28]
sal eax, 3
inc eax
mov dword ptr [ebp-24], eax
.Lt_0B35:
inc dword ptr [ebp-28]
.Lt_0B34:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .Lt_0B37
.Lt_0B36:
jmp .Lt_0B31
.Lt_0B32:
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
mov eax, dword ptr [ebp-12]
inc eax
push eax
mov eax, dword ptr [ebp-8]
inc eax
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
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP12ECRIRE_ECRANE8FBSTRINGiiiii
add esp, 28
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0B31:
push 0
push 0
push 0
push -32768
push -32768
push -32768
push -32768
call _fb_GfxView
add esp, 28
mov byte ptr [ebp-4], 0
.Lt_0B01:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-16]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN15_MEMOIRE_BITMAP12ECRIRE_ECRANE8FBSTRINGiiiii
__ZN15_MEMOIRE_BITMAP12ECRIRE_ECRANE8FBSTRINGiiiii:
push ebp
mov ebp, esp
sub esp, 204
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B6E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B3F:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0B42
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0B44
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
push eax
call _fb_HEX_p
add esp, 4
push eax
push -1
push 22
push offset _Lt_0B0B
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B0A
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B09
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B08
push -1
push 3
push offset _Lt_07EA
push -1
push -1
push dword ptr [ebp+12]
push 41
push offset _Lt_0B06
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0B43
.Lt_0B44:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push 2
push offset _Lt_04AA
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
push eax
call _fb_HEX_p
add esp, 4
push eax
push -1
push 22
push offset _Lt_0B0B
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0435
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_0396
push -1
push -1
push dword ptr [ebp+32]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B0A
push -1
push -1
push dword ptr [ebp+28]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B1F
push -1
push -1
push dword ptr [ebp+24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 4
push offset _Lt_0B08
push -1
push 3
push offset _Lt_07EA
push -1
push -1
push dword ptr [ebp+12]
push 41
push offset _Lt_0B06
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
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0B43:
.Lt_0B42:
.Lt_0B41:
.Lt_0B65:
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+24]
shl eax, 16
mov ebx, dword ptr [ebp+28]
shl ebx, 8
or eax, ebx
or eax, dword ptr [ebp+32]
or eax, 4278190080
push eax
push dword ptr [ebp+12]
push 4
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxDrawString
add esp, 44
test eax, eax
je .Lt_0B66
lea eax, [.Lt_0B66]
push eax
lea eax, [.Lt_0B65]
push eax
push offset _Lt_03CB
push 1401
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0B66:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0B68
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0B6A
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 6
push offset _Lt_0748
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
jmp .Lt_0B69
.Lt_0B6A:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 6
push offset _Lt_0748
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
.Lt_0B69:
.Lt_0B68:
.Lt_0B67:
mov byte ptr [ebp-4], 1
.Lt_0B40:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiii
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiii:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B70:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0B73
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiii
add esp, 16
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0B73:
.Lt_0B72:
.Lt_0B71:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiii
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiii:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B77:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0B7A
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
jbe .Lt_0B7C
.Lt_0B7E:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0B7F
lea eax, [.Lt_0B7F]
push eax
lea eax, [.Lt_0B7E]
push eax
push offset _Lt_03CB
push 1431
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0B7F:
mov byte ptr [ebp-4], 1
jmp .Lt_0B7B
.Lt_0B7C:
mov byte ptr [ebp-4], 0
.Lt_0B7B:
.Lt_0B7A:
.Lt_0B79:
.Lt_0B78:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiii
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiii:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B82:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0B85
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiii
add esp, 32
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0B85:
.Lt_0B84:
.Lt_0B83:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiii
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiii:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B88:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0B8B
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
jbe .Lt_0B8D
.Lt_0B8F:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0B90
lea eax, [.Lt_0B90]
push eax
lea eax, [.Lt_0B8F]
push eax
push offset _Lt_03CB
push 1456
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0B90:
mov byte ptr [ebp-4], 1
jmp .Lt_0B8C
.Lt_0B8D:
mov byte ptr [ebp-4], 0
.Lt_0B8C:
.Lt_0B8B:
.Lt_0B8A:
.Lt_0B89:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiib
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiib:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B93:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0B96
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
movzx eax, byte ptr [ebp+28]
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiib
add esp, 20
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0B96:
.Lt_0B95:
.Lt_0B94:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiib
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiib:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0B99:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0B9C
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
jbe .Lt_0B9E
cmp byte ptr [ebp+24], 1
jne .Lt_0BA0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
cmp eax, 32
jne .Lt_0BA2
.Lt_0BA4:
push 0
push 0
push 255
push offset _fb_hPutBlend
push 9
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BA5
lea eax, [.Lt_0BA5]
push eax
lea eax, [.Lt_0BA4]
push eax
push offset _Lt_03CB
push 1484
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BA5:
jmp .Lt_0BA1
.Lt_0BA2:
.Lt_0BA7:
push 0
push 0
push -1
push offset _fb_hPutTrans
push 0
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BA8
lea eax, [.Lt_0BA8]
push eax
lea eax, [.Lt_0BA7]
push eax
push offset _Lt_03CB
push 1486
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BA8:
.Lt_0BA1:
jmp .Lt_0B9F
.Lt_0BA0:
.Lt_0BAA:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BAB
lea eax, [.Lt_0BAB]
push eax
lea eax, [.Lt_0BAA]
push eax
push offset _Lt_03CB
push 1489
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BAB:
.Lt_0B9F:
mov byte ptr [ebp-4], 1
jmp .Lt_0B9D
.Lt_0B9E:
mov byte ptr [ebp-4], 0
.Lt_0B9D:
.Lt_0B9C:
.Lt_0B9B:
.Lt_0B9A:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiiib
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiiib:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BAE:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BB1
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
movzx eax, byte ptr [ebp+44]
push eax
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiib
add esp, 36
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0BB1:
.Lt_0BB0:
.Lt_0BAF:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiib
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiib:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BB4:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BB7
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
seta bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0BB9
cmp byte ptr [ebp+40], 1
jne .Lt_0BBB
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
cmp eax, 32
jne .Lt_0BBD
.Lt_0BBF:
push 0
push 0
push 255
push offset _fb_hPutBlend
push 9
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BC0
lea eax, [.Lt_0BC0]
push eax
lea eax, [.Lt_0BBF]
push eax
push offset _Lt_03CB
push 1533
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BC0:
jmp .Lt_0BBC
.Lt_0BBD:
.Lt_0BC2:
push 0
push 0
push -1
push offset _fb_hPutTrans
push 0
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BC3
lea eax, [.Lt_0BC3]
push eax
lea eax, [.Lt_0BC2]
push eax
push offset _Lt_03CB
push 1535
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BC3:
.Lt_0BBC:
jmp .Lt_0BBA
.Lt_0BBB:
.Lt_0BC5:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BC6
lea eax, [.Lt_0BC6]
push eax
lea eax, [.Lt_0BC5]
push eax
push offset _Lt_03CB
push 1538
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BC6:
.Lt_0BBA:
mov byte ptr [ebp-4], 1
jmp .Lt_0BB8
.Lt_0BB9:
mov byte ptr [ebp-4], 0
.Lt_0BB8:
.Lt_0BB7:
.Lt_0BB6:
.Lt_0BB5:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiibi
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiibi:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BCB:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BCE
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
push dword ptr [ebp+32]
movzx eax, byte ptr [ebp+28]
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiibi
add esp, 24
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0BCE:
.Lt_0BCD:
.Lt_0BCC:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiibi
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiibi:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BD1:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BD4
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
seta bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0BD6
cmp byte ptr [ebp+24], 1
jne .Lt_0BD8
.Lt_0BDA:
push 0
push 0
push dword ptr [ebp+28]
push offset _fb_hPutBlend
push 9
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BDB
lea eax, [.Lt_0BDB]
push eax
lea eax, [.Lt_0BDA]
push eax
push offset _Lt_03CB
push 1566
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BDB:
jmp .Lt_0BD7
.Lt_0BD8:
.Lt_0BDD:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BDE
lea eax, [.Lt_0BDE]
push eax
lea eax, [.Lt_0BDD]
push eax
push offset _Lt_03CB
push 1568
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BDE:
.Lt_0BD7:
mov byte ptr [ebp-4], 1
jmp .Lt_0BD5
.Lt_0BD6:
mov byte ptr [ebp-4], 0
.Lt_0BD5:
.Lt_0BD4:
.Lt_0BD3:
.Lt_0BD2:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiiibi
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiiibi:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BE3:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BE6
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _fb_GfxPageSet
add esp, 8
push dword ptr [ebp+48]
movzx eax, byte ptr [ebp+44]
push eax
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiibi
add esp, 40
mov byte ptr [ebp-4], al
push 0
push 1
call _fb_GfxPageSet
add esp, 8
.Lt_0BE6:
.Lt_0BE5:
.Lt_0BE4:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiibi
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiibi:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BE9:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BEC
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
seta bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0BEE
cmp byte ptr [ebp+40], 1
jne .Lt_0BF0
.Lt_0BF2:
push 0
push 0
push dword ptr [ebp+44]
push offset _fb_hPutBlend
push 9
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BF3
lea eax, [.Lt_0BF3]
push eax
lea eax, [.Lt_0BF2]
push eax
push offset _Lt_03CB
push 1595
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BF3:
jmp .Lt_0BEF
.Lt_0BF0:
.Lt_0BF5:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0BF6
lea eax, [.Lt_0BF6]
push eax
lea eax, [.Lt_0BF5]
push eax
push offset _Lt_03CB
push 1597
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0BF6:
.Lt_0BEF:
mov byte ptr [ebp-4], 1
jmp .Lt_0BED
.Lt_0BEE:
mov byte ptr [ebp-4], 0
.Lt_0BED:
.Lt_0BEC:
.Lt_0BEB:
.Lt_0BEA:
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

.globl __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiiibb
__ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiiiiiibb:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0B75
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0BFB:
cmp byte ptr [_CPCDOS_INSTANCE+452383], 1
jne .Lt_0BFE
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
seta bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+40]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
seta cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+40]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+12]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0C00
cmp byte ptr [ebp+44], 1
jne .Lt_0C02
lea ecx, [_CPCDOS_INSTANCE+589352]
push ecx
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
cmp eax, 32
jne .Lt_0C04
.Lt_0C06:
push 0
push 0
push 255
push offset _fb_hPutBlend
push 9
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp+40]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0C07
lea eax, [.Lt_0C07]
push eax
lea eax, [.Lt_0C06]
push eax
push offset _Lt_03CB
push 1618
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0C07:
jmp .Lt_0C03
.Lt_0C04:
.Lt_0C09:
push 0
push 0
push -1
push offset _fb_hPutTrans
push 0
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp+40]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0C0A
lea eax, [.Lt_0C0A]
push eax
lea eax, [.Lt_0C09]
push eax
push offset _Lt_03CB
push 1620
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0C0A:
.Lt_0C03:
jmp .Lt_0C01
.Lt_0C02:
.Lt_0C0C:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp+40]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_0C0D
lea eax, [.Lt_0C0D]
push eax
lea eax, [.Lt_0C0C]
push eax
push offset _Lt_03CB
push 1623
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0C0D:
.Lt_0C01:
mov byte ptr [ebp-4], 1
jmp .Lt_0BFF
.Lt_0C00:
mov byte ptr [ebp-4], 0
.Lt_0BFF:
.Lt_0BFE:
.Lt_0BFD:
.Lt_0BFC:
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
_fb_ctor__Memory:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0C15
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
.balign 4
_Lt_0019:	.ascii	"\15""\12""\0"

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
_Lt_03CB:	.ascii	"Core\\Memory.bas\0"
.balign 4
_Lt_03CF:	.ascii	"BLOC_LIBRE\0"
.balign 4
_Lt_03D4:	.ascii	"_SANS_NOM_\0"
.balign 4
_Lt_03D7:	.ascii	"CREER_BITMAP\0"
.balign 4
_Lt_03E9:	.ascii	"CREER_BITMAP_DEPUIS_PTR\0"
.balign 4
_Lt_03F1:	.ascii	"[_memoire_bitmap] Creer_BITMAP_depuis_PTR() parent handle:\0"
.balign 4
_Lt_03F2:	.ascii	" id:\0"
.balign 4
_Lt_03F3:	.ascii	" depuis l'offset [0x\0"
.balign 4
_Lt_03F4:	.ascii	"] Nom:\0"
.balign 4
_Lt_03FD:	.ascii	" from l'offset [0x\0"
.balign 4
_Lt_03FE:	.ascii	"] Name:\0"
.balign 4
_Lt_040E:	.ascii	"[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_0412:	.ascii	"[_memoire_bitmap] Creer_BITMAP_depuis_PTR() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_041D:	.ascii	" [ERREUR] ImageInfo() aucune informations. Impossible de continuer\0"
.balign 4
_Lt_041F:	.ascii	" [ERROR] ImageInfo() nothing informations. Unable to continue\0"
.balign 4
_Lt_0431:	.ascii	" [OK] id:\0"
.balign 4
_Lt_0432:	.ascii	" offset depuis le bitmap existant [0x\0"
.balign 4
_Lt_0434:	.ascii	"] \0"
.balign 4
_Lt_0435:	.ascii	"x\0"
.balign 4
_Lt_0436:	.ascii	" bits - handle:\0"
.balign 4
_Lt_0445:	.ascii	" offset from existing bitmap [0x\0"
.balign 4
_Lt_046D:	.ascii	"[_memoire_bitmap] Creer_BITMAP() parent handle:\0"
.balign 4
_Lt_046E:	.ascii	" Nom:\0"
.balign 4
_Lt_046F:	.ascii	" RVBA(\0"
.balign 4
_Lt_0470:	.ascii	",\0"
.balign 4
_Lt_0471:	.ascii	")\0"
.balign 4
_Lt_0485:	.ascii	" Name:\0"
.balign 4
_Lt_0486:	.ascii	" RGBA(\0"
.balign 4
_Lt_04A8:	.ascii	" [OK] offset bitmap [0x\0"
.balign 4
_Lt_04AA:	.ascii	"]\0"
.balign 4
_Lt_04AE:	.ascii	" [OK] bitmap offset [0x\0"
.balign 4
_Lt_04C9:	.ascii	"[_memoire_bitmap] Creer_BITMAP_depuis_FILE() parent handle:\0"
.balign 4
_Lt_04CA:	.ascii	" Source '\0"
.balign 4
_Lt_04CB:	.ascii	"'\0"
.balign 4
_Lt_04E7:	.ascii	"Creer_BITMAP_depuis_FILE() [ERREUR] Bitmap nulle\0"
.balign 4
_Lt_04E9:	.ascii	"Creer_BITMAP_depuis_FILE() [ERROR] null bitmap\0"
.balign 4
_Lt_04F7:	.ascii	"Creer_BITMAP_depuis_FILE() [OK] id:\0"
.balign 4
_Lt_04F8:	.ascii	" offset bitmap [0x\0"
.balign 4
_Lt_04FA:	.ascii	" bits\0"
.balign 4
_Lt_0502:	.ascii	" bitmap offset [0x\0"
.balign 4
_Lt_050C:	.ascii	"CREER_BITMAP_DEPUIS_FILE\0"
.balign 4
_Lt_052A:	.ascii	"RELOAD_FILE\0"
.balign 4
_Lt_053A:	.ascii	"[_memoire_bitmap] Auto_Reload_FILE() Suppression et rechargement de toutes les references BITMAP\0"
.balign 4
_Lt_053C:	.ascii	"[_memoire_bitmap] Auto_Reload_FILE() Deleting all and reloading BITMAP references\0"
.balign 4
_Lt_0546:	.ascii	"[_memoire_bitmap] Auto_Reload_FILE() [OK]\0"
.balign 4
_Lt_0548:	.ascii	"[_memoire_bitmap] Auto_Reload_FILE() Deferencement des identifiants des ressources graphiques des objets ...\0"
.balign 4
_Lt_054B:	.ascii	"[_memoire_bitmap] Auto_Reload_FILE() Deleting graphic objects  ressource id references...\0"
.balign 4
_Lt_0554:	.ascii	"AUTO_RELOAD_FILE\0"
.balign 4
_Lt_059F:	.ascii	"SUPPRIMER_ID_OBJETS\0"
.balign 4
_Lt_05C9:	.ascii	"[_memoire_bitmap] Dupliquer_BITMAP() id:\0"
.balign 4
_Lt_05D4:	.ascii	"[_memoire_bitmap] Dupliquer_BITMAP() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_05D8:	.ascii	"[_memoire_bitmap] Dupliquer_BITMAP() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_05E9:	.ascii	"[_memoire_bitmap] Dupliquer_BITMAP() [OK] Nouvel id:\0"
.balign 4
_Lt_05F0:	.ascii	"[_memoire_bitmap] Dupliquer_BITMAP() [OK] New id:\0"
.balign 4
_Lt_05F8:	.ascii	"DUPLIQUER_BITMAP\0"
.balign 4
_Lt_0603:	.ascii	"[_memoire_bitmap] Copier_BITMAP() id source:\0"
.balign 4
_Lt_0604:	.ascii	" id destination:\0"
.balign 4
_Lt_0609:	.ascii	"[_memoire_bitmap] Copier_BITMAP() source id:\0"
.balign 4
_Lt_060A:	.ascii	" destination id:\0"
.balign 4
_Lt_0629:	.ascii	" [OK] Nouvel offset bitmap RVBA [0x\0"
.balign 4
_Lt_062E:	.ascii	" [OK] New RVBA bitmap offset [0x\0"
.balign 4
_Lt_0634:	.ascii	"COPIER_BITMAP\0"
.balign 4
_Lt_0648:	.ascii	"[_memoire_bitmap] ReSize_BITMAP_NewID() id:\0"
.balign 4
_Lt_0649:	.ascii	" source [0x\0"
.balign 4
_Lt_064B:	.ascii	"] Taille finale:\0"
.balign 4
_Lt_0655:	.ascii	"] finale size:\0"
.balign 4
_Lt_0666:	.ascii	"[_memoire_bitmap] ReSize_BITMAP_NewID() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_066A:	.ascii	"[_memoire_bitmap] ReSize_BITMAP_NewID() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_0670:	.ascii	"[_memoire_bitmap] ReSize_BITMAP_NewID() Destination id:\0"
.balign 4
_Lt_0671:	.ascii	" PTR [0x\0"
.balign 4
_Lt_0683:	.ascii	" [ERREUR] Modifier_BITMAP_depuis_PTR()\0"
.balign 4
_Lt_0685:	.ascii	" [ERROR] Modifier_BITMAP_depuis_PTR()\0"
.balign 4
_Lt_068F:	.ascii	" Offset bitmap modifie [0x\0"
.balign 4
_Lt_0696:	.ascii	" Modified bitmap offset [0x\0"
.balign 4
_Lt_069E:	.ascii	"RESIZE_BITMAP_NEWID\0"
.balign 4
_Lt_06B1:	.ascii	"[_memoire_bitmap] ReSize_BITMAP() id:\0"
.balign 4
_Lt_06B2:	.ascii	" duplication 'tmp' ...\0"
.balign 4
_Lt_06C1:	.ascii	"[_memoire_bitmap] ReSize_BITMAP() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_06C5:	.ascii	"[_memoire_bitmap] ReSize_BITMAP() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_06CB:	.ascii	" Taille finale:\0"
.balign 4
_Lt_06CC:	.ascii	" bits source (tmp:\0"
.balign 4
_Lt_06CD:	.ascii	") [0x\0"
.balign 4
_Lt_06CF:	.ascii	"] Destination id:\0"
.balign 4
_Lt_06D0:	.ascii	" [0x\0"
.balign 4
_Lt_06E3:	.ascii	" Final size:\0"
.balign 4
_Lt_0702:	.ascii	" Offset bitmap [0x\0"
.balign 4
_Lt_0709:	.ascii	" Bitmap offset [0x\0"
.balign 4
_Lt_0711:	.ascii	"RESIZE_BITMAP\0"
.balign 4
_Lt_0726:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() id source:\0"
.balign 4
_Lt_0727:	.ascii	" offset [0x\0"
.balign 4
_Lt_072D:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() source id:\0"
.balign 4
_Lt_073D:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_0741:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_0748:	.ascii	" [OK]\0"
.balign 4
_Lt_074C:	.ascii	"MODIFIER_BITMAP_DEPUIS_PTR\0"
.balign 4
_Lt_0755:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() Pointeur source [0x\0"
.balign 4
_Lt_0757:	.ascii	"] destination offset [0x\0"
.balign 4
_Lt_076B:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_076F:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_depuis_PTR_CP() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_077B:	.ascii	" [OK] bitmap transfere vers strcture [0x\0"
.balign 4
_Lt_077F:	.ascii	" [OK] bitmap transfered to structure [0x\0"
.balign 4
_Lt_0784:	.ascii	"MODIFIER_BITMAP_DEPUIS_PTR_CP\0"
.balign 4
_Lt_0788:	.long	0x00000000
.balign 4
_Lt_0790:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_CP() id source:\0"
.balign 4
_Lt_0791:	.ascii	" Pointeur source [0x\0"
.balign 4
_Lt_0793:	.ascii	"] destination relatif pos(\0"
.balign 4
_Lt_0794:	.ascii	") id:\0"
.balign 4
_Lt_07A3:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_CP() source id:\0"
.balign 4
_Lt_07A4:	.ascii	" source pointer [0x\0"
.balign 4
_Lt_07A6:	.ascii	"] destination relative pos(\0"
.balign 4
_Lt_07BD:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_CP() [ERREUR] Bitmap ID ressources max ateinte 512.\0"
.balign 4
_Lt_07C1:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_CP() [ERROR] Bitmap ID full 512.\0"
.balign 4
_Lt_07D3:	.ascii	"MODIFIER_BITMAP_CP\0"
.balign 4
_Lt_07E9:	.ascii	"[_memoire_bitmap] Modifier_BITMAP_texte() Texte:'\0"
.balign 4
_Lt_07EA:	.ascii	"' \0"
.balign 4
_Lt_07EB:	.ascii	" id source:\0"
.balign 4
_Lt_07EC:	.ascii	" PTR[0x\0"
.balign 4
_Lt_07F9:	.ascii	" source id:\0"
.balign 4
_Lt_0818:	.ascii	"MODIFIER_BITMAP_TEXTE\0"
.balign 4
_Lt_0823:	.ascii	" source PTR[0x\0"
.balign 4
_Lt_084C:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_PTR() : Bit de couleur different pour (\0"
.balign 4
_Lt_084D:	.ascii	") source:\0"
.balign 4
_Lt_084F:	.ascii	" actuel:\0"
.balign 4
_Lt_0850:	.ascii	" rechargement du fichier source ...\0"
.balign 4
_Lt_0858:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_PTR() : Unable to load bitmap, ID (\0"
.balign 4
_Lt_085A:	.ascii	" actual:\0"
.balign 4
_Lt_085B:	.ascii	" reloading source file ...\0"
.balign 4
_Lt_0867:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_PTR() : Impossible de recharger le bitmap, l'ID (\0"
.balign 4
_Lt_0868:	.ascii	") n'existe pas ou le fichier de ressource n'est pas attribue.\0"
.balign 4
_Lt_086C:	.ascii	") not exist, or ressource file isn't attributed.\0"
.balign 4
_Lt_0875:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_PTR() : Pas de recharge, plantage possible : Bit de couleur different pour (\0"
.balign 4
_Lt_087D:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_PTR() : No reload, crash is possible : Unable to load bitmap, ID (\0"
.balign 4
_Lt_0887:	.ascii	"RECUPERER_BITMAP_PTR\0"
.balign 4
_Lt_0898:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_taille() : [ERREUR] ID = \0"
.balign 4
_Lt_089C:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_taille() : [ERROR] ID = \0"
.balign 4
_Lt_08A1:	.ascii	"RECUPERER_BITMAP_X\0"
.balign 4
_Lt_08B2:	.ascii	"RECUPERER_BITMAP_Y\0"
.balign 4
_Lt_08C3:	.ascii	"RECUPERER_BITMAP_BITS\0"
.balign 4
_Lt_08D4:	.ascii	"RECUPERER_BITMAP_TAILLE\0"
.balign 4
_Lt_08E1:	.ascii	"RECUPERER_BITMAP_NOMBRE\0"
.balign 4
_Lt_08F0:	.ascii	"FILE\0"
.balign 4
_Lt_08F5:	.ascii	"ERR\0"
.balign 4
_Lt_08F6:	.ascii	" handle:\0"
.balign 4
_Lt_08F8:	.ascii	"[\0"
.balign 4
_Lt_08FD:	.ascii	"b\0"
.balign 4
_Lt_08FF:	.ascii	"] '\0"
.balign 4
_Lt_0901:	.ascii	"' (\0"
.balign 4
_Lt_091B:	.ascii	"RECUPERER_BITMAP_LISTE\0"
.balign 4
_Lt_0943:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_id_by_Handle() : [ERREUR] handle = \0"
.balign 4
_Lt_0947:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_id_by_Handle() : [ERROR] handle = \0"
.balign 4
_Lt_094C:	.ascii	"RECUPERER_BITMAP_ID_BY_HANDLE\0"
.balign 4
_Lt_095D:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_ptr_by_Handle() : [ERREUR] handle = \0"
.balign 4
_Lt_0961:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_ptr_by_Handle() : [ERROR] handle = \0"
.balign 4
_Lt_0966:	.ascii	"RECUPERER_BITMAP_PTR_BY_HANDLE\0"
.balign 4
_Lt_0974:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_Handle() : [ERREUR] ID = \0"
.balign 4
_Lt_0978:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_Handle() : [ERROR] ID = \0"
.balign 4
_Lt_097D:	.ascii	"RECUPERER_BITMAP_HANDLE\0"
.balign 4
_Lt_0988:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_nom() : [ERREUR] ID = \0"
.balign 4
_Lt_098C:	.ascii	"[_memoire_bitmap] Recuperer_BITMAP_nom() : [ERROR] ID = \0"
.balign 4
_Lt_0990:	.ascii	"<null>\0"
.balign 4
_Lt_0992:	.ascii	"RECUPERER_BITMAP_NOM\0"
.balign 4
_Lt_099B:	.ascii	"[_memoire_bitmap] GarbageCollector() : Recherche des bitmaps non references par leur handle parent ...\0"
.balign 4
_Lt_099D:	.ascii	"[_memoire_bitmap] GarbageCollector() : Research unreferenced bitmaps with their parent handle ...\0"
.balign 4
_Lt_09A7:	.ascii	"null\0"
.balign 4
_Lt_09AE:	.ascii	"Garbage collector --> Reference BITMAP nulle trouve! id:\0"
.balign 4
_Lt_09AF:	.ascii	" a l'adresse [0x\0"
.balign 4
_Lt_09B1:	.ascii	"] associe au numero de handle:\0"
.balign 4
_Lt_09B3:	.ascii	" qui n'existe plus. Suppression en cours!\0"
.balign 4
_Lt_09BB:	.ascii	"Garbage collector --> Null BITMAP reference found! id:\0"
.balign 4
_Lt_09BC:	.ascii	" at address [0x\0"
.balign 4
_Lt_09BE:	.ascii	"] associed to handle:\0"
.balign 4
_Lt_09C0:	.ascii	" who not exist. Deleting in progress!\0"
.balign 4
_Lt_09D1:	.ascii	"[OK] Garbage collector --> id:\0"
.balign 4
_Lt_09D2:	.ascii	"] handle:\0"
.balign 4
_Lt_09D3:	.ascii	" supprime!\0"
.balign 4
_Lt_09DB:	.ascii	" deleted!\0"
.balign 4
_Lt_09E7:	.ascii	"[ERREUR] Garbage collector --> id:\0"
.balign 4
_Lt_09EA:	.ascii	" Impossible de le supprimer\0"
.balign 4
_Lt_09F2:	.ascii	"[ERROR] Garbage collector --> id:\0"
.balign 4
_Lt_09F5:	.ascii	" unable to delete\0"
.balign 4
_Lt_0A01:	.ascii	"[_memoire_bitmap] GarbageCollector() : Recherche terminee. \0"
.balign 4
_Lt_0A02:	.ascii	" bitmaps supprimes \0"
.balign 4
_Lt_0A03:	.ascii	" Ko libere\0"
.balign 4
_Lt_0A09:	.ascii	"[_memoire_bitmap] GarbageCollector() : End of research. \0"
.balign 4
_Lt_0A0A:	.ascii	" deleted bitmaps \0"
.balign 4
_Lt_0A0B:	.ascii	" Kb free\0"
.balign 4
_Lt_0A15:	.ascii	" bitmaps \0"
.balign 4
_Lt_0A16:	.ascii	" ko\0"
.balign 4
_Lt_0A17:	.ascii	" kb\0"
.balign 4
_Lt_0A19:	.ascii	"GARBAGECOLLECTOR\0"
.balign 8
_Lt_0A28:	.quad	0x4090000000000000
.balign 4
_Lt_0A36:	.ascii	"ISPRESENT_BITMAP_BYHANDLE\0"
.balign 4
_Lt_0A47:	.ascii	"SUPPRIMER_BITMAP_BYHANDLE\0"
.balign 4
_Lt_0A5C:	.ascii	"[_memoire_bitmap] Supprimer_BITMAP() id \0"
.balign 4
_Lt_0A5D:	.ascii	" Nom:'\0"
.balign 4
_Lt_0A5F:	.ascii	"' handle:\0"
.balign 4
_Lt_0A61:	.ascii	" Offset:[0x\0"
.balign 4
_Lt_0A6C:	.ascii	" Name:'\0"
.balign 4
_Lt_0A8D:	.ascii	" [OK] \0"
.balign 4
_Lt_0A8E:	.ascii	" supprime\0"
.balign 4
_Lt_0A92:	.ascii	" deleted\0"
.balign 4
_Lt_0A9A:	.ascii	" est un pointeur tiers Offset:[0x\0"
.balign 4
_Lt_0A9C:	.ascii	"]. Suppression non autorise.\0"
.balign 4
_Lt_0AA2:	.ascii	" is a external pointer Offset:[0x\0"
.balign 4
_Lt_0AA4:	.ascii	"] Deleting is not autorized.\0"
.balign 4
_Lt_0AAE:	.ascii	" introuvable !\0"
.balign 4
_Lt_0AB2:	.ascii	" not found !\0"
.balign 4
_Lt_0AB8:	.ascii	"[_memoire_bitmap] Supprimer_BITMAP() [ERREUR] id = \0"
.balign 4
_Lt_0ABB:	.ascii	"[_memoire_bitmap] Supprimer_BITMAP() [ERROR] id = \0"
.balign 4
_Lt_0ABF:	.ascii	"SUPPRIMER_BITMAP\0"
.balign 4
_Lt_0AE8:	.ascii	"ACTUALISE\0"
.balign 4
_Lt_0AFE:	.ascii	"ECRIRE_ECRAN_ML\0"
.balign 4
_Lt_0B06:	.ascii	"[_memoire_bitmap] Ecrire_ecran() Texte:'\0"
.balign 4
_Lt_0B07:	.ascii	"' Nombre lignes:\0"
.balign 4
_Lt_0B08:	.ascii	" R:\0"
.balign 4
_Lt_0B09:	.ascii	" V:\0"
.balign 4
_Lt_0B0A:	.ascii	" B:\0"
.balign 4
_Lt_0B0B:	.ascii	" source PTR SCREEN[0x\0"
.balign 4
_Lt_0B1D:	.ascii	"[_memoire_bitmap] Ecrire_ecran() Text:'\0"
.balign 4
_Lt_0B1E:	.ascii	"' Lines number:\0"
.balign 4
_Lt_0B1F:	.ascii	" G:\0"
.balign 4
_Lt_0B6E:	.ascii	"ECRIRE_ECRAN\0"
.balign 4
_Lt_0B75:	.ascii	"DESSINER_ECRAN\0"
.balign 4
_Lt_0C15:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor__Memory
