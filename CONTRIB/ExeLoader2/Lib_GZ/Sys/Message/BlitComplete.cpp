//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Message/BlitComplete.h"

#include "Lib_GZ/Sys/ContextHandle.h"
#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace Message{namespace BlitComplete{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ BlitComplete
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"BlitComplete"},{0,"fRun"}};
#endif
///////////////////////////////

}

GZ_mCppClass(BlitComplete)

cBlitComplete::cBlitComplete(Lib_GZ::cBase* _parent) : Lib_GZ::cThreadMsg(_parent){
	nDrawZoneAdr=0;

}

void cBlitComplete::Ini_cBlitComplete(gzUIntX _nDrawZoneAdr){ gz_(0)
	nDrawZoneAdr = _nDrawZoneAdr;
}

void cBlitComplete::fRun(){ gz_(1)
	gzSp<Lib_GZ::Sys::cContext> _oContext = gzSCastSelf<Lib_GZ::Sys::cContext>(parent.get());
	_oContext->fBlitComplete(nDrawZoneAdr);
}

gzAny cBlitComplete::MemCopy(){
return (gzAny)new cBlitComplete(*this);
}
gzAny cBlitComplete::DeepCopy(){
return (gzAny)new cBlitComplete(*this, true);
}
cBlitComplete::~cBlitComplete(){
}



}}}