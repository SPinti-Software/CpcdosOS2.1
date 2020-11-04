#if !( defined tHDef_Lib_GZ_Base_Pt || defined  tHDef_IN_Lib_GZ_Base_Vec3 || defined  tHDef_IN_Lib_GZ_Base_Vec2 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Pt
namespace Lib_GZ{namespace Base{class cPt;}}

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
#include "Lib_GZ/Base/Vec3.h"
namespace Lib_GZ{namespace Base{namespace Pt{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cVec3;}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Pt{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pPt {

	public:
	//Pure Function

};

class tApi_Lib_GZ cPt : public Lib_GZ::Base::cVec3 {

	public:


		//Var
		cPt(Lib_GZ::cBase* _parent);
		virtual void Ini_cPt(gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0), gzFloat _nZ = gzFloat(0));

		inline cPt(const cPt &_o)  : Lib_GZ::Base::cVec3(_o){};
		inline cPt(const cPt &_o, gzBool _b)  : Lib_GZ::Base::cVec3(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cPt();

	private:

		//Var

};
class tApi_Lib_GZ csPt : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cPt> New(Lib_GZ::cBase* _parent, gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0), gzFloat _nZ = gzFloat(0)){
			gzSp<cPt>_oTemp = gzSp<cPt>(new cPt(_parent));
			_oTemp->Ini_cPt(_nX, _nY, _nZ);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csPt(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csPt(){};
};
GZ_mStaticClass(Pt)
namespace Pt{
}}}
#endif