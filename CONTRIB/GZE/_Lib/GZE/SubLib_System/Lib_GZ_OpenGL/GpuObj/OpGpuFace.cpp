#include "Lib_GZ_OpenGL/GpuObj/OpGpuFace.h"

#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Gpu/GpuObj/GpuFace.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/File/RcImg.h"


namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuFace{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpGpuFace
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpGpuFace"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpGpuFace)

cOpGpuFace::cOpGpuFace(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::GpuObj::cGpuFace(_parent){

}

void cOpGpuFace::Ini_cOpGpuFace(){ gz_(0)
	Ini_cGpuFace();
}

gzAny cOpGpuFace::MemCopy(){
return (gzAny)new cOpGpuFace(*this);
}
gzAny cOpGpuFace::DeepCopy(){
return (gzAny)new cOpGpuFace(*this, true);
}
cOpGpuFace::~cOpGpuFace(){
}



}}