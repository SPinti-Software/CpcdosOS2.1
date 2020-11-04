#if !( defined tHDef_Lib_GZ_Base_PtA || defined  tHDef_IN_Lib_GZ_Base_Pt || defined  tHDef_IN_Lib_GZ_Base_Vec3 || defined  tHDef_IN_Lib_GZ_Base_Vec2 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_PtA
namespace Lib_GZ{namespace Base{class cPtA;}}

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
#include "Lib_GZ/Base/Pt.h"
namespace Lib_GZ{namespace Base{namespace PtA{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Base/Vec3.h"
namespace Lib_GZ{namespace Base{class cPtA;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace PtA{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pPtA {

	public:
	//Pure Function

};

class tApi_Lib_GZ cPtA : public Lib_GZ::Base::cPt {

	public:


		//Var
		gzEmbed<Lib_GZ::Base::cPt> oTf;
		gzEmbed<Lib_GZ::Base::cPt> o2d;
		cPtA(Lib_GZ::cBase* _parent);
		virtual void Ini_cPtA(gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0), gzFloat _nZ = gzFloat(0));
		virtual void fCopyToTf();

		inline cPtA(const cPtA &_o)  : Lib_GZ::Base::cPt(_o), oTf(_o.oTf), o2d(_o.o2d){};
		inline cPtA(const cPtA &_o, gzBool _b)  : Lib_GZ::Base::cPt(_o, _b), oTf(_o.oTf), o2d(_o.o2d){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cPtA();

	private:

		//Var

};
class tApi_Lib_GZ csPtA : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cPtA> New(Lib_GZ::cBase* _parent, gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0), gzFloat _nZ = gzFloat(0)){
			gzSp<cPtA>_oTemp = gzSp<cPtA>(new cPtA(_parent));
			_oTemp->Ini_cPtA(_nX, _nY, _nZ);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csPtA(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csPtA(){};
};
GZ_mStaticClass(PtA)
namespace PtA{
}}}
#endif