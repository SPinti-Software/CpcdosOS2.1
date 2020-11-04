#include "Lib_GZ_OpenGL/OpGpu.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ/Gpu/Gpu.h"
#include "Lib_GZ/Gpu/GpuInfo.h"
#include "Lib_GZ/Gpu/ShaderModel/GzModel/GzShModel.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ_OpenGL{namespace OpGpu{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpGpu
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fLoadImg"},{0,"fContextIni"},{0,"fBlit"},{0,"fLoadDefaultShader"},{0,"fClear"},{0,"OpGpu"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpGpu)

void cOpGpu::fLoadImg(gzInt* _aImg, gzInt _nWidth, gzInt _nHeight){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("Load Img"));
}

gzBool cOpGpu::fContextIni(gzUIntX _nHandleId, gzBool _bGlobalSharedContext){ gz_(1)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("OP fContextIni Not Implemented : ") + gzStrI(_nHandleId));
	return false;
}

void cOpGpu::fBlit(){ gz_(2)
	GZ_mIsImplemented("GzOpenGL::OpGpu::fBlit")
}

gzBool cOpGpu::fLoadDefaultShader(){ gz_(3)
	GZ_mIsImplemented("GzOpenGL::OpGpu::fLoadDefaultShader")
	return false;
}

void cOpGpu::fClear(){ gz_(4)
	GZ_mIsImplemented("GzOpenGL::OpGpu::fClear")
}

cOpGpu::cOpGpu(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::cGpu(_parent){
	

}

void cOpGpu::Ini_cOpGpu(gzUIntX _nHandleId, gzBool _bGlobalSharedContext){ gz_(5)
	Ini_cGpu(_nHandleId, _bGlobalSharedContext);
}

gzAny cOpGpu::MemCopy(){
return (gzAny)new cOpGpu(*this);
}
gzAny cOpGpu::DeepCopy(){
return (gzAny)new cOpGpu(*this, true);
}
cOpGpu::~cOpGpu(){
}



}