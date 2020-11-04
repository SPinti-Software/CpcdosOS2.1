//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Math.h"

namespace Lib_GZ{



#ifndef GZ_tUSE_MATH_FUNCTION_INSTEAD
#ifdef GZ_tDont_have_IEE
    #include <math.h>
    gzFloat inline pMath::fSqrt(const gzFloat _x){
        return sqrt(gzFloat _x);
    }
#else
    //Require IEE
    gzFloat32 pMath::fSqrt(const gzFloat32 _nVal){
      union{
        gzInt32 i;
        gzFloat32 x;
      } _u;
      _u.x = _nVal;
      _u.i = (1<<29) + (_u.i >> 1) - (1<<22);
      _u.x =       _u.x + _nVal/_u.x;
      _u.x = 0.25*_u.x + _nVal/_u.x;
      return _u.x;
    }
#endif


// ***** Only positive ***
/*
gzFloat32 fPow(gzFloat32 uiNombre, gzUInt32 uiExposant) {

    gzFloat uiResult = uiNombre ;
    while(uiExposant > 1) {
			uiExposant--;
       uiResult *= uiNombre;
    }
    return uiResult;
}
*/
gzFloat64 pMath::fPow(gzFloat64 uiNombre, gzUInt32 uiExposant) {

    gzFloat64 uiResult = uiNombre ;
    while(uiExposant > 1) {
			uiExposant--;
       uiResult *= uiNombre;
    }
    return uiResult;
}

gzInt32 pMath::fPow(gzInt32 uiNombre, gzUInt32 uiExposant) {

    gzFloat uiResult = uiNombre ;
    while(uiExposant > 1) {
			uiExposant--;
       uiResult *= uiNombre;
    }
    return uiResult;
}


//----------------------SIN--------------------------------------------
#define sinAlgo(fASqr, _nResult)  \
    gzFloat _nResult = -2.39e-08; \
    _nResult *= fASqr; \
    _nResult += 2.7526e-06; \
    _nResult *= fASqr; \
    _nResult -= 1.98409e-04; \
    _nResult *= fASqr; \
    _nResult += 8.3333315e-03; \
    _nResult *= fASqr; \
    _nResult -= 1.666666664e-01; \
    _nResult *= fASqr; \
    _nResult += 1.0; \
    _nResult *= _nAngle; \

gzFloat pMath::fSin(gzFloat _nAngle){

    if(_nAngle < 0){
        _nAngle = _nAngle * -1.0;
        if(_nAngle > Math::nPI){
            _nAngle = _nAngle - (gzInt(_nAngle / (Math::nPI*2.0)) * (Math::nPI*2.0));
            if(_nAngle > Math::nPI){
                _nAngle =  (_nAngle - Math::nPI);
                if(_nAngle > Math::nHPI){
                    _nAngle -= Math::nPI;
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResult);
                        return -_nResult;
                    }else{
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResult);
                        return _nResult;
                }
            }
        }
        if(_nAngle > Math::nHPI){
            _nAngle -= Math::nPI;
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResult);
            return _nResult;

        }else{
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResult);
            return -_nResult;
        }
    }else{
        if(_nAngle > Math::nPI){
            _nAngle = _nAngle - (gzInt(_nAngle / (Math::nPI*2.0)) * (Math::nPI*2.0));
            if(_nAngle > Math::nPI){
                _nAngle =  (_nAngle - Math::nPI);
                if(_nAngle > Math::nHPI){ // 3
                    _nAngle -= Math::nPI;
                        gzFloat _nASqrt = _nAngle*_nAngle;
                         sinAlgo(_nAngle*_nAngle, _nResult);
                        return _nResult;
                    }else{   // 4
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResult);
                        return -_nResult;
                }
            }
        }
        if(_nAngle > Math::nHPI){
            _nAngle -= Math::nPI;
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResult);
            return -_nResult;

        }else{  //1
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResult);
            return _nResult;
        }
    }
}

//----------------------COS--------------------------------------------
#define cosAlgo(fASqr, _nResult)  \
      gzFloat _nResult = -2.605e-07; \
      _nResult *= fASqr; \
      _nResult += 2.47609e-05; \
      _nResult *= fASqr; \
      _nResult -= 1.3888397e-03; \
      _nResult *= fASqr; \
      _nResult += 4.16666418e-02; \
      _nResult *= fASqr; \
      _nResult -= 4.999999963e-01; \
      _nResult *= fASqr; \
      _nResult += 1.0;

gzFloat pMath::fCos(gzFloat _nAngle){

    _nAngle = pMath::fAbs(_nAngle);
    if(_nAngle > Math::nPI){
        _nAngle = _nAngle - (gzInt(_nAngle / (Math::nPI*2.0)) * (Math::nPI*2.0));
        if(_nAngle > Math::nPI){
            _nAngle =  (_nAngle - Math::nPI);
            if(_nAngle > Math::nHPI){
                _nAngle -= Math::nPI;
                    gzFloat _nASqrt = _nAngle*_nAngle;
                    cosAlgo(_nASqrt, _nResult);
                    return _nResult;
                }else{
                    gzFloat _nASqrt = _nAngle*_nAngle;
                    cosAlgo(_nASqrt, _nResult);
                    return -_nResult;
            }
        }
    }
    if(_nAngle > Math::nHPI){
        _nAngle -= Math::nPI;
        gzFloat _nASqrt = _nAngle*_nAngle;
        cosAlgo(_nASqrt, _nResult);
        return -_nResult;

    }else{
        gzFloat _nASqrt = _nAngle*_nAngle;
        cosAlgo(_nASqrt, _nResult);
        return _nResult;
    }
}

//----------------------TAN--------------------------------------------
gzFloat pMath::fTan(gzFloat _nAngle){

    if(_nAngle < 0){
        _nAngle = _nAngle * -1.0;
        if(_nAngle > Math::nPI){
            _nAngle = _nAngle - (gzInt(_nAngle / (Math::nPI*2.0)) * (Math::nPI*2.0));
            if(_nAngle > Math::nPI){
                _nAngle =  (_nAngle - Math::nPI);
                if(_nAngle > Math::nHPI){
                    _nAngle -= Math::nPI;
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResSin);
                        cosAlgo(_nASqrt, _nResCos);
                        return -_nResSin / _nResCos;
                    }else{
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResSin);
                        cosAlgo(_nASqrt, _nResCos);
                        return -_nResSin / _nResCos;
                }
            }
        }
        if(_nAngle > Math::nHPI){
            _nAngle -= Math::nPI;
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResSin);
            cosAlgo(_nASqrt, _nResCos);
            return -_nResSin / _nResCos;

        }else{
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResSin);
            cosAlgo(_nASqrt, _nResCos);
            return -_nResSin / _nResCos;
        }
    }else{
        if(_nAngle > Math::nPI){
            _nAngle = _nAngle - (gzInt(_nAngle / (Math::nPI*2.0)) * (Math::nPI*2.0));
            if(_nAngle > Math::nPI){
                _nAngle =  (_nAngle - Math::nPI);
                if(_nAngle > Math::nHPI){
                    _nAngle -= Math::nPI;
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResSin);
                        cosAlgo(_nASqrt, _nResCos);
                        return _nResSin / _nResCos;
                    }else{
                        gzFloat _nASqrt = _nAngle*_nAngle;
                        sinAlgo(_nASqrt, _nResSin);
                        cosAlgo(_nASqrt, _nResCos);
                        return _nResSin / _nResCos;
                }
            }
        }
        if(_nAngle > Math::nHPI){
            _nAngle -= Math::nPI;
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResSin);
            cosAlgo(_nASqrt, _nResCos);
            return _nResSin / _nResCos;

        }else{
            gzFloat _nASqrt = _nAngle*_nAngle;
            sinAlgo(_nASqrt, _nResSin);
            cosAlgo(_nASqrt, _nResCos);
            return _nResSin / _nResCos;
        }
    }
}


//----------------------------------------------------------------------
gzFloat pMath::fASin (gzFloat _nValue){

    if(_nValue > 0){
        gzFloat fRoot = fSqrt(1.0-_nValue);
        gzFloat _nResult = -0.0187293;
        _nResult *= _nValue;
        _nResult += 0.0742610;
        _nResult *= _nValue;
        _nResult -= 0.2121144;
        _nResult *= _nValue;
        _nResult += 1.5707288;
        _nResult = 1.5707288 - fRoot*_nResult;
        return _nResult;
    }else{
        _nValue *= -1;
        gzFloat fRoot = fSqrt(1.0-_nValue);
        gzFloat _nResult = -0.0187293;
        _nResult *= _nValue;
        _nResult += 0.0742610;
        _nResult *= _nValue;
        _nResult -= 0.2121144;
        _nResult *= _nValue;
        _nResult += 1.5707288;
        _nResult = 1.5707288 - fRoot*_nResult;
        return -_nResult;
    }
}
//----------------------------------------------------------------------
gzFloat pMath::fACos(gzFloat _nValue){

        if( _nValue < 0){
            _nValue *= -1;
            gzFloat fRoot = fSqrt(1.0-_nValue);
            gzFloat _nResult = -0.0187293;
            _nResult *= _nValue;
            _nResult += 0.0742610;
            _nResult *= _nValue;
            _nResult -= 0.2121144;
            _nResult *= _nValue;
            _nResult += 1.5707288;
            _nResult = 1.5707288 - fRoot*_nResult;
            return Math::nHPI + _nResult;
        }else{
            gzFloat fRoot = fSqrt(1.0-_nValue);
            gzFloat _nResult = -0.0187293;
            _nResult *= _nValue;
            _nResult += 0.0742610;
            _nResult *= _nValue;
            _nResult -= 0.2121144;
            _nResult *= _nValue;
            _nResult += 1.5707288;
            _nResult *= fRoot;
            return _nResult;
        }
}
//----------------------------------------------------------------------
gzFloat pMath::fATan(gzFloat _nValue){
	gzFloat _nResult;
    gzFloat _nVSqr = _nValue*_nValue;

    if( (_nValue < -1.23) || (_nValue > 1.23) ){

        //TODO made more precision between 1.0 and 1.5
        /*
        if( (_nValue > -1.5) && (_nValue < 1.5) ){
            return atan(_nValue);
        }*/

        gzFloat _nVSqr = _nValue*-_nValue;
        if( _nValue > 1.0 ){
            _nResult = Math::nHPI;
        }else{
            _nResult = -Math::nHPI;
        }
        gzFloat _a = -1.0/_nValue;
        _nResult += _a;
        _a *= (2.0* 1.0  -1)/((2.0* 1.0  +1)*_nVSqr);
        _nResult += _a;
        _a *= (2.0* 2.0  -1)/((2.0* 2.0  +1)*_nVSqr);
        _nResult += _a;
        _a *= (2.0* 3.0  -1)/((2.0* 3.0  +1)*_nVSqr);
        _nResult += _a;
        _a *= (2.0* 4.0  -1)/((2.0* 4.0  +1)*_nVSqr);
        _nResult += _a;
        _a *= (2.0* 5.0  -1)/((2.0* 5.0  +1)*_nVSqr);
        _nResult += _a;
        _a *= (2.0* 5.0  -1)/((2.0* 5.0  +1)*_nVSqr);
        _nResult += _a;

    } else {

        gzFloat _nVSqr = _nValue*_nValue;
        _nResult = 0.0028662257f;
        _nResult *= _nVSqr;
        _nResult -= 0.0161657367f;
        _nResult *= _nVSqr;
        _nResult += 0.0429096138f;
        _nResult *= _nVSqr;
        _nResult -= 0.0752896400f;
        _nResult *= _nVSqr;
        _nResult += 0.1065626393f;
        _nResult *= _nVSqr;
        _nResult -= 0.1420889944f;
        _nResult *= _nVSqr;
        _nResult += 0.1999355085f;
        _nResult *= _nVSqr;
        _nResult -= 0.3333314528f;
        _nResult *= _nVSqr;
        _nResult += 1.0f;
        _nResult *= _nValue;
    }
    return _nResult;
}
//----------------------------------------------------------------------
gzFloat pMath::fATan2( gzFloat _nY, gzFloat _nX ){

   	if ( _nX == 0.0 ){
        if ( _nY > 0.0 ){
           return Math::nHPI;
        }
        if (_nY == 0.0 ) {
            return 0.0;
        }
        return -Math::nHPI;
    }
    gzFloat _nRatio = pMath::fAbs( _nY / _nX );
    gzFloat _nResult = pMath::fATan( _nRatio);
    if( _nX < 0.0 ){
        _nResult = Math::nPI - _nResult;
    }
    if( _nY <  0.0 ){
        _nResult *= -1;
    }
    return _nResult;
}
//----------------------------------------------------------------------
#endif

}

