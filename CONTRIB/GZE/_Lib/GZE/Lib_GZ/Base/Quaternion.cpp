//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Quaternion.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Vec4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Base/Vec3.h"
#include "Lib_GZ/Base/Vec2.h"


namespace Lib_GZ{namespace Base{namespace Quaternion{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Quaternion
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Quaternion"},{0,"fReset"},{0,"fRoll"},{0,"fYaw"},{0,"fPitch"},{0,"fCombine"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Quaternion)

cQuaternion::cQuaternion(Lib_GZ::cBase* _parent) : Lib_GZ::Base::cVec4(_parent){

}

void cQuaternion::Ini_cQuaternion(){ gz_(0)
	Ini_cVec4(gzFloat(0), gzFloat(0), gzFloat(0), gzFloat(1));
}

void cQuaternion::fReset(){ gz_(1)
	nX = gzFloat(0);
	nY = gzFloat(0);
	nZ = gzFloat(0);
	nW = gzFloat(1);
}

void cQuaternion::fRoll(gzFloat _nAngle){ gz_(2)
	gzFloat _nResW = Lib_GZ::pMath::fCos(0.5 * _nAngle);
	gzFloat _nResZ = Lib_GZ::pMath::fSin(0.5 * _nAngle);
	gzFloat _nTempX = (nX * _nResW) - (nY * _nResZ);
	gzFloat _nTempZ = (nZ * _nResW) + (nW * _nResZ);
	nY = (nY * _nResW) + (nX * _nResZ);
	nW = (nW * _nResW) - (nZ * _nResZ);
	nX = _nTempX;
	nZ = _nTempZ;
}

void cQuaternion::fYaw(gzFloat _nAngle){ gz_(3)
	gzFloat _nResW = Lib_GZ::pMath::fCos(0.5 * _nAngle);
	gzFloat _nResY = Lib_GZ::pMath::fSin(0.5 * _nAngle);
	gzFloat _nTempX = (nX * _nResW) + (nZ * _nResY);
	gzFloat _nTempY = (nY * _nResW) + (nW * _nResY);
	nZ = (nZ * _nResW) - (nX * _nResY);
	nW = (nW * _nResW) - (nY * _nResY);
	nX = _nTempX;
	nY = _nTempY;
}

void cQuaternion::fPitch(gzFloat _nAngle){ gz_(4)
	gzFloat _nResW = Lib_GZ::pMath::fCos(0.5 * _nAngle);
	gzFloat _nResX = Lib_GZ::pMath::fSin(0.5 * _nAngle);
	gzFloat _nTempX = (nX * _nResW) + (nW * _nResX);
	gzFloat _nTempY = (nY * _nResW) - (nZ * _nResX);
	nZ = (nZ * _nResW) + (nY * _nResX);
	nW = (nW * _nResW) - (nX * _nResX);
	nX = _nTempX;
	nY = _nTempY;
}

void cQuaternion::fCombine(Lib_GZ::Base::cQuaternion* _oOther){ gz_(5)
	gzFloat _nTempX = (nX * _oOther->nW) + (nW * _oOther->nX) + (nZ * _oOther->nY) - (nY * _oOther->nZ);
	gzFloat _nTempY = (nY * _oOther->nW) + (nW * _oOther->nY) + (nX * _oOther->nZ) - (nZ * _oOther->nX);
	gzFloat _nTempZ = (nZ * _oOther->nW) + (nW * _oOther->nZ) + (nY * _oOther->nX) - (nX * _oOther->nY);
	nW = (nW * _oOther->nW) - (nX * _oOther->nX) - (nY * _oOther->nY) - (nZ * _oOther->nZ);
	nX = _nTempX;
	nY = _nTempY;
	nZ = _nTempZ;
}

gzAny cQuaternion::MemCopy(){
return (gzAny)new cQuaternion(*this);
}
gzAny cQuaternion::DeepCopy(){
return (gzAny)new cQuaternion(*this, true);
}
cQuaternion::~cQuaternion(){
}



}}