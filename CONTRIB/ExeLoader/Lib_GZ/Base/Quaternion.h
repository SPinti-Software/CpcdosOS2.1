#if !( defined tHDef_Lib_GZ_Base_Quaternion || defined  tHDef_IN_Lib_GZ_Base_Vec4 || defined  tHDef_IN_Lib_GZ_Base_Vec3 || defined  tHDef_IN_Lib_GZ_Base_Vec2 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Quaternion
namespace Lib_GZ{namespace Base{class cQuaternion;}}

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
#include "Lib_GZ/Base/Vec4.h"
namespace Lib_GZ{namespace Base{namespace Quaternion{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cVec4;}}
namespace Lib_GZ{namespace Base{class cQuaternion;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Quaternion{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pQuaternion {

	public:
	//Pure Function

};

class tApi_Lib_GZ cQuaternion : public Lib_GZ::Base::cVec4 {

	public:


		//Var
		cQuaternion(Lib_GZ::cBase* _parent);
		virtual void Ini_cQuaternion();
		virtual void fReset();
		virtual void fRoll(gzFloat _nAngle);
		virtual void fYaw(gzFloat _nAngle);
		virtual void fPitch(gzFloat _nAngle);
		virtual void fCombine(Lib_GZ::Base::cQuaternion* _oOther);

		inline cQuaternion(const cQuaternion &_o)  : Lib_GZ::Base::cVec4(_o){};
		inline cQuaternion(const cQuaternion &_o, gzBool _b)  : Lib_GZ::Base::cVec4(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cQuaternion();

	private:

		//Var

};
class tApi_Lib_GZ csQuaternion : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cQuaternion> New(Lib_GZ::cBase* _parent){
			gzSp<cQuaternion>_oTemp = gzSp<cQuaternion>(new cQuaternion(_parent));
			_oTemp->Ini_cQuaternion();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csQuaternion(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csQuaternion(){};
};
GZ_mStaticClass(Quaternion)
namespace Quaternion{
}}}
#endif