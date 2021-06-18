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

#ifndef HDef_xDebug
#define HDef_xDebug



#include "Lib_GZ/Core/Types.h"
	
#ifdef D_Debug
	#ifndef D_GZ_NoCrash
		#define GZ_Crash() DbgCrash()
	#else
		#define GZ_Crash()
	#endif
   // #define GzAssert(expr)   if( !(expr )){ Lib_GZ::fAssertError(__LINE__); }
    #define GzAssert(expr, msg)   if( !(expr )){ Lib_GZ::Assert::fError((msg), __func__ ); }
    #define GzUnAssert(expr, msg)   if( (expr )){ Lib_GZ::Assert::fError((msg), __func__ ); }
			
	/*
    #define GZ_fSpAssertMsg(expr, msg) assert((expr)&&(msg))\
      Lib_GZ_fSpAssertMsg(msg, __LINE__);   //TODO File?
	*/

#else
	#define GZ_Crash()
    #define GzAssert(expr, msg)
    #define GzUnAssert(expr, msg)
  //  #define GZ_fSpAssertMsg(expr, msg)
#endif
/*
class gzStr;
#define gzPStr const gzStr&
*/
namespace Lib_GZ{
namespace Assert{

	extern gzBool bHas_FAIL;
	extern gzUInt64 nDummyData;//Just to return a fake valid data
	
	void fTestMode(gzBool _bTestMode);
	bool fHas_Failed();
	
   // void fAssertError(gzUInt _nLine);
  //  void fAssertError(const char* _sMessage, const char* _sFile, const char* _sFunc, gzUInt _nLine);
    void fError(const char* _sMessage,  const char* _sFunc);
    void fConsole(const char* _sValue);

}}
#endif

