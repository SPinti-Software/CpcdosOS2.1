//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/ThreadItf.h"

#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/ThreadObj.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace ThreadItf{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ThreadItf
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ThreadItf"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ThreadItf)

cThreadItf::cThreadItf(Lib_GZ::cBase* _parent) : Lib_GZ::cThread(_parent){
	

}

void cThreadItf::Ini_cThreadItf(){ gz_(0)
}

cThreadItf::~cThreadItf(){
}



}}