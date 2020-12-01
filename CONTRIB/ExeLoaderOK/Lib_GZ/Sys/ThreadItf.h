#if !( defined tHDef_Lib_GZ_Sys_ThreadItf || defined  tHDef_IN_Lib_GZ_Thread || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_ThreadItf
#define tHDef_IN_Lib_GZ_Sys_ThreadItf
namespace Lib_GZ{namespace Sys{class cThreadItf;}}

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
#include "Lib_GZ/Thread.h"
namespace Lib_GZ{namespace Sys{namespace ThreadItf{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cContext;}}
namespace Lib_GZ{class cThread;}
namespace Lib_GZ{namespace Sys{class cThreadObj;}}
namespace Lib_GZ{namespace Sys{class cThreadItf;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace ThreadItf{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pThreadItf {

	public:
	//Pure Function

};

class tApi_Lib_GZ cThreadItf : public Lib_GZ::cThread {

	public:


		//Var
		gzSp<Lib_GZ::Sys::cContext> oWindow;
		cThreadItf(Lib_GZ::cBase* _parent);
		virtual void Ini_cThreadItf();

		inline cThreadItf(const cThreadItf &_o)  : Lib_GZ::cThread(_o), oWindow(){};
		inline cThreadItf(const cThreadItf &_o, gzBool _b)  : Lib_GZ::cThread(_o, _b), oWindow(){};
		virtual ~cThreadItf();

	private:

		//Var

};
class tApi_Lib_GZ csThreadItf : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cThreadItf> New(Lib_GZ::cBase* _parent){
			gzSp<cThreadItf>_oTemp = gzSp<cThreadItf>(new cThreadItf(_parent));
			_oTemp->Ini_cThreadItf();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csThreadItf(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csThreadItf(){};
};
GZ_mStaticClass(ThreadItf)
namespace ThreadItf{
}}}
#undef tHDef_IN_Lib_GZ_Sys_ThreadItf
#endif