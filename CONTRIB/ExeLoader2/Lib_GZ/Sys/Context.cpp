//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Context.h"

#include "Lib_GZ/Gpu/Gpu.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Input/Key.h"
#include "Lib_GZ/Sys/Message/ContextCreated.h"
#include "Lib_GZ/Sys/Message/ContextLink.h"
#include "Lib_GZ/Sys/Message/MousePos.h"
#include "Lib_GZ/Sys/Message/Blit.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Base/Dim.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

//Sub Class include
#include "Lib_GZ/Sys/ContextHandle.h"


namespace Lib_GZ{namespace Sys{namespace Context{
gzGate<Lib_GZ::cThreadMsg> gMainThreadGate;
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Context
void Ini_Class(){
gMainThreadGate.Ini();
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Context"},{0,"fCreate"},{0,"fCreateNow"},{0,"fReceiveMessage"},{0,"fFrameStart"},{0,"fAddLink"},{0,"fManageMessage"},{0,"fManageMessageOp"},{0,"fSendData"},{0,"fIniPixelZone"},{0,"drawPixel"},{0,"fBlit"},{0,"fKeyIsDown"},{0,"fClear"},{0,"fCpuVSyncOnGpu"},{0,"fIsWindowReady"},{0,"fIniRender"},{0,"fGetMousePosition"},{0,"fStartCaptureOutside"},{0,"fStopCaptureOutside"},{0,"fFrameEnd"},{0,"fGetPixelArray"},{0,"fGetKey"},{0,"fCompleteContext"},{0,"fBlitComplete"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Context)

cContext::cContext(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cWindow(_parent){
	
	aDrawZone2D = 0;
	aDrawZone1D = 0;
	bBlitInProgress = false;
	bLibSharedContext = false;
	bIniDrawZone = false;

}

void cContext::Ini_cContext(Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent, gzInt _nBgColor){ gz_(0)
	Ini_cWindow((Lib_GZ::Gfx::cInterface*)(_oInterface), _sWindowName, _nFrameWidth, _nFrameHeight, _bTransparent, _nBgColor);
}

void cContext::fCreate(gzInt _nPosX, gzInt _nPosY, gzUInt _nWinWidth, gzUInt _nWinHeight, Lib_GZ::Sys::Window::eWinState _nStart, gzBool _bGpuDraw, gzBool _bResizable, gzBool _bDragAndDrop, gzBool _bVisible){ gz_(1)
	gzSp<Lib_GZ::Base::cPt> _oPt = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(_nPosX), gzFloat(_nPosY))));
	gzSp<Lib_GZ::Base::cDim> _oDim = gzSCast<Lib_GZ::Base::cDim>((Lib_GZ::Base::Dim::Get(thread)->New(this, gzFloat(_nWinWidth), gzFloat(_nWinHeight))));
	bWinGPU = _bGpuDraw;
	nFrameWidth = _nWinWidth;
	nFrameHeight = _nWinHeight;
	gzSp<Lib_GZ::Sys::Message::cContextLink> _oMsg = gzSCast<Lib_GZ::Sys::Message::cContextLink>((Lib_GZ::Sys::Message::ContextLink::Get(thread)->New(this, gzStrL("MonMessage!"), (Lib_GZ::Base::cPt*)(_oPt.get()), (Lib_GZ::Base::cDim*)(_oDim.get()), bWinGPU)));
	_oMsg->gFrom = gContextGate;
	_::gMainThreadGate.fSend((Lib_GZ::cThreadMsg*)(_oMsg.get()));
}

void cContext::fCreateNow(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Create Now Not implemented"));
}

void cContext::fReceiveMessage(gzPStr _sMessage){ gz_(3)
	GZ_mIsImplemented("GzNa::Context::fReceiveMessage")
}

void cContext::fFrameStart(){ gz_(4)
	gzSp<Lib_GZ::cThreadMsg> _oMsg = gzSCast<Lib_GZ::cThreadMsg>(gContextGate.fReceive(this));
	if (_oMsg != 0){
		_oMsg->fRun();
	}
}

void csContext::fAddLink(Lib_GZ::Sys::Message::cContextLink* _oLink){ gz_(5)
	_::Get(thread)->qaLinks.fPush(gzSCastSelf<Lib_GZ::Sys::Message::cContextLink>(_oLink));
}

void csContext::fManageMessage(){ gz_(6)
	gzSp<Lib_GZ::cThreadMsg> _oMsg = gzSCast<Lib_GZ::cThreadMsg>(_::gMainThreadGate.fReceive(this));
	if (_oMsg != 0){
		_oMsg->fRun();
	}
	gzFOR_EACH_QArrayNew(_::Get(thread)->qaLinks, _qe_oLink, gzSp<Lib_GZ::Sys::Message::cContextLink>){
		Lib_GZ::Sys::Message::cContextLink* _oLink = _qe_oLink.val()->get();
		_oLink->oHandle->fUpdate();
		gzSp<Lib_GZ::Sys::Message::cMousePos> _oMsg = gzSCast<Lib_GZ::Sys::Message::cMousePos>((Lib_GZ::Sys::Message::MousePos::Get(thread)->New(this)));
	gzEND_QArray(_qe_oLink)}
	Lib_GZ::Sys::Context::Get(thread)->fManageMessageOp();
}

void csContext::fManageMessageOp(){ gz_(7)
	GZ_mIsImplemented("GzNa::Context::fManageMessageOp")
}

void cContext::fSendData(gzUInt _nOtherWinId){ gz_(8)
	GZ_mIsImplemented("GzNa::Context::fSendData")
}

void cContext::fIniPixelZone(){ gz_(9)
	GZ_mIsImplemented("GzNa::Context::fIniPixelZone")
}

void cContext::drawPixel(){ gz_(10)
	GZ_mIsImplemented("GzNa::Context::drawPixel")
}

void cContext::fBlit(){ gz_(11)
	if (bIniDrawZone != 0 || bWinGPU != 0){
		bBlitInProgress = true;
		gzSp<Lib_GZ::Sys::Message::cBlit> _oMsgBlit = gzSCast<Lib_GZ::Sys::Message::cBlit>((Lib_GZ::Sys::Message::Blit::Get(thread)->New(this)));
		gHandleGate.fSend((Lib_GZ::cThreadMsg*)(_oMsgBlit.get()));
	}
}

gzInt cContext::fKeyIsDown(gzInt _nKeyVal){ gz_(12)
	GZ_mIsImplemented("GzNa::Context::fKeyIsDown")
	return 0;
}

void cContext::fClear(){ gz_(13)
	if (bIniDrawZone != 0){
		//Tag cpp
		int _nLength = nFrameHeight * nFrameWidth;
		#pragma unroll 8
		for(gzUInt i  = 0; i < _nLength; i++){
		aDrawZone1D[i] = 0;
		}
	}
}

void cContext::fCpuVSyncOnGpu(){ gz_(14)
	GZ_mIsImplemented("GzNa::Context::fCpuVSyncOnGpu")
}

gzBool cContext::fIsWindowReady(){ gz_(15)
	GZ_mIsImplemented("GzNa::Context::fIsWindowReady")
	return false;
}

void cContext::fIniRender(){ gz_(16)
	GZ_mIsImplemented("GzNa::Context::fIniRender")
}

void cContext::fGetMousePosition(){ gz_(17)
	GZ_mIsImplemented("GzNa::Context::fGetMousePosition")
}

void cContext::fStartCaptureOutside(){ gz_(18)
	GZ_mIsImplemented("GzNa::Context::fStartCaptureOutside")
}

void cContext::fStopCaptureOutside(){ gz_(19)
	GZ_mIsImplemented("GzNa::Context::fStopCaptureOutside")
}

void cContext::fFrameEnd(){ gz_(20)
	GZ_mIsImplemented("GzNa::Context::fFrameEnd")
}

gzInt** cContext::fGetPixelArray(){ gz_(21)
	GZ_mIsImplemented("GzNa::Context::fGetPixelArray")
	return zNull;
}

void cContext::fGetKey(Lib_GZ::Input::cKey* _oKey){ gz_(22)
	GZ_mIsImplemented("GzNa::Context::fGetKey")
}

void cContext::fCompleteContext(Lib_GZ::Sys::Message::cContextCreated* _oInfo){ gz_(23)
	gHandleGate = _oInfo->gContextHandle;
	//Tag cpp
	aDrawZone1D = (gzInt32*)(_oInfo->nDrawZoneAdr);
	//aDrawZone1D = _oInfo.nDrawZoneAdr; //Erroooor auto add "&" for GPU Handling XD
	if (_oInfo->bGpuDraw == false){
		if (aDrawZone1D == (0)){
			Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Error, no valid draw zone (pixel array of 1D) returned by fIniPixelDrawZone"));
		}else{
			bIniDrawZone = true;
			//Tag cpp
			aDrawZone2D = new gzInt*[nFrameHeight];
			for (gzInt y = 0; y < nFrameHeight; ++y){
			aDrawZone2D[y] =  (gzInt*)&aDrawZone1D[y * nFrameWidth];
			}
		}
	}
}

void cContext::fBlitComplete(gzUIntX _nDrawZoneAdr){ gz_(24)
	if (_nDrawZoneAdr != 0){
		aDrawZone2D = (gzInt32**)(&_nDrawZoneAdr);
	}
	bBlitInProgress = false;
}

gzAny cContext::MemCopy(){
return (gzAny)new cContext(*this);
}
gzAny cContext::DeepCopy(){
return (gzAny)new cContext(*this, true);
}
cContext::~cContext(){
}



}}