//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHDef_GZ_Easing
#define tHDef_GZ_Easing

#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/Math.h"
//#include "MainGZ.h"
namespace Lib_GZ{

typedef struct {
    gzInt8* nVal;
    gzInt8 nLastVal;
    gzFloat nFracVal;
    gzFloat nLimit;
    gzFloat nSpeed;
    gzInt8 nTo;

} GZ_uEase_gzInt8;

typedef struct {
    gzInt16* nVal;
    gzInt16 nLastVal;
    gzFloat nFracVal;
    gzFloat nLimit;
    gzFloat nSpeed;
    gzInt16 nTo;

} GZ_uEase_gzInt16;

typedef struct {
    gzInt32* nVal;
    gzInt32 nLastVal;
    gzFloat nFracVal;
    gzFloat nLimit;
    gzFloat nSpeed;
    gzInt32 nTo;

} GZ_uEase_gzInt32;

typedef struct {
    gzInt64* nVal;
    gzInt64 nLastVal;
    gzFloat nFracVal;
    gzFloat nLimit;
    gzFloat nSpeed;
    gzInt64 nTo;

} GZ_uEase_gzInt64;


typedef struct {
    gzFloat32* nVal;
    gzFloat32 nLastVal;
    gzFloat nFracVal;
    gzFloat nLimit;
    gzFloat nSpeed;
    gzFloat32 nTo;

} GZ_uEase_gzFloat32;

typedef struct {
    gzFloat64* nVal;
    gzFloat64 nLastVal;
    gzFloat nFracVal;
    gzFloat nLimit;
    gzFloat nSpeed;
    gzFloat64 nTo;

} GZ_uEase_gzFloat64;


#define GZ_uEase_fTo(_rEase, _nDest) (_rEase.nTo = _nDest)
//#define GZ_uEase_fSpeed(_rEase, _nSpeed) (_rEase.nSpeed = _nSpeed)

inline void GZ_uEase_fLimit(GZ_uEase_gzFloat32* _rEase, gzFloat _nLimit){
    _rEase->nLimit = pMath::fAbs(_nLimit);
}

inline void GZ_uEase_fSpeed(GZ_uEase_gzFloat32* _rEase, gzFloat _nSpeed){
    if(_nSpeed >  -1.0 && _nSpeed < 1.0 ){
        _nSpeed = 1.0;
    }
    _rEase->nSpeed = _nSpeed;
}

//New
//void cEaOut_to(EaseOut_gzInt* _rEase, gzInt _nDest);
//void cEaOut_speed(EaseOut_gzInt* _rEase, gzFloat _nSpeed);


void GZ_uEase_fStep(GZ_uEase_gzInt8* _rEase);
void GZ_uEase_fStep(GZ_uEase_gzInt16* _rEase);
void GZ_uEase_fStep(GZ_uEase_gzInt32* _rEase);
void GZ_uEase_fStep(GZ_uEase_gzInt64* _rEase);

void GZ_uEase_fStep(GZ_uEase_gzFloat32* _rEase);
}
#endif
