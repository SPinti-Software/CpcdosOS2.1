/*
 * DXE3: frame info registration
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
		ret

.lcomm		eh_frame, 32
