//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/Base/UnVec2.h"

#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Gpu/Base/Uniform.h"
#include "Lib_GZ/Base/Vec2.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace Base{namespace UnVec2{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ UnVec2
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fLoad"},{0,"UnVec2"}};
#endif
///////////////////////////////

}

GZ_mCppClass(UnVec2)

void cUnVec2::fLoad(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("aa"));
}

cUnVec2::cUnVec2(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::Base::cUniform(_parent),oVal(this){
	

}

void cUnVec2::Ini_cUnVec2(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){ gz_(1)
	oVal->Ini_cVec2(0,0);
	Ini_cUniform((Lib_GZ::Gpu::ShaderBase::cProgramShader*)(_oProgram), _sName);
}

gzAny cUnVec2::MemCopy(){
return (gzAny)new cUnVec2(*this);
}
gzAny cUnVec2::DeepCopy(){
return (gzAny)new cUnVec2(*this, true);
}
cUnVec2::~cUnVec2(){
}



}}}