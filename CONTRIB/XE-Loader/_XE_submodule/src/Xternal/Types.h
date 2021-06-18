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
#ifndef HDEF_Types
#define HDEF_Types

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>


#if defined(__DJGPP__) || defined(USE_ATTRIBUTE_CALL_TYPE) 
#define  CallType_C	  	__attribute__((cdecl))
#define  CallType_Std 	__attribute__((stdcall))
#else
#define  CallType_C	  	__cdecl
#define  CallType_Std 	__stdcall
#endif


#ifdef __cplusplus
#define fn extern "C" 	CallType_C 
#define func_std extern "C" CallType_Std 
#else
#define fn 	 CallType_C 
#define func_std CallType_Std 
#endif

#ifdef D_Dynamic_Export
	#define export __declspec(dllexport) fn
#elif D_Dynamic_Link
	#define export __declspec(dllimport) fn
#else
	 #define export fn
#endif

#define inl static inline

/*if D_Windows
#define import_t  __declspec(dllimport)
#else
#define import_t
#endif
*/

#define imp	  		fn
#define imp_std  	func_std


#define BUILD_BUG_ON(condition) ((void)sizeof(char[1 - 2*!!(condition)]))

#ifdef _WIN64
#define SYS_64
#else
#define SYS_32
#endif
typedef  unsigned int uint;
//typedef uint_t uint32_t
//typedef int_t  int32_t

#define _min(a, b) ((a < b) ? a : b)
#define _max(a, b) ((a > b) ? a : b)
#define _concat_(a, b) a##b
#define _concat(a, b) _concat_(a, b)

#define _stringize_(A) #A
#define _stringize(A) _stringize_(A)


#ifndef NULL_PTR
	#define NULL_PTR ((void*)0)
#endif
#ifndef NULL
	#define NULL 0
#endif
#ifndef NUL
	#define NUL '\0'
#endif

#ifndef u8
	#define s8
#else
	#define s8 u8
#endif
#define s16 u
#define s32 U

typedef uint8_t  s8_t;
#ifdef __cplusplus
typedef char16_t s16_t;
typedef char32_t s32_t;
#else
typedef uint16_t s16_t;
typedef uint32_t s32_t;
#endif

typedef uint8_t* text_t;

typedef uint8_t  UTF8_t;
typedef uint16_t UTF16_t;
typedef uint32_t UTF32_t;

//uintptr_t or size_t
typedef float float32_t;
typedef double float64_t;

typedef char byte_t;

#ifndef CHAR_BIT
#define CHAR_BIT 8
#endif

typedef void 		(CallType_C *PtrFunc)(void);
typedef void* 		(CallType_C *PtrFuncRAny)(void);
typedef void* 		(CallType_C *PtrFuncRPAny)(void*);
typedef uint32_t 	(CallType_C *PtrFuncRInt)(void);
typedef bool 		(CallType_C *PtrFuncRBoolPAny)(void*);

#define Pragma_Unroll_2  _Pragma("unroll 2")
#define Pragma_Unroll_4  _Pragma("unroll 4")
#define Pragma_Unroll_6  _Pragma("unroll 6")
#define Pragma_Unroll_8  _Pragma("unroll 8")
#define Pragma_Unroll_16 _Pragma("unroll 16")

/*
#define gzDtThis(_type) const_cast<_type*>(this)
#define gzDtThis_(_type) const_cast<_type*>(_this)
#define gzDt(_type, _name) const_cast<_type*>(_name)
*/

#define _enum_  typedef struct {enum  
#define enum_ val;}_();

#define _case break;case


#endif
