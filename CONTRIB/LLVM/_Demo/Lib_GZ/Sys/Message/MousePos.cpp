//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Message/MousePos.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace Message{namespace MousePos{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ MousePos
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"MousePos"},{0,"fRun"}};
#endif
///////////////////////////////

}

GZ_mCppClass(MousePos)

cMousePos::cMousePos(Lib_GZ::cBase* _parent) : Lib_GZ::cThreadMsg(_parent){
	nPosX = 4;
	nPosY = 3;

}

void cMousePos::Ini_cMousePos(){ gz_(0)
}

void cMousePos::fRun(){ gz_(1)
	GZ_mIsImplemented("GzNa::MousePos::fRun")
}

gzAny cMousePos::MemCopy(){
return (gzAny)new cMousePos(*this);
}
gzAny cMousePos::DeepCopy(){
return (gzAny)new cMousePos(*this, true);
}
cMousePos::~cMousePos(){
}



}}}