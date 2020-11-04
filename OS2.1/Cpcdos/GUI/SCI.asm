	.intel_syntax noprefix

.section .text
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__C1Ev
__ZN17_SCI_CPCDOS_OSX__C1Ev:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_03C4:
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
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
lea ebx, [eax]
push ebx
call __ZN16PROPRIETES_OBJETC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 220
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__FENETREC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2464
lea ebx, [eax]
push ebx
call __ZN18CPCDOS_GUI__BOUTONC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2860
lea eax, [ebx]
push eax
call __ZN22CPCDOS_GUI__PICTUREBOXC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3220
lea ebx, [eax]
push ebx
call __ZN21CPCDOS_GUI__TEXTBLOCKC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 3544
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__TEXTBOXC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3924
lea ebx, [eax]
push ebx
call __ZN23CPCDOS_GUI__PROGRESSBARC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4292
lea eax, [ebx]
push eax
call __ZN20CPCDOS_GUI__CHECKBOXC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 4712
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 4724
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4728
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4732
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 4744
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 4756
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4760
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4764
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4768
lea ebx, [eax]
push ebx
call __ZN17CPCDOS_GUI_INIT__C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 449908
lea eax, [ebx]
push eax
call __ZN15CPCDOS_GUI_TYPEC1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 449909
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 449910
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov byte ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 449919
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 449920
lea ebx, [eax]
push ebx
call __ZN19__UTF8_CPCDOS_OSX__C1Ev
add esp, 4
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
push 7
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
push 49
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

.globl __ZN17_SCI_CPCDOS_OSX__D1Ev
__ZN17_SCI_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_03D3:
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
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
push 55
push offset _Lt_03D5
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
.Lt_03D4:
mov eax, dword ptr [ebp+8]
add eax, 449920
lea ebx, [eax]
push ebx
call __ZN19__UTF8_CPCDOS_OSX__D1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4768
lea eax, [ebx]
push eax
call __ZN17CPCDOS_GUI_INIT__D1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 4744
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4732
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 4712
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4292
lea eax, [ebx]
push eax
call __ZN20CPCDOS_GUI__CHECKBOXD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3924
lea ebx, [eax]
push ebx
call __ZN23CPCDOS_GUI__PROGRESSBARD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 3544
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__TEXTBOXD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3220
lea ebx, [eax]
push ebx
call __ZN21CPCDOS_GUI__TEXTBLOCKD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2860
lea eax, [ebx]
push eax
call __ZN22CPCDOS_GUI__PICTUREBOXD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2464
lea ebx, [eax]
push ebx
call __ZN18CPCDOS_GUI__BOUTOND1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 220
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__FENETRED1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call __ZN16PROPRIETES_OBJETD1Ev
add esp, 4
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
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__17INITIALISER_ECRANER8FBSTRINGi
__ZN17_SCI_CPCDOS_OSX__17INITIALISER_ECRANER8FBSTRINGi:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_03DF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_03DB:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_03DD
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-8]
push -1
push 1
push offset _Lt_03DD
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
inc eax
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __ZN17_SCI_CPCDOS_OSX__17INITIALISER_ECRANEiii
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_03DC:
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

.globl __ZN17_SCI_CPCDOS_OSX__17INITIALISER_ECRANEiii
__ZN17_SCI_CPCDOS_OSX__17INITIALISER_ECRANEiii:
push ebp
mov ebp, esp
sub esp, 108
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_03DF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_03E1:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_03E4
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
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
push 5
push offset _Lt_03E7
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 29
push offset _Lt_03E5
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
jmp .Lt_03E3
.Lt_03E4:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
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
push 5
push offset _Lt_03E7
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 33
push offset _Lt_03EF
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
.Lt_03E3:
cmp dword ptr [ebp+12], 320
jl .Lt_03F8
cmp dword ptr [ebp+16], 200
jl .Lt_03FA
cmp dword ptr [ebp+20], 16
jl .Lt_03FC
cmp dword ptr [ebp+20], 32
jg .Lt_03FE
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push -1
lea ebx, [_CPCDOS_INSTANCE+589440]
push ebx
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__15TEST_RESOLUTIONEiii
add esp, 16
cmp al, 1
jne .Lt_0400
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0402
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 83
push offset _Lt_0403
push -1
lea ebx, [ebp-36]
push ebx
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
jmp .Lt_0401
.Lt_0402:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 78
push offset _Lt_0405
push -1
lea ebx, [ebp-36]
push ebx
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
.Lt_0401:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14SET_RESOLUTIONEiii
add esp, 16
cmp al, 1
jne .Lt_0408
mov eax, dword ptr [ebp+20]
mov dword ptr [_CPCDOS_INSTANCE+2480], eax
cmp dword ptr [_CPCDOS_INSTANCE+2484], 0
jne .Lt_040A
mov eax, dword ptr [ebp+20]
mov dword ptr [_CPCDOS_INSTANCE+2484], eax
.Lt_040A:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_040C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
push dword ptr [_CPCDOS_INSTANCE+752]
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
push 24
push offset _Lt_040E
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 18
push offset _Lt_040D
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
jmp .Lt_040B
.Lt_040C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
push dword ptr [_CPCDOS_INSTANCE+752]
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
push 22
push offset _Lt_0417
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 25
push offset _Lt_0416
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
.Lt_040B:
mov eax, dword ptr [_CPCDOS_INSTANCE+2480]
cmp dword ptr [_CPCDOS_INSTANCE+2484], eax
je .Lt_0420
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0422
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
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
push -1
push 9
push offset _Lt_0424
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _fb_IntToStr
add esp, 4
push eax
push 40
push offset _Lt_0423
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
jmp .Lt_0421
.Lt_0422:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+656]
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
push -1
push 9
push offset _Lt_0424
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _fb_IntToStr
add esp, 4
push eax
push 33
push offset _Lt_0428
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
.Lt_0421:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP16AUTO_RELOAD_FILEEv
add esp, 4
mov eax, dword ptr [_CPCDOS_INSTANCE+2480]
mov dword ptr [_CPCDOS_INSTANCE+2484], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_0420:
.Lt_041F:
mov dword ptr [ebp-4], 1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
jmp .Lt_0407
.Lt_0408:
push 0
push -1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_042C
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_042F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
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
push -1
push -1
lea ebx, [ebp-16]
push ebx
push 17
push offset _Lt_0430
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea ebx, [ebp-48]
push ebx
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
jmp .Lt_042E
.Lt_042F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
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
push -1
push -1
lea ebx, [ebp-16]
push ebx
push 17
push offset _Lt_0430
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea ebx, [ebp-48]
push ebx
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
.Lt_042E:
mov dword ptr [ebp-4], 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
.Lt_0407:
jmp .Lt_03FF
.Lt_0400:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0436
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 39
push offset _Lt_0438
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 24
push offset _Lt_0437
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
jmp .Lt_0435
.Lt_0436:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 36
push offset _Lt_0440
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_03E6
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 25
push offset _Lt_0416
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
.Lt_0435:
mov dword ptr [ebp-4], 2
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
.Lt_03FF:
jmp .Lt_03FD
.Lt_03FE:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0449
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 119
push offset _Lt_044A
push -1
lea ebx, [ebp-36]
push ebx
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
jmp .Lt_0448
.Lt_0449:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 98
push offset _Lt_044C
push -1
lea ebx, [ebp-36]
push ebx
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
.Lt_0448:
mov dword ptr [ebp-4], 3
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
.Lt_03FD:
jmp .Lt_03FB
.Lt_03FC:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_044F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 156
push offset _Lt_0451
push -1
lea ebx, [ebp-36]
push ebx
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
jmp .Lt_044E
.Lt_044F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 114
push offset _Lt_0453
push -1
lea ebx, [ebp-36]
push ebx
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
.Lt_044E:
mov dword ptr [ebp-4], 3
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
.Lt_03FB:
jmp .Lt_03F9
.Lt_03FA:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0456
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 61
push offset _Lt_0457
push -1
lea ebx, [ebp-36]
push ebx
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
jmp .Lt_0455
.Lt_0456:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 56
push offset _Lt_0459
push -1
lea ebx, [ebp-36]
push ebx
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
.Lt_0455:
mov dword ptr [ebp-4], 2
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
.Lt_03F9:
jmp .Lt_03F7
.Lt_03F8:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_045C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 61
push offset _Lt_0457
push -1
lea ebx, [ebp-36]
push ebx
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
jmp .Lt_045B
.Lt_045C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 56
push offset _Lt_0459
push -1
lea ebx, [ebp-36]
push ebx
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
.Lt_045B:
mov dword ptr [ebp-4], 2
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03E2
.Lt_03F7:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03E2:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-20]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__16CHARGER_CURSEURSEi
__ZN17_SCI_CPCDOS_OSX__16CHARGER_CURSEURSEi:
push ebp
mov ebp, esp
sub esp, 64
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_046B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_0461:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
push 3
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 17
push offset _Lt_0463
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__17CCP_LIRE_VARIABLEER8FBSTRINGid
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
lea eax, [ebp-16]
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__14FICHIER_EXISTEE8FBSTRING
add esp, 8
cmp al, 1
sete al
mov byte ptr [ebp-44], al
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [ebp-44], 0
je .Lt_0467
push dword ptr [ebp+12]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
lea eax, [ebp-16]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP24CREER_BITMAP_DEPUIS_FILEE8FBSTRINGi
add esp, 12
mov dword ptr [_CPCDOS_INSTANCE+592], eax
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [_CPCDOS_INSTANCE+592]
mov dword ptr [ebp-4], eax
jmp .Lt_0466
.Lt_0467:
mov dword ptr [ebp-4], 0
.Lt_0466:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0462:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__12CHARGER_FONDER8FBSTRINGi
__ZN17_SCI_CPCDOS_OSX__12CHARGER_FONDER8FBSTRINGi:
push ebp
mov ebp, esp
sub esp, 228
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-112], eax
push offset _Lt_04D6
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-116], eax
.Lt_046E:
push 1
push 3
call _fb_GfxPageSet
add esp, 8
call _fb_GfxLock
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
add esp, 4
mov dword ptr [ebp-8], eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv
add esp, 4
mov dword ptr [ebp-12], eax
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
push 3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 10
push offset _Lt_0470
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
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 3
push 1
lea eax, [ebp-24]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-40]
push 3
push 5
lea eax, [ebp-24]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-44]
push 3
push 9
lea eax, [ebp-24]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-48]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
push 3
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 13
push offset _Lt_0472
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__17CCP_LIRE_VARIABLEER8FBSTRINGid
add esp, 20
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-80]
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-108], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4712]
push ebx
push -1
lea ebx, [_CPCDOS_INSTANCE+589452]
push ebx
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-40], 0
jge .Lt_0475
mov dword ptr [ebp-40], 0
.Lt_0475:
cmp dword ptr [ebp-44], 0
jge .Lt_0477
mov dword ptr [ebp-44], 0
.Lt_0477:
cmp dword ptr [ebp-48], 0
jge .Lt_0479
mov dword ptr [ebp-48], 0
.Lt_0479:
cmp dword ptr [ebp-40], 255
jle .Lt_047B
mov dword ptr [ebp-40], 255
.Lt_047B:
cmp dword ptr [ebp-44], 255
jle .Lt_047D
mov dword ptr [ebp-44], 255
.Lt_047D:
cmp dword ptr [ebp-48], 255
jle .Lt_047F
mov dword ptr [ebp-48], 255
.Lt_047F:
push 0
mov eax, dword ptr [ebp-40]
shl eax, 16
mov ebx, dword ptr [ebp-44]
shl ebx, 8
or eax, ebx
or eax, dword ptr [ebp-48]
or eax, 4278190080
mov ebx, eax
push ebx
push -1
call _fb_Color
add esp, 12
push -65536
call _fb_Cls
add esp, 4
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0481
push dword ptr [ebp+16]
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP24CREER_BITMAP_DEPUIS_FILEE8FBSTRINGi
add esp, 12
mov dword ptr [ebp-108], eax
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP18RECUPERER_BITMAP_XEi
add esp, 8
mov dword ptr [ebp-68], eax
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP18RECUPERER_BITMAP_YEi
add esp, 8
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-80], 0
jne .Lt_0484
mov eax, dword ptr [ebp-68]
cmp dword ptr [ebp-64], eax
jge .Lt_0486
fild dword ptr [ebp-68]
fild dword ptr [ebp-64]
fild dword ptr [ebp-12]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
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
fistp dword ptr [ebp-68]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-64], eax
jmp .Lt_0485
.Lt_0486:
mov eax, dword ptr [ebp-68]
cmp dword ptr [ebp-64], eax
jle .Lt_0487
fild dword ptr [ebp-64]
fild dword ptr [ebp-68]
fild dword ptr [ebp-8]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
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
fistp dword ptr [ebp-64]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-68], eax
.Lt_0487:
.Lt_0485:
fild dword ptr [ebp-8]
fdiv qword ptr [_Lt_04D8]
fild dword ptr [ebp-68]
fdiv qword ptr [_Lt_04D8]
fxch st(1)
fsubrp
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
fistp dword ptr [ebp-72]
fild dword ptr [ebp-12]
fdiv qword ptr [_Lt_04D8]
fild dword ptr [ebp-64]
fdiv qword ptr [_Lt_04D8]
fxch st(1)
fsubrp
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
fistp dword ptr [ebp-76]
cmp dword ptr [ebp-108], 0
jle .Lt_0489
push dword ptr [ebp-64]
push dword ptr [ebp-68]
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP13RESIZE_BITMAPEiii
add esp, 16
.Lt_0489:
.Lt_0488:
jmp .Lt_0483
.Lt_0484:
cmp dword ptr [ebp-80], 1
jne .Lt_048A
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-68], eax
jle .Lt_048C
fild dword ptr [ebp-64]
fild dword ptr [ebp-68]
fild dword ptr [ebp-8]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
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
fistp dword ptr [ebp-64]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-68], eax
.Lt_048C:
.Lt_048B:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-64], eax
jle .Lt_048E
fild dword ptr [ebp-68]
fild dword ptr [ebp-64]
fild dword ptr [ebp-12]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
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
fistp dword ptr [ebp-68]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-64], eax
.Lt_048E:
.Lt_048D:
fild dword ptr [ebp-8]
fdiv qword ptr [_Lt_04D8]
fild dword ptr [ebp-68]
fdiv qword ptr [_Lt_04D8]
fxch st(1)
fsubrp
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
fistp dword ptr [ebp-72]
fild dword ptr [ebp-12]
fdiv qword ptr [_Lt_04D8]
fild dword ptr [ebp-64]
fdiv qword ptr [_Lt_04D8]
fxch st(1)
fsubrp
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
fistp dword ptr [ebp-76]
cmp dword ptr [ebp-108], 0
je .Lt_0490
push dword ptr [ebp-64]
push dword ptr [ebp-68]
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP13RESIZE_BITMAPEiii
add esp, 16
.Lt_0490:
.Lt_048F:
jmp .Lt_0483
.Lt_048A:
cmp dword ptr [ebp-80], 2
jne .Lt_0491
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
cmp dword ptr [ebp-108], 0
je .Lt_0493
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP13RESIZE_BITMAPEiii
add esp, 16
.Lt_0493:
.Lt_0492:
jmp .Lt_0483
.Lt_0491:
cmp dword ptr [ebp-80], 3
jne .Lt_0494
push dword ptr [ebp+16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 17
push offset _Lt_0495
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP12CREER_BITMAPER8FBSTRINGiii
add esp, 20
mov dword ptr [ebp-132], eax
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-132]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
je .Lt_0498
mov dword ptr [ebp-148], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-152], eax
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-156], eax
mov eax, dword ptr [ebp-156]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-160], eax
jmp .Lt_049C
.Lt_049F:
mov dword ptr [ebp-164], 1
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-168], eax
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-172], eax
mov eax, dword ptr [ebp-172]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-176], eax
jmp .Lt_04A3
.Lt_04A6:
.Lt_04A8:
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
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp-164]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-148]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-132]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_04A9
lea eax, [.Lt_04A9]
push eax
lea eax, [.Lt_04A8]
push eax
push offset _Lt_03D0
push 326
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_04A9:
.Lt_04A4:
mov eax, dword ptr [ebp-172]
add dword ptr [ebp-164], eax
.Lt_04A3:
cmp dword ptr [ebp-176], 0
jne .Lt_04AA
mov eax, dword ptr [ebp-168]
cmp dword ptr [ebp-164], eax
jge .Lt_04A6
jmp .Lt_04A5
.Lt_04AA:
mov eax, dword ptr [ebp-168]
cmp dword ptr [ebp-164], eax
jle .Lt_04A6
.Lt_04A5:
.Lt_049D:
mov eax, dword ptr [ebp-156]
add dword ptr [ebp-148], eax
.Lt_049C:
cmp dword ptr [ebp-160], 0
jne .Lt_04AB
mov eax, dword ptr [ebp-152]
cmp dword ptr [ebp-148], eax
jge .Lt_049F
jmp .Lt_049E
.Lt_04AB:
mov eax, dword ptr [ebp-152]
cmp dword ptr [ebp-148], eax
jle .Lt_049F
.Lt_049E:
jmp .Lt_0497
.Lt_0498:
push 0
push -1
push 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 8
push offset _Lt_04AC
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04AF
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 3
push offset _Lt_04B2
push -1
push -1
push dword ptr [ebp-108]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 41
push offset _Lt_04B1
push -1
push -1
lea eax, [ebp-60]
push eax
push 7
push offset _Lt_04B0
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
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04AE
.Lt_04AF:
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 3
push offset _Lt_04B2
push -1
push -1
push dword ptr [ebp-108]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 39
push offset _Lt_04B9
push -1
push -1
lea eax, [ebp-60]
push eax
push 7
push offset _Lt_04B0
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
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-216]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04AE:
.Lt_0497:
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
mov eax, dword ptr [ebp-132]
mov dword ptr [ebp-108], eax
jmp .Lt_0483
.Lt_0494:
cmp dword ptr [ebp-80], 4
jne .Lt_04C0
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
add esp, 4
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_04D8]
fild dword ptr [ebp-68]
fdiv qword ptr [_Lt_04D8]
fxch st(1)
fsubrp
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
fistp dword ptr [ebp-72]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv
add esp, 4
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_04D8]
fild dword ptr [ebp-64]
fdiv qword ptr [_Lt_04D8]
fxch st(1)
fsubrp
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
fistp dword ptr [ebp-76]
jmp .Lt_0483
.Lt_04C0:
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
.Lt_0483:
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
je .Lt_04C2
.Lt_04C4:
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
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
push eax
fild dword ptr [ebp-76]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-72]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_04C5
lea eax, [.Lt_04C5]
push eax
lea eax, [.Lt_04C4]
push eax
push offset _Lt_03D0
push 359
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_04C5:
jmp .Lt_04C1
.Lt_04C2:
push 0
push -1
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 8
push offset _Lt_04AC
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_04C8
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 3
push offset _Lt_04B2
push -1
push -1
push dword ptr [ebp-108]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 41
push offset _Lt_04B1
push -1
push -1
lea eax, [ebp-60]
push eax
push 7
push offset _Lt_04B0
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
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_04C7
.Lt_04C8:
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 3
push offset _Lt_04B2
push -1
push -1
push dword ptr [ebp-108]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 39
push offset _Lt_04B9
push -1
push -1
lea eax, [ebp-60]
push eax
push 7
push offset _Lt_04B0
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
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04C7:
.Lt_04C1:
push dword ptr [ebp-108]
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP16SUPPRIMER_BITMAPEi
add esp, 8
.Lt_0481:
.Lt_0480:
push 0
push 1
call _fb_GfxPageSet
add esp, 8
mov dword ptr [ebp-4], 1
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_046F:
push dword ptr [ebp-116]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-112]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__12CREER_MSGBOXER8FBSTRINGS1_iid
__ZN17_SCI_CPCDOS_OSX__12CREER_MSGBOXER8FBSTRINGS1_iid:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_04DE
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_04DB:
mov dword ptr [ebp-4], 1
.Lt_04DC:
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

.globl _THREAD_Screen_Video
_THREAD_Screen_Video:
push ebp
mov ebp, esp
sub esp, 64
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_04F6
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_04E0:
lea eax, [.Lt_04E2]
push eax
call _fb_ErrorSetHandler
add esp, 4
mov dword ptr [ebp-8], eax
mov byte ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov byte ptr [ebp-44], 1
mov dword ptr [ebp-4], -1
.Lt_04E4:
cmp byte ptr [ebp-44], 0
je .Lt_04E5
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 1
call __ZN6cpinti18gestionnaire_tache18cpinti_etat_threadEjjj
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 76
jne .Lt_04E7
mov byte ptr [ebp-44], 0
jmp .Lt_04E5
.Lt_04E7:
cmp dword ptr [ebp-40], 70
jne .Lt_04E9
mov byte ptr [ebp-44], 0
jmp .Lt_04E5
.Lt_04E9:
cmp dword ptr [ebp-40], 101
jne .Lt_04EB
jmp .Lt_04E4
.Lt_04EB:
cmp dword ptr [ebp-40], 98
jne .Lt_04ED
jmp .Lt_04E4
.Lt_04ED:
cmp dword ptr [ebp-40], 83
jne .Lt_04EF
cmp dword ptr [_CPCDOS_INSTANCE+7240], 0
jg .Lt_04F1
mov dword ptr [ebp-64], 0
lea eax, [ebp-64]
push eax
mov dword ptr [ebp-60], 0
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call _fb_GetMouse
add esp, 20
mov dword ptr [ebp-36], eax
push dword ptr [ebp-36]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEiii
add esp, 16
.Lt_04F1:
.Lt_04F0:
.Lt_04EF:
.Lt_04EE:
push 0
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
jmp .Lt_04E4
.Lt_04E5:
mov dword ptr [ebp-4], 0
jmp .Lt_04E1
.Lt_04E2:
call _fb_ErrorGetFuncName
push eax
call _fb_ErrorGetModName
push eax
call _fb_ErrorGetLineNum
push eax
call _fb_ErrorGetNum
push eax
call __ZN6cpinti12interception13Erreur_FataleEiiPcS1_
add esp, 16
.Lt_04E1:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
call _fb_ErrorSetModName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetHandler
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEv
__ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEv:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_04F8:
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0500
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov al, byte ptr [_CPCDOS_INSTANCE+452373]
cmp al, 1
sete al
mov bl, byte ptr [_CPCDOS_INSTANCE+452383]
cmp bl, 1
sete bl
and al, bl
je .Lt_04FB
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-32]
push ebx
mov dword ptr [ebp-28], 0
lea ebx, [ebp-28]
push ebx
mov dword ptr [ebp-24], 0
lea ebx, [ebp-24]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-12]
push ebx
call _fb_GetMouse
add esp, 20
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEiii
add esp, 16
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_04FB:
.Lt_04FA:
.Lt_04F9:
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

.globl __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEiii
__ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEiii:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0504:
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0500
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov al, byte ptr [_CPCDOS_INSTANCE+452373]
cmp al, 1
sete al
mov bl, byte ptr [_CPCDOS_INSTANCE+452383]
cmp bl, 1
sete bl
and al, bl
je .Lt_0507
push 0
push 1
call _fb_GfxFlip
add esp, 8
cmp dword ptr [_CPCDOS_INSTANCE+596], 0
jle .Lt_0509
push dword ptr [_CPCDOS_INSTANCE+592]
lea ebx, [_CPCDOS_INSTANCE+589484]
push ebx
call __ZN15_MEMOIRE_BITMAP20RECUPERER_BITMAP_PTREi
add esp, 8
test eax, eax
je .Lt_050B
cmp dword ptr [ebp+20], 0
jne .Lt_050D
push 1
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
add eax, 14
push eax
push dword ptr [_CPCDOS_INSTANCE+592]
push 0
lea eax, [_CPCDOS_INSTANCE+589484]
push eax
call __ZN15_MEMOIRE_BITMAP14DESSINER_ECRANEiiiib
add esp, 24
.Lt_050D:
.Lt_050B:
.Lt_050A:
.Lt_0509:
.Lt_0508:
.Lt_0507:
.Lt_0506:
.Lt_0505:
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

.globl _THREAD__SCI
_THREAD__SCI:
push ebp
mov ebp, esp
sub esp, 616
push ebx
push esi
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-88], eax
push offset _Lt_06F8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-92], eax
.Lt_0512:
lea eax, [.Lt_0514]
push eax
call _fb_ErrorSetHandler
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
add esp, 24
fstp qword ptr [ebp-56]
mov byte ptr [ebp-60], 0
mov byte ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-76]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-80], 0
mov byte ptr [ebp-84], 1
mov dword ptr [ebp-4], -1
.Lt_0516:
cmp byte ptr [ebp-84], 0
je .Lt_0517
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 1
call __ZN6cpinti18gestionnaire_tache18cpinti_etat_threadEjjj
add esp, 12
mov dword ptr [ebp-80], eax
cmp dword ptr [ebp-80], 76
jne .Lt_0519
mov byte ptr [ebp-84], 0
jmp .Lt_0517
.Lt_0519:
cmp dword ptr [ebp-80], 70
jne .Lt_051B
mov byte ptr [ebp-84], 0
jmp .Lt_0517
.Lt_051B:
cmp dword ptr [ebp-80], 101
jne .Lt_051D
jmp .Lt_0516
.Lt_051D:
cmp dword ptr [ebp-80], 98
jne .Lt_051F
jmp .Lt_0516
.Lt_051F:
cmp dword ptr [ebp-80], 83
jne .Lt_0521
push 0
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+452383], 0
jne .Lt_0523
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__16FERMER_PROCESSUSEj
add esp, 8
.Lt_0523:
.Lt_0522:
cmp dword ptr [_CPCDOS_INSTANCE+7240], 0
jle .Lt_0525
push dword ptr [ebp-48]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEiii
add esp, 16
.Lt_0525:
.Lt_0524:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-24], eax
cmp byte ptr [ebp-64], 1
jne .Lt_0527
mov byte ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0527:
.Lt_0526:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-96], ebx
push offset _Lt_03D0
push 515
push 65
push dword ptr [ebp-96]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06FA
jmp eax
.Lt_06FA:
mov eax, dword ptr [ebp-96]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 5
jne .Lt_052A
mov bl, byte ptr [_CPCDOS_INSTANCE+452373]
cmp bl, 1
sete bl
mov al, byte ptr [_CPCDOS_INSTANCE+452383]
cmp al, 1
sete al
and bl, al
je .Lt_052C
push 0
push -1
call _fb_Inkey
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrConcatAssign
add esp, 20
push 1
push offset _Lt_0103
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-76]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_052E
push -1
lea eax, [ebp-76]
push eax
call _fb_StrLen
add esp, 8
cmp eax, 2
jne .Lt_0530
mov dword ptr [ebp-104], 0
lea eax, [_CPCDOS_INSTANCE+7232]
lea ebx, [_CPCDOS_INSTANCE+7232]
mov ecx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-112], ecx
push offset _Lt_03D0
push 524
push 65
push dword ptr [ebp-112]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06FB
jmp eax
.Lt_06FB:
mov eax, dword ptr [ebp-112]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-116], eax
push offset _Lt_03D0
push 524
push 129
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06FC
jmp eax
.Lt_06FC:
mov eax, dword ptr [ebp-116]
imul eax, 380
add esi, eax
mov eax, dword ptr [esi+293452]
mov dword ptr [ebp-108], eax
push 3
push offset _Lt_010D
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0534
cmp dword ptr [ebp-108], 0
jbe .Lt_0536
add dword ptr [ebp-108], 4294967295
.Lt_0536:
.Lt_0534:
push 3
push offset _Lt_010F
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0538
inc dword ptr [ebp-108]
.Lt_0538:
push 3
push offset _Lt_0105
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_053A
mov dword ptr [ebp-108], 0
.Lt_053A:
.Lt_0539:
push 3
push offset _Lt_0107
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_053C
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
lea esi, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-156], ebx
push offset _Lt_03D0
push 533
push 65
push dword ptr [ebp-156]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06FD
jmp eax
.Lt_06FD:
mov eax, dword ptr [ebp-156]
imul eax, 2244
add esi, eax
mov eax, dword ptr [esi+6644]
mov dword ptr [ebp-160], eax
push offset _Lt_03D0
push 533
push 129
push dword ptr [ebp-160]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06FE
jmp eax
.Lt_06FE:
mov eax, dword ptr [ebp-160]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-108], eax
.Lt_053C:
.Lt_053B:
push 3
push offset _Lt_0109
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0540
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
lea ebx, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-168], esi
push offset _Lt_03D0
push 538
push 65
push dword ptr [ebp-168]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06FF
jmp eax
.Lt_06FF:
mov eax, dword ptr [ebp-168]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-172], eax
push offset _Lt_03D0
push 538
push 129
push dword ptr [ebp-172]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0700
jmp eax
.Lt_0700:
mov eax, dword ptr [ebp-172]
imul eax, 380
add esi, eax
lea eax, [esi+293596]
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push dword ptr [ebp-108]
push 1
lea eax, [ebp-164]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp-108]
lea eax, [ebp-164]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
add esp, 12
mov dword ptr [ebp-200], eax
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push 2
push offset _Lt_0018
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
add esp, 12
mov dword ptr [ebp-228], eax
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
add esp, 12
mov dword ptr [ebp-256], eax
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-300], 0
cmp dword ptr [ebp-200], 0
jle .Lt_054A
push 0
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 2
jmp .Lt_0549
.Lt_054A:
cmp dword ptr [ebp-256], 0
jle .Lt_054B
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 1
jmp .Lt_0549
.Lt_054B:
cmp dword ptr [ebp-228], 0
jle .Lt_054C
push 0
push 2
push offset _Lt_0018
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 1
jmp .Lt_0549
.Lt_054C:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 0
.Lt_0549:
push -1
lea eax, [ebp-292]
push eax
lea eax, [ebp-184]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-304], eax
cmp dword ptr [ebp-304], 1
jge .Lt_054E
mov dword ptr [ebp-304], 0
.Lt_054E:
mov eax, dword ptr [ebp-304]
sub eax, dword ptr [ebp-108]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
mov esi, eax
mov dword ptr [ebp-308], esi
lea esi, [ebp-292]
push esi
lea esi, [ebp-196]
push esi
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-312], eax
cmp dword ptr [ebp-312], 1
jge .Lt_0550
mov dword ptr [ebp-312], 0
.Lt_0550:
mov eax, dword ptr [ebp-312]
mov dword ptr [ebp-316], eax
mov eax, dword ptr [ebp-304]
add eax, dword ptr [ebp-312]
add eax, dword ptr [ebp-296]
mov esi, eax
sub dword ptr [ebp-108], esi
push -1
lea esi, [ebp-164]
push esi
call _fb_StrLen
add esp, 8
cmp dword ptr [ebp-108], eax
jbe .Lt_0552
push -1
lea eax, [ebp-164]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-108], eax
.Lt_0552:
cmp dword ptr [ebp-108], 1
jae .Lt_0554
mov dword ptr [ebp-108], 0
.Lt_0554:
lea eax, [ebp-292]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0540:
.Lt_053F:
push 3
push offset _Lt_010B
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0556
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
lea esi, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-168], ebx
push offset _Lt_03D0
push 581
push 65
push dword ptr [ebp-168]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0701
jmp eax
.Lt_0701:
mov eax, dword ptr [ebp-168]
imul eax, 2244
add esi, eax
mov eax, dword ptr [esi+6644]
mov dword ptr [ebp-172], eax
push offset _Lt_03D0
push 581
push 129
push dword ptr [ebp-172]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0702
jmp eax
.Lt_0702:
mov eax, dword ptr [ebp-172]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push dword ptr [ebp-108]
push 1
lea eax, [ebp-164]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp-108]
lea eax, [ebp-164]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
add esp, 12
mov dword ptr [ebp-200], eax
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push 2
push offset _Lt_0018
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
add esp, 12
mov dword ptr [ebp-228], eax
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
add esp, 12
mov dword ptr [ebp-256], eax
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-300], 0
cmp dword ptr [ebp-200], 0
jle .Lt_0560
push 0
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 2
jmp .Lt_055F
.Lt_0560:
cmp dword ptr [ebp-256], 0
jle .Lt_0561
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 1
jmp .Lt_055F
.Lt_0561:
cmp dword ptr [ebp-228], 0
jle .Lt_0562
push 0
push 2
push offset _Lt_0018
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 1
jmp .Lt_055F
.Lt_0562:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-296], 0
.Lt_055F:
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-308], 0
push -1
lea eax, [ebp-292]
push eax
lea eax, [ebp-184]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-312], eax
cmp dword ptr [ebp-312], 0
jne .Lt_0564
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-312], eax
mov eax, dword ptr [ebp-108]
sub eax, dword ptr [ebp-296]
add eax, 4294967295
mov ebx, eax
mov dword ptr [ebp-304], ebx
jmp .Lt_0563
.Lt_0564:
mov ebx, dword ptr [ebp-296]
sal ebx, 1
add dword ptr [ebp-312], ebx
mov ebx, dword ptr [ebp-108]
sub ebx, dword ptr [ebp-312]
mov ecx, ebx
sar ecx, 31
xor ebx, ecx
sub ebx, ecx
mov eax, ebx
mov dword ptr [ebp-304], eax
.Lt_0563:
lea eax, [ebp-292]
push eax
lea eax, [ebp-196]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-316], eax
cmp dword ptr [ebp-316], 0
jle .Lt_0566
mov eax, dword ptr [ebp-316]
mov dword ptr [ebp-308], eax
mov eax, dword ptr [ebp-308]
add eax, dword ptr [ebp-304]
add eax, dword ptr [ebp-296]
mov ebx, eax
add ebx, dword ptr [ebp-108]
mov dword ptr [ebp-108], ebx
push -1
lea ebx, [ebp-164]
push ebx
call _fb_StrLen
add esp, 8
cmp dword ptr [ebp-108], eax
jbe .Lt_0568
push -1
lea eax, [ebp-164]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-108], eax
.Lt_0568:
.Lt_0566:
.Lt_0565:
lea eax, [ebp-292]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0556:
.Lt_0555:
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
lea ebx, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-120], esi
push offset _Lt_03D0
push 633
push 65
push dword ptr [ebp-120]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0703
jmp eax
.Lt_0703:
mov eax, dword ptr [ebp-120]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-124], eax
push offset _Lt_03D0
push 633
push 129
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0704
jmp eax
.Lt_0704:
mov eax, dword ptr [ebp-124]
imul eax, 380
add esi, eax
lea eax, [esi+293596]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp-104]
cmp dword ptr [ebp-108], eax
jbe .Lt_056C
mov eax, dword ptr [ebp-104]
mov dword ptr [ebp-108], eax
.Lt_056C:
lea eax, [_CPCDOS_INSTANCE+7232]
lea esi, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-128], ebx
push offset _Lt_03D0
push 637
push 65
push dword ptr [ebp-128]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0705
jmp eax
.Lt_0705:
mov eax, dword ptr [ebp-128]
imul eax, 2244
add esi, eax
mov eax, dword ptr [esi+6644]
mov dword ptr [ebp-132], eax
push offset _Lt_03D0
push 637
push 129
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0706
jmp eax
.Lt_0706:
mov eax, dword ptr [ebp-132]
imul eax, 380
add ebx, eax
mov eax, dword ptr [ebp-108]
mov dword ptr [ebx+293452], eax
lea eax, [_CPCDOS_INSTANCE+7232]
lea ebx, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-136], esi
push offset _Lt_03D0
push 638
push 65
push dword ptr [ebp-136]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0707
jmp eax
.Lt_0707:
mov eax, dword ptr [ebp-136]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-140], eax
push offset _Lt_03D0
push 638
push 129
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0708
jmp eax
.Lt_0708:
mov eax, dword ptr [ebp-140]
imul eax, 380
add esi, eax
mov byte ptr [esi+293460], 1
lea esi, [_CPCDOS_INSTANCE+7232]
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-144], ebx
push offset _Lt_03D0
push 639
push 65
push dword ptr [ebp-144]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0709
jmp eax
.Lt_0709:
mov eax, dword ptr [ebp-144]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-148], eax
push offset _Lt_03D0
push 639
push 129
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_070A
jmp eax
.Lt_070A:
mov eax, dword ptr [ebp-148]
imul eax, 380
add esi, eax
mov byte ptr [esi+293461], 1
push dword ptr [_CPCDOS_INSTANCE+7248]
lea esi, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-152], eax
push offset _Lt_03D0
push 643
push 65
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_070B
jmp eax
.Lt_070B:
mov eax, dword ptr [ebp-152]
imul eax, 2244
add esi, eax
push dword ptr [esi+6644]
push 5
lea esi, [_CPCDOS_INSTANCE+2464]
push esi
call __ZN17_SCI_CPCDOS_OSX__11IUG_UPDATEREiii
add esp, 16
push 0
push 1
push offset _Lt_0000
push -1
lea esi, [ebp-76]
push esi
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-64], 1
jmp .Lt_0516
.Lt_0530:
.Lt_052F:
.Lt_052E:
.Lt_052D:
.Lt_052C:
.Lt_052B:
.Lt_052A:
.Lt_0529:
lea esi, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-100], eax
push offset _Lt_03D0
push 659
push 65
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_070C
jmp eax
.Lt_070C:
mov eax, dword ptr [ebp-100]
imul eax, 2244
add esi, eax
cmp dword ptr [esi+6640], 5
jne .Lt_0576
lea esi, [_CPCDOS_INSTANCE+7232]
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-108], ebx
push offset _Lt_03D0
push 661
push 65
push dword ptr [ebp-108]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_070D
jmp eax
.Lt_070D:
mov eax, dword ptr [ebp-108]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-112], eax
push offset _Lt_03D0
push 661
push 129
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_070E
jmp eax
.Lt_070E:
mov eax, dword ptr [ebp-112]
imul eax, 380
add esi, eax
mov al, byte ptr [esi+293656]
mov byte ptr [ebp-104], al
lea eax, [_CPCDOS_INSTANCE+7232]
lea esi, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-116], ebx
push offset _Lt_03D0
push 664
push 65
push dword ptr [ebp-116]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_070F
jmp eax
.Lt_070F:
mov eax, dword ptr [ebp-116]
imul eax, 2244
add esi, eax
mov eax, dword ptr [esi+6644]
mov dword ptr [ebp-120], eax
push offset _Lt_03D0
push 664
push 129
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0710
jmp eax
.Lt_0710:
mov eax, dword ptr [ebp-120]
imul eax, 380
add ebx, eax
mov al, byte ptr [_CPCDOS_INSTANCE+610]
mov byte ptr [ebx+293656], al
push dword ptr [_CPCDOS_INSTANCE+7248]
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-124], ebx
push offset _Lt_03D0
push 667
push 65
push dword ptr [ebp-124]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0711
jmp eax
.Lt_0711:
mov eax, dword ptr [ebp-124]
imul eax, 2244
add ebx, eax
push dword ptr [ebx+6644]
push 5
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__11IUG_UPDATEREiii
add esp, 16
.Lt_0576:
.Lt_0575:
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_057D
mov byte ptr [ebp-64], 1
mov byte ptr [ebp-104], 0
mov dword ptr [ebp-108], 0
push dword ptr [_Lt_0712]
push dword ptr [_Lt_0712+4]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-128]
push eax
call _fb_StrInit
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-140]
push eax
call _fb_StrInit
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-168], ebx
push offset _Lt_03D0
push 690
push 65
push dword ptr [ebp-168]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0713
jmp eax
.Lt_0713:
mov eax, dword ptr [ebp-168]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 3
jne .Lt_0580
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-196], eax
push offset _Lt_03D0
push 693
push 65
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0714
jmp eax
.Lt_0714:
mov eax, dword ptr [ebp-196]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-200], ebx
push offset _Lt_03D0
push 694
push 129
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0715
jmp eax
.Lt_0715:
mov eax, dword ptr [ebp-200]
imul eax, 360
add ebx, eax
lea eax, [ebx+204648]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0584
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 700
push 129
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0716
jmp eax
.Lt_0716:
mov eax, dword ptr [ebp-204]
imul eax, 360
add ebx, eax
lea eax, [ebx+204444]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 701
push 129
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0717
jmp eax
.Lt_0717:
mov eax, dword ptr [ebp-208]
imul eax, 360
add ebx, eax
push dword ptr [ebx+204380]
push dword ptr [ebx+204384]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-212], eax
push offset _Lt_03D0
push 702
push 129
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0718
jmp eax
.Lt_0718:
mov eax, dword ptr [ebp-212]
imul eax, 360
add ebx, eax
lea eax, [ebx+204712]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-104], 1
.Lt_0584:
.Lt_0583:
jmp .Lt_057F
.Lt_0580:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-172], ebx
push offset _Lt_03D0
push 709
push 65
push dword ptr [ebp-172]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0719
jmp eax
.Lt_0719:
mov eax, dword ptr [ebp-172]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 2
jne .Lt_0588
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-196], eax
push offset _Lt_03D0
push 712
push 65
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071A
jmp eax
.Lt_071A:
mov eax, dword ptr [ebp-196]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-200], ebx
push offset _Lt_03D0
push 713
push 129
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071B
jmp eax
.Lt_071B:
mov eax, dword ptr [ebp-200]
imul eax, 396
add ebx, eax
lea eax, [ebx+153168]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_058D
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 719
push 129
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071C
jmp eax
.Lt_071C:
mov eax, dword ptr [ebp-204]
imul eax, 396
add ebx, eax
lea eax, [ebx+152964]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 720
push 129
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071D
jmp eax
.Lt_071D:
mov eax, dword ptr [ebp-208]
imul eax, 396
add ebx, eax
push dword ptr [ebx+152900]
push dword ptr [ebx+152904]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-212], eax
push offset _Lt_03D0
push 721
push 129
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071E
jmp eax
.Lt_071E:
mov eax, dword ptr [ebp-212]
imul eax, 396
add ebx, eax
lea eax, [ebx+153268]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-104], 1
.Lt_058D:
.Lt_058C:
jmp .Lt_057F
.Lt_0588:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-176], ebx
push offset _Lt_03D0
push 728
push 65
push dword ptr [ebp-176]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_071F
jmp eax
.Lt_071F:
mov eax, dword ptr [ebp-176]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 4
jne .Lt_0591
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-196], eax
push offset _Lt_03D0
push 731
push 65
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0720
jmp eax
.Lt_0720:
mov eax, dword ptr [ebp-196]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-200], ebx
push offset _Lt_03D0
push 732
push 129
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0721
jmp eax
.Lt_0721:
mov eax, dword ptr [ebp-200]
imul eax, 324
add ebx, eax
lea eax, [ebx+251448]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0596
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 738
push 129
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0722
jmp eax
.Lt_0722:
mov eax, dword ptr [ebp-204]
imul eax, 324
add ebx, eax
lea eax, [ebx+251244]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 739
push 129
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0723
jmp eax
.Lt_0723:
mov eax, dword ptr [ebp-208]
imul eax, 324
add ebx, eax
push dword ptr [ebx+251180]
push dword ptr [ebx+251184]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-212], eax
push offset _Lt_03D0
push 740
push 129
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0724
jmp eax
.Lt_0724:
mov eax, dword ptr [ebp-212]
imul eax, 324
add ebx, eax
lea eax, [ebx+251476]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-104], 1
.Lt_0596:
.Lt_0595:
jmp .Lt_057F
.Lt_0591:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-180], ebx
push offset _Lt_03D0
push 748
push 65
push dword ptr [ebp-180]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0725
jmp eax
.Lt_0725:
mov eax, dword ptr [ebp-180]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 5
jne .Lt_059A
mov byte ptr [ebp-196], 0
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-200], eax
push offset _Lt_03D0
push 753
push 65
push dword ptr [ebp-200]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0726
jmp eax
.Lt_0726:
mov eax, dword ptr [ebp-200]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 754
push 129
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0727
jmp eax
.Lt_0727:
mov eax, dword ptr [ebp-204]
imul eax, 380
add ebx, eax
lea eax, [ebx+293568]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 763
push 129
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0728
jmp eax
.Lt_0728:
mov eax, dword ptr [ebp-208]
imul eax, 380
add ebx, eax
cmp byte ptr [ebx+293456], 0
jne .Lt_05A0
push 2
push offset _Lt_0018
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05A2
mov byte ptr [ebp-196], 1
.Lt_05A2:
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05A4
mov byte ptr [ebp-196], 1
.Lt_05A4:
.Lt_05A0:
.Lt_059F:
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-224], ebx
push offset _Lt_03D0
push 770
push 129
push dword ptr [ebp-224]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0729
jmp eax
.Lt_0729:
mov eax, dword ptr [ebp-224]
imul eax, 380
add ebx, eax
cmp byte ptr [ebx+293450], 1
jne .Lt_05A7
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-244], eax
push offset _Lt_03D0
push 773
push 129
push dword ptr [ebp-244]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072A
jmp eax
.Lt_072A:
mov eax, dword ptr [ebp-244]
imul eax, 380
add ebx, eax
mov byte ptr [ebx+293656], 1
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 1
push offset _Lt_0000
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-272], eax
push offset _Lt_03D0
push 779
push 129
push dword ptr [ebp-272]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072B
jmp eax
.Lt_072B:
mov eax, dword ptr [ebp-272]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05AB
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_05AA
.Lt_05AB:
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-296], ebx
push offset _Lt_03D0
push 784
push 129
push dword ptr [ebp-296]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072C
jmp eax
.Lt_072C:
mov eax, dword ptr [ebp-296]
imul eax, 380
add ebx, eax
push dword ptr [ebx+293452]
push 1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-292], eax
push offset _Lt_03D0
push 784
push 129
push dword ptr [ebp-292]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072D
jmp eax
.Lt_072D:
mov eax, dword ptr [ebp-292]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-304], ebx
push offset _Lt_03D0
push 785
push 129
push dword ptr [ebp-304]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072E
jmp eax
.Lt_072E:
mov eax, dword ptr [ebp-304]
imul eax, 380
add ebx, eax
mov eax, dword ptr [ebx+293452]
inc eax
mov ebx, eax
push ebx
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-300], eax
push offset _Lt_03D0
push 785
push 129
push dword ptr [ebp-300]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_072F
jmp eax
.Lt_072F:
mov eax, dword ptr [ebp-300]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
.Lt_05AA:
push 2
push offset _Lt_0017
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05B1
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-256]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05B3
push 0
push -1
push -1
lea eax, [ebp-256]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
lea eax, [ebp-256]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-292], ebx
push offset _Lt_03D0
push 794
push 129
push dword ptr [ebp-292]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0730
jmp eax
.Lt_0730:
mov eax, dword ptr [ebp-292]
imul eax, 380
add ebx, eax
mov eax, dword ptr [ebx+293452]
add eax, 4294967295
lea ebx, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [ebp-108]
mov dword ptr [ebp-292], esi
push offset _Lt_03D0
push 794
push 129
push dword ptr [ebp-292]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0731
jmp eax
.Lt_0731:
mov eax, dword ptr [ebp-292]
imul eax, 380
add ebx, eax
mov dword ptr [ebx+293452], esi
.Lt_05B3:
.Lt_05B2:
jmp .Lt_05B0
.Lt_05B1:
push 2
push offset _Lt_0324
push -1
lea esi, [ebp-76]
push esi
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05B5
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-268]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05B7
push 0
push -1
push -1
lea eax, [ebp-268]
push eax
call _fb_StrLen
add esp, 8
push eax
push 2
lea eax, [ebp-268]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
.Lt_05B7:
.Lt_05B6:
jmp .Lt_05B0
.Lt_05B5:
cmp byte ptr [ebp-196], 0
jne .Lt_05B9
push 0
push -1
lea eax, [ebp-76]
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [ebp-108]
mov dword ptr [ebp-292], esi
push offset _Lt_03D0
push 808
push 129
push dword ptr [ebp-292]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0732
jmp eax
.Lt_0732:
mov eax, dword ptr [ebp-292]
imul eax, 380
add ebx, eax
mov eax, dword ptr [ebx+293452]
inc eax
lea ebx, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [ebp-108]
mov dword ptr [ebp-292], esi
push offset _Lt_03D0
push 808
push 129
push dword ptr [ebp-292]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0733
jmp eax
.Lt_0733:
mov eax, dword ptr [ebp-292]
imul eax, 380
add ebx, eax
mov dword ptr [ebx+293452], esi
.Lt_05B9:
.Lt_05B8:
.Lt_05B0:
push 0
push -1
push -1
lea esi, [ebp-268]
push esi
push -1
lea esi, [ebp-256]
push esi
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea esi, [ebp-288]
push esi
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov esi, dword ptr [ebp-108]
mov dword ptr [ebp-276], esi
push offset _Lt_03D0
push 813
push 129
push dword ptr [ebp-276]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0734
jmp eax
.Lt_0734:
mov eax, dword ptr [ebp-276]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-256]
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [_CPCDOS_INSTANCE+7248]
push dword ptr [ebp-108]
push 5
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__11IUG_UPDATEREiii
add esp, 16
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05A7:
.Lt_05A6:
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-228], ebx
push offset _Lt_03D0
push 823
push 129
push dword ptr [ebp-228]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0735
jmp eax
.Lt_0735:
mov eax, dword ptr [ebp-228]
imul eax, 380
add ebx, eax
lea eax, [ebx+293364]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-232], ebx
push offset _Lt_03D0
push 824
push 129
push dword ptr [ebp-232]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0736
jmp eax
.Lt_0736:
mov eax, dword ptr [ebp-232]
imul eax, 380
add ebx, eax
push dword ptr [ebx+293300]
push dword ptr [ebx+293304]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-236], eax
push offset _Lt_03D0
push 825
push 129
push dword ptr [ebp-236]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0737
jmp eax
.Lt_0737:
mov eax, dword ptr [ebp-236]
imul eax, 380
add ebx, eax
lea eax, [ebx+293596]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-240], ebx
push offset _Lt_03D0
push 829
push 129
push dword ptr [ebp-240]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0738
jmp eax
.Lt_0738:
mov eax, dword ptr [ebp-240]
imul eax, 380
add ebx, eax
cmp byte ptr [ebx+293457], 1
jne .Lt_05C2
mov byte ptr [ebp-244], 0
push 2
push offset _Lt_0018
push -1
lea ebx, [ebp-76]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05C4
mov byte ptr [ebp-244], 1
.Lt_05C4:
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05C6
mov byte ptr [ebp-244], 1
.Lt_05C6:
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_05C8
mov byte ptr [ebp-244], 1
.Lt_05C8:
cmp byte ptr [ebp-244], 1
jne .Lt_05CA
push 0
push -1
push -1
push -1
lea eax, [ebp-220]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-220]
push eax
call _fb_StrInstrRev
add esp, 12
inc eax
push eax
lea eax, [ebp-220]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-256]
push eax
call _fb_StrLen
add esp, 8
cmp eax, 2
jle .Lt_05CC
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push -1
push -1
push dword ptr [ebp-108]
call _fb_IntToStr
add esp, 4
push eax
push 13
push offset _Lt_05CE
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
lea eax, [ebp-280]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-292]
push eax
push 330
push 2
push dword ptr [ebp-112]
push dword ptr [ebp-116]
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push -1
lea eax, [ebp-256]
push eax
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
call _fb_hStrDelTemp
add esp, 4
lea eax, [ebp-292]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-296], ebx
push offset _Lt_03D0
push 849
push 129
push dword ptr [ebp-296]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0739
jmp eax
.Lt_0739:
mov eax, dword ptr [ebp-296]
imul eax, 380
add ebx, eax
mov dword ptr [ebx+293452], 380
.Lt_05CC:
.Lt_05CB:
lea ebx, [ebp-256]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_05CA:
.Lt_05C9:
.Lt_05C2:
.Lt_05C1:
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-152]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05D4
mov byte ptr [ebp-104], 1
.Lt_05D4:
.Lt_05D3:
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_057F
.Lt_059A:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-184], ebx
push offset _Lt_03D0
push 858
push 65
push dword ptr [ebp-184]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_073A
jmp eax
.Lt_073A:
mov eax, dword ptr [ebp-184]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 6
jne .Lt_05D5
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-196], eax
push offset _Lt_03D0
push 861
push 65
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_073B
jmp eax
.Lt_073B:
mov eax, dword ptr [ebp-196]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-200], ebx
push offset _Lt_03D0
push 862
push 129
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_073C
jmp eax
.Lt_073C:
mov eax, dword ptr [ebp-200]
imul eax, 368
add ebx, eax
lea eax, [ebx+342968]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05DA
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 868
push 129
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_073D
jmp eax
.Lt_073D:
mov eax, dword ptr [ebp-204]
imul eax, 368
add ebx, eax
lea eax, [ebx+342764]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 869
push 129
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_073E
jmp eax
.Lt_073E:
mov eax, dword ptr [ebp-208]
imul eax, 368
add ebx, eax
push dword ptr [ebx+342700]
push dword ptr [ebx+342704]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-212], eax
push offset _Lt_03D0
push 870
push 129
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_073F
jmp eax
.Lt_073F:
mov eax, dword ptr [ebp-212]
imul eax, 368
add ebx, eax
lea eax, [ebx+343032]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-104], 1
.Lt_05DA:
.Lt_05D9:
jmp .Lt_057F
.Lt_05D5:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-188], ebx
push offset _Lt_03D0
push 875
push 65
push dword ptr [ebp-188]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0740
jmp eax
.Lt_0740:
mov eax, dword ptr [ebp-188]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 7
jne .Lt_05DE
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-196], eax
push offset _Lt_03D0
push 878
push 65
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0741
jmp eax
.Lt_0741:
mov eax, dword ptr [ebp-196]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-200], ebx
push offset _Lt_03D0
push 879
push 129
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0742
jmp eax
.Lt_0742:
mov eax, dword ptr [ebp-200]
imul eax, 420
add ebx, eax
lea eax, [ebx+390808]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05E3
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 885
push 129
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0743
jmp eax
.Lt_0743:
mov eax, dword ptr [ebp-204]
imul eax, 420
add ebx, eax
lea eax, [ebx+390604]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 886
push 129
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0744
jmp eax
.Lt_0744:
mov eax, dword ptr [ebp-208]
imul eax, 420
add ebx, eax
push dword ptr [ebx+390540]
push dword ptr [ebx+390544]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-212], eax
push offset _Lt_03D0
push 887
push 129
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0745
jmp eax
.Lt_0745:
mov eax, dword ptr [ebp-212]
imul eax, 420
add ebx, eax
lea eax, [ebx+390928]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-104], 1
.Lt_05E3:
.Lt_05E2:
jmp .Lt_057F
.Lt_05DE:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-192], ebx
push offset _Lt_03D0
push 893
push 65
push dword ptr [ebp-192]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0746
jmp eax
.Lt_0746:
mov eax, dword ptr [ebp-192]
imul eax, 2244
add ebx, eax
cmp dword ptr [ebx+6640], 1
jne .Lt_05E7
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [_CPCDOS_INSTANCE+7248]
mov dword ptr [ebp-196], eax
push offset _Lt_03D0
push 897
push 65
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0747
jmp eax
.Lt_0747:
mov eax, dword ptr [ebp-196]
imul eax, 2244
add ebx, eax
mov eax, dword ptr [ebx+6644]
mov dword ptr [ebp-108], eax
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-200], ebx
push offset _Lt_03D0
push 898
push 65
push dword ptr [ebp-200]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0748
jmp eax
.Lt_0748:
mov eax, dword ptr [ebp-200]
imul eax, 2244
add ebx, eax
lea eax, [ebx+5064]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05EC
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-204], ebx
push offset _Lt_03D0
push 904
push 65
push dword ptr [ebp-204]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0749
jmp eax
.Lt_0749:
mov eax, dword ptr [ebp-204]
imul eax, 2244
add ebx, eax
lea eax, [ebx+4860]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp-208], ebx
push offset _Lt_03D0
push 905
push 65
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_074A
jmp eax
.Lt_074A:
mov eax, dword ptr [ebp-208]
imul eax, 2244
add ebx, eax
push dword ptr [ebx+4796]
push dword ptr [ebx+4800]
pop dword ptr [ebp-112]
pop dword ptr [ebp-116]
push 0
push -1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-108]
mov dword ptr [ebp-212], eax
push offset _Lt_03D0
push 906
push 65
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_074B
jmp eax
.Lt_074B:
mov eax, dword ptr [ebp-212]
imul eax, 2244
add ebx, eax
lea eax, [ebx+6660]
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov byte ptr [ebp-104], 1
.Lt_05EC:
.Lt_05EB:
.Lt_05E7:
.Lt_057F:
cmp byte ptr [ebp-104], 1
jne .Lt_05F1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-204]
push eax
call _fb_StrInit
add esp, 20
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0018
push -1
lea ebx, [ebp-76]
push ebx
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_05F3
push 0
push 9
push offset _Lt_05F4
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
push 4
push offset _Lt_05F6
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 3
push offset _Lt_05F5
push -1
lea eax, [ebp-152]
push eax
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
lea eax, [ebp-336]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
lea eax, [ebp-348]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
lea eax, [ebp-360]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
lea eax, [ebp-372]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call _fb_StrConcat
add esp, 20
push eax
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_05FD
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_05FF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0601
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 18
push offset _Lt_0605
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0751
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0752
.Lt_0751:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0752:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0603
push -1
push -1
lea eax, [ebp-128]
push eax
push 39
push offset _Lt_0602
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
lea eax, [ebp-580]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
lea eax, [ebp-604]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-616]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-616]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-616]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0600
.Lt_0601:
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 17
push offset _Lt_0612
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0753
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0754
.Lt_0753:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0754:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0611
push -1
push -1
lea eax, [ebp-128]
push eax
push 32
push offset _Lt_0610
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
lea eax, [ebp-580]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
lea eax, [ebp-604]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-616]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-616]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-616]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0600:
.Lt_05FF:
.Lt_05FE:
push 0
push -1
push -1
lea eax, [ebp-140]
push eax
call _fb_StrLen
add esp, 8
push -1
lea ebx, [ebp-76]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
sub ebx, eax
push ebx
push 1
lea ebx, [ebp-140]
push ebx
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
push 8
push offset _Lt_062A
push -1
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-504]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-504]
push eax
push 0
push 2
push dword ptr [ebp-112]
push dword ptr [ebp-116]
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
push 0
push -1
push 2
push offset _Lt_061F
push -1
push -1
lea eax, [ebp-140]
push eax
push -1
push 2
push offset _Lt_061E
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_00E2
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 8
push offset _Lt_061D
push -1
push -1
lea eax, [ebp-152]
push eax
push 13
push offset _Lt_061C
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
lea eax, [ebp-396]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
lea eax, [ebp-408]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
lea eax, [ebp-420]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
lea eax, [ebp-432]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
lea eax, [ebp-444]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
lea eax, [ebp-456]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
lea eax, [ebp-468]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
lea eax, [ebp-480]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-492]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-492]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-508], eax
lea eax, [ebp-504]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-492]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-508], 0
je .Lt_062C
push 0
push -1
lea eax, [ebp-152]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_05F5
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-128]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0343
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_062E
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0630
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
push 0
push -1
push 4
push offset _Lt_05F6
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 3
push offset _Lt_05F5
push -1
push -1
lea eax, [ebp-152]
push eax
push 24
push offset _Lt_0631
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
lea eax, [ebp-580]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-592]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-592]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-592]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0630:
.Lt_062F:
.Lt_062C:
.Lt_062B:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_063A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_063C
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 18
push offset _Lt_0605
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0756
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0757
.Lt_0756:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0757:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0603
push -1
push -1
lea eax, [ebp-128]
push eax
push 37
push offset _Lt_063D
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
lea eax, [ebp-580]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
lea eax, [ebp-604]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-616]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-616]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-616]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_063B
.Lt_063C:
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 17
push offset _Lt_0612
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0758
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0759
.Lt_0758:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0759:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0611
push -1
push -1
lea eax, [ebp-128]
push eax
push 28
push offset _Lt_0647
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
lea eax, [ebp-580]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
lea eax, [ebp-604]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-616]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-616]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-616]
push eax
call _fb_StrDelete
add esp, 4
.Lt_063B:
.Lt_063A:
.Lt_0639:
.Lt_05FD:
.Lt_05FC:
.Lt_05F3:
.Lt_05F2:
push 0
push 9
push offset _Lt_0651
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
push 3
push offset _Lt_0652
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 3
push offset _Lt_05F5
push -1
lea eax, [ebp-152]
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
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_0659
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_065B
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_065D
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 12
push offset _Lt_065E
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_075A
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_075B
.Lt_075A:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_075B:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0603
push -1
push -1
lea eax, [ebp-128]
push eax
push 39
push offset _Lt_0602
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-556]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-556]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-556]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_065C
.Lt_065D:
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 12
push offset _Lt_065E
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_075C
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_075D
.Lt_075C:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_075D:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0611
push -1
push -1
lea eax, [ebp-128]
push eax
push 32
push offset _Lt_0610
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-556]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-556]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-556]
push eax
call _fb_StrDelete
add esp, 4
.Lt_065C:
.Lt_065B:
.Lt_065A:
push 8
push offset _Lt_062A
push -1
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-444]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-444]
push eax
push 0
push 2
push dword ptr [ebp-112]
push dword ptr [ebp-116]
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
push 0
push -1
push 2
push offset _Lt_061F
push -1
push -1
lea eax, [ebp-76]
push eax
push -1
push 2
push offset _Lt_061E
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_00E2
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 8
push offset _Lt_061D
push -1
push -1
lea eax, [ebp-152]
push eax
push 13
push offset _Lt_061C
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
lea eax, [ebp-336]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
lea eax, [ebp-348]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
lea eax, [ebp-360]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
lea eax, [ebp-372]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
lea eax, [ebp-396]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
lea eax, [ebp-408]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
lea eax, [ebp-420]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-432]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-432]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-448], eax
lea eax, [ebp-444]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-432]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-448], 0
je .Lt_067C
push 0
push -1
lea eax, [ebp-152]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_05F5
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-128]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0343
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_067E
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0680
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
push 0
push -1
push 3
push offset _Lt_0652
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 3
push offset _Lt_05F5
push -1
push -1
lea eax, [ebp-152]
push eax
push 24
push offset _Lt_0631
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-532]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-532]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-532]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0680:
.Lt_067F:
.Lt_067C:
.Lt_067B:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0689
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_068B
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 12
push offset _Lt_065E
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_075F
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0760
.Lt_075F:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0760:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0603
push -1
push -1
lea eax, [ebp-128]
push eax
push 37
push offset _Lt_063D
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-556]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-556]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-556]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_068A
.Lt_068B:
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 12
push offset _Lt_065E
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0761
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0762
.Lt_0761:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0762:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0611
push -1
push -1
lea eax, [ebp-128]
push eax
push 28
push offset _Lt_0647
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-556]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-556]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-556]
push eax
call _fb_StrDelete
add esp, 4
.Lt_068A:
.Lt_0689:
.Lt_0688:
.Lt_0659:
.Lt_0658:
push 4
push offset _Lt_05F6
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 3
push offset _Lt_05F5
push -1
lea eax, [ebp-152]
push eax
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
lea eax, [ebp-276]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
lea eax, [ebp-288]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
lea eax, [ebp-312]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
lea eax, [ebp-324]
push eax
call _fb_StrConcat
add esp, 20
push eax
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06A4
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06A6
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06A8
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 18
push offset _Lt_0605
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0763
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0764
.Lt_0763:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0764:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0603
push -1
push -1
lea eax, [ebp-128]
push eax
push 39
push offset _Lt_0602
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-532]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-532]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-532]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06A7
.Lt_06A8:
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 18
push offset _Lt_0605
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0765
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0766
.Lt_0765:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0766:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0611
push -1
push -1
lea eax, [ebp-128]
push eax
push 32
push offset _Lt_0610
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-532]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-532]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-532]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06A7:
.Lt_06A6:
.Lt_06A5:
push 8
push offset _Lt_062A
push -1
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-420]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-420]
push eax
push 0
push 2
push dword ptr [ebp-112]
push dword ptr [ebp-116]
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
push 0
push -1
push 3
push offset _Lt_0652
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_00E2
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 8
push offset _Lt_061D
push -1
push -1
lea eax, [ebp-152]
push eax
push 13
push offset _Lt_061C
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
lea eax, [ebp-336]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
lea eax, [ebp-348]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
lea eax, [ebp-360]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
lea eax, [ebp-372]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
lea eax, [ebp-396]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-408]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-408]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-424], eax
lea eax, [ebp-420]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-408]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-424], 0
je .Lt_06C4
push 0
push -1
lea eax, [ebp-152]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_05F5
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-128]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0343
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_062E
push -1
lea eax, [_CPCDOS_INSTANCE+7196]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06C7
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
push 0
push -1
push 4
push offset _Lt_05F6
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
lea eax, [ebp-128]
push eax
push -1
push 3
push offset _Lt_05F5
push -1
push -1
lea eax, [ebp-152]
push eax
push 24
push offset _Lt_0631
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-508]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-508]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-508]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06C7:
.Lt_06C6:
.Lt_06C4:
.Lt_06C3:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_06D0
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06D2
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 18
push offset _Lt_0605
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0768
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0769
.Lt_0768:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0769:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0603
push -1
push -1
lea eax, [ebp-128]
push eax
push 37
push offset _Lt_063D
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-532]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-532]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-532]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06D1
.Lt_06D2:
lea eax, [_CPCDOS_INSTANCE+7176]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
push 0
push -1
push 3
push offset _Lt_0606
push -1
push -1
lea eax, [ebp-152]
push eax
push -1
push 18
push offset _Lt_0605
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 7
push offset _Lt_0604
push -1
push -1
push 8
fld qword ptr [ebp-116]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_076A
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_076B
.Lt_076A:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_076B:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 6
push offset _Lt_0611
push -1
push -1
lea eax, [ebp-128]
push eax
push 28
push offset _Lt_0647
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
lea eax, [ebp-484]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-532]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-532]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-532]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06D1:
.Lt_06D0:
.Lt_06CF:
.Lt_06A4:
.Lt_06A3:
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05F1:
.Lt_05F0:
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
.Lt_057D:
.Lt_057C:
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-28]
push eax
call _fb_GetMouse
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_06E6
push 0
push -1
push 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 8
push offset _Lt_06E7
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
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
push -1
push -1
lea eax, [ebp-112]
push eax
push 7
push offset _Lt_04B0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06E5
.Lt_06E6:
mov eax, dword ptr [ebp-40]
and eax, 1
mov ebx, dword ptr [ebp-40]
and ebx, 2
or eax, ebx
mov ebx, dword ptr [ebp-40]
and ebx, 4
or eax, ebx
je .Lt_06ED
cmp dword ptr [_CPCDOS_INSTANCE+7240], 0
jg .Lt_06EF
push dword ptr [ebp-40]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__26INTERACTION_SOURIS_FENETREEiii
add esp, 16
jmp .Lt_06EE
.Lt_06EF:
mov ebx, dword ptr [ebp-28]
cmp ebx, dword ptr [_CPCDOS_INSTANCE+7188]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-32]
cmp eax, dword ptr [_CPCDOS_INSTANCE+7192]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_06F1
call _fb_GfxLock
mov eax, dword ptr [ebp-28]
mov dword ptr [_CPCDOS_INSTANCE+7188], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [_CPCDOS_INSTANCE+7192], eax
push dword ptr [_CPCDOS_INSTANCE+7240]
push 3
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__13ACTUALISERGUIEii
add esp, 12
mov eax, dword ptr [ebp-32]
sub eax, dword ptr [_CPCDOS_INSTANCE+7236]
push eax
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [_CPCDOS_INSTANCE+7232]
push eax
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__22DEPLACERFENETRE_TO_POSEii
add esp, 12
push -1
push -1
call _fb_GfxUnlock
add esp, 8
push dword ptr [ebp-48]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEiii
add esp, 16
.Lt_06F1:
.Lt_06F0:
.Lt_06EE:
jmp .Lt_06EC
.Lt_06ED:
cmp dword ptr [_CPCDOS_INSTANCE+7240], 0
jle .Lt_06F3
call _fb_GfxLock
push 2
push 3
call _fb_GfxFlip
add esp, 8
mov dword ptr [_CPCDOS_INSTANCE+7240], 0
push 0
push 0
lea eax, [_CPCDOS_INSTANCE+2464]
push eax
call __ZN17_SCI_CPCDOS_OSX__13ACTUALISERGUIEii
add esp, 12
mov dword ptr [_CPCDOS_INSTANCE+7232], 0
mov dword ptr [_CPCDOS_INSTANCE+7236], 0
push -1
push -1
call _fb_GfxUnlock
add esp, 8
jmp .Lt_06F2
.Lt_06F3:
cmp dword ptr [_CPCDOS_INSTANCE+7240], 0
jg .Lt_06F4
mov eax, dword ptr [ebp-28]
cmp eax, dword ptr [ebp-12]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
cmp ebx, dword ptr [ebp-16]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-40]
cmp ebx, dword ptr [ebp-20]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-36]
cmp ebx, dword ptr [ebp-24]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_06F6
push dword ptr [ebp-40]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__26INTERACTION_SOURIS_FENETREEiii
add esp, 16
.Lt_06F6:
.Lt_06F5:
.Lt_06F4:
.Lt_06F2:
.Lt_06EC:
.Lt_06E5:
.Lt_0521:
.Lt_0520:
jmp .Lt_0516
.Lt_0517:
mov dword ptr [ebp-4], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrDelete
add esp, 4
jmp .Lt_0513
.Lt_0514:
call _fb_ErrorGetFuncName
push eax
call _fb_ErrorGetModName
push eax
call _fb_ErrorGetLineNum
push eax
call _fb_ErrorGetNum
push eax
call __ZN6cpinti12interception13Erreur_FataleEiiPcS1_
add esp, 16
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0513:
push dword ptr [ebp-92]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-88]
call _fb_ErrorSetModName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetHandler
add esp, 4
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _THREAD_RefreshGUI_Elements
_THREAD_RefreshGUI_Elements:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_07D3
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_0772:
lea eax, [.Lt_0774]
push eax
call _fb_ErrorSetHandler
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov byte ptr [ebp-16], 1
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ebx
.Lt_0776:
cmp byte ptr [ebp-16], 0
je .Lt_0777
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push 1
call __ZN6cpinti18gestionnaire_tache18cpinti_etat_threadEjjj
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 76
jne .Lt_0779
mov byte ptr [ebp-16], 0
jmp .Lt_0777
.Lt_0779:
cmp dword ptr [ebp-12], 70
jne .Lt_077B
mov byte ptr [ebp-16], 0
jmp .Lt_0777
.Lt_077B:
cmp dword ptr [ebp-12], 101
jne .Lt_077D
jmp .Lt_0776
.Lt_077D:
cmp dword ptr [ebp-12], 98
jne .Lt_077F
jmp .Lt_0776
.Lt_077F:
cmp dword ptr [ebp-12], 83
jne .Lt_0781
inc dword ptr [ebp-20]
mov dword ptr [ebp-36], 0
cmp dword ptr [_CPCDOS_INSTANCE+12012], 0
jle .Lt_0783
mov dword ptr [ebp-40], 0
.Lt_0787:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
push offset _Lt_03D0
push 1117
push 129
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D5
jmp eax
.Lt_07D5:
mov eax, dword ptr [ebp-44]
imul eax, 324
add ebx, eax
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebx+251188], eax
jne .Lt_078A
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-48], ebx
push offset _Lt_03D0
push 1118
push 129
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D6
jmp eax
.Lt_07D6:
mov eax, dword ptr [ebp-48]
imul eax, 324
add ebx, eax
cmp dword ptr [ebx+251464], 0
jle .Lt_078D
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-52], eax
push offset _Lt_03D0
push 1119
push 129
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D7
jmp eax
.Lt_07D7:
mov eax, dword ptr [ebp-52]
imul eax, 324
add ebx, eax
mov dword ptr [ebx+251468], 1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-56], eax
push offset _Lt_03D0
push 1120
push 129
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D8
jmp eax
.Lt_07D8:
mov eax, dword ptr [ebp-56]
imul eax, 324
add ebx, eax
push dword ptr [ebx+251236]
push dword ptr [ebp-40]
lea ebx, [_CPCDOS_INSTANCE+7232]
push ebx
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__15CREER_TEXTBLOCKER17CPCDOS_GUI_INIT__ii
add esp, 16
inc dword ptr [ebp-36]
mov ebx, dword ptr [_CPCDOS_INSTANCE+12012]
cmp dword ptr [ebp-36], ebx
jl .Lt_0791
jmp .Lt_0786
.Lt_0791:
.Lt_078D:
.Lt_078C:
.Lt_078A:
.Lt_0789:
.Lt_0785:
inc dword ptr [ebp-40]
.Lt_0784:
cmp dword ptr [ebp-40], 128
jle .Lt_0787
.Lt_0786:
.Lt_0783:
.Lt_0782:
mov dword ptr [ebp-36], 0
cmp dword ptr [_CPCDOS_INSTANCE+12020], 0
jle .Lt_0793
mov dword ptr [ebp-40], 0
.Lt_0797:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-44], eax
push offset _Lt_03D0
push 1133
push 129
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07D9
jmp eax
.Lt_07D9:
mov eax, dword ptr [ebp-44]
imul eax, 368
add ebx, eax
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebx+342708], eax
jne .Lt_079A
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-48], ebx
push offset _Lt_03D0
push 1134
push 129
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DA
jmp eax
.Lt_07DA:
mov eax, dword ptr [ebp-48]
imul eax, 368
add ebx, eax
cmp dword ptr [ebx+342980], 0
jle .Lt_079D
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-52], eax
push offset _Lt_03D0
push 1135
push 129
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DB
jmp eax
.Lt_07DB:
mov eax, dword ptr [ebp-52]
imul eax, 368
add ebx, eax
mov dword ptr [ebx+342984], 1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-56], eax
push offset _Lt_03D0
push 1136
push 129
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DC
jmp eax
.Lt_07DC:
mov eax, dword ptr [ebp-56]
imul eax, 368
add ebx, eax
push dword ptr [ebx+342756]
push dword ptr [ebp-40]
lea ebx, [_CPCDOS_INSTANCE+7232]
push ebx
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__17CREER_PROGRESSBARER17CPCDOS_GUI_INIT__ii
add esp, 16
inc dword ptr [ebp-36]
mov ebx, dword ptr [_CPCDOS_INSTANCE+12020]
cmp dword ptr [ebp-36], ebx
jl .Lt_07A1
jmp .Lt_0796
.Lt_07A1:
.Lt_079D:
.Lt_079C:
.Lt_079A:
.Lt_0799:
.Lt_0795:
inc dword ptr [ebp-40]
.Lt_0794:
cmp dword ptr [ebp-40], 128
jle .Lt_0797
.Lt_0796:
.Lt_0793:
.Lt_0792:
mov dword ptr [ebp-36], 0
cmp dword ptr [_CPCDOS_INSTANCE+12004], 0
jle .Lt_07A3
mov dword ptr [ebp-40], 0
.Lt_07A7:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-44], eax
push offset _Lt_03D0
push 1150
push 129
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DD
jmp eax
.Lt_07DD:
mov eax, dword ptr [ebp-44]
imul eax, 396
add ebx, eax
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebx+152908], eax
jne .Lt_07AA
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-48], ebx
push offset _Lt_03D0
push 1151
push 129
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DE
jmp eax
.Lt_07DE:
mov eax, dword ptr [ebp-48]
imul eax, 396
add ebx, eax
cmp dword ptr [ebx+153184], 0
jle .Lt_07AD
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-52], eax
push offset _Lt_03D0
push 1152
push 129
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07DF
jmp eax
.Lt_07DF:
mov eax, dword ptr [ebp-52]
imul eax, 396
add ebx, eax
mov dword ptr [ebx+153188], 1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-56], eax
push offset _Lt_03D0
push 1153
push 129
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E0
jmp eax
.Lt_07E0:
mov eax, dword ptr [ebp-56]
imul eax, 396
add ebx, eax
push dword ptr [ebx+152956]
push dword ptr [ebp-40]
lea ebx, [_CPCDOS_INSTANCE+7232]
push ebx
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__12CREER_BOUTONER17CPCDOS_GUI_INIT__ii
add esp, 16
inc dword ptr [ebp-36]
mov ebx, dword ptr [_CPCDOS_INSTANCE+12004]
cmp dword ptr [ebp-36], ebx
jl .Lt_07B1
jmp .Lt_07A6
.Lt_07B1:
.Lt_07AD:
.Lt_07AC:
.Lt_07AA:
.Lt_07A9:
.Lt_07A5:
inc dword ptr [ebp-40]
.Lt_07A4:
cmp dword ptr [ebp-40], 128
jle .Lt_07A7
.Lt_07A6:
.Lt_07A3:
.Lt_07A2:
mov dword ptr [ebp-36], 0
cmp dword ptr [_CPCDOS_INSTANCE+12024], 0
jle .Lt_07B3
mov dword ptr [ebp-40], 0
.Lt_07B7:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-44], eax
push offset _Lt_03D0
push 1166
push 129
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E1
jmp eax
.Lt_07E1:
mov eax, dword ptr [ebp-44]
imul eax, 420
add ebx, eax
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebx+390548], eax
jne .Lt_07BA
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-48], ebx
push offset _Lt_03D0
push 1167
push 129
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E2
jmp eax
.Lt_07E2:
mov eax, dword ptr [ebp-48]
imul eax, 420
add ebx, eax
cmp dword ptr [ebx+390820], 0
jle .Lt_07BD
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-52], eax
push offset _Lt_03D0
push 1168
push 129
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E3
jmp eax
.Lt_07E3:
mov eax, dword ptr [ebp-52]
imul eax, 420
add ebx, eax
mov dword ptr [ebx+390824], 1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-56], eax
push offset _Lt_03D0
push 1169
push 129
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E4
jmp eax
.Lt_07E4:
mov eax, dword ptr [ebp-56]
imul eax, 420
add ebx, eax
push dword ptr [ebx+390596]
push dword ptr [ebp-40]
lea ebx, [_CPCDOS_INSTANCE+7232]
push ebx
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__14CREER_CHECKBOXER17CPCDOS_GUI_INIT__ii
add esp, 16
inc dword ptr [ebp-36]
mov ebx, dword ptr [_CPCDOS_INSTANCE+12024]
cmp dword ptr [ebp-36], ebx
jl .Lt_07C1
jmp .Lt_07B6
.Lt_07C1:
.Lt_07BD:
.Lt_07BC:
.Lt_07BA:
.Lt_07B9:
.Lt_07B5:
inc dword ptr [ebp-40]
.Lt_07B4:
cmp dword ptr [ebp-40], 128
jle .Lt_07B7
.Lt_07B6:
.Lt_07B3:
.Lt_07B2:
mov dword ptr [ebp-36], 0
cmp dword ptr [_CPCDOS_INSTANCE+12016], 0
jle .Lt_07C3
mov dword ptr [ebp-40], 0
.Lt_07C7:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-44], eax
push offset _Lt_03D0
push 1182
push 129
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E5
jmp eax
.Lt_07E5:
mov eax, dword ptr [ebp-44]
imul eax, 380
add ebx, eax
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebx+293308], eax
jne .Lt_07CA
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-48], ebx
push offset _Lt_03D0
push 1183
push 129
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E6
jmp eax
.Lt_07E6:
mov eax, dword ptr [ebp-48]
imul eax, 380
add ebx, eax
cmp dword ptr [ebx+293584], 0
jle .Lt_07CD
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-52], eax
push offset _Lt_03D0
push 1184
push 129
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E7
jmp eax
.Lt_07E7:
mov eax, dword ptr [ebp-52]
imul eax, 380
add ebx, eax
mov dword ptr [ebx+293588], 1
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-56], eax
push offset _Lt_03D0
push 1185
push 129
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_07E8
jmp eax
.Lt_07E8:
mov eax, dword ptr [ebp-56]
imul eax, 380
add ebx, eax
push dword ptr [ebx+293356]
push dword ptr [ebp-40]
lea ebx, [_CPCDOS_INSTANCE+7232]
push ebx
lea ebx, [_CPCDOS_INSTANCE+2464]
push ebx
call __ZN17_SCI_CPCDOS_OSX__13CREER_TEXTBOXER17CPCDOS_GUI_INIT__ii
add esp, 16
inc dword ptr [ebp-36]
mov ebx, dword ptr [_CPCDOS_INSTANCE+12016]
cmp dword ptr [ebp-36], ebx
jl .Lt_07D1
jmp .Lt_07C6
.Lt_07D1:
.Lt_07CD:
.Lt_07CC:
.Lt_07CA:
.Lt_07C9:
.Lt_07C5:
inc dword ptr [ebp-40]
.Lt_07C4:
cmp dword ptr [ebp-40], 128
jle .Lt_07C7
.Lt_07C6:
.Lt_07C3:
.Lt_07C2:
.Lt_0781:
.Lt_0780:
push 100000
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
jmp .Lt_0776
.Lt_0777:
mov dword ptr [ebp-4], 0
jmp .Lt_0773
.Lt_0774:
call _fb_ErrorGetFuncName
push eax
call _fb_ErrorGetModName
push eax
call _fb_ErrorGetLineNum
push eax
call _fb_ErrorGetNum
push eax
call __ZN6cpinti12interception13Erreur_FataleEiiPcS1_
add esp, 16
.Lt_0773:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetHandler
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _THREAD_IUG_PICTUREBOX
_THREAD_IUG_PICTUREBOX:
push ebp
mov ebp, esp
sub esp, 96
push ebx
push esi
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0805
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_07E9:
lea eax, [.Lt_07EB]
push eax
call _fb_ErrorSetHandler
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
add esp, 24
fstp qword ptr [ebp-16]
mov dword ptr [ebp-20], 0
mov byte ptr [ebp-24], 1
mov dword ptr [ebp-4], -1
push 1000
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-36], 1
.Lt_07F0:
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-40], ebx
push offset _Lt_03D0
push 1232
push 129
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0807
jmp eax
.Lt_0807:
mov eax, dword ptr [ebp-40]
imul eax, 360
add ebx, eax
cmp dword ptr [ebx+204660], 0
jle .Lt_07F3
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
push offset _Lt_03D0
push 1233
push 129
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0808
jmp eax
.Lt_0808:
mov eax, dword ptr [ebp-44]
imul eax, 360
add ebx, eax
cmp dword ptr [ebx+204664], 0
jne .Lt_07F6
mov dword ptr [ebp-48], 1
.Lt_07FA:
lea ebx, [_CPCDOS_INSTANCE+7232]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push offset _Lt_03D0
push 1236
push 129
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0809
jmp eax
.Lt_0809:
mov eax, dword ptr [ebp-52]
imul eax, 360
add ebx, eax
lea eax, [_CPCDOS_INSTANCE+7232]
mov ecx, dword ptr [ebp-48]
mov dword ptr [ebp-56], ecx
push offset _Lt_03D0
push 1236
push 65
push dword ptr [ebp-56]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_080A
jmp eax
.Lt_080A:
mov eax, dword ptr [ebp-56]
imul eax, 2244
add esi, eax
mov eax, dword ptr [esi+4876]
cmp dword ptr [ebx+204440], eax
jne .Lt_07FE
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
call _fb_Timer
fstp qword ptr [ebp-72]
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-80], ebx
push offset _Lt_03D0
push 1242
push 129
push dword ptr [ebp-80]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_080B
jmp eax
.Lt_080B:
mov eax, dword ptr [ebp-80]
imul eax, 360
add ebx, eax
mov eax, dword ptr [ebx+204700]
mov dword ptr [ebp-76], eax
lea eax, [_CPCDOS_INSTANCE+7232]
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-84], ebx
push offset _Lt_03D0
push 1244
push 129
push dword ptr [ebp-84]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_080C
jmp eax
.Lt_080C:
mov eax, dword ptr [ebp-84]
imul eax, 360
add ebx, eax
mov dword ptr [ebx+204664], 1
lea ebx, [_CPCDOS_INSTANCE+589484]
mov eax, dword ptr [ebp-76]
mov dword ptr [ebp-88], eax
push offset _Lt_03D0
push 1246
push 512
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_080D
jmp eax
.Lt_080D:
mov eax, dword ptr [ebp-88]
sal eax, 2
add ebx, eax
mov dword ptr [ebx], 3
lea ebx, [_CPCDOS_INSTANCE+589484]
mov eax, dword ptr [ebp-76]
mov dword ptr [ebp-92], eax
push offset _Lt_03D0
push 1247
push 512
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_080E
jmp eax
.Lt_080E:
mov eax, dword ptr [ebp-92]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-48]
mov dword ptr [ebx+2052], eax
lea eax, [_CPCDOS_INSTANCE+589484]
mov ebx, dword ptr [ebp-76]
mov dword ptr [ebp-96], ebx
push offset _Lt_03D0
push 1248
push 512
push dword ptr [ebp-96]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_080F
jmp eax
.Lt_080F:
mov eax, dword ptr [ebp-96]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-36]
mov dword ptr [ebx+4104], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
jmp .Lt_07EA
.Lt_07FE:
.Lt_07FD:
.Lt_07F8:
inc dword ptr [ebp-48]
.Lt_07F7:
cmp dword ptr [ebp-48], 64
jle .Lt_07FA
.Lt_07F9:
.Lt_07F6:
.Lt_07F5:
.Lt_07F3:
.Lt_07F2:
.Lt_07EE:
inc dword ptr [ebp-36]
.Lt_07ED:
cmp dword ptr [ebp-36], 128
jle .Lt_07F0
.Lt_07EF:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
jmp .Lt_07EA
.Lt_07EB:
call _fb_ErrorGetFuncName
push eax
call _fb_ErrorGetModName
push eax
call _fb_ErrorGetLineNum
push eax
call _fb_ErrorGetNum
push eax
call __ZN6cpinti12interception13Erreur_FataleEiiPcS1_
add esp, 16
.Lt_07EA:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetHandler
add esp, 4
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__23IMG_RECUPERER_TAILLE_XYERPv
__ZN17_SCI_CPCDOS_OSX__23IMG_RECUPERER_TAILLE_XYERPv:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_0817
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_0810:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-28]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_GfxImageInfo
add esp, 28
test eax, eax
jne .Lt_0814
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_03DD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-20]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0813
.Lt_0814:
push 0
push 2
push offset _Lt_0815
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0813:
.Lt_0811:
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

.globl __ZN17_SCI_CPCDOS_OSX__22IMG_RECUPERER_TAILLE_XERPv
__ZN17_SCI_CPCDOS_OSX__22IMG_RECUPERER_TAILLE_XERPv:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-32], eax
push offset _Lt_081F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-36], eax
.Lt_0819:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_GfxImageInfo
add esp, 28
test eax, eax
jne .Lt_081D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_081C
.Lt_081D:
mov dword ptr [ebp-4], 0
.Lt_081C:
.Lt_081A:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-32]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__22IMG_RECUPERER_TAILLE_YERPv
__ZN17_SCI_CPCDOS_OSX__22IMG_RECUPERER_TAILLE_YERPv:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-32], eax
push offset _Lt_0827
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-36], eax
.Lt_0821:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_GfxImageInfo
add esp, 28
test eax, eax
jne .Lt_0825
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0824
.Lt_0825:
mov dword ptr [ebp-4], 0
.Lt_0824:
.Lt_0822:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-32]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__17IMG_RECUPERER_BPPERPv
__ZN17_SCI_CPCDOS_OSX__17IMG_RECUPERER_BPPERPv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_082C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0829:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_082A:
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

.globl __ZN17_SCI_CPCDOS_OSX__25IMG_CHANGER_TAILLE_RAPIDEERPvS1_iiii
__ZN17_SCI_CPCDOS_OSX__25IMG_CHANGER_TAILLE_RAPIDEERPvS1_iiii:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_0880
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_082E:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
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
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+28], eax
jge .Lt_0831
mov dword ptr [ebp-24], 1
jmp .Lt_0830
.Lt_0831:
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+28], eax
jle .Lt_0832
mov dword ptr [ebp-24], 2
jmp .Lt_0830
.Lt_0832:
mov dword ptr [ebp-24], 0
.Lt_0830:
mov eax, dword ptr [ebp+24]
cmp dword ptr [ebp+32], eax
jge .Lt_0834
mov dword ptr [ebp-28], 1
jmp .Lt_0833
.Lt_0834:
mov eax, dword ptr [ebp+24]
cmp dword ptr [ebp+32], eax
jle .Lt_0835
mov dword ptr [ebp-28], 2
jmp .Lt_0833
.Lt_0835:
mov dword ptr [ebp-28], 0
.Lt_0833:
fild dword ptr [ebp+24]
fild dword ptr [ebp+32]
fxch st(1)
fdivrp
fstp dword ptr [ebp-12]
fild dword ptr [ebp+20]
fild dword ptr [ebp+28]
fxch st(1)
fdivrp
fstp dword ptr [ebp-8]
cmp dword ptr [ebp-24], 1
jne .Lt_0837
cmp dword ptr [ebp-28], 1
jne .Lt_0839
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-56], eax
fld dword ptr [ebp-12]
fistp dword ptr [ebp-60]
mov eax, dword ptr [ebp-60]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .Lt_083D
.Lt_0840:
inc dword ptr [ebp-44]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-68], eax
fld dword ptr [ebp-8]
fistp dword ptr [ebp-72]
mov eax, dword ptr [ebp-72]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .Lt_0844
.Lt_0847:
inc dword ptr [ebp-40]
.Lt_0849:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
mov eax, dword ptr [ebp-20]
inc eax
push eax
mov eax, dword ptr [ebp-16]
inc eax
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
fild dword ptr [ebp-44]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-40]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_084A
lea eax, [.Lt_084A]
push eax
lea eax, [.Lt_0849]
push eax
push offset _Lt_03D0
push 1456
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_084A:
.Lt_0845:
mov eax, dword ptr [ebp-72]
add dword ptr [ebp-16], eax
.Lt_0844:
cmp dword ptr [ebp-76], 0
jne .Lt_084B
mov eax, dword ptr [ebp-68]
cmp dword ptr [ebp-16], eax
jge .Lt_0847
jmp .Lt_0846
.Lt_084B:
mov eax, dword ptr [ebp-68]
cmp dword ptr [ebp-16], eax
jle .Lt_0847
.Lt_0846:
.Lt_083E:
mov eax, dword ptr [ebp-60]
add dword ptr [ebp-20], eax
.Lt_083D:
cmp dword ptr [ebp-64], 0
jne .Lt_084C
mov eax, dword ptr [ebp-56]
cmp dword ptr [ebp-20], eax
jge .Lt_0840
jmp .Lt_083F
.Lt_084C:
mov eax, dword ptr [ebp-56]
cmp dword ptr [ebp-20], eax
jle .Lt_0840
.Lt_083F:
jmp .Lt_0838
.Lt_0839:
cmp dword ptr [ebp-28], 2
jne .Lt_084D
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp+32]
mov dword ptr [ebp-56], eax
jmp .Lt_084F
.Lt_0852:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-60], eax
fld dword ptr [ebp-8]
fistp dword ptr [ebp-64]
mov eax, dword ptr [ebp-64]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
jmp .Lt_0856
.Lt_0859:
inc dword ptr [ebp-40]
.Lt_085B:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
fild dword ptr [ebp-20]
fild dword ptr [ebp+32]
fild dword ptr [ebp+24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp-16]
inc eax
push eax
fild dword ptr [ebp-20]
fild dword ptr [ebp+32]
fild dword ptr [ebp+24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
fild dword ptr [ebp-20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-40]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_085C
lea eax, [.Lt_085C]
push eax
lea eax, [.Lt_085B]
push eax
push offset _Lt_03D0
push 1465
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_085C:
.Lt_0857:
mov eax, dword ptr [ebp-64]
add dword ptr [ebp-16], eax
.Lt_0856:
cmp dword ptr [ebp-68], 0
jne .Lt_085D
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-16], eax
jge .Lt_0859
jmp .Lt_0858
.Lt_085D:
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-16], eax
jle .Lt_0859
.Lt_0858:
.Lt_0850:
inc dword ptr [ebp-20]
.Lt_084F:
mov eax, dword ptr [ebp-56]
cmp dword ptr [ebp-20], eax
jle .Lt_0852
.Lt_0851:
.Lt_084D:
.Lt_0838:
jmp .Lt_0836
.Lt_0837:
cmp dword ptr [ebp-24], 2
jne .Lt_085E
cmp dword ptr [ebp-28], 2
jne .Lt_0860
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp+32]
mov dword ptr [ebp-56], eax
jmp .Lt_0862
.Lt_0865:
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-60], eax
jmp .Lt_0867
.Lt_086A:
.Lt_086C:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
fild dword ptr [ebp-20]
fild dword ptr [ebp+32]
fild dword ptr [ebp+24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fild dword ptr [ebp-16]
fild dword ptr [ebp+28]
fild dword ptr [ebp+20]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fild dword ptr [ebp-20]
fild dword ptr [ebp+32]
fild dword ptr [ebp+24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fild dword ptr [ebp-16]
fild dword ptr [ebp+28]
fild dword ptr [ebp+20]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
fild dword ptr [ebp-20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_086D
lea eax, [.Lt_086D]
push eax
lea eax, [.Lt_086C]
push eax
push offset _Lt_03D0
push 1474
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_086D:
.Lt_0868:
inc dword ptr [ebp-16]
.Lt_0867:
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-16], eax
jle .Lt_086A
.Lt_0869:
.Lt_0863:
inc dword ptr [ebp-20]
.Lt_0862:
mov eax, dword ptr [ebp-56]
cmp dword ptr [ebp-20], eax
jle .Lt_0865
.Lt_0864:
jmp .Lt_085F
.Lt_0860:
cmp dword ptr [ebp-28], 1
jne .Lt_086E
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-56], eax
fld dword ptr [ebp-12]
fistp dword ptr [ebp-60]
mov eax, dword ptr [ebp-60]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .Lt_0872
.Lt_0875:
inc dword ptr [ebp-44]
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-68], eax
jmp .Lt_0877
.Lt_087A:
.Lt_087C:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
mov eax, dword ptr [ebp-20]
inc eax
push eax
fild dword ptr [ebp-16]
fild dword ptr [ebp+28]
fild dword ptr [ebp+20]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push dword ptr [ebp-20]
fild dword ptr [ebp-16]
fild dword ptr [ebp+28]
fild dword ptr [ebp+20]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
fild dword ptr [ebp-44]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_087D
lea eax, [.Lt_087D]
push eax
lea eax, [.Lt_087C]
push eax
push offset _Lt_03D0
push 1483
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_087D:
.Lt_0878:
inc dword ptr [ebp-16]
.Lt_0877:
mov eax, dword ptr [ebp-68]
cmp dword ptr [ebp-16], eax
jle .Lt_087A
.Lt_0879:
.Lt_0873:
mov eax, dword ptr [ebp-60]
add dword ptr [ebp-20], eax
.Lt_0872:
cmp dword ptr [ebp-64], 0
jne .Lt_087E
mov eax, dword ptr [ebp-56]
cmp dword ptr [ebp-20], eax
jge .Lt_0875
jmp .Lt_0874
.Lt_087E:
mov eax, dword ptr [ebp-56]
cmp dword ptr [ebp-20], eax
jle .Lt_0875
.Lt_0874:
.Lt_086E:
.Lt_085F:
.Lt_085E:
.Lt_0836:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_082F:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN17_SCI_CPCDOS_OSX__18IMG_CHANGER_TAILLEERPvS1_iib
__ZN17_SCI_CPCDOS_OSX__18IMG_CHANGER_TAILLEERPvS1_iib:
push ebp
mov ebp, esp
sub esp, 100
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-72], eax
push offset _Lt_08E1
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-76], eax
.Lt_0887:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
push 1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEb
add esp, 8
mov dword ptr [ebp-56], eax
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN17_SCI_CPCDOS_OSX__23IMG_RECUPERER_TAILLE_XYERPv
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit
add esp, 20
push 2
push offset _Lt_0815
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_088A
mov dword ptr [ebp-4], 0
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0888
.Lt_088A:
.Lt_0889:
push 1
push offset _Lt_03DD
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-68]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
lea eax, [ebp-68]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-24]
push -1
push 1
push offset _Lt_03DD
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-68]
push eax
push 1
call _fb_StrInstr
add esp, 12
inc eax
push eax
lea eax, [ebp-68]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-28]
cmp byte ptr [ebp+28], 1
jne .Lt_088C
push 0
push dword ptr [ebp-56]
push 4294927615
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_GfxImageCreate
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
.Lt_088C:
.Lt_088B:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp+20], eax
jge .Lt_088E
mov dword ptr [ebp-32], 1
fild dword ptr [ebp-24]
mov eax, dword ptr [ebp-24]
sub eax, dword ptr [ebp+20]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fdivrp
fmul qword ptr [_Lt_08E3]
fstp dword ptr [ebp-8]
jmp .Lt_088D
.Lt_088E:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp+20], eax
jle .Lt_088F
mov dword ptr [ebp-32], 2
fild dword ptr [ebp+20]
mov eax, dword ptr [ebp+20]
sub eax, dword ptr [ebp-24]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fdivrp
fmul qword ptr [_Lt_08E3]
fstp dword ptr [ebp-8]
jmp .Lt_088D
.Lt_088F:
mov dword ptr [ebp-32], 0
.Lt_088D:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp+24], eax
jge .Lt_0891
mov dword ptr [ebp-36], 1
fild dword ptr [ebp-28]
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp+24]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fdivrp
fmul qword ptr [_Lt_08E3]
fstp dword ptr [ebp-12]
jmp .Lt_0890
.Lt_0891:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp+24], eax
jle .Lt_0892
mov dword ptr [ebp-36], 2
fild dword ptr [ebp+24]
mov eax, dword ptr [ebp+24]
sub eax, dword ptr [ebp-28]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fdivrp
fmul qword ptr [_Lt_08E3]
fstp dword ptr [ebp-12]
jmp .Lt_0890
.Lt_0892:
mov dword ptr [ebp-36], 0
.Lt_0890:
fild dword ptr [ebp-28]
fild dword ptr [ebp+24]
fxch st(1)
fdivrp
fstp dword ptr [ebp-12]
fild dword ptr [ebp-24]
fild dword ptr [ebp+20]
fxch st(1)
fdivrp
fstp dword ptr [ebp-8]
fld dword ptr [ebp-12]
fcomp dword ptr [_Lt_08E4]
fnstsw ax
test ah, 0b01000000
jz .Lt_0894
push dword ptr [_Lt_08E5]
pop dword ptr [ebp-12]
.Lt_0894:
fld dword ptr [ebp-8]
fcomp dword ptr [_Lt_08E4]
fnstsw ax
test ah, 0b01000000
jz .Lt_0896
push dword ptr [_Lt_08E5]
pop dword ptr [ebp-8]
.Lt_0896:
cmp dword ptr [ebp-32], 1
jne .Lt_0898
cmp dword ptr [ebp-36], 1
jne .Lt_089A
mov dword ptr [ebp-52], 0
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-20]
fild dword ptr [ebp-28]
fstp dword ptr [ebp-80]
push dword ptr [ebp-12]
pop dword ptr [ebp-84]
fld dword ptr [ebp-84]
fcomp dword ptr [_Lt_08E4]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .Lt_089E
.Lt_08A1:
mov dword ptr [ebp-48], 0
push dword ptr [_Lt_08E5]
pop dword ptr [ebp-16]
fild dword ptr [ebp-24]
fstp dword ptr [ebp-92]
push dword ptr [ebp-8]
pop dword ptr [ebp-96]
fld dword ptr [ebp-96]
fcomp dword ptr [_Lt_08E4]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-100], eax
jmp .Lt_08A5
.Lt_08A8:
.Lt_08AA:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-20]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-16]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-20]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-16]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
fild dword ptr [ebp-52]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-48]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_08AB
lea eax, [.Lt_08AB]
push eax
lea eax, [.Lt_08AA]
push eax
push offset _Lt_03D0
push 1584
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_08AB:
inc dword ptr [ebp-48]
.Lt_08A6:
fld dword ptr [ebp-96]
fadd dword ptr [ebp-16]
fstp dword ptr [ebp-16]
.Lt_08A5:
cmp dword ptr [ebp-100], 0
jne .Lt_08AC
fld dword ptr [ebp-16]
fcomp dword ptr [ebp-92]
fnstsw ax
sahf
jae .Lt_08A8
jmp .Lt_08A7
.Lt_08AC:
fld dword ptr [ebp-16]
fcomp dword ptr [ebp-92]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08A8
.Lt_08A7:
inc dword ptr [ebp-52]
.Lt_089F:
fld dword ptr [ebp-84]
fadd dword ptr [ebp-20]
fstp dword ptr [ebp-20]
.Lt_089E:
cmp dword ptr [ebp-88], 0
jne .Lt_08AD
fld dword ptr [ebp-20]
fcomp dword ptr [ebp-80]
fnstsw ax
sahf
jae .Lt_08A1
jmp .Lt_08A0
.Lt_08AD:
fld dword ptr [ebp-20]
fcomp dword ptr [ebp-80]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08A1
.Lt_08A0:
jmp .Lt_0899
.Lt_089A:
cmp dword ptr [ebp-36], 2
jne .Lt_08AE
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-20]
fild dword ptr [ebp+24]
fstp dword ptr [ebp-80]
jmp .Lt_08B0
.Lt_08B3:
mov dword ptr [ebp-48], 0
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-16]
fild dword ptr [ebp-24]
fstp dword ptr [ebp-84]
push dword ptr [ebp-8]
pop dword ptr [ebp-88]
fld dword ptr [ebp-88]
fcomp dword ptr [_Lt_08E4]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-92], eax
jmp .Lt_08B7
.Lt_08BA:
.Lt_08BC:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
fld dword ptr [ebp-20]
fild dword ptr [ebp+24]
fild dword ptr [ebp-28]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-16]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-20]
fild dword ptr [ebp+24]
fild dword ptr [ebp-28]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-16]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
push dword ptr [ebp-20]
fild dword ptr [ebp-48]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_08BD
lea eax, [.Lt_08BD]
push eax
lea eax, [.Lt_08BC]
push eax
push offset _Lt_03D0
push 1594
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_08BD:
inc dword ptr [ebp-48]
.Lt_08B8:
fld dword ptr [ebp-88]
fadd dword ptr [ebp-16]
fstp dword ptr [ebp-16]
.Lt_08B7:
cmp dword ptr [ebp-92], 0
jne .Lt_08BE
fld dword ptr [ebp-16]
fcomp dword ptr [ebp-84]
fnstsw ax
sahf
jae .Lt_08BA
jmp .Lt_08B9
.Lt_08BE:
fld dword ptr [ebp-16]
fcomp dword ptr [ebp-84]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08BA
.Lt_08B9:
.Lt_08B1:
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-20]
fstp dword ptr [ebp-20]
.Lt_08B0:
fld dword ptr [ebp-20]
fcomp dword ptr [ebp-80]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08B3
.Lt_08B2:
.Lt_08AE:
.Lt_0899:
jmp .Lt_0897
.Lt_0898:
cmp dword ptr [ebp-32], 2
jne .Lt_08BF
cmp dword ptr [ebp-36], 2
jne .Lt_08C1
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-20]
fild dword ptr [ebp+24]
fstp dword ptr [ebp-80]
jmp .Lt_08C3
.Lt_08C6:
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-16]
fild dword ptr [ebp+20]
fstp dword ptr [ebp-84]
jmp .Lt_08C8
.Lt_08CB:
.Lt_08CD:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
fld dword ptr [ebp-20]
fild dword ptr [ebp+24]
fild dword ptr [ebp-28]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-16]
fild dword ptr [ebp+20]
fild dword ptr [ebp-24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-20]
fild dword ptr [ebp+24]
fild dword ptr [ebp-28]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-16]
fild dword ptr [ebp+20]
fild dword ptr [ebp-24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_08CE
lea eax, [.Lt_08CE]
push eax
lea eax, [.Lt_08CD]
push eax
push offset _Lt_03D0
push 1604
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_08CE:
.Lt_08C9:
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-16]
fstp dword ptr [ebp-16]
.Lt_08C8:
fld dword ptr [ebp-16]
fcomp dword ptr [ebp-84]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08CB
.Lt_08CA:
.Lt_08C4:
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-20]
fstp dword ptr [ebp-20]
.Lt_08C3:
fld dword ptr [ebp-20]
fcomp dword ptr [ebp-80]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08C6
.Lt_08C5:
jmp .Lt_08C0
.Lt_08C1:
cmp dword ptr [ebp-36], 1
jne .Lt_08CF
mov dword ptr [ebp-52], 0
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-20]
fild dword ptr [ebp-28]
fstp dword ptr [ebp-80]
push dword ptr [ebp-12]
pop dword ptr [ebp-84]
fld dword ptr [ebp-84]
fcomp dword ptr [_Lt_08E4]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .Lt_08D3
.Lt_08D6:
push dword ptr [_Lt_08E4]
pop dword ptr [ebp-16]
fild dword ptr [ebp+20]
fstp dword ptr [ebp-92]
jmp .Lt_08D8
.Lt_08DB:
.Lt_08DD:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-20]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-16]
fild dword ptr [ebp+20]
fild dword ptr [ebp-24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
fadd qword ptr [_Lt_0882]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-20]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [ebp-16]
fild dword ptr [ebp+20]
fild dword ptr [ebp-24]
fxch st(1)
fdivrp
fxch st(1)
fdivrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
fild dword ptr [ebp-52]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _fb_GfxPut
add esp, 56
test eax, eax
je .Lt_08DE
lea eax, [.Lt_08DE]
push eax
lea eax, [.Lt_08DD]
push eax
push offset _Lt_03D0
push 1613
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_08DE:
.Lt_08D9:
fld dword ptr [_Lt_08E5]
fadd dword ptr [ebp-16]
fstp dword ptr [ebp-16]
.Lt_08D8:
fld dword ptr [ebp-16]
fcomp dword ptr [ebp-92]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08DB
.Lt_08DA:
inc dword ptr [ebp-52]
.Lt_08D4:
fld dword ptr [ebp-84]
fadd dword ptr [ebp-20]
fstp dword ptr [ebp-20]
.Lt_08D3:
cmp dword ptr [ebp-88], 0
jne .Lt_08DF
fld dword ptr [ebp-20]
fcomp dword ptr [ebp-80]
fnstsw ax
sahf
jae .Lt_08D6
jmp .Lt_08D5
.Lt_08DF:
fld dword ptr [ebp-20]
fcomp dword ptr [ebp-80]
fnstsw ax
test ah, 0b01000001
jnz .Lt_08D6
.Lt_08D5:
.Lt_08CF:
.Lt_08C0:
.Lt_08BF:
.Lt_0897:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
lea ebx, [ebp-68]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_0888:
push dword ptr [ebp-76]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-72]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__SCI:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_03D0
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_08EB
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
__ZN17CPCDOS_GUI_INIT__D1Ev:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_025E:
push offset _Lt_0170
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-60], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-64], eax
.Lt_025F:
mov eax, dword ptr [ebp+8]
add eax, 444720
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.Lt_0261:
push dword ptr [ebp-8]
call __ZN20CPCDOS_GUI__CHECKBOXD1Ev
add esp, 4
add dword ptr [ebp-8], -420
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 130
jne .Lt_0261
mov ebx, dword ptr [ebp+8]
add ebx, 390172
lea eax, [ebx]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], 0
.Lt_0264:
push dword ptr [ebp-16]
call __ZN23CPCDOS_GUI__PROGRESSBARD1Ev
add esp, 4
add dword ptr [ebp-16], -368
inc dword ptr [ebp-12]
cmp dword ptr [ebp-12], 130
jne .Lt_0264
mov eax, dword ptr [ebp+8]
add eax, 342320
lea ebx, [eax]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], 0
.Lt_0267:
push dword ptr [ebp-24]
call __ZN19CPCDOS_GUI__TEXTBOXD1Ev
add esp, 4
add dword ptr [ebp-24], -380
inc dword ptr [ebp-20]
cmp dword ptr [ebp-20], 130
jne .Lt_0267
mov ebx, dword ptr [ebp+8]
add ebx, 292976
lea eax, [ebx]
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], 0
.Lt_026A:
push dword ptr [ebp-32]
call __ZN21CPCDOS_GUI__TEXTBLOCKD1Ev
add esp, 4
add dword ptr [ebp-32], -324
inc dword ptr [ebp-28]
cmp dword ptr [ebp-28], 130
jne .Lt_026A
mov eax, dword ptr [ebp+8]
add eax, 250820
lea ebx, [eax]
mov dword ptr [ebp-40], ebx
mov dword ptr [ebp-36], 0
.Lt_026D:
push dword ptr [ebp-40]
call __ZN22CPCDOS_GUI__PICTUREBOXD1Ev
add esp, 4
add dword ptr [ebp-40], -360
inc dword ptr [ebp-36]
cmp dword ptr [ebp-36], 130
jne .Lt_026D
mov ebx, dword ptr [ebp+8]
add ebx, 203984
lea eax, [ebx]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], 0
.Lt_0270:
push dword ptr [ebp-48]
call __ZN18CPCDOS_GUI__BOUTOND1Ev
add esp, 4
add dword ptr [ebp-48], -396
inc dword ptr [ebp-44]
cmp dword ptr [ebp-44], 130
jne .Lt_0270
mov eax, dword ptr [ebp+8]
add eax, 150656
lea ebx, [eax]
mov dword ptr [ebp-56], ebx
mov dword ptr [ebp-52], 0
.Lt_0273:
push dword ptr [ebp-56]
call __ZN19CPCDOS_GUI__FENETRED1Ev
add esp, 4
add dword ptr [ebp-56], -2244
inc dword ptr [ebp-52]
cmp dword ptr [ebp-52], 66
jne .Lt_0273
mov ebx, dword ptr [ebp+8]
add ebx, 4348
lea eax, [ebx]
push eax
call __ZN20CPCDOS_GUI__CHECKBOXD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3980
lea ebx, [eax]
push ebx
call __ZN23CPCDOS_GUI__PROGRESSBARD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 3600
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__TEXTBOXD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 3276
lea ebx, [eax]
push ebx
call __ZN21CPCDOS_GUI__TEXTBLOCKD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2916
lea eax, [ebx]
push eax
call __ZN22CPCDOS_GUI__PICTUREBOXD1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2520
lea ebx, [eax]
push ebx
call __ZN18CPCDOS_GUI__BOUTOND1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 276
lea eax, [ebx]
push eax
call __ZN19CPCDOS_GUI__FENETRED1Ev
add esp, 4
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
_Lt_0017:	.ascii	"\10""\0"
.balign 4
_Lt_0018:	.ascii	"\15""\0"
.balign 4
_Lt_0019:	.ascii	"\15""\12""\0"
.balign 4
_Lt_001A:	.ascii	"\12""\0"

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
_Lt_0103:	.ascii	"\377""\0"
.balign 4
_Lt_0105:	.ascii	"\377""G\0"
.balign 4
_Lt_0107:	.ascii	"\377""O\0"
.balign 4
_Lt_0109:	.ascii	"\377""H\0"
.balign 4
_Lt_010B:	.ascii	"\377""P\0"
.balign 4
_Lt_010D:	.ascii	"\377""K\0"
.balign 4
_Lt_010F:	.ascii	"\377""M\0"
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
_Lt_0324:	.ascii	"\0"

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
_Lt_03C6:	.ascii	" * Instanciation du SCI --> Allocation offset:0x\0"
.balign 4
_Lt_03C7:	.ascii	" Taille:\0"
.balign 4
_Lt_03C8:	.ascii	"449952\0"
.balign 4
_Lt_03C9:	.ascii	" octets\0"
.balign 4
_Lt_03D0:	.ascii	"GUI\\SCI.bas\0"
.balign 4
_Lt_03D5:	.ascii	" * De-instanciation du SCI --> Desallocation offset:0x\0"
.balign 4
_Lt_03DD:	.ascii	"X\0"
.balign 4
_Lt_03DF:	.ascii	"INITIALISER_ECRAN\0"
.balign 4
_Lt_03E5:	.ascii	"[SCI] Test de la r\202solution \0"
.balign 4
_Lt_03E6:	.ascii	"x\0"
.balign 4
_Lt_03E7:	.ascii	" ...\0"
.balign 4
_Lt_03EF:	.ascii	"[SCI] Testing screen resolution \0"
.balign 4
_Lt_0403:	.ascii	"[SCI] R\202solution compatible avec votre carte graphique. Tentative d'application...\0"
.balign 4
_Lt_0405:	.ascii	"[SCI] Screen resolution is compatible with your graphique card. Attempted ...\0"
.balign 4
_Lt_040D:	.ascii	"[SCI] Resolution \0"
.balign 4
_Lt_040E:	.ascii	" appliqu\202e avec succes!\0"
.balign 4
_Lt_0416:	.ascii	"[SCI] Screen resolution \0"
.balign 4
_Lt_0417:	.ascii	" applied with succes!\0"
.balign 4
_Lt_0423:	.ascii	"[SCI] Rechargement AUTO des bitmaps en \0"
.balign 4
_Lt_0424:	.ascii	" bits...\0"
.balign 4
_Lt_0428:	.ascii	"[SCI] AUTO bitmaps reloading to \0"
.balign 4
_Lt_042C:	.ascii	"ERR_052\0"
.balign 4
_Lt_0430:	.ascii	"[SCI] ERR_052 : \0"
.balign 4
_Lt_0437:	.ascii	"[SCI] La r\202solution de \0"
.balign 4
_Lt_0438:	.ascii	" n'est pas support\202 par votre systeme.\0"
.balign 4
_Lt_0440:	.ascii	" isn't compatible with your system.\0"
.balign 4
_Lt_044A:	.ascii	"[SCI] Je ne peux pas voir plus de couleurs que vos yeux le peuvent... 32 bits est mon maximum! C'est deja pas mal non?\0"
.balign 4
_Lt_044C:	.ascii	"[SCI] I can't see more colors that your eyes can... 32 bits is my maximum! It's already good? no?\0"
.balign 4
_Lt_0451:	.ascii	"[SCI] Je ne suis pas une vielle GameBoy qui ne sait pas afficher plus de couleurs. Mon minimum est 16 bits. Un peut de couleurs dans la vie quand meme! ;-)\0"
.balign 4
_Lt_0453:	.ascii	"[SCI] I'm not a older GameBoy who can't display more colors. My minimum is 16 bits. A few colors in the live! ;-)\0"
.balign 4
_Lt_0457:	.ascii	"[SCI] Specifiez une resolution superieur ou egale a 320x200.\0"
.balign 4
_Lt_0459:	.ascii	"[SCI] Please put a screen resolution > or = at 320x200.\0"
.balign 4
_Lt_0463:	.ascii	"CPC_GUI.LOAD_IMG\0"
.balign 4
_Lt_046B:	.ascii	"CHARGER_CURSEURS\0"
.balign 4
_Lt_0470:	.ascii	"SCR_COLOR\0"
.balign 4
_Lt_0472:	.ascii	"SCR_IMG_MODE\0"
.balign 4
_Lt_0495:	.ascii	"IMG_FOND_ReSized\0"
.balign 4
_Lt_04AC:	.ascii	"AVT_082\0"
.balign 4
_Lt_04B0:	.ascii	"[SCI] \0"
.balign 4
_Lt_04B1:	.ascii	" lors du chargement du fond d'ecran (ID:\0"
.balign 4
_Lt_04B2:	.ascii	").\0"
.balign 4
_Lt_04B9:	.ascii	" during loading background screen (ID:\0"
.balign 4
_Lt_04D6:	.ascii	"CHARGER_FOND\0"
.balign 8
_Lt_04D8:	.quad	0x4000000000000000
.balign 4
_Lt_04DE:	.ascii	"CREER_MSGBOX\0"
.balign 4
_Lt_04F6:	.ascii	"THREAD_SCREEN_VIDEO\0"
.balign 4
_Lt_0500:	.ascii	"BLITTER_VIDEO\0"
.balign 4
_Lt_05CE:	.ascii	"#GUI_TXTBOX:\0"
.balign 4
_Lt_05F4:	.ascii	"KeyEnter\0"
.balign 4
_Lt_05F5:	.ascii	"->\0"
.balign 4
_Lt_05F6:	.ascii	"(1)\0"
.balign 4
_Lt_0602:	.ascii	"[SCI] Appel d'un evenement graphique (\0"
.balign 4
_Lt_0603:	.ascii	" CLE:\0"
.balign 4
_Lt_0604:	.ascii	") --> \0"
.balign 4
_Lt_0605:	.ascii	"(VALEUR) Source '\0"
.balign 4
_Lt_0606:	.ascii	"'.\0"
.balign 4
_Lt_0610:	.ascii	"[SCI] Calling graphical event (\0"
.balign 4
_Lt_0611:	.ascii	" KEY:\0"
.balign 4
_Lt_0612:	.ascii	"(VALUE) Source '\0"
.balign 4
_Lt_061C:	.ascii	"##FONCTION=:\0"
.balign 4
_Lt_061D:	.ascii	":=##/F:\0"
.balign 4
_Lt_061E:	.ascii	"(\0"
.balign 4
_Lt_061F:	.ascii	")\0"
.balign 4
_Lt_062A:	.ascii	"ERR_050\0"
.balign 4
_Lt_062E:	.ascii	"(1);\0"
.balign 4
_Lt_0631:	.ascii	"[SCI] BLACK LIST EVENT \0"
.balign 4
_Lt_063D:	.ascii	"[SCI] FIN de l'evenement graphique (\0"
.balign 4
_Lt_0647:	.ascii	"[SCI] END graphical event (\0"
.balign 4
_Lt_0651:	.ascii	"KeyPress\0"
.balign 4
_Lt_0652:	.ascii	"()\0"
.balign 4
_Lt_065E:	.ascii	"() Source '\0"
.balign 4
_Lt_067E:	.ascii	"();\0"
.balign 4
_Lt_06E7:	.ascii	"ERR_060\0"
.balign 4
_Lt_06F8:	.ascii	"THREAD__SCI\0"
.balign 8
_Lt_0712:	.quad	0x0000000000000000
.balign 4
_Lt_07D3:	.ascii	"THREAD_REFRESHGUI_ELEMENTS\0"
.balign 4
_Lt_0805:	.ascii	"THREAD_IUG_PICTUREBOX\0"
.balign 4
_Lt_0815:	.ascii	"0\0"
.balign 4
_Lt_0817:	.ascii	"IMG_RECUPERER_TAILLE_XY\0"
.balign 4
_Lt_081F:	.ascii	"IMG_RECUPERER_TAILLE_X\0"
.balign 4
_Lt_0827:	.ascii	"IMG_RECUPERER_TAILLE_Y\0"
.balign 4
_Lt_082C:	.ascii	"IMG_RECUPERER_BPP\0"
.balign 4
_Lt_0880:	.ascii	"IMG_CHANGER_TAILLE_RAPIDE\0"
.balign 8
_Lt_0882:	.quad	0x3FF0000000000000
.balign 4
_Lt_08E1:	.ascii	"IMG_CHANGER_TAILLE\0"
.balign 8
_Lt_08E3:	.quad	0x4024000000000000
.balign 4
_Lt_08E4:	.long	0x00000000
.balign 4
_Lt_08E5:	.long	0x3F800000
.balign 4
_Lt_08EB:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor__SCI
