#if !( defined tHDef_Lib_GZ_Base_Poly4 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Poly4
namespace Lib_GZ{namespace Base{class cPoly4;}}

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
namespace Lib_GZ{namespace Base{namespace Poly4{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Base{class cPt;}}
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cPoly4;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Poly4{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pPoly4 {

	public:
	//Pure Function

};

class tApi_Lib_GZ cPoly4 : public Lib_GZ::cClass {

	public:


		//Var
		gzSp<Lib_GZ::Base::cPt> oPt1;
		gzSp<Lib_GZ::Base::cPt> oPt2;
		gzSp<Lib_GZ::Base::cPt> oPt3;
		gzSp<Lib_GZ::Base::cPt> oPt4;
		cPoly4(Lib_GZ::cBase* _parent);
		virtual void Ini_cPoly4(Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2, Lib_GZ::Base::cPt* _oPt3, Lib_GZ::Base::cPt* _oPt4);

		inline cPoly4(const cPoly4 &_o)  : Lib_GZ::cClass(_o), oPt1(), oPt2(), oPt3(), oPt4(){};
		inline cPoly4(const cPoly4 &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), oPt1(), oPt2(), oPt3(), oPt4(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cPoly4();

	private:

		//Var

};
class tApi_Lib_GZ csPoly4 : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cPoly4> New(Lib_GZ::cBase* _parent, Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2, Lib_GZ::Base::cPt* _oPt3, Lib_GZ::Base::cPt* _oPt4){
			gzSp<cPoly4>_oTemp = gzSp<cPoly4>(new cPoly4(_parent));
			_oTemp->Ini_cPoly4(_oPt1, _oPt2, _oPt3, _oPt4);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csPoly4(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csPoly4(){};
};
GZ_mStaticClass(Poly4)
namespace Poly4{
}}}
#endif