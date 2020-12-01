//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"

#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Gpu/Base/Attribute.h"
#include "Lib_GZ/Gpu/ShaderBase/Vbo.h"
#include "Lib_GZ/Gpu/Base/Uniform.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ProgramShader{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ProgramShader
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ProgramShader"},{0,"fLoad"},{0,"fAttachShader"},{0,"fLink"},{0,"fUse"},{0,"fAddAttribute"},{0,"fAddVbo"},{0,"fSetDefaultAttribDivisor"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ProgramShader)

cProgramShader::cProgramShader(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	bLinked=0;
	nDefaultAttribDivisor = 0;

}

void cProgramShader::Ini_cProgramShader(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- ProgramShader Created!! ---"));
	fLoad();
}

void cProgramShader::fLoad(){ gz_(1)
	GZ_mIsImplemented("GzNa::ProgramShader::fLoad")
}

void cProgramShader::fAttachShader(Lib_GZ::Gpu::ShaderBase::cShaderBase* _oShader){ gz_(2)
	GZ_mIsImplemented("GzNa::ProgramShader::fAttachShader")
}

gzBool cProgramShader::fLink(){ gz_(3)
	GZ_mIsImplemented("GzNa::ProgramShader::fLink")
	return false;
}

gzBool cProgramShader::fUse(){ gz_(4)
	GZ_mIsImplemented("GzNa::ProgramShader::fUse")
	return false;
}

gzSp<Lib_GZ::Gpu::Base::cAttribute> cProgramShader::fAddAttribute(gzPStr _sName){ gz_(5)
	gzSp<Lib_GZ::Gpu::Base::cAttribute> _oAttrib = gzSCast<Lib_GZ::Gpu::Base::cAttribute>((Lib_GZ::Gpu::Base::Attribute::Get(thread)->New(this, (Lib_GZ::Gpu::ShaderBase::cProgramShader*)(this), _sName)));
	if (nDefaultAttribDivisor != 0){
		_oAttrib->fSetDivisor(nDefaultAttribDivisor);
	}
	return gzSCast<Lib_GZ::Gpu::Base::cAttribute>(_oAttrib);
}

gzSp<Lib_GZ::Gpu::ShaderBase::cVbo> cProgramShader::fAddVbo(){ gz_(6)
	gzSp<Lib_GZ::Gpu::ShaderBase::cVbo> _oVbo = gzSCast<Lib_GZ::Gpu::ShaderBase::cVbo>((Lib_GZ::Gpu::ShaderBase::Vbo::Get(thread)->New(this, (Lib_GZ::Gpu::ShaderBase::cProgramShader*)(this))));
	return gzSCast<Lib_GZ::Gpu::ShaderBase::cVbo>(_oVbo);
}

void cProgramShader::fSetDefaultAttribDivisor(gzInt _nDefaultAttribDivisor){ gz_(7)
	nDefaultAttribDivisor = _nDefaultAttribDivisor;
}

gzAny cProgramShader::MemCopy(){
return (gzAny)new cProgramShader(*this);
}
gzAny cProgramShader::DeepCopy(){
return (gzAny)new cProgramShader(*this, true);
}
cProgramShader::~cProgramShader(){
}



}}}