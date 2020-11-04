//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHDef_GZ_M
#define tHDef_GZ_M
#include "_Math.h"
//M for MATH
#include "Lib_GZ/GzTypes.h"
//#include "MainSys.h"
//#include "MainHeaderGZ_M.h"

//#define USE_MATH_FUNCTION_INSTEAD


#define GZ_M_nR90  1.57079633
#define GZ_M_nHPI  1.57079633
#define GZ_M_nPI  3.1415926535897932384626433832795028841971693993751058209749445923078164062


/*
//Solution #1  prec of 256 only max bitmap of 2046
#define nIPrecision 8
#define nIDivPrecision 12
*/
/*
//Solution #2  prec of 1024 only max bitmap of 1022
#define nIPrecision 10
#define nIDivPrecision 11
*/


#define GZ_M_fFrac(_nVal) (_nVal - gzInt(_nVal))
#define GZ_M_fITronc(IVal) (((IVal) >> Lib_GZ::Math::nIPrecision) << Lib_GZ::Math::nIPrecision)
//#define GZ_M_fItronc(IVal) (IVal & 0xFFFFFC00)
//#define GZ_M_fIfrac(IVal) (IVal - (((IVal) >> nIPrecision ) << nIPrecision))
#define GZ_M_fIFrac(IVal) ((IVal) & 0x000003FF)
//#define GZ_M_fIPixfrac(IVal) (IVal - ((IVal >> nIPixPrecision ) << nIPixPrecision))
#define GZ_M_fIPixFrac(IVal) ((IVal) & 0x000000FF)


#define GZ_M_fGetPt(n1 , n2, Pc)(n1 + ((n2 - n1) * Pc))
#define GZ_M_fGetBezier(n1 , n2, n3, Pc) fgetPt(  fgetPt(n1,n2,Pc)  ,  fgetPt(n2,n3,Pc) , Pc )

#define GZ_M_fPow2(_nVal)((_nVal) * (_nVal))


#define GZ_M_fMin(x, y) (signed(y) ^ ((signed(x) ^ signed(y)) & -(signed(x) < signed(y))))
#define GZ_M_fMax(x, y) (signed(x) ^ ((signed(x) ^ signed(y)) & -(signed(x) < signed(y))))

#define  GZ_M_fToRadian(x) ((x) * GZ_M_nPI / 180.0f)
#define  GZ_M_fToDegree(x) ((x) * 180.0f / GZ_M_nPI) 

namespace Lib_GZ {
namespace pMath {


/*

//Solution #3  prec of 1024 only max bitmap of 511
#define nIPrecision 10
#define nIDivPrecision 12  //32bit
#define nIDivPrecAdd64 4   //to add to nIDivPrecision for 64bit large shape

#define nIPixPrecision 8


#define GZ_M_fFrac(_nVal) (_nVal - gzInt(_nVal))
#define GZ_M_fITronc(IVal) (((IVal) >> nIPrecision) << nIPrecision)
//#define GZ_M_fItronc(IVal) (IVal & 0xFFFFFC00)
//#define GZ_M_fIfrac(IVal) (IVal - (((IVal) >> nIPrecision ) << nIPrecision))
#define GZ_M_fIFrac(IVal) ((IVal) & 0x000003FF)
//#define GZ_M_fIPixfrac(IVal) (IVal - ((IVal >> nIPixPrecision ) << nIPixPrecision))
#define GZ_M_fIPixFrac(IVal) ((IVal) & 0x000000FF)


#define GZ_M_fGetPt(n1 , n2, Pc)(n1 + ((n2 - n1) * Pc))
#define GZ_M_fGetBezier(n1 , n2, n3, Pc) fgetPt(  fgetPt(n1,n2,Pc)  ,  fgetPt(n2,n3,Pc) , Pc )

#define GZ_M_fPow2(_nVal)((_nVal) * (_nVal))


#define GZ_M_fMin(x, y) (signed(y) ^ ((signed(x) ^ signed(y)) & -(signed(x) < signed(y))))
#define GZ_M_fMax(x, y) (signed(x) ^ ((signed(x) ^ signed(y)) & -(signed(x) < signed(y))))


//you know that INT_MIN <= x - y <= INT_MAX
//r = y + ((x - y) & ((x - y) >> (sizeof(int) * CHAR_BIT - 1))); // min(x, y)
//r = x - ((x - y) & ((x - y) >> (sizeof(int) * CHAR_BIT - 1))); // max(x, y)
//#define GZ_M_fmin(x, y) (y + ((x - y) & ((x - y) >> (sizeof(int) * 8 - 1))))
//#define GZ_M_fmax(x, y) (x - ((x - y) & ((x - y) >> (sizeof(int) * 8 - 1))))


////////////////////////////////////////////////
/////////////// Define VARS ////////////////////
////////////////////////////////////////////////


#define nPrec  (1 << nIPrecision)
#define nHPrec  (nPrec/2)
#define nSP  nIPrecision

#define nPixPrec  (1 << nIPixPrecision)
#define nPixHPrec  (nPixPrec/2)
#define nPixSP  nIPixPrecision
#define nPixSP8  (nIPixPrecision + (nIPixPrecision - 8))
#define nPixSPDiff  (nIPrecision - nIPixPrecision)

#ifdef UseLargeShape
    #define nDivPrec  (nIDivPrecision + nIDivPrecAdd64)
#else
    #define nDivPrec  nIDivPrecision
#endif

*/





////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

inline int fFloatToInt( double d )
{
   union Cast
   {
      double d;
      long l;
    };
   volatile Cast c;
   c.d = d + 6755399441055744.0;
   return c.l;
}

#define GZ_tDONT_USE_MATH_ABS
#ifdef GZ_tDONT_USE_MATH_ABS

#ifdef GZ_tJit
	#define abs Lib_GZ::pMath::fAbs //Remap normal abs //TODO
#endif
	
    gzInt8 inline fAbs(gzInt8 _nVal){
     if(_nVal < 0){ return -_nVal;}else{return _nVal;}
    }
    gzInt16 inline fAbs(gzInt16 _nVal){
     if(_nVal < 0){ return -_nVal;}else{return _nVal;}
    }
    gzInt32 inline fAbs(gzInt32 _nVal){
     if(_nVal < 0){ return -_nVal;}else{return _nVal;}
    }
    gzInt64 inline fAbs(gzInt64 _nVal){
     if(_nVal < 0){ return -_nVal;}else{return _nVal;}
    }
    gzFloat32 inline fAbs(gzFloat32 _nVal){
     if(_nVal < 0){ return -_nVal;}else{return _nVal;}
    }
    gzFloat64 inline fAbs(gzFloat64 _nVal){
     if(_nVal < 0){ return -_nVal;}else{return _nVal;}
    }
#else
  // #include <stdlib.h>
    #include <math.h>
    gzInt8 inline fAbs(gzInt8 _nVal){
        return abs(_nVal);
    }
    gzInt16 inline fAbs(gzInt16 _nVal){
        return abs(_nVal);
    }
    gzInt32 inline fAbs(gzInt32 _nVal){
        return abs(_nVal);
    }
    gzInt64 inline fAbs(gzInt64 _nVal){
        return abs(_nVal);
    }
    gzFloat32 inline fAbs(gzFloat32 _nVal){
        return fabs(_nVal);
    }
    gzFloat64 inline fAbs(gzFloat64 _nVal){
        return fabs(_nVal);
    }
#endif

//#define USE_MATH_FUNCTION_INSTEAD
#ifdef GZ_tUSE_MATH_FUNCTION_INSTEAD
    #include <math.h>
    gzFloat inline fPow(gzFloat _nVal, gzFloat _nPower){return pow(_nVal, _nPower);}
    gzFloat32 inline fSqrt(const gzFloat32 x){return sqrt(x);}
    gzFloat inline fSin(gzFloat _nAngle){return sin(_nAngle);}
    gzFloat inline fCos(gzFloat _nAngle){return cos(_nAngle);}
    gzFloat inline fTan(gzFloat _nAngle){return tan(_nAngle);}
    gzFloat inline fASin (gzFloat _nValue){return asin(_nValue);}
    gzFloat inline fACos(gzFloat _nValue){return acos(_nValue);}
    gzFloat inline fATan(gzFloat _nValue){return atan(_nValue);}
    gzFloat inline fATan2( gzFloat y, gzFloat x ){return atan2(y,x);}
#else
   // double fPow(double a, const double b);
   // gzFloat32 fPow(gzFloat32 uiNombre, gzUInt32 uiExposant);
    gzFloat64 fPow(gzFloat64 uiNombre, gzUInt32 uiExposant);
    gzInt32 fPow(gzInt32 uiNombre, gzUInt32 uiExposant);

    gzFloat32 fSqrt(const gzFloat32 _nVal);
    gzFloat fSin(gzFloat _nAngle);
    gzFloat fCos(gzFloat _nAngle);
    gzFloat fTan(gzFloat _nAngle);
    gzFloat fASin (gzFloat _nValue);
    gzFloat fACos(gzFloat _nValue);
    gzFloat fATan(gzFloat _nValue);
    gzFloat fATan2( gzFloat _nY, gzFloat _nX );
#endif

/*  TODO RIGHT SHIFT NEGATIVE num
#if -2 >> 1 == -1
#define rshift_ar(X, Y) ((X) >> (Y))
#elif ~(~(-2) >> 1 == -1)
#define rshift_ar(X, Y) (~(~(X) >> (Y)))
#else
#error "unsupported shifting semantics"
#endif
*/


}
}


class GZ_M {

	public:
	private:

};
#endif
