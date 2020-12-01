//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/ThreadMsg.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"


namespace Lib_GZ{namespace ThreadMsg{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ThreadMsg
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ThreadMsg"},{0,"fRun"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ThreadMsg)

cThreadMsg::cThreadMsg(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cThreadMsg::Ini_cThreadMsg(){ gz_(0)
}

void cThreadMsg::fRun(){ gz_(1)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Run message not implemented"));
}

cThreadMsg::~cThreadMsg(){
}



}