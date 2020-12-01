#if !( defined tHDef_Lib_GZ_Sys_Window || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Window
#define tHDef_IN_Lib_GZ_Sys_Window
namespace Lib_GZ{namespace Sys{class cWindow;}}

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "_Window.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Sys{namespace Window{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{class cGpu;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
#include "Lib_GZ/Input/_Key.h"
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

/////Delegate InterCompatible  /////

#ifndef GZ_r_void_p_gzStr
#define GZ_r_void_p_gzStr
namespace Lib_GZ{GZ_mIComp(_r_void_p_gzStr);}
#endif

/////////////////////////////////

namespace Lib_GZ{namespace Sys{namespace Window{


	namespace Dlg_fReceiveMessage_r_void_p_gzStr{
		///////
		GZ_mDlgIni(void, GZ_PARAM, gzPStr _sMessage){return ;};
		 class Dlg { GZ_mDlgClass(_r_void_p_gzStr)
			///////////////////
			inline  void fCall(gzPStr _sMessage){
				GZ_mDlgCall(GZ_PARAM, _sMessage);
			 }
		};
	}

	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pWindow {

	public:
	//Pure Function

};

class tApi_Lib_GZ cWindow : public Lib_GZ::cClass {

	public:

		//Delegate Ref


		//Var
		gzBool bGlobalSharedContext;
		gzBool bReady;
		gzSp<Lib_GZ::Gpu::cGpu> oGpu;
		Lib_GZ::Sys::Window::eWinBorder hBorder;
		Window::Dlg_fReceiveMessage_r_void_p_gzStr::Dlg dInterProcessMessage;
		Lib_GZ::Sys::Window::eWinClick hWinClick;
		gzBool bWinGPU;
		gzFloat nMouseX;
		gzFloat nMouseY;
		gzUInt nHandleId;
		gzFloat nLastMouseX;
		gzFloat nLastMouseY;
		gzFloat nPosX;
		gzFloat nPosY;
		gzInt nFrameWidth;
		gzInt nFrameHeight;
		gzStr sWindowName;
		cWindow(Lib_GZ::cBase* _parent);
		virtual void Ini_cWindow(Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295));
		virtual void fCreate(gzInt _nPosX, gzInt _nPosY, gzUInt _nWinWidth, gzUInt _nWinHeight, Lib_GZ::Sys::Window::eWinState _nStart = Lib_GZ::Sys::Window::eWinState::Normal, gzBool _bResizable = false, gzBool _bDragAndDrop = false, gzBool _bVisible = true);
		virtual void fFrameStart();
		virtual void fMove(gzInt _nPosX, gzInt _nPosY);
		virtual void fMoveAndSize(gzInt _nPosX, gzInt _nPosY, gzInt _nWidth, gzInt _nHeight);
		virtual void fShow(gzBool _bActive = true);
		virtual void fHide();
		virtual void fIniProcess();
		virtual void fMinimize();
		virtual void fMaximize();
		virtual void fRestore();
		virtual void fDisable();
		virtual void fSendData(gzUInt _nOtherWinId);
		virtual void fIniPixelZone();
		virtual void drawPixel();
		virtual void fBlit();
		virtual gzInt fKeyIsDown(gzInt _nKeyVal);
		virtual void fClear();
		virtual void fCpuVSyncOnGpu();
		virtual gzBool fIsWindowReady();
		virtual void fIniRender();
		virtual void fGetMousePosition();
		virtual void fStartCaptureOutside();
		virtual void fStopCaptureOutside();
		virtual void fFrameEnd();
		virtual gzInt** fGetPixelArray();
		virtual void fTest();
		virtual void fGetKey(Lib_GZ::Input::cKey* _oKey);

		inline cWindow(const cWindow &_o)  : Lib_GZ::cClass(_o), bGlobalSharedContext(_o.bGlobalSharedContext), bReady(_o.bReady), oGpu(), hBorder(), dInterProcessMessage(), hWinClick(), bWinGPU(_o.bWinGPU), nMouseX(_o.nMouseX), nMouseY(_o.nMouseY), nHandleId(_o.nHandleId), nLastMouseX(_o.nLastMouseX), nLastMouseY(_o.nLastMouseY), nPosX(_o.nPosX), nPosY(_o.nPosY), nFrameWidth(_o.nFrameWidth), nFrameHeight(_o.nFrameHeight), sWindowName(_o.sWindowName){};
		inline cWindow(const cWindow &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), bGlobalSharedContext(_o.bGlobalSharedContext), bReady(_o.bReady), oGpu(), hBorder(), dInterProcessMessage(), hWinClick(), bWinGPU(_o.bWinGPU), nMouseX(_o.nMouseX), nMouseY(_o.nMouseY), nHandleId(_o.nHandleId), nLastMouseX(_o.nLastMouseX), nLastMouseY(_o.nLastMouseY), nPosX(_o.nPosX), nPosY(_o.nPosY), nFrameWidth(_o.nFrameWidth), nFrameHeight(_o.nFrameHeight), sWindowName(_o.sWindowName,_b){};
		virtual ~cWindow();

	private:

		//Var
		virtual void fReceiveMessage(gzPStr _sMessage);

};
class tApi_Lib_GZ csWindow : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cWindow> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295)){
			gzSp<cWindow>_oTemp = gzSp<cWindow>(new cWindow(_parent));
			_oTemp->Ini_cWindow(_oInterface, _sWindowName, _nFrameWidth, _nFrameHeight, _bTransparent, _nBgColor);
			return _oTemp;
		}
		//Public static
		gzBool bMouseDrag;
		gzBool bFirstMouseOver;

		//Static function

		inline csWindow(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csWindow(){};
};
GZ_mStaticClass(Window)
namespace Window{
}}}
#undef tHDef_IN_Lib_GZ_Sys_Window
#endif