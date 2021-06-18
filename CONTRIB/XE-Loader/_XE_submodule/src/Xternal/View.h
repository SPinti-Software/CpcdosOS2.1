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
#ifndef HDEF_View
#define HDEF_View

typedef struct fptr_t { //gzFPtrHeader must be Pod type with gzVecSized & gzMatSized
	size_t limit; 	//!!ReadOnly? Ok, only readed
	uint16_t nInst;  //If not readonly ... Test if not const before write
	uint8_t type; //0 = const / readOnly  (use COW on write)  // 1 =  writable
	uint8_t bytes; //Size in bytes

	//uint8_t genType; //Types: int8, int16, int32, int64. float32, float64, ptr  ?
	//size_t bytes;  
	
	//... data;
}fptr_t;

typedef struct view_t {
	fptr_t* header;
	byte_t* data;
	size_t  size;
}view_t;
	
//Predefined
static const fptr_t _UTF16_t = { .bytes=2 };
static const fptr_t _UTF8_t  = { .bytes=1 };

#define Wstr_V(_str) {.header=(fptr_t*)&_UTF16_t,.data=(byte_t*)_str,.size=wcslen_(_str)}

#define Vla_V(_name, _max)                                     		\
	byte_t _name##_vla[_max+ sizeof(fptr_t)];                 	 	\
	view_t _name = {.header=(fptr_t*)_name##_vla,	                \
					.data=(byte_t*)&_name##_vla[sizeof(fptr_t)] ,   \
					.size=_max,                          			\
					};                                         
											 
#endif
