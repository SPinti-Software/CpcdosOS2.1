	.intel_syntax noprefix

.section .text
.balign 16

.globl _BRVAL
_BRVAL:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03C8
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03C4:
mov eax, 31
sub eax, dword ptr [ebp+12]
mov ecx, eax
shl dword ptr [ebp+8], cl
mov eax, dword ptr [ebp+12]
neg eax
add eax, dword ptr [ebp+16]
add eax, 31
mov ecx, eax
shr dword ptr [ebp+8], cl
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
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

.globl _CPUID_EAX
_CPUID_EAX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03CD
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03CA:
mov eax, [ebp+8]
cpuid
mov [ebp-4], eax
.Lt_03CB:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPUID_EBX
_CPUID_EBX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03D2
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03CF:
mov eax, [ebp+8]
cpuid
mov [ebp-4], ebx
.Lt_03D0:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPUID_ECX
_CPUID_ECX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03D7
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03D4:
mov eax, [ebp+8]
cpuid
mov [ebp-4], ecx
.Lt_03D5:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPUID_EDX
_CPUID_EDX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_03DC
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03D9:
mov eax, [ebp+8]
cpuid
mov [ebp-4], edx
.Lt_03DA:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RECUP_INFOCPU
_RECUP_INFOCPU:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-8], eax
push offset _Lt_046B
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_03DE:
cmp dword ptr [ebp+8], 1
jne .Lt_03E1
.Lt_03E2:
pushfd
pop edx
pushfd
pop eax
xor eax, 2097152 
push eax
popfd
pushfd
pop eax
xor eax, edx
shr eax, 21
mov [ebp-4], eax
jmp .Lt_03E0
.Lt_03E1:
cmp dword ptr [ebp+8], 30
jne .Lt_03E3
.Lt_03E4:
push 0
push 0
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03E3:
cmp dword ptr [ebp+8], 2
jne .Lt_03E5
.Lt_03E6:
push 1
push 1
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03E5:
cmp dword ptr [ebp+8], 3
jne .Lt_03E7
.Lt_03E8:
push 2
push 2
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03E7:
cmp dword ptr [ebp+8], 4
jne .Lt_03E9
.Lt_03EA:
push 3
push 3
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03E9:
cmp dword ptr [ebp+8], 5
jne .Lt_03EB
.Lt_03EC:
push 4
push 4
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03EB:
cmp dword ptr [ebp+8], 6
jne .Lt_03ED
.Lt_03EE:
push 5
push 5
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03ED:
cmp dword ptr [ebp+8], 7
jne .Lt_03EF
.Lt_03F0:
push 6
push 6
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03EF:
cmp dword ptr [ebp+8], 8
jne .Lt_03F1
.Lt_03F2:
push 7
push 7
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03F1:
cmp dword ptr [ebp+8], 9
jne .Lt_03F3
.Lt_03F4:
push 8
push 8
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03F3:
cmp dword ptr [ebp+8], 15
je .Lt_03F6
.Lt_03F7:
cmp dword ptr [ebp+8], 23
jne .Lt_03F5
.Lt_03F6:
push 9
push 9
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03F5:
cmp dword ptr [ebp+8], 16
jne .Lt_03F8
.Lt_03F9:
push 11
push 11
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03F8:
cmp dword ptr [ebp+8], 17
jne .Lt_03FA
.Lt_03FB:
push 12
push 12
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03FA:
cmp dword ptr [ebp+8], 18
jne .Lt_03FC
.Lt_03FD:
push 13
push 13
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03FC:
cmp dword ptr [ebp+8], 19
jne .Lt_03FE
.Lt_03FF:
push 14
push 14
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_03FE:
cmp dword ptr [ebp+8], 20
jne .Lt_0400
.Lt_0401:
push 15
push 15
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0400:
cmp dword ptr [ebp+8], 21
jne .Lt_0402
.Lt_0403:
push 16
push 16
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0402:
cmp dword ptr [ebp+8], 22
jne .Lt_0404
.Lt_0405:
push 17
push 17
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0404:
cmp dword ptr [ebp+8], 26
jne .Lt_0406
.Lt_0407:
push 18
push 18
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0406:
cmp dword ptr [ebp+8], 27
jne .Lt_0408
.Lt_0409:
push 19
push 19
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0408:
cmp dword ptr [ebp+8], 14
jne .Lt_040A
.Lt_040B:
push 19
push 19
push 1
call _CPUID_EAX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_040A:
cmp dword ptr [ebp+8], 25
je .Lt_040D
.Lt_040E:
cmp dword ptr [ebp+8], 36
jne .Lt_040C
.Lt_040D:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_0410
push 20
push 20
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_0410:
.Lt_040F:
jmp .Lt_03E0
.Lt_040C:
cmp dword ptr [ebp+8], 31
jne .Lt_0411
.Lt_0412:
push 21
push 21
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0411:
cmp dword ptr [ebp+8], 32
jne .Lt_0413
.Lt_0414:
push 22
push 22
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0413:
cmp dword ptr [ebp+8], 37
jne .Lt_0415
.Lt_0416:
push 23
push 23
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0415:
cmp dword ptr [ebp+8], 28
jne .Lt_0417
.Lt_0418:
push 24
push 24
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0417:
cmp dword ptr [ebp+8], 38
jne .Lt_0419
.Lt_041A:
push 25
push 25
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0419:
cmp dword ptr [ebp+8], 39
jne .Lt_041B
.Lt_041C:
push 26
push 26
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_041B:
cmp dword ptr [ebp+8], 40
jne .Lt_041D
.Lt_041E:
push 27
push 27
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_041D:
cmp dword ptr [ebp+8], 29
jne .Lt_041F
.Lt_0420:
push 28
push 28
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_041F:
cmp dword ptr [ebp+8], 13
jne .Lt_0421
.Lt_0422:
push 29
push 29
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0421:
cmp dword ptr [ebp+8], 34
jne .Lt_0423
.Lt_0424:
push 31
push 31
push 1
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0423:
cmp dword ptr [ebp+8], 41
jne .Lt_0425
.Lt_0426:
push 0
push 0
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0425:
cmp dword ptr [ebp+8], 63
jne .Lt_0427
.Lt_0428:
push 0
push 0
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0427:
cmp dword ptr [ebp+8], 57
jne .Lt_0429
.Lt_042A:
push 1
push 1
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0429:
cmp dword ptr [ebp+8], 56
jne .Lt_042B
.Lt_042C:
push 2
push 2
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_042B:
cmp dword ptr [ebp+8], 24
jne .Lt_042D
.Lt_042E:
push 3
push 3
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_042D:
cmp dword ptr [ebp+8], 62
jne .Lt_042F
.Lt_0430:
push 3
push 3
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_042F:
cmp dword ptr [ebp+8], 11
jne .Lt_0431
.Lt_0432:
push 4
push 4
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0431:
cmp dword ptr [ebp+8], 58
jne .Lt_0433
.Lt_0434:
push 4
push 4
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0433:
cmp dword ptr [ebp+8], 47
jne .Lt_0435
.Lt_0436:
push 5
push 5
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0435:
cmp dword ptr [ebp+8], 59
jne .Lt_0437
.Lt_0438:
push 5
push 5
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0437:
cmp dword ptr [ebp+8], 48
jne .Lt_0439
.Lt_043A:
push 6
push 6
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0439:
cmp dword ptr [ebp+8], 60
jne .Lt_043B
.Lt_043C:
push 6
push 6
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_043B:
cmp dword ptr [ebp+8], 61
jne .Lt_043D
.Lt_043E:
push 7
push 7
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_043D:
cmp dword ptr [ebp+8], 49
jne .Lt_043F
.Lt_0440:
push 7
push 7
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_043F:
cmp dword ptr [ebp+8], 50
jne .Lt_0441
.Lt_0442:
push 8
push 8
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0441:
cmp dword ptr [ebp+8], 35
jne .Lt_0443
.Lt_0444:
push 9
push 9
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0443:
cmp dword ptr [ebp+8], 51
jne .Lt_0445
.Lt_0446:
push 10
push 10
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0445:
cmp dword ptr [ebp+8], 46
jne .Lt_0447
.Lt_0448:
push 13
push 13
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0447:
cmp dword ptr [ebp+8], 52
jne .Lt_0449
.Lt_044A:
push 14
push 14
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_0449:
cmp dword ptr [ebp+8], 53
jne .Lt_044B
.Lt_044C:
push 18
push 18
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_044B:
cmp dword ptr [ebp+8], 54
jne .Lt_044D
.Lt_044E:
push 27
push 27
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_044D:
cmp dword ptr [ebp+8], 55
jne .Lt_044F
.Lt_0450:
push 31
push 31
push 1
call _CPUID_ECX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
jmp .Lt_03E0
.Lt_044F:
cmp dword ptr [ebp+8], 33
jne .Lt_0451
.Lt_0452:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_0454
push 22
push 22
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_0454:
.Lt_0453:
jmp .Lt_03E0
.Lt_0451:
cmp dword ptr [ebp+8], 42
jne .Lt_0455
.Lt_0456:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_0458
push 31
push 31
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_0458:
.Lt_0457:
jmp .Lt_03E0
.Lt_0455:
cmp dword ptr [ebp+8], 43
jne .Lt_0459
.Lt_045A:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_045C
push 30
push 30
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_045C:
.Lt_045B:
jmp .Lt_03E0
.Lt_0459:
cmp dword ptr [ebp+8], 44
jne .Lt_045D
.Lt_045E:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_0460
push 29
push 29
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_0460:
.Lt_045F:
jmp .Lt_03E0
.Lt_045D:
cmp dword ptr [ebp+8], 12
jne .Lt_0461
.Lt_0462:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_0464
push 29
push 29
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_0464:
.Lt_0463:
jmp .Lt_03E0
.Lt_0461:
cmp dword ptr [ebp+8], 45
jne .Lt_0465
.Lt_0466:
push 2147483648
call _CPUID_EAX
add esp, 4
cmp eax, 2147483648
jbe .Lt_0468
push 30
push 30
push 2147483649
call _CPUID_EDX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_03DF
.Lt_0468:
.Lt_0467:
.Lt_0465:
.Lt_0469:
.Lt_03E0:
.Lt_03DF:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-8]
call _fb_ErrorSetModName
add esp, 4
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __ZN7_CPUID_9GET_CPUIDEv
__ZN7_CPUID_9GET_CPUIDEv:
push ebp
mov ebp, esp
sub esp, 116
push ebx
push esi
push edi
mov byte ptr [ebp-4], 0
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-76], eax
push offset _Lt_057D
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-80], eax
.Lt_046D:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov byte ptr [ebp-8], 0
lea eax, [ebp-72]
push eax
mov edi, eax
xor eax, eax
mov ecx, 12
rep stosd
mov byte ptr [edi], al
pop eax
push 1
call _RECUP_INFOCPU
add esp, 4
test eax, eax
jne .Lt_0470
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+60], 0
mov byte ptr [ebp-4], 0
jmp .Lt_046E
jmp .Lt_046F
.Lt_0470:
mov byte ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+60], 1
.Lt_046F:
push 0
call _CPUID_EAX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
xor eax, eax
cpuid
mov [ebp-20], ebx
mov [ebp-20+4], edx
mov [ebp-20+8], ecx
push 13
push offset _Lt_0471
push 13
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0473
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
mov dword ptr [ebx+36], ecx
jmp .Lt_0472
.Lt_0473:
push 13
push offset _Lt_0475
push 13
lea ecx, [ebp-20]
push ecx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0474
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ecx+36], ebx
jmp .Lt_0472
.Lt_0474:
push 13
push offset _Lt_0477
push 13
lea ebx, [ebp-20]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0476
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+36], ecx
jmp .Lt_0472
.Lt_0476:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+36], eax
.Lt_0472:
push 0
push 13
lea eax, [ebp-20]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+132]
push ebx
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_0479
push 1
call _CPUID_EAX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
push 0
push 3
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+128], eax
push 4
push 7
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
push 8
push 11
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
push 16
push 19
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
push 20
push 27
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
push 0
push 7
push 1
call _CPUID_EBX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
push 0
push 0
push 2
call _CPUID_EAX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
cmp dword ptr [eax+36], ecx
jne .Lt_047B
push 2147483648
call _CPUID_EAX
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 2147483648
jbe .Lt_047D
push 8
push 11
push 2147483649
call _CPUID_EAX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+24], eax
push 20
push 27
push 2147483649
call _CPUID_EAX
add esp, 4
push eax
call _BRVAL
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+28], eax
.Lt_047D:
.Lt_047C:
.Lt_047B:
.Lt_047A:
.Lt_0479:
.Lt_0478:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+52]
cmp dword ptr [eax+36], ebx
jne .Lt_047F
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 2147483648
jbe .Lt_0481
push 2147483649
call _CPUID_EAX
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 2147483651
jbe .Lt_0483
mov eax, -2147483646
cpuid
mov [ebp-72], eax
mov [ebp-72+4], ebx
mov [ebp-72+8], ecx
mov [ebp-72+12], edx
mov eax, -2147483645
cpuid
mov [ebp-72+16], eax
mov [ebp-72+20], ebx
mov [ebp-72+24], ecx
mov [ebp-72+28], edx
mov eax, -2147483644
cpuid
mov [ebp-72+32], eax
mov [ebp-72+36], ebx
mov [ebp-72+40], ecx
mov [ebp-72+44], edx
.Lt_0483:
.Lt_0482:
.Lt_0481:
.Lt_0480:
.Lt_047F:
.Lt_047E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+120], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+124], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 15
jne .Lt_0485
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
add dword ptr [eax+120], ecx
.Lt_0485:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+24], 6
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+24], 15
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0487
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
add dword ptr [ebx+124], ecx
.Lt_0487:
push 1
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0489
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+60], 1
.Lt_0489:
push 30
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_048B
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+61], 1
.Lt_048B:
push 2
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_048D
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+62], 1
.Lt_048D:
push 3
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_048F
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+63], 1
.Lt_048F:
push 4
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0491
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+64], 1
.Lt_0491:
push 5
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0493
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+65], 1
.Lt_0493:
push 6
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0495
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+66], 1
.Lt_0495:
push 7
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0497
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+67], 1
.Lt_0497:
push 8
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0499
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+68], 1
.Lt_0499:
push 9
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_049B
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+69], 1
.Lt_049B:
push 15
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_049D
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+70], 1
.Lt_049D:
push 23
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_049F
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+71], 1
.Lt_049F:
push 16
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04A1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+72], 1
.Lt_04A1:
push 17
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04A3
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+73], 1
.Lt_04A3:
push 18
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04A5
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+74], 1
.Lt_04A5:
push 19
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04A7
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+75], 1
.Lt_04A7:
push 20
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04A9
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+76], 1
.Lt_04A9:
push 21
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04AB
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+77], 1
.Lt_04AB:
push 22
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04AD
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+78], 1
.Lt_04AD:
push 27
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04AF
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+79], 1
.Lt_04AF:
push 28
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04B1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+80], 1
.Lt_04B1:
push 29
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04B3
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+81], 1
.Lt_04B3:
push 14
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04B5
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+82], 1
.Lt_04B5:
push 37
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04B7
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+83], 1
.Lt_04B7:
push 38
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04B9
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+84], 1
.Lt_04B9:
push 39
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04BB
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+85], 1
.Lt_04BB:
push 41
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04BD
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+86], 1
.Lt_04BD:
push 35
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04BF
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+87], 1
.Lt_04BF:
push 60
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04C1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+88], 1
.Lt_04C1:
push 42
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04C3
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+89], 1
.Lt_04C3:
push 43
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04C5
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+90], 1
.Lt_04C5:
push 54
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04C7
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+91], 1
.Lt_04C7:
push 56
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04C9
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+92], 1
.Lt_04C9:
push 57
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04CB
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+93], 1
.Lt_04CB:
push 55
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04CD
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+94], 1
.Lt_04CD:
push 25
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04CF
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+95], 1
.Lt_04CF:
push 44
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04D1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+96], 1
.Lt_04D1:
push 58
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04D3
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+97], 1
.Lt_04D3:
push 59
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04D5
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+98], 1
.Lt_04D5:
push 61
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04D7
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+99], 1
.Lt_04D7:
push 62
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04D9
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+100], 1
.Lt_04D9:
push 63
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04DB
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+101], 1
.Lt_04DB:
push 26
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04DD
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+102], 1
.Lt_04DD:
push 31
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04DF
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+103], 1
.Lt_04DF:
push 40
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04E1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+104], 1
.Lt_04E1:
push 46
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04E3
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+105], 1
.Lt_04E3:
push 12
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04E5
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+106], 1
.Lt_04E5:
push 13
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04E7
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+107], 1
.Lt_04E7:
push 50
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04E9
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+108], 1
.Lt_04E9:
push 49
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04EB
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+109], 1
.Lt_04EB:
push 53
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04ED
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+110], 1
.Lt_04ED:
push 47
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04EF
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+111], 1
.Lt_04EF:
push 48
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04F1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+112], 1
.Lt_04F1:
push 52
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04F3
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+113], 1
.Lt_04F3:
push 51
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04F5
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+114], 1
.Lt_04F5:
push 45
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04F7
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+115], 1
.Lt_04F7:
push 11
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04F9
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+116], 1
.Lt_04F9:
push 34
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04FB
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+117], 1
.Lt_04FB:
push 24
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04FD
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+118], 1
.Lt_04FD:
push 36
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_04FF
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+119], 1
.Lt_04FF:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+48]
cmp dword ptr [eax+36], ebx
jne .Lt_0501
push 0
push 8
push offset _Lt_0502
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+144]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-84], ebx
cmp dword ptr [ebp-84], 0
jne .Lt_0505
.Lt_0506:
push 0
push -1
push 18
push offset _Lt_0507
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+144]
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
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-100], ebx
cmp dword ptr [ebp-100], 4
jne .Lt_050B
.Lt_050C:
push 0
push -1
push 16
push offset _Lt_050D
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+144]
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
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0509
.Lt_050B:
cmp dword ptr [ebp-100], 5
jne .Lt_050F
.Lt_0510:
push 37
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_0512
push 0
push -1
push 23
push offset _Lt_0513
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea ebx, [ebp-112]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0511
.Lt_0512:
push 0
push -1
push 21
push offset _Lt_0515
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea ebx, [ebp-112]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0511:
jmp .Lt_0509
.Lt_050F:
cmp dword ptr [ebp-100], 6
jne .Lt_0517
.Lt_0518:
push 38
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_051A
push 0
push -1
push 23
push offset _Lt_051B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea ebx, [ebp-112]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0519
.Lt_051A:
push 37
call _RECUP_INFOCPU
add esp, 4
test eax, eax
je .Lt_051D
push 0
push -1
push 22
push offset _Lt_051E
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea ebx, [ebp-112]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0519
.Lt_051D:
push 0
push -1
push 23
push offset _Lt_0520
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea ebx, [ebp-112]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0519:
.Lt_0517:
.Lt_0509:
jmp .Lt_0503
.Lt_0505:
cmp dword ptr [ebp-84], 1
jne .Lt_0522
.Lt_0523:
push 0
push -1
push 31
push offset _Lt_0524
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0522:
cmp dword ptr [ebp-84], 2
jne .Lt_0526
.Lt_0527:
push 0
push -1
push 34
push offset _Lt_0528
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0526:
cmp dword ptr [ebp-84], 3
jne .Lt_052A
.Lt_052B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 1713
jne .Lt_052D
push 0
push -1
push 30
push offset _Lt_052E
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_052C
.Lt_052D:
push 0
push -1
push 43
push offset _Lt_0530
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_052C:
jmp .Lt_0503
.Lt_052A:
cmp dword ptr [ebp-84], 4
jne .Lt_0532
.Lt_0533:
push 0
push -1
push 34
push offset _Lt_0528
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0532:
cmp dword ptr [ebp-84], 6
jne .Lt_0535
.Lt_0536:
push 0
push -1
push 43
push offset _Lt_0537
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0535:
cmp dword ptr [ebp-84], 7
jne .Lt_0539
.Lt_053A:
push 0
push -1
push 37
push offset _Lt_053B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0539:
cmp dword ptr [ebp-84], 8
je .Lt_053E
.Lt_053F:
cmp dword ptr [ebp-84], 9
jne .Lt_053D
.Lt_053E:
push 0
push -1
push 32
push offset _Lt_0540
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_053D:
cmp dword ptr [ebp-84], 10
jne .Lt_0542
.Lt_0543:
push 0
push -1
push 30
push offset _Lt_052E
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0542:
cmp dword ptr [ebp-84], 11
jne .Lt_0545
.Lt_0546:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 3859
jne .Lt_0548
push 0
push -1
push 31
push offset _Lt_0549
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0547
.Lt_0548:
push 0
push -1
push 28
push offset _Lt_054B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0547:
jmp .Lt_0503
.Lt_0545:
cmp dword ptr [ebp-84], 12
jne .Lt_054D
.Lt_054E:
push 0
push -1
push 31
push offset _Lt_0549
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_054D:
cmp dword ptr [ebp-84], 14
jne .Lt_0550
.Lt_0551:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 3859
jne .Lt_0553
push 0
push -1
push 28
push offset _Lt_054B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0552
.Lt_0553:
push 0
push -1
push 41
push offset _Lt_0555
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0552:
jmp .Lt_0503
.Lt_0550:
cmp dword ptr [ebp-84], 15
jne .Lt_0557
.Lt_0558:
push 0
push -1
push 37
push offset _Lt_053B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0557:
cmp dword ptr [ebp-84], 19
jne .Lt_055A
.Lt_055B:
push 0
push -1
push 37
push offset _Lt_053B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_055A:
cmp dword ptr [ebp-84], 22
jne .Lt_055D
.Lt_055E:
push 0
push -1
push 32
push offset _Lt_055F
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_055D:
cmp dword ptr [ebp-84], 23
jne .Lt_0561
.Lt_0562:
push 0
push -1
push 37
push offset _Lt_053B
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0503
.Lt_0561:
push 0
push -1
push -1
push 4
push offset _Lt_0565
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _fb_UIntToStr
add esp, 4
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
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea ebx, [ebp-108]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+144]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0564:
.Lt_0503:
.Lt_0501:
.Lt_0500:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
cmp dword ptr [eax+36], ecx
jne .Lt_0569
push 0
push -1
push 5
push offset _Lt_056A
push -1
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+144]
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
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 2147483651
jbe .Lt_056D
push 0
push -1
push 49
lea eax, [ebp-72]
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea ecx, [ebp-104]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
call _fb_StrAssign
add esp, 20
jmp .Lt_056C
.Lt_056D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 4
jne .Lt_0570
push 0
push -1
push 19
push offset _Lt_0571
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea ecx, [ebp-104]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
call _fb_StrAssign
add esp, 20
jmp .Lt_056F
.Lt_0570:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 5
jne .Lt_0573
push 0
push -1
push 10
push offset _Lt_0574
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea ecx, [ebp-104]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
call _fb_StrAssign
add esp, 20
jmp .Lt_056F
.Lt_0573:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 6
jne .Lt_0576
push 0
push -1
push 10
push offset _Lt_0577
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea ecx, [ebp-104]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
call _fb_StrAssign
add esp, 20
jmp .Lt_056F
.Lt_0576:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _fb_UIntToStr
add esp, 4
push eax
push 21
push offset _Lt_0579
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea ecx, [ebp-116]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
lea ecx, [eax+144]
push ecx
call _fb_StrAssign
add esp, 20
.Lt_056F:
.Lt_056C:
.Lt_0569:
.Lt_0568:
mov byte ptr [ebp-4], 1
.Lt_046E:
push dword ptr [ebp-80]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-76]
call _fb_ErrorSetModName
add esp, 4
mov al, byte ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _MAJ_CPUINFO
_MAJ_CPUINFO:
push ebp
mov ebp, esp
sub esp, 1452
.Lt_0581:
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-1232], eax
push offset _Lt_0654
call _fb_ErrorSetFuncName
add esp, 4
mov dword ptr [ebp-1236], eax
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+704]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 41
push offset _Lt_0583
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push 500000
call __ZN6cpinti15cpinti_doeventsEj
add esp, 4
lea eax, [_CPCDOS_INSTANCE+618264]
push eax
call __ZN7_CPUID_9GET_CPUIDEv
add esp, 4
cmp al, 1
jne .Lt_0587
mov dword ptr [ebp-1260], 0
mov dword ptr [ebp-1256], 0
mov dword ptr [ebp-1252], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1260]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1248], 0
mov dword ptr [ebp-1244], 0
mov dword ptr [ebp-1240], 0
push 0
push 13
push offset _Lt_0588
push -1
lea eax, [ebp-1248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1248]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1260]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1248]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1272], 0
mov dword ptr [ebp-1268], 0
mov dword ptr [ebp-1264], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1272]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
lea eax, [_CPCDOS_INSTANCE+618396]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1272]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1308], 0
mov dword ptr [ebp-1304], 0
mov dword ptr [ebp-1300], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1308]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1308]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+688]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1296], 0
mov dword ptr [ebp-1292], 0
mov dword ptr [ebp-1288], 0
push 0
push -1
push -1
lea eax, [_CPCDOS_INSTANCE+618408]
push eax
push 2
push offset _Lt_0396
mov dword ptr [ebp-1284], 0
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
lea eax, [ebp-1284]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1296]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1296]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1308]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1296]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1332], 0
mov dword ptr [ebp-1328], 0
mov dword ptr [ebp-1324], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1332]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1332]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1320], 0
mov dword ptr [ebp-1316], 0
mov dword ptr [ebp-1312], 0
push 0
push 11
push offset _Lt_058F
push -1
lea eax, [ebp-1320]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1320]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1332]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1320]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1356], 0
mov dword ptr [ebp-1352], 0
mov dword ptr [ebp-1348], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1356]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1356]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1344], 0
mov dword ptr [ebp-1340], 0
mov dword ptr [ebp-1336], 0
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618384]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1344]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1344]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1356]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1344]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1380], 0
mov dword ptr [ebp-1376], 0
mov dword ptr [ebp-1372], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1380]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1380]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1368], 0
mov dword ptr [ebp-1364], 0
mov dword ptr [ebp-1360], 0
push 0
push 8
push offset _Lt_0594
push -1
lea eax, [ebp-1368]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1368]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1380]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1368]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1404], 0
mov dword ptr [ebp-1400], 0
mov dword ptr [ebp-1396], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1404]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1404]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1392], 0
mov dword ptr [ebp-1388], 0
mov dword ptr [ebp-1384], 0
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618388]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1392]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1392]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1404]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1392]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1428], 0
mov dword ptr [ebp-1424], 0
mov dword ptr [ebp-1420], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1428]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1428]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1416], 0
mov dword ptr [ebp-1412], 0
mov dword ptr [ebp-1408], 0
push 0
push 5
push offset _Lt_0599
push -1
lea eax, [ebp-1416]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1416]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1428]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1416]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1452], 0
mov dword ptr [ebp-1448], 0
mov dword ptr [ebp-1444], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1452]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1452]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+700]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1440], 0
mov dword ptr [ebp-1436], 0
mov dword ptr [ebp-1432], 0
push 0
push -1
push dword ptr [_CPCDOS_INSTANCE+618392]
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1440]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1440]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1452]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1440]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0586
.Lt_0587:
mov dword ptr [ebp-1260], 0
mov dword ptr [ebp-1256], 0
mov dword ptr [ebp-1252], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1260]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1260]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1248], 0
mov dword ptr [ebp-1244], 0
mov dword ptr [ebp-1240], 0
push 0
push 24
push offset _Lt_059E
push -1
lea eax, [ebp-1248]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1248]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1260]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1248]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1284], 0
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1284]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [_CPCDOS_INSTANCE+696]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1272], 0
mov dword ptr [ebp-1268], 0
mov dword ptr [ebp-1264], 0
push 0
push 18
push offset _Lt_05A1
push -1
lea eax, [ebp-1272]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1272]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1284]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1272]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0586:
push 2000
call _fb_Sleep
add esp, 4
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
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 15
push offset _Lt_05A4
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
cmp byte ptr [_CPCDOS_INSTANCE+618324], 1
jne .Lt_05A8
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05A7
.Lt_05A8:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05A7:
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
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618324]
push eax
call _fb_BoolToStr
add esp, 4
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
push 200
call _fb_Sleep
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
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 14
push offset _Lt_05AB
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
cmp byte ptr [_CPCDOS_INSTANCE+618335], 1
jne .Lt_05AF
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05AE
.Lt_05AF:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05AE:
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618335]
push eax
call _fb_BoolToStr
add esp, 4
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
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-148]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 30
push offset _Lt_05B2
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-136]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-136]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618375], 1
jne .Lt_05B6
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05B5
.Lt_05B6:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05B5:
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-172]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618375]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-160]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
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
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 24
push offset _Lt_05B9
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
cmp byte ptr [_CPCDOS_INSTANCE+618346], 1
jne .Lt_05BD
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05BC
.Lt_05BD:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05BC:
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-220]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618346]
push eax
call _fb_BoolToStr
add esp, 4
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
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
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
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 19
push offset _Lt_05C0
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
cmp byte ptr [_CPCDOS_INSTANCE+618357], 1
jne .Lt_05C4
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05C3
.Lt_05C4:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05C3:
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-268]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618357]
push eax
call _fb_BoolToStr
add esp, 4
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
lea eax, [ebp-268]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-256]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-292]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push 16
push offset _Lt_05C7
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-292]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618355], 1
jne .Lt_05CB
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05CA
.Lt_05CB:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05CA:
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618355]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-304]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-304]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-316]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-304]
push eax
call _fb_StrDelete
add esp, 4
push 200
call _fb_Sleep
add esp, 4
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-340]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-340]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
push 0
push 13
push offset _Lt_05CE
push -1
lea eax, [ebp-328]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-328]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-340]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-328]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618329], 1
jne .Lt_05D2
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05D1
.Lt_05D2:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05D1:
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-364]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-364]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618329]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-352]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-364]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-352]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-388]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-388]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push 14
push offset _Lt_05D5
push -1
lea eax, [ebp-376]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-376]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-388]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-376]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618340], 1
jne .Lt_05D9
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05D8
.Lt_05D9:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05D8:
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-412]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-412]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618340]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-400]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-400]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-412]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-400]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-436]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-436]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
push 0
push 15
push offset _Lt_05DC
push -1
lea eax, [ebp-424]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-424]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-436]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-424]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618343], 1
jne .Lt_05E0
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05DF
.Lt_05E0:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05DF:
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-460]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-460]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618343]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-448]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-448]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-460]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-448]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-484]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-484]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
push 0
push 27
push offset _Lt_05E3
push -1
lea eax, [ebp-472]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-472]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-484]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-472]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618328], 1
jne .Lt_05E7
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05E6
.Lt_05E7:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05E6:
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-508]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-508]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618328]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-496]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-496]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-508]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-496]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-532]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-532]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
push 0
push 13
push offset _Lt_05EA
push -1
lea eax, [ebp-520]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-520]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-532]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-520]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618331], 1
jne .Lt_05EE
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05ED
.Lt_05EE:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05ED:
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-556]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-556]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618331]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-544]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-544]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-556]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-544]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-580]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-580]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
push 0
push 19
push offset _Lt_05F1
push -1
lea eax, [ebp-568]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-568]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-580]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-568]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618333], 1
jne .Lt_05F5
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05F4
.Lt_05F5:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05F4:
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-604]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-604]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618333]
push eax
call _fb_BoolToStr
add esp, 4
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
lea eax, [ebp-604]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-592]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-628]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-628]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
push 0
push 14
push offset _Lt_05F8
push -1
lea eax, [ebp-616]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-616]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-628]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-616]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618344], 1
jne .Lt_05FC
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_05FB
.Lt_05FC:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_05FB:
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-652]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-652]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-640], 0
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618344]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-640]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-640]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-652]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-640]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-676]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-676]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-664], 0
mov dword ptr [ebp-660], 0
mov dword ptr [ebp-656], 0
push 0
push 13
push offset _Lt_05FF
push -1
lea eax, [ebp-664]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-664]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-676]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-664]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618345], 1
jne .Lt_0603
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0602
.Lt_0603:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0602:
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-700]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-700]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618345]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-688]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-688]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-700]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-688]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-724], 0
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-716], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-724]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-724]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
push 0
push 33
push offset _Lt_0606
push -1
lea eax, [ebp-712]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-712]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-724]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-712]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618366], 1
jne .Lt_060A
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0609
.Lt_060A:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0609:
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-748]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-748]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618366]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-736]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-736]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-748]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-736]
push eax
call _fb_StrDelete
add esp, 4
push 200
call _fb_Sleep
add esp, 4
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-772]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-772]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
push 0
push 13
push offset _Lt_060D
push -1
lea eax, [ebp-760]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-760]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-772]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-760]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618325], 1
jne .Lt_0611
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0610
.Lt_0611:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0610:
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-796]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-796]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618325]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-784]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-784]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-796]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-784]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
mov dword ptr [ebp-812], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-820]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-820]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
push 0
push 13
push offset _Lt_0614
push -1
lea eax, [ebp-808]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-808]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-820]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-808]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618347], 1
jne .Lt_0618
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0617
.Lt_0618:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0617:
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-844]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-844]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618347]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-832]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-832]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-844]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-832]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-868], 0
mov dword ptr [ebp-864], 0
mov dword ptr [ebp-860], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-868]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-868]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-856], 0
mov dword ptr [ebp-852], 0
mov dword ptr [ebp-848], 0
push 0
push 13
push offset _Lt_061B
push -1
lea eax, [ebp-856]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-856]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-868]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-856]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618348], 1
jne .Lt_061F
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_061E
.Lt_061F:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_061E:
mov dword ptr [ebp-892], 0
mov dword ptr [ebp-888], 0
mov dword ptr [ebp-884], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-892]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-892]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-880], 0
mov dword ptr [ebp-876], 0
mov dword ptr [ebp-872], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618348]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-880]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-880]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-892]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-880]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-916], 0
mov dword ptr [ebp-912], 0
mov dword ptr [ebp-908], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-916]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-916]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
mov dword ptr [ebp-896], 0
push 0
push 14
push offset _Lt_0622
push -1
lea eax, [ebp-904]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-904]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-916]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-904]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618349], 1
jne .Lt_0626
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0625
.Lt_0626:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0625:
mov dword ptr [ebp-940], 0
mov dword ptr [ebp-936], 0
mov dword ptr [ebp-932], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-940]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-940]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-928], 0
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618349]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-928]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-928]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-940]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-928]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-964], 0
mov dword ptr [ebp-960], 0
mov dword ptr [ebp-956], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-964]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-964]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-952], 0
mov dword ptr [ebp-948], 0
mov dword ptr [ebp-944], 0
push 0
push 14
push offset _Lt_0629
push -1
lea eax, [ebp-952]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-952]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-964]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-952]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618350], 1
jne .Lt_062D
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_062C
.Lt_062D:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_062C:
mov dword ptr [ebp-988], 0
mov dword ptr [ebp-984], 0
mov dword ptr [ebp-980], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-988]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-988]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-976], 0
mov dword ptr [ebp-972], 0
mov dword ptr [ebp-968], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618350]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-976]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-976]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-988]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-976]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
mov dword ptr [ebp-1004], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1012]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1012]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
mov dword ptr [ebp-992], 0
push 0
push 14
push offset _Lt_0630
push -1
lea eax, [ebp-1000]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1000]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1012]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1000]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618351], 1
jne .Lt_0634
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0633
.Lt_0634:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0633:
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
mov dword ptr [ebp-1028], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1036]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1036]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
mov dword ptr [ebp-1016], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618351]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1024]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1024]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1036]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1024]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1060], 0
mov dword ptr [ebp-1056], 0
mov dword ptr [ebp-1052], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1060]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1060]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1048], 0
mov dword ptr [ebp-1044], 0
mov dword ptr [ebp-1040], 0
push 0
push 15
push offset _Lt_0637
push -1
lea eax, [ebp-1048]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1048]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1060]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1048]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618352], 1
jne .Lt_063B
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_063A
.Lt_063B:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_063A:
mov dword ptr [ebp-1084], 0
mov dword ptr [ebp-1080], 0
mov dword ptr [ebp-1076], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1084]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1084]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1072], 0
mov dword ptr [ebp-1068], 0
mov dword ptr [ebp-1064], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618352]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1072]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1072]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1084]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1072]
push eax
call _fb_StrDelete
add esp, 4
push 500
call _fb_Sleep
add esp, 4
mov dword ptr [ebp-1108], 0
mov dword ptr [ebp-1104], 0
mov dword ptr [ebp-1100], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1108]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1108]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1096], 0
mov dword ptr [ebp-1092], 0
mov dword ptr [ebp-1088], 0
push 0
push 15
push offset _Lt_063E
push -1
lea eax, [ebp-1096]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1096]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1108]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1096]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618353], 1
jne .Lt_0642
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0641
.Lt_0642:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0641:
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1132]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1120], 0
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618353]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1120]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1120]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1132]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1156], 0
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1156]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1144], 0
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
push 0
push 16
push offset _Lt_0645
push -1
lea eax, [ebp-1144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1144]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1156]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1144]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618354], 1
jne .Lt_0649
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_0648
.Lt_0649:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_0648:
mov dword ptr [ebp-1180], 0
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1180]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1180]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1168], 0
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618354]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1168]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1168]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1180]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1168]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-1204], 0
mov dword ptr [ebp-1200], 0
mov dword ptr [ebp-1196], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1204]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+744]
push 0
push dword ptr [_CPCDOS_INSTANCE+684]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1192], 0
mov dword ptr [ebp-1188], 0
mov dword ptr [ebp-1184], 0
push 0
push 24
push offset _Lt_064C
push -1
lea eax, [ebp-1192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1192]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1204]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1192]
push eax
call _fb_StrDelete
add esp, 4
cmp byte ptr [_CPCDOS_INSTANCE+618345], 1
jne .Lt_0650
mov eax, dword ptr [_CPCDOS_INSTANCE+688]
mov dword ptr [ebp-4], eax
jmp .Lt_064F
.Lt_0650:
mov eax, dword ptr [_CPCDOS_INSTANCE+696]
mov dword ptr [ebp-4], eax
.Lt_064F:
mov dword ptr [ebp-1228], 0
mov dword ptr [ebp-1224], 0
mov dword ptr [ebp-1220], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-1228]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1228]
push eax
push dword ptr [_CPCDOS_INSTANCE+644]
push dword ptr [_CPCDOS_INSTANCE+756]
push dword ptr [_CPCDOS_INSTANCE+740]
push 0
push dword ptr [ebp-4]
push dword ptr [_CPCDOS_INSTANCE+676]
push dword ptr [_CPCDOS_INSTANCE+664]
mov dword ptr [ebp-1216], 0
mov dword ptr [ebp-1212], 0
mov dword ptr [ebp-1208], 0
push 0
push -1
movzx eax, byte ptr [_CPCDOS_INSTANCE+618345]
push eax
call _fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-1216]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-1216]
push eax
call _DEBUG
add esp, 36
lea eax, [ebp-1228]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-1216]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0582:
push dword ptr [ebp-1236]
call _fb_ErrorSetFuncName
add esp, 4
push dword ptr [ebp-1232]
call _fb_ErrorSetModName
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__cpu:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_03C6
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0657
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
_Lt_03C6:	.ascii	"Core\\cpu.bas\0"
.balign 4
_Lt_03C8:	.ascii	"BRVAL\0"
.balign 4
_Lt_03CD:	.ascii	"CPUID_EAX\0"
.balign 4
_Lt_03D2:	.ascii	"CPUID_EBX\0"
.balign 4
_Lt_03D7:	.ascii	"CPUID_ECX\0"
.balign 4
_Lt_03DC:	.ascii	"CPUID_EDX\0"
.balign 4
_Lt_046B:	.ascii	"RECUP_INFOCPU\0"
.balign 4
_Lt_0471:	.ascii	"GenuineIntel\0"
.balign 4
_Lt_0475:	.ascii	"AuthenticAMD\0"
.balign 4
_Lt_0477:	.ascii	"CyrixInstead\0"
.balign 4
_Lt_0502:	.ascii	"Intel :\0"
.balign 4
_Lt_0507:	.ascii	" (Modele recent?)\0"
.balign 4
_Lt_050D:	.ascii	" i468 processor\0"
.balign 4
_Lt_0513:	.ascii	" Pentium MMX processor\0"
.balign 4
_Lt_0515:	.ascii	" Pentium I processor\0"
.balign 4
_Lt_051B:	.ascii	" Pentium III processor\0"
.balign 4
_Lt_051E:	.ascii	" Pentium II processor\0"
.balign 4
_Lt_0520:	.ascii	" Pentium Pro processor\0"
.balign 4
_Lt_0524:	.ascii	" Intel(R) Celeron(R) processor\0"
.balign 4
_Lt_0528:	.ascii	"Intel(R) Pentium(R) III processor\0"
.balign 4
_Lt_052E:	.ascii	"Intel(R) Celeron(R) processor\0"
.balign 4
_Lt_0530:	.ascii	"Intel(R) Pentium(R) III Xeon(TM) processor\0"
.balign 4
_Lt_0537:	.ascii	"Mobile Intel(R) Pentium(R) III processor-M\0"
.balign 4
_Lt_053B:	.ascii	"Mobile Intel(R) Celeron(R) processor\0"
.balign 4
_Lt_0540:	.ascii	"Intel(R) Pentium(R) 4 processor\0"
.balign 4
_Lt_0549:	.ascii	"Intel(R) Xeon(TM) processor MP\0"
.balign 4
_Lt_054B:	.ascii	"Intel(R) Xeon(TM) processor\0"
.balign 4
_Lt_0555:	.ascii	"Mobile Intel(R) Pentium(R) 4 processor-M\0"
.balign 4
_Lt_055F:	.ascii	"Intel(R) Pentium(R) M processor\0"
.balign 4
_Lt_0565:	.ascii	" ??\0"
.balign 4
_Lt_056A:	.ascii	"AMD \0"
.balign 4
_Lt_0571:	.ascii	"Am486/Am 5x86 (X5)\0"
.balign 4
_Lt_0574:	.ascii	"K5 Family\0"
.balign 4
_Lt_0577:	.ascii	"K6 Family\0"
.balign 4
_Lt_0579:	.ascii	"Unknown/New CPUID : \0"
.balign 4
_Lt_057D:	.ascii	"GET_CPUID\0"
.balign 4
_Lt_0583:	.ascii	" * Recuperation des informations CPU ...\0"
.balign 4
_Lt_0588:	.ascii	" Processeur \0"
.balign 4
_Lt_058F:	.ascii	"  Familly:\0"
.balign 4
_Lt_0594:	.ascii	" Model:\0"
.balign 4
_Lt_0599:	.ascii	" ID:\0"
.balign 4
_Lt_059E:	.ascii	" Processeur x86 inconnu\0"
.balign 4
_Lt_05A1:	.ascii	" CPUID -> [ERROR]\0"
.balign 4
_Lt_05A4:	.ascii	"  [_cpuid] -> \0"
.balign 4
_Lt_05AB:	.ascii	"  [_apic] -> \0"
.balign 4
_Lt_05B2:	.ascii	"  [_VirtualMachineExtx86] -> \0"
.balign 4
_Lt_05B9:	.ascii	"  [_MultiProcessor] -> \0"
.balign 4
_Lt_05C0:	.ascii	"  [_MultiCore] -> \0"
.balign 4
_Lt_05C7:	.ascii	"  [_rdtscp] -> \0"
.balign 4
_Lt_05CE:	.ascii	"  [_tsc] -> \0"
.balign 4
_Lt_05D5:	.ascii	"  [_cmov] -> \0"
.balign 4
_Lt_05DC:	.ascii	"  [_clfsh] -> \0"
.balign 4
_Lt_05E3:	.ascii	"  [_PageSizeExtension] -> \0"
.balign 4
_Lt_05EA:	.ascii	"  [_pae] -> \0"
.balign 4
_Lt_05F1:	.ascii	"  [_cmpxchg8b] -> \0"
.balign 4
_Lt_05F8:	.ascii	"  [_fxsr] -> \0"
.balign 4
_Lt_05FF:	.ascii	"  [_hht] -> \0"
.balign 4
_Lt_0606:	.ascii	"  [_PageSizeExtension36bits] -> \0"
.balign 4
_Lt_060D:	.ascii	"  [_fpu] -> \0"
.balign 4
_Lt_0614:	.ascii	"  [_mmx] -> \0"
.balign 4
_Lt_061B:	.ascii	"  [_sse] -> \0"
.balign 4
_Lt_0622:	.ascii	"  [_sse2] -> \0"
.balign 4
_Lt_0629:	.ascii	"  [_sse3] -> \0"
.balign 4
_Lt_0630:	.ascii	"  [_sse4] -> \0"
.balign 4
_Lt_0637:	.ascii	"  [_sse4a] -> \0"
.balign 4
_Lt_063E:	.ascii	"  [_3dnow] -> \0"
.balign 4
_Lt_0645:	.ascii	"  [_3dnow2] -> \0"
.balign 4
_Lt_064C:	.ascii	"  [_HyperThreading] -> \0"
.balign 4
_Lt_0654:	.ascii	"MAJ_CPUINFO\0"
.balign 4
_Lt_0657:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor__cpu
