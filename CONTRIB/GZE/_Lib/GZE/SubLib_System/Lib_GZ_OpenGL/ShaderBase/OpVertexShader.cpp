#include "Lib_GZ_OpenGL/ShaderBase/OpVertexShader.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/ShaderBase/VertexShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"


namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpVertexShader{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpVertexShader
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpVertexShader"},{0,"fSendToGpu"},{0,"fCompile"},{0,"fGetLog"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpVertexShader)

cOpVertexShader::cOpVertexShader(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::ShaderBase::cVertexShader(_parent){

}

void cOpVertexShader::Ini_cOpVertexShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- OpVertexShader Created!! ---"));
	Ini_cVertexShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version(_hGlsl_ES_Version));
	if (gzInt(_hGlsl_ES_Version) == Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto){
		Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--****************--"));
		//Tag cpp
		#ifdef GZ_tWeb_Emsc
		// --- Tag Glsl
			this->fAddLine(gzStrL("#version 100  //-->ES2/ WebGl"));
			this->fAddLine(gzStrL("////////////////// ES2 //////////////////////"));
			this->fAddLine(gzStrL("//Default Value"));
			this->fAddLine(gzStrL("//precision highp float;"));
			this->fAddLine(gzStrL("//precision highp int;"));
			this->fAddLine(gzStrL("//precision lowp sampler2D;"));
			this->fAddLine(gzStrL("//precision lowp samplerCube;"));
			this->fAddLine(gzStrL("//#version 300 es    //-->ES3"));
			this->fAddLine(gzStrL("#define glES"));
			this->fAddLine(gzStrL("#define texture(s,t) texture2D(s, t)"));
			this->fAddLine(gzStrL("#define in attribute"));
			this->fAddLine(gzStrL("#define out varying"));
			this->fAddLine(gzStrL("#define xflat"));
			this->fAddLine(gzStrL("////////////////////////////////////////////"));
		// --- End Tag Glsl
		//Tag cpp
		#else
		// --- Tag Glsl
			this->fAddLine(gzStrL("//// Windows ///"));
			this->fAddLine(gzStrL("#version 330"));
			this->fAddLine(gzStrL("#define xflat flat"));
			this->fAddLine(gzStrL("///////////////"));
		// --- End Tag Glsl
		//Tag cpp
		#endif
		// --- Tag Glsl
			this->fAddLine(gzStrL("///// nVertexID /////"));
			this->fAddLine(gzStrL("#ifdef glVxID"));
			this->fAddLine(gzStrL("#define nVertexID gl_VertexID"));
			this->fAddLine(gzStrL("in int gl_VertexID;"));
			this->fAddLine(gzStrL("#else"));
			this->fAddLine(gzStrL("in vec4 atVertexID;"));
			this->fAddLine(gzStrL("#define nVertexID int(atVertexID.x)"));
			this->fAddLine(gzStrL("#endif"));
		// --- End Tag Glsl
	}
}

gzBool cOpVertexShader::fSendToGpu(gzPStr _sShader){ gz_(1)
	nId = Lib_GZ_OpenGL::OpenGL::Get(thread)->fCreateShader(Lib_GZ_OpenGL::OpenGL::eShader(Lib_GZ_OpenGL::OpenGL::eShader::VERTEX_SHADER));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fShaderSource(gzVal(nId), _sShader);
	return true;
}

gzBool cOpVertexShader::fCompile(){ gz_(2)
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fCompileShader(gzVal(nId));
	gzUInt _nCompilationStatus;
	_nCompilationStatus = Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetShaderParameter(gzVal(nId), Lib_GZ_OpenGL::OpenGL::eShaderInfo(Lib_GZ_OpenGL::OpenGL::eShaderInfo::COMPILE_STATUS));
	//Tag cpp
	//GL_fCompileShader(nId);
	//gzInt _nCompilationStatus = 0;
	//	GL_fGetShaderiv(nId, GL_COMPILE_STATUS, &_nCompilationStatus);
	if(_nCompilationStatus == 0){
	return false;
	}
	bReady = true;
	return true;
	return false;
}

gzStr cOpVertexShader::fGetLog(){ gz_(3)
	return Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetShaderInfoLog(gzVal(nId));
}

gzAny cOpVertexShader::MemCopy(){
return (gzAny)new cOpVertexShader(*this);
}
gzAny cOpVertexShader::DeepCopy(){
return (gzAny)new cOpVertexShader(*this, true);
}
cOpVertexShader::~cOpVertexShader(){
}



}}