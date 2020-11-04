//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/GpuObj/GpuBatch.h"

#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuBatch{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GpuBatch
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GpuBatch"},{0,"fDraw"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GpuBatch)

cGpuBatch::cGpuBatch(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cGpuBatch::Ini_cGpuBatch(){ gz_(0)
}

void cGpuBatch::fDraw(){ gz_(1)
	GZ_mIsImplemented("GzNa::GpuBatch::fDraw")
}

gzAny cGpuBatch::MemCopy(){
return (gzAny)new cGpuBatch(*this);
}
gzAny cGpuBatch::DeepCopy(){
return (gzAny)new cGpuBatch(*this, true);
}
cGpuBatch::~cGpuBatch(){
}



}}}