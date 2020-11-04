//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/TestPod.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Base{namespace TestPod{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ TestPod
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"TestPod"}};
#endif
///////////////////////////////

}

GZ_mCppClass(TestPod)

cTestPod::cTestPod()
{ gz_(0)
	nX=0;nY=0;

}

void cTestPod::Ini_cTestPod(gzFloat _nX, gzFloat _nY){ gz_(0)
	nX = _nX;
	nY = _nY;
}




}}