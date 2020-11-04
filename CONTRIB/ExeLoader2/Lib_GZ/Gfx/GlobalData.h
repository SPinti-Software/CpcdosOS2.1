#if !( defined tHDef_Lib_GZ_Gfx_GlobalData || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_GlobalData
namespace Lib_GZ{namespace Gfx{class cGlobalData;}}

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
namespace Lib_GZ{namespace Gfx{namespace GlobalData{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{class cLib; namespace Lib {struct uScreen; struct _uScreen; }}
namespace Lib_GZ{namespace Gfx{class cGlobalData;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace GlobalData{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGlobalData {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGlobalData : public Lib_GZ::cClass {

	public:


		//Var
		cGlobalData(Lib_GZ::cBase* _parent);
		virtual void Ini_cGlobalData();

		inline cGlobalData(const cGlobalData &_o)  : Lib_GZ::cClass(_o){};
		inline cGlobalData(const cGlobalData &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGlobalData();

	private:

		//Var

};
class tApi_Lib_GZ csGlobalData : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGlobalData> New(Lib_GZ::cBase* _parent){
			gzSp<cGlobalData>_oTemp = gzSp<cGlobalData>(new cGlobalData(_parent));
			_oTemp->Ini_cGlobalData();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual void fGetId();
		virtual void fIni();

		gzInt nID;
		gzInt nTotalScreen;
		gzInt nTest;
		inline csGlobalData(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGlobalData(){};
};
GZ_mStaticClass(GlobalData)
namespace GlobalData{
}}}
#endif