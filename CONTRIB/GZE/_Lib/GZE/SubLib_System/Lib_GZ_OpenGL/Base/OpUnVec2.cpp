#include "Lib_GZ_OpenGL/Base/OpUnVec2.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/Base/Uniform.h"
#include "Lib_GZ/Base/Vec2.h"
#include "Lib_GZ/Gpu/Base/UnVec2.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"


namespace Lib_GZ_OpenGL{namespace Base{namespace OpUnVec2{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpUnVec2
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fLoad"},{0,"fSend"},{0,"OpUnVec2"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpUnVec2)

void cOpUnVec2::fLoad(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- OpShUniform Created!! ---"));
	nId = Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetUniformLocation(gzVal(oProgram->nId), (gzUInt8*)(sName.fcStr()));
	bValid = true;
}

void cOpUnVec2::fSend(){ gz_(1)
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fUniform2f(gzVal(nId), oVal->nX, oVal->nY);
}

cOpUnVec2::cOpUnVec2(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::Base::cUnVec2(_parent){

}

void cOpUnVec2::Ini_cOpUnVec2(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){ gz_(2)
	Ini_cUnVec2((Lib_GZ::Gpu::ShaderBase::cProgramShader*)(_oProgram), _sName);
}

gzAny cOpUnVec2::MemCopy(){
return (gzAny)new cOpUnVec2(*this);
}
gzAny cOpUnVec2::DeepCopy(){
return (gzAny)new cOpUnVec2(*this, true);
}
cOpUnVec2::~cOpUnVec2(){
}



}}