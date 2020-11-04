//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/ShaderBase/Vbo.h"

#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace Vbo{
}}}}


namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace Vbo{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Vbo
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Vbo"},{0,"fLoad"},{0,"fSendData"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Vbo)

cVbo::cVbo(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	
	hVecType = Lib_GZ::Gpu::ShaderBase::Vbo::eVecType::Vec4;
	nTotalData = 10;

}

void cVbo::Ini_cVbo(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram){ gz_(0)
	oProgram = gzSCastSelf<Lib_GZ::Gpu::ShaderBase::cProgramShader>(_oProgram);
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- Vbo Created!! ---"));
	oProgram->aVbo.fPush(gzSCastSelf<Lib_GZ::Gpu::ShaderBase::cVbo>(this));
	fLoad();
}

void cVbo::fLoad(){ gz_(1)
	GZ_mIsImplemented("GzNa::Vbo::fLoad")
}

void cVbo::fSendData(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("---fSendData not implemented ---"));
}

gzAny cVbo::MemCopy(){
return (gzAny)new cVbo(*this);
}
gzAny cVbo::DeepCopy(){
return (gzAny)new cVbo(*this, true);
}
cVbo::~cVbo(){
}



}}}