#if !( defined tHDef_Lib_GZ_Base_Vec3 || defined  tHDef_IN_Lib_GZ_Base_Vec2 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Vec3
namespace Lib_GZ{namespace Base{class cVec3;}}

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
#include "Lib_GZ/Base/Vec2.h"
namespace Lib_GZ{namespace Base{namespace Vec3{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cQuaternion;}}
namespace Lib_GZ{namespace Base{class cVec2;}}
namespace Lib_GZ{namespace Base{class cVec3;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Vec3{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pVec3 {

	public:
	//Pure Function

};

class tApi_Lib_GZ cVec3 : public Lib_GZ::Base::cVec2 {

	public:


		//Var
		gzFloat nZ;
		cVec3(Lib_GZ::cBase* _parent);
		virtual void Ini_cVec3(gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0), gzFloat _nZ = gzFloat(0));
		virtual void fCross(Lib_GZ::Base::cVec3* _oOther);
		virtual void fRevCross(Lib_GZ::Base::cVec3* _oOther);
		virtual void fRotate(Lib_GZ::Base::cQuaternion* _oQuat);

		inline cVec3(const cVec3 &_o)  : Lib_GZ::Base::cVec2(_o), nZ(_o.nZ){};
		inline cVec3(const cVec3 &_o, gzBool _b)  : Lib_GZ::Base::cVec2(_o, _b), nZ(_o.nZ){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cVec3();

	private:

		//Var

};
class tApi_Lib_GZ csVec3 : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cVec3> New(Lib_GZ::cBase* _parent, gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0), gzFloat _nZ = gzFloat(0)){
			gzSp<cVec3>_oTemp = gzSp<cVec3>(new cVec3(_parent));
			_oTemp->Ini_cVec3(_nX, _nY, _nZ);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csVec3(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csVec3(){};
};
GZ_mStaticClass(Vec3)
namespace Vec3{
}}}
#endif