#if !( defined tHDef_Lib_GZ_Sys_Context || defined  tHDef_IN_Lib_GZ_Sys_Window || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Context
namespace Lib_GZ{namespace Sys{class cContext;}}

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
#include "Lib_GZ/Sys/Window.h"
namespace Lib_GZ{namespace Sys{namespace Context{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{class cGpu;}}
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace Gfx{class cInterface;}}
#include "Lib_GZ/Input/_Key.h"
namespace Lib_GZ{namespace Sys{namespace Message{class cContextCreated;}}}
namespace Lib_GZ{namespace Sys{namespace Message{class cContextLink;}}}
namespace Lib_GZ{namespace Sys{namespace Message{class cMousePos;}}}
namespace Lib_GZ{namespace Sys{namespace Message{class cBlit;}}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Base{class cDim;}}
namespace Lib_GZ{namespace Sys{class cSystem;}}
namespace Lib_GZ{namespace Sys{class cContext;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace Context{
extern gzGate<Lib_GZ::cThreadMsg> gMainThreadGate;


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pContext {

	public:
	//Pure Function

};

class tApi_Lib_GZ cContext : public Lib_GZ::Sys::cWindow {

	public:


		//Var
		gzGate<Lib_GZ::cThreadMsg> gContextGate;
		gzGate<Lib_GZ::cThreadMsg> gHandleGate;
		gzInt32** aDrawZone2D;
		gzInt32* aDrawZone1D;
		gzBool bBlitInProgress;
		gzBool bLibSharedContext;
		gzBool bIniDrawZone;
		cContext(Lib_GZ::cBase* _parent);
		virtual void Ini_cContext(Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295));
		virtual void fCreate(gzInt _nPosX, gzInt _nPosY, gzUInt _nWinWidth, gzUInt _nWinHeight, Lib_GZ::Sys::Window::eWinState _nStart = Lib_GZ::Sys::Window::eWinState::Normal, gzBool _bGpuDraw = true, gzBool _bResizable = false, gzBool _bDragAndDrop = false, gzBool _bVisible = true);
		virtual void fCreateNow();
		virtual void fFrameStart();
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
		virtual void fGetKey(Lib_GZ::Input::cKey* _oKey);
		virtual void fCompleteContext(Lib_GZ::Sys::Message::cContextCreated* _oInfo);
		virtual void fBlitComplete(gzUIntX _nDrawZoneAdr = 0);

		inline cContext(const cContext &_o)  : Lib_GZ::Sys::cWindow(_o), gContextGate(_o.gContextGate), gHandleGate(_o.gHandleGate), aDrawZone2D(), aDrawZone1D(), bBlitInProgress(_o.bBlitInProgress), bLibSharedContext(_o.bLibSharedContext), bIniDrawZone(_o.bIniDrawZone){};
		inline cContext(const cContext &_o, gzBool _b)  : Lib_GZ::Sys::cWindow(_o, _b), gContextGate(_o.gContextGate), gHandleGate(_o.gHandleGate), aDrawZone2D(), aDrawZone1D(), bBlitInProgress(_o.bBlitInProgress), bLibSharedContext(_o.bLibSharedContext), bIniDrawZone(_o.bIniDrawZone){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cContext();

	private:

		//Var
		virtual void fReceiveMessage(gzPStr _sMessage);

};
class tApi_Lib_GZ csContext : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cContext> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295)){
			gzSp<cContext>_oTemp = gzSp<cContext>(new cContext(_parent));
			_oTemp->Ini_cContext(_oInterface, _sWindowName, _nFrameWidth, _nFrameHeight, _bTransparent, _nBgColor);
			return _oTemp;
		}
		//Public static
		gzQArray<gzSp<Lib_GZ::Sys::cContext>> qaContext;
		gzQArray<gzSp<Lib_GZ::Sys::Message::cContextLink>> qaLinks;

		//Static function
		virtual void fAddLink(Lib_GZ::Sys::Message::cContextLink* _oLink);
		virtual void fManageMessage();
		virtual void fManageMessageOp();

		inline csContext(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csContext(){};
};
GZ_mStaticClass(Context)
namespace Context{
}}}
#endif