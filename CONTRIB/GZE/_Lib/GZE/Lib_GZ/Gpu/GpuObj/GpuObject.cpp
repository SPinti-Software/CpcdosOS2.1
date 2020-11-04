//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuObject{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GpuObject
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GpuObject"},{0,"fIni"},{0,"fDraw"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GpuObject)

cGpuObject::cGpuObject(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cGpuObject::Ini_cGpuObject(){ gz_(0)
}

void cGpuObject::fIni(Lib_GZ::Gfx::cInterface* _oInterface){ gz_(1)
	GZ_mIsImplemented("GzNa::GpuObject::fIni")
}

void cGpuObject::fDraw(Lib_GZ::Gfx::cObject* _oSource, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End){ gz_(2)
	GZ_mIsImplemented("GzNa::GpuObject::fDraw")
}

gzAny cGpuObject::MemCopy(){
return (gzAny)new cGpuObject(*this);
}
gzAny cGpuObject::DeepCopy(){
return (gzAny)new cGpuObject(*this, true);
}
cGpuObject::~cGpuObject(){
}



}}}