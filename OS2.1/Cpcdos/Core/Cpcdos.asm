	.intel_syntax noprefix

.section .text
.balign 16

.globl ___CPCDOSOSX
___CPCDOSOSX:
push ebp
mov ebp, esp
sub esp, 32
.Lt_03C4:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_03CD
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
push 0
call _fb_GetMemAvail
add esp, 4
mov dword ptr [__MEMOIRE_LIBRE_DEPART], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push 0
push 1
push 0
push 0
push 15
push 1
push 1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 49
push offset _Lt_03C6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 1
push 0
call _fb_PrintVoid
add esp, 8
push 0
push 9
push offset _Lt_03C9
push -1
push offset _LA_DATE
call _fb_StrAssign
add esp, 20
push 0
push 9
push offset _Lt_03CA
push -1
push offset _L_HEURE
call _fb_StrAssign
add esp, 20
.Lt_03C5:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl ___END_CPCDOSOSX
___END_CPCDOSOSX:
push ebp
mov ebp, esp
sub esp, 32
.Lt_03CF:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_03D5
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push 0
push 1
push 0
push 0
push 6
push 1
push 1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 45
push offset _Lt_03D1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_03D0:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-28]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__C1Ev
__ZN20__NOYAU_CPCDOS_OSX__C1Ev:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_03D7:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 27
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 132
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 27
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 240
mov dword ptr [eax], 0
push 0
push 16
push offset _Lt_0374
push -1
mov eax, dword ptr [ebp+8]
add eax, 244
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+8]
add eax, 256
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
add eax, 268
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 280
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
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
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 328
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 588
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 592
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 596
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 600
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 604
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 608
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 609
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 610
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 611
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 612
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 616
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 620
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 624
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 625
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 626
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 627
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 628
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 629
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 630
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 631
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 632
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 633
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 634
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 635
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 636
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 637
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 640
lea eax, [ebx]
push eax
call __ZN19_DEBUG_CPCDOS_OSX__C1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 776
lea ebx, [eax]
push ebx
call __ZN19_TYPES_CPCDOS_OSX__C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 1340
lea eax, [ebx]
push eax
call __ZN21_CONSOLE_CPCDOS_OSX__C1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2464
lea ebx, [eax]
push ebx
call __ZN17_SCI_CPCDOS_OSX__C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 452416
lea eax, [ebx]
push eax
call __ZN19_SHELL_CPCDOS_OSX__C1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 589352
lea ebx, [eax]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__C1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 619180
lea eax, [ebx]
push eax
call __ZN20_RESEAU_CPCDOS_OSX__C1Ev
add esp, 4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
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
push offset _Lt_03DC
push -1
push 7
push offset _Lt_03DB
push -1
push 9
push offset _Lt_03DA
push -1
push -1
push dword ptr [ebp+8]
call _fb_HEX_p
add esp, 4
push eax
push 58
push offset _Lt_03D9
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
.Lt_03D8:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__D1Ev
__ZN20__NOYAU_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 108
push ebx
.Lt_03E5:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-104], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-108], eax
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
push 64
push offset _Lt_03E7
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
.Lt_03E6:
mov eax, dword ptr [ebp+8]
add eax, 619180
lea ebx, [eax]
push ebx
call __ZN20_RESEAU_CPCDOS_OSX__D1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 589352
lea eax, [ebx]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__D1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 452416
lea ebx, [eax]
push ebx
call __ZN19_SHELL_CPCDOS_OSX__D1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2464
lea eax, [ebx]
push eax
call __ZN17_SCI_CPCDOS_OSX__D1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 1340
lea ebx, [eax]
push ebx
call __ZN21_CONSOLE_CPCDOS_OSX__D1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 776
lea eax, [ebx]
push eax
call __ZN19_TYPES_CPCDOS_OSX__D1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 640
lea ebx, [eax]
push ebx
call __ZN19_DEBUG_CPCDOS_OSX__D1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 316
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 304
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 292
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 280
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 268
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 256
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 244
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-68]
mov ebx, dword ptr [ebp+8]
add ebx, 132
lea ecx, [ebx]
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 132
lea ebx, [ecx]
mov dword ptr [ebp-64], ebx
mov dword ptr [ebp-60], 108
mov dword ptr [ebp-56], 12
mov dword ptr [ebp-52], 1
mov dword ptr [ebp-48], 9
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 8
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-100]
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea ecx, [ebx]
mov dword ptr [ebp-100], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 24
lea ebx, [ecx]
mov dword ptr [ebp-96], ebx
mov dword ptr [ebp-92], 108
mov dword ptr [ebp-88], 12
mov dword ptr [ebp-84], 1
mov dword ptr [ebp-80], 9
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 8
push eax
call _fb_ArrayDestructStr
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 12
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-108]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-104]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN19_TYPES_CPCDOS_OSX__C1Ev
__ZN19_TYPES_CPCDOS_OSX__C1Ev:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_03EF:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
push 0
push 9
push offset _Lt_0325
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 6
push offset _Lt_0326
push -1
mov eax, dword ptr [ebp+8]
add eax, 12
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 6
push offset _Lt_0327
push -1
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 9
push offset _Lt_0328
push -1
mov eax, dword ptr [ebp+8]
add eax, 36
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 6
push offset _Lt_0329
push -1
mov eax, dword ptr [ebp+8]
add eax, 48
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 9
push offset _Lt_032A
push -1
mov eax, dword ptr [ebp+8]
add eax, 60
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 7
push offset _Lt_032B
push -1
mov eax, dword ptr [ebp+8]
add eax, 72
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 9
push offset _Lt_0325
push -1
mov eax, dword ptr [ebp+8]
add eax, 84
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_032C
push -1
mov eax, dword ptr [ebp+8]
add eax, 96
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_032D
push -1
mov eax, dword ptr [ebp+8]
add eax, 108
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_032E
push -1
mov eax, dword ptr [ebp+8]
add eax, 120
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_032F
push -1
mov eax, dword ptr [ebp+8]
add eax, 132
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_0330
push -1
mov eax, dword ptr [ebp+8]
add eax, 144
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_0331
push -1
mov eax, dword ptr [ebp+8]
add eax, 156
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_0332
push -1
mov eax, dword ptr [ebp+8]
add eax, 168
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_032C
push -1
mov eax, dword ptr [ebp+8]
add eax, 180
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 7
push offset _Lt_0333
push -1
mov eax, dword ptr [ebp+8]
add eax, 192
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 7
push offset _Lt_0334
push -1
mov eax, dword ptr [ebp+8]
add eax, 204
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 8
push offset _Lt_0335
push -1
mov eax, dword ptr [ebp+8]
add eax, 216
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 10
push offset _Lt_0336
push -1
mov eax, dword ptr [ebp+8]
add eax, 228
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 9
push offset _Lt_0337
push -1
mov eax, dword ptr [ebp+8]
add eax, 240
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 7
push offset _Lt_0338
push -1
mov eax, dword ptr [ebp+8]
add eax, 252
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 9
push offset _Lt_0339
push -1
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 7
push offset _Lt_0333
push -1
mov eax, dword ptr [ebp+8]
add eax, 276
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033A
push -1
mov eax, dword ptr [ebp+8]
add eax, 288
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033B
push -1
mov eax, dword ptr [ebp+8]
add eax, 300
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033C
push -1
mov eax, dword ptr [ebp+8]
add eax, 312
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033D
push -1
mov eax, dword ptr [ebp+8]
add eax, 324
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033E
push -1
mov eax, dword ptr [ebp+8]
add eax, 336
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033F
push -1
mov eax, dword ptr [ebp+8]
add eax, 348
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_0340
push -1
mov eax, dword ptr [ebp+8]
add eax, 360
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 4
push offset _Lt_033A
push -1
mov eax, dword ptr [ebp+8]
add eax, 372
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 2
push offset _Lt_0341
push -1
mov eax, dword ptr [ebp+8]
add eax, 384
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 2
push offset _Lt_0342
push -1
mov eax, dword ptr [ebp+8]
add eax, 396
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 2
push offset _Lt_00E2
push -1
mov eax, dword ptr [ebp+8]
add eax, 408
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 2
push offset _Lt_030A
push -1
mov eax, dword ptr [ebp+8]
add eax, 420
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 2
push offset _Lt_0343
push -1
mov eax, dword ptr [ebp+8]
add eax, 432
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0344
push -1
mov eax, dword ptr [ebp+8]
add eax, 444
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0345
push -1
mov eax, dword ptr [ebp+8]
add eax, 456
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0346
push -1
mov eax, dword ptr [ebp+8]
add eax, 468
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0347
push -1
mov eax, dword ptr [ebp+8]
add eax, 480
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0348
push -1
mov eax, dword ptr [ebp+8]
add eax, 492
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0345
push -1
mov eax, dword ptr [ebp+8]
add eax, 504
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_0349
push -1
mov eax, dword ptr [ebp+8]
add eax, 516
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 5
push offset _Lt_034A
push -1
mov eax, dword ptr [ebp+8]
add eax, 528
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 3
push offset _Lt_034B
push -1
mov eax, dword ptr [ebp+8]
add eax, 540
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
push 0
push 5
push offset _Lt_034C
push -1
mov eax, dword ptr [ebp+8]
add eax, 552
lea ebx, [eax]
push ebx
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-72]
push eax
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
push 9
push offset _Lt_03F3
push -1
push 4
push offset _Lt_03F2
push -1
push 9
push offset _Lt_03DA
push -1
push -1
push dword ptr [ebp+8]
call _fb_HEX_p
add esp, 4
push eax
push 52
push offset _Lt_03F1
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
.Lt_03F0:
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

.globl __ZN19_TYPES_CPCDOS_OSX__D1Ev
__ZN19_TYPES_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 268
push ebx
.Lt_03FC:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-264], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-268], eax
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
push 58
push offset _Lt_03FE
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
.Lt_03FD:
lea eax, [ebp-68]
mov ebx, dword ptr [ebp+8]
add ebx, 516
lea ecx, [ebx]
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 516
lea ebx, [ecx]
mov dword ptr [ebp-64], ebx
mov dword ptr [ebp-60], 48
mov dword ptr [ebp-56], 12
mov dword ptr [ebp-52], 1
mov dword ptr [ebp-48], 4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 3
push eax
call _fb_ArrayDestructStr
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 504
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-100]
mov eax, dword ptr [ebp+8]
add eax, 480
lea ecx, [eax]
mov dword ptr [ebp-100], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 480
lea eax, [ecx]
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-92], 24
mov dword ptr [ebp-88], 12
mov dword ptr [ebp-84], 1
mov dword ptr [ebp-80], 2
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 1
push ebx
call _fb_ArrayDestructStr
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 468
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 456
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 444
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-132]
mov ebx, dword ptr [ebp+8]
add ebx, 384
lea ecx, [ebx]
mov dword ptr [ebp-132], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 384
lea ebx, [ecx]
mov dword ptr [ebp-128], ebx
mov dword ptr [ebp-124], 60
mov dword ptr [ebp-120], 12
mov dword ptr [ebp-116], 1
mov dword ptr [ebp-112], 5
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 4
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-164]
mov ebx, dword ptr [ebp+8]
add ebx, 288
lea ecx, [ebx]
mov dword ptr [ebp-164], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 288
lea ebx, [ecx]
mov dword ptr [ebp-160], ebx
mov dword ptr [ebp-156], 96
mov dword ptr [ebp-152], 12
mov dword ptr [ebp-148], 1
mov dword ptr [ebp-144], 8
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 7
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-196]
mov ebx, dword ptr [ebp+8]
add ebx, 192
lea ecx, [ebx]
mov dword ptr [ebp-196], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 192
lea ebx, [ecx]
mov dword ptr [ebp-192], ebx
mov dword ptr [ebp-188], 96
mov dword ptr [ebp-184], 12
mov dword ptr [ebp-180], 1
mov dword ptr [ebp-176], 8
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 7
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-228]
mov ebx, dword ptr [ebp+8]
add ebx, 96
lea ecx, [ebx]
mov dword ptr [ebp-228], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 96
lea ebx, [ecx]
mov dword ptr [ebp-224], ebx
mov dword ptr [ebp-220], 96
mov dword ptr [ebp-216], 12
mov dword ptr [ebp-212], 1
mov dword ptr [ebp-208], 8
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 7
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-260]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx]
mov dword ptr [ebp-260], ecx
mov ecx, dword ptr [ebp+8]
lea ebx, [ecx]
mov dword ptr [ebp-256], ebx
mov dword ptr [ebp-252], 96
mov dword ptr [ebp-248], 12
mov dword ptr [ebp-244], 1
mov dword ptr [ebp-240], 8
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 7
push eax
call _fb_ArrayDestructStr
add esp, 4
push dword ptr [ebp-268]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-264]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _nearbyint
_nearbyint:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_040E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_040B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _rint
add esp, 8
fstp qword ptr [ebp-8]
.Lt_040C:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__17GENERER_ID_KERNELEv
__ZN20__NOYAU_CPCDOS_OSX__17GENERER_ID_KERNELEv:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0410:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0413
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [_Lt_0415+4]
push dword ptr [_Lt_0415]
push dword ptr [_Lt_0416+4]
push dword ptr [_Lt_0416]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_RNDEdd
add esp, 20
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
mov eax, dword ptr [ebp+8]
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [eax]
add esp, 4
.Lt_0411:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__17GENERER_CLE_NIV_1Ejjj
__ZN20__NOYAU_CPCDOS_OSX__17GENERER_CLE_NIV_1Ejjj:
push ebp
mov ebp, esp
sub esp, 88
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-84], eax
push offset _Lt_041E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-88], eax
.Lt_0417:
push 0
push -1
push 4
push dword ptr [ebp+12]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 4
push dword ptr [ebp+16]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp+20]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-44]
push eax
push -1
push -1
lea eax, [ebp-32]
push eax
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_0419
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
call _fb_VAL
add esp, 4
fstp qword ptr [ebp-8]
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0418
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0418:
push dword ptr [ebp-88]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-84]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__17GENERER_CLE_NIV_2Ejj
__ZN20__NOYAU_CPCDOS_OSX__17GENERER_CLE_NIV_2Ejj:
push ebp
mov ebp, esp
sub esp, 64
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-60], eax
push offset _Lt_0425
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-64], eax
.Lt_0420:
push 0
push -1
push 8
push dword ptr [ebp+12]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 12
push dword ptr [ebp+16]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-32]
push eax
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_0419
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
call _fb_VAL
add esp, 4
fstp qword ptr [ebp-8]
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0421
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0421:
push dword ptr [ebp-64]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-60]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__15GENERER_CLE_ASMEdd
__ZN20__NOYAU_CPCDOS_OSX__15GENERER_CLE_ASMEdd:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-60], eax
push offset _Lt_042C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-64], eax
.Lt_0427:
push 0
push -1
fld qword ptr [ebp+12]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_042E
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_042F
.Lt_042E:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_042F:
push eax
push ebx
call _fb_BIN_l
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
fld qword ptr [ebp+20]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0430
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0431
.Lt_0430:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0431:
push eax
push ebx
call _fb_BIN_l
add esp, 8
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-32]
push eax
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_0419
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
call _fb_VAL
add esp, 4
fstp qword ptr [ebp-8]
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0428
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0428:
push dword ptr [ebp-64]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-60]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
__ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj:
push ebp
mov ebp, esp
sub esp, 136
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-132], eax
push offset _Lt_043A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-136], eax
.Lt_0432:
push 0
push -1
push 4
push dword ptr [ebp+12]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 4
push dword ptr [ebp+16]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp+20]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp+24]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 12
push dword ptr [ebp+28]
call _fb_BINEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-68]
push eax
push -1
push -1
lea eax, [ebp-56]
push eax
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push -1
lea eax, [ebp-32]
push eax
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_0419
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
call _fb_VAL
add esp, 4
fstp qword ptr [ebp-8]
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
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
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0433
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
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
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0433:
push dword ptr [ebp-136]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-132]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv
__ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_043F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_043C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_043D:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
__ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_043F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0441:
push -1
push 4
push 1
push 36
fld qword ptr [ebp+12]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0446
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0447
.Lt_0446:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0447:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0419
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [ebp-4]
add esp, 4
.Lt_0442:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEv
__ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_044B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0448:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0449:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
__ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_044B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_044D:
push -1
push 4
push 5
push 36
fld qword ptr [ebp+12]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0452
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0453
.Lt_0452:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0453:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0419
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [ebp-4]
add esp, 4
.Lt_044E:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREv
__ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREv:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0457
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0454:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
.Lt_0455:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
__ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_0457
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0459:
push -1
push 8
push 9
push 36
fld qword ptr [ebp+12]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_045E
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_045F
.Lt_045E:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_045F:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0419
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [ebp-4]
add esp, 4
.Lt_045A:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
__ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_0464
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0460:
push -1
push 8
push 17
push 36
fld qword ptr [ebp+12]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_0466
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_0467
.Lt_0466:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_0467:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0419
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [ebp-4]
add esp, 4
.Lt_0461:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
__ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_046C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0468:
push -1
push 12
push 25
push 36
fld qword ptr [ebp+12]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fcom dword ptr [esp]
fnstsw ax
test ah, 1
jz .Lt_046E
fistp qword ptr [esp]
pop ebx
pop eax
jmp .Lt_046F
.Lt_046E:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop ebx
pop eax
xor eax, 0x80000000
.Lt_046F:
push eax
push ebx
call _fb_BINEx_l
add esp, 12
push eax
call _fb_StrMid
add esp, 12
push eax
push 3
push offset _Lt_0419
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
sub esp, 8
fistp qword ptr [esp]
pop dword ptr [ebp-4]
add esp, 4
.Lt_0469:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__11GENERER_RNDEdd
__ZN20__NOYAU_CPCDOS_OSX__11GENERER_RNDEdd:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_0473
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0470:
push dword ptr [_Lt_0475]
call _fb_Rnd
add esp, 4
fld qword ptr [ebp+20]
fsub qword ptr [ebp+12]
fxch st(1)
fmulp
fadd qword ptr [ebp+12]
fstp qword ptr [ebp-8]
.Lt_0471:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-12]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__13GET_EN_CHARGEEv
__ZN20__NOYAU_CPCDOS_OSX__13GET_EN_CHARGEEv:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_047B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0476:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+596], 0
jle .Lt_0479
mov byte ptr [ebp-4], 1
jmp .Lt_0478
.Lt_0479:
mov byte ptr [ebp-4], 0
.Lt_0478:
.Lt_0477:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__9EN_CHARGEEb
__ZN20__NOYAU_CPCDOS_OSX__9EN_CHARGEEb:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_047D:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0486
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
cmp byte ptr [ebp+12], 1
jne .Lt_0480
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+596]
jmp .Lt_047F
.Lt_0480:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+596]
.Lt_047F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+596]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+596]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0482
lea ecx, [_CPCDOS_INSTANCE+2464]
push ecx
call __ZN17_SCI_CPCDOS_OSX__13BLITTER_VIDEOEv
add esp, 4
.Lt_0482:
.Lt_0481:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+596], 0
jge .Lt_0484
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+596], 0
.Lt_0484:
.Lt_047E:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15CREER_PROCESSUSER30_STRUCT_PROCESSUS_CPCDOS_OSX__
__ZN20__NOYAU_CPCDOS_OSX__15CREER_PROCESSUSER30_STRUCT_PROCESSUS_CPCDOS_OSX__:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_048D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_048A:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
push 0
push -1
push 0
push 30
push 1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call _fb_StrMid
add esp, 12
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv
add esp, 4
push eax
call __ZN6cpinti18gestionnaire_tache22cpinti_creer_processusEjjjjPKc
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-4], ebx
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
.Lt_048B:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__16FERMER_PROCESSUSEj
__ZN20__NOYAU_CPCDOS_OSX__16FERMER_PROCESSUSEj:
push ebp
mov ebp, esp
sub esp, 12
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0492
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_048F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv
add esp, 4
push eax
call __ZN6cpinti18gestionnaire_tache24cpinti_arreter_processusEjj
add esp, 8
mov byte ptr [ebp-4], al
.Lt_0490:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15GERER_PROCESSUSEji
__ZN20__NOYAU_CPCDOS_OSX__15GERER_PROCESSUSEji:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0497
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0494:
mov dword ptr [ebp-4], 0
.Lt_0495:
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

.globl _EXEC_THREAD
_EXEC_THREAD:
push ebp
mov ebp, esp
sub esp, 1372
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-1344], eax
push offset _Lt_051C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-1348], eax
.Lt_0499:
lea eax, [.Lt_049B]
push eax
call _fb_ErrorSetHandler
add esp, 4
mov dword ptr [ebp-8], eax
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
lea eax, [ebp-112]
push eax
call __ZN27_STRUCT_THREAD_CPCDOS_OSX__C1ERKS_
add esp, 8
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-140]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
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
call _DEBUG
add esp, 36
lea eax, [ebp-140]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-164]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-152]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-164]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-152]
push eax
call _fb_StrDelete
add esp, 4
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
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 2
push offset _Lt_04A4
push -1
push -1
push dword ptr [ebp-76]
call _fb_UIntToStr
add esp, 4
push eax
push 10
push offset _Lt_04A3
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
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-236]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 2
push offset _Lt_0396
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-236]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-260]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push 10
push offset _Lt_04AB
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-248]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-260]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-248]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-272]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-272]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-320]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-320]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-308]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-320]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-308]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-368]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-368]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push 8
push dword ptr [ebp-100]
call _fb_HEXEx_i
add esp, 8
push eax
push 20
push offset _Lt_04B5
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
push -1
lea eax, [ebp-356]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-356]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-368]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-356]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-392]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-392]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-380]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-380]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-392]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-380]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-428]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-428]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
lea eax, [ebp-404]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-416]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-416]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-428]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-416]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-476]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-476]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push 8
movsx eax, byte ptr [ebp-39]
push eax
call _fb_HEXEx_i
add esp, 8
push eax
push 20
push offset _Lt_04C0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
lea eax, [ebp-452]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-464]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-464]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-476]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-464]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-500]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-500]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-488]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-488]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-500]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-488]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-536], 0
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-536]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-536]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-524], 0
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
lea eax, [ebp-512]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-524]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-524]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-536]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-524]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-584], 0
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-584]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-584]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-572], 0
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_i
add esp, 8
push eax
push 20
push offset _Lt_04CA
mov dword ptr [ebp-548], 0
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
lea eax, [ebp-548]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-560], 0
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
lea eax, [ebp-560]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-572]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-572]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-584]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-572]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-608], 0
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-608]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-608]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-596], 0
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-596]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-596]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-608]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-596]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-644], 0
mov dword ptr [ebp-640], 0
mov dword ptr [ebp-636], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-644]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-644]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-632], 0
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-620], 0
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
lea eax, [ebp-620]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-632]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-632]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-644]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-632]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-692], 0
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-692]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-692]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
lea eax, [ebp-112]
push eax
push 18
push offset _Lt_04D4
mov dword ptr [ebp-656], 0
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
lea eax, [ebp-656]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-668], 0
mov dword ptr [ebp-664], 0
mov dword ptr [ebp-660], 0
lea eax, [ebp-668]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-680]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-680]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-692]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-680]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-716], 0
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-716]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-716]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-704], 0
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-704]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-704]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-716]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-704]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-752], 0
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-752]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-752]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-740], 0
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-728], 0
mov dword ptr [ebp-724], 0
mov dword ptr [ebp-720], 0
lea eax, [ebp-728]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-740]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-740]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-752]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-740]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-800], 0
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-800]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-800]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-788], 0
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp-80]
call _fb_UIntToStr
add esp, 4
push eax
push 18
push offset _Lt_04DE
mov dword ptr [ebp-764], 0
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
lea eax, [ebp-764]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-776], 0
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
lea eax, [ebp-776]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-788]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-788]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-800]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-788]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-824], 0
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-824]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-824]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-812], 0
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-812]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-812]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-824]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-812]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
mov dword ptr [ebp-852], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-860]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-860]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-848], 0
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-836], 0
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
lea eax, [ebp-836]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-848]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-848]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-860]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-848]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-908], 0
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-908]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-908]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-896], 0
mov dword ptr [ebp-892], 0
mov dword ptr [ebp-888], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp-88]
call _fb_UIntToStr
add esp, 4
push eax
push 18
push offset _Lt_04E8
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
push -1
lea eax, [ebp-896]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-896]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-908]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-896]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-932], 0
mov dword ptr [ebp-928], 0
mov dword ptr [ebp-924], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-932]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-932]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
mov dword ptr [ebp-912], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-920]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-920]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-932]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-920]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-968], 0
mov dword ptr [ebp-964], 0
mov dword ptr [ebp-960], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-968]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-968]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-956], 0
mov dword ptr [ebp-952], 0
mov dword ptr [ebp-948], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
mov dword ptr [ebp-944], 0
mov dword ptr [ebp-940], 0
mov dword ptr [ebp-936], 0
lea eax, [ebp-944]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-956]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-956]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-968]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-956]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1016], 0
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1016]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1016]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1004], 0
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp-84]
call _fb_UIntToStr
add esp, 4
push eax
push 18
push offset _Lt_04F2
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
push -1
lea eax, [ebp-1004]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1004]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1016]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1004]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1040]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1040]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1028], 0
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
push 0
push 5
push offset _Lt_04AE
push -1
lea eax, [ebp-1028]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1028]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1040]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1028]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1076], 0
mov dword ptr [ebp-1072], 0
mov dword ptr [ebp-1068], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1076]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1076]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1064], 0
mov dword ptr [ebp-1060], 0
mov dword ptr [ebp-1056], 0
push 0
push -1
push -1
lea eax, [ebp-112]
push eax
call _fb_HEX_p
add esp, 4
push eax
push 3
push offset _Lt_04B1
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
lea eax, [ebp-1076]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1064]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
mov dword ptr [ebp-1116], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1124]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
mov dword ptr [ebp-1104], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp-76]
call _fb_UIntToStr
add esp, 4
push eax
push 18
push offset _Lt_04FC
mov dword ptr [ebp-1088], 0
mov dword ptr [ebp-1084], 0
mov dword ptr [ebp-1080], 0
lea eax, [ebp-1088]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1100], 0
mov dword ptr [ebp-1096], 0
mov dword ptr [ebp-1092], 0
lea eax, [ebp-1100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1112]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1124]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1112]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
mov dword ptr [ebp-1140], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1148]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1136]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1148]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1136]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-80], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-84], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-88], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0504
mov dword ptr [ebp-1372], 0
mov dword ptr [ebp-1368], 0
mov dword ptr [ebp-1364], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-1372]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1372]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1360], 0
mov dword ptr [ebp-1356], 0
mov dword ptr [ebp-1352], 0
push 0
push 31
push offset _Lt_0505
push -1
lea eax, [ebp-1360]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1360]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1372]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1360]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0503
.Lt_0504:
mov eax, dword ptr [ebp-100]
mov dword ptr [ebp-16], eax
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-112]
push eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-1352], eax
push offset _Lt_03CB
push 317
push dword ptr [ebp-1352]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_051E
jmp eax
.Lt_051E:
call dword ptr [ebp-1352]
add esp, 4
mov dword ptr [ebp-12], eax
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
.Lt_0503:
mov dword ptr [ebp-1172], 0
mov dword ptr [ebp-1168], 0
mov dword ptr [ebp-1164], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1172]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
mov dword ptr [ebp-1152], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1160]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1160]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1220], 0
mov dword ptr [ebp-1216], 0
mov dword ptr [ebp-1212], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1220]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1208], 0
mov dword ptr [ebp-1204], 0
mov dword ptr [ebp-1200], 0
push 0
push -1
push 2
push offset _Lt_04A4
push -1
push -1
push dword ptr [ebp-76]
call _fb_UIntToStr
add esp, 4
push eax
push 10
push offset _Lt_04A3
mov dword ptr [ebp-1184], 0
mov dword ptr [ebp-1180], 0
mov dword ptr [ebp-1176], 0
lea eax, [ebp-1184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1196], 0
mov dword ptr [ebp-1192], 0
mov dword ptr [ebp-1188], 0
lea eax, [ebp-1196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1208]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1220]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1208]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1268], 0
mov dword ptr [ebp-1264], 0
mov dword ptr [ebp-1260], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1268]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1256], 0
mov dword ptr [ebp-1252], 0
mov dword ptr [ebp-1248], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp-12]
call _fb_IntToStr
add esp, 4
push eax
push 22
push offset _Lt_050F
mov dword ptr [ebp-1232], 0
mov dword ptr [ebp-1228], 0
mov dword ptr [ebp-1224], 0
lea eax, [ebp-1232]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-1244], 0
mov dword ptr [ebp-1240], 0
mov dword ptr [ebp-1236], 0
lea eax, [ebp-1244]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1256]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1256]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1268]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1256]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1292], 0
mov dword ptr [ebp-1288], 0
mov dword ptr [ebp-1284], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1292]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1292]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
mov dword ptr [ebp-1272], 0
push 0
push 2
push offset _Lt_0396
push -1
lea eax, [ebp-1280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1292]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1280]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1316], 0
mov dword ptr [ebp-1312], 0
mov dword ptr [ebp-1308], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1316]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1316]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1304], 0
mov dword ptr [ebp-1300], 0
mov dword ptr [ebp-1296], 0
push 0
push 46
push offset _Lt_0516
push -1
lea eax, [ebp-1304]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1304]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1316]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1304]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1340], 0
mov dword ptr [ebp-1336], 0
mov dword ptr [ebp-1332], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1340]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1340]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1328], 0
mov dword ptr [ebp-1324], 0
mov dword ptr [ebp-1320], 0
push 0
push 2
push offset _Lt_0396
push -1
lea eax, [ebp-1328]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1328]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1340]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1328]
push eax
call _fb_StrDelete
add esp, 4
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
push dword ptr [ebp-76]
push dword ptr [ebp-80]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10FIN_THREADEjj
add esp, 12
mov dword ptr [ebp-4], 0
lea eax, [ebp-112]
push eax
call __ZN27_STRUCT_THREAD_CPCDOS_OSX__D1Ev
add esp, 4
jmp .Lt_049A
.Lt_049B:
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
lea eax, [ebp-112]
push eax
call __ZN27_STRUCT_THREAD_CPCDOS_OSX__D1Ev
add esp, 4
.Lt_049A:
push dword ptr [ebp-1348]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-1344]
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

.globl __ZN20__NOYAU_CPCDOS_OSX__12CREER_THREADER27_STRUCT_THREAD_CPCDOS_OSX__
__ZN20__NOYAU_CPCDOS_OSX__12CREER_THREADER27_STRUCT_THREAD_CPCDOS_OSX__:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_0527
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0522:
push 0
push -1
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push 0
push 29
push 1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call _fb_StrMid
add esp, 12
push eax
call _fb_StrUcase2
add esp, 8
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push offset _EXEC_THREAD
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv
add esp, 4
push eax
call __ZN6cpinti18gestionnaire_tache19cpinti_creer_threadEjjjjPKciPFPvS3_ES3_j
add esp, 36
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.Lt_0523:
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

.globl _ptr_Update_TID
_ptr_Update_TID:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0529:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_052D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+36], ebx
.Lt_052A:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__13FERMER_THREADEjjb
__ZN20__NOYAU_CPCDOS_OSX__13FERMER_THREADEjjb:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0532
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_052F:
movzx eax, byte ptr [ebp+20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 1
call __ZN6cpinti18gestionnaire_tache21cpinti_arreter_threadEjjjb
add esp, 16
movzx ebx, al
neg ebx
mov dword ptr [ebp-4], ebx
.Lt_0530:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__10FIN_THREADEjj
__ZN20__NOYAU_CPCDOS_OSX__10FIN_THREADEjj:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0537
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0534:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 1
call __ZN6cpinti18gestionnaire_tache17cpinti_fin_threadEjjj
add esp, 12
movzx ebx, al
neg ebx
mov dword ptr [ebp-4], ebx
.Lt_0535:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__17GET_NOMBRETHREADSEv
__ZN20__NOYAU_CPCDOS_OSX__17GET_NOMBRETHREADSEv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_053C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0539:
call __ZN6cpinti18gestionnaire_tache25cpinti_get_nombre_threadsEv
mov dword ptr [ebp-4], eax
.Lt_053A:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__12GERER_THREADEjji
__ZN20__NOYAU_CPCDOS_OSX__12GERER_THREADEjji:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0541
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_053E:
mov dword ptr [ebp-4], 0
.Lt_053F:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__14GET_NOM_THREADEj
__ZN20__NOYAU_CPCDOS_OSX__14GET_NOM_THREADEj:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_0547
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0543:
push 0
push 0
push dword ptr [ebp+12]
call __ZN6cpinti18gestionnaire_tache21cpinti_get_nom_threadEj
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0544:
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
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__17GET_THREADENCOURSEv
__ZN20__NOYAU_CPCDOS_OSX__17GET_THREADENCOURSEv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_054C
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0549:
call __ZN6cpinti18gestionnaire_tache17get_ThreadEnCoursEv
mov dword ptr [ebp-4], eax
.Lt_054A:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__17GET_NOM_PROCESSUSEj
__ZN20__NOYAU_CPCDOS_OSX__17GET_NOM_PROCESSUSEj:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_0552
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_054E:
push 0
push 0
push dword ptr [ebp+12]
call __ZN6cpinti18gestionnaire_tache24cpinti_get_nom_processusEj
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_054F:
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
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__18FICHIER_DECOMPRESSE8FBSTRINGS0_
__ZN20__NOYAU_CPCDOS_OSX__18FICHIER_DECOMPRESSE8FBSTRINGS0_:
push ebp
mov ebp, esp
sub esp, 96
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_057E
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_0554:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_0557
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_0557:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
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
push dword ptr [ebp+16]
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
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _zip_open
add esp, 12
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_055D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_055F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 36
push offset _Lt_0560
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_055E
.Lt_055F:
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 33
push offset _Lt_0563
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.Lt_055E:
mov dword ptr [ebp-4], 0
jmp .Lt_0555
.Lt_055D:
.Lt_055C:
mov dword ptr [ebp-44], 0
push 0
push dword ptr [ebp-32]
call _zip_get_num_entries
add esp, 8
add eax, 4294967295
adc edx, 4294967295
mov ebx, eax
mov dword ptr [ebp-48], ebx
jmp .Lt_0567
.Lt_056A:
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-96]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 6
push offset _Lt_056C
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset _Lt_056B
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
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp-44]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__18DECOMPRESS_FICHIEREP3ZIPiR8FBSTRING
add esp, 16
.Lt_0568:
inc dword ptr [ebp-44]
.Lt_0567:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-44], eax
jle .Lt_056A
.Lt_0569:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0572
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp+16]
push 24
push offset _Lt_0573
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
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0571
.Lt_0572:
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
push dword ptr [ebp+16]
push 23
push offset _Lt_0578
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
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0571:
push dword ptr [ebp-32]
call _zip_close
add esp, 4
mov dword ptr [ebp-4], 1
.Lt_0555:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__18DECOMPRESS_FICHIEREP3ZIPiR8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__18DECOMPRESS_FICHIEREP3ZIPiR8FBSTRING:
push ebp
mov ebp, esp
sub esp, 224
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-116], eax
push offset _Lt_0613
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-120], eax
.Lt_0580:
push 0
push 0
push 0
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+12]
call _zip_get_name
add esp, 16
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0585
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_04B6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0584
.Lt_0585:
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 2
push offset _Lt_04B6
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_04B6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0584:
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 13
rep stosd
pop edi
pop eax
lea eax, [ebp-72]
push eax
push 0
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+12]
call _zip_stat_index
add esp, 20
test eax, eax
je .Lt_058F
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0591
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 76
push offset _Lt_0592
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0590
.Lt_0591:
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 69
push offset _Lt_0595
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0590:
mov byte ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0581
.Lt_058F:
.Lt_058E:
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebp-68]
and ebx, 4
and eax, 0
cmp eax, 0
jne .Lt_0599
cmp ebx, 0
jne .Lt_0599
.Lt_0618:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_059B
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-144]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 51
push offset _Lt_059C
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_059A
.Lt_059B:
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 37
push offset _Lt_059F
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
.Lt_059A:
mov byte ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0581
.Lt_0599:
.Lt_0598:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05A3
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0619
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0619:
fcomp qword ptr [_Lt_0615]
fnstsw ax
test ah, 0b01000001
jnz .Lt_05A5
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_05A7
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_061A
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_061A:
fdiv qword ptr [_Lt_0615]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05A4
.Lt_05A5:
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_061B
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_061B:
fcomp qword ptr [_Lt_0616]
fnstsw ax
test ah, 0b01000001
jnz .Lt_05AC
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_05AD
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_061C
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_061C:
fdiv qword ptr [_Lt_0616]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05A4
.Lt_05AC:
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_061D
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_061D:
fcomp qword ptr [_Lt_0617]
fnstsw ax
test ah, 0b01000001
jnz .Lt_05B2
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_05B3
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_061E
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_061E:
fdiv qword ptr [_Lt_0617]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05A4
.Lt_05B2:
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 5
push offset _Lt_05B8
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_061F
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_061F:
fdiv qword ptr [_Lt_0416]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05A4:
jmp .Lt_05A2
.Lt_05A3:
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0620
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0620:
fcomp qword ptr [_Lt_0615]
fnstsw ax
test ah, 0b01000001
jnz .Lt_05BE
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_05BF
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0621
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0621:
fdiv qword ptr [_Lt_0615]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05BD
.Lt_05BE:
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0622
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0622:
fcomp qword ptr [_Lt_0616]
fnstsw ax
test ah, 0b01000001
jnz .Lt_05C4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_05C5
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0623
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0623:
fdiv qword ptr [_Lt_0616]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05BD
.Lt_05C4:
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0624
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0624:
fcomp qword ptr [_Lt_0617]
fnstsw ax
test ah, 0b01000001
jnz .Lt_05CA
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 6
push offset _Lt_05CB
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0625
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0625:
fdiv qword ptr [_Lt_0617]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05BD
.Lt_05CA:
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-168]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+680]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push -1
push 5
push offset _Lt_05D0
push -1
push -1
fild qword ptr [ebp-52]
cmp dword ptr [ebp-48], 0
jns .Lt_0626
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0626:
fdiv qword ptr [_Lt_0416]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_05A6
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
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05BD:
.Lt_05A2:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push -1
push 2
push offset _Lt_0342
push -1
push dword ptr [ebp+20]
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
push dword ptr [ebp-108]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__25CREER_REPERTOIRES_PARENTSEPc
add esp, 8
test al, al
sete al
mov byte ptr [ebp-112], al
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [ebp-112], 0
je .Lt_05D9
call _fb_FileFree
mov dword ptr [ebp-124], eax
push 0
push dword ptr [ebp-124]
push 0
push 2
push 0
push -1
lea eax, [ebp-16]
push eax
push -1
push 2
push offset _Lt_0342
push -1
push dword ptr [ebp+20]
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
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_05DE
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-16]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_05E0
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05E2
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 75
push offset _Lt_05E3
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05E1
.Lt_05E2:
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 58
push offset _Lt_05E6
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05E1:
jmp .Lt_05DF
.Lt_05E0:
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05EA
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 10
push offset _Lt_05EB
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05E9
.Lt_05EA:
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-224]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 9
push offset _Lt_05EE
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-212]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-224]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-212]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05E9:
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-200]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 10
push offset _Lt_05F1
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-188]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-200]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-188]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05DF:
mov byte ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0581
.Lt_05DE:
.Lt_05DD:
push 0
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+12]
call _zip_fopen_index
add esp, 16
mov dword ptr [ebp-152], eax
.Lt_05F4:
push 0
push 524288
push offset _Lt_0628
push dword ptr [ebp-152]
call _zip_fread
add esp, 16
mov ebx, eax
mov dword ptr [ebp-180], ebx
cmp dword ptr [ebp-180], 0
jge .Lt_05F8
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_05FA
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-208]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 74
push offset _Lt_05FB
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05F9
.Lt_05FA:
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 59
push offset _Lt_05FE
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05F9:
jmp .Lt_05F5
.Lt_05F8:
.Lt_05F7:
cmp dword ptr [ebp-180], 0
jne .Lt_0602
jmp .Lt_05F5
.Lt_0602:
.Lt_0601:
push dword ptr [ebp-180]
push offset _Lt_0628
push 0
push dword ptr [ebp-124]
call _fb_FilePut
add esp, 16
test eax, eax
je .Lt_0605
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0607
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 46
push offset _Lt_0608
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0606
.Lt_0607:
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-208]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 34
push offset _Lt_060B
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0606:
jmp .Lt_05F5
.Lt_0605:
.Lt_0604:
.Lt_05F6:
jmp .Lt_05F4
.Lt_05F5:
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
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 10
push offset _Lt_05F1
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
.Lt_0610:
push dword ptr [ebp-124]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0611
lea eax, [.Lt_0611]
push eax
lea eax, [.Lt_0610]
push eax
push offset _Lt_03CB
push 616
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0611:
push dword ptr [ebp-152]
call _zip_fclose
add esp, 4
.Lt_05D9:
.Lt_05D8:
mov byte ptr [ebp-4], 1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0581
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0581:
push dword ptr [ebp-120]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-116]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0628,524288

.section .text
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__25CREER_REPERTOIRES_PARENTSEPc
__ZN20__NOYAU_CPCDOS_OSX__25CREER_REPERTOIRES_PARENTSEPc:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-12], eax
push offset _Lt_063B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0629:
mov byte ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_062B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
push offset _Lt_03CB
push 633
push dword ptr [ebp-20]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_063D
jmp eax
.Lt_063D:
mov eax, dword ptr [ebp-20]
mov bl, byte ptr [eax]
mov byte ptr [ebp-24], bl
movzx ebx, byte ptr [ebp-24]
cmp ebx, 47
jne .Lt_0631
.Lt_0632:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-28], ebx
push offset _Lt_03CB
push 635
push dword ptr [ebp-28]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_063E
jmp eax
.Lt_063E:
mov eax, dword ptr [ebp-28]
mov byte ptr [eax], 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_MkDir
add esp, 4
test eax, eax
jne .Lt_0636
mov byte ptr [ebp-4], 1
.Lt_0636:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
push offset _Lt_03CB
push 637
push dword ptr [ebp-36]
call _fb_NullPtrChk
add esp, 12
test eax, eax
je .Lt_063F
jmp eax
.Lt_063F:
mov eax, dword ptr [ebp-36]
mov byte ptr [eax], 47
jmp .Lt_062F
.Lt_0631:
movzx eax, byte ptr [ebp-24]
test eax, eax
jne .Lt_0638
.Lt_0639:
jmp .Lt_062C
.Lt_0638:
.Lt_062F:
inc dword ptr [ebp-8]
.Lt_062D:
jmp .Lt_062B
.Lt_062C:
.Lt_062A:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__16FICHIER_COMPRESSE8FBSTRINGS0_
__ZN20__NOYAU_CPCDOS_OSX__16FICHIER_COMPRESSE8FBSTRINGS0_:
push ebp
mov ebp, esp
sub esp, 64
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0649
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_0640:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_0643
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_0643:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
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
push dword ptr [ebp+16]
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
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call __ZN6cpinti20gestionnaire_fichier20cpinti_compress_fileEPKcS2_
add esp, 8
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.Lt_0641:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-36]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__20LIRE_FICHIER_COMPLETE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__20LIRE_FICHIER_COMPLETE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 136
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-72], eax
push offset _Lt_065F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-76], eax
.Lt_064B:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_064E
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_064E:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__14TAILLE_FICHIERE8FBSTRING
add esp, 8
mov dword ptr [ebp-28], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-28], 1
jae .Lt_0654
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_064C
.Lt_0654:
.Lt_0653:
push 0
push 3
push offset _Lt_0655
push -1
lea eax, [ebp-52]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push dword ptr [ebp-28]
call _fb_SPACE
add esp, 4
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit
add esp, 20
push dword ptr [ebp-28]
push dword ptr [ebp-64]
push dword ptr [ebp-52]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call __ZN6cpinti20gestionnaire_fichier27cpinti_Lire_Fichier_completEPKcS2_Pcj
add esp, 16
mov byte ptr [ebp-68], al
cmp byte ptr [ebp-68], 0
jne .Lt_0657
push 0
push -1
push 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 8
push offset _Lt_0658
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _ERRAVT
add esp, 8
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
push dword ptr [_CPCDOS_INSTANCE+640]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-88]
push eax
push 39
push offset _Lt_065A
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
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0656
.Lt_0657:
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0656:
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.Lt_064C:
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
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__14FICHIER_EXISTEE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__14FICHIER_EXISTEE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 48
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_066B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0661:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_0664
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_0664:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileExists
add esp, 4
test eax, eax
je .Lt_0669
mov byte ptr [ebp-4], 1
jmp .Lt_0668
.Lt_0669:
mov byte ptr [ebp-4], 0
.Lt_0668:
.Lt_0662:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-20]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__14TAILLE_FICHIERE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__14TAILLE_FICHIERE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-20], eax
push offset _Lt_0675
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_066D:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_0670
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_0670:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileLen
add esp, 4
mov ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_066E:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__22ECRIRE_FICHIER_COMPLETE8FBSTRINGS0_i
__ZN20__NOYAU_CPCDOS_OSX__22ECRIRE_FICHIER_COMPLETE8FBSTRINGS0_i:
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-44], eax
push offset _Lt_0697
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-48], eax
.Lt_0677:
call _fb_FileFree
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_067A
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_067A:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
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
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
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
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-16]
push eax
movsx eax, byte ptr [_CPCDOS_INSTANCE+618218]
push eax
push dword ptr [ebp+12]
call _fb_Dir
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_067F
push dword ptr [_Lt_0699]
push dword ptr [_Lt_0699+4]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0678
.Lt_067F:
.Lt_067E:
cmp dword ptr [ebp+20], 1
jne .Lt_0681
.Lt_0682:
push 0
push dword ptr [ebp-12]
push 0
push 2
push 0
push dword ptr [ebp+12]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0683
lea eax, [.Lt_0683]
push eax
lea eax, [.Lt_0682]
push eax
push offset _Lt_03CB
push 795
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0683:
jmp .Lt_0680
.Lt_0681:
cmp dword ptr [ebp+20], 2
jne .Lt_0684
.Lt_0685:
push 0
push dword ptr [ebp-12]
push 0
push 2
push 4
push dword ptr [ebp+12]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0686
lea eax, [.Lt_0686]
push eax
lea eax, [.Lt_0685]
push eax
push offset _Lt_03CB
push 797
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0686:
jmp .Lt_0680
.Lt_0684:
cmp dword ptr [ebp+20], 3
jne .Lt_0687
.Lt_0688:
push 0
push dword ptr [ebp-12]
push 0
push 2
push 4
push dword ptr [ebp+12]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0689
lea eax, [.Lt_0689]
push eax
lea eax, [.Lt_0688]
push eax
push offset _Lt_03CB
push 799
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0689:
jmp .Lt_0680
.Lt_0687:
.Lt_068A:
push 0
push dword ptr [ebp-12]
push 0
push 2
push 0
push dword ptr [ebp+12]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_068B
lea eax, [.Lt_068B]
push eax
lea eax, [.Lt_068A]
push eax
push offset _Lt_03CB
push 801
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_068B:
.Lt_0680:
call _fb_ErrorGetNum
test eax, eax
jle .Lt_068D
push dword ptr [_Lt_069A]
push dword ptr [_Lt_069A+4]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0678
.Lt_068D:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+16]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_068F
.Lt_0690:
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push 0
push dword ptr [ebp-12]
call _fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_0691
lea eax, [.Lt_0691]
push eax
lea eax, [.Lt_0690]
push eax
push offset _Lt_03CB
push 807
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0691:
jmp .Lt_068E
.Lt_068F:
.Lt_0692:
push -1
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-12]
call _fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_0693
lea eax, [.Lt_0693]
push eax
lea eax, [.Lt_0692]
push eax
push offset _Lt_03CB
push 809
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0693:
.Lt_068E:
.Lt_0694:
push dword ptr [ebp-12]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0695
lea eax, [.Lt_0695]
push eax
lea eax, [.Lt_0694]
push eax
push offset _Lt_03CB
push 812
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0695:
push -1
push dword ptr [ebp+16]
call _fb_StrLen
add esp, 8
push eax
fild dword ptr [esp]
add esp, 4
fstp qword ptr [ebp-8]
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0678
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0678:
push dword ptr [ebp-48]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-44]
call _fb_ErrorSetModName
add esp, 4
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__17SUPPRIMER_FICHIERE8FBSTRINGbi
__ZN20__NOYAU_CPCDOS_OSX__17SUPPRIMER_FICHIERE8FBSTRINGbi:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-24], eax
push offset _Lt_06B8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-28], eax
.Lt_069B:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_069E
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
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
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_069E:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_06A3
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 6
push offset _Lt_06A5
push -1
push -1
push dword ptr [ebp+12]
push 34
push offset _Lt_06A4
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
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_06A2
.Lt_06A3:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 6
push offset _Lt_06A5
push -1
push -1
push dword ptr [ebp+12]
push 25
push offset _Lt_06AA
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
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06A2:
push dword ptr [ebp+12]
call _fb_FileKill
add esp, 4
cmp eax, 0
setne bl
mov byte ptr [ebp-20], bl
movzx ebx, byte ptr [ebp-20]
neg ebx
test ebx, ebx
jne .Lt_06B0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-52]
push ebx
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 5
push offset _Lt_06B1
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
mov byte ptr [ebp-4], 1
jmp .Lt_069C
jmp .Lt_06AF
.Lt_06B0:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 8
push offset _Lt_06B4
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
mov byte ptr [ebp-4], 0
.Lt_06AF:
.Lt_069C:
push dword ptr [ebp-28]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-24]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__14COPIER_FICHIERE8FBSTRINGS0_iS0_S0_S0_
__ZN20__NOYAU_CPCDOS_OSX__14COPIER_FICHIERE8FBSTRINGS0_iS0_S0_S0_:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-52], eax
push offset _Lt_06C7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-56], eax
.Lt_06BA:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06BD
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_06BD:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06C1
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
.Lt_06C1:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
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
push dword ptr [ebp+16]
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
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-36], eax
push dword ptr [ebp+24]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13ALLOUERSTRINGER8FBSTRING
add esp, 8
mov dword ptr [ebp-40], eax
push dword ptr [ebp+28]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13ALLOUERSTRINGER8FBSTRING
add esp, 8
mov dword ptr [ebp-44], eax
push dword ptr [ebp+32]
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13ALLOUERSTRINGER8FBSTRING
add esp, 8
mov dword ptr [ebp-48], eax
push dword ptr [ebp-48]
push dword ptr [ebp-44]
push dword ptr [ebp-40]
push dword ptr [ebp+20]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
call __ZN6cpinti20gestionnaire_fichier21cpinti_Copier_FichierEPKcS2_iS2_S2_S2_
add esp, 24
mov byte ptr [ebp-4], al
lea eax, [ebp-48]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPc
add esp, 8
lea eax, [ebp-44]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPc
add esp, 8
lea eax, [ebp-40]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__16DESALLOUERSTRINGERPc
add esp, 8
.Lt_06BB:
push dword ptr [ebp-56]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-52]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__16RENOMMER_FICHIERE8FBSTRINGS0_
__ZN20__NOYAU_CPCDOS_OSX__16RENOMMER_FICHIERE8FBSTRINGS0_:
push ebp
mov ebp, esp
sub esp, 76
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_06D9
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_06C9:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06CC
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_06CC:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06D0
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
.Lt_06D0:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
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
push dword ptr [ebp+16]
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
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push -1
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
call _fb_StrInstrRev
add esp, 12
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
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
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _rename
add esp, 8
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .Lt_06D7
mov dword ptr [ebp-44], 1
.Lt_06D7:
cmp dword ptr [ebp-44], 0
setne al
mov byte ptr [ebp-4], al
.Lt_06CA:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__16DEPLACER_FICHIERE8FBSTRINGS0_
__ZN20__NOYAU_CPCDOS_OSX__16DEPLACER_FICHIERE8FBSTRINGS0_:
push ebp
mov ebp, esp
sub esp, 76
mov byte ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_06EB
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_06DB:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06DE
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_06DE:
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+16]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jg .Lt_06E2
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_0342
push -1
push 2
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__14GET_EXEENCOURSEi
add esp, 8
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
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
.Lt_06E2:
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 0
push 1
push 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
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
push dword ptr [ebp+16]
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
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17CHECK_NOMAUTORISEE8FBSTRINGbbb
add esp, 20
push eax
push -1
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push -1
push dword ptr [ebp+16]
push -1
push -1
push 1
push offset _Lt_0342
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
call _fb_StrInstrRev
add esp, 12
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
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
push dword ptr [ebp+16]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-44], -1
cmp dword ptr [ebp-44], 0
jne .Lt_06E9
mov dword ptr [ebp-44], 1
.Lt_06E9:
cmp dword ptr [ebp-44], 0
setne al
mov byte ptr [ebp-4], al
.Lt_06DC:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-48]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__9GET_HEUREE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__9GET_HEUREE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 352
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-336], eax
push offset _Lt_0712
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-340], eax
.Lt_06ED:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
mov dword ptr [ebp-60], eax
lea eax, [ebp-28]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], 12
mov dword ptr [ebp-48], 4
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 2
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
mov dword ptr [ebp-104], eax
lea eax, [ebp-72]
mov dword ptr [ebp-100], eax
mov dword ptr [ebp-96], 12
mov dword ptr [ebp-92], 4
mov dword ptr [ebp-88], 1
mov dword ptr [ebp-84], 3
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 2
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
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-164]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 12
rep stosd
pop edi
pop eax
lea eax, [ebp-164]
mov dword ptr [ebp-196], eax
lea eax, [ebp-164]
mov dword ptr [ebp-192], eax
mov dword ptr [ebp-188], 48
mov dword ptr [ebp-184], 12
mov dword ptr [ebp-180], 1
mov dword ptr [ebp-176], 4
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 3
lea eax, [ebp-244]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 12
rep stosd
pop edi
pop eax
lea eax, [ebp-244]
mov dword ptr [ebp-276], eax
lea eax, [ebp-244]
mov dword ptr [ebp-272], eax
mov dword ptr [ebp-268], 48
mov dword ptr [ebp-264], 12
mov dword ptr [ebp-260], 1
mov dword ptr [ebp-256], 4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 3
lea eax, [ebp-300]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 6
rep stosd
pop edi
pop eax
lea eax, [ebp-300]
mov dword ptr [ebp-332], eax
lea eax, [ebp-300]
mov dword ptr [ebp-328], eax
mov dword ptr [ebp-324], 24
mov dword ptr [ebp-320], 12
mov dword ptr [ebp-316], 1
mov dword ptr [ebp-312], 2
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 1
push 0
push -1
push 2
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
push 3
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push 4
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
push 6
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push 7
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-344], 0
.Lt_06F7:
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+1244]
push ebx
push -1
mov ebx, dword ptr [ebp-344]
mov dword ptr [ebp-348], ebx
push offset _Lt_03CB
push 1069
push 3
push dword ptr [ebp-348]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0714
jmp eax
.Lt_0714:
mov eax, dword ptr [ebp-348]
imul eax, 12
lea ebx, [ebp+eax-164]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_06FA
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_HEURESEv
add esp, 4
mov ebx, dword ptr [ebp-344]
mov dword ptr [ebp-352], ebx
push offset _Lt_03CB
push 1070
push 2
push dword ptr [ebp-352]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0715
jmp eax
.Lt_0715:
mov eax, dword ptr [ebp-352]
mov dword ptr [ebp+eax*4-28], ebx
mov dword ptr [ebp-72], 1
jmp .Lt_06F6
.Lt_06FA:
.Lt_06F9:
.Lt_06F5:
inc dword ptr [ebp-344]
.Lt_06F4:
cmp dword ptr [ebp-344], 2
jle .Lt_06F7
.Lt_06F6:
mov dword ptr [ebp-344], 0
.Lt_06FF:
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+1232]
push eax
push -1
mov eax, dword ptr [ebp-344]
mov dword ptr [ebp-348], eax
push offset _Lt_03CB
push 1078
push 3
push dword ptr [ebp-348]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0716
jmp eax
.Lt_0716:
mov eax, dword ptr [ebp-348]
imul eax, 12
lea ebx, [ebp+eax-164]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0702
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__11GET_MINUTESEv
add esp, 4
mov ebx, dword ptr [ebp-344]
mov dword ptr [ebp-352], ebx
push offset _Lt_03CB
push 1079
push 2
push dword ptr [ebp-352]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0717
jmp eax
.Lt_0717:
mov eax, dword ptr [ebp-352]
mov dword ptr [ebp+eax*4-28], ebx
mov dword ptr [ebp-68], 1
jmp .Lt_06FE
.Lt_0702:
.Lt_0701:
.Lt_06FD:
inc dword ptr [ebp-344]
.Lt_06FC:
cmp dword ptr [ebp-344], 2
jle .Lt_06FF
.Lt_06FE:
mov dword ptr [ebp-344], 0
.Lt_0707:
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+1220]
push eax
push -1
mov eax, dword ptr [ebp-344]
mov dword ptr [ebp-348], eax
push offset _Lt_03CB
push 1087
push 3
push dword ptr [ebp-348]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0718
jmp eax
.Lt_0718:
mov eax, dword ptr [ebp-348]
imul eax, 12
lea ebx, [ebp+eax-164]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_070A
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__12GET_SECONDESEv
add esp, 4
mov ebx, dword ptr [ebp-344]
mov dword ptr [ebp-352], ebx
push offset _Lt_03CB
push 1088
push 2
push dword ptr [ebp-352]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0719
jmp eax
.Lt_0719:
mov eax, dword ptr [ebp-352]
mov dword ptr [ebp+eax*4-28], ebx
mov dword ptr [ebp-64], 1
jmp .Lt_0706
.Lt_070A:
.Lt_0709:
.Lt_0705:
inc dword ptr [ebp-344]
.Lt_0704:
cmp dword ptr [ebp-344], 2
jle .Lt_0707
.Lt_0706:
mov ebx, dword ptr [ebp-68]
add ebx, dword ptr [ebp-72]
add ebx, dword ptr [ebp-64]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 3
jne .Lt_070D
push 0
push -1
push dword ptr [ebp-28]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-300]
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-288]
push eax
push -1
lea eax, [ebp-116]
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
lea eax, [ebp-116]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_070C
.Lt_070D:
cmp dword ptr [ebp-16], 2
jne .Lt_070E
push 0
push -1
push dword ptr [ebp-28]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-300]
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_070C
.Lt_070E:
cmp dword ptr [ebp-16], 1
jne .Lt_070F
push 0
push -1
push dword ptr [ebp-28]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-116]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_070C
.Lt_070F:
push 0
push 13
push offset _Lt_0710
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
.Lt_070C:
push 0
push -1
lea eax, [ebp-116]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-332]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-276]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-196]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06EE:
push dword ptr [ebp-340]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-336]
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

.globl __ZN20__NOYAU_CPCDOS_OSX__8GET_DATEE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__8GET_DATEE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 392
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-340], eax
push offset _Lt_074B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-344], eax
.Lt_071A:
call __ZN6cpinti18gestionnaire_tache21begin_SectionCritiqueEv
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
mov dword ptr [ebp-64], eax
lea eax, [ebp-32]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-56], 12
mov dword ptr [ebp-52], 4
mov dword ptr [ebp-48], 1
mov dword ptr [ebp-44], 3
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 2
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
mov dword ptr [ebp-108], eax
lea eax, [ebp-76]
mov dword ptr [ebp-104], eax
mov dword ptr [ebp-100], 12
mov dword ptr [ebp-96], 4
mov dword ptr [ebp-92], 1
mov dword ptr [ebp-88], 3
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 2
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-168]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 12
rep stosd
pop edi
pop eax
lea eax, [ebp-168]
mov dword ptr [ebp-200], eax
lea eax, [ebp-168]
mov dword ptr [ebp-196], eax
mov dword ptr [ebp-192], 48
mov dword ptr [ebp-188], 12
mov dword ptr [ebp-184], 1
mov dword ptr [ebp-180], 4
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 3
lea eax, [ebp-248]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 12
rep stosd
pop edi
pop eax
lea eax, [ebp-248]
mov dword ptr [ebp-280], eax
lea eax, [ebp-248]
mov dword ptr [ebp-276], eax
mov dword ptr [ebp-272], 48
mov dword ptr [ebp-268], 12
mov dword ptr [ebp-264], 1
mov dword ptr [ebp-260], 4
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 3
lea eax, [ebp-304]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 6
rep stosd
pop edi
pop eax
lea eax, [ebp-304]
mov dword ptr [ebp-336], eax
lea eax, [ebp-304]
mov dword ptr [ebp-332], eax
mov dword ptr [ebp-328], 24
mov dword ptr [ebp-324], 12
mov dword ptr [ebp-320], 1
mov dword ptr [ebp-316], 2
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 1
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
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+1304]
push ebx
push -1
push 4
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+1328]
push ecx
push -1
push 4
push 1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0722
push 0
push -1
push 4
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-16], 2
jmp .Lt_0721
.Lt_0722:
push 0
push -1
push 2
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0721:
push 0
push -1
push 1
mov eax, dword ptr [ebp-16]
add eax, 3
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-304]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
mov eax, dword ptr [ebp-16]
add eax, 4
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
mov eax, dword ptr [ebp-16]
add eax, 6
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+1304]
push ebx
push -1
push 4
mov ebx, dword ptr [ebp-16]
add ebx, 7
push ebx
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+1328]
push ecx
push -1
push 4
mov ecx, dword ptr [ebp-16]
add ecx, 7
push ecx
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0724
push 0
push -1
push 4
mov eax, dword ptr [ebp-16]
add eax, 7
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0723
.Lt_0724:
push 0
push -1
push 2
mov eax, dword ptr [ebp-16]
add eax, 7
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0723:
mov dword ptr [ebp-348], 0
.Lt_0728:
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+1256]
push ebx
push -1
mov ebx, dword ptr [ebp-348]
mov dword ptr [ebp-352], ebx
push offset _Lt_03CB
push 1170
push 3
push dword ptr [ebp-352]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_074D
jmp eax
.Lt_074D:
mov eax, dword ptr [ebp-352]
imul eax, 12
lea ebx, [ebp+eax-168]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+1268]
push ecx
push -1
mov ecx, dword ptr [ebp-348]
mov dword ptr [ebp-356], ecx
push offset _Lt_03CB
push 1170
push 3
push dword ptr [ebp-356]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_074E
jmp eax
.Lt_074E:
mov eax, dword ptr [ebp-356]
imul eax, 12
lea ecx, [ebp+eax-168]
push ecx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_072C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__8GET_JOUREv
add esp, 4
mov ebx, dword ptr [ebp-348]
mov dword ptr [ebp-360], ebx
push offset _Lt_03CB
push 1171
push 2
push dword ptr [ebp-360]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_074F
jmp eax
.Lt_074F:
mov eax, dword ptr [ebp-360]
mov dword ptr [ebp+eax*4-32], ebx
mov dword ptr [ebp-76], 1
jmp .Lt_0727
.Lt_072C:
.Lt_072B:
.Lt_0726:
inc dword ptr [ebp-348]
.Lt_0725:
cmp dword ptr [ebp-348], 2
jle .Lt_0728
.Lt_0727:
mov dword ptr [ebp-348], 0
.Lt_0731:
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+1280]
push eax
push -1
mov eax, dword ptr [ebp-348]
mov dword ptr [ebp-352], eax
push offset _Lt_03CB
push 1179
push 3
push dword ptr [ebp-352]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0750
jmp eax
.Lt_0750:
mov eax, dword ptr [ebp-352]
imul eax, 12
lea ebx, [ebp+eax-168]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0734
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__8GET_MOISEv
add esp, 4
mov ebx, dword ptr [ebp-348]
mov dword ptr [ebp-356], ebx
push offset _Lt_03CB
push 1180
push 2
push dword ptr [ebp-356]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0751
jmp eax
.Lt_0751:
mov eax, dword ptr [ebp-356]
mov dword ptr [ebp+eax*4-32], ebx
mov dword ptr [ebp-72], 1
jmp .Lt_0730
.Lt_0734:
.Lt_0733:
.Lt_072F:
inc dword ptr [ebp-348]
.Lt_072E:
cmp dword ptr [ebp-348], 2
jle .Lt_0731
.Lt_0730:
mov dword ptr [ebp-348], 0
.Lt_0739:
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+1292]
push eax
push -1
mov eax, dword ptr [ebp-348]
mov dword ptr [ebp-352], eax
push offset _Lt_03CB
push 1188
push 3
push dword ptr [ebp-352]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0752
jmp eax
.Lt_0752:
mov eax, dword ptr [ebp-352]
imul eax, 12
lea ebx, [ebp+eax-168]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+1304]
push ecx
push -1
mov ecx, dword ptr [ebp-348]
mov dword ptr [ebp-356], ecx
push offset _Lt_03CB
push 1188
push 3
push dword ptr [ebp-356]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0753
jmp eax
.Lt_0753:
mov eax, dword ptr [ebp-356]
imul eax, 12
lea ecx, [ebp+eax-168]
push ecx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+1316]
push ecx
push -1
mov ecx, dword ptr [ebp-348]
mov dword ptr [ebp-360], ecx
push offset _Lt_03CB
push 1188
push 3
push dword ptr [ebp-360]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0754
jmp eax
.Lt_0754:
mov eax, dword ptr [ebp-360]
imul eax, 12
lea ecx, [ebp+eax-168]
push ecx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+1328]
push ecx
push -1
mov ecx, dword ptr [ebp-348]
mov dword ptr [ebp-364], ecx
push offset _Lt_03CB
push 1188
push 3
push dword ptr [ebp-364]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0755
jmp eax
.Lt_0755:
mov eax, dword ptr [ebp-364]
imul eax, 12
lea ecx, [ebp+eax-168]
push ecx
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_073F
push -1
mov eax, dword ptr [ebp-348]
mov dword ptr [ebp-368], eax
push offset _Lt_03CB
push 1189
push 3
push dword ptr [ebp-368]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0756
jmp eax
.Lt_0756:
mov eax, dword ptr [ebp-368]
imul eax, 12
lea ebx, [ebp+eax-168]
push ebx
call _fb_StrLen
add esp, 8
cmp eax, 2
jne .Lt_0742
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__9GET_ANNEEEv
add esp, 4
mov ebx, dword ptr [ebp-348]
mov dword ptr [ebp-372], ebx
push offset _Lt_03CB
push 1191
push 2
push dword ptr [ebp-372]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0757
jmp eax
.Lt_0757:
mov eax, dword ptr [ebp-372]
mov dword ptr [ebp+eax*4-32], ebx
jmp .Lt_0741
.Lt_0742:
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__9GET_ANNEEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+589352]
push ebx
call __ZN21_SYSTEME_CPCDOS_OSX__10GET_SIECLEEv
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_VAL
add esp, 4
mov eax, dword ptr [ebp-348]
mov dword ptr [ebp-372], eax
push offset _Lt_03CB
push 1194
push 2
push dword ptr [ebp-372]
fstp qword ptr [ebp-392]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0758
jmp eax
.Lt_0758:
mov eax, dword ptr [ebp-372]
fld qword ptr [ebp-392]
fistp dword ptr [ebp+eax*4-32]
.Lt_0741:
mov dword ptr [ebp-68], 1
jmp .Lt_0738
.Lt_073F:
.Lt_073E:
.Lt_0737:
inc dword ptr [ebp-348]
.Lt_0736:
cmp dword ptr [ebp-348], 2
jle .Lt_0739
.Lt_0738:
mov eax, dword ptr [ebp-72]
add eax, dword ptr [ebp-76]
add eax, dword ptr [ebp-68]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .Lt_0747
push 0
push -1
push dword ptr [ebp-32]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-304]
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-28]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-292]
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0746
.Lt_0747:
cmp dword ptr [ebp-20], 2
jne .Lt_0748
push 0
push -1
push dword ptr [ebp-32]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-304]
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-28]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0746
.Lt_0748:
cmp dword ptr [ebp-20], 1
jne .Lt_0749
push 0
push -1
push dword ptr [ebp-32]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-120]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0746
.Lt_0749:
push 0
push 13
push offset _Lt_0710
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0746:
push 0
push -1
lea eax, [ebp-120]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
call __ZN6cpinti18gestionnaire_tache19end_SectionCritiqueEv
lea eax, [ebp-336]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-280]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-200]
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
.Lt_071B:
push dword ptr [ebp-344]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-340]
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15GET_DATE_FORMATEv
__ZN20__NOYAU_CPCDOS_OSX__15GET_DATE_FORMATEv:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0767
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0764:
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREv
add esp, 4
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEv
add esp, 4
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv
add esp, 4
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
add esp, 24
sub esp,8
fstp qword ptr [esp]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__15GET_DATE_FORMATEd
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0765:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15GET_DATE_FORMATEd
__ZN20__NOYAU_CPCDOS_OSX__15GET_DATE_FORMATEd:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0767
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_0769:
push 0
push -1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 16
push offset _Lt_076B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
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
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_076A:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15GET_TIME_FORMATEv
__ZN20__NOYAU_CPCDOS_OSX__15GET_TIME_FORMATEv:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_0772
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_076F:
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREv
add esp, 4
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEv
add esp, 4
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEv
add esp, 4
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__11GENERER_CLEEjjjjj
add esp, 24
sub esp,8
fstp qword ptr [esp]
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__15GET_TIME_FORMATEd
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0770:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15GET_TIME_FORMATEd
__ZN20__NOYAU_CPCDOS_OSX__15GET_TIME_FORMATEd:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0772
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_0774:
push 0
push -1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 16
push offset _Lt_0776
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
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
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0775:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__22REMPLACER_VARIABLE_DYNE8FBSTRINGdS0_
__ZN20__NOYAU_CPCDOS_OSX__22REMPLACER_VARIABLE_DYNE8FBSTRINGdS0_:
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-56], eax
push offset _Lt_07AF
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-60], eax
.Lt_077A:
mov dword ptr [ebp-16], 4
push 2
push offset _Lt_077C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_077E
push 2
push offset _Lt_077C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
push 1
push offset _Lt_0343
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jge .Lt_0780
push 2
push offset _Lt_0781
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0783
push 3
push offset _Lt_0784
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0786
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0789
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 4
push offset _Lt_0784
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 1
.Lt_0786:
push 3
push offset _Lt_078B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_078D
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0789
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 4
push offset _Lt_078B
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 2
.Lt_078D:
push 3
push offset _Lt_0791
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0793
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0789
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 4
push offset _Lt_0791
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 3
.Lt_0793:
push 3
push offset _Lt_0797
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_0799
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0789
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 4
push offset _Lt_0797
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 4
.Lt_0799:
push 3
push offset _Lt_079D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_079F
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0789
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 4
push offset _Lt_079D
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], 5
.Lt_079F:
.Lt_0783:
.Lt_0782:
.Lt_0780:
.Lt_077F:
push 2
push offset _Lt_077C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
push 1
push offset _Lt_0789
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
cmp ebx, eax
jge .Lt_07A4
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_07A7
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 3
push offset _Lt_077C
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 2
push offset _Lt_07A7
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 2
push offset _Lt_0789
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-120]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-108]
push eax
push dword ptr [ebp+8]
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07A4:
.Lt_07A3:
.Lt_077E:
.Lt_077D:
push 0
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push dword ptr [ebp+24]
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_TIDEd
add esp, 12
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__10GET_ID_PIDEd
add esp, 12
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__18GET_ID_UTILISATEUREd
add esp, 12
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__9GET_ID_OSEd
add esp, 12
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__13GET_ID_KERNELEd
add esp, 12
push eax
push dword ptr [ebp-16]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
push eax
call __ZN19_SHELL_CPCDOS_OSX__13CCP_REMPL_VARE8FBSTRINGijjjjjS0_
add esp, 36
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_077B
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_077B:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
__ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_:
push ebp
mov ebp, esp
sub esp, 112
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-16], eax
push offset _Lt_07C4
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_07B1:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+16]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+16]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_07B4
push 0
push 3
push offset _Lt_07B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07B2
.Lt_07B4:
.Lt_07B3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_07B7
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-24], eax
push -1
push dword ptr [ebp+16]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-60], 1
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-64], eax
jmp .Lt_07B9
.Lt_07BC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jle .Lt_07BE
push 0
push -1
mov eax, dword ptr [ebp-32]
dec eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-32]
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07BD
.Lt_07BE:
push 0
push -1
push -1
lea eax, [ebp-56]
push eax
push -1
push -1
push dword ptr [ebp+20]
push -1
lea eax, [ebp-44]
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
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .Lt_07BB
.Lt_07BD:
push 0
push -1
push -1
lea eax, [ebp-56]
push eax
push -1
push -1
push dword ptr [ebp+20]
push -1
lea eax, [ebp-44]
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_07BA:
inc dword ptr [ebp-60]
.Lt_07B9:
mov eax, dword ptr [ebp-64]
cmp dword ptr [ebp-60], eax
jle .Lt_07BC
.Lt_07BB:
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07B7:
.Lt_07B6:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_07B2:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_
__ZN20__NOYAU_CPCDOS_OSX__17COMPTER_CARACTEREE8FBSTRINGS0_:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-48], eax
push offset _Lt_07D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-52], eax
.Lt_07C9:
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+16]
mov ebx, eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_07CC
mov dword ptr [ebp-4], -1
jmp .Lt_07CA
.Lt_07CC:
.Lt_07CB:
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-56], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-60], eax
jmp .Lt_07CE
.Lt_07D1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .Lt_07D3
inc dword ptr [ebp-20]
push 0
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-16]
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_07D2
.Lt_07D3:
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-32]
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .Lt_07D0
.Lt_07D2:
push 0
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-32]
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
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_07CF:
inc dword ptr [ebp-56]
.Lt_07CE:
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-56], eax
jle .Lt_07D1
.Lt_07D0:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07CA:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__15UPDATE_OS_LISTEEv
__ZN20__NOYAU_CPCDOS_OSX__15UPDATE_OS_LISTEEv:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_07DB:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-64], eax
push offset _Lt_0803
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-68], eax
push 0
push 10
push offset _Lt_07DD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_07DF
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_07E1
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
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
push 60
push offset _Lt_07E2
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_07E0
.Lt_07E1:
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
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
push 55
push offset _Lt_07E5
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07E0:
.Lt_07DF:
.Lt_07DE:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-24], 1
push 0
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__20LIRE_FICHIER_COMPLETE8FBSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
.Lt_07EC:
push 2
push offset _Lt_0019
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-36]
push eax
push dword ptr [ebp-16]
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 1
jge .Lt_07EE
push -1
lea eax, [ebp-36]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-20], eax
.Lt_07EE:
push 0
push -1
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
push eax
push dword ptr [ebp-16]
lea eax, [ebp-36]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-60]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_07F0
jmp .Lt_07EB
.Lt_07F0:
mov eax, dword ptr [ebp-20]
add eax, 2
mov dword ptr [ebp-16], eax
push 8
push offset _Lt_07F1
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-60]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_07F3
push 0
push -1
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
push -1
push 8
push offset _Lt_07F1
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-60]
push eax
push 1
call _fb_StrInstr
add esp, 12
add eax, 8
push eax
lea eax, [ebp-60]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTRIM
add esp, 4
push eax
push -1
lea eax, [_CPCDOS_INSTANCE+12]
push eax
call _fb_StrAssign
add esp, 20
dec dword ptr [ebp-72]
jmp .Lt_07F2
.Lt_07F3:
push 0
push -1
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
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-60]
push eax
push 1
call _fb_StrInstr
add esp, 12
dec eax
push eax
push 1
lea eax, [ebp-60]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTRIM
add esp, 4
push eax
push -1
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-76], eax
push offset _Lt_03CB
push 1403
push 8
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0805
jmp eax
.Lt_0805:
mov eax, dword ptr [ebp-76]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
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
push -1
push 1
push offset _Lt_0343
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-60]
push eax
push 1
call _fb_StrInstr
add esp, 12
inc eax
push eax
lea eax, [ebp-60]
push eax
call _fb_StrMid
add esp, 12
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTrimEx
add esp, 8
push eax
call _fb_RTRIM
add esp, 4
push eax
push -1
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-80], eax
push offset _Lt_03CB
push 1406
push 8
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0806
jmp eax
.Lt_0806:
mov eax, dword ptr [ebp-80]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+132]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-72]
inc eax
mov dword ptr [_CPCDOS_INSTANCE+240], eax
.Lt_07F2:
push -1
lea eax, [ebp-36]
push eax
call _fb_StrLen
add esp, 8
cmp dword ptr [ebp-20], eax
jne .Lt_07F7
jmp .Lt_07EB
.Lt_07F7:
.Lt_07EA:
inc dword ptr [ebp-72]
.Lt_07E9:
cmp dword ptr [ebp-72], 8
jle .Lt_07EC
.Lt_07EB:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_07F9
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_07FB
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 31
push offset _Lt_07FC
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_07FA
.Lt_07FB:
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+752]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 30
push offset _Lt_07FF
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07FA:
.Lt_07F9:
.Lt_07F8:
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07DC:
push dword ptr [ebp-68]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-64]
call _fb_ErrorSetModName
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__19GET_NOMBREOSPRESENTEv
__ZN20__NOYAU_CPCDOS_OSX__19GET_NOMBREOSPRESENTEv:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_080A
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0807:
mov eax, dword ptr [_CPCDOS_INSTANCE+240]
mov dword ptr [ebp-4], eax
.Lt_0808:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__13GET_OSPRESENTEv
__ZN20__NOYAU_CPCDOS_OSX__13GET_OSPRESENTEv:
push ebp
mov ebp, esp
sub esp, 120
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_081F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_080C:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-36], 0
.Lt_0811:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-40], eax
push offset _Lt_03CB
push 1438
push 8
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0821
jmp eax
.Lt_0821:
mov eax, dword ptr [ebp-40]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0814
push 0
push -1
push 3
push offset _Lt_0019
push -1
push -1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-48], eax
push offset _Lt_03CB
push 1439
push 8
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0822
jmp eax
.Lt_0822:
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+132]
push eax
push -1
push 10
push offset _Lt_0816
push -1
push -1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
push offset _Lt_03CB
push 1439
push 8
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0823
jmp eax
.Lt_0823:
mov eax, dword ptr [ebp-44]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
push eax
push -1
push 2
push offset _Lt_0343
push -1
push -1
push dword ptr [ebp-36]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
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
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0814:
.Lt_0813:
.Lt_080F:
inc dword ptr [ebp-36]
.Lt_080E:
cmp dword ptr [ebp-36], 7
jle .Lt_0811
.Lt_0810:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_080D:
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
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__13GET_OSPRESENTEi
__ZN20__NOYAU_CPCDOS_OSX__13GET_OSPRESENTEi:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-32], eax
push offset _Lt_081F
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-36], eax
.Lt_0824:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp+12], 8
jne .Lt_0827
push 0
push 43
push offset _Lt_0828
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0827:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-28], eax
push offset _Lt_03CB
push 1455
push 8
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0832
jmp eax
.Lt_0832:
mov eax, dword ptr [ebp-28]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_082B
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
push offset _Lt_03CB
push 1456
push 8
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0833
jmp eax
.Lt_0833:
mov eax, dword ptr [ebp-44]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+132]
push eax
push -1
push 10
push offset _Lt_0816
push -1
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
push offset _Lt_03CB
push 1456
push 8
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_0834
jmp eax
.Lt_0834:
mov eax, dword ptr [ebp-40]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_082B:
.Lt_082A:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0825:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__14TEST_OSPRESENTE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__14TEST_OSPRESENTE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-44], eax
push offset _Lt_0848
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-48], eax
.Lt_0835:
push 17
push offset _Lt_0837
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0839
mov dword ptr [ebp-4], 8
jmp .Lt_0836
.Lt_0839:
.Lt_0838:
push 0
push -1
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset _Lt_0396
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
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
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__19REMPLACER_CARACTEREE8FBSTRINGS0_S0_
add esp, 16
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], 0
.Lt_0840:
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-56], eax
push offset _Lt_03CB
push 1475
push 8
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_084A
jmp eax
.Lt_084A:
mov eax, dword ptr [ebp-56]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0843
push -1
push dword ptr [ebp+12]
push -1
push 0
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-60], eax
push offset _Lt_03CB
push 1476
push 8
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_084B
jmp eax
.Lt_084B:
mov eax, dword ptr [ebp-60]
imul eax, 12
mov ebx, offset _CPCDOS_INSTANCE
add ebx, eax
lea eax, [ebx+24]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0846
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
jmp .Lt_0836
.Lt_0846:
.Lt_0845:
.Lt_0843:
.Lt_0842:
.Lt_083E:
inc dword ptr [ebp-52]
.Lt_083D:
cmp dword ptr [ebp-52], 7
jle .Lt_0840
.Lt_083F:
mov dword ptr [ebp-4], -1
.Lt_0836:
push dword ptr [ebp-48]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-44]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRING
__ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRING:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-28], eax
push offset _Lt_0850
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_084C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
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
call __ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRINGRiRi
add esp, 16
mov dword ptr [ebp-4], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_084D:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRINGRiRi
__ZN20__NOYAU_CPCDOS_OSX__13CHARGER_IMAGEE8FBSTRINGRiRi:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_0850
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0852:
cmp byte ptr [_CPCDOS_INSTANCE+635], 0
jne .Lt_0855
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
push 5
push offset _Lt_0856
push -1
push -1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
add eax, -3
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0858
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_085A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_085C
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 27
push offset _Lt_085E
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
jmp .Lt_085B
.Lt_085C:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 29
push offset _Lt_0862
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
.Lt_085B:
.Lt_085A:
.Lt_0859:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 50
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
push eax
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
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_PNGE8FBSTRINGiiRiRi
add esp, 24
mov dword ptr [ebp-4], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0853
jmp .Lt_0857
.Lt_0858:
push 5
push offset _Lt_0868
push -1
push -1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
add eax, -3
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 6
push offset _Lt_0869
push -1
push -1
push -1
push dword ptr [ebp+12]
mov ebx, eax
call _fb_StrLen
add esp, 8
add eax, -4
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 6
push offset _Lt_086A
push -1
push -1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
add eax, -4
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
push 6
push offset _Lt_086B
push -1
push -1
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
add eax, -4
push eax
push dword ptr [ebp+12]
call _fb_StrMid
add esp, 12
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0867
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_086D
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_086F
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 27
push offset _Lt_0870
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
jmp .Lt_086E
.Lt_086F:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 29
push offset _Lt_0874
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
.Lt_086E:
.Lt_086D:
.Lt_086C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 50
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__17GET_BITSPARPIXELSEv
add esp, 4
push eax
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
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__11CHARGER_JPGE8FBSTRINGiiRiRi
add esp, 24
mov dword ptr [ebp-4], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0853
.Lt_0867:
.Lt_0857:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_087A
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_087C
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 27
push offset _Lt_087D
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
jmp .Lt_087B
.Lt_087C:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 28
push offset _Lt_0881
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
.Lt_087B:
.Lt_087A:
.Lt_0879:
jmp .Lt_0854
.Lt_0855:
lea eax, [_CPCDOS_INSTANCE+589352]
push eax
call __ZN21_SYSTEME_CPCDOS_OSX__13GET_DBG_DEBUGEv
add esp, 4
test eax, eax
jle .Lt_0886
cmp dword ptr [_CPCDOS_INSTANCE+620], 0
jne .Lt_0888
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 38
push offset _Lt_0889
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
jmp .Lt_0887
.Lt_0888:
lea eax, [_CPCDOS_INSTANCE+589452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+692]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 36
push offset _Lt_088D
push -1
push -1
push dword ptr [ebp+12]
push 26
push offset _Lt_085D
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
.Lt_0887:
.Lt_0886:
.Lt_0885:
.Lt_0854:
.Lt_0853:
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

.globl __ZN20__NOYAU_CPCDOS_OSX__21TESTER_ERREUR_MEMOIREEv
__ZN20__NOYAU_CPCDOS_OSX__21TESTER_ERREUR_MEMOIREEv:
push ebp
mov ebp, esp
sub esp, 88
push ebx
push esi
.Lt_0897:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_08BC
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov byte ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
.Lt_089C:
cmp dword ptr [ebp-16], 150
jle .Lt_089E
jmp .Lt_089B
.Lt_089E:
push 1
push offset _Lt_0000
push -1
lea eax, [_CPCDOS_INSTANCE+452416]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
push offset _Lt_03CB
push 1566
push 150
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08BE
jmp eax
.Lt_08BE:
mov eax, dword ptr [ebp-20]
imul eax, 12
add ebx, eax
lea eax, [ebx+133308]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 128
setl bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_08A1
mov dword ptr [ebp-16], 128
.Lt_08A1:
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-24], ebx
push offset _Lt_03CB
push 1569
push 150
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08BF
jmp eax
.Lt_08BF:
mov eax, dword ptr [ebp-24]
imul eax, 12
add ebx, eax
lea eax, [ebx+133308]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_00E2
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-28], ecx
push offset _Lt_03CB
push 1569
push 150
push dword ptr [ebp-28]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08C0
jmp eax
.Lt_08C0:
mov eax, dword ptr [ebp-28]
imul eax, 12
add esi, eax
lea eax, [esi+133308]
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_08A5
jmp .Lt_08A4
.Lt_08A5:
mov byte ptr [ebp-12], 1
push 1
push 2
push offset _Lt_00E2
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+452416]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-40], ebx
push offset _Lt_03CB
push 1572
push 150
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08C1
jmp eax
.Lt_08C1:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+133308]
push eax
push -1
push 3
push offset _Lt_08A7
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push 11
push offset _Lt_08A6
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
push 0
call _fb_PrintString
add esp, 12
.Lt_08A4:
push 1
push offset _Lt_0341
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-32], ebx
push offset _Lt_03CB
push 1576
push 150
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08C2
jmp eax
.Lt_08C2:
mov eax, dword ptr [ebp-32]
imul eax, 12
add ebx, eax
lea eax, [ebx+135120]
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_00E2
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [_CPCDOS_INSTANCE+452416]
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-36], esi
push offset _Lt_03CB
push 1576
push 150
push dword ptr [ebp-36]
mov esi, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08C3
jmp eax
.Lt_08C3:
mov eax, dword ptr [ebp-36]
imul eax, 12
add esi, eax
lea eax, [esi+135120]
push eax
push 1
call _fb_StrInstr
add esp, 12
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_08B0
jmp .Lt_08AF
.Lt_08B0:
mov byte ptr [ebp-12], 1
push 1
push 2
push offset _Lt_00E2
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+452416]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-40], ebx
push offset _Lt_03CB
push 1579
push 150
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk
add esp, 16
test eax, eax
je .Lt_08C4
jmp eax
.Lt_08C4:
mov eax, dword ptr [ebp-40]
imul eax, 12
add ebx, eax
lea eax, [ebx+135120]
push eax
push -1
push 3
push offset _Lt_08A7
push -1
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push 11
push offset _Lt_08B1
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
push 0
call _fb_PrintString
add esp, 12
.Lt_08AF:
.Lt_089A:
inc dword ptr [ebp-16]
.Lt_0899:
cmp dword ptr [ebp-16], 150
jle .Lt_089C
.Lt_089B:
cmp byte ptr [ebp-12], 1
jne .Lt_08B8
push 1
push 20
push offset _Lt_08B9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 22
push offset _Lt_08BA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push -1
call _fb_Sleep
add esp, 4
.Lt_08B8:
.Lt_08B7:
.Lt_0898:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__Cpcdos:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_08CC
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
__ZN27_STRUCT_THREAD_CPCDOS_OSX__C1ERKS_:
push ebp
mov ebp, esp
sub esp, 8
.Lt_012C:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
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
mov dword ptr [eax], 0
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
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __ZN27_STRUCT_THREAD_CPCDOS_OSX__aSERKS_
add esp, 8
.Lt_012D:
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
__ZN27_STRUCT_THREAD_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0130:
push offset _Lt_005B
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0131:
mov eax, dword ptr [ebp+8]
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
__ZN20_RESEAU_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0169:
push offset _Lt_0146
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-36], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-40], eax
.Lt_016A:
lea eax, [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, 876
lea ecx, [ebx]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 876
lea ebx, [ecx]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], 768
mov dword ptr [ebp-20], 12
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 64
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 63
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
__ZN19_SHELL_CPCDOS_OSX__D1Ev:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_0301:
push offset _Lt_0292
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-68], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-72], eax
.Lt_0302:
lea eax, [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, 135120
lea ecx, [ebx]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 135120
lea ebx, [ecx]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], 1812
mov dword ptr [ebp-20], 12
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 151
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 150
push eax
call _fb_ArrayDestructStr
add esp, 4
lea eax, [ebp-64]
mov ebx, dword ptr [ebp+8]
add ebx, 133308
lea ecx, [ebx]
mov dword ptr [ebp-64], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 133308
lea ebx, [ecx]
mov dword ptr [ebp-60], ebx
mov dword ptr [ebp-56], 1812
mov dword ptr [ebp-52], 12
mov dword ptr [ebp-48], 1
mov dword ptr [ebp-44], 151
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 150
push eax
call _fb_ArrayDestructStr
add esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call __ZN20_SHELL_MEMOIRE_CCP__D1Ev
add esp, 4
push dword ptr [ebp-72]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-68]
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
.balign 16
__GLOBAL__I:
push ebp
mov ebp, esp
sub esp, 8
.Lt_08CF:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_08D2
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__C1Ev
add esp, 4
.Lt_08D0:
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
__GLOBAL__D:
push ebp
mov ebp, esp
sub esp, 8
.Lt_08D5:
push offset _Lt_03CB
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_08D8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _CPCDOS_INSTANCE
call __ZN20__NOYAU_CPCDOS_OSX__D1Ev
add esp, 4
.Lt_08D6:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-4]
call _fb_ErrorSetModName
add esp, 4
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

.section .bss

.globl _CPCDOS_INSTANCE
.balign 4
	.lcomm	_CPCDOS_INSTANCE,620824

.section .data
.balign 4
_Lt_0396:	.ascii	" \0"
.balign 4
_Lt_03C6:	.ascii	" * Preparation du demarrage des modules du noyau\0"
.balign 4
_Lt_03C9:	.ascii	"28/03/95\0"
.balign 4
_Lt_03CA:	.ascii	"17:23:16\0"
.balign 4
_Lt_03CB:	.ascii	"Core\\Cpcdos.bas\0"
.balign 4
_Lt_03CD:	.ascii	"__CPCDOSOSX\0"
.balign 4
_Lt_03D1:	.ascii	" * Dechargement des modules du noyau... [OK]\0"
.balign 4
_Lt_03D5:	.ascii	"__END_CPCDOSOSX\0"
.balign 4
_Lt_03D9:	.ascii	" * Instanciation du noyau Cpcdos --> Allocation offset:0x\0"
.balign 4
_Lt_03DA:	.ascii	" Taille:\0"
.balign 4
_Lt_03DB:	.ascii	"620824\0"
.balign 4
_Lt_03DC:	.ascii	" octets\0"
.balign 4
_Lt_03E7:	.ascii	" * De-instanciation du noyau Cpcdos --> Desallocation offset:0x\0"
.balign 4
_Lt_03F1:	.ascii	" * Instanciation des Types --> Allocation offset:0x\0"
.balign 4
_Lt_03F2:	.ascii	"564\0"
.balign 4
_Lt_03F3:	.ascii	" octets \0"
.balign 4
_Lt_03FE:	.ascii	" * De-instanciation des Types --> Desallocation offset:0x\0"
.balign 4
_Lt_040E:	.ascii	"NEARBYINT\0"
.balign 4
_Lt_0413:	.ascii	"GENERER_ID_KERNEL\0"
.balign 8
_Lt_0415:	.quad	0x402E000000000000
.balign 8
_Lt_0416:	.quad	0x3FF0000000000000
.balign 4
_Lt_0419:	.ascii	"&B\0"
.balign 4
_Lt_041E:	.ascii	"GENERER_CLE_NIV_1\0"
.balign 4
_Lt_0425:	.ascii	"GENERER_CLE_NIV_2\0"
.balign 4
_Lt_042C:	.ascii	"GENERER_CLE_ASM\0"
.balign 4
_Lt_043A:	.ascii	"GENERER_CLE\0"
.balign 4
_Lt_043F:	.ascii	"GET_ID_KERNEL\0"
.balign 4
_Lt_044B:	.ascii	"GET_ID_OS\0"
.balign 4
_Lt_0457:	.ascii	"GET_ID_UTILISATEUR\0"
.balign 4
_Lt_0464:	.ascii	"GET_ID_PID\0"
.balign 4
_Lt_046C:	.ascii	"GET_ID_TID\0"
.balign 4
_Lt_0473:	.ascii	"GENERER_RND\0"
.balign 4
_Lt_0475:	.long	0x3F800000
.balign 4
_Lt_047B:	.ascii	"GET_EN_CHARGE\0"
.balign 4
_Lt_0486:	.ascii	"EN_CHARGE\0"
.balign 4
_Lt_048D:	.ascii	"CREER_PROCESSUS\0"
.balign 4
_Lt_0492:	.ascii	"FERMER_PROCESSUS\0"
.balign 4
_Lt_0497:	.ascii	"GERER_PROCESSUS\0"
.balign 4
_Lt_04A3:	.ascii	"[THREAD #\0"
.balign 4
_Lt_04A4:	.ascii	"]\0"
.balign 4
_Lt_04AB:	.ascii	"Execution\0"
.balign 4
_Lt_04AE:	.ascii	" * (\0"
.balign 4
_Lt_04B1:	.ascii	"0x\0"
.balign 4
_Lt_04B5:	.ascii	")._eip        : '0x\0"
.balign 4
_Lt_04B6:	.ascii	"'\0"
.balign 4
_Lt_04C0:	.ascii	")._esp        : '0x\0"
.balign 4
_Lt_04CA:	.ascii	")._stack      : '0x\0"
.balign 4
_Lt_04D4:	.ascii	").Nom         : '\0"
.balign 4
_Lt_04DE:	.ascii	").PROC_ID     : '\0"
.balign 4
_Lt_04E8:	.ascii	").OS_ID       : '\0"
.balign 4
_Lt_04F2:	.ascii	").USER_ID     : '\0"
.balign 4
_Lt_04FC:	.ascii	").THREAD_ID   : '\0"
.balign 4
_Lt_0505:	.ascii	"[ERROR] Structure thread vide!\0"
.balign 4
_Lt_050F:	.ascii	" a retourne le code '\0"
.balign 4
_Lt_0516:	.ascii	" Fin d'execution du thread, nettoyage memoire\0"
.balign 4
_Lt_051C:	.ascii	"EXEC_THREAD\0"
.balign 4
_Lt_0527:	.ascii	"CREER_THREAD\0"
.balign 4
_Lt_052D:	.ascii	"PTR_UPDATE_TID\0"
.balign 4
_Lt_0532:	.ascii	"FERMER_THREAD\0"
.balign 4
_Lt_0537:	.ascii	"FIN_THREAD\0"
.balign 4
_Lt_053C:	.ascii	"GET_NOMBRETHREADS\0"
.balign 4
_Lt_0541:	.ascii	"GERER_THREAD\0"
.balign 4
_Lt_0547:	.ascii	"GET_NOM_THREAD\0"
.balign 4
_Lt_054C:	.ascii	"GET_THREADENCOURS\0"
.balign 4
_Lt_0552:	.ascii	"GET_NOM_PROCESSUS\0"
.balign 4
_Lt_0560:	.ascii	"[ERREUR] Impossible d'ouvrir le ZIP\0"
.balign 4
_Lt_0563:	.ascii	"[ERREUR] Unable to open ZIP file\0"
.balign 4
_Lt_056B:	.ascii	"[ZIP] \0"
.balign 4
_Lt_056C:	.ascii	" --> \0"
.balign 4
_Lt_0573:	.ascii	"Archive extraite dans '\0"
.balign 4
_Lt_0578:	.ascii	"Archive extracted in '\0"
.balign 4
_Lt_057E:	.ascii	"FICHIER_DECOMPRESS\0"
.balign 4
_Lt_0592:	.ascii	"[ERREUR] zip_stat_index() Erreur interne. L'arhive est peut etre corrompue.\0"
.balign 4
_Lt_0595:	.ascii	"[ERREUR] zip_stat_index() Internal error, archive is maybe corrupted\0"
.balign 4
_Lt_059C:	.ascii	"[ERREUR] Impossible d'avoir la taille de l'achive.\0"
.balign 4
_Lt_059F:	.ascii	"[ERREUR] Unable to get archive size.\0"
.balign 4
_Lt_05A6:	.ascii	" (\0"
.balign 4
_Lt_05A7:	.ascii	" go) \0"
.balign 4
_Lt_05AD:	.ascii	" mo) \0"
.balign 4
_Lt_05B3:	.ascii	" ko) \0"
.balign 4
_Lt_05B8:	.ascii	" o) \0"
.balign 4
_Lt_05BF:	.ascii	" gb) \0"
.balign 4
_Lt_05C5:	.ascii	" mb) \0"
.balign 4
_Lt_05CB:	.ascii	" kb) \0"
.balign 4
_Lt_05D0:	.ascii	" b) \0"
.balign 4
_Lt_05E3:	.ascii	"[ERREUR] Impossible d'ouvrir l'archive. Le fichier est peut etre corrompu.\0"
.balign 4
_Lt_05E6:	.ascii	"[ERREUR] Unable to open archive. File is maybe corrupted.\0"
.balign 4
_Lt_05EB:	.ascii	"[DOSSIER]\0"
.balign 4
_Lt_05EE:	.ascii	"[FOLDER]\0"
.balign 4
_Lt_05F1:	.ascii	" ... [OK]\0"
.balign 4
_Lt_05FB:	.ascii	"[ERREUR] zip_fread() erreur lors de la lecture du fichier dans l'archive.\0"
.balign 4
_Lt_05FE:	.ascii	"[ERREUR] zip_fread() error during reading file in archive.\0"
.balign 4
_Lt_0608:	.ascii	"[ERREUR] Impossible d'ecrire dans le fichier \0"
.balign 4
_Lt_060B:	.ascii	"[ERREUR] Unable to write to file.\0"
.balign 4
_Lt_0613:	.ascii	"DECOMPRESS_FICHIER\0"
.balign 8
_Lt_0615:	.quad	0x41D0000000000000
.balign 8
_Lt_0616:	.quad	0x4130000000000000
.balign 8
_Lt_0617:	.quad	0x4090000000000000
.balign 4
_Lt_063B:	.ascii	"CREER_REPERTOIRES_PARENTS\0"
.balign 4
_Lt_0649:	.ascii	"FICHIER_COMPRESS\0"
.balign 4
_Lt_0655:	.ascii	"rb\0"
.balign 4
_Lt_0658:	.ascii	"ERR_015\0"
.balign 4
_Lt_065A:	.ascii	"[CpcdosC+]  : Erreur d'acces interne. \0"
.balign 4
_Lt_065F:	.ascii	"LIRE_FICHIER_COMPLET\0"
.balign 4
_Lt_066B:	.ascii	"FICHIER_EXISTE\0"
.balign 4
_Lt_0675:	.ascii	"TAILLE_FICHIER\0"
.balign 4
_Lt_0697:	.ascii	"ECRIRE_FICHIER_COMPLET\0"
.balign 8
_Lt_0699:	.quad	0xBFF0000000000000
.balign 8
_Lt_069A:	.quad	0xC000000000000000
.balign 4
_Lt_06A4:	.ascii	"[KERNEL] Suppression du fichier '\0"
.balign 4
_Lt_06A5:	.ascii	"' ...\0"
.balign 4
_Lt_06AA:	.ascii	"[UPDATE] Deleting file '\0"
.balign 4
_Lt_06B1:	.ascii	"[OK]\0"
.balign 4
_Lt_06B4:	.ascii	"[ERROR]\0"
.balign 4
_Lt_06B8:	.ascii	"SUPPRIMER_FICHIER\0"
.balign 4
_Lt_06C7:	.ascii	"COPIER_FICHIER\0"
.balign 4
_Lt_06D9:	.ascii	"RENOMMER_FICHIER\0"
.balign 4
_Lt_06EB:	.ascii	"DEPLACER_FICHIER\0"
.balign 4
_Lt_0710:	.ascii	"<FORMAT ERR>\0"
.balign 4
_Lt_0712:	.ascii	"GET_HEURE\0"
.balign 4
_Lt_074B:	.ascii	"GET_DATE\0"
.balign 4
_Lt_0767:	.ascii	"GET_DATE_FORMAT\0"
.balign 4
_Lt_076B:	.ascii	"CPC_DATE.FORMAT\0"
.balign 4
_Lt_0772:	.ascii	"GET_TIME_FORMAT\0"
.balign 4
_Lt_0776:	.ascii	"CPC_TIME.FORMAT\0"
.balign 4
_Lt_077C:	.ascii	"${\0"
.balign 4
_Lt_0781:	.ascii	"}:\0"
.balign 4
_Lt_0784:	.ascii	"}:1\0"
.balign 4
_Lt_0789:	.ascii	"}\0"
.balign 4
_Lt_078B:	.ascii	"}:2\0"
.balign 4
_Lt_0791:	.ascii	"}:3\0"
.balign 4
_Lt_0797:	.ascii	"}:4\0"
.balign 4
_Lt_079D:	.ascii	"}:5\0"
.balign 4
_Lt_07A7:	.ascii	"%\0"
.balign 4
_Lt_07AF:	.ascii	"REMPLACER_VARIABLE_DYN\0"
.balign 4
_Lt_07B5:	.ascii	"-1\0"
.balign 4
_Lt_07C4:	.ascii	"REMPLACER_CARACTERE\0"
.balign 4
_Lt_07D7:	.ascii	"COMPTER_CARACTERE\0"
.balign 4
_Lt_07DD:	.ascii	"OS/OS.LST\0"
.balign 4
_Lt_07E2:	.ascii	"[Cpcdos] Mise a jours des informations des OS installes ...\0"
.balign 4
_Lt_07E5:	.ascii	"[Cpcdos] Updating informations about installed OS  ...\0"
.balign 4
_Lt_07F1:	.ascii	"BOOTSCR=\0"
.balign 4
_Lt_07FC:	.ascii	"[Cpcdos] Mise a jour terminee.\0"
.balign 4
_Lt_07FF:	.ascii	"[Cpcdos] Updating terminated.\0"
.balign 4
_Lt_0803:	.ascii	"UPDATE_OS_LISTE\0"
.balign 4
_Lt_080A:	.ascii	"GET_NOMBREOSPRESENT\0"
.balign 4
_Lt_0816:	.ascii	" PATH:OS/\0"
.balign 4
_Lt_081F:	.ascii	"GET_OSPRESENT\0"
.balign 4
_Lt_0828:	.ascii	"Without OS - Cpcdos blank kernel interface\0"
.balign 4
_Lt_0837:	.ascii	"#WITHOUT-SANSOS#\0"
.balign 4
_Lt_0848:	.ascii	"TEST_OSPRESENT\0"
.balign 4
_Lt_0850:	.ascii	"CHARGER_IMAGE\0"
.balign 4
_Lt_0856:	.ascii	".PNG\0"
.balign 4
_Lt_085D:	.ascii	"[CPCDOS] Charge_Image() '\0"
.balign 4
_Lt_085E:	.ascii	"' --> Format PNG supporte!\0"
.balign 4
_Lt_0862:	.ascii	"' --> Supported PNG format !\0"
.balign 4
_Lt_0868:	.ascii	".JPG\0"
.balign 4
_Lt_0869:	.ascii	".JPEG\0"
.balign 4
_Lt_086A:	.ascii	".JFIF\0"
.balign 4
_Lt_086B:	.ascii	".MJPG\0"
.balign 4
_Lt_0870:	.ascii	"' --> Format JPG supporte!\0"
.balign 4
_Lt_0874:	.ascii	"' --> Supported JPG format !\0"
.balign 4
_Lt_087D:	.ascii	"' --> Format non supporte!\0"
.balign 4
_Lt_0881:	.ascii	"' --> No supported format !\0"
.balign 4
_Lt_0889:	.ascii	"' --> Mode non GUI, image non chargee\0"
.balign 4
_Lt_088D:	.ascii	"' --> NO GUI mode, image not loaded\0"
.balign 4
_Lt_08A6:	.ascii	"FR ERREUR(\0"
.balign 4
_Lt_08A7:	.ascii	"):\0"
.balign 4
_Lt_08B1:	.ascii	"EN ERREUR(\0"
.balign 4
_Lt_08B9:	.ascii	"Des erreurs detectes\0"
.balign 4
_Lt_08BA:	.ascii	"Appuyer sur une touche\0"
.balign 4
_Lt_08BC:	.ascii	"TESTER_ERREUR_MEMOIRE\0"
.balign 4
_Lt_08CC:	.ascii	"{MODLEVEL}\0"
.balign 4
_Lt_08D2:	.ascii	".LT_08CE\0"
.balign 4
_Lt_08D8:	.ascii	".LT_08D4\0"

.section .ctors
.int _fb_ctor__Cpcdos

.section .ctors.65434
.int ___CPCDOSOSX

.section .ctors
.int __GLOBAL__I

.section .dtors.00000
.int ___END_CPCDOSOSX

.section .dtors
.int __GLOBAL__D
