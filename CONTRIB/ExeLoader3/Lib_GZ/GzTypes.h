//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHDef_GZ_Types
#define tHDef_GZ_Types

//#include "Lib_GZ/_SysOptions.h"

//Syntax Highlighting (Code::Block Settings->Editor->Syntax Highlighting->(Button Keywords...)

//Primary keyword Add:
//gzSp gzBool gzInt8 gzUInt8 gzInt16 gzUInt16 gzInt32 gzUInt32 gzInt64 gzUInt64 gzFloat32 gzFloat64 gzFloat gzUInt gzInt gzPtr gzVoid GZ_Null GZ_fSet GZ_fUnSet GZ_fNewSet  gzStr gzPStr gzLStr gzIStr gzFStr gzText8 gzText16 gzIntX gzUIntX

//Secodray keyword Add:
//gzSCast gzDCast gzCCast gzRCast SpFromThis get


#define GZ_Null 0


//typedef void gzVoid;
typedef bool gzBool;

typedef   signed char gzInt8;
typedef unsigned char gzUInt8;
typedef   signed short int gzInt16;
typedef unsigned short int gzUInt16;
typedef   signed int gzInt32;
typedef unsigned int gzUInt32;
typedef  signed long long  gzInt64;
typedef unsigned long long gzUInt64;

typedef float gzFloat32;
typedef double gzFloat64;

typedef const char* gzText8;
typedef const wchar_t* gzText16;


//typedef gzUInt32 gzChar;

typedef void* gzPtr;


#ifdef _WIN64
#define GZ_tSys64
#endif


//32 bit by default
#ifdef GZ_tSys64
    typedef unsigned long long  gzPtrSize;
    typedef signed long long gzIntX;
    typedef  unsigned long long gzUIntX;
#else
    #undef GZ_tSys32
    #define GZ_tSys32
    typedef unsigned int gzPtrSize;
    typedef signed int gzIntX;
    typedef unsigned int gzUIntX;
#endif

#ifdef GZ_tJit
typedef gzUIntX size_t; 
#endif

extern "C"  gzInt32 __divdi3(gzInt32 a, gzInt32 b);


#define GZ_nMaxInt32 0x7FFFFFFF
#define GZ_nMinInt32 0x80000000
#define GZ_nMaxUInt32 0xFFFFFFFF

#define GZ_nMaxInt64 0x7FFFFFFFFFFFFFFF
#define GZ_nMinInt64 0x8000000000000000
#define GZ_nMaxUInt64 0xFFFFFFFFFFFFFFFF

#define GZ_nCharBit 8   //CHAR_BIT macro that defines the number of bits in a byte, TODO different size support?

//Detection of IEE 754  :
//Any x86 or x64-based CPU is using IEEE 754 as their floating-point arithmetic standard.
//If the double is not 64 bits then the code will looks like char a[-1]; which is an compile time error.
extern char Support_Floating_Point_IEE_754[ (64 == sizeof(double) * GZ_nCharBit)*2 - 1];

//Compiler must support 2 bytes string (to be cross-platform), specially for String litteral in GZE -> L""
//If not 16 bit wide, try to add to C++ command line : -fshort-wchar
//extern char Support_16bit_String_Litteral[ sizeof(wchar_t) == 2 ? 1 : -1];



#define GZ_nMaxFloat32        3.402823466e+38F    //Require IEE 754
#define GZ_nMinFloat32        1.175494351e-38F     //Require IEE 754

#define GZ_nMaxFloat64        1.7976931348623158e+308  //Require IEE 754
#define GZ_nMinFloat64        2.2250738585072014e-308  //Require IEE 754

//64 bits use the same types as 32 bits because there smaller and faster
typedef unsigned int gzUInt;
typedef   signed int gzInt;
#define GZ_nMaxInt GZ_nMaxInt32
#define GZ_nMinInt GZ_nMinInt32
#define GZ_nMaxUInt GZ_nMaxUInt32

typedef float gzFloat;
#define GZ_nMaxFloat       GZ_nMaxFloat32  //Require IEE 754
#define GZ_nMinFloat       GZ_nMinFloat32  //Require IEE 754
/////////////////////////////////////////////////////////////////////////

typedef void (*gzPtrFunc)(void);
typedef void* (*gzPtrFuncRAny)(void);
typedef void* (*gzPtrFuncRPAny)(void*);

typedef struct  {  //Auto memory management
    gzUInt nNbIns;
}NbInstaces;

////// Default Options //////////
#ifdef GZ_tDebug
	
#endif
#ifdef GZ_tNoTace
	
#endif

////////////////////////////////

namespace Lib_GZ{class cDelegate;};
typedef Lib_GZ::cDelegate* gzAny;

//struct gzDelegateClass { Lib_GZ::Delegate* oClass;};
//typedef void* gzDlgWrap;
typedef struct  {  //Auto memory management
    void* _pInst;
}gzDlgWrapD;
typedef struct  {  //Auto memory management
    void* _pInst;
}gzDlgWrapM;


struct gzComp{void* oClass; gzPtrFunc fCall; };

//extern Lib_GZ::cDelegate* GZ_NullObj;
#define GZ_NullObj 0

namespace Lib_GZ{ struct uLib; namespace Lib{extern gzUInt nClass;  extern  uLib* rLastLib;}};

#define GZ_FuncWrapD gzDlgWrapD*
#define GZ_FuncWrapM gzDlgWrapM* _w
#define GZ_PARAM

#define zNull 0


#define tApi_GZ
#ifdef tLibExport_GZ
    #undef tApi_GZ
    #define tApi_GZ __declspec(dllexport)
#endif
#ifdef tLibImport_GZ
    #undef tApi_GZ
    #define tApi_GZ __declspec(dllimport)
#endif

//Temp
#define tApi_Demo

//No atomic val in monothreaded
#ifndef GZ_tMonothread
	#define GZ_tAtomic
#endif


/*
class gzStr;

namespace Lib_GZ{
    struct uOverplace {uOverplace* _rPrec; gzUInt* pId; gzPtrFuncRPAny cfOri; gzPtrFuncRPAny cfOver; gzPtrFuncRPAny cfExt;  gzPtrFuncRAny cfExtAdr;};
    struct uLib { uLib* rPrec; gzStr sName; uOverplace** _rLastClass; };
    extern uLib zpLib;
    inline  uLib* fSetLib(uLib* _rLib){
       uLib* rTemp =  Lib::rLastLib;
       Lib::rLastLib = _rLib;
       return rTemp;
    }
}
*/

#ifdef GZ_tJit
	#define GZ_tManIni
	#define GZ_tExtCrash
#endif


#ifdef GZ_tExtCrash
	extern "C" void DbgCrash(gzPtr* _pStackArray, gzUInt _pStackIndex );
	#define GZ_Crash() DbgCrash(gzaCallStack, gznCallStackIndex);
	
#else
	#define GZ_Crash()
#endif

#define GZ_tHaveCallStack

//Must be power of 2
#ifndef GZ_tCallStackSize
	#define GZ_tCallStackSize 1024 
#endif




struct gzFuncStack{void* oClass; const char* cName; };

#ifdef GZ_tHaveCallStack

	extern gzPtr gzaCallStack[GZ_tCallStackSize];
	extern gzUInt gznCallStackIndex;
	
//	#include <stdio.h>
	struct gzStack {
		gzStack(gzPtr _pStFunc) {
			gznCallStackIndex++;
			gzaCallStack[(gznCallStackIndex) % GZ_tCallStackSize] = _pStFunc;
		}
		~gzStack() {
			gznCallStackIndex--;
		}
	};
	//10 bit for idlib   ->  1024 libs
	//12 bit for idClass ->  4096 class
	//10 bit for idFunc  ->  1024 Function
	#define gz_(_pStFunc) gzStack gz_s(  &_::zFuncName[_pStFunc] );
	
#else
	#define gz_(_pStFunc)
#endif

#endif