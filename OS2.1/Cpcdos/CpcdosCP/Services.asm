	.intel_syntax noprefix

.section .text
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__20CCP_VERIFIER_SYNTAXEER8FBSTRINGi
__ZN19_SHELL_CPCDOS_OSX__20CCP_VERIFIER_SYNTAXEER8FBSTRINGi:
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-68], eax
push offset _Lt_041B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-72], eax
.Lt_03C4:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-8], 0
mov byte ptr [ebp-12], 0
mov byte ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov byte ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov byte ptr [ebp-32], 0
mov byte ptr [ebp-36], 0
mov byte ptr [ebp-40], 0
mov byte ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 0
push dword ptr [ebp+16]
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp+16], 2
jge .Lt_03C7
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_03C7:
.Lt_03C6:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-64]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03C9
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
mov dword ptr [ebp-4], 0
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_03C9:
.Lt_03C8:
.Lt_03CA:
mov dword ptr [ebp-8], 1
.Lt_03D0:
cmp dword ptr [ebp-8], 9
jne .Lt_03D2
inc dword ptr [ebp-8]
.Lt_03D2:
cmp dword ptr [ebp-8], 10
jne .Lt_03D4
inc dword ptr [ebp-8]
.Lt_03D4:
cmp dword ptr [ebp-8], 13
jne .Lt_03D6
inc dword ptr [ebp-8]
.Lt_03D6:
cmp dword ptr [ebp-8], 32
jne .Lt_03D8
inc dword ptr [ebp-8]
.Lt_03D8:
cmp dword ptr [ebp-8], 35
jne .Lt_03DA
inc dword ptr [ebp-8]
push 1
push offset _Lt_03DB
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jle .Lt_03DD
mov byte ptr [ebp-16], 1
.Lt_03DD:
.Lt_03DA:
cmp dword ptr [ebp-8], 36
jne .Lt_03DF
inc dword ptr [ebp-8]
push 1
push offset _Lt_03E0
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .Lt_03E2
mov byte ptr [ebp-24], 1
.Lt_03E2:
.Lt_03DF:
cmp dword ptr [ebp-8], 46
jne .Lt_03E4
inc dword ptr [ebp-8]
push 1
push offset _Lt_00E2
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_03E6
mov byte ptr [ebp-32], 1
.Lt_03E6:
.Lt_03E4:
cmp dword ptr [ebp-8], 47
jne .Lt_03E8
inc dword ptr [ebp-8]
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_03EA
mov byte ptr [ebp-36], 1
.Lt_03EA:
.Lt_03E8:
cmp dword ptr [ebp-8], 58
jne .Lt_03EC
inc dword ptr [ebp-8]
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_03EE
mov byte ptr [ebp-44], 1
.Lt_03EE:
.Lt_03EC:
cmp dword ptr [ebp-8], 92
jne .Lt_03F0
inc dword ptr [ebp-8]
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_03F2
mov byte ptr [ebp-40], 1
.Lt_03F2:
.Lt_03F0:
cmp dword ptr [ebp-8], 64
jne .Lt_03F4
inc dword ptr [ebp-8]
push 1
push offset _Lt_03F5
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_03F7
mov byte ptr [ebp-12], 1
.Lt_03F7:
.Lt_03F4:
cmp dword ptr [ebp-8], 209
jne .Lt_03F9
inc dword ptr [ebp-8]
.Lt_03F9:
cmp dword ptr [ebp-8], 211
jne .Lt_03FB
inc dword ptr [ebp-8]
.Lt_03FB:
cmp dword ptr [ebp-8], 254
jne .Lt_03FD
jmp .Lt_03CF
.Lt_03FD:
cmp byte ptr [ebp-12], 1
jne .Lt_03FF
cmp byte ptr [ebp-16], 1
jne .Lt_0401
cmp byte ptr [ebp-44], 1
jne .Lt_0403
jmp .Lt_03CB
.Lt_0403:
cmp byte ptr [ebp-40], 1
jne .Lt_0405
jmp .Lt_03CB
.Lt_0405:
cmp byte ptr [ebp-36], 1
jne .Lt_0407
jmp .Lt_03CB
.Lt_0407:
push 1
push offset _Lt_0396
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
push offset _Lt_03F5
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-48], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
cmp dword ptr [ebp-48], 1
jge .Lt_0409
mov eax, dword ptr [ebp-8]
add eax, 10
mov dword ptr [ebp-4], eax
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_0409:
push 0
push -1
mov eax, dword ptr [ebp-48]
sub eax, dword ptr [ebp-20]
dec eax
push eax
mov eax, dword ptr [ebp-20]
inc eax
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+760]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], 3
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
jmp .Lt_0400
.Lt_0401:
cmp byte ptr [ebp-24], 1
jne .Lt_040A
push 1
push offset _Lt_0396
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-48], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
cmp dword ptr [ebp-48], 1
jge .Lt_040C
mov eax, dword ptr [ebp-8]
add eax, 10
mov dword ptr [ebp-4], eax
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_040C:
push 0
push -1
mov eax, dword ptr [ebp-48]
sub eax, dword ptr [ebp-28]
dec eax
push eax
mov eax, dword ptr [ebp-28]
inc eax
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+760]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], 2
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_040A:
.Lt_0400:
.Lt_03FF:
.Lt_03FE:
push 0
push dword ptr [ebp-8]
push 1
call _fb_CHR
add esp, 8
push eax
call _fb_StrUcase2
add esp, 8
push eax
lea eax, [ebp-64]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .Lt_040E
jmp .Lt_03CB
.Lt_040E:
.Lt_03CE:
inc dword ptr [ebp-8]
.Lt_03CD:
cmp dword ptr [ebp-8], 255
jle .Lt_03D0
.Lt_03CF:
cmp byte ptr [ebp-44], 1
jne .Lt_0410
jmp .Lt_03CB
.Lt_0410:
cmp byte ptr [ebp-40], 1
jne .Lt_0412
jmp .Lt_03CB
.Lt_0412:
cmp byte ptr [ebp-36], 1
jne .Lt_0414
jmp .Lt_03CB
.Lt_0414:
cmp byte ptr [ebp-32], 1
jne .Lt_0416
jmp .Lt_03CB
.Lt_0416:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
cmp byte ptr [ebp-12], 1
jne .Lt_0418
mov dword ptr [ebp-4], 1
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_0418:
mov dword ptr [ebp-4], 0
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
.Lt_03CC:
.Lt_03CB:
mov eax, dword ptr [ebp-8]
add eax, 10
mov dword ptr [ebp-4], eax
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_03C5
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03C5:
push dword ptr [ebp-72]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-68]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__22RECHERCHE_FONCTION_VARE8FBSTRINGd
__ZN19_SHELL_CPCDOS_OSX__22RECHERCHE_FONCTION_VARE8FBSTRINGd:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_058D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_041D:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 7
push offset _Lt_041F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0421
push 0
push 2
push offset _Lt_0018
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0421:
push 7
push offset _Lt_0423
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0422
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0422:
push 9
push offset _Lt_0425
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0424
push 0
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0424:
push 9
push offset _Lt_0427
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0426
push 0
push 3
push offset _Lt_0019
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0426:
push 8
push offset _Lt_0429
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0428
push 0
push -1
push dword ptr [_Lt_058F]
call _fb_Rnd
add esp, 4
fmul qword ptr [_Lt_0590]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0428:
push 10
push offset _Lt_042B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_042A
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_HEURESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_042A:
push 9
push offset _Lt_042D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_042C
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_HEURESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_042C:
push 8
push offset _Lt_042F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_042E
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11GET_MINUTESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_042E:
push 11
push offset _Lt_0431
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0430
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11GET_MINUTESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0430:
push 12
push offset _Lt_0433
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0432
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11GET_MINUTESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0432:
push 8
push offset _Lt_0435
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0434
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0434:
push 11
push offset _Lt_0437
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0436
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0436:
push 12
push offset _Lt_0439
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0438
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0438:
push 12
push offset _Lt_043B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_043A
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_043A:
push 13
push offset _Lt_043D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_043C
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_043C:
push 9
push offset _Lt_043F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_043E
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__8GET_JOUREv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_043E:
push 8
push offset _Lt_0441
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0440
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__8GET_JOUREv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0440:
push 9
push offset _Lt_0443
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0442
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__8GET_MOISEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0442:
push 10
push offset _Lt_0445
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0444
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__8GET_MOISEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0444:
push 10
push offset _Lt_0447
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0446
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__9GET_ANNEEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0446:
push 9
push offset _Lt_0449
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0448
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__9GET_ANNEEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0448:
push 12
push offset _Lt_044B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_044A
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_SIECLEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_044A:
push 11
push offset _Lt_044D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_044C
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_SIECLEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_044C:
push 9
push offset _Lt_044F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_044E
push 0
push -1
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__15GET_TIME_FORMATEv
add esp, 4
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_HEUREE8FBSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0420
.Lt_044E:
push 9
push offset _Lt_0452
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0451
push 0
push -1
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__15GET_DATE_FORMATEv
add esp, 4
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__8GET_DATEE8FBSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0420
.Lt_0451:
push 10
push offset _Lt_0455
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0454
push 0
push -1
call _fb_Timer
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0454:
push 10
push offset _Lt_0457
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0456
push 0
push -1
call _fb_Timer
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0456:
push 9
push offset _Lt_0452
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0458
push 0
push -1
call _fb_Date
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0458:
push 15
push offset _Lt_045A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0459
push 0
push -1
push dword ptr [__MEMOIRE_UTIL_POURCENT]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0459:
push 13
push offset _Lt_045C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_045B
push 0
push -1
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_045B:
push 15
push offset _Lt_045E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_045D
push 0
push -1
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_045D:
push 15
push offset _Lt_0460
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_045F
push 0
push -1
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_045F:
push 15
push offset _Lt_0462
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0461
push 0
push -1
push 0
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0590]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0461:
push 15
push offset _Lt_0464
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0463
push 0
push -1
push 0
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0591]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0463:
push 15
push offset _Lt_0466
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0465
push 0
push -1
push 0
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0592]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0465:
push 15
push offset _Lt_0468
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0467
push 0
push -1
push 0
push dword ptr [__MEMOIRE__KRNL_OCCUPE]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0593]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0467:
push 14
push offset _Lt_046A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0469
push 0
push -1
push dword ptr [__MEMOIRE_LIBRE_POURCENT]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0469:
push 12
push offset _Lt_046C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_046B
push 0
push -1
push dword ptr [__MEMOIRE_ACTUEL]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_046B:
push 14
push offset _Lt_046E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_046D
push 0
push -1
push dword ptr [__MEMOIRE_ACTUEL]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_046D:
push 14
push offset _Lt_0470
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_046F
push 0
push -1
push dword ptr [__MEMOIRE_ACTUEL]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_046F:
push 14
push offset _Lt_0472
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0471
push 0
push -1
push 0
push dword ptr [__MEMOIRE_ACTUEL]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0590]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0471:
push 14
push offset _Lt_0474
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0473
push 0
push -1
push 0
push dword ptr [__MEMOIRE_ACTUEL]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0591]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0473:
push 14
push offset _Lt_0476
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0475
push 0
push -1
push 0
push dword ptr [__MEMOIRE_ACTUEL]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0592]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0475:
push 14
push offset _Lt_0478
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0477
push 0
push -1
push 0
push dword ptr [__MEMOIRE_ACTUEL]
fild qword ptr [esp]
add esp, 8
fdiv qword ptr [_Lt_0593]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0477:
push 16
push offset _Lt_047A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0479
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_CPU_POURCENTEv
add esp, 4
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0479:
push 18
push offset _Lt_047C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_047B
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618324]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_047B:
push 16
push offset _Lt_047E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_047D
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618325]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_047D:
push 16
push offset _Lt_0480
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_047F
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618326]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_047F:
push 16
push offset _Lt_0482
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0481
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618348]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0481:
push 17
push offset _Lt_0484
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0483
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618349]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0483:
push 17
push offset _Lt_0486
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0485
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618350]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0485:
push 17
push offset _Lt_0488
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0487
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618351]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0487:
push 18
push offset _Lt_048A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0489
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618352]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0489:
push 18
push offset _Lt_048C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_048B
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618353]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_048B:
push 19
push offset _Lt_048E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_048D
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618354]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_048D:
push 16
push offset _Lt_0490
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_048F
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618347]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_048F:
push 19
push offset _Lt_0492
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0491
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618355]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0491:
push 16
push offset _Lt_0494
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0493
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618331]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0493:
push 27
push offset _Lt_0496
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0495
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618345]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0495:
push 27
push offset _Lt_0498
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0497
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618346]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0497:
push 28
push offset _Lt_049A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0499
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618346]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0499:
push 22
push offset _Lt_049C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_049B
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618357]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_049B:
push 23
push offset _Lt_049E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_049D
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618357]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_049D:
push 16
push offset _Lt_04A0
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_049F
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618360]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_049F:
push 20
push offset _Lt_04A2
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A1
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618384]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04A1:
push 20
push offset _Lt_04A4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A3
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618384]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04A3:
push 18
push offset _Lt_04A6
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A5
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618388]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04A5:
push 19
push offset _Lt_04A8
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A7
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618388]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04A7:
push 15
push offset _Lt_04AA
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A9
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618392]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04A9:
push 19
push offset _Lt_04AC
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04AB
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+618396]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04AB:
push 20
push offset _Lt_04AE
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04AD
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+618396]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04AD:
push 17
push offset _Lt_04B0
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04AF
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+618408]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04AF:
push 16
push offset _Lt_04B2
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B1
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+618408]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04B1:
push 15
push offset _Lt_04B4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B3
push 0
push 2
push offset _Lt_04B5
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04B3:
push 19
push offset _Lt_04B7
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B6
push 0
push 2
push offset _Lt_04B5
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04B6:
push 17
push offset _Lt_04B9
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B8
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618335]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04B8:
push 20
push offset _Lt_04BB
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04BA
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04BA:
push 21
push offset _Lt_04BE
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04BD
push 0
push 3
push offset _Lt_04BF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04BD:
push 21
push offset _Lt_04C1
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C0
push 0
push 4
push offset _Lt_04C2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04C0:
push 12
push offset _Lt_04C4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C3
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618252]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04C3:
push 15
push offset _Lt_04C6
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C5
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618252]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04C5:
push 15
push offset _Lt_04C8
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C7
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618253]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04C7:
push 17
push offset _Lt_04CA
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C9
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618254]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04C9:
push 17
push offset _Lt_04CC
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04CB
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618255]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04CB:
push 21
push offset _Lt_04CE
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04CD
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618257]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04CD:
push 21
push offset _Lt_04D0
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04CF
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618258]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04CF:
push 18
push offset _Lt_04D2
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04D1
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618259]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04D1:
push 29
push offset _Lt_04D4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04D3
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618260]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04D3:
push 36
push offset _Lt_04D6
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04D5
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618261]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04D5:
push 22
push offset _Lt_04D8
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04D7
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+618220]
push eax
call __ZN15_INTERFACE_APM_13GET_SIGNATUREEv
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04D7:
push 20
push offset _Lt_04DA
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04D9
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+618220]
push eax
call __ZN15_INTERFACE_APM_11GET_VERSIONEv
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04D9:
push 17
push offset _Lt_04DC
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04DB
push 0
push 7
push offset _Lt_04DD
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04DB:
push 16
push offset _Lt_04DF
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04DE
push 0
push 7
push offset _Lt_04DD
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04DE:
push 12
push offset _Lt_04E1
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E0
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04E0:
push 18
push offset _Lt_04E3
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E2
push 0
push -1
call __ZN6cpinti18gestionnaire_tache25cpinti_get_nombre_threadsEv
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04E2:
push 18
push offset _Lt_04E5
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E4
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04E4:
push 21
push offset _Lt_04E7
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E6
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04E6:
push 19
push offset _Lt_04E9
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E8
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04E8:
push 23
push offset _Lt_04EB
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04EA
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04EA:
push 16
push offset _Lt_04ED
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04EC
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04EC:
push 14
push offset _Lt_04EF
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04EE
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04EE:
push 18
push offset _Lt_04F1
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04F0
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04F0:
push 17
push offset _Lt_04F3
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04F2
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04F2:
push 19
push offset _Lt_04F5
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04F4
push 0
push 21
push offset _Lt_04F6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04F4:
push 20
push offset _Lt_04F8
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04F7
push 0
push 21
push offset _Lt_04F6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04F7:
push 22
push offset _Lt_04FA
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04F9
push 0
push 24
push offset _Lt_04FB
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04F9:
push 23
push offset _Lt_04FD
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04FC
push 0
push 25
push offset _Lt_04FE
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04FC:
push 20
push offset _Lt_0500
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04FF
push 0
push 22
push offset _Lt_0501
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_04FF:
push 21
push offset _Lt_0503
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0502
push 0
push 23
push offset _Lt_0504
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0502:
push 24
push offset _Lt_0506
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0505
push 0
push 26
push offset _Lt_0507
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0505:
push 25
push offset _Lt_0509
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0508
push 0
push 27
push offset _Lt_050A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0508:
push 17
push offset _Lt_050C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_050B
push 0
push 19
push offset _Lt_050D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_050B:
push 18
push offset _Lt_050F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_050E
push 0
push 20
push offset _Lt_0510
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_050E:
push 18
push offset _Lt_0512
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0511
push 0
push 20
push offset _Lt_0513
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0511:
push 19
push offset _Lt_0515
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0514
push 0
push 21
push offset _Lt_0516
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0514:
push 19
push offset _Lt_0518
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0517
push 0
push 21
push offset _Lt_0519
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0517:
push 20
push offset _Lt_051B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_051A
push 0
push 22
push offset _Lt_051C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_051A:
push 17
push offset _Lt_051E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_051D
push 0
push 5
push offset _Lt_051F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_051D:
push 16
push offset _Lt_0521
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0520
push 0
push 40
push offset _Lt_0522
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0520:
push 16
push offset _Lt_0524
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0523
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0523:
push 19
push offset _Lt_0526
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0525
push 0
push 62
push offset _Lt_0527
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0525:
push 16
push offset _Lt_0529
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0528
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0528:
push 16
push offset _Lt_052B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_052A
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_052A:
push 16
push offset _Lt_052D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_052C
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_052C:
push 16
push offset _Lt_052F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_052E
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_052E:
push 8
push offset _Lt_0531
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0530
push 0
push -1
push offset __REPERTOIRE_DU_NOYAU_
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0530:
push 8
push offset _Lt_0533
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0532
push 0
push -1
push offset __REPERTOIRE_DU_NOYAU_
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0532:
push 13
push offset _Lt_0535
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0534
push 0
push 5
push offset _Lt_0536
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0534:
push 18
push offset _Lt_0538
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0537
push 0
push 10
push offset _Lt_0539
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0537:
push 13
push offset _Lt_053B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_053A
push 0
push 5
push offset _Lt_0536
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_053A:
push 18
push offset _Lt_053D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_053C
push 0
push 10
push offset _Lt_0539
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_053C:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_053E
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_053E:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0540
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0540:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0541
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0541:
push 15
push offset _Lt_0543
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0542
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_XEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0542:
push 15
push offset _Lt_0545
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0544
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_YEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0544:
push 16
push offset _Lt_0547
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0546
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11GET_CONS_XYEv
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0546:
push 16
push offset _Lt_0549
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0548
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_CONS_YEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_054A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0420
.Lt_0548:
push 10
push offset _Lt_054C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_054B
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_054B:
push 10
push offset _Lt_054E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_054D
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_054D:
push 11
push offset _Lt_0550
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_054F
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_RESOLUTION_XYEv
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_054F:
push 11
push offset _Lt_0552
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0551
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_YEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_054A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_RESOLUTION_XEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0420
.Lt_0551:
push 13
push offset _Lt_0554
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0553
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0553:
push 12
push offset _Lt_0556
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0555
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_ECRANMEMOIREEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0555:
push 15
push offset _Lt_0558
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0557
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_ECRANMEMOIREEv
add esp, 4
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0590]
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0557:
push 15
push offset _Lt_055A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0559
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16GET_ECRANMEMOIREEv
add esp, 4
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0590]
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
fdiv qword ptr [_Lt_0590]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0559:
push 11
push offset _Lt_055C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_055B
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11GET_ECRANHZEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_055B:
push 12
push offset _Lt_055E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_055D
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANDRVEv
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_055D:
push 12
push offset _Lt_0560
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_055F
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_ECRANPTREv
add esp, 4
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_055F:
push 13
push offset _Lt_0562
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0561
push 0
push -1
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__18GET_RESOLUTIONMODEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0561:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0563
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0563:
push 8
push offset _Lt_0565
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0564
push 0
push 64
push offset _Lt_0573
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0564:
push 14
push offset _Lt_0575
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0574
push 0
push 11
push offset _Lt_0314
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0574:
push 12
push offset _Lt_0577
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0576
push 0
push 4
push offset _Lt_0315
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0576:
push 12
push offset _Lt_0579
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0578
push 0
push 9
push offset _Lt_0316
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0578:
push 13
push offset _Lt_057B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_057A
push 0
push 18
push offset _Lt_0310
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_057A:
push 12
push offset _Lt_057D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_057C
push 0
push 4
push offset _Lt_0318
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_057C:
push 12
push offset _Lt_057F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_057E
push 0
push 4
push offset _Lt_0318
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_057E:
push 16
push offset _Lt_0581
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0580
push 0
push 4
push offset _Lt_0318
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0580:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0582
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0582:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0583
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0583:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0584
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0584:
push 7
push offset _Lt_053F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0585
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0585:
push 10
push offset _Lt_0587
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0586
push 0
push 322
push offset _Lt_03C3
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0420
.Lt_0586:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0589
push 0
push 34
push offset _Lt_058A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0588
.Lt_0589:
push 0
push 32
push offset _Lt_058B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0588:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_041E
.Lt_0420:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_041E:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
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

.globl __ZN19_SHELL_CPCDOS_OSX__25RECHERCHE_FONCTION_CPCDOSE8FBSTRINGS0_iijjjjjS0_
__ZN19_SHELL_CPCDOS_OSX__25RECHERCHE_FONCTION_CPCDOSE8FBSTRINGS0_iijjjjjS0_:
push ebp
mov ebp, esp
sub esp, 1064
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-732], eax
push offset _Lt_06E5
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-736], eax
.Lt_0594:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
add esp, 24
fstp qword ptr [ebp-20]
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-24], eax
push -1
push 1
push offset _Lt_0597
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-340]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 75
rep stosd
pop edi
pop eax
lea eax, [ebp-340]
mov dword ptr [ebp-372], eax
lea eax, [ebp-340]
mov dword ptr [ebp-368], eax
mov dword ptr [ebp-364], 300
mov dword ptr [ebp-360], 12
mov dword ptr [ebp-356], 1
mov dword ptr [ebp-352], 25
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 24
lea eax, [ebp-672]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 75
rep stosd
pop edi
pop eax
lea eax, [ebp-672]
mov dword ptr [ebp-704], eax
lea eax, [ebp-672]
mov dword ptr [ebp-700], eax
mov dword ptr [ebp-696], 300
mov dword ptr [ebp-692], 12
mov dword ptr [ebp-688], 1
mov dword ptr [ebp-684], 25
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 24
mov dword ptr [ebp-716], 0
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov eax, dword ptr [ebp-28]
dec eax
cmp dword ptr [ebp-24], eax
jne .Lt_059B
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_059D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_059F
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push 48
push offset _Lt_05A0
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_059E
.Lt_059F:
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push 48
push offset _Lt_05A2
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
.Lt_059E:
.Lt_059D:
.Lt_059C:
jmp .Lt_059A
.Lt_059B:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_05A5
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05A7
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push 50
push offset _Lt_05A8
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05A6
.Lt_05A7:
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push 47
push offset _Lt_05AA
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05A6:
.Lt_05A5:
.Lt_05A4:
mov dword ptr [ebp-740], 1
.Lt_05AF:
mov eax, dword ptr [ebp-36]
inc eax
mov dword ptr [ebp-32], eax
push 1
push offset _Lt_05B0
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-32]
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jle .Lt_05B2
push 0
push -1
mov eax, dword ptr [ebp-36]
sub eax, dword ptr [ebp-32]
push eax
push dword ptr [ebp-32]
push dword ptr [ebp+16]
call _fb_StrMid
add esp, 12
push eax
call _fb_LTRIM
add esp, 4
push eax
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-744], eax
push offset _Lt_0419
push 587
push 24
push dword ptr [ebp-744]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06E7
jmp eax
.Lt_06E7:
mov eax, dword ptr [ebp-744]
imul eax, 12
lea ebx, [ebp+eax-340]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_05B1
.Lt_05B2:
push 0
push -1
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
push dword ptr [ebp-32]
push dword ptr [ebp+16]
call _fb_StrMid
add esp, 12
push eax
call _fb_LTRIM
add esp, 4
push eax
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-744], eax
push offset _Lt_0419
push 590
push 24
push dword ptr [ebp-744]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06E8
jmp eax
.Lt_06E8:
mov eax, dword ptr [ebp-744]
imul eax, 12
lea ebx, [ebp+eax-340]
push ebx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-40], eax
jmp .Lt_05AE
.Lt_05B1:
.Lt_05AD:
inc dword ptr [ebp-740]
.Lt_05AC:
cmp dword ptr [ebp-740], 24
jle .Lt_05AF
.Lt_05AE:
.Lt_059A:
mov dword ptr [ebp-740], 0
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-744], eax
jmp .Lt_05B6
.Lt_05B9:
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
mov dword ptr [ebp-748], 0
push -1
push 1
push offset _Lt_05BA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
call _fb_StrInstrRev
add esp, 12
push 1
push offset _Lt_05BA
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jle .Lt_05BC
push 0
push -1
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
push 0
push -1
push dword ptr [ebp+48]
push -1
lea eax, [ebp-784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-784]
push eax
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
push 0
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-760], eax
push offset _Lt_0419
push 605
push 24
push dword ptr [ebp-760]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06E9
jmp eax
.Lt_06E9:
mov eax, dword ptr [ebp-760]
imul eax, 12
lea ebx, [ebp+eax-340]
push ebx
push -1
lea ebx, [ebp-772]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-772]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__13CCP_REMPL_VARE8FBSTRINGijjjjjS0_
add esp, 36
push eax
push -1
lea eax, [ebp-756]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-784]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-772]
push eax
call _fb_StrDelete
add esp, 4
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-756]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05C1
push 0
push -1
lea eax, [ebp-756]
push eax
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-788], eax
push offset _Lt_0419
push 610
push 24
push dword ptr [ebp-788]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06EA
jmp eax
.Lt_06EA:
mov eax, dword ptr [ebp-788]
imul eax, 12
lea ebx, [ebp+eax-672]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_05C0
.Lt_05C1:
push 0
push -1
push 0
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
push 0
push 8
push offset _Lt_05C3
push -1
lea eax, [ebp-796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-796]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-716]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-796]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05C6
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1064], 0
mov dword ptr [ebp-1060], 0
mov dword ptr [ebp-1056], 0
push 0
push -1
push -1
push 10
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_06F1
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_06F2
.Lt_06F1:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_06F2:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 8
push offset _Lt_05D2
push -1
push -1
push 36
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_06F3
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_06F4
.Lt_06F3:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_06F4:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
push -1
push 5
push offset _Lt_05D1
push -1
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 11
push offset _Lt_05D0
push -1
push -1
push dword ptr [ebp+44]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CF
push -1
push -1
push dword ptr [ebp+40]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CE
push -1
push -1
push dword ptr [ebp+36]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_05CD
push -1
push -1
push dword ptr [ebp+32]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_05CC
push -1
push -1
push dword ptr [ebp+28]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 12
push offset _Lt_05CB
push -1
push -1
push dword ptr [ebp+12]
push -1
push 30
push offset _Lt_05CA
push -1
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-800], eax
push offset _Lt_0419
push 614
push 24
push dword ptr [ebp-800]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06EB
jmp eax
.Lt_06EB:
mov eax, dword ptr [ebp-800]
imul eax, 12
lea ebx, [ebp+eax-340]
push ebx
push -1
push 7
push offset _Lt_05C8
push -1
push -1
lea ebx, [ebp-716]
push ebx
push 20
push offset _Lt_05C7
mov dword ptr [ebp-812], 0
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
lea ebx, [ebp-812]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-824], 0
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
lea eax, [ebp-824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-836], 0
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
lea eax, [ebp-836]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-848], 0
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
lea eax, [ebp-848]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
mov dword ptr [ebp-852], 0
lea eax, [ebp-860]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-872], 0
mov dword ptr [ebp-868], 0
mov dword ptr [ebp-864], 0
lea eax, [ebp-872]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-884], 0
mov dword ptr [ebp-880], 0
mov dword ptr [ebp-876], 0
lea eax, [ebp-884]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-896], 0
mov dword ptr [ebp-892], 0
mov dword ptr [ebp-888], 0
lea eax, [ebp-896]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-908], 0
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
lea eax, [ebp-908]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
mov dword ptr [ebp-912], 0
lea eax, [ebp-920]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-932], 0
mov dword ptr [ebp-928], 0
mov dword ptr [ebp-924], 0
lea eax, [ebp-932]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-944], 0
mov dword ptr [ebp-940], 0
mov dword ptr [ebp-936], 0
lea eax, [ebp-944]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-956], 0
mov dword ptr [ebp-952], 0
mov dword ptr [ebp-948], 0
lea eax, [ebp-956]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-968], 0
mov dword ptr [ebp-964], 0
mov dword ptr [ebp-960], 0
lea eax, [ebp-968]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-980], 0
mov dword ptr [ebp-976], 0
mov dword ptr [ebp-972], 0
lea eax, [ebp-980]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-992], 0
mov dword ptr [ebp-988], 0
mov dword ptr [ebp-984], 0
lea eax, [ebp-992]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1004], 0
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
lea eax, [ebp-1004]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1016], 0
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
lea eax, [ebp-1016]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1028], 0
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
lea eax, [ebp-1028]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
lea eax, [ebp-1040]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1052], 0
mov dword ptr [ebp-1048], 0
mov dword ptr [ebp-1044], 0
lea eax, [ebp-1052]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1064]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1064]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1064]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05C5
.Lt_05C6:
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1064], 0
mov dword ptr [ebp-1060], 0
mov dword ptr [ebp-1056], 0
push 0
push -1
push -1
push 10
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_06F5
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_06F6
.Lt_06F5:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_06F6:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 8
push offset _Lt_05D2
push -1
push -1
push 36
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_06F7
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_06F8
.Lt_06F7:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_06F8:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
push -1
push 5
push offset _Lt_05D1
push -1
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 11
push offset _Lt_05D0
push -1
push -1
push dword ptr [ebp+44]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CF
push -1
push -1
push dword ptr [ebp+40]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CE
push -1
push -1
push dword ptr [ebp+36]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_05CD
push -1
push -1
push dword ptr [ebp+32]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_05CC
push -1
push -1
push dword ptr [ebp+28]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 12
push offset _Lt_05CB
push -1
push -1
push dword ptr [ebp+12]
push -1
push 25
push offset _Lt_05EA
push -1
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-800], eax
push offset _Lt_0419
push 616
push 24
push dword ptr [ebp-800]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06EC
jmp eax
.Lt_06EC:
mov eax, dword ptr [ebp-800]
imul eax, 12
lea ebx, [ebp+eax-340]
push ebx
push -1
push 7
push offset _Lt_05C8
push -1
push -1
lea ebx, [ebp-716]
push ebx
push 20
push offset _Lt_05C7
mov dword ptr [ebp-812], 0
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
lea ebx, [ebp-812]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-824], 0
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
lea eax, [ebp-824]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-836], 0
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
lea eax, [ebp-836]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-848], 0
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
lea eax, [ebp-848]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
mov dword ptr [ebp-852], 0
lea eax, [ebp-860]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-872], 0
mov dword ptr [ebp-868], 0
mov dword ptr [ebp-864], 0
lea eax, [ebp-872]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-884], 0
mov dword ptr [ebp-880], 0
mov dword ptr [ebp-876], 0
lea eax, [ebp-884]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-896], 0
mov dword ptr [ebp-892], 0
mov dword ptr [ebp-888], 0
lea eax, [ebp-896]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-908], 0
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
lea eax, [ebp-908]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
mov dword ptr [ebp-912], 0
lea eax, [ebp-920]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-932], 0
mov dword ptr [ebp-928], 0
mov dword ptr [ebp-924], 0
lea eax, [ebp-932]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-944], 0
mov dword ptr [ebp-940], 0
mov dword ptr [ebp-936], 0
lea eax, [ebp-944]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-956], 0
mov dword ptr [ebp-952], 0
mov dword ptr [ebp-948], 0
lea eax, [ebp-956]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-968], 0
mov dword ptr [ebp-964], 0
mov dword ptr [ebp-960], 0
lea eax, [ebp-968]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-980], 0
mov dword ptr [ebp-976], 0
mov dword ptr [ebp-972], 0
lea eax, [ebp-980]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-992], 0
mov dword ptr [ebp-988], 0
mov dword ptr [ebp-984], 0
lea eax, [ebp-992]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1004], 0
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
lea eax, [ebp-1004]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1016], 0
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
lea eax, [ebp-1016]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1028], 0
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
lea eax, [ebp-1028]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
lea eax, [ebp-1040]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1052], 0
mov dword ptr [ebp-1048], 0
mov dword ptr [ebp-1044], 0
lea eax, [ebp-1052]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1064]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1064]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1064]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05C5:
.Lt_05C0:
jmp .Lt_05BB
.Lt_05BC:
push 0
push -1
mov eax, dword ptr [ebp-740]
mov dword ptr [ebp-764], eax
push offset _Lt_0419
push 621
push 24
push dword ptr [ebp-764]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06ED
jmp eax
.Lt_06ED:
mov eax, dword ptr [ebp-764]
imul eax, 12
lea ebx, [ebp+eax-340]
push ebx
push -1
mov ebx, dword ptr [ebp-740]
mov dword ptr [ebp-760], ebx
push offset _Lt_0419
push 621
push 24
push dword ptr [ebp-760]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_06EE
jmp eax
.Lt_06EE:
mov eax, dword ptr [ebp-760]
imul eax, 12
lea ebx, [ebp+eax-672]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_05BB:
lea eax, [ebp-756]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05B7:
inc dword ptr [ebp-740]
.Lt_05B6:
mov eax, dword ptr [ebp-744]
cmp dword ptr [ebp-740], eax
jle .Lt_05B9
.Lt_05B8:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0604
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0606
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
push 0
push -1
push 7
push offset _Lt_0608
push -1
push -1
push dword ptr [ebp+12]
push 36
push offset _Lt_0607
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
lea eax, [ebp-748]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
lea eax, [ebp-760]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-772]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-772]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0605
.Lt_0606:
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
push 0
push -1
push 7
push offset _Lt_0608
push -1
push -1
push dword ptr [ebp+12]
push 30
push offset _Lt_060C
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
lea eax, [ebp-748]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
lea eax, [ebp-760]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-772]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-772]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0605:
.Lt_0604:
.Lt_0603:
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-724], 0
mov dword ptr [ebp-728], 0
.Lt_0610:
.Lt_0613:
push 10
push offset _Lt_0616
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0618
cmp dword ptr [ebp-40], 2
jne .Lt_061A
push 0
push -1
lea eax, [ebp-648]
push eax
lea eax, [ebp-660]
push eax
push 1
call _fb_StrInstr
add esp, 12
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0619
.Lt_061A:
cmp dword ptr [ebp-40], 3
jne .Lt_061B
push 0
push -1
lea eax, [ebp-636]
push eax
lea eax, [ebp-648]
push eax
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_StrInstr
add esp, 12
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0619
.Lt_061B:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 2
mov dword ptr [ebp-724], 3
jmp .Lt_0611
.Lt_0619:
.Lt_0618:
.Lt_0617:
push 13
push offset _Lt_061C
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_061E
cmp dword ptr [ebp-40], 2
jne .Lt_0620
push 0
push -1
push -1
lea eax, [ebp-648]
push eax
lea eax, [ebp-660]
push eax
call _fb_StrInstrRev
add esp, 12
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_061F
.Lt_0620:
cmp dword ptr [ebp-40], 3
jne .Lt_0621
push 0
push -1
lea eax, [ebp-636]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-648]
push eax
lea eax, [ebp-660]
push eax
call _fb_StrInstrRev
add esp, 12
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_061F
.Lt_0621:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 2
mov dword ptr [ebp-724], 3
jmp .Lt_0611
.Lt_061F:
.Lt_061E:
.Lt_061D:
push 8
push offset _Lt_0622
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0624
cmp dword ptr [ebp-40], 2
jne .Lt_0626
push 0
push -1
push -1
lea eax, [ebp-648]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-660]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0625
.Lt_0626:
cmp dword ptr [ebp-40], 3
jne .Lt_0627
push 0
push -1
lea eax, [ebp-636]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-648]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-660]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0625
.Lt_0627:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 2
mov dword ptr [ebp-724], 3
jmp .Lt_0611
.Lt_0625:
.Lt_0624:
.Lt_0623:
push 9
push offset _Lt_0628
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_062A
cmp dword ptr [ebp-40], 2
jne .Lt_062C
push 0
push -1
push -1
lea eax, [ebp-648]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-660]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_062B
.Lt_062C:
cmp dword ptr [ebp-40], 3
jne .Lt_062D
push 0
push -1
lea eax, [ebp-636]
push eax
call _fb_VAL
add esp, 4
lea eax, [ebp-648]
push eax
fstp qword ptr [ebp-744]
call _fb_VAL
add esp, 4
fld qword ptr [ebp-744]
fsubrp
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-648]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-660]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_062B
.Lt_062D:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 2
mov dword ptr [ebp-724], 3
jmp .Lt_0611
.Lt_062B:
.Lt_062A:
.Lt_0629:
push 8
push offset _Lt_062E
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0630
cmp dword ptr [ebp-40], 2
jne .Lt_0632
push 0
push -1
lea eax, [ebp-660]
push eax
lea eax, [ebp-648]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_StrFill2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0631
.Lt_0632:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 2
mov dword ptr [ebp-724], 2
jmp .Lt_0611
.Lt_0631:
.Lt_0630:
.Lt_062F:
push 8
push offset _Lt_0633
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 11
push offset _Lt_0634
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0636
cmp dword ptr [ebp-40], 1
jne .Lt_0638
push 0
push -1
push -1
lea eax, [ebp-660]
push eax
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0637
.Lt_0638:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0637:
.Lt_0636:
.Lt_0635:
push 8
push offset _Lt_0639
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_063B
cmp dword ptr [ebp-40], 1
jne .Lt_063D
push 0
push -1
push 0
lea eax, [ebp-660]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_063C
.Lt_063D:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_063C:
.Lt_063B:
.Lt_063A:
push 8
push offset _Lt_042F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_063F
cmp dword ptr [ebp-40], 1
jne .Lt_0641
push 0
push -1
push 0
lea eax, [ebp-660]
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0640
.Lt_0641:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0640:
.Lt_063F:
.Lt_063E:
push 10
push offset _Lt_0642
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 9
push offset _Lt_0643
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0645
cmp dword ptr [ebp-40], 1
jne .Lt_0647
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
ftst
fnstsw ax
sahf
jz .Lt_06FD
fstp st(0)
fld1
ja .Lt_06FD
fchs
.Lt_06FD:
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0646
.Lt_0647:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0646:
.Lt_0645:
.Lt_0644:
push 8
push offset _Lt_0648
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 12
push offset _Lt_0649
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 11
push offset _Lt_064A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_064C
cmp dword ptr [ebp-40], 1
jne .Lt_064E
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
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
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_064D
.Lt_064E:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_064D:
.Lt_064C:
.Lt_064B:
push 9
push offset _Lt_064F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 9
push offset _Lt_064F
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 11
push offset _Lt_064A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0651
cmp dword ptr [ebp-40], 1
jne .Lt_0653
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
fld st(0)
frndint
fsubp
fldcw [esp]
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0652
.Lt_0653:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0652:
.Lt_0651:
.Lt_0650:
push 8
push offset _Lt_0654
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0656
cmp dword ptr [ebp-40], 1
jne .Lt_0658
push 2
push offset _Lt_0659
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-660]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_065B
push 0
push -1
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
push 0
push 3
push offset _Lt_065E
push -1
lea eax, [ebp-772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-772]
push eax
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
push 0
push 3
push offset _Lt_0659
push -1
lea eax, [ebp-760]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-760]
push eax
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push -1
push 0
lea eax, [ebp-660]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
lea eax, [ebp-660]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-772]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-760]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
.Lt_065B:
.Lt_065A:
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0657
.Lt_0658:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0657:
.Lt_0656:
.Lt_0655:
push 8
push offset _Lt_0660
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 8
push offset _Lt_0661
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 14
push offset _Lt_0662
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0664
cmp dword ptr [ebp-40], 1
jne .Lt_0666
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
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
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0665
.Lt_0666:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0665:
.Lt_0664:
.Lt_0663:
push 8
push offset _Lt_0667
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 10
push offset _Lt_0668
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_066A
cmp dword ptr [ebp-40], 1
jne .Lt_066C
push 0
push -1
push 1
lea eax, [ebp-660]
push eax
call _fb_ASC
add esp, 8
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_066B
.Lt_066C:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_066B:
.Lt_066A:
.Lt_0669:
push 8
push offset _Lt_066D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 9
push offset _Lt_066E
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 16
push offset _Lt_066F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 17
push offset _Lt_0670
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0672
cmp dword ptr [ebp-40], 1
jne .Lt_0674
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_070D
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_070E
.Lt_070D:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_070E:
push eax
push ebx
call _fb_HEX_l
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0673
.Lt_0674:
cmp dword ptr [ebp-40], 2
jne .Lt_0675
push 0
push -1
lea eax, [ebp-648]
push eax
call _fb_VAL
add esp, 4
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
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_070F
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0710
.Lt_070F:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0710:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0673
.Lt_0675:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 2
jmp .Lt_0611
.Lt_0673:
.Lt_0672:
.Lt_0671:
push 8
push offset _Lt_0676
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0678
cmp dword ptr [ebp-40], 1
jne .Lt_067A
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fabs
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0679
.Lt_067A:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0679:
.Lt_0678:
.Lt_0677:
push 8
push offset _Lt_067B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_067D
cmp dword ptr [ebp-40], 1
jne .Lt_067F
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fldln2
fxch
fyl2x
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_067E
.Lt_067F:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_067E:
.Lt_067D:
.Lt_067C:
push 8
push offset _Lt_0680
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0682
cmp dword ptr [ebp-40], 1
jne .Lt_0684
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fldl2e
fmulp st(1), st
fld st
frndint
fsub st(1), st
fxch
f2xm1
push 0x3f800000
fadd dword ptr [esp]
add esp, 4
fscale
fstp st(1)
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0683
.Lt_0684:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0683:
.Lt_0682:
.Lt_0681:
push 8
push offset _Lt_0685
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 8
push offset _Lt_0686
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0688
cmp dword ptr [ebp-40], 1
jne .Lt_068A
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fsqrt
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0689
.Lt_068A:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0689:
.Lt_0688:
.Lt_0687:
push 8
push offset _Lt_068B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_068D
cmp dword ptr [ebp-40], 1
jne .Lt_068F
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fcos
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_068E
.Lt_068F:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_068E:
.Lt_068D:
.Lt_068C:
push 9
push offset _Lt_0690
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0692
cmp dword ptr [ebp-40], 1
jne .Lt_0694
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fxch
fpatan
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0693
.Lt_0694:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0693:
.Lt_0692:
.Lt_0691:
push 8
push offset _Lt_0695
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0697
cmp dword ptr [ebp-40], 1
jne .Lt_0699
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fsin
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_0698
.Lt_0699:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_0698:
.Lt_0697:
.Lt_0696:
push 9
push offset _Lt_069A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_069C
cmp dword ptr [ebp-40], 1
jne .Lt_069E
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fpatan
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_069D
.Lt_069E:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_069D:
.Lt_069C:
.Lt_069B:
push 8
push offset _Lt_069F
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_06A1
cmp dword ptr [ebp-40], 1
jne .Lt_06A3
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fptan
fstp st(0)
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_06A2
.Lt_06A3:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_06A2:
.Lt_06A1:
.Lt_06A0:
push 9
push offset _Lt_06A4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_06A6
cmp dword ptr [ebp-40], 1
jne .Lt_06A8
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
fld1
fpatan
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_06A7
.Lt_06A8:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_06A7:
.Lt_06A6:
.Lt_06A5:
push 9
push offset _Lt_06A4
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_06AA
cmp dword ptr [ebp-40], 2
jne .Lt_06AC
push 0
push -1
lea eax, [ebp-660]
push eax
call _fb_VAL
add esp, 4
lea eax, [ebp-648]
push eax
fstp qword ptr [ebp-744]
call _fb_VAL
add esp, 4
fld qword ptr [ebp-744]
fxch
fpatan
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_06AB
.Lt_06AC:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 2
mov dword ptr [ebp-724], 2
jmp .Lt_0611
.Lt_06AB:
.Lt_06AA:
.Lt_06A9:
push 19
push offset _Lt_06AD
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 15
push offset _Lt_06AE
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_06B0
cmp dword ptr [ebp-40], 1
jne .Lt_06B2
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push -1
lea eax, [ebp-660]
push eax
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__14FICHIER_EXISTEE8FBSTRING
add esp, 8
cmp al, 1
sete al
mov byte ptr [ebp-752], al
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [ebp-752], 0
je .Lt_06B5
push 0
push 2
push offset _Lt_04B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_06B4
.Lt_06B5:
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_06B4:
jmp .Lt_0614
jmp .Lt_06B1
.Lt_06B2:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_06B1:
.Lt_06B0:
.Lt_06AF:
push 19
push offset _Lt_06B7
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 14
push offset _Lt_06B8
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_06BA
cmp dword ptr [ebp-40], 1
jne .Lt_06BC
push 0
push -1
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push -1
lea eax, [ebp-660]
push eax
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__14TAILLE_FICHIERE8FBSTRING
add esp, 8
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0614
jmp .Lt_06BB
.Lt_06BC:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_06BB:
.Lt_06BA:
.Lt_06B9:
push 17
push offset _Lt_06BE
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 14
push offset _Lt_06BF
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_06C1
cmp dword ptr [ebp-40], 1
jne .Lt_06C3
push 0
push -1
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push -1
lea eax, [ebp-660]
push eax
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__20LIRE_FICHIER_COMPLETE8FBSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0614
jmp .Lt_06C2
.Lt_06C3:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_06C2:
.Lt_06C1:
.Lt_06C0:
push 13
push offset _Lt_06C5
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_06C7
cmp dword ptr [ebp-40], 1
jne .Lt_06C9
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
lea eax, [ebp-660]
push eax
lea eax, [_CPCDOS_INSTANCE+619180]
push eax
call __ZN20_RESEAU_CPCDOS_OSX__4PINGER8FBSTRINGd
add esp, 16
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0614
jmp .Lt_06C8
.Lt_06C9:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-728], eax
mov dword ptr [ebp-720], 1
mov dword ptr [ebp-724], 1
jmp .Lt_0611
.Lt_06C8:
.Lt_06C7:
.Lt_06C6:
.Lt_0615:
.Lt_0614:
lea eax, [ebp-716]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-704]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-372]
push eax
call _fb_ArrayDestructStr
add esp, 4
jmp .Lt_0595
.Lt_0612:
.Lt_0611:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06CB
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
push 0
push -1
push 13
push offset _Lt_06D0
push -1
push -1
push dword ptr [ebp-728]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 17
push offset _Lt_06CF
push -1
push -1
push dword ptr [ebp-720]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_06CE
push -1
push -1
push dword ptr [ebp-724]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_06CD
push -1
push -1
push dword ptr [ebp+12]
push 28
push offset _Lt_06CC
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
lea eax, [ebp-748]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
lea eax, [ebp-760]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
lea eax, [ebp-772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
lea eax, [ebp-784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
lea eax, [ebp-796]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
lea eax, [ebp-808]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
mov dword ptr [ebp-812], 0
lea eax, [ebp-820]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 0
lea eax, [ebp-832]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-844]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-844]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-844]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06CA
.Lt_06CB:
push dword ptr [ebp+48]
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
push 0
push -1
push 13
push offset _Lt_06D0
push -1
push -1
push dword ptr [ebp-728]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 17
push offset _Lt_06CF
push -1
push -1
push dword ptr [ebp-720]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_06CE
push -1
push -1
push dword ptr [ebp-724]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_06CD
push -1
push -1
push dword ptr [ebp+12]
push 28
push offset _Lt_06CC
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
lea eax, [ebp-748]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
lea eax, [ebp-760]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
lea eax, [ebp-772]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
lea eax, [ebp-784]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
lea eax, [ebp-796]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
lea eax, [ebp-808]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
mov dword ptr [ebp-812], 0
lea eax, [ebp-820]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 0
lea eax, [ebp-832]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-844]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-844]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-844]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06CA:
push 0
push 9
push offset _Lt_06E3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-716]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-704]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-372]
push eax
call _fb_ArrayDestructStr
add esp, 4
.Lt_0595:
push dword ptr [ebp-736]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-732]
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

.globl __ZN19_SHELL_CPCDOS_OSX__12CCP_FUNCTIONER8FBSTRINGS1_diiS1_
__ZN19_SHELL_CPCDOS_OSX__12CCP_FUNCTIONER8FBSTRINGS1_diiS1_:
push ebp
mov ebp, esp
sub esp, 264
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-88], eax
push offset _Lt_0756
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-92], eax
.Lt_071A:
push 3
push offset _Lt_071C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
add eax, 3
mov dword ptr [ebp-16], eax
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-20], eax
push 1
push offset _Lt_0597
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
push eax
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp-24]
sub eax, dword ptr [ebp-20]
dec eax
push eax
mov eax, dword ptr [ebp-20]
inc eax
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-84]
push eax
call _fb_StrInit
add esp, 20
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+16]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_071E
mov dword ptr [ebp-96], 0
push 0
push -1
push -1
push 3
push offset _Lt_071C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-84]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
add eax, 3
push eax
lea eax, [ebp-84]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-108]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
lea eax, [ebp-108]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-112], 1
.Lt_0722:
push 0
lea eax, [ebp-108]
push eax
call _fb_StrUcase2
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-112]
mov dword ptr [ebp-116], eax
push offset _Lt_0419
push 1190
push 256
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0758
jmp eax
.Lt_0758:
mov eax, dword ptr [ebp-116]
imul eax, 12
add ebx, eax
lea eax, [ebx+127136]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_0597
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-84]
push eax
push 1
call _fb_StrInstr
add esp, 12
push 1
push offset _Lt_0596
mov esi, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-84]
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp esi, eax
setg dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
je .Lt_0725
push 0
push -1
mov esi, dword ptr [ebp+8]
lea ebx, [esi]
mov esi, dword ptr [ebp-112]
mov dword ptr [ebp-120], esi
push offset _Lt_0419
push 1191
push 256
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0759
jmp eax
.Lt_0759:
mov eax, dword ptr [ebp-120]
imul eax, 12
add ebx, eax
lea eax, [ebx+130220]
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push dword ptr [ebp+36]
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 4
push offset _Lt_0729
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
push 2
push offset _Lt_0596
push -1
push -1
lea eax, [ebp-48]
push eax
push -1
push 6
push offset _Lt_0728
push -1
push -1
push dword ptr [ebp+16]
push 6
push offset _Lt_0727
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
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-228]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-96], 1
jmp .Lt_0721
.Lt_0725:
.Lt_0724:
.Lt_0720:
inc dword ptr [ebp-112]
.Lt_071F:
cmp dword ptr [ebp-112], 256
jle .Lt_0722
.Lt_0721:
cmp dword ptr [ebp-96], 0
jne .Lt_0734
push 0
push -1
push 10
push offset _Lt_0736
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 13
push offset _Lt_0535
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__22RECHERCHE_FONCTION_VARE8FBSTRINGd
add esp, 16
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
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
push 0
push -1
push dword ptr [ebp+36]
push -1
lea eax, [ebp-264]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 4
push offset _Lt_0729
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
push 2
push offset _Lt_0596
push -1
push -1
lea eax, [ebp-48]
push eax
push -1
push 6
push offset _Lt_0728
push -1
push -1
push dword ptr [ebp+16]
push -1
push 10
push offset _Lt_0739
push -1
push -1
push dword ptr [ebp+16]
push 13
push offset _Lt_0738
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
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-252]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-264]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0734:
.Lt_0733:
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_071D
.Lt_071E:
push 0
push -1
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push dword ptr [ebp+36]
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 4
push offset _Lt_0729
push -1
push -1
lea eax, [ebp-60]
push eax
push -1
push 2
push offset _Lt_0596
push -1
push -1
lea eax, [ebp-48]
push eax
push -1
push 6
push offset _Lt_0728
push -1
push -1
push dword ptr [ebp+16]
push 6
push offset _Lt_0727
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
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__14CPCDOSCP_SHELLE8FBSTRINGdiiS0_
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
.Lt_071D:
push 16
push offset _Lt_074E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-36]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0750
push 0
push -1
push -1
push 17
lea eax, [ebp-36]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
lea eax, [ebp-72]
push eax
push -1
mov eax, dword ptr [ebp-16]
add eax, -4
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
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
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_074F
.Lt_0750:
push 0
push -1
mov eax, dword ptr [ebp-16]
add eax, -4
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
.Lt_074F:
push 8
push offset _Lt_0752
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0754
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_071B
jmp .Lt_0753
.Lt_0754:
push 0
push -1
lea eax, [ebp-84]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_071B
.Lt_0753:
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_071B:
push dword ptr [ebp-92]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-88]
call _fb_ErrorSetModName
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__25GET_DONNEESQUOTESPROP_GUIER8FBSTRING
__ZN19_SHELL_CPCDOS_OSX__25GET_DONNEESQUOTESPROP_GUIER8FBSTRING:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-40], eax
push offset _Lt_0768
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_075C:
push 1
push offset _Lt_075E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-16], eax
push 1
push offset _Lt_075F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-20], eax
push -1
push 1
push offset _Lt_075F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-16]
cmp eax, dword ptr [ebp-20]
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, dword ptr [ebp-24]
setl bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0761
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ebx
je .Lt_0763
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ebx
jge .Lt_0765
push 0
push -1
mov ebx, dword ptr [ebp-24]
sub ebx, dword ptr [ebp-20]
dec ebx
push ebx
mov ebx, dword ptr [ebp-20]
inc ebx
push ebx
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0765:
.Lt_0764:
jmp .Lt_0762
.Lt_0763:
push 0
push 8
push offset _Lt_0766
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0762:
jmp .Lt_0760
.Lt_0761:
push 0
push 8
push offset _Lt_0766
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0760:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_075D:
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
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__10CCP_CALCULER8FBSTRING
__ZN19_SHELL_CPCDOS_OSX__10CCP_CALCULER8FBSTRING:
push ebp
mov ebp, esp
sub esp, 324
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-96], eax
push offset _Lt_0826
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-100], eax
.Lt_076C:
push 3
push offset _Lt_076E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-16], eax
push 0
push -1
push -1
push 3
push offset _Lt_076E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
push 3
push offset _Lt_076E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-28]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-52]
push eax
call _fb_StrInit
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-104], 1
.Lt_0772:
push 1
push offset _Lt_0396
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jle .Lt_0774
push 0
push -1
mov eax, dword ptr [ebp-36]
dec eax
push eax
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp-36]
inc eax
push eax
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0773
.Lt_0774:
cmp dword ptr [ebp-36], 1
jne .Lt_0775
push 0
push -1
push -1
push 2
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
jmp .Lt_0773
.Lt_0775:
jmp .Lt_0771
.Lt_0773:
.Lt_0770:
inc dword ptr [ebp-104]
.Lt_076F:
cmp dword ptr [ebp-104], 1024
jle .Lt_0772
.Lt_0771:
mov dword ptr [ebp-68], 0
cmp dword ptr [ebp-32], 0
jle .Lt_0777
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-156]
push eax
call _fb_StrInit
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-172], 1
.Lt_077B:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-132], 0
push -1
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
call _fb_StrInstrRev
add esp, 12
inc eax
mov dword ptr [ebp-140], eax
push 1
push offset _Lt_0597
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp-140]
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-144], eax
cmp dword ptr [ebp-140], 0
jle .Lt_077D
cmp dword ptr [ebp-144], 0
jle .Lt_077F
push 0
push -1
mov eax, dword ptr [ebp-144]
sub eax, dword ptr [ebp-140]
push eax
push dword ptr [ebp-140]
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
.Lt_077F:
.Lt_077E:
.Lt_077D:
.Lt_077C:
push -1
lea eax, [ebp-156]
push eax
call _fb_StrLen
add esp, 8
cmp eax, 3
jge .Lt_0781
jmp .Lt_077A
.Lt_0781:
mov dword ptr [ebp-120], 0
push 1
push offset _Lt_0782
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jg .Lt_0784
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jg .Lt_0786
push 1
push offset _Lt_0787
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jg .Lt_0789
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jg .Lt_078B
mov dword ptr [ebp-120], 0
jmp .Lt_078A
.Lt_078B:
mov dword ptr [ebp-120], 4
.Lt_078A:
jmp .Lt_0788
.Lt_0789:
mov dword ptr [ebp-120], 3
.Lt_0788:
jmp .Lt_0785
.Lt_0786:
mov dword ptr [ebp-120], 2
.Lt_0785:
jmp .Lt_0783
.Lt_0784:
mov dword ptr [ebp-120], 1
.Lt_0783:
cmp dword ptr [ebp-128], -2316
je .Lt_078D
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
jmp .Lt_078C
.Lt_078D:
mov eax, dword ptr [ebp-124]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp eax, 1
jne .Lt_078F
mov dword ptr [ebp-120], 3
mov dword ptr [ebp-132], 1
.Lt_078F:
.Lt_078E:
.Lt_078C:
mov dword ptr [ebp-176], 0
push 2
push offset _Lt_0790
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0792
mov dword ptr [ebp-120], 1
mov dword ptr [ebp-176], 1
.Lt_0792:
.Lt_0791:
cmp dword ptr [ebp-40], 2
jge .Lt_0794
cmp dword ptr [ebp-68], 3
jne .Lt_0796
jmp .Lt_077A
.Lt_0796:
mov dword ptr [ebp-68], 3
push 1
push offset _Lt_0782
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp-140]
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0798
mov dword ptr [ebp-68], 1
.Lt_0798:
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp-140]
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_079A
mov dword ptr [ebp-68], 1
.Lt_079A:
push 1
push offset _Lt_0787
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp-140]
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_079C
mov dword ptr [ebp-68], 1
.Lt_079C:
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp-140]
call _fb_StrInstr
add esp, 12
mov ebx, dword ptr [ebp-140]
cmp eax, ebx
jle .Lt_079E
mov dword ptr [ebp-68], 1
.Lt_079E:
.Lt_0794:
.Lt_0793:
lea ebx, [ebp-212]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 9
rep stosd
pop edi
lea ebx, [ebp-212]
mov dword ptr [ebp-244], ebx
lea ebx, [ebp-212]
mov dword ptr [ebp-240], ebx
mov dword ptr [ebp-236], 36
mov dword ptr [ebp-232], 4
mov dword ptr [ebp-228], 1
mov dword ptr [ebp-224], 9
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 8
push 1
push offset _Lt_0782
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
mov eax, dword ptr [ebp-176]
add eax, dword ptr [ebp-40]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-208], eax
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
mov eax, dword ptr [ebp-176]
add eax, dword ptr [ebp-40]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-204], eax
push 1
push offset _Lt_0787
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
mov eax, dword ptr [ebp-176]
add eax, dword ptr [ebp-40]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-200], eax
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
mov eax, dword ptr [ebp-176]
add eax, dword ptr [ebp-40]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-196], eax
mov eax, dword ptr [ebp-40]
dec eax
push eax
push 1
push offset _Lt_0782
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-192], eax
mov eax, dword ptr [ebp-40]
dec eax
push eax
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-188], eax
mov eax, dword ptr [ebp-40]
dec eax
push eax
push 1
push offset _Lt_0787
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-184], eax
mov eax, dword ptr [ebp-40]
dec eax
push eax
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-156]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-180], eax
mov dword ptr [ebp-248], 255
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-256], 1
.Lt_07A3:
cmp dword ptr [ebp-256], 5
jge .Lt_07A5
mov eax, dword ptr [ebp-256]
mov dword ptr [ebp-300], eax
push offset _Lt_0419
push 1423
push 8
push dword ptr [ebp-300]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0828
jmp eax
.Lt_0828:
mov eax, dword ptr [ebp-300]
cmp dword ptr [ebp+eax*4-212], 0
jle .Lt_07A8
mov eax, dword ptr [ebp-256]
mov dword ptr [ebp-304], eax
push offset _Lt_0419
push 1424
push 8
push dword ptr [ebp-304]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0829
jmp eax
.Lt_0829:
mov eax, dword ptr [ebp-304]
mov ebx, dword ptr [ebp-248]
cmp dword ptr [ebp+eax*4-212], ebx
jge .Lt_07AB
mov ebx, dword ptr [ebp-256]
mov dword ptr [ebp-308], ebx
push offset _Lt_0419
push 1425
push 8
push dword ptr [ebp-308]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_082A
jmp eax
.Lt_082A:
mov eax, dword ptr [ebp-308]
mov ebx, dword ptr [ebp+eax*4-212]
mov dword ptr [ebp-248], ebx
.Lt_07AB:
.Lt_07AA:
.Lt_07A8:
.Lt_07A7:
jmp .Lt_07A4
.Lt_07A5:
mov ebx, dword ptr [ebp-256]
mov dword ptr [ebp-300], ebx
push offset _Lt_0419
push 1429
push 8
push dword ptr [ebp-300]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_082B
jmp eax
.Lt_082B:
mov eax, dword ptr [ebp-300]
cmp dword ptr [ebp+eax*4-212], 0
jle .Lt_07AF
mov eax, dword ptr [ebp-256]
mov dword ptr [ebp-304], eax
push offset _Lt_0419
push 1430
push 8
push dword ptr [ebp-304]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_082C
jmp eax
.Lt_082C:
mov eax, dword ptr [ebp-304]
mov ebx, dword ptr [ebp-252]
cmp dword ptr [ebp+eax*4-212], ebx
jle .Lt_07B2
mov ebx, dword ptr [ebp-256]
mov dword ptr [ebp-308], ebx
push offset _Lt_0419
push 1431
push 8
push dword ptr [ebp-308]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_082D
jmp eax
.Lt_082D:
mov eax, dword ptr [ebp-308]
mov ebx, dword ptr [ebp+eax*4-212]
mov dword ptr [ebp-252], ebx
.Lt_07B2:
.Lt_07B1:
.Lt_07AF:
.Lt_07AE:
.Lt_07A4:
.Lt_07A1:
inc dword ptr [ebp-256]
.Lt_07A0:
cmp dword ptr [ebp-256], 8
jle .Lt_07A3
.Lt_07A2:
mov ebx, dword ptr [ebp-248]
mov dword ptr [ebp-124], ebx
mov ebx, dword ptr [ebp-252]
mov dword ptr [ebp-128], ebx
cmp dword ptr [ebp-40], 0
jne .Lt_07B5
cmp dword ptr [ebp-124], 255
jne .Lt_07B7
cmp dword ptr [ebp-128], 0
jne .Lt_07B9
jmp .Lt_077A
.Lt_07B9:
.Lt_07B8:
.Lt_07B7:
.Lt_07B6:
.Lt_07B5:
.Lt_07B4:
cmp dword ptr [ebp-40], 0
jg .Lt_07BB
push 0
push -1
mov ebx, dword ptr [ebp-32]
dec ebx
push ebx
push 1
lea ebx, [ebp-156]
push ebx
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp-32]
add eax, 3
push eax
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_077A
.Lt_07BB:
.Lt_07BA:
push 0
push -1
lea eax, [ebp-156]
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0597
push -1
lea eax, [ebp-168]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-128], 0
jle .Lt_07BD
push 0
push -1
mov eax, dword ptr [ebp-40]
sub eax, dword ptr [ebp-128]
dec eax
push eax
mov eax, dword ptr [ebp-128]
inc eax
push eax
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07BC
.Lt_07BD:
push 0
push -1
mov eax, dword ptr [ebp-40]
dec eax
push eax
push 1
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-52]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_07BF
cmp dword ptr [ebp-196], 0
jle .Lt_07C1
mov dword ptr [ebp-128], -2316
.Lt_07C1:
.Lt_07C0:
.Lt_07BF:
.Lt_07BE:
.Lt_07BC:
lea eax, [ebp-52]
push eax
call _fb_VAL
add esp, 4
fcomp qword ptr [_Lt_082E]
fnstsw ax
test ah, 0b01000000
jz .Lt_07C3
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07C3:
cmp dword ptr [ebp-124], 255
jge .Lt_07C5
mov eax, dword ptr [ebp-40]
inc eax
cmp dword ptr [ebp-124], eax
jle .Lt_07C7
cmp dword ptr [ebp-124], 0
jle .Lt_07C9
push 0
push -1
mov eax, dword ptr [ebp-124]
sub eax, dword ptr [ebp-40]
dec eax
push eax
mov eax, dword ptr [ebp-40]
inc eax
push eax
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07C8
.Lt_07C9:
push 0
push -1
push -1
mov eax, dword ptr [ebp-40]
inc eax
push eax
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07C8:
jmp .Lt_07C6
.Lt_07C7:
push 0
push -1
push -1
mov eax, dword ptr [ebp-40]
inc eax
push eax
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07C6:
jmp .Lt_07C4
.Lt_07C5:
push 0
push -1
push -1
mov eax, dword ptr [ebp-40]
inc eax
push eax
lea eax, [ebp-156]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07C4:
cmp dword ptr [ebp-132], 1
jne .Lt_07CB
push 0
push -1
push -1
lea eax, [ebp-52]
push eax
push 2
push offset _Lt_030A
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-132], 0
.Lt_07CB:
push 5
push offset _Lt_07CD
push -1
push 0
lea eax, [ebp-52]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_07CF
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07CF:
.Lt_07CE:
push 5
push offset _Lt_07D0
push -1
push 0
lea eax, [ebp-52]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_07D2
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07D2:
.Lt_07D1:
push 5
push offset _Lt_07D3
push -1
push 0
lea eax, [ebp-52]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_07D5
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07D5:
.Lt_07D4:
push 5
push offset _Lt_07D6
push -1
push 0
lea eax, [ebp-52]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_07D8
push 0
push 2
push offset _Lt_04BC
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07D8:
.Lt_07D7:
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-156]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp eax, 1
jne .Lt_07DA
cmp dword ptr [ebp-120], 3
jne .Lt_07DC
mov dword ptr [ebp-120], 4
.Lt_07DC:
.Lt_07DA:
.Lt_07D9:
cmp dword ptr [ebp-120], 1
jne .Lt_07DE
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_VAL
add esp, 4
lea eax, [ebp-64]
push eax
fstp qword ptr [ebp-304]
call _fb_VAL
add esp, 4
fmul qword ptr [ebp-304]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07DD
.Lt_07DE:
cmp dword ptr [ebp-120], 2
jne .Lt_07DF
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_VAL
add esp, 4
lea eax, [ebp-64]
push eax
fstp qword ptr [ebp-304]
call _fb_VAL
add esp, 4
fld qword ptr [ebp-304]
fdivrp
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07DD
.Lt_07DF:
cmp dword ptr [ebp-120], 3
jne .Lt_07E0
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_VAL
add esp, 4
lea eax, [ebp-64]
push eax
fstp qword ptr [ebp-304]
call _fb_VAL
add esp, 4
fadd qword ptr [ebp-304]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07DD
.Lt_07E0:
cmp dword ptr [ebp-120], 4
jne .Lt_07E1
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_VAL
add esp, 4
lea eax, [ebp-64]
push eax
fstp qword ptr [ebp-304]
call _fb_VAL
add esp, 4
fld qword ptr [ebp-304]
fsubrp
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07E1:
.Lt_07DD:
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
cmp dword ptr [ebp-128], 0
jle .Lt_07E3
push 0
push -1
mov eax, dword ptr [ebp-128]
add eax, dword ptr [ebp-140]
dec eax
push eax
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
cmp ebx, eax
jl .Lt_07E5
push 0
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07E5:
.Lt_07E4:
jmp .Lt_07E2
.Lt_07E3:
push 0
push -1
mov eax, dword ptr [ebp-140]
dec eax
push eax
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
cmp ebx, eax
jl .Lt_07E7
push -1
push 2
push offset _Lt_07E8
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_07EA
mov dword ptr [ebp-260], 1
jmp .Lt_07E9
.Lt_07EA:
push -1
push 2
push offset _Lt_07EC
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_07EB
mov dword ptr [ebp-260], 1
push 0
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07E9
.Lt_07EB:
push -1
push 2
push offset _Lt_07EE
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_07ED
mov dword ptr [ebp-260], 1
push 0
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07E9
.Lt_07ED:
push -1
push 2
push offset _Lt_07F0
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_07EF
mov dword ptr [ebp-260], 1
push 0
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07E9
.Lt_07EF:
push -1
push 2
push offset _Lt_07F2
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_07F1
mov dword ptr [ebp-260], 1
push 0
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07F1:
.Lt_07E9:
.Lt_07E7:
.Lt_07E6:
.Lt_07E2:
cmp dword ptr [ebp-260], 0
jne .Lt_07F4
push -1
push 3
push offset _Lt_07F5
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
test eax, eax
jle .Lt_07F7
push 0
push -1
push 3
push offset _Lt_0790
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
add eax, -3
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07F7:
.Lt_07F6:
push -1
push 3
push offset _Lt_07F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
test eax, eax
jle .Lt_07FB
push 0
push -1
push 3
push offset _Lt_07FC
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
add eax, -3
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07FB:
.Lt_07FA:
push -1
push 3
push offset _Lt_07FE
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
test eax, eax
jle .Lt_0800
push 0
push -1
push 2
push offset _Lt_030A
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
add eax, -3
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0800:
.Lt_07FF:
push -1
push 3
push offset _Lt_0802
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
test eax, eax
jle .Lt_0804
push 0
push -1
push 2
push offset _Lt_0787
push -1
push -1
lea eax, [ebp-272]
push eax
call _fb_StrLen
add esp, 8
add eax, -3
push eax
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0804:
.Lt_0803:
.Lt_07F4:
.Lt_07F3:
mov dword ptr [ebp-260], 0
push 0
push -1
lea eax, [ebp-156]
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
cmp dword ptr [ebp-124], 0
jle .Lt_0807
push 1
push offset _Lt_0000
push -1
push -1
mov eax, dword ptr [ebp-144]
inc eax
push eax
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0809
push 0
push -1
push -1
mov eax, dword ptr [ebp-144]
inc eax
push eax
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-296]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0808
.Lt_0809:
push 0
push -1
push -1
push dword ptr [ebp-124]
lea eax, [ebp-168]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-296]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0808:
jmp .Lt_0806
.Lt_0807:
push 0
push -1
push -1
push dword ptr [ebp-144]
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-296]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0806:
push -1
push 2
push offset _Lt_080A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
push -1
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_080C
push -1
push 2
push offset _Lt_080A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-272]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-300], eax
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-300]
inc eax
push eax
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 3
push offset _Lt_080D
push -1
push dword ptr [ebp-300]
push 1
lea eax, [ebp-272]
push eax
call _fb_StrMid
add esp, 12
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
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
.Lt_080C:
.Lt_080B:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-296]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0811
push 2
push offset _Lt_0812
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-296]
push eax
push 1
call _fb_StrInstr
add esp, 12
push -1
lea ebx, [ebp-296]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
dec eax
cmp ebx, eax
jl .Lt_0814
push -1
push 2
push offset _Lt_0812
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-296]
push eax
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-300], eax
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-300]
inc eax
push eax
lea eax, [ebp-296]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 3
push offset _Lt_0815
push -1
push dword ptr [ebp-300]
push 1
lea eax, [ebp-296]
push eax
call _fb_StrMid
add esp, 12
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
push -1
lea eax, [ebp-296]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0814:
.Lt_0813:
.Lt_0811:
.Lt_0810:
push 5
push offset _Lt_07D6
push -1
push 0
lea eax, [ebp-272]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0819
push 1
push offset _Lt_030A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-284]
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp eax, 1
jne .Lt_081B
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
lea eax, [ebp-284]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
.Lt_081B:
.Lt_081A:
.Lt_0819:
.Lt_0818:
push 0
push -1
lea eax, [ebp-272]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-284]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-296]
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 1
push offset _Lt_0596
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_081D
push 1
push offset _Lt_0597
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_081F
push 0
push 2
push offset _Lt_0597
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_081F:
.Lt_081E:
.Lt_081D:
.Lt_081C:
lea eax, [ebp-296]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0779:
inc dword ptr [ebp-172]
.Lt_0778:
cmp dword ptr [ebp-172], 1024
jle .Lt_077B
.Lt_077A:
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0777:
.Lt_0776:
push 3
push offset _Lt_076E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-28]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0821
push 0
push -1
push -1
push 3
push offset _Lt_076E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-28]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
add eax, 3
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
push 1
push offset _Lt_0597
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-28]
push eax
push 1
call _fb_StrInstr
add esp, 12
push -1
lea ebx, [ebp-28]
push ebx
mov ebx, eax
call _fb_StrLen
add esp, 8
cmp ebx, eax
jl .Lt_0823
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen
add esp, 8
dec eax
push eax
push 1
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
.Lt_0823:
.Lt_0822:
.Lt_0821:
.Lt_0820:
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
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
lea eax, [ebp-80]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
lea eax, [ebp-80]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_076D:
push dword ptr [ebp-100]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-96]
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

.globl __ZN19_SHELL_CPCDOS_OSX__13CCP_REMPL_VARE8FBSTRINGijjjjjS0_
__ZN19_SHELL_CPCDOS_OSX__13CCP_REMPL_VARE8FBSTRINGijjjjjS0_:
push ebp
mov ebp, esp
sub esp, 508
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-180], eax
push offset _Lt_08BA
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-184], eax
.Lt_0833:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
add esp, 24
fstp qword ptr [ebp-20]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 5
rep stosd
pop edi
pop eax
lea eax, [ebp-72]
mov dword ptr [ebp-104], eax
lea eax, [ebp-72]
mov dword ptr [ebp-100], eax
mov dword ptr [ebp-96], 20
mov dword ptr [ebp-92], 4
mov dword ptr [ebp-88], 1
mov dword ptr [ebp-84], 5
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 4
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 14
push offset _Lt_0836
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-68], eax
push 14
push offset _Lt_0837
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-64], eax
push 16
push offset _Lt_0838
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-60], eax
push 16
push offset _Lt_0839
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-56], eax
push 3
push offset _Lt_083A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_083C
push 3
push offset _Lt_083A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
push 6
push offset _Lt_083D
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jge .Lt_083F
mov dword ptr [ebp-52], 1
jmp .Lt_083E
.Lt_083F:
push 3
push offset _Lt_083A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
push 5
push offset _Lt_0841
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jge .Lt_0840
mov dword ptr [ebp-52], 1
.Lt_0840:
.Lt_083E:
jmp .Lt_083B
.Lt_083C:
push 3
push offset _Lt_0843
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0842
push 3
push offset _Lt_0843
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
push 5
push offset _Lt_0841
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jge .Lt_0845
mov dword ptr [ebp-52], 1
jmp .Lt_0844
.Lt_0845:
push 3
push offset _Lt_0843
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
push 6
push offset _Lt_083D
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jge .Lt_0846
mov dword ptr [ebp-52], 1
.Lt_0846:
.Lt_0844:
.Lt_0842:
.Lt_083B:
mov dword ptr [ebp-188], 1
.Lt_084A:
mov eax, dword ptr [ebp-188]
mov dword ptr [ebp-192], eax
push offset _Lt_0419
push 1677
push 4
push dword ptr [ebp-192]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08BC
jmp eax
.Lt_08BC:
mov eax, dword ptr [ebp-192]
cmp dword ptr [ebp+eax*4-72], 5
jle .Lt_084D
mov dword ptr [ebp-48], 1
push 0
push -1
mov eax, dword ptr [ebp-188]
mov dword ptr [ebp-196], eax
push offset _Lt_0419
push 1679
push 4
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08BD
jmp eax
.Lt_08BD:
mov eax, dword ptr [ebp-196]
mov ebx, dword ptr [ebp+eax*4-72]
dec ebx
push ebx
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .Lt_0849
.Lt_084D:
.Lt_084C:
.Lt_0848:
inc dword ptr [ebp-188]
.Lt_0847:
cmp dword ptr [ebp-188], 4
jle .Lt_084A
.Lt_0849:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
.Lt_084F:
push -1
lea eax, [ebp-152]
push eax
call _fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-24]
test eax, eax
jle .Lt_0850
cmp dword ptr [ebp-36], 0
jne .Lt_0852
inc dword ptr [ebp-24]
push 0
push -1
push 1
push dword ptr [ebp-24]
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0851
.Lt_0852:
inc dword ptr [ebp-28]
push -1
lea eax, [ebp-152]
push eax
call _fb_StrLen
add esp, 8
add eax, 2
sub eax, dword ptr [ebp-28]
cmp eax, 1
jge .Lt_0854
jmp .Lt_0850
.Lt_0854:
push 0
push -1
push 1
push dword ptr [ebp-28]
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0851:
push 1
push offset _Lt_0396
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-164]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0856
cmp dword ptr [ebp-36], 0
jle .Lt_0858
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
.Lt_0858:
.Lt_0857:
.Lt_0856:
.Lt_0855:
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-164]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_085A
mov dword ptr [ebp-40], 2
.Lt_085A:
push 1
push offset _Lt_05BA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-164]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_085C
cmp dword ptr [ebp-40], 1
jne .Lt_085E
push 0
push -1
mov eax, dword ptr [ebp-24]
add eax, -2
push eax
push 1
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
inc eax
push eax
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-128]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_05BA
push -1
lea eax, [ebp-152]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-140]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-36], 0
dec dword ptr [ebp-24]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 1
jmp .Lt_085D
.Lt_085E:
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jne .Lt_0860
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-36], 1
jmp .Lt_085F
.Lt_0860:
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp-28]
dec eax
cmp dword ptr [ebp-24], eax
jne .Lt_0862
inc dword ptr [ebp-24]
jmp .Lt_0861
.Lt_0862:
inc dword ptr [ebp-32]
push 0
push -1
push 0
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-24]
dec eax
push eax
mov eax, dword ptr [ebp-24]
inc eax
push eax
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-164]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0864
push 0
push -1
mov eax, dword ptr [ebp-24]
dec eax
push eax
push 1
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp-28]
inc eax
push eax
lea eax, [ebp-152]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
push 5
push offset _Lt_0865
push -1
push 0
push 4
push 1
lea eax, [ebp-164]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0867
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 0
lea eax, [ebp-164]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__22RECHERCHE_FONCTION_VARE8FBSTRINGd
add esp, 16
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0866
.Lt_0867:
push 3
push offset _Lt_0869
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-164]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 4
push offset _Lt_086A
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
lea eax, [ebp-164]
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_086C
jmp .Lt_086B
.Lt_086C:
push 0
push -1
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
lea eax, [ebp-164]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__19GEST_VARIABLES_LIREER8FBSTRINGijjjjj
add esp, 32
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
.Lt_086B:
.Lt_0866:
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-116]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_086E
cmp dword ptr [ebp-52], 1
jne .Lt_0870
push 2
push offset _Lt_0871
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-164]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0873
push 0
push -1
lea eax, [ebp-164]
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
jmp .Lt_0872
.Lt_0873:
push 0
push -1
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 8
push offset _Lt_05C3
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp+40]
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
push 0
push -1
push -1
push 10
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_08C0
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_08C1
.Lt_08C0:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_08C1:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 8
push offset _Lt_05D2
push -1
push -1
push 36
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_08C2
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_08C3
.Lt_08C2:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_08C3:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
push -1
push 5
push offset _Lt_05D1
push -1
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 9
push offset _Lt_0878
push -1
push -1
push dword ptr [ebp+36]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CF
push -1
push -1
push dword ptr [ebp+32]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CE
push -1
push -1
push dword ptr [ebp+28]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_05CD
push -1
push -1
push dword ptr [ebp+24]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_05CC
push -1
push -1
push dword ptr [ebp+20]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0877
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0876
push -1
push 2
push offset _Lt_075F
push -1
push 2
push offset _Lt_05BA
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_05BA
push -1
push 2
push offset _Lt_075F
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-176]
push eax
push 28
push offset _Lt_0875
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
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
lea eax, [ebp-280]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
lea eax, [ebp-316]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
lea eax, [ebp-340]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
lea eax, [ebp-352]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
lea eax, [ebp-376]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
lea eax, [ebp-388]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
lea eax, [ebp-400]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
lea eax, [ebp-424]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
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
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0834
.Lt_0872:
.Lt_0870:
.Lt_086F:
cmp dword ptr [ebp-52], 0
jne .Lt_0894
push 0
push -1
push 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 8
push offset _Lt_05C3
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp+40]
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
push 0
push -1
push -1
push 10
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_08C4
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_08C5
.Lt_08C4:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_08C5:
push eax
push ebx
call _fb_HEXEx_l
add esp, 12
push eax
push -1
push 8
push offset _Lt_05D2
push -1
push -1
push 36
fld qword ptr [ebp-20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_08C6
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_08C7
.Lt_08C6:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_08C7:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
push -1
push 5
push offset _Lt_05D1
push -1
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
push 9
push offset _Lt_0878
push -1
push -1
push dword ptr [ebp+36]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CF
push -1
push -1
push dword ptr [ebp+32]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 6
push offset _Lt_05CE
push -1
push -1
push dword ptr [ebp+28]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 7
push offset _Lt_05CD
push -1
push -1
push dword ptr [ebp+24]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 5
push offset _Lt_05CC
push -1
push -1
push dword ptr [ebp+20]
call _fb_UIntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0877
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 10
push offset _Lt_0876
push -1
push 2
push offset _Lt_075F
push -1
push 2
push offset _Lt_05BA
push -1
push -1
lea eax, [ebp-164]
push eax
push -1
push 2
push offset _Lt_05BA
push -1
push 2
push offset _Lt_075F
push -1
push 2
push offset _Lt_0396
push -1
push -1
lea eax, [ebp-176]
push eax
push 28
push offset _Lt_0875
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
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
lea eax, [ebp-280]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
lea eax, [ebp-316]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
lea eax, [ebp-340]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
lea eax, [ebp-352]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
lea eax, [ebp-376]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
lea eax, [ebp-388]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
lea eax, [ebp-400]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
lea eax, [ebp-424]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
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
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0834
.Lt_0894:
.Lt_0893:
.Lt_086E:
.Lt_086D:
push 7
push offset _Lt_08B0
push -1
lea eax, [ebp-116]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_08B2
push 0
push -1
lea eax, [ebp-128]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-140]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_08B1
.Lt_08B2:
push 0
push -1
lea eax, [ebp-128]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-116]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-140]
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_08B1:
.Lt_0864:
.Lt_0863:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-48], 1
jne .Lt_08B4
mov dword ptr [ebp-24], 0
.Lt_08B4:
.Lt_08B3:
mov dword ptr [ebp-28], 0
.Lt_0861:
.Lt_085F:
.Lt_085D:
mov dword ptr [ebp-40], 0
jmp .Lt_085B
.Lt_085C:
cmp dword ptr [ebp-40], 1
jne .Lt_08B6
mov dword ptr [ebp-40], 0
.Lt_08B6:
cmp dword ptr [ebp-40], 2
jne .Lt_08B8
mov dword ptr [ebp-40], 1
.Lt_08B8:
.Lt_085B:
jmp .Lt_084F
.Lt_0850:
push 0
push -1
lea eax, [ebp-152]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
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
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0834:
push dword ptr [ebp-184]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-180]
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

.globl __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_id
__ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_id:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_08CB
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_08C8:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
mov dword ptr [ebp-12], eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
mov dword ptr [ebp-20], eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
add esp, 12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
add esp, 36
mov dword ptr [ebp-4], eax
.Lt_08C9:
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

.globl __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
__ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj:
push ebp
mov ebp, esp
sub esp, 188
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-112], eax
push offset _Lt_08CB
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-116], eax
.Lt_08CD:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push dword ptr [_Lt_082E]
push dword ptr [_Lt_082E+4]
pop dword ptr [ebp-16]
pop dword ptr [ebp-20]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
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
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_VERIFER8FBSTRINGijjjjj
add esp, 32
fstp qword ptr [ebp-20]
fld qword ptr [ebp-20]
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
fistp dword ptr [ebp-8]
cmp dword ptr [ebp-8], 0
jle .Lt_08D0
fld qword ptr [ebp-20]
fisub dword ptr [ebp-8]
fmul qword ptr [_Lt_08FD]
fistp dword ptr [ebp+20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_08CF
.Lt_08D0:
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_LIBREEi
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_08CF:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 1879
push 5
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08FE
jmp eax
.Lt_08FE:
mov eax, dword ptr [ebp-36]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebx], eax
jge .Lt_08D3
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-120], eax
push offset _Lt_0419
push 1879
push 5
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08FF
jmp eax
.Lt_08FF:
mov eax, dword ptr [ebp-120]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx], eax
.Lt_08D3:
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
push 3
push offset _Lt_08D9
push -1
push 0
push -1
push 12
push dword ptr [ebp+40]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push -1
push 8
push dword ptr [ebp+36]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push -1
push 8
push dword ptr [ebp+32]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push -1
push 4
push dword ptr [ebp+28]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push 4
push dword ptr [ebp+24]
call _fb_BINEx_i
add esp, 8
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
call _fb_StrUcase2
add esp, 8
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
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+20], 1
jne .Lt_08DD
push 0
push -1
lea eax, [ebp-32]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-120], eax
push offset _Lt_0419
push 1886
push 1024
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0900
jmp eax
.Lt_0900:
mov eax, dword ptr [ebp-120]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 1887
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0901
jmp eax
.Lt_0901:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08DC
.Lt_08DD:
cmp dword ptr [ebp+20], 2
jne .Lt_08E0
push 0
push -1
lea eax, [ebp-32]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-120], eax
push offset _Lt_0419
push 1889
push 1024
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0902
jmp eax
.Lt_0902:
mov eax, dword ptr [ebp-120]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 1890
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0903
jmp eax
.Lt_0903:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+73824]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08DC
.Lt_08E0:
cmp dword ptr [ebp+20], 3
jne .Lt_08E3
push 0
push -1
lea eax, [ebp-32]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-120], eax
push offset _Lt_0419
push 1892
push 1024
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0904
jmp eax
.Lt_0904:
mov eax, dword ptr [ebp-120]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 1893
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0905
jmp eax
.Lt_0905:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+86124]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08DC
.Lt_08E3:
cmp dword ptr [ebp+20], 4
jne .Lt_08E6
push 0
push -1
lea eax, [ebp-32]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-120], eax
push offset _Lt_0419
push 1895
push 1024
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0906
jmp eax
.Lt_0906:
mov eax, dword ptr [ebp-120]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 1896
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0907
jmp eax
.Lt_0907:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+98424]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08DC
.Lt_08E6:
cmp dword ptr [ebp+20], 5
jne .Lt_08E9
push 0
push -1
lea eax, [ebp-32]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-120], eax
push offset _Lt_0419
push 1898
push 1024
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0908
jmp eax
.Lt_0908:
mov eax, dword ptr [ebp-120]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 1899
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0909
jmp eax
.Lt_0909:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+110724]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_08DC
.Lt_08E9:
push 0
push -1
push 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 8
push offset _Lt_08EC
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
lea eax, [ebp-128]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_08EF
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 74
push offset _Lt_08F1
push -1
push -1
lea eax, [ebp-128]
push eax
push 12
push offset _Lt_08F0
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
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_08EE
.Lt_08EF:
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 77
push offset _Lt_08F6
push -1
push -1
lea eax, [ebp-128]
push eax
push 12
push offset _Lt_08F0
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
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08EE:
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08DC:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_08CE:
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

.globl __ZN19_SHELL_CPCDOS_OSX__17CCP_LIRE_VARIABLEER8FBSTRINGid
__ZN19_SHELL_CPCDOS_OSX__17CCP_LIRE_VARIABLEER8FBSTRINGid:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_090E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_090A:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
mov dword ptr [ebp-20], eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
mov dword ptr [ebp-24], eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
mov dword ptr [ebp-28], eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
add esp, 12
mov dword ptr [ebp-32], eax
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp+16]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__19GEST_VARIABLES_LIREER8FBSTRINGijjjjj
add esp, 32
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.Lt_090B:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
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

.globl __ZN19_SHELL_CPCDOS_OSX__19GEST_VARIABLES_LIREER8FBSTRINGijjjjj
__ZN19_SHELL_CPCDOS_OSX__19GEST_VARIABLES_LIREER8FBSTRINGijjjjj:
push ebp
mov ebp, esp
sub esp, 248
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-72], eax
push offset _Lt_09AD
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-76], eax
.Lt_0910:
mov byte ptr [ebp-16], 0
push 22
push offset _Lt_0912
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0914
mov byte ptr [ebp-16], 1
.Lt_0914:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
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
push offset _Lt_0915
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
jle .Lt_0917
push -1
push 1
push offset _Lt_0918
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
call _fb_StrInstrRev
add esp, 12
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-80]
cmp dword ptr [ebp-68], eax
jge .Lt_091A
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
mov eax, dword ptr [ebp-80]
sub eax, dword ptr [ebp-68]
dec eax
push eax
mov eax, dword ptr [ebp-68]
inc eax
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-92]
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_091C
push 0
push -1
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
lea eax, [ebp-92]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__19GEST_VARIABLES_LIREER8FBSTRINGijjjjj
add esp, 32
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-104]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_091E
push 0
push -1
push 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 8
push offset _Lt_05C3
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0921
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_075F
push -1
push 2
push offset _Lt_05BA
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_05BA
push -1
push 2
push offset _Lt_075F
push -1
push 13
push offset _Lt_0922
push -1
push -1
lea eax, [ebp-116]
push eax
push 12
push offset _Lt_08F0
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
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0920
.Lt_0921:
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 2
push offset _Lt_00E2
push -1
push 2
push offset _Lt_075F
push -1
push 2
push offset _Lt_05BA
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_05BA
push -1
push 2
push offset _Lt_075F
push -1
push 12
push offset _Lt_092D
push -1
push -1
lea eax, [ebp-116]
push eax
push 12
push offset _Lt_08F0
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
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0920:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_091D
.Lt_091E:
push 0
push -1
push -1
push -1
push dword ptr [ebp-80]
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
push -1
lea eax, [ebp-104]
push eax
push -1
push dword ptr [ebp-68]
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_091D:
.Lt_091C:
.Lt_091B:
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0919
.Lt_091A:
push 0
push -1
push 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push 8
push offset _Lt_093A
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_093D
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset _Lt_0940
push -1
push -1
push dword ptr [ebp+12]
push -1
push 25
push offset _Lt_093F
push -1
push -1
lea eax, [ebp-92]
push eax
push 11
push offset _Lt_093E
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
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_093C
.Lt_093D:
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-176]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 2
push offset _Lt_0940
push -1
push -1
push dword ptr [ebp+12]
push -1
push 22
push offset _Lt_0947
push -1
push -1
lea eax, [ebp-92]
push eax
push 11
push offset _Lt_093E
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
lea eax, [ebp-176]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
.Lt_093C:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0919:
.Lt_0917:
.Lt_0916:
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_VERIFER8FBSTRINGijjjjj
add esp, 32
fstp qword ptr [ebp-52]
fld qword ptr [ebp-52]
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
fistp dword ptr [ebp-20]
cmp dword ptr [ebp-20], 0
jle .Lt_094F
fld qword ptr [ebp-52]
fisub dword ptr [ebp-20]
fmul qword ptr [_Lt_08FD]
fistp dword ptr [ebp-24]
jmp .Lt_094E
.Lt_094F:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_094E:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp+16], eax
jle .Lt_0951
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_0951:
cmp dword ptr [ebp-24], 1
jne .Lt_0953
cmp dword ptr [ebp-20], 0
jle .Lt_0955
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-80], eax
push offset _Lt_0419
push 2042
push 1024
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09AF
jmp eax
.Lt_09AF:
mov eax, dword ptr [ebp-80]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-88], eax
push offset _Lt_0419
push 2044
push 1024
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B0
jmp eax
.Lt_09B0:
mov eax, dword ptr [ebp-88]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-84], eax
push offset _Lt_0419
push 2044
push 1024
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B1
jmp eax
.Lt_09B1:
mov eax, dword ptr [ebp-84]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-108], eax
push offset _Lt_0419
push 2046
push 1024
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B2
jmp eax
.Lt_09B2:
mov eax, dword ptr [ebp-108]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-104], eax
push offset _Lt_0419
push 2046
push 1024
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B3
jmp eax
.Lt_09B3:
mov eax, dword ptr [ebp-104]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
mov dword ptr [ebp-32], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-128], eax
push offset _Lt_0419
push 2048
push 1024
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B4
jmp eax
.Lt_09B4:
mov eax, dword ptr [ebp-128]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 2048
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B5
jmp eax
.Lt_09B5:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
mov dword ptr [ebp-36], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-148], eax
push offset _Lt_0419
push 2050
push 1024
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B6
jmp eax
.Lt_09B6:
mov eax, dword ptr [ebp-148]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-144], eax
push offset _Lt_0419
push 2050
push 1024
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B7
jmp eax
.Lt_09B7:
mov eax, dword ptr [ebp-144]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
mov dword ptr [ebp-40], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-168], eax
push offset _Lt_0419
push 2052
push 1024
push dword ptr [ebp-168]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B8
jmp eax
.Lt_09B8:
mov eax, dword ptr [ebp-168]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-164], eax
push offset _Lt_0419
push 2052
push 1024
push dword ptr [ebp-164]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09B9
jmp eax
.Lt_09B9:
mov eax, dword ptr [ebp-164]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
add esp, 12
mov dword ptr [ebp-44], eax
mov dword ptr [ebp+16], 1
.Lt_0955:
.Lt_0954:
jmp .Lt_0952
.Lt_0953:
cmp dword ptr [ebp-24], 2
jne .Lt_0967
cmp dword ptr [ebp-20], 0
jle .Lt_0969
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-80], eax
push offset _Lt_0419
push 2057
push 1024
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09BA
jmp eax
.Lt_09BA:
mov eax, dword ptr [ebp-80]
imul eax, 12
add ebx, eax
lea eax, [ebx+73824]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-88], eax
push offset _Lt_0419
push 2059
push 1024
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09BB
jmp eax
.Lt_09BB:
mov eax, dword ptr [ebp-88]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-84], eax
push offset _Lt_0419
push 2059
push 1024
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09BC
jmp eax
.Lt_09BC:
mov eax, dword ptr [ebp-84]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-108], eax
push offset _Lt_0419
push 2061
push 1024
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09BD
jmp eax
.Lt_09BD:
mov eax, dword ptr [ebp-108]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-104], eax
push offset _Lt_0419
push 2061
push 1024
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09BE
jmp eax
.Lt_09BE:
mov eax, dword ptr [ebp-104]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
mov dword ptr [ebp-32], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-128], eax
push offset _Lt_0419
push 2063
push 1024
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09BF
jmp eax
.Lt_09BF:
mov eax, dword ptr [ebp-128]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 2063
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C0
jmp eax
.Lt_09C0:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
mov dword ptr [ebp-36], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-148], eax
push offset _Lt_0419
push 2065
push 1024
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C1
jmp eax
.Lt_09C1:
mov eax, dword ptr [ebp-148]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-144], eax
push offset _Lt_0419
push 2065
push 1024
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C2
jmp eax
.Lt_09C2:
mov eax, dword ptr [ebp-144]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
mov dword ptr [ebp-40], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-168], eax
push offset _Lt_0419
push 2067
push 1024
push dword ptr [ebp-168]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C3
jmp eax
.Lt_09C3:
mov eax, dword ptr [ebp-168]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-164], eax
push offset _Lt_0419
push 2067
push 1024
push dword ptr [ebp-164]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C4
jmp eax
.Lt_09C4:
mov eax, dword ptr [ebp-164]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
add esp, 12
mov dword ptr [ebp-44], eax
mov dword ptr [ebp+16], 2
.Lt_0969:
.Lt_0968:
jmp .Lt_0952
.Lt_0967:
cmp dword ptr [ebp-24], 3
jne .Lt_097A
cmp dword ptr [ebp-20], 0
jle .Lt_097C
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-80], eax
push offset _Lt_0419
push 2072
push 1024
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C5
jmp eax
.Lt_09C5:
mov eax, dword ptr [ebp-80]
imul eax, 12
add ebx, eax
lea eax, [ebx+86124]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-88], eax
push offset _Lt_0419
push 2074
push 1024
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C6
jmp eax
.Lt_09C6:
mov eax, dword ptr [ebp-88]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-84], eax
push offset _Lt_0419
push 2074
push 1024
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C7
jmp eax
.Lt_09C7:
mov eax, dword ptr [ebp-84]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-108], eax
push offset _Lt_0419
push 2076
push 1024
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C8
jmp eax
.Lt_09C8:
mov eax, dword ptr [ebp-108]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-104], eax
push offset _Lt_0419
push 2076
push 1024
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09C9
jmp eax
.Lt_09C9:
mov eax, dword ptr [ebp-104]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
mov dword ptr [ebp-32], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-128], eax
push offset _Lt_0419
push 2078
push 1024
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09CA
jmp eax
.Lt_09CA:
mov eax, dword ptr [ebp-128]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-124], eax
push offset _Lt_0419
push 2078
push 1024
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09CB
jmp eax
.Lt_09CB:
mov eax, dword ptr [ebp-124]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp+16], 3
.Lt_097C:
.Lt_097B:
jmp .Lt_0952
.Lt_097A:
cmp dword ptr [ebp-24], 4
jne .Lt_0987
cmp dword ptr [ebp-20], 0
jle .Lt_0989
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-80], eax
push offset _Lt_0419
push 2087
push 1024
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09CC
jmp eax
.Lt_09CC:
mov eax, dword ptr [ebp-80]
imul eax, 12
add ebx, eax
lea eax, [ebx+98424]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-88], eax
push offset _Lt_0419
push 2089
push 1024
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09CD
jmp eax
.Lt_09CD:
mov eax, dword ptr [ebp-88]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-84], eax
push offset _Lt_0419
push 2089
push 1024
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09CE
jmp eax
.Lt_09CE:
mov eax, dword ptr [ebp-84]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-108], eax
push offset _Lt_0419
push 2091
push 1024
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09CF
jmp eax
.Lt_09CF:
mov eax, dword ptr [ebp-108]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-104], eax
push offset _Lt_0419
push 2091
push 1024
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09D0
jmp eax
.Lt_09D0:
mov eax, dword ptr [ebp-104]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp+16], 4
.Lt_0989:
.Lt_0988:
jmp .Lt_0952
.Lt_0987:
cmp dword ptr [ebp-24], 5
jne .Lt_0991
cmp dword ptr [ebp-20], 0
jle .Lt_0993
push 0
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-80], eax
push offset _Lt_0419
push 2103
push 1024
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09D1
jmp eax
.Lt_09D1:
mov eax, dword ptr [ebp-80]
imul eax, 12
add ebx, eax
lea eax, [ebx+110724]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 2
push offset _Lt_08D9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-88], eax
push offset _Lt_0419
push 2105
push 1024
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09D2
jmp eax
.Lt_09D2:
mov eax, dword ptr [ebp-88]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-84], eax
push offset _Lt_0419
push 2105
push 1024
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09D3
jmp eax
.Lt_09D3:
mov eax, dword ptr [ebp-84]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0957
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp+16], 5
.Lt_0993:
.Lt_0992:
.Lt_0991:
.Lt_0952:
cmp dword ptr [ebp-20], 0
jle .Lt_0999
cmp dword ptr [ebp+16], 5
jne .Lt_099B
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_099B:
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp-28], eax
jne .Lt_099D
cmp dword ptr [ebp+16], 4
jne .Lt_099F
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_099F:
mov eax, dword ptr [ebp+24]
cmp dword ptr [ebp-32], eax
jne .Lt_09A1
cmp dword ptr [ebp+16], 3
jne .Lt_09A3
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_09A3:
mov eax, dword ptr [ebp+28]
cmp dword ptr [ebp-36], eax
jne .Lt_09A5
cmp dword ptr [ebp+16], 2
jne .Lt_09A7
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_09A7:
mov eax, dword ptr [ebp+32]
cmp dword ptr [ebp-40], eax
jne .Lt_09A9
mov eax, dword ptr [ebp+36]
cmp dword ptr [ebp-44], eax
jne .Lt_09AB
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0911
.Lt_09AB:
jmp .Lt_09A8
.Lt_09A9:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_09A8:
jmp .Lt_09A4
.Lt_09A5:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_09A4:
jmp .Lt_09A0
.Lt_09A1:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_09A0:
jmp .Lt_099C
.Lt_099D:
push 0
push 24
push offset _Lt_0373
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_099C:
.Lt_0999:
.Lt_0998:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0911:
push dword ptr [ebp-76]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-72]
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

.globl __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_SUPPRER8FBSTRINGijjjjj
__ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_SUPPRER8FBSTRINGijjjjj:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-24], eax
push offset _Lt_09F8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-28], eax
.Lt_09D4:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
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
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_09D7
cmp dword ptr [ebp+16], 0
jne .Lt_09D9
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 1
.Lt_09DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp dword ptr [ebp-20], ebx
jle .Lt_09DF
jmp .Lt_09DC
.Lt_09DF:
push 3
push offset _Lt_08D9
push -1
push dword ptr [ebp+32]
call _fb_BIN_i
add esp, 4
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2180
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09FA
jmp eax
.Lt_09FA:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_09E3
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-48], eax
push offset _Lt_0419
push 2181
push 1024
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09FB
jmp eax
.Lt_09FB:
mov eax, dword ptr [ebp-48]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], 1
.Lt_09E3:
.Lt_09E2:
.Lt_09DB:
inc dword ptr [ebp-20]
.Lt_09DA:
cmp dword ptr [ebp-20], 1024
jle .Lt_09DD
.Lt_09DC:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
jmp .Lt_09D5
.Lt_09D9:
.Lt_09D8:
.Lt_09D7:
.Lt_09D6:
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_VERIFER8FBSTRINGijjjjj
add esp, 32
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
fistp dword ptr [ebp-8]
cmp dword ptr [ebp-8], 0
jle .Lt_09E6
cmp dword ptr [ebp+16], 1
jne .Lt_09E8
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2195
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09FC
jmp eax
.Lt_09FC:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2196
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09FD
jmp eax
.Lt_09FD:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
jmp .Lt_09E7
.Lt_09E8:
cmp dword ptr [ebp+16], 2
jne .Lt_09EB
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2199
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09FE
jmp eax
.Lt_09FE:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2200
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_09FF
jmp eax
.Lt_09FF:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+73824]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
jmp .Lt_09E7
.Lt_09EB:
cmp dword ptr [ebp+16], 3
jne .Lt_09EE
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2203
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A00
jmp eax
.Lt_0A00:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2204
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A01
jmp eax
.Lt_0A01:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+86124]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
jmp .Lt_09E7
.Lt_09EE:
cmp dword ptr [ebp+16], 4
jne .Lt_09F1
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2207
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A02
jmp eax
.Lt_0A02:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2208
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A03
jmp eax
.Lt_0A03:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+98424]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
jmp .Lt_09E7
.Lt_09F1:
cmp dword ptr [ebp+16], 5
jne .Lt_09F4
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2211
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A04
jmp eax
.Lt_0A04:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2212
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A05
jmp eax
.Lt_0A05:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+110724]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
.Lt_09F4:
.Lt_09E7:
mov dword ptr [ebp-4], 1
jmp .Lt_09E5
.Lt_09E6:
mov dword ptr [ebp-4], 0
.Lt_09E5:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_09D5:
push dword ptr [ebp-28]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-24]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__22GEST_VARIABLES_GRAPNIVER8FBSTRINGiijjjjj
__ZN19_SHELL_CPCDOS_OSX__22GEST_VARIABLES_GRAPNIVER8FBSTRINGiijjjjj:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-24], eax
push offset _Lt_0A27
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-28], eax
.Lt_0A06:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
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
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_VERIFER8FBSTRINGijjjjj
add esp, 32
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
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
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
fistp dword ptr [ebp-16]
cmp dword ptr [ebp-16], 0
jle .Lt_0A09
fld qword ptr [ebp-12]
fisub dword ptr [ebp-16]
fmul qword ptr [_Lt_08FD]
fistp dword ptr [ebp+16]
.Lt_0A09:
cmp dword ptr [ebp-16], 0
jle .Lt_0A0B
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 1
jne .Lt_0A0D
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2249
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A29
jmp eax
.Lt_0A29:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2248
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A2A
jmp eax
.Lt_0A2A:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-40], eax
push offset _Lt_0419
push 2251
push 1024
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A2B
jmp eax
.Lt_0A2B:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-44], eax
push offset _Lt_0419
push 2252
push 1024
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A2C
jmp eax
.Lt_0A2C:
mov eax, dword ptr [ebp-44]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0A0C
.Lt_0A0D:
cmp dword ptr [ebp+16], 2
jne .Lt_0A12
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2255
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A2D
jmp eax
.Lt_0A2D:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2254
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A2E
jmp eax
.Lt_0A2E:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-40], eax
push offset _Lt_0419
push 2257
push 1024
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A2F
jmp eax
.Lt_0A2F:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-44], eax
push offset _Lt_0419
push 2258
push 1024
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A30
jmp eax
.Lt_0A30:
mov eax, dword ptr [ebp-44]
imul eax, 12
add ebx, eax
lea eax, [ebx+73824]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0A0C
.Lt_0A12:
cmp dword ptr [ebp+16], 3
jne .Lt_0A17
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2261
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A31
jmp eax
.Lt_0A31:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2260
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A32
jmp eax
.Lt_0A32:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-40], eax
push offset _Lt_0419
push 2263
push 1024
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A33
jmp eax
.Lt_0A33:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-44], eax
push offset _Lt_0419
push 2264
push 1024
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A34
jmp eax
.Lt_0A34:
mov eax, dword ptr [ebp-44]
imul eax, 12
add ebx, eax
lea eax, [ebx+86124]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0A0C
.Lt_0A17:
cmp dword ptr [ebp+16], 4
jne .Lt_0A1C
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2267
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A35
jmp eax
.Lt_0A35:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2266
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A36
jmp eax
.Lt_0A36:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-40], eax
push offset _Lt_0419
push 2269
push 1024
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A37
jmp eax
.Lt_0A37:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-44], eax
push offset _Lt_0419
push 2270
push 1024
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A38
jmp eax
.Lt_0A38:
mov eax, dword ptr [ebp-44]
imul eax, 12
add ebx, eax
lea eax, [ebx+98424]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0A0C
.Lt_0A1C:
cmp dword ptr [ebp+16], 5
jne .Lt_0A21
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-36], eax
push offset _Lt_0419
push 2273
push 1024
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A39
jmp eax
.Lt_0A39:
mov eax, dword ptr [ebp-36]
imul eax, 12
add ebx, eax
lea eax, [ebx+61524]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
push offset _Lt_0419
push 2272
push 1024
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A3A
jmp eax
.Lt_0A3A:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
push dword ptr [ebp+8]
call __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_ENREGER8FBSTRINGS1_ijjjjj
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-40], eax
push offset _Lt_0419
push 2275
push 1024
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A3B
jmp eax
.Lt_0A3B:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-44], eax
push offset _Lt_0419
push 2276
push 1024
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A3C
jmp eax
.Lt_0A3C:
mov eax, dword ptr [ebp-44]
imul eax, 12
add ebx, eax
lea eax, [ebx+110724]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0A21:
.Lt_0A0C:
jmp .Lt_0A0A
.Lt_0A0B:
mov dword ptr [ebp-4], 0
.Lt_0A0A:
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_0A07:
push dword ptr [ebp-28]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-24]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_VERIFER8FBSTRINGijjjjj
__ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_VERIFER8FBSTRINGijjjjj:
push ebp
mov ebp, esp
sub esp, 160
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-116], eax
push offset _Lt_0A8D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-120], eax
.Lt_0A3D:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
push 3
push offset _Lt_08D9
push -1
push -1
push 12
push dword ptr [ebp+36]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push -1
push 8
push dword ptr [ebp+32]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push -1
push 8
push dword ptr [ebp+28]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push -1
push 4
push dword ptr [ebp+24]
call _fb_BINEx_i
add esp, 8
push eax
push -1
push 4
push dword ptr [ebp+20]
call _fb_BINEx_i
add esp, 8
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
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-124], 0
.Lt_0A48:
mov eax, 5
sub eax, dword ptr [ebp-124]
mov dword ptr [ebp+16], eax
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 1
jne .Lt_0A4A
mov dword ptr [ebp-12], 1
.Lt_0A4E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-128], eax
push offset _Lt_0419
push 2319
push 5
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A8F
jmp eax
.Lt_0A8F:
mov eax, dword ptr [ebp-128]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp dword ptr [ebp-12], eax
jle .Lt_0A51
jmp .Lt_0A4D
.Lt_0A51:
push -1
lea eax, [ebp-112]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-132], eax
push offset _Lt_0419
push 2321
push 1024
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A90
jmp eax
.Lt_0A90:
mov eax, dword ptr [ebp-132]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0A54
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0A4D
.Lt_0A54:
.Lt_0A53:
.Lt_0A4C:
inc dword ptr [ebp-12]
.Lt_0A4B:
cmp dword ptr [ebp-12], 1024
jle .Lt_0A4E
.Lt_0A4D:
jmp .Lt_0A49
.Lt_0A4A:
cmp dword ptr [ebp+16], 2
jne .Lt_0A55
mov dword ptr [ebp-12], 1
.Lt_0A59:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-128], eax
push offset _Lt_0419
push 2330
push 5
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A91
jmp eax
.Lt_0A91:
mov eax, dword ptr [ebp-128]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp dword ptr [ebp-12], eax
jle .Lt_0A5C
jmp .Lt_0A58
.Lt_0A5C:
push -1
lea eax, [ebp-112]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-132], eax
push offset _Lt_0419
push 2332
push 1024
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A92
jmp eax
.Lt_0A92:
mov eax, dword ptr [ebp-132]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0A5F
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0A58
.Lt_0A5F:
.Lt_0A5E:
.Lt_0A57:
inc dword ptr [ebp-12]
.Lt_0A56:
cmp dword ptr [ebp-12], 1024
jle .Lt_0A59
.Lt_0A58:
jmp .Lt_0A49
.Lt_0A55:
cmp dword ptr [ebp+16], 3
jne .Lt_0A60
push 0
push -1
push 0
push -1
push -1
push 37
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 16
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
.Lt_0A65:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-140], eax
push offset _Lt_0419
push 2342
push 5
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A93
jmp eax
.Lt_0A93:
mov eax, dword ptr [ebp-140]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp dword ptr [ebp-12], eax
jle .Lt_0A68
jmp .Lt_0A64
.Lt_0A68:
push -1
lea eax, [ebp-112]
push eax
push -1
push 0
push -1
push -1
push 37
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-148], eax
push offset _Lt_0419
push 2345
push 1024
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A94
jmp eax
.Lt_0A94:
mov eax, dword ptr [ebp-148]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 16
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-144], eax
push offset _Lt_0419
push 2344
push 1024
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A95
jmp eax
.Lt_0A95:
mov eax, dword ptr [ebp-144]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0A6D
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0A64
.Lt_0A6D:
.Lt_0A6C:
.Lt_0A63:
inc dword ptr [ebp-12]
.Lt_0A62:
cmp dword ptr [ebp-12], 1024
jle .Lt_0A65
.Lt_0A64:
jmp .Lt_0A49
.Lt_0A60:
cmp dword ptr [ebp+16], 4
jne .Lt_0A6E
push 0
push -1
push 0
push -1
push -1
push 37
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 8
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
.Lt_0A73:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-140], eax
push offset _Lt_0419
push 2356
push 5
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A96
jmp eax
.Lt_0A96:
mov eax, dword ptr [ebp-140]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp dword ptr [ebp-12], eax
jle .Lt_0A76
jmp .Lt_0A72
.Lt_0A76:
push -1
lea eax, [ebp-112]
push eax
push -1
push 0
push -1
push -1
push 37
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-148], eax
push offset _Lt_0419
push 2359
push 1024
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A97
jmp eax
.Lt_0A97:
mov eax, dword ptr [ebp-148]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 8
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-144], eax
push offset _Lt_0419
push 2358
push 1024
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A98
jmp eax
.Lt_0A98:
mov eax, dword ptr [ebp-144]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0A7B
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0A72
.Lt_0A7B:
.Lt_0A7A:
.Lt_0A71:
inc dword ptr [ebp-12]
.Lt_0A70:
cmp dword ptr [ebp-12], 1024
jle .Lt_0A73
.Lt_0A72:
jmp .Lt_0A49
.Lt_0A6E:
cmp dword ptr [ebp+16], 5
jne .Lt_0A7C
push 0
push -1
push 0
push -1
push -1
push 37
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 4
push 1
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-12], 1
.Lt_0A81:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-140], eax
push offset _Lt_0419
push 2369
push 5
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A99
jmp eax
.Lt_0A99:
mov eax, dword ptr [ebp-140]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp dword ptr [ebp-12], eax
jle .Lt_0A84
jmp .Lt_0A80
.Lt_0A84:
push -1
lea eax, [ebp-112]
push eax
push -1
push 0
push -1
push -1
push 37
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-148], eax
push offset _Lt_0419
push 2372
push 1024
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A9A
jmp eax
.Lt_0A9A:
mov eax, dword ptr [ebp-148]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
push 4
push 1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-144], eax
push offset _Lt_0419
push 2371
push 1024
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0A9B
jmp eax
.Lt_0A9B:
mov eax, dword ptr [ebp-144]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrMid
add esp, 12
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0A89
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0A80
.Lt_0A89:
.Lt_0A88:
.Lt_0A7F:
inc dword ptr [ebp-12]
.Lt_0A7E:
cmp dword ptr [ebp-12], 1024
jle .Lt_0A81
.Lt_0A80:
.Lt_0A7C:
.Lt_0A49:
cmp dword ptr [ebp-16], 0
jle .Lt_0A8B
jmp .Lt_0A47
.Lt_0A8B:
.Lt_0A46:
inc dword ptr [ebp-124]
.Lt_0A45:
cmp dword ptr [ebp-124], 5
jle .Lt_0A48
.Lt_0A47:
fild dword ptr [ebp-16]
fild dword ptr [ebp+16]
fmul qword ptr [_Lt_0A9C]
fxch st(1)
faddp
fstp qword ptr [ebp-8]
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0A3E:
push dword ptr [ebp-120]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-116]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_LIBREEi
__ZN19_SHELL_CPCDOS_OSX__20GEST_VARIABLES_LIBREEi:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0AC9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0A9D:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+12], 1
jne .Lt_0AA0
mov dword ptr [ebp-8], 1
.Lt_0AA4:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_0419
push 2404
push 1024
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACB
jmp eax
.Lt_0ACB:
mov eax, dword ptr [ebp-24]
imul eax, 12
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0AA7
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0AA3
.Lt_0AA7:
.Lt_0AA6:
.Lt_0AA2:
inc dword ptr [ebp-8]
.Lt_0AA1:
cmp dword ptr [ebp-8], 1024
jle .Lt_0AA4
.Lt_0AA3:
jmp .Lt_0A9F
.Lt_0AA0:
cmp dword ptr [ebp+12], 2
jne .Lt_0AA8
mov dword ptr [ebp-8], 1
.Lt_0AAC:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_0419
push 2411
push 1024
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACC
jmp eax
.Lt_0ACC:
mov eax, dword ptr [ebp-24]
imul eax, 12
add ebx, eax
lea eax, [ebx+12324]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0AAF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0AAB
.Lt_0AAF:
.Lt_0AAE:
.Lt_0AAA:
inc dword ptr [ebp-8]
.Lt_0AA9:
cmp dword ptr [ebp-8], 1024
jle .Lt_0AAC
.Lt_0AAB:
jmp .Lt_0A9F
.Lt_0AA8:
cmp dword ptr [ebp+12], 3
jne .Lt_0AB0
mov dword ptr [ebp-8], 1
.Lt_0AB4:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_0419
push 2418
push 1024
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACD
jmp eax
.Lt_0ACD:
mov eax, dword ptr [ebp-24]
imul eax, 12
add ebx, eax
lea eax, [ebx+24624]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0AB7
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0AB3
.Lt_0AB7:
.Lt_0AB6:
.Lt_0AB2:
inc dword ptr [ebp-8]
.Lt_0AB1:
cmp dword ptr [ebp-8], 1024
jle .Lt_0AB4
.Lt_0AB3:
jmp .Lt_0A9F
.Lt_0AB0:
cmp dword ptr [ebp+12], 4
jne .Lt_0AB8
mov dword ptr [ebp-8], 1
.Lt_0ABC:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_0419
push 2425
push 1024
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACE
jmp eax
.Lt_0ACE:
mov eax, dword ptr [ebp-24]
imul eax, 12
add ebx, eax
lea eax, [ebx+36924]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0ABF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0ABB
.Lt_0ABF:
.Lt_0ABE:
.Lt_0ABA:
inc dword ptr [ebp-8]
.Lt_0AB9:
cmp dword ptr [ebp-8], 1024
jle .Lt_0ABC
.Lt_0ABB:
jmp .Lt_0A9F
.Lt_0AB8:
cmp dword ptr [ebp+12], 5
jne .Lt_0AC0
mov dword ptr [ebp-8], 1
.Lt_0AC4:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
push offset _Lt_0419
push 2432
push 1024
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0ACF
jmp eax
.Lt_0ACF:
mov eax, dword ptr [ebp-24]
imul eax, 12
add ebx, eax
lea eax, [ebx+49224]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0AC7
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0AC3
.Lt_0AC7:
.Lt_0AC6:
.Lt_0AC2:
inc dword ptr [ebp-8]
.Lt_0AC1:
cmp dword ptr [ebp-8], 1024
jle .Lt_0AC4
.Lt_0AC3:
.Lt_0AC0:
.Lt_0A9F:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_0A9E:
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
_fb_ctor__Services:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_0419
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0AD1
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
_Lt_0310:	.ascii	"01-11-2020[FR/EN]\0"
.balign 4
_Lt_0314:	.ascii	"2020110121\0"
.balign 4
_Lt_0315:	.ascii	"2.1\0"
.balign 4
_Lt_0316:	.ascii	"beta 1.3\0"
.balign 4
_Lt_0318:	.ascii	"3.0\0"

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
_Lt_0373:	.ascii	"'#NONEXISTENT_CONTENT#'\0"
.balign 4
_Lt_0374:	.ascii	"<Sans OS/No OS>\0"
.balign 4
_Lt_0396:	.ascii	" \0"
.balign 4
_Lt_03C3:	.ascii	"co-kernel Cpcdos osx et CPinti Core (tm)\15""Par sebastien FAVIER et ses contributeurs d'Ultima Test.\15""Un grand remerciement a Mickael BANVILLE pour sa contribution SDK des modules WIN32, 3D OpenGL/GZE Engine, LLVM.\15""Ainsi qu'a Timothee LUSSIAUD, Esteban CADIC, Leo ENDOR, Leo VACHET et Johann GRAF.\15""  Copyright\251CPinti Software\0"
.balign 4
_Lt_03DB:	.ascii	"#\0"
.balign 4
_Lt_03E0:	.ascii	"$\0"
.balign 4
_Lt_03F5:	.ascii	"@\0"
.balign 4
_Lt_0419:	.ascii	"CpcdosCP\\Services.bas\0"
.balign 4
_Lt_041B:	.ascii	"CCP_VERIFIER_SYNTAXE\0"
.balign 4
_Lt_041F:	.ascii	"CPC.CR\0"
.balign 4
_Lt_0423:	.ascii	"CPC.LF\0"
.balign 4
_Lt_0425:	.ascii	"CPC.CRLF\0"
.balign 4
_Lt_0427:	.ascii	"CPC.LFCR\0"
.balign 4
_Lt_0429:	.ascii	"CPC.RND\0"
.balign 4
_Lt_042B:	.ascii	"CPC.HEURE\0"
.balign 4
_Lt_042D:	.ascii	"CPC.HOUR\0"
.balign 4
_Lt_042F:	.ascii	"CPC.MIN\0"
.balign 4
_Lt_0431:	.ascii	"CPC.MINUTE\0"
.balign 4
_Lt_0433:	.ascii	"CPC.MINUTES\0"
.balign 4
_Lt_0435:	.ascii	"CPC.SEC\0"
.balign 4
_Lt_0437:	.ascii	"CPC.SECOND\0"
.balign 4
_Lt_0439:	.ascii	"CPC.SECONDS\0"
.balign 4
_Lt_043B:	.ascii	"CPC.SECONDE\0"
.balign 4
_Lt_043D:	.ascii	"CPC.SECONDES\0"
.balign 4
_Lt_043F:	.ascii	"CPC.JOUR\0"
.balign 4
_Lt_0441:	.ascii	"CPC.DAY\0"
.balign 4
_Lt_0443:	.ascii	"CPC.MOIS\0"
.balign 4
_Lt_0445:	.ascii	"CPC.MONTH\0"
.balign 4
_Lt_0447:	.ascii	"CPC.ANNEE\0"
.balign 4
_Lt_0449:	.ascii	"CPC.YEAR\0"
.balign 4
_Lt_044B:	.ascii	"CPC.CENTURY\0"
.balign 4
_Lt_044D:	.ascii	"CPC.SIECLE\0"
.balign 4
_Lt_044F:	.ascii	"CPC.TIME\0"
.balign 4
_Lt_0452:	.ascii	"CPC.DATE\0"
.balign 4
_Lt_0455:	.ascii	"CPC.TIMER\0"
.balign 4
_Lt_0457:	.ascii	"CPC.TEMPS\0"
.balign 4
_Lt_045A:	.ascii	"CPC.SYS.MEMU.P\0"
.balign 4
_Lt_045C:	.ascii	"CPC.SYS.MEMU\0"
.balign 4
_Lt_045E:	.ascii	"CPC.SYS.MEMU.O\0"
.balign 4
_Lt_0460:	.ascii	"CPC.SYS.MEMU.B\0"
.balign 4
_Lt_0462:	.ascii	"CPC.SYS.MEMU.K\0"
.balign 4
_Lt_0464:	.ascii	"CPC.SYS.MEMU.M\0"
.balign 4
_Lt_0466:	.ascii	"CPC.SYS.MEMU.G\0"
.balign 4
_Lt_0468:	.ascii	"CPC.SYS.MEMU.T\0"
.balign 4
_Lt_046A:	.ascii	"CPC.SYS.MEM.P\0"
.balign 4
_Lt_046C:	.ascii	"CPC.SYS.MEM\0"
.balign 4
_Lt_046E:	.ascii	"CPC.SYS.MEM.O\0"
.balign 4
_Lt_0470:	.ascii	"CPC.SYS.MEM.B\0"
.balign 4
_Lt_0472:	.ascii	"CPC.SYS.MEM.K\0"
.balign 4
_Lt_0474:	.ascii	"CPC.SYS.MEM.M\0"
.balign 4
_Lt_0476:	.ascii	"CPC.SYS.MEM.G\0"
.balign 4
_Lt_0478:	.ascii	"CPC.SYS.MEM.T\0"
.balign 4
_Lt_047A:	.ascii	"CPC.SYS.CPU.ACT\0"
.balign 4
_Lt_047C:	.ascii	"CPC.SYS.CPU.CPUID\0"
.balign 4
_Lt_047E:	.ascii	"CPC.SYS.CPU.FPU\0"
.balign 4
_Lt_0480:	.ascii	"CPC.SYS.CPU.VME\0"
.balign 4
_Lt_0482:	.ascii	"CPC.SYS.CPU.SSE\0"
.balign 4
_Lt_0484:	.ascii	"CPC.SYS.CPU.SSE2\0"
.balign 4
_Lt_0486:	.ascii	"CPC.SYS.CPU.SSE3\0"
.balign 4
_Lt_0488:	.ascii	"CPC.SYS.CPU.SSE4\0"
.balign 4
_Lt_048A:	.ascii	"CPC.SYS.CPU.SSE4A\0"
.balign 4
_Lt_048C:	.ascii	"CPC.SYS.CPU.3DNOW\0"
.balign 4
_Lt_048E:	.ascii	"CPC.SYS.CPU.3DNOW2\0"
.balign 4
_Lt_0490:	.ascii	"CPC.SYS.CPU.MMX\0"
.balign 4
_Lt_0492:	.ascii	"CPC.SYS.CPU.RDTSCP\0"
.balign 4
_Lt_0494:	.ascii	"CPC.SYS.CPU.PAE\0"
.balign 4
_Lt_0496:	.ascii	"CPC.SYS.CPU.HYPERTHREADING\0"
.balign 4
_Lt_0498:	.ascii	"CPC.SYS.CPU.MULTIPROCESSOR\0"
.balign 4
_Lt_049A:	.ascii	"CPC.SYS.CPU.MULTIPROCESSEUR\0"
.balign 4
_Lt_049C:	.ascii	"CPC.SYS.CPU.MULTICORE\0"
.balign 4
_Lt_049E:	.ascii	"CPC.SYS.CPU.MULTICOEUR\0"
.balign 4
_Lt_04A0:	.ascii	"CPC.SYS.CPU.X64\0"
.balign 4
_Lt_04A2:	.ascii	"CPC.SYS.CPU.FAMILLY\0"
.balign 4
_Lt_04A4:	.ascii	"CPC.SYS.CPU.FAMILLE\0"
.balign 4
_Lt_04A6:	.ascii	"CPC.SYS.CPU.MODEL\0"
.balign 4
_Lt_04A8:	.ascii	"CPC.SYS.CPU.MODELE\0"
.balign 4
_Lt_04AA:	.ascii	"CPC.SYS.CPU.ID\0"
.balign 4
_Lt_04AC:	.ascii	"CPC.SYS.CPU.VENDOR\0"
.balign 4
_Lt_04AE:	.ascii	"CPC.SYS.CPU.VENDEUR\0"
.balign 4
_Lt_04B0:	.ascii	"CPC.SYS.CPU.NAME\0"
.balign 4
_Lt_04B2:	.ascii	"CPC.SYS.CPU.NOM\0"
.balign 4
_Lt_04B4:	.ascii	"CPC.SYS.CPU.NB\0"
.balign 4
_Lt_04B5:	.ascii	"1\0"
.balign 4
_Lt_04B7:	.ascii	"CPC.SYS.CPU.NB.ACT\0"
.balign 4
_Lt_04B9:	.ascii	"CPC.SYS.CPU.APIC\0"
.balign 4
_Lt_04BB:	.ascii	"CPC.SYS.CPU.APIC.OK\0"
.balign 4
_Lt_04BC:	.ascii	"0\0"
.balign 4
_Lt_04BE:	.ascii	"CPC.SYS.CPU.APIC.VER\0"
.balign 4
_Lt_04BF:	.ascii	"-1\0"
.balign 4
_Lt_04C1:	.ascii	"CPC.SYS.CPU.APIC.BAT\0"
.balign 4
_Lt_04C2:	.ascii	"100\0"
.balign 4
_Lt_04C4:	.ascii	"CPC.SYS.APM\0"
.balign 4
_Lt_04C6:	.ascii	"CPC.SYS.APM.OK\0"
.balign 4
_Lt_04C8:	.ascii	"CPC.SYS.APM.RM\0"
.balign 4
_Lt_04CA:	.ascii	"CPC.SYS.APM.PM16\0"
.balign 4
_Lt_04CC:	.ascii	"CPC.SYS.APM.PM32\0"
.balign 4
_Lt_04CE:	.ascii	"CPC.SYS.APM.CPU_IDLE\0"
.balign 4
_Lt_04D0:	.ascii	"CPC.SYS.APM.CPU_BUSY\0"
.balign 4
_Lt_04D2:	.ascii	"CPC.SYS.APM.STATE\0"
.balign 4
_Lt_04D4:	.ascii	"CPC.SYS.APM.POWER_MANAGEMENT\0"
.balign 4
_Lt_04D6:	.ascii	"CPC.SYS.APM.POWER_MANAGEMENT_DEVICE\0"
.balign 4
_Lt_04D8:	.ascii	"CPC.SYS.APM.SIGNATURE\0"
.balign 4
_Lt_04DA:	.ascii	"CPC.SYS.APM.VERSION\0"
.balign 4
_Lt_04DC:	.ascii	"CPC.SYS.ISR.INST\0"
.balign 4
_Lt_04DD:	.ascii	"0x0000\0"
.balign 4
_Lt_04DF:	.ascii	"CPC.SYS.ISR.DEM\0"
.balign 4
_Lt_04E1:	.ascii	"CPC.SYS.ISR\0"
.balign 4
_Lt_04E3:	.ascii	"CPC.SYS.THREAD.NB\0"
.balign 4
_Lt_04E5:	.ascii	"CPC.SYS.THREAD.ID\0"
.balign 4
_Lt_04E7:	.ascii	"CPC.SYS.PROCESSUS.ID\0"
.balign 4
_Lt_04E9:	.ascii	"CPC.SYS.PROCESS.ID\0"
.balign 4
_Lt_04EB:	.ascii	"CPC.SYS.UTILISATEUR.ID\0"
.balign 4
_Lt_04ED:	.ascii	"CPC.SYS.USER.ID\0"
.balign 4
_Lt_04EF:	.ascii	"CPC.SYS.OS.ID\0"
.balign 4
_Lt_04F1:	.ascii	"CPC.SYS.KERNEL.ID\0"
.balign 4
_Lt_04F3:	.ascii	"CPC.SYS.NOYAU.ID\0"
.balign 4
_Lt_04F5:	.ascii	"CPC.SYS.THREAD.NOM\0"
.balign 4
_Lt_04F6:	.ascii	"<THREAD.NOM A FAIRE>\0"
.balign 4
_Lt_04F8:	.ascii	"CPC.SYS.THREAD.NAME\0"
.balign 4
_Lt_04FA:	.ascii	"CPC.SYS.PROCESSUS.NOM\0"
.balign 4
_Lt_04FB:	.ascii	"<PROCESSUS.NOM A FAIRE>\0"
.balign 4
_Lt_04FD:	.ascii	"CPC.SYS.PROCESSUS.NAME\0"
.balign 4
_Lt_04FE:	.ascii	"<PROCESSUS.NAME A FAIRE>\0"
.balign 4
_Lt_0500:	.ascii	"CPC.SYS.PROCESS.NOM\0"
.balign 4
_Lt_0501:	.ascii	"<PROCESS.NOM A FAIRE>\0"
.balign 4
_Lt_0503:	.ascii	"CPC.SYS.PROCESS.NAME\0"
.balign 4
_Lt_0504:	.ascii	"<PROCESS.NAME A FAIRE>\0"
.balign 4
_Lt_0506:	.ascii	"CPC.SYS.UTILISATEUR.NOM\0"
.balign 4
_Lt_0507:	.ascii	"<UTILISATEUR.NOM A FAIRE>\0"
.balign 4
_Lt_0509:	.ascii	"CPC.SYS.UTILISATEUR.NAME\0"
.balign 4
_Lt_050A:	.ascii	"<UTILISATEUR.NAME A FAIRE>\0"
.balign 4
_Lt_050C:	.ascii	"CPC.SYS.USER.NOM\0"
.balign 4
_Lt_050D:	.ascii	"<USER.NOM A FAIRE>\0"
.balign 4
_Lt_050F:	.ascii	"CPC.SYS.USER.NAME\0"
.balign 4
_Lt_0510:	.ascii	"<USER.NAME A FAIRE>\0"
.balign 4
_Lt_0512:	.ascii	"CPC.SYS.NOYAU.NOM\0"
.balign 4
_Lt_0513:	.ascii	"<NOYAU.NOM A FAIRE>\0"
.balign 4
_Lt_0515:	.ascii	"CPC.SYS.NOYAU.NAME\0"
.balign 4
_Lt_0516:	.ascii	"<NOYAU.NAME A FAIRE>\0"
.balign 4
_Lt_0518:	.ascii	"CPC.SYS.KERNEL.NOM\0"
.balign 4
_Lt_0519:	.ascii	"<KERNEL.NOM A FAIRE>\0"
.balign 4
_Lt_051B:	.ascii	"CPC.SYS.KERNEL.NAME\0"
.balign 4
_Lt_051C:	.ascii	"<KERNEL.NAME A FAIRE>\0"
.balign 4
_Lt_051E:	.ascii	"CPC.SYS.NET.INST\0"
.balign 4
_Lt_051F:	.ascii	"9999\0"
.balign 4
_Lt_0521:	.ascii	"CPC.SYS.NET.DRV\0"
.balign 4
_Lt_0522:	.ascii	"<Nom pilote reseau/network driver name>\0"
.balign 4
_Lt_0524:	.ascii	"CPC.SYS.NET.ACT\0"
.balign 4
_Lt_0526:	.ascii	"CPC.SYS.NET.THREAD\0"
.balign 4
_Lt_0527:	.ascii	"<Nom du thread utilisant le reseau/Thread name using network>\0"
.balign 4
_Lt_0529:	.ascii	"CPC.SYS.NET.REC\0"
.balign 4
_Lt_052B:	.ascii	"CPC.SYS.NET.SND\0"
.balign 4
_Lt_052D:	.ascii	"CPC.SYS.NET.ENV\0"
.balign 4
_Lt_052F:	.ascii	"CPC.SYS.NET.CLT\0"
.balign 4
_Lt_0531:	.ascii	"CPC.REP\0"
.balign 4
_Lt_0533:	.ascii	"CPC.DIR\0"
.balign 4
_Lt_0535:	.ascii	"CPC.REP.KRNL\0"
.balign 4
_Lt_0536:	.ascii	"KRNL\0"
.balign 4
_Lt_0538:	.ascii	"CPC.REP.KRNL.INIT\0"
.balign 4
_Lt_0539:	.ascii	"KRNL\\INIT\0"
.balign 4
_Lt_053B:	.ascii	"CPC.DIR.KRNL\0"
.balign 4
_Lt_053D:	.ascii	"CPC.DIR.KRNL.INIT\0"
.balign 4
_Lt_053F:	.ascii	"CPC.##\0"
.balign 4
_Lt_0543:	.ascii	"CPC.SCR.CONS.X\0"
.balign 4
_Lt_0545:	.ascii	"CPC.SCR.CONS.Y\0"
.balign 4
_Lt_0547:	.ascii	"CPC.SCR.CONS.XY\0"
.balign 4
_Lt_0549:	.ascii	"CPC.SCR.CONS.YX\0"
.balign 4
_Lt_054A:	.ascii	"x\0"
.balign 4
_Lt_054C:	.ascii	"CPC.SCR.X\0"
.balign 4
_Lt_054E:	.ascii	"CPC.SCR.Y\0"
.balign 4
_Lt_0550:	.ascii	"CPC.SCR.XY\0"
.balign 4
_Lt_0552:	.ascii	"CPC.SCR.YX\0"
.balign 4
_Lt_0554:	.ascii	"CPC.SCR.BITS\0"
.balign 4
_Lt_0556:	.ascii	"CPC.SCR.MEM\0"
.balign 4
_Lt_0558:	.ascii	"CPC.SCR.MEM.KO\0"
.balign 4
_Lt_055A:	.ascii	"CPC.SCR.MEM.MO\0"
.balign 4
_Lt_055C:	.ascii	"CPC.SCR.HZ\0"
.balign 4
_Lt_055E:	.ascii	"CPC.SCR.DRV\0"
.balign 4
_Lt_0560:	.ascii	"CPC.SCR.PTR\0"
.balign 4
_Lt_0562:	.ascii	"CPC.SCR.MODE\0"
.balign 4
_Lt_0565:	.ascii	"CPC.VER\0"
.balign 4
_Lt_0573:	.ascii	"2.1 beta 1.3 CCP:3.0 CONSOLE:3.0 SCI:3.0 DATE:01-11-2020[FR/EN]\0"
.balign 4
_Lt_0575:	.ascii	"CPC.VER.BUILD\0"
.balign 4
_Lt_0577:	.ascii	"CPC.VER.MAJ\0"
.balign 4
_Lt_0579:	.ascii	"CPC.VER.MIN\0"
.balign 4
_Lt_057B:	.ascii	"CPC.VER.DATE\0"
.balign 4
_Lt_057D:	.ascii	"CPC.VER.CCP\0"
.balign 4
_Lt_057F:	.ascii	"CPC.VER.SCI\0"
.balign 4
_Lt_0581:	.ascii	"CPC.VER.CONSOLE\0"
.balign 4
_Lt_0587:	.ascii	"CPC.ABOUT\0"
.balign 4
_Lt_058A:	.ascii	" #Fonction Cpcdos non disponible#\0"
.balign 4
_Lt_058B:	.ascii	" #Cpcdos function not avaiable#\0"
.balign 4
_Lt_058D:	.ascii	"RECHERCHE_FONCTION_VAR\0"
.balign 4
_Lt_058F:	.long	0x3F800000
.balign 8
_Lt_0590:	.quad	0x4090000000000000
.balign 8
_Lt_0591:	.quad	0x4130000000000000
.balign 8
_Lt_0592:	.quad	0x41D0000000000000
.balign 8
_Lt_0593:	.quad	0x4270000000000000
.balign 4
_Lt_0596:	.ascii	"(\0"
.balign 4
_Lt_0597:	.ascii	")\0"
.balign 4
_Lt_05A0:	.ascii	"[CpcdosC+] Recherche : Fonction sans arguments.\0"
.balign 4
_Lt_05A2:	.ascii	"[CpcdosC+] Search : Function without arguments.\0"
.balign 4
_Lt_05A8:	.ascii	"[CpcdosC+] Recherche : Fonction avec argument(s).\0"
.balign 4
_Lt_05AA:	.ascii	"[CpcdosC+] Search : Function with argument(s).\0"
.balign 4
_Lt_05B0:	.ascii	",\0"
.balign 4
_Lt_05BA:	.ascii	"%\0"
.balign 4
_Lt_05C3:	.ascii	"AVT_008\0"
.balign 4
_Lt_05C7:	.ascii	"[CpcdosC+] AVT_008:\0"
.balign 4
_Lt_05C8:	.ascii	" --> '\0"
.balign 4
_Lt_05CA:	.ascii	"' depuis l'appel de fonction \0"
.balign 4
_Lt_05CB:	.ascii	". (KRNL_ID:\0"
.balign 4
_Lt_05CC:	.ascii	" OS:\0"
.balign 4
_Lt_05CD:	.ascii	" USER:\0"
.balign 4
_Lt_05CE:	.ascii	" PID:\0"
.balign 4
_Lt_05CF:	.ascii	" TID:\0"
.balign 4
_Lt_05D0:	.ascii	") CleID: &\0"
.balign 4
_Lt_05D1:	.ascii	" [&B\0"
.balign 4
_Lt_05D2:	.ascii	"] -> 0x\0"
.balign 4
_Lt_05EA:	.ascii	"' from calling function \0"
.balign 4
_Lt_0607:	.ascii	"[CpcdosC+] Appelle de la fonction '\0"
.balign 4
_Lt_0608:	.ascii	"()'...\0"
.balign 4
_Lt_060C:	.ascii	"[CpcdosC+] Calling function '\0"
.balign 4
_Lt_0616:	.ascii	"CPC.INSTR\0"
.balign 4
_Lt_061C:	.ascii	"CPC.INSTRREV\0"
.balign 4
_Lt_0622:	.ascii	"CPC.MID\0"
.balign 4
_Lt_0628:	.ascii	"CPC.MIDA\0"
.balign 4
_Lt_062E:	.ascii	"CPC.STR\0"
.balign 4
_Lt_0633:	.ascii	"CPC.LEN\0"
.balign 4
_Lt_0634:	.ascii	"CPC.TAILLE\0"
.balign 4
_Lt_0639:	.ascii	"CPC.MAJ\0"
.balign 4
_Lt_0642:	.ascii	"CPC.SIGNE\0"
.balign 4
_Lt_0643:	.ascii	"CPC.SIGN\0"
.balign 4
_Lt_0648:	.ascii	"CPC.INT\0"
.balign 4
_Lt_0649:	.ascii	"CPC.INTEGER\0"
.balign 4
_Lt_064A:	.ascii	"CPC.ENTIER\0"
.balign 4
_Lt_064F:	.ascii	"CPC.FRAC\0"
.balign 4
_Lt_0654:	.ascii	"CPC.VAL\0"
.balign 4
_Lt_0659:	.ascii	"0X\0"
.balign 4
_Lt_065E:	.ascii	"&h\0"
.balign 4
_Lt_0660:	.ascii	"CPC.CHR\0"
.balign 4
_Lt_0661:	.ascii	"CPC.CAR\0"
.balign 4
_Lt_0662:	.ascii	"CPC.CARACTERE\0"
.balign 4
_Lt_0667:	.ascii	"CPC.ASC\0"
.balign 4
_Lt_0668:	.ascii	"CPC.ASCII\0"
.balign 4
_Lt_066D:	.ascii	"CPC.HEX\0"
.balign 4
_Lt_066E:	.ascii	"CPC.HEXA\0"
.balign 4
_Lt_066F:	.ascii	"CPC.HEXADECIMAL\0"
.balign 4
_Lt_0670:	.ascii	"CPC.HEXADECIMALE\0"
.balign 4
_Lt_0676:	.ascii	"CPC.ABS\0"
.balign 4
_Lt_067B:	.ascii	"CPC.LOG\0"
.balign 4
_Lt_0680:	.ascii	"CPC.EXP\0"
.balign 4
_Lt_0685:	.ascii	"CPC.SQR\0"
.balign 4
_Lt_0686:	.ascii	"CPC.RAC\0"
.balign 4
_Lt_068B:	.ascii	"CPC.COS\0"
.balign 4
_Lt_0690:	.ascii	"CPC.ACOS\0"
.balign 4
_Lt_0695:	.ascii	"CPC.SIN\0"
.balign 4
_Lt_069A:	.ascii	"CPC.ASIN\0"
.balign 4
_Lt_069F:	.ascii	"CPC.TAN\0"
.balign 4
_Lt_06A4:	.ascii	"CPC.ATAN\0"
.balign 4
_Lt_06AD:	.ascii	"CPC.FICHIER_EXISTE\0"
.balign 4
_Lt_06AE:	.ascii	"CPC.FILE_EXIST\0"
.balign 4
_Lt_06B7:	.ascii	"CPC.TAILLE_FICHIER\0"
.balign 4
_Lt_06B8:	.ascii	"CPC.FILE_SIZE\0"
.balign 4
_Lt_06BE:	.ascii	"CPC.LIRE_FICHIER\0"
.balign 4
_Lt_06BF:	.ascii	"CPC.READ_FILE\0"
.balign 4
_Lt_06C5:	.ascii	"CPC.NET.PING\0"
.balign 4
_Lt_06CC:	.ascii	"Le nombre d'arguments pour \0"
.balign 4
_Lt_06CD:	.ascii	" est MAX:\0"
.balign 4
_Lt_06CE:	.ascii	" MIN:\0"
.balign 4
_Lt_06CF:	.ascii	", vous avez mis \0"
.balign 4
_Lt_06D0:	.ascii	" argument(s)\0"
.balign 4
_Lt_06E3:	.ascii	"#ERRARGN\0"
.balign 4
_Lt_06E5:	.ascii	"RECHERCHE_FONCTION_CPCDOS\0"
.balign 4
_Lt_071C:	.ascii	"/F:\0"
.balign 4
_Lt_0727:	.ascii	"EXE/ \0"
.balign 4
_Lt_0728:	.ascii	" /FN:\0"
.balign 4
_Lt_0729:	.ascii	")->\0"
.balign 4
_Lt_0736:	.ascii	"\\NULL.CPC\0"
.balign 4
_Lt_0738:	.ascii	"##FONCTION=:\0"
.balign 4
_Lt_0739:	.ascii	":=##EXE/ \0"
.balign 4
_Lt_074E:	.ascii	"FONCTION-RETOUR:\0"
.balign 4
_Lt_0752:	.ascii	"ERR_050\0"
.balign 4
_Lt_0756:	.ascii	"CCP_FUNCTION\0"
.balign 4
_Lt_075E:	.ascii	"=\0"
.balign 4
_Lt_075F:	.ascii	"\"\0"
.balign 4
_Lt_0766:	.ascii	"-1~#ERR\0"
.balign 4
_Lt_0768:	.ascii	"GET_DONNEESQUOTESPROP_GUI\0"
.balign 4
_Lt_076E:	.ascii	"/C(\0"
.balign 4
_Lt_0782:	.ascii	"*\0"
.balign 4
_Lt_0787:	.ascii	"+\0"
.balign 4
_Lt_0790:	.ascii	"*-\0"
.balign 4
_Lt_07CD:	.ascii	"/C(*\0"
.balign 4
_Lt_07D0:	.ascii	"/C(/\0"
.balign 4
_Lt_07D3:	.ascii	"/C(+\0"
.balign 4
_Lt_07D6:	.ascii	"/C(-\0"
.balign 4
_Lt_07E8:	.ascii	"C(\0"
.balign 4
_Lt_07EC:	.ascii	"*(\0"
.balign 4
_Lt_07EE:	.ascii	"/(\0"
.balign 4
_Lt_07F0:	.ascii	"+(\0"
.balign 4
_Lt_07F2:	.ascii	"-(\0"
.balign 4
_Lt_07F5:	.ascii	"*(-\0"
.balign 4
_Lt_07F9:	.ascii	"/(-\0"
.balign 4
_Lt_07FC:	.ascii	"/-\0"
.balign 4
_Lt_07FE:	.ascii	"+(-\0"
.balign 4
_Lt_0802:	.ascii	"-(-\0"
.balign 4
_Lt_080A:	.ascii	"((\0"
.balign 4
_Lt_080D:	.ascii	"0+\0"
.balign 4
_Lt_0812:	.ascii	"))\0"
.balign 4
_Lt_0815:	.ascii	"+0\0"
.balign 4
_Lt_0826:	.ascii	"CCP_CALCUL\0"
.balign 8
_Lt_082E:	.quad	0x0000000000000000
.balign 4
_Lt_0836:	.ascii	"\\#REFORMAT-VAR\0"
.balign 4
_Lt_0837:	.ascii	"\\#VAR-REFORMAT\0"
.balign 4
_Lt_0838:	.ascii	"\\#REFORMATER-VAR\0"
.balign 4
_Lt_0839:	.ascii	"\\#VAR-REFORMATER\0"
.balign 4
_Lt_083A:	.ascii	"SI/\0"
.balign 4
_Lt_083D:	.ascii	"ALORS:\0"
.balign 4
_Lt_0841:	.ascii	"THEN:\0"
.balign 4
_Lt_0843:	.ascii	"IF/\0"
.balign 4
_Lt_0865:	.ascii	"CPC.\0"
.balign 4
_Lt_0869:	.ascii	" A \0"
.balign 4
_Lt_086A:	.ascii	" TO \0"
.balign 4
_Lt_0871:	.ascii	"\" \0"
.balign 4
_Lt_0875:	.ascii	"[CpcdosC+] CCP_Rempl_VAR() \0"
.balign 4
_Lt_0876:	.ascii	". (LEVEL:\0"
.balign 4
_Lt_0877:	.ascii	" KRNL_ID:\0"
.balign 4
_Lt_0878:	.ascii	") CleID:\0"
.balign 4
_Lt_08B0:	.ascii	"\\#NULL\0"
.balign 4
_Lt_08BA:	.ascii	"CCP_REMPL_VAR\0"
.balign 4
_Lt_08CB:	.ascii	"GEST_VARIABLES_ENREG\0"
.balign 4
_Lt_08D9:	.ascii	"<-\0"
.balign 4
_Lt_08EC:	.ascii	"ERR_011\0"
.balign 4
_Lt_08F0:	.ascii	"[CpcdosC+] \0"
.balign 4
_Lt_08F1:	.ascii	" Gest_variables_ENREG() : Niveau CCP non trouve. Redemarrez votre machine\0"
.balign 4
_Lt_08F6:	.ascii	" Gest_variables_ENREG() : CCP level not found. Please restart your computer.\0"
.balign 8
_Lt_08FD:	.quad	0x4059000000000000
.balign 4
_Lt_090E:	.ascii	"CCP_LIRE_VARIABLE\0"
.balign 4
_Lt_0912:	.ascii	"CPC_SYS.NET.USERAGENT\0"
.balign 4
_Lt_0915:	.ascii	"[\0"
.balign 4
_Lt_0918:	.ascii	"]\0"
.balign 4
_Lt_0922:	.ascii	" Le tableau \0"
.balign 4
_Lt_092D:	.ascii	" The array \0"
.balign 4
_Lt_093A:	.ascii	"AVT_073\0"
.balign 4
_Lt_093E:	.ascii	"[AVT_073]:\0"
.balign 4
_Lt_093F:	.ascii	" votre nom de variable '\0"
.balign 4
_Lt_0940:	.ascii	"'\0"
.balign 4
_Lt_0947:	.ascii	" your variable name '\0"
.balign 4
_Lt_0957:	.ascii	"&B\0"
.balign 4
_Lt_09AD:	.ascii	"GEST_VARIABLES_LIRE\0"
.balign 4
_Lt_09F8:	.ascii	"GEST_VARIABLES_SUPPR\0"
.balign 4
_Lt_0A27:	.ascii	"GEST_VARIABLES_GRAPNIV\0"
.balign 4
_Lt_0A8D:	.ascii	"GEST_VARIABLES_VERIF\0"
.balign 8
_Lt_0A9C:	.quad	0x3F847AE147AE147B
.balign 4
_Lt_0AC9:	.ascii	"GEST_VARIABLES_LIBRE\0"
.balign 4
_Lt_0AD1:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor__Services
