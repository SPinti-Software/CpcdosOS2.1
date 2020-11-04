//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Debug.h"

#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace Debug{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Debug
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Debug"},{0,"fConsole"},{0,"fTrace1"},{0,"fTrace2"},{0,"fTrace3"},{0,"fPass"},{0,"fWarning"},{0,"fError"},{0,"fFatal"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Debug)

cDebug::cDebug(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cDebug::Ini_cDebug(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->oInst = gzSCastSelf<Lib_GZ::Sys::cDebug>(this);
}

#ifndef tFDef_Lib_GZ_Sys_Debug_fConsole
void pDebug::fConsole(gzPStr _sValue){ gz_(1)
	//Tag cpp
	printf("c:%s\n", (char*)_sValue.fcStr());
	//  printf("%s\n",_sValue.fcStr());
}
#endif

void csDebug::fTrace1(gzPStr _sValue){ gz_(2)
	GZ_mIsImplemented("GzNa::Debug::fTrace1")
}

void csDebug::fTrace2(gzPStr _sValue){ gz_(3)
	GZ_mIsImplemented("GzNa::Debug::fTrace2")
}

void csDebug::fTrace3(gzPStr _sValue){ gz_(4)
	GZ_mIsImplemented("GzNa::Debug::fTrace3")
}

void csDebug::fPass(gzPStr _sValue){ gz_(5)
	GZ_mIsImplemented("GzNa::Debug::fPass")
}

void csDebug::fWarning(gzPStr _sValue){ gz_(6)
	GZ_mIsImplemented("GzNa::Debug::fWarning")
}

void csDebug::fError(gzPStr _sValue){ gz_(7)
	GZ_mIsImplemented("GzNa::Debug::fError")
}

void csDebug::fFatal(gzPStr _sValue){ gz_(8)
	GZ_mIsImplemented("GzNa::Debug::fFatal")
}

gzAny cDebug::MemCopy(){
return (gzAny)new cDebug(*this);
}
gzAny cDebug::DeepCopy(){
return (gzAny)new cDebug(*this, true);
}
cDebug::~cDebug(){
}



}}