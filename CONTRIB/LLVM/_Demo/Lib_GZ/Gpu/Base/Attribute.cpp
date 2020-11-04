//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/Base/Attribute.h"

#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Gpu{namespace Base{namespace Attribute{
}}}}


namespace Lib_GZ{namespace Gpu{namespace Base{namespace Attribute{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Attribute
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Attribute"},{0,"fLoad"},{0,"fSetOffset"},{0,"fSetDivisor"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Attribute)

cAttribute::cAttribute(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	
	hDataType = Lib_GZ::Gpu::Base::Attribute::eDataType::Float;
	//GZ_mArray_NewStringE(sName); //Todo
	bValid = false;

}

void cAttribute::Ini_cAttribute(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){ gz_(0)
	sName = _sName;
	oProgram = gzSCastSelf<Lib_GZ::Gpu::ShaderBase::cProgramShader>(_oProgram);
	oProgram->aAttribute.fPush(gzSCastSelf<Lib_GZ::Gpu::Base::cAttribute>(this));
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- Attribute Created!! ---"));
	fLoad();
}

void cAttribute::fLoad(){ gz_(1)
	GZ_mIsImplemented("GzNa::Attribute::fLoad")
}

void cAttribute::fSetOffset(){ gz_(2)
	GZ_mIsImplemented("GzNa::Attribute::fSetOffset")
}

void cAttribute::fSetDivisor(gzUInt _nDiv){ gz_(3)
	GZ_mIsImplemented("GzNa::Attribute::fSetDivisor")
}

gzAny cAttribute::MemCopy(){
return (gzAny)new cAttribute(*this);
}
gzAny cAttribute::DeepCopy(){
return (gzAny)new cAttribute(*this, true);
}
cAttribute::~cAttribute(){
}



}}}