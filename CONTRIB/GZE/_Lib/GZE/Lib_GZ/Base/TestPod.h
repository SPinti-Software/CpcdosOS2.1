#if !( defined tHDef_Lib_GZ_Base_TestPod)
#pragma once
#define tHDef_Lib_GZ_Base_TestPod
namespace Lib_GZ{namespace Base{class cTestPod;}}

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
namespace Lib_GZ{namespace Base{namespace TestPod{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Base{class cTestPod;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Base{namespace TestPod{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pTestPod {

	public:
	//Pure Function

};

class tApi_Lib_GZ cTestPod {

	public:


		//Var
		gzFloat nX;
		gzFloat nY;
		cTestPod();
		void Ini_cTestPod(gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0));


	private:

		//Var

};
class tApi_Lib_GZ csTestPod : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzPod<cTestPod> New(Lib_GZ::cBase* _parent, gzFloat _nX = gzFloat(0), gzFloat _nY = gzFloat(0)){
			gzPod<cTestPod>_oTemp = gzPod<cTestPod>(cTestPod());
			_oTemp->Ini_cTestPod(_nX, _nY);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csTestPod(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csTestPod(){};
};
GZ_mStaticClass(TestPod)
namespace TestPod{
}}}
#endif