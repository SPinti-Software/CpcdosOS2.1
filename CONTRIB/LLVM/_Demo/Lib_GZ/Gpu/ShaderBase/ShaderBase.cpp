//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ShaderBase{
}}}}


namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ShaderBase{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ ShaderBase
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"ShaderBase"},{0,"fLoad"},{0,"fSendToGpu"},{0,"fCompile"},{0,"fGetLog"},{0,"fGetErrorLine"},{0,"fAddLine"}};
#endif
///////////////////////////////

}

GZ_mCppClass(ShaderBase)

cShaderBase::cShaderBase(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	bReady=0;nLineError=0;nSourceError=0;
	//GZ_mArray_NewStringE(sSharder); //Todo
	//GZ_mArray_NewStringE(sLog); //Todo

}

void cShaderBase::Ini_cShaderBase(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- BaseShader Created!! ---"));
	hGlsl_ES_Version = _hGlsl_ES_Version;
}

void cShaderBase::fLoad(){ gz_(1)
	gzStr _sResult = gzStrL("");
	for(gzUInt i = 0; i < aLine->nSize; i++){
		_sResult += aLine[gzUInt(i)] + gzStrL("\n");
	}
	fSendToGpu(_sResult);
}

gzBool cShaderBase::fSendToGpu(gzPStr _sShader){ gz_(2)
	GZ_mIsImplemented("GzNa::ShaderBase::fSendToGpu")
	return false;
}

gzBool cShaderBase::fCompile(){ gz_(3)
	GZ_mIsImplemented("GzNa::ShaderBase::fCompile")
	return false;
}

gzStr cShaderBase::fGetLog(){ gz_(4)
	GZ_mIsImplemented("GzNa::ShaderBase::fGetLog")
	return gzStrL("");
}

gzStr cShaderBase::fGetErrorLine(){ gz_(5)
	if (sLog.GnSize() == 0){
		fGetLog();
	}
	return aLine[gzUInt(nLineError)];
}

void cShaderBase::fAddLine(gzPStr _sLine){ gz_(6)
	sSharder += _sLine + gzStrL("\n");
	aLine.fPush((_sLine));
}

cShaderBase::~cShaderBase(){
}



}}}