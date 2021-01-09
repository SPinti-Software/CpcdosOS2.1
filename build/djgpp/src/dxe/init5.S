/*
 * DXE3: frame info registration + construction
 *
 *  Copyright (C) 2002 - Borca Daniel
 *  Email : dborca@yahoo.com
 *  Web   : http://www.geocities.com/dborca
 */


		.text

		.p2align 2,,3
		.globl	_init
_init:
		pushl	$eh_frame
		pushl	$___EH_FRAME_BEGIN__
		call	___register_frame_info
		popl	%eax
		popl	%edx
		pushl	%ebx
		movl	$djgpp_first_ctor, %ebx
	0:
		cmpl	$djgpp_last_ctor, %ebx
		jnb	1f
		call	*(%ebx)
		addl	$4, %ebx
		jmp	0b
	1:
		popl	%ebx
		ret

___register_frame_info:
		pushl	%ebp
		movl	%esp, %ebp
		popl	%ebp
		ret

.lcomm		eh_frame, 32
