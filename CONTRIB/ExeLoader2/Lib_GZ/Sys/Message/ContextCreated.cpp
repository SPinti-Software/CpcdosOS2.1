//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Message/ContextCreated.h"

#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Sys/ContextHandle.h"
#include "Lib_GZ/Base/Dim.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace Message{namespace ContextCreated{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ContextCreated
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ContextCreated"},{0,"fRun"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ContextCreated)

cContextCreated::cContextCreated(Lib_GZ::cBase* _parent) : Lib_GZ::cThreadMsg(_parent){
	nHandleId=0;nDrawZoneAdr=0;bGpuDraw=0;

}

void cContextCreated::Ini_cContextCreated(gzUInt _nHandleId, gzGate<Lib_GZ::cThreadMsg> _gContextHandle, gzUIntX _nDrawZoneAdr, gzBool _bGpuDraw){ gz_(0)
	nHandleId = _nHandleId;
	gContextHandle = _gContextHandle;
	nDrawZoneAdr = _nDrawZoneAdr;
	bGpuDraw = _bGpuDraw;
}

void cContextCreated::fRun(){ gz_(1)
	gzSp<Lib_GZ::Sys::cContext> _oContext = gzSCastSelf<Lib_GZ::Sys::cContext>(parent.get());
	_oContext->fCompleteContext((Lib_GZ::Sys::Message::cContextCreated*)(this));
}

gzAny cContextCreated::MemCopy(){
return (gzAny)new cContextCreated(*this);
}
gzAny cContextCreated::DeepCopy(){
return (gzAny)new cContextCreated(*this, true);
}
cContextCreated::~cContextCreated(){
}



}}}