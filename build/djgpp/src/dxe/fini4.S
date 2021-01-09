/*
 * DXE3: frame info deregistration
 *
 *  Copyright (C) 2002 - Borca Daniel
 *  Email : dborca@yahoo.com
 *  Web   : http://www.geocities.com/dborca
 */


		.text

		.p2align 2,,3
		.globl	_fini
_fini:
		pushl	$___EH_FRAME_BEGIN__
		call	___deregister_frame_info
		popl	%eax
		ret

___deregister_frame_info:
		pushl	%ebp
		movl	%esp, %ebp
		popl	%ebp
		ret
