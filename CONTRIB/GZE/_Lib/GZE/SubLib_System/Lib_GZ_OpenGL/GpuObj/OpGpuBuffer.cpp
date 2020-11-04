#include "Lib_GZ_OpenGL/GpuObj/OpGpuBuffer.h"

#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Interface.h"


namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuBuffer{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpGpuBuffer
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpGpuBuffer"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpGpuBuffer)

cOpGpuBuffer::cOpGpuBuffer(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::GpuObj::cGpuBuffer(_parent){

}

void cOpGpuBuffer::Ini_cOpGpuBuffer(){ gz_(0)
	Ini_cGpuBuffer();
}

gzAny cOpGpuBuffer::MemCopy(){
return (gzAny)new cOpGpuBuffer(*this);
}
gzAny cOpGpuBuffer::DeepCopy(){
return (gzAny)new cOpGpuBuffer(*this, true);
}
cOpGpuBuffer::~cOpGpuBuffer(){
}



}}