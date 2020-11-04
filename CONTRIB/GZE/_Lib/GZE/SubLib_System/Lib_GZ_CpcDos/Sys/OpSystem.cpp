#include "Lib_GZ_CpcDos/Sys/OpSystem.h"

#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ_CpcDos{namespace Sys{namespace OpSystem{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpSystem
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpSystem"},{0,"fSleep"},{0,"fExit"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpSystem)

cOpSystem::cOpSystem(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cSystem(_parent){

}

void cOpSystem::Ini_cOpSystem(){ gz_(0)
	Ini_cSystem();
}

void csOpSystem::fSleep(gzUInt _nMilliseconds){ gz_(1)
	GZ_mIsImplemented("GzCpcDos::OpSystem::fSleep")
}

void csOpSystem::fExit(){ gz_(2)
	GZ_mIsImplemented("GzCpcDos::OpSystem::fExit")
}

cOpSystem::~cOpSystem(){
}



}}