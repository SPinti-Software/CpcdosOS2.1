//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Vec2.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Base{namespace Vec2{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Vec2
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Vec2"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Vec2)

cVec2::cVec2(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	nX=0;nY=0;

}

void cVec2::Ini_cVec2(gzFloat _nX, gzFloat _nY){ gz_(0)
	nX = _nX;
	nY = _nY;
}

gzAny cVec2::MemCopy(){
return (gzAny)new cVec2(*this);
}
gzAny cVec2::DeepCopy(){
return (gzAny)new cVec2(*this, true);
}
cVec2::~cVec2(){
}



}}