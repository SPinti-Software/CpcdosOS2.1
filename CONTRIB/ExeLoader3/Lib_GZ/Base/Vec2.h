#if !( defined tHDef_Lib_GZ_Base_Vec2 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Vec2
namespace Lib_GZ{namespace Base{class cVec2;}}

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
namespace Lib_GZ{namespace Base{namespace Vec2{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cVec2;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Vec2{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pVec2 {

	public:
	//Pure Function

};

class tApi_Lib_GZ cVec2 : public Lib_GZ::cClass {

	public:


		//Var
		gzFloat nX;
		gzFloat nY;
		cVec2(Lib_GZ::cBase* _parent);
		virtual void Ini_cVec2(gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0));

		inline cVec2(const cVec2 &_o)  : Lib_GZ::cClass(_o), nX(_o.nX), nY(_o.nY){};
		inline cVec2(const cVec2 &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), nX(_o.nX), nY(_o.nY){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cVec2();

	private:

		//Var

};
class tApi_Lib_GZ csVec2 : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cVec2> New(Lib_GZ::cBase* _parent, gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0)){
			gzSp<cVec2>_oTemp = gzSp<cVec2>(new cVec2(_parent));
			_oTemp->Ini_cVec2(_nX, _nY);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csVec2(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csVec2(){};
};
GZ_mStaticClass(Vec2)
namespace Vec2{
}}}
#endif