	.intel_syntax noprefix

.section .text
.balign 16

.globl ___FB__PE_CpcdosOSx_INIT_
___FB__PE_CpcdosOSx_INIT_:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0004:
push dword ptr [ebp+8]
call ___CPCDOS_INIT_1
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0005:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 4
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init
add esp, 12
.Lt_0002:
push 0
call ___FB__PE_CpcdosOSx_INIT_
add esp, 4
push 1
call _fb_End
add esp, 4
.Lt_0003:
push 0
call _fb_End
add esp, 4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
