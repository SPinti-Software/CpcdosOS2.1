/*  -== Xternal ==-
 *
 *  Utility and functions that rely on external libs for common usage
 *
 *  @autors
 *   - Maeiky
 *  
 * Copyright (c) 2021 - V·Liance
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 *
*/
#ifndef HDef_xIO
#define HDef_xIO
#include "Xternal/Types.h"
	
	fn void _Sleep(uint32_t _nMillisecond);
	
	fn void _exit_FAILURE();
	fn void _exit_SUCCESS();
	
	#ifdef D_Debug
		#define dbg_printf _printf
	#else
		//Remove GZ_printf from release (huge ccode size)
		#define dbg_printf 
	#endif

	
	fn int _printf(const char *_format, ...);
	fn int err_printf(const char *_format, ...);
	
	#define _printl _printf("\n");_printf
	#define dbg_printl dbg_printf("\n");dbg_printf
	#define err_printl err_printf("\n");err_printf
	#define err_print err_printf("\nE: ");err_printf
	#define warn_print   _printf("\nW: ");_printf
	#define pass_print   _printf("\nP: ");_printf
	#define info_print   _printf("\nI: ");_printf
	#define trace_print  _printf("\nT: ");_printf
	#define log_print    _printf("\nL: ");_printf
	#define action_print _printf("\nA: ");_printf
	
#endif
