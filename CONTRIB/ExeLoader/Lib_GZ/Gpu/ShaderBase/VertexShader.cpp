//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/ShaderBase/VertexShader.h"

#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace VertexShader{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ VertexShader
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"VertexShader"}};
#endif
///////////////////////////////

}

GZ_mCppClass(VertexShader)

cVertexShader::cVertexShader(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::ShaderBase::cShaderBase(_parent){

}

void cVertexShader::Ini_cVertexShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- VextexShader Created!! ---"));
	hType = Lib_GZ::Gpu::ShaderBase::ShaderBase::eType::Vertex;
	Ini_cShaderBase(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version(_hGlsl_ES_Version));
}

gzAny cVertexShader::MemCopy(){
return (gzAny)new cVertexShader(*this);
}
gzAny cVertexShader::DeepCopy(){
return (gzAny)new cVertexShader(*this, true);
}
cVertexShader::~cVertexShader(){
}



}}}