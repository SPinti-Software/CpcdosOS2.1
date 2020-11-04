#if !( defined tHDef_Lib_GZ_Base_Dim || defined  tHDef_IN_Lib_GZ_Base_Vec3 || defined  tHDef_IN_Lib_GZ_Base_Vec2 || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Base_Dim
namespace Lib_GZ{namespace Base{class cDim;}}

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
namespace Lib_GZ{namespace Base{namespace Dim{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cVec3;}}
namespace Lib_GZ{namespace Base{class cDim;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace Dim{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pDim {

	public:
	//Pure Function

};

class tApi_Lib_GZ cDim : public Lib_GZ::Base::cVec3 {

	public:


		//Var
		gzFloat nWidth;
		gzFloat nHeight;
		gzFloat nLength;
		cDim(Lib_GZ::cBase* _parent);
		virtual void Ini_cDim(gzFloat _nWidth = gzFloat(0), gzFloat _nHeight = gzFloat(0), gzFloat _nLength = gzFloat(0));

		inline cDim(const cDim &_o)  : Lib_GZ::Base::cVec3(_o), nWidth(_o.nWidth), nHeight(_o.nHeight), nLength(_o.nLength){};
		inline cDim(const cDim &_o, gzBool _b)  : Lib_GZ::Base::cVec3(_o, _b), nWidth(_o.nWidth), nHeight(_o.nHeight), nLength(_o.nLength){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cDim();

	private:

		//Var

};
class tApi_Lib_GZ csDim : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cDim> New(Lib_GZ::cBase* _parent, gzFloat _nWidth = gzFloat(0), gzFloat _nHeight = gzFloat(0), gzFloat _nLength = gzFloat(0)){
			gzSp<cDim>_oTemp = gzSp<cDim>(new cDim(_parent));
			_oTemp->Ini_cDim(_nWidth, _nHeight, _nLength);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csDim(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csDim(){};
};
GZ_mStaticClass(Dim)
namespace Dim{
}}}
#endif