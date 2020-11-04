	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor____fb_ct:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
push offset _Lt_0004
call _fb_ErrorSetModName
add esp, 4
mov dword ptr [ebp-4], eax
push offset _Lt_0006
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

.section .fbctinf
.ascii "-l\0"
.ascii "cpnti\0"
.ascii "-l\0"
.ascii "pthread\0"
.ascii "-l\0"
.ascii "stdcxx\0"
.ascii "-l\0"
.ascii "watt\0"
.ascii "-l\0"
.ascii "zip\0"
.ascii "-l\0"
.ascii "fbgfx\0"
.ascii "-l\0"
.ascii "z\0"
.ascii "-l\0"
.ascii "jpeg\0"
.ascii "-l\0"
.ascii "gif\0"
.ascii "-l\0"
.ascii "png\0"
.ascii "-gfx\0"


.section .data
.balign 4
_Lt_0004:	.ascii	"__fb_ct.bas\0"
.balign 4
_Lt_0006:	.ascii	"{MODLEVEL}\0"

.section .ctors
.int _fb_ctor____fb_ct
