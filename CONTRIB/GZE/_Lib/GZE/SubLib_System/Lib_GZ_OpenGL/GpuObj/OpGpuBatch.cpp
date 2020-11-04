#include "Lib_GZ_OpenGL/GpuObj/OpGpuBatch.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBatch.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/File/RcImg.h"


namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuBatch{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpGpuBatch
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fDraw"},{0,"OpGpuBatch"}};
#endif
///////////////////////////////

// ------  Cpp section  ------ //
static char aIndice2TriA[] = {0,1,2, 0,2,3};
// --------------------------- //

}

GZ_mCppClass(OpGpuBatch)

void cOpGpuBatch::fDraw(){ gz_(0)
	aIndice2Tri[gzUInt(0)] = 0;
	aIndice2Tri[gzUInt(1)] = 1;
	aIndice2Tri[gzUInt(2)] = 2;
	aIndice2Tri[gzUInt(3)] = 0;
	aIndice2Tri[gzUInt(4)] = 2;
	aIndice2Tri[gzUInt(5)] = 3;
	aIndice[gzUInt(0)] = 0;
	aIndice[gzUInt(1)] = 1;
	aIndice[gzUInt(2)] = 2;
	aIndice[gzUInt(3)] = 0;
	aIndice[gzUInt(4)] = 2;
	aIndice[gzUInt(5)] = 3;
	gzVal _nIndice = Lib_GZ_OpenGL::OpenGL::Get(thread)->fCreateBuffer();
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fBindBuffer(Lib_GZ_OpenGL::OpenGL::eBufferTarget(Lib_GZ_OpenGL::OpenGL::eBufferTarget::ELEMENT_ARRAY_BUFFER), gzVal(_nIndice));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fBufferData(Lib_GZ_OpenGL::OpenGL::eBufferTarget(Lib_GZ_OpenGL::OpenGL::eBufferTarget::ELEMENT_ARRAY_BUFFER), 3, Lib_GZ_OpenGL::OpenGL::eTypeSize(Lib_GZ_OpenGL::OpenGL::eTypeSize::Vec4), gzFData<gzUInt8>(aIndice.get()), Lib_GZ_OpenGL::OpenGL::eDrawFlow(Lib_GZ_OpenGL::OpenGL::eDrawFlow::STREAM_DRAW));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fDrawElements(Lib_GZ_OpenGL::OpenGL::eDrawMode(Lib_GZ_OpenGL::OpenGL::eDrawMode::TRIANGLES), 6, Lib_GZ_OpenGL::OpenGL::eVarType(Lib_GZ_OpenGL::OpenGL::eVarType::UNSIGNED_BYTE), (void*)(0));
}

cOpGpuBatch::cOpGpuBatch(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::GpuObj::cGpuBatch(_parent){
	aIndice2Tri = (gzUInt8*)GZ_fMalloc(6, sizeof(gzUInt8));

}

void cOpGpuBatch::Ini_cOpGpuBatch(){ gz_(1)
	Ini_cGpuBatch();
}

gzAny cOpGpuBatch::MemCopy(){
return (gzAny)new cOpGpuBatch(*this);
}
gzAny cOpGpuBatch::DeepCopy(){
return (gzAny)new cOpGpuBatch(*this, true);
}
cOpGpuBatch::~cOpGpuBatch(){
	GZ_fFree(aIndice2Tri);
}



}}