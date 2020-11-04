#if !( defined tHDef_Lib_GZ_Sys_ContextHandle || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_ContextHandle
namespace Lib_GZ{namespace Sys{class cContextHandle;}}

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
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Sys{namespace ContextHandle{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{namespace Message{class cContextLink;}}}
namespace Lib_GZ{namespace Gpu{class cGpu;}}
namespace Lib_GZ{namespace Sys{class cContextHandle;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace ContextHandle{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pContextHandle {

	public:
	//Pure Function

};

class tApi_Lib_GZ cContextHandle : public Lib_GZ::cClass {

	public:


		//Var
		gzWp<Lib_GZ::Sys::Message::cContextLink> oLink;
		gzInt32* aHandleDrawZone;
		gzGate<Lib_GZ::cThreadMsg> gAction;
		gzUInt nFrameWidth;
		gzUInt nFrameHeight;
		gzUIntX nHandleId;
		gzUIntX nWinHandleId;
		gzSp<Lib_GZ::Gpu::cGpu> oGpu;
		cContextHandle(Lib_GZ::cBase* _parent);
		virtual void Ini_cContextHandle(Lib_GZ::Sys::Message::cContextLink* _oLink);
		virtual void fUpdate();
		virtual gzBool fCreateContextHandle();
		virtual gzInt32* fIniPixelDrawZone();
		virtual gzUIntX fBlit();
		virtual gzUIntX fGpuBlit();

		inline cContextHandle(const cContextHandle &_o)  : Lib_GZ::cClass(_o), oLink(), aHandleDrawZone(), gAction(_o.gAction), nFrameWidth(_o.nFrameWidth), nFrameHeight(_o.nFrameHeight), nHandleId(_o.nHandleId), nWinHandleId(_o.nWinHandleId), oGpu(){};
		inline cContextHandle(const cContextHandle &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), oLink(), aHandleDrawZone(), gAction(_o.gAction), nFrameWidth(_o.nFrameWidth), nFrameHeight(_o.nFrameHeight), nHandleId(_o.nHandleId), nWinHandleId(_o.nWinHandleId), oGpu(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cContextHandle();

	private:

		//Var

};
class tApi_Lib_GZ csContextHandle : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cContextHandle> New(Lib_GZ::cBase* _parent, Lib_GZ::Sys::Message::cContextLink* _oLink){
			gzSp<cContextHandle>_oTemp = gzSp<cContextHandle>(new cContextHandle(_parent));
			_oTemp->Ini_cContextHandle(_oLink);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csContextHandle(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csContextHandle(){};
};
GZ_mStaticClass(ContextHandle)
namespace ContextHandle{
}}}
#endif