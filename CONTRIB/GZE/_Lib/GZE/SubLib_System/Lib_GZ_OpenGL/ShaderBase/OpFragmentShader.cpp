#include "Lib_GZ_OpenGL/ShaderBase/OpFragmentShader.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/ShaderBase/FragmentShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"


namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpFragmentShader{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpFragmentShader
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpFragmentShader"},{0,"fSendToGpu"},{0,"fCompile"},{0,"fGetLog"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpFragmentShader)

cOpFragmentShader::cOpFragmentShader(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::ShaderBase::cFragmentShader(_parent){

}

void cOpFragmentShader::Ini_cOpFragmentShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("--- OpFragmentShader Created!! ---"));
	Ini_cFragmentShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version(_hGlsl_ES_Version));
	if (gzInt(_hGlsl_ES_Version) == Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto){
		//Tag cpp
		#ifdef GZ_tWeb_Emsc
		// --- Tag Glsl
			this->fAddLine(gzStrL("///#ifdef GZ_tAndroid   //ES2"));
			this->fAddLine(gzStrL("#version 100"));
			this->fAddLine(gzStrL("precision highp float;  //highp only works in fragment shaders if you have the GL_FRAGMENT_PRECISION_HIGH extension enabled."));
			this->fAddLine(gzStrL("precision highp int;  //highp only works in fragment shaders if you have the GL_FRAGMENT_PRECISION_HIGH extension enabled."));
			this->fAddLine(gzStrL("#define texture(s,t) texture2D(s, t)"));
			this->fAddLine(gzStrL("#define in varying"));
			this->fAddLine(gzStrL("#define FragColor gl_FragColor"));
			this->fAddLine(gzStrL("#define FragData gl_FragData"));
			this->fAddLine(gzStrL("#define xflat"));
			this->fAddLine(gzStrL("///#endif // GZ_tAndroid"));
		// --- End Tag Glsl
		//Tag cpp
		#else
		// --- Tag Glsl
			this->fAddLine(gzStrL("//#ifdef GZ_tWindows  //GL 3.3 minimal"));
			this->fAddLine(gzStrL("#version 330"));
			this->fAddLine(gzStrL("#define xflat flat"));
			this->fAddLine(gzStrL("out vec4 FragColor;"));
			this->fAddLine(gzStrL("///#endif"));
		// --- End Tag Glsl
		//Tag cpp
		#endif
	}
}

gzBool cOpFragmentShader::fSendToGpu(gzPStr _sShader){ gz_(1)
	nId = Lib_GZ_OpenGL::OpenGL::Get(thread)->fCreateShader(Lib_GZ_OpenGL::OpenGL::eShader(Lib_GZ_OpenGL::OpenGL::eShader::FRAGMENT_SHADER));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fShaderSource(gzVal(nId), _sShader);
	return true;
}

gzBool cOpFragmentShader::fCompile(){ gz_(2)
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fCompileShader(gzVal(nId));
	gzUInt _nCompilationStatus;
	_nCompilationStatus = Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetShaderParameter(gzVal(nId), Lib_GZ_OpenGL::OpenGL::eShaderInfo(Lib_GZ_OpenGL::OpenGL::eShaderInfo::COMPILE_STATUS));
	//Tag cpp
	//GL_fCompileShader(nId);
	//gzInt _nCompilationStatus = 0;
	//GL_fGetShaderiv(nId, GL_COMPILE_STATUS, &_nCompilationStatus);
	if(_nCompilationStatus == 0){
	return false;
	}
	bReady = true;
	return true;
	return false;
}

gzStr cOpFragmentShader::fGetLog(){ gz_(3)
	gzStr _sReturn = Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetShaderInfoLog(gzVal(nId));
	//Tag cpp
	char* _str = ( char* )_sReturn.fcStr();
	//	nLineError = strtol( &_str[2] , GZ_Null, 10) - 1; //Windows
	int _nStartIndex = 1;
	if(_str[0] == 'E'){
	_nStartIndex += 5;
	}
	char* pEnd;
	nSourceError = strtol( &_str[_nStartIndex], &pEnd, 10);
	nLineError = strtol(&pEnd[1], GZ_Null, 10) - 1; //Skip ':'
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("LineErr: ") + gzStrI(nLineError));
	return _sReturn;
}

gzAny cOpFragmentShader::MemCopy(){
return (gzAny)new cOpFragmentShader(*this);
}
gzAny cOpFragmentShader::DeepCopy(){
return (gzAny)new cOpFragmentShader(*this, true);
}
cOpFragmentShader::~cOpFragmentShader(){
}



}}