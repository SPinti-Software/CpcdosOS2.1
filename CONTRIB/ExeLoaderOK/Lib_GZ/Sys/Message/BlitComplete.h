#if !( defined tHDef_Lib_GZ_Sys_Message_BlitComplete || defined  tHDef_IN_Lib_GZ_ThreadMsg || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Message_BlitComplete
namespace Lib_GZ{namespace Sys{namespace Message{class cBlitComplete;}}}

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
namespace Lib_GZ{namespace Sys{namespace Message{namespace BlitComplete{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cContextHandle;}}
namespace Lib_GZ{namespace Sys{class cContext;}}
namespace Lib_GZ{namespace Sys{namespace Message{class cBlitComplete;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace Message{namespace BlitComplete{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pBlitComplete {

	public:
	//Pure Function

};

class tApi_Lib_GZ cBlitComplete : public Lib_GZ::cThreadMsg {

	public:


		//Var
		gzUIntX nDrawZoneAdr;
		cBlitComplete(Lib_GZ::cBase* _parent);
		virtual void Ini_cBlitComplete(gzUIntX _nDrawZoneAdr = 0);
		virtual void fRun();

		inline cBlitComplete(const cBlitComplete &_o)  : Lib_GZ::cThreadMsg(_o), nDrawZoneAdr(_o.nDrawZoneAdr){};
		inline cBlitComplete(const cBlitComplete &_o, gzBool _b)  : Lib_GZ::cThreadMsg(_o, _b), nDrawZoneAdr(_o.nDrawZoneAdr){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cBlitComplete();

	private:

		//Var

};
class tApi_Lib_GZ csBlitComplete : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cBlitComplete> New(Lib_GZ::cBase* _parent, gzUIntX _nDrawZoneAdr = 0){
			gzSp<cBlitComplete>_oTemp = gzSp<cBlitComplete>(new cBlitComplete(_parent));
			_oTemp->Ini_cBlitComplete(_nDrawZoneAdr);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csBlitComplete(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csBlitComplete(){};
};
GZ_mStaticClass(BlitComplete)
namespace BlitComplete{
}}}}
#endif