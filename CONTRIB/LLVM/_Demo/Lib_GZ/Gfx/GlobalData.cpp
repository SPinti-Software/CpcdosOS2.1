//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/GlobalData.h"

#include "Lib_GZ/Lib.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gfx{namespace GlobalData{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GlobalData
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GlobalData"},{0,"fGetId"},{0,"fIni"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GlobalData)

cGlobalData::cGlobalData(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cGlobalData::Ini_cGlobalData(){ gz_(0)
}

void csGlobalData::fGetId(){ gz_(1)
	_::Get(thread)->nID++;
}

void csGlobalData::fIni(){ gz_(2)
	GZ_mIsImplemented("GzNa::GlobalData::fIni")
}

gzAny cGlobalData::MemCopy(){
return (gzAny)new cGlobalData(*this);
}
gzAny cGlobalData::DeepCopy(){
return (gzAny)new cGlobalData(*this, true);
}
cGlobalData::~cGlobalData(){
}



}}