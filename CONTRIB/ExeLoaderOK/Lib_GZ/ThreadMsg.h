#if !( defined tHDef_Lib_GZ_ThreadMsg || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_ThreadMsg
#define tHDef_IN_Lib_GZ_ThreadMsg
namespace Lib_GZ{class cThreadMsg;}

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
namespace Lib_GZ{namespace ThreadMsg{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{class cThreadMsg;}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace ThreadMsg{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pThreadMsg {

	public:
	//Pure Function

};

class tApi_Lib_GZ cThreadMsg : public Lib_GZ::cClass {

	public:


		//Var
		cThreadMsg(Lib_GZ::cBase* _parent);
		virtual void Ini_cThreadMsg();
		virtual void fRun();

		inline cThreadMsg(const cThreadMsg &_o)  : Lib_GZ::cClass(_o){};
		inline cThreadMsg(const cThreadMsg &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual ~cThreadMsg();

	private:

		//Var

};
class tApi_Lib_GZ csThreadMsg : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cThreadMsg> New(Lib_GZ::cBase* _parent){
			gzSp<cThreadMsg>_oTemp = gzSp<cThreadMsg>(new cThreadMsg(_parent));
			_oTemp->Ini_cThreadMsg();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csThreadMsg(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csThreadMsg(){};
};
GZ_mStaticClass(ThreadMsg)
namespace ThreadMsg{
}}
#undef tHDef_IN_Lib_GZ_ThreadMsg
#endif