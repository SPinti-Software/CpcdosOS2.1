#if !( defined tHDef_Lib_GZ_Base_Mat2x4 || defined  tHDef_IN_Lib_GZ_Base_Mat1x4 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Mat2x4
namespace Lib_GZ{namespace Base{class cMat2x4;}}

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
#include "Lib_GZ/Base/Mat1x4.h"
namespace Lib_GZ{namespace Base{namespace Mat2x4{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Vec4.h"
#include "Lib_GZ/Base/Mat1x4.h"
namespace Lib_GZ{namespace Base{class cMat2x4;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Mat2x4{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pMat2x4 {

	public:
	//Pure Function

};

class tApi_Lib_GZ cMat2x4 : public Lib_GZ::Base::cMat1x4 {

	public:


		//Var
		gzEmbed<Lib_GZ::Base::cVec4> v1;
		cMat2x4(Lib_GZ::cBase* _parent);
		virtual void Ini_cMat2x4(Lib_GZ::Base::cVec4* _v0, Lib_GZ::Base::cVec4* _v1);

		inline cMat2x4(const cMat2x4 &_o)  : Lib_GZ::Base::cMat1x4(_o), v1(_o.v1){};
		inline cMat2x4(const cMat2x4 &_o, gzBool _b)  : Lib_GZ::Base::cMat1x4(_o, _b), v1(_o.v1){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cMat2x4();

	private:

		//Var

};
class tApi_Lib_GZ csMat2x4 : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cMat2x4> New(Lib_GZ::cBase* _parent, Lib_GZ::Base::cVec4* _v0, Lib_GZ::Base::cVec4* _v1){
			gzSp<cMat2x4>_oTemp = gzSp<cMat2x4>(new cMat2x4(_parent));
			_oTemp->Ini_cMat2x4(_v0, _v1);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csMat2x4(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csMat2x4(){};
};
GZ_mStaticClass(Mat2x4)
namespace Mat2x4{
}}}
#endif