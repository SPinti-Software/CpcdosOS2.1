//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/GpuInfo.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace GpuInfo{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GpuInfo
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GpuInfo"},{0,"fIniFunctions"},{0,"fGetVersion"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GpuInfo)

cGpuInfo::cGpuInfo(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cGpuInfo::Ini_cGpuInfo(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- GpuInfo Created!! ---"));
}

gzBool cGpuInfo::fIniFunctions(){ gz_(1)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("fIniFunctions: - fGetVersion Not Implemented -"));
	return false;
}

gzBool cGpuInfo::fGetVersion(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Gpu: - fGetVersion Not Implemented -"));
	return false;
}

gzAny cGpuInfo::MemCopy(){
return (gzAny)new cGpuInfo(*this);
}
gzAny cGpuInfo::DeepCopy(){
return (gzAny)new cGpuInfo(*this, true);
}
cGpuInfo::~cGpuInfo(){
}



}}