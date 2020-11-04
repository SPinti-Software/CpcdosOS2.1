//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Vec3.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/Vec2.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Base{namespace Vec3{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Vec3
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Vec3"},{0,"fCross"},{0,"fRevCross"},{0,"fRotate"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Vec3)

cVec3::cVec3(Lib_GZ::cBase* _parent) : Lib_GZ::Base::cVec2(_parent){
	nZ=0;

}

void cVec3::Ini_cVec3(gzFloat _nX, gzFloat _nY, gzFloat _nZ){ gz_(0)
	Ini_cVec2(_nX, _nY);
	nZ = _nZ;
}

void cVec3::fCross(Lib_GZ::Base::cVec3* _oOther){ gz_(1)
	gzFloat _nTempX = (nZ * _oOther->nY) - (nY * _oOther->nZ);
	gzFloat _nTempY = (nX * _oOther->nZ) - (nZ * _oOther->nX);
	nZ = (nY * _oOther->nX) - (nX * _oOther->nY);
	nX = _nTempX;
	nY = _nTempY;
}

void cVec3::fRevCross(Lib_GZ::Base::cVec3* _oOther){ gz_(2)
	gzFloat _nTempX = (_oOther->nZ * nY) - (_oOther->nY * nZ);
	gzFloat _nTempY = (_oOther->nX * nZ) - (_oOther->nZ * nX);
	nZ = (_oOther->nY * nX) - (_oOther->nX * nY);
	nX = _nTempX;
	nY = _nTempY;
}

void cVec3::fRotate(Lib_GZ::Base::cQuaternion* _oQuat){ gz_(3)
	gzFloat _nTempX = nX;
	gzFloat _nTempY = nY;
	gzFloat _nTempZ = nZ;
	fCross((Lib_GZ::Base::cVec3*)(_oQuat));
	nX += _nTempX * _oQuat->nW;
	nY += _nTempY * _oQuat->nW;
	nZ += _nTempZ * _oQuat->nW;
	fCross((Lib_GZ::Base::cVec3*)(_oQuat));
	nX = (gzFloat(2) * nX) + _nTempX;
	nY = (gzFloat(2) * nY) + _nTempY;
	nZ = (gzFloat(2) * nZ) + _nTempZ;
}

gzAny cVec3::MemCopy(){
return (gzAny)new cVec3(*this);
}
gzAny cVec3::DeepCopy(){
return (gzAny)new cVec3(*this, true);
}
cVec3::~cVec3(){
}



}}