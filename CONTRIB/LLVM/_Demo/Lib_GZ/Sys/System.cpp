//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/System.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace System{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ System
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"System"},{0,"fSleep"},{0,"fIni"},{0,"fDetectGpu"},{0,"fSleep"},{0,"fExit"},{0,"GbAnyResolutionAvailable"},{0,"GnForceWidth"},{0,"GnForceHeight"}};
#endif
///////////////////////////////

}

GZ_mCppClass(System)

cSystem::cSystem(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cSystem::Ini_cSystem(){ gz_(0)
	Lib_GZ::Sys::System::Get(thread)->oInst = gzSCastSelf<Lib_GZ::Sys::cSystem>(this);
}

void csSystem::fSleep(gzUInt _nMilliseconds){ gz_(1)
	if (oInst != 0){
	}else{
		oInst = gzSCast<Lib_GZ::Sys::cSystem>((Lib_GZ::Sys::System::Get(thread)->New(this)));
	}
	oInst->fSleep(_nMilliseconds);
}

void csSystem::fIni(gzUIntX _nInstance, gzPStr _sCommandLine, gzUInt _nShowCmd){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("nInstance-: ") + gzStrI(_nInstance));
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Tread-: ") + gzStrUI(thread->nId));
	_::Get(thread)->nInstance = _nInstance;
}

gzBool csSystem::fDetectGpu(){ gz_(3)
	GZ_mIsImplemented("GzNa::System::fDetectGpu")
	return false;
}

void cSystem::fSleep(gzUInt _nMilliseconds){ gz_(4)
	GZ_mIsImplemented("GzNa::System::fSleep")
}

void csSystem::fExit(){ gz_(5)
	GZ_mIsImplemented("GzNa::System::fExit")
}

gzBool csSystem::GbAnyResolutionAvailable(){ gz_(6)
	GZ_mIsImplemented("GzNa::System::GbAnyResolutionAvailable")
	return false;
}

gzUInt csSystem::GnForceWidth(){ gz_(7)
	GZ_mIsImplemented("GzNa::System::GnForceWidth")
	return 0;
}

gzUInt csSystem::GnForceHeight(){ gz_(8)
	GZ_mIsImplemented("GzNa::System::GnForceHeight")
	return 0;
}

gzAny cSystem::MemCopy(){
return (gzAny)new cSystem(*this);
}
gzAny cSystem::DeepCopy(){
return (gzAny)new cSystem(*this, true);
}
cSystem::~cSystem(){
}



}}