//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/Base/Uniform.h"

#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Gpu{namespace Base{namespace Uniform{
}}}}


namespace Lib_GZ{namespace Gpu{namespace Base{namespace Uniform{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Uniform
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Uniform"},{0,"fLoad"},{0,"fSend"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Uniform)

cUniform::cUniform(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	
	hDataType = Lib_GZ::Gpu::Base::Uniform::eDataType::Float;
	//GZ_mArray_NewStringE(sName); //Todo
	bValid = false;

}

void cUniform::Ini_cUniform(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){ gz_(0)
	sName = _sName;
	oProgram = gzSCastSelf<Lib_GZ::Gpu::ShaderBase::cProgramShader>(_oProgram);
	oProgram->aUniform.fPush(gzSCastSelf<Lib_GZ::Gpu::Base::cUniform>(this));
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- Unifrom Created!! ---"));
	fLoad();
}

void cUniform::fLoad(){ gz_(1)
	GZ_mIsImplemented("GzNa::Uniform::fLoad")
}

void cUniform::fSend(){ gz_(2)
	GZ_mIsImplemented("GzNa::Uniform::fSend")
}

cUniform::~cUniform(){
}



}}}