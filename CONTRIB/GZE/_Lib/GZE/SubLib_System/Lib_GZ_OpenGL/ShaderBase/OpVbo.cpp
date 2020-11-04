#include "Lib_GZ_OpenGL/ShaderBase/OpVbo.h"

#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ_OpenGL/OpGpuInfo.h"
#include "Lib_GZ/Gpu/ShaderBase/Vbo.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpVbo{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpVbo
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fLoad"},{0,"fSendData"},{0,"OpVbo"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpVbo)

void cOpVbo::fLoad(){ gz_(0)
	nId = Lib_GZ_OpenGL::OpenGL::Get(thread)->fCreateBuffer();
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fBindBuffer(Lib_GZ_OpenGL::OpenGL::eBufferTarget(Lib_GZ_OpenGL::OpenGL::eBufferTarget::ARRAY_BUFFER), gzVal(nId));
}

void cOpVbo::fSendData(){ gz_(1)
	//Tag cpp
	static gzFloat _nInc  = 0;
	_nInc += 0.001;
	if(_nInc > 50.0){
	_nInc = 0;
	}
	/*
	vertexData = new Float32Array([
	0, 0.5, -0.5, -0.5,   //PT1
	1, 0.5, -0.5, -0.5,   //PT2
	2, 0.5, -0.5, -0.5,   //PT3
	3, 0.5, -0.5, -0.5    //PT4
	//  x   y   z    w
	]);
	*/
	aData[0] = 0.0;
	aData[1] = 0.0;
	aData[2] = 0.0;
	aData[3] = 1.0;
	aData[4] = 1.0;
	aData[5] = 0.0;
	aData[6] = 0.0;
	aData[7] = 1.0;
	aData[8] = 2.0;
	aData[9] = 0.4;
	aData[10] = 0.6;
	aData[11] = 0.2;
	aData[12] = 3.0;
	aData[13] = 0.4;
	aData[14] = 0.6;
	aData[15] = 0.2;
	/*
	aData[0] = 0.0;
	aData[1] = 0.0;
	aData[2] = 1.0;
	aData[3] = 0.0;
	aData[4] = 2.0;
	aData[5] = 0.0;
	aData[6] = 3.0;
	aData[7] = 0.0;
	*/
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fBindBuffer(Lib_GZ_OpenGL::OpenGL::eBufferTarget(Lib_GZ_OpenGL::OpenGL::eBufferTarget::ARRAY_BUFFER), gzVal(nId));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fBufferData(Lib_GZ_OpenGL::OpenGL::eBufferTarget(Lib_GZ_OpenGL::OpenGL::eBufferTarget::ARRAY_BUFFER), 4, Lib_GZ_OpenGL::OpenGL::eTypeSize(Lib_GZ_OpenGL::OpenGL::eTypeSize::Vec4), gzFData<gzUInt8>(aData.get()), Lib_GZ_OpenGL::OpenGL::eDrawFlow(Lib_GZ_OpenGL::OpenGL::eDrawFlow::STREAM_DRAW));
}

cOpVbo::cOpVbo(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::ShaderBase::cVbo(_parent){

}

void cOpVbo::Ini_cOpVbo(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram){ gz_(2)
	Ini_cVbo((Lib_GZ::Gpu::ShaderBase::cProgramShader*)(_oProgram));
}

gzAny cOpVbo::MemCopy(){
return (gzAny)new cOpVbo(*this);
}
gzAny cOpVbo::DeepCopy(){
return (gzAny)new cOpVbo(*this, true);
}
cOpVbo::~cOpVbo(){
}



}}