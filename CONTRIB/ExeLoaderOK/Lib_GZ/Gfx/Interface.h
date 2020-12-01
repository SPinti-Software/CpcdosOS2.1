#if !( defined tHDef_Lib_GZ_Gfx_Interface || defined  tHDef_IN_Lib_GZ_Sys_FrameRate || defined  tHDef_IN_Lib_GZ_Gfx_Buffer || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Interface
#define tHDef_IN_Lib_GZ_Gfx_Interface
namespace Lib_GZ{namespace Gfx{class cInterface;}}

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
#include "Lib_GZ/Sys/FrameRate.h"
namespace Lib_GZ{namespace Gfx{namespace Interface{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
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
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Interface{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pInterface {

	public:
	//Pure Function

};

class tApi_Lib_GZ cInterface : public Lib_GZ::Sys::cFrameRate {

	public:


		//Var
		gzUInt nTotalFaces;
		gzUInt nTotalBuffers;
		gzSp<Lib_GZ::Sys::cContext> oContext;
		gzFloat nFrameWidth;
		gzFloat nFrameHeight;
		gzFloat nHalfFrameWidth;
		gzFloat nHalfFrameHeight;
		gzEmbed<Lib_GZ::Input::cKey> oKey;
		gzSp<Lib_GZ::Sys::cThreadItf> oThreadItf;
		gzBool bGpuDraw;
		cInterface(Lib_GZ::cBase* _parent);
		virtual void Ini_cInterface(Lib_GZ::Sys::cThreadItf* _oThreadItf, gzPStr _sWindowName, gzUInt _nWeakWidth, gzUInt _nWeakHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295));
		virtual void fCreateInterface(gzInt _nPosX = Lib_GZ::Sys::Window::nPosCenter, gzInt _nPosY = Lib_GZ::Sys::Window::nPosCenter, Lib_GZ::Sys::Window::eWinState _hWinState = Lib_GZ::Sys::Window::eWinState::Normal);
		virtual void fNewFrame();
		virtual void fOnClose();
		virtual void fTerminate();
		virtual gzBool fIsWindowReady();
		virtual void fIniProcess();
		virtual void fCpuVSyncOnGpu();
		virtual void fBlit();
		virtual void fWinStart();

		inline cInterface(const cInterface &_o)  : Lib_GZ::Sys::cFrameRate(_o), nTotalFaces(_o.nTotalFaces), nTotalBuffers(_o.nTotalBuffers), bSreenCreated(_o.bSreenCreated), nWIntype(_o.nWIntype), sWindowName(_o.sWindowName), oBackground(), oContext(), nFrameWidth(_o.nFrameWidth), nFrameHeight(_o.nFrameHeight), nHalfFrameWidth(_o.nHalfFrameWidth), nHalfFrameHeight(_o.nHalfFrameHeight), oKey(_o.oKey), bWIntransparent(_o.bWIntransparent), nBgColor(_o.nBgColor), oThreadItf(), bGpuDraw(_o.bGpuDraw){};
		inline cInterface(const cInterface &_o, gzBool _b)  : Lib_GZ::Sys::cFrameRate(_o, _b), nTotalFaces(_o.nTotalFaces), nTotalBuffers(_o.nTotalBuffers), bSreenCreated(_o.bSreenCreated), nWIntype(_o.nWIntype), sWindowName(_o.sWindowName,_b), oBackground(), oContext(), nFrameWidth(_o.nFrameWidth), nFrameHeight(_o.nFrameHeight), nHalfFrameWidth(_o.nHalfFrameWidth), nHalfFrameHeight(_o.nHalfFrameHeight), oKey(_o.oKey), bWIntransparent(_o.bWIntransparent), nBgColor(_o.nBgColor), oThreadItf(), bGpuDraw(_o.bGpuDraw){};
		virtual ~cInterface();

	private:

		//Var
		gzBool bSreenCreated;
		gzUInt nWIntype;
		gzStr sWindowName;
		gzSp<Lib_GZ::Gfx::Clip::cRectangle> oBackground;
		gzBool bWIntransparent;
		gzInt nBgColor;

};
class tApi_Lib_GZ csInterface : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cInterface> New(Lib_GZ::cBase* _parent, Lib_GZ::Sys::cThreadItf* _oThreadItf, gzPStr _sWindowName, gzUInt _nWeakWidth, gzUInt _nWeakHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295)){
			gzSp<cInterface>_oTemp = gzSp<cInterface>(new cInterface(_parent));
			_oTemp->Ini_cInterface(_oThreadItf, _sWindowName, _nWeakWidth, _nWeakHeight, _bTransparent, _nBgColor);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csInterface(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csInterface(){};
};
GZ_mStaticClass(Interface)
namespace Interface{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Interface
#endif