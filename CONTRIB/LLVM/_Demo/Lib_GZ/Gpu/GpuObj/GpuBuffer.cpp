//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"

#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Interface.h"


namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuBuffer{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GpuBuffer
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GpuBuffer"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GpuBuffer)

cGpuBuffer::cGpuBuffer(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::GpuObj::cGpuObject(_parent){
	nId=0;

}

void cGpuBuffer::Ini_cGpuBuffer(){ gz_(0)
}

gzAny cGpuBuffer::MemCopy(){
return (gzAny)new cGpuBuffer(*this);
}
gzAny cGpuBuffer::DeepCopy(){
return (gzAny)new cGpuBuffer(*this, true);
}
cGpuBuffer::~cGpuBuffer(){
}



}}}