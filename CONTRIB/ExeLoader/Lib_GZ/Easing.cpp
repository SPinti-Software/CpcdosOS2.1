//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Easing.h"
namespace Lib_GZ{

/*
void cEaOut_to(EaseOut_gzInt* _rEase, gzInt _nDest){
    _rEase->nTo = _nDest;
}
void cEaOut_speed(EaseOut_gzInt* _rEase, gzFloat _nSpeed){
    _rEase->nSpeed = _nSpeed;
}
void cEaOut_step(EaseOut_gzInt* _rEase){

    if(_rEase->nLastVal != (*(gzInt*)_rEase->nVal) ){ //if user change is value manually
        _rEase->nFracVal = gzFloat( (*(gzInt*)_rEase->nVal)  );//Convertion int to float, todo optimize
    }
    _rEase->nFracVal +=  (gzFloat(_rEase->nTo) - _rEase->nFracVal)/_rEase->nSpeed;
    _rEase->nLastVal = gzInt32(_rEase->nFracVal); //Convertion flaot to int, todo optimize
    (*(gzInt*)_rEase->nVal) = _rEase->nLastVal;
}
*/

void GZ_uEase_fStep(GZ_uEase_gzInt8* _rEase){

    if(_rEase->nLastVal != *(_rEase->nVal)){ //if user change is value manually
        _rEase->nFracVal = gzFloat( *(_rEase->nVal) );//Convertion int to float, todo optimize
    }
    _rEase->nFracVal +=  (gzFloat(_rEase->nTo) - _rEase->nFracVal)/_rEase->nSpeed;
    _rEase->nLastVal = (_rEase->nFracVal); //Convertion flaot to int, todo optimize
    *(_rEase->nVal) = _rEase->nLastVal;
}

void GZ_uEase_fStep(GZ_uEase_gzInt16* _rEase){

    if(_rEase->nLastVal != *(_rEase->nVal)){ //if user change is value manually
        _rEase->nFracVal = gzFloat( *(_rEase->nVal) );//Convertion int to float, todo optimize
    }
    _rEase->nFracVal +=  (gzFloat(_rEase->nTo) - _rEase->nFracVal)/_rEase->nSpeed;
    _rEase->nLastVal = (_rEase->nFracVal); //Convertion flaot to int, todo optimize
    *(_rEase->nVal) = _rEase->nLastVal;
}

void GZ_uEase_fStep(GZ_uEase_gzInt32* _rEase){

    if(_rEase->nLastVal != *(_rEase->nVal)){ //if user change is value manually
        _rEase->nFracVal = gzFloat( *(_rEase->nVal) );//Convertion int to float, todo optimize
    }
    if(_rEase->nSpeed > 0){
        _rEase->nFracVal +=  (gzFloat(_rEase->nTo) - _rEase->nFracVal)/_rEase->nSpeed;
    }else{
        _rEase->nFracVal +=  (gzFloat(_rEase->nTo)*(-0.03) - _rEase->nFracVal)/_rEase->nSpeed;
    }

    _rEase->nLastVal = (_rEase->nFracVal); //Convertion flaot to int, todo optimize
    *(_rEase->nVal) = _rEase->nLastVal;
}

void GZ_uEase_fStep(GZ_uEase_gzInt64* _rEase){

    if(_rEase->nLastVal != *(_rEase->nVal)){ //if user change is value manually
        _rEase->nFracVal = gzFloat( *(_rEase->nVal) );//Convertion int to float, todo optimize
    }
    _rEase->nFracVal +=  (gzFloat(_rEase->nTo) - _rEase->nFracVal)/_rEase->nSpeed;
    _rEase->nLastVal = (_rEase->nFracVal); //Convertion flaot to int, todo optimize
    *(_rEase->nVal) = _rEase->nLastVal;
}


void GZ_uEase_fStep(GZ_uEase_gzFloat32* _rEase){


    if(_rEase->nLastVal != *(_rEase->nVal)){ //if user change is value manually !In wrap mode!
        _rEase->nFracVal =  *(_rEase->nVal);
    }
    _rEase->nLastVal = *(_rEase->nVal);

    if(_rEase->nSpeed >= 0){
        gzFloat _nVal = (_rEase->nTo - _rEase->nFracVal)/_rEase->nSpeed;
        if(_nVal > _rEase->nLimit){
            _nVal = _rEase->nLimit;
        }
        if(_nVal < -_rEase->nLimit){
            _nVal = -_rEase->nLimit;
        }
        _rEase->nFracVal += _nVal;

    }else{
        gzFloat _nVal = (_rEase->nTo*(-0.03) - _rEase->nFracVal)/_rEase->nSpeed;
        if(_nVal > _rEase->nLimit){
            _nVal = _rEase->nLimit;
        }
        if(_nVal < -_rEase->nLimit){
            _nVal = -_rEase->nLimit;
        }
        _rEase->nFracVal += _nVal;
        if( _rEase->nFracVal  > _rEase->nTo){//Limit
            _rEase->nFracVal = _rEase->nTo;
        }
    }

    *(_rEase->nVal) = (_rEase->nFracVal);
}


}



