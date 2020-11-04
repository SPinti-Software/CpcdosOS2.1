//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Vec4.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Vec3.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/Vec2.h"


namespace Lib_GZ{namespace Base{namespace Vec4{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Vec4
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Vec4"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Vec4)

cVec4::cVec4(Lib_GZ::cBase* _parent) : Lib_GZ::Base::cVec3(_parent){
	nW=0;

}

void cVec4::Ini_cVec4(gzFloat _nX, gzFloat _nY, gzFloat _nZ, gzFloat _nW){ gz_(0)
	Ini_cVec3(_nX, _nY, _nZ);
	nW = _nW;
}

gzAny cVec4::MemCopy(){
return (gzAny)new cVec4(*this);
}
gzAny cVec4::DeepCopy(){
return (gzAny)new cVec4(*this, true);
}
cVec4::~cVec4(){
}



}}