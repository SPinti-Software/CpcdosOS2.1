//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/ContextHandle.h"

#include "Lib_GZ/Sys/Message/ContextLink.h"
#include "Lib_GZ/Gpu/Gpu.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

//Sub Class include
#include "Lib_GZ/Base/Dim.h"


namespace Lib_GZ{namespace Sys{namespace ContextHandle{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ContextHandle
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ContextHandle"},{0,"fUpdate"},{0,"fCreateContextHandle"},{0,"fIniPixelDrawZone"},{0,"fBlit"},{0,"fGpuBlit"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ContextHandle)

cContextHandle::cContextHandle(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	nFrameWidth=0;nFrameHeight=0;nHandleId=0;nWinHandleId=0;
	aHandleDrawZone = 0;

}

void cContextHandle::Ini_cContextHandle(Lib_GZ::Sys::Message::cContextLink* _oLink){ gz_(0)
	oLink = gzSCastSelf<Lib_GZ::Sys::Message::cContextLink>(_oLink);
	nFrameWidth = gzUInt(oLink->oDim->nWidth);
	nFrameHeight = gzUInt(oLink->oDim->nHeight);
	fCreateContextHandle();
	aHandleDrawZone = (fIniPixelDrawZone());
	if (nHandleId == 0){
		Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Error, ContextHandle ID not initialised"));
	}
	if (oLink->bGpuDraw != 0){
		Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- bGpuDraw--"));
		oGpu = gzSCast<Lib_GZ::Gpu::cGpu>((Lib_GZ::Gpu::Gpu::Get(thread)->New(this, nHandleId, false)));
	}
}

void cContextHandle::fUpdate(){ gz_(1)
	gzSp<Lib_GZ::cThreadMsg> _oMsg = gzSCast<Lib_GZ::cThreadMsg>(gAction.fReceive(this));
	if (_oMsg != 0){
		_oMsg->fRun();
	}
}

gzBool cContextHandle::fCreateContextHandle(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("fCreateContextHandle: not implemented "));
	return false;
}

gzInt32* cContextHandle::fIniPixelDrawZone(){ gz_(3)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("fIniPixelDrawZone: not implemented, it require an initialised 1D pixel array"));
	return zNull;
}

gzUIntX cContextHandle::fBlit(){ gz_(4)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("fBlit: not implemented, unable to draw"));
	return 0;
}

gzUIntX cContextHandle::fGpuBlit(){ gz_(5)
	oGpu->fBlit();
	return 0;
}

gzAny cContextHandle::MemCopy(){
return (gzAny)new cContextHandle(*this);
}
gzAny cContextHandle::DeepCopy(){
return (gzAny)new cContextHandle(*this, true);
}
cContextHandle::~cContextHandle(){
}



}}