//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Window.h"

#include "Lib_GZ/Gpu/Gpu.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Input/Key.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Sys{namespace Window{
}}}


namespace Lib_GZ{namespace Sys{namespace Window{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Window
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Window"},{0,"fReceiveMessage"},{0,"fCreate"},{0,"fFrameStart"},{0,"fMove"},{0,"fMoveAndSize"},{0,"fShow"},{0,"fHide"},{0,"fIniProcess"},{0,"fMinimize"},{0,"fMaximize"},{0,"fRestore"},{0,"fDisable"},{0,"fSendData"},{0,"fIniPixelZone"},{0,"drawPixel"},{0,"fBlit"},{0,"fKeyIsDown"},{0,"fClear"},{0,"fCpuVSyncOnGpu"},{0,"fIsWindowReady"},{0,"fIniRender"},{0,"fGetMousePosition"},{0,"fStartCaptureOutside"},{0,"fStopCaptureOutside"},{0,"fFrameEnd"},{0,"fGetPixelArray"},{0,"fTest"},{0,"fGetKey"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Window)

cWindow::cWindow(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	bGlobalSharedContext=0;bReady=0;bWinGPU=0;nMouseX=0;nMouseY=0;nHandleId=0;nLastMouseX=0;nLastMouseY=0;nPosX=0;nPosY=0;nFrameWidth=0;nFrameHeight=0;
	//GZ_mArray_NewStringE(sWindowName); //Todo

}

void cWindow::Ini_cWindow(Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent, gzInt _nBgColor){ gz_(0)
}

void cWindow::fReceiveMessage(gzPStr _sMessage){ gz_(1)
	GZ_mIsImplemented("GzNa::Window::fReceiveMessage")
}

void cWindow::fCreate(gzInt _nPosX, gzInt _nPosY, gzUInt _nWinWidth, gzUInt _nWinHeight, Lib_GZ::Sys::Window::eWinState _nStart, gzBool _bResizable, gzBool _bDragAndDrop, gzBool _bVisible){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("---fCreate Not Implemented--"));
	if (gzInt(hBorder) == Lib_GZ::Sys::Window::eWinBorder::Normal){
	}
}

void cWindow::fFrameStart(){ gz_(3)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("fFrameStart"));
}

void cWindow::fMove(gzInt _nPosX, gzInt _nPosY){ gz_(4)
	GZ_mIsImplemented("GzNa::Window::fMove")
}

void cWindow::fMoveAndSize(gzInt _nPosX, gzInt _nPosY, gzInt _nWidth, gzInt _nHeight){ gz_(5)
	GZ_mIsImplemented("GzNa::Window::fMoveAndSize")
}

void cWindow::fShow(gzBool _bActive){ gz_(6)
	GZ_mIsImplemented("GzNa::Window::fShow")
}

void cWindow::fHide(){ gz_(7)
	GZ_mIsImplemented("GzNa::Window::fHide")
}

void cWindow::fIniProcess(){ gz_(8)
	GZ_mIsImplemented("GzNa::Window::fIniProcess")
}

void cWindow::fMinimize(){ gz_(9)
	GZ_mIsImplemented("GzNa::Window::fMinimize")
}

void cWindow::fMaximize(){ gz_(10)
	GZ_mIsImplemented("GzNa::Window::fMaximize")
}

void cWindow::fRestore(){ gz_(11)
	GZ_mIsImplemented("GzNa::Window::fRestore")
}

void cWindow::fDisable(){ gz_(12)
	GZ_mIsImplemented("GzNa::Window::fDisable")
}

void cWindow::fSendData(gzUInt _nOtherWinId){ gz_(13)
	GZ_mIsImplemented("GzNa::Window::fSendData")
}

void cWindow::fIniPixelZone(){ gz_(14)
	GZ_mIsImplemented("GzNa::Window::fIniPixelZone")
}

void cWindow::drawPixel(){ gz_(15)
	GZ_mIsImplemented("GzNa::Window::drawPixel")
}

void cWindow::fBlit(){ gz_(16)
	GZ_mIsImplemented("GzNa::Window::fBlit")
}

gzInt cWindow::fKeyIsDown(gzInt _nKeyVal){ gz_(17)
	GZ_mIsImplemented("GzNa::Window::fKeyIsDown")
	return 0;
}

void cWindow::fClear(){ gz_(18)
	GZ_mIsImplemented("GzNa::Window::fClear")
}

void cWindow::fCpuVSyncOnGpu(){ gz_(19)
	GZ_mIsImplemented("GzNa::Window::fCpuVSyncOnGpu")
}

gzBool cWindow::fIsWindowReady(){ gz_(20)
	GZ_mIsImplemented("GzNa::Window::fIsWindowReady")
	return false;
}

void cWindow::fIniRender(){ gz_(21)
	GZ_mIsImplemented("GzNa::Window::fIniRender")
}

void cWindow::fGetMousePosition(){ gz_(22)
	GZ_mIsImplemented("GzNa::Window::fGetMousePosition")
}

void cWindow::fStartCaptureOutside(){ gz_(23)
	GZ_mIsImplemented("GzNa::Window::fStartCaptureOutside")
}

void cWindow::fStopCaptureOutside(){ gz_(24)
	GZ_mIsImplemented("GzNa::Window::fStopCaptureOutside")
}

void cWindow::fFrameEnd(){ gz_(25)
	GZ_mIsImplemented("GzNa::Window::fFrameEnd")
}

gzInt** cWindow::fGetPixelArray(){ gz_(26)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("ss"));
	return zNull;
}

void cWindow::fTest(){ gz_(27)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("TEST!"));
}

void cWindow::fGetKey(Lib_GZ::Input::cKey* _oKey){ gz_(28)
	GZ_mIsImplemented("GzNa::Window::fGetKey")
}

cWindow::~cWindow(){
}



}}