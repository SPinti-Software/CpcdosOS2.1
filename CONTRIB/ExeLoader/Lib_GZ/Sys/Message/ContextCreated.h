#if !( defined tHDef_Lib_GZ_Sys_Message_ContextCreated || defined  tHDef_IN_Lib_GZ_ThreadMsg || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Message_ContextCreated
namespace Lib_GZ{namespace Sys{namespace Message{class cContextCreated;}}}

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
namespace Lib_GZ{namespace Sys{namespace Message{namespace ContextCreated{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cContext;}}
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace Sys{class cContextHandle;}}
namespace Lib_GZ{namespace Base{class cDim;}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Sys{namespace Message{class cContextCreated;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace Message{namespace ContextCreated{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pContextCreated {

	public:
	//Pure Function

};

class tApi_Lib_GZ cContextCreated : public Lib_GZ::cThreadMsg {

	public:


		//Var
		gzUIntX nHandleId;
		gzUIntX nDrawZoneAdr;
		gzBool bGpuDraw;
		gzGate<Lib_GZ::cThreadMsg> gContextHandle;
		cContextCreated(Lib_GZ::cBase* _parent);
		virtual void Ini_cContextCreated(gzUInt _nHandleId, gzGate<Lib_GZ::cThreadMsg> _gContextHandle, gzUIntX _nDrawZoneAdr, gzBool _bGpuDraw = false);
		virtual void fRun();

		inline cContextCreated(const cContextCreated &_o)  : Lib_GZ::cThreadMsg(_o), nHandleId(_o.nHandleId), nDrawZoneAdr(_o.nDrawZoneAdr), bGpuDraw(_o.bGpuDraw), gContextHandle(_o.gContextHandle){};
		inline cContextCreated(const cContextCreated &_o, gzBool _b)  : Lib_GZ::cThreadMsg(_o, _b), nHandleId(_o.nHandleId), nDrawZoneAdr(_o.nDrawZoneAdr), bGpuDraw(_o.bGpuDraw), gContextHandle(_o.gContextHandle){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cContextCreated();

	private:

		//Var

};
class tApi_Lib_GZ csContextCreated : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cContextCreated> New(Lib_GZ::cBase* _parent, gzUInt _nHandleId, gzGate<Lib_GZ::cThreadMsg> _gContextHandle, gzUIntX _nDrawZoneAdr, gzBool _bGpuDraw = false){
			gzSp<cContextCreated>_oTemp = gzSp<cContextCreated>(new cContextCreated(_parent));
			_oTemp->Ini_cContextCreated(_nHandleId, _gContextHandle, _nDrawZoneAdr, _bGpuDraw);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csContextCreated(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csContextCreated(){};
};
GZ_mStaticClass(ContextCreated)
namespace ContextCreated{
}}}}
#endif