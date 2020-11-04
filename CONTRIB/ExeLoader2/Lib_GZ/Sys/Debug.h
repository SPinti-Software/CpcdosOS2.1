#if !( defined tHDef_Lib_GZ_Sys_Debug || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_Debug
namespace Lib_GZ{namespace Sys{class cDebug;}}

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
namespace Lib_GZ{namespace Sys{namespace Debug{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace Debug{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pDebug {

	public:
	//Pure Function
	static void fConsole(gzPStr _sValue);

};

class tApi_Lib_GZ cDebug : public Lib_GZ::cClass {

	public:


		//Var
		cDebug(Lib_GZ::cBase* _parent);
		virtual void Ini_cDebug();

		inline cDebug(const cDebug &_o)  : Lib_GZ::cClass(_o){};
		inline cDebug(const cDebug &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cDebug();

	private:

		//Var

};
class tApi_Lib_GZ csDebug : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cDebug> New(Lib_GZ::cBase* _parent){
			gzSp<cDebug>_oTemp = gzSp<cDebug>(new cDebug(_parent));
			_oTemp->Ini_cDebug();
			return _oTemp;
		}
		//Public static
		gzSp<Lib_GZ::Sys::cDebug> oInst;
		gzBool bPipe;
		gzBool bPrefix;
		gzStr sMsgFuncMissing;

		//Static function
		static void fConsole(gzPStr _sValue);
		virtual void fTrace1(gzPStr _sValue);
		virtual void fTrace2(gzPStr _sValue);
		virtual void fTrace3(gzPStr _sValue);
		virtual void fPass(gzPStr _sValue);
		virtual void fWarning(gzPStr _sValue);
		virtual void fError(gzPStr _sValue);
		virtual void fFatal(gzPStr _sValue);

		inline csDebug(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csDebug(){};
};
GZ_mStaticClass(Debug)
namespace Debug{
}}}
#endif