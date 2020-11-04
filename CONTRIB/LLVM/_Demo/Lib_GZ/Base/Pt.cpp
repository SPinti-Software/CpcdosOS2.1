//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Pt.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Vec3.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/Vec2.h"


namespace Lib_GZ{namespace Base{namespace Pt{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Pt
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Pt"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Pt)

cPt::cPt(Lib_GZ::cBase* _parent) : Lib_GZ::Base::cVec3(_parent){

}

void cPt::Ini_cPt(gzFloat _nX, gzFloat _nY, gzFloat _nZ){ gz_(0)
	Ini_cVec3(_nX, _nY, _nZ);
}

gzAny cPt::MemCopy(){
return (gzAny)new cPt(*this);
}
gzAny cPt::DeepCopy(){
return (gzAny)new cPt(*this, true);
}
cPt::~cPt(){
}



}}