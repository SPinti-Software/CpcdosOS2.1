#include "Lib_GZ_OpenGL/Base/OpAttribute.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/Base/Attribute.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"


namespace Lib_GZ_OpenGL{namespace Base{namespace OpAttribute{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpAttribute
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fLoad"},{0,"fSetOffset"},{0,"fSetDivisor"},{0,"OpAttribute"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpAttribute)

void cOpAttribute::fLoad(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- OpAttribute Created!! ---"));
	nId = Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetAttribLocation(gzVal(oProgram->nId), (gzUInt8*)(sName.fcStr()));
	bValid = true;
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fEnableVertexAttribArray(gzVal(nId));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fVertexAttribPointer(gzVal(nId), Lib_GZ_OpenGL::OpenGL::eVecLength(Lib_GZ_OpenGL::OpenGL::eVecLength::Vec4), Lib_GZ_OpenGL::OpenGL::eVarType(Lib_GZ_OpenGL::OpenGL::eVarType::FLOAT), false, 0, 0);
}

void cOpAttribute::fSetOffset(gzUInt _nValOffset){ gz_(1)
	if (bValid == true){
		//Tag cpp
		//GL_fVertexAttribPointer(nId,  GL_vec4, fGpuDataType(), GL_FALSE, 0,(void*)(sizeof(gzFloat32) * (_nValOffset)));
	}
}

void cOpAttribute::fSetDivisor(gzUInt _nDiv){ gz_(2)
	if (bValid == true){
		Lib_GZ_OpenGL::OpenGL::Get(thread)->fVertexAttribPointer(gzVal(nId), Lib_GZ_OpenGL::OpenGL::eVecLength(Lib_GZ_OpenGL::OpenGL::eVecLength::Vec4), Lib_GZ_OpenGL::OpenGL::eVarType(Lib_GZ_OpenGL::OpenGL::eVarType::FLOAT), false, 0, 0);
		//Tag cpp
		#ifndef GZ_tWeb_Emsc
		//Tag cpp
		#endif
	}
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("SetDivisor"));
}

cOpAttribute::cOpAttribute(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::Base::cAttribute(_parent){

}

void cOpAttribute::Ini_cOpAttribute(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){ gz_(3)
	Ini_cAttribute((Lib_GZ::Gpu::ShaderBase::cProgramShader*)(_oProgram), _sName);
}

gzAny cOpAttribute::MemCopy(){
return (gzAny)new cOpAttribute(*this);
}
gzAny cOpAttribute::DeepCopy(){
return (gzAny)new cOpAttribute(*this, true);
}
cOpAttribute::~cOpAttribute(){
}



}}