#if !( defined tHDef_Lib_GZ_Sys_Message_Blit || defined  tHDef_IN_Lib_GZ_ThreadMsg || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Message_Blit
namespace Lib_GZ{namespace Sys{namespace Message{class cBlit;}}}

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
namespace Lib_GZ{namespace Sys{namespace Message{namespace Blit{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cContextHandle;}}
namespace Lib_GZ{namespace Sys{namespace Message{class cBlitComplete;}}}
namespace Lib_GZ{namespace Sys{namespace Message{class cBlit;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace Message{namespace Blit{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pBlit {

	public:
	//Pure Function

};

class tApi_Lib_GZ cBlit : public Lib_GZ::cThreadMsg {

	public:


		//Var
		gzInt nPosX;
		gzInt nPosY;
		cBlit(Lib_GZ::cBase* _parent);
		virtual void Ini_cBlit();
		virtual void fRun();

		inline cBlit(const cBlit &_o)  : Lib_GZ::cThreadMsg(_o), nPosX(_o.nPosX), nPosY(_o.nPosY){};
		inline cBlit(const cBlit &_o, gzBool _b)  : Lib_GZ::cThreadMsg(_o, _b), nPosX(_o.nPosX), nPosY(_o.nPosY){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cBlit();

	private:

		//Var

};
class tApi_Lib_GZ csBlit : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cBlit> New(Lib_GZ::cBase* _parent){
			gzSp<cBlit>_oTemp = gzSp<cBlit>(new cBlit(_parent));
			_oTemp->Ini_cBlit();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csBlit(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csBlit(){};
};
GZ_mStaticClass(Blit)
namespace Blit{
}}}}
#endif