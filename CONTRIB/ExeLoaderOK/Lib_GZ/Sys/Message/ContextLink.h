#if !( defined tHDef_Lib_GZ_Sys_Message_ContextLink || defined  tHDef_IN_Lib_GZ_ThreadMsg || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Message_ContextLink
namespace Lib_GZ{namespace Sys{namespace Message{class cContextLink;}}}

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
#include "Lib_GZ/ThreadMsg.h"
namespace Lib_GZ{namespace Sys{namespace Message{namespace ContextLink{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Sys/ContextHandle.h"
#include "Lib_GZ/Sys/Message/ContextCreated.h"
#include "Lib_GZ/Base/Dim.h"
#include "Lib_GZ/Base/Pt.h"
namespace Lib_GZ{namespace Sys{namespace Message{class cContextLink;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace Message{namespace ContextLink{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pContextLink {

	public:
	//Pure Function

};

class tApi_Lib_GZ cContextLink : public Lib_GZ::cThreadMsg {

	public:


		//Var
		gzBool bGpuDraw;
		gzStr sName;
		gzBool bTransparent;
		gzBool bBorder;
		Lib_GZ::Sys::Window::eWinBorder hBorder;
		gzSp<Lib_GZ::Sys::cContextHandle> oHandle;
		gzEmbed<Lib_GZ::Base::cDim> oDim;
		gzEmbed<Lib_GZ::Base::cPt> oPos;
		gzGate<Lib_GZ::cThreadMsg> gFrom;
		gzStr sIcon;
		gzBool bCloseBox;
		gzUIntX nHandleId;
		cContextLink(Lib_GZ::cBase* _parent);
		virtual void Ini_cContextLink(gzPStr _sName, Lib_GZ::Base::cPt* _oPos, Lib_GZ::Base::cDim* _oDimention, gzBool _bGpuDraw = false);
		virtual void fRun();
		virtual void fCreateContext();
		virtual void fIniDrawZone();
		virtual void fSendMsg(Lib_GZ::cThreadMsg* _oMsg);

		inline cContextLink(const cContextLink &_o)  : Lib_GZ::cThreadMsg(_o), bGpuDraw(_o.bGpuDraw), sName(_o.sName), bTransparent(_o.bTransparent), bBorder(_o.bBorder), hBorder(), oHandle(), oDim(_o.oDim), oPos(_o.oPos), gFrom(_o.gFrom), sIcon(_o.sIcon), bCloseBox(_o.bCloseBox), nHandleId(_o.nHandleId){};
		inline cContextLink(const cContextLink &_o, gzBool _b)  : Lib_GZ::cThreadMsg(_o, _b), bGpuDraw(_o.bGpuDraw), sName(_o.sName,_b), bTransparent(_o.bTransparent), bBorder(_o.bBorder), hBorder(), oHandle(), oDim(_o.oDim), oPos(_o.oPos), gFrom(_o.gFrom), sIcon(_o.sIcon,_b), bCloseBox(_o.bCloseBox), nHandleId(_o.nHandleId){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cContextLink();

	private:

		//Var

};
class tApi_Lib_GZ csContextLink : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cContextLink> New(Lib_GZ::cBase* _parent, gzPStr _sName, Lib_GZ::Base::cPt* _oPos, Lib_GZ::Base::cDim* _oDimention, gzBool _bGpuDraw = false){
			gzSp<cContextLink>_oTemp = gzSp<cContextLink>(new cContextLink(_parent));
			_oTemp->Ini_cContextLink(_sName, _oPos, _oDimention, _bGpuDraw);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csContextLink(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csContextLink(){};
};
GZ_mStaticClass(ContextLink)
namespace ContextLink{
}}}}
#endif