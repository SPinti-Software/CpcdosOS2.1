//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Interface.h"

#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/GlobalData.h"
#include "Lib_GZ/Sys/FrameRate.h"
#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gfx/Clip/Rectangle.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/ThreadItf.h"
#include "Lib_GZ/Input/Key.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Perspective.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"


namespace Lib_GZ{namespace Gfx{namespace Interface{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Interface
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Interface"},{0,"fCreateInterface"},{0,"fNewFrame"},{0,"fOnClose"},{0,"fTerminate"},{0,"fIsWindowReady"},{0,"fIniProcess"},{0,"fCpuVSyncOnGpu"},{0,"fBlit"},{0,"fWinStart"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Interface)

cInterface::cInterface(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cFrameRate(_parent),oKey(this){
	nFrameWidth=0;nFrameHeight=0;nHalfFrameWidth=0;nHalfFrameHeight=0;bWIntransparent=0;nBgColor=0;
	nTotalFaces = 0;
	nTotalBuffers = 0;
	bSreenCreated = false;
	nWIntype = 20;
	//GZ_mArray_NewStringE(sWindowName); //Todo
	bGpuDraw = true;

}

void cInterface::Ini_cInterface(Lib_GZ::Sys::cThreadItf* _oThreadItf, gzPStr _sWindowName, gzUInt _nWeakWidth, gzUInt _nWeakHeight, gzBool _bTransparent, gzInt _nBgColor){ gz_(0)
	oKey->Ini_cKey();
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("IntefaceCreate"));
	oItf = gzSCastSelf<Lib_GZ::Gfx::cInterface>(this);
	Ini_cFrameRate((Lib_GZ::Gfx::cRoot*)(GZ_NullObj), _nWeakWidth, _nWeakHeight);
	oThreadItf = gzSCastSelf<Lib_GZ::Sys::cThreadItf>(_oThreadItf);
	oGpuObj = gzSCast<Lib_GZ::Gpu::GpuObj::cGpuBuffer>((Lib_GZ::Gpu::GpuObj::GpuBuffer::Get(thread)->New(this)));
	sWindowName = _sWindowName;
	nBgColor = _nBgColor;
	oContext = gzSCast<Lib_GZ::Sys::cContext>((Lib_GZ::Sys::Context::Get(thread)->New(this, (Lib_GZ::Gfx::cInterface*)(this), _sWindowName, _nWeakWidth, _nWeakHeight, _bTransparent, _nBgColor)));
	oThreadItf->oWindow = gzSCast<Lib_GZ::Sys::cContext>(oContext);
	bWIntransparent = _bTransparent;
	nFrameWidth = gzFloat(oContext->nFrameWidth);
	nFrameHeight = gzFloat(oContext->nFrameHeight);
	nFrameWidth = gzFloat(_nWeakWidth);
	nFrameHeight = gzFloat(_nWeakHeight);
	nHalfFrameWidth = nFrameWidth / 2.0;
	nHalfFrameHeight = nFrameHeight / 2.0;
}

void cInterface::fCreateInterface(gzInt _nPosX, gzInt _nPosY, Lib_GZ::Sys::Window::eWinState _hWinState){ gz_(1)
	oContext->fCreate(_nPosX, _nPosY, gzUInt(nFrameWidth), gzUInt(nFrameHeight), Lib_GZ::Sys::Window::eWinState(_hWinState), bGpuDraw, true);
	if (bWIntransparent == true){
		oContext->bWinGPU = false;
	}
	bSreenCreated = true;
	fStartProcess();
}

void cInterface::fNewFrame(){ gz_(2)
	oContext->fFrameStart();
	if (bSreenCreated != 0 && oContext->bBlitInProgress == false){
		aPixelArray = (oContext->aDrawZone2D);
		oContext->fGetMousePosition();
		oContext->fGetKey((Lib_GZ::Input::cKey*)(oKey.get()));
		oContext->fClear();
		fUpdateParentToChild();
		fUpdateChild();
		oContext->fIniRender();
		if (oContext->bIniDrawZone != 0){
			fDispatchRender();
		}
		if (oContext->bWinGPU != 0){
			oGpuObj->fDraw((Lib_GZ::Gfx::cObject*)(0), 0, 0, 0, 0);
		}
		oContext->fFrameEnd();
		fOnClose();
	}
}

void cInterface::fOnClose(){ gz_(3)
	if (gzInt(oContext->hWinClick) == Lib_GZ::Sys::Window::eWinClick::Close){
		oThreadItf->bRun = false;
	}
}

void cInterface::fTerminate(){ gz_(4)
	oThreadItf->bRun = false;
}

gzBool cInterface::fIsWindowReady(){ gz_(5)
	return oContext->fIsWindowReady();
}

void cInterface::fIniProcess(){ gz_(6)
	oContext->fIniProcess();
	oGpuObj->fIni((Lib_GZ::Gfx::cInterface*)(this));
	fWinStart();
	if (bWIntransparent != true){
		oBackground = gzSCast<Lib_GZ::Gfx::Clip::cRectangle>((Lib_GZ::Gfx::Clip::Rectangle::Get(thread)->New(this, (Lib_GZ::Gfx::cRoot*)(this), gzFloat(0), gzFloat(0), gzFloat(oContext->nFrameWidth), gzFloat(oContext->nFrameHeight), nBgColor)));
	}
}

void cInterface::fCpuVSyncOnGpu(){ gz_(7)
	oContext->fCpuVSyncOnGpu();
}

void cInterface::fBlit(){ gz_(8)
	oContext->fBlit();
}

void cInterface::fWinStart(){ gz_(9)
	GZ_mIsImplemented("GzNa::Interface::fWinStart")
}

cInterface::~cInterface(){
}



}}