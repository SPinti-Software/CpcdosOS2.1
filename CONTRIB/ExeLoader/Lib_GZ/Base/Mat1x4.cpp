//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Mat1x4.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Vec4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Base{namespace Mat1x4{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Mat1x4
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Mat1x4"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Mat1x4)

cMat1x4::cMat1x4(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent),v0(this){
	

}

void cMat1x4::Ini_cMat1x4(Lib_GZ::Base::cVec4* _v0){ gz_(0)
	v0->Ini_cVec4(0,0,0,0);
	v0 = gzSCastSelf<Lib_GZ::Base::cVec4>(_v0);
}

gzAny cMat1x4::MemCopy(){
return (gzAny)new cMat1x4(*this);
}
gzAny cMat1x4::DeepCopy(){
return (gzAny)new cMat1x4(*this, true);
}
cMat1x4::~cMat1x4(){
}



}}