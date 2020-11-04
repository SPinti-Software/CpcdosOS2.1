#include "Lib_GZ_OpenGL/ShaderBase/OpProgramShader.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gpu/Base/Attribute.h"
#include "Lib_GZ/Gpu/ShaderBase/Vbo.h"
#include "Lib_GZ/Gpu/Base/Uniform.h"


namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpProgramShader{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpProgramShader
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fLoad"},{0,"fAttachShader"},{0,"fLink"},{0,"fUse"},{0,"OpProgramShader"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpProgramShader)

void cOpProgramShader::fLoad(){ gz_(0)
	nId = Lib_GZ_OpenGL::OpenGL::Get(thread)->fCreateProgram();
}

void cOpProgramShader::fAttachShader(Lib_GZ::Gpu::ShaderBase::cShaderBase* _oShader){ gz_(1)
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fAttachShader(gzVal(nId), gzVal(_oShader->nId));
}

gzBool cOpProgramShader::fLink(){ gz_(2)
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fLinkProgram(gzVal(nId));
	gzUInt _nLinkStatus;
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetProgramParameter(gzVal(nId), Lib_GZ_OpenGL::OpenGL::eProgramInfo(Lib_GZ_OpenGL::OpenGL::eProgramInfo::LINK_STATUS), (gzInt*)(&_nLinkStatus));
	if (_nLinkStatus != 0){
		bLinked = true;
	}
	return bLinked;
}

gzBool cOpProgramShader::fUse(){ gz_(3)
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fUseProgram(gzVal(nId));
	//Tag cpp
	#ifndef GZ_tAndroid
	#ifndef GZ_tWeb_Emsc
	gzUInt _nEmptyVAO;
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fGenVertexArrays(1, (gzUInt*)(&_nEmptyVAO));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fBindVertexArray(_nEmptyVAO);
	//Tag cpp
	#endif
	#endif
	return true;
}

cOpProgramShader::cOpProgramShader(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::ShaderBase::cProgramShader(_parent){

}

void cOpProgramShader::Ini_cOpProgramShader(){ gz_(4)
	Ini_cProgramShader();
}

gzAny cOpProgramShader::MemCopy(){
return (gzAny)new cOpProgramShader(*this);
}
gzAny cOpProgramShader::DeepCopy(){
return (gzAny)new cOpProgramShader(*this, true);
}
cOpProgramShader::~cOpProgramShader(){
}



}}