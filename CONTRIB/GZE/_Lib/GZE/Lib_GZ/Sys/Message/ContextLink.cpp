//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Message/ContextLink.h"

#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Sys/ContextHandle.h"
#include "Lib_GZ/Sys/Message/ContextCreated.h"
#include "Lib_GZ/Base/Dim.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace Message{namespace ContextLink{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ContextLink
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ContextLink"},{0,"fRun"},{0,"fCreateContext"},{0,"fIniDrawZone"},{0,"fSendMsg"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ContextLink)

cContextLink::cContextLink(Lib_GZ::cBase* _parent) : Lib_GZ::cThreadMsg(_parent),oDim(this),oPos(this){
	nHandleId=0;
	bGpuDraw = false;
	//GZ_mArray_NewStringE(sName); //Todo
	bTransparent = false;
	bBorder = false;
	sIcon = gzStrL("Test");
	bCloseBox = true;

}

void cContextLink::Ini_cContextLink(gzPStr _sName, Lib_GZ::Base::cPt* _oPos, Lib_GZ::Base::cDim* _oDimention, gzBool _bGpuDraw){ gz_(0)
	oDim->Ini_cDim(0,0,0);
	oPos->Ini_cPt(0,0,0);
	sName = _sName;
	oPos = gzSCastSelf<Lib_GZ::Base::cPt>(_oPos);
	oDim = gzSCastSelf<Lib_GZ::Base::cDim>(_oDimention);
	bGpuDraw = _bGpuDraw;
}

void cContextLink::fRun(){ gz_(1)
	Lib_GZ::Sys::Context::Get(thread)->fAddLink((Lib_GZ::Sys::Message::cContextLink*)(this));
	oHandle = gzSCast<Lib_GZ::Sys::cContextHandle>((Lib_GZ::Sys::ContextHandle::Get(thread)->New(this, (Lib_GZ::Sys::Message::cContextLink*)(this))));
	gzSp<Lib_GZ::Sys::Message::cContextCreated> _oContextCreated = gzSCast<Lib_GZ::Sys::Message::cContextCreated>((Lib_GZ::Sys::Message::ContextCreated::Get(thread)->New(this, nHandleId, gzGate<Lib_GZ::cThreadMsg>(oHandle->gAction), gzUIntX(oHandle->aHandleDrawZone), bGpuDraw)));
	fSendMsg((Lib_GZ::cThreadMsg*)(_oContextCreated.get()));
}

void cContextLink::fCreateContext(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Not Implemented!!! : "));
}

void cContextLink::fIniDrawZone(){ gz_(3)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("fIniDrawZone Implemented!!! : "));
}

void cContextLink::fSendMsg(Lib_GZ::cThreadMsg* _oMsg){ gz_(4)
	gFrom.fSend((Lib_GZ::cThreadMsg*)(_oMsg));
}

gzAny cContextLink::MemCopy(){
return (gzAny)new cContextLink(*this);
}
gzAny cContextLink::DeepCopy(){
return (gzAny)new cContextLink(*this, true);
}
cContextLink::~cContextLink(){
}



}}}