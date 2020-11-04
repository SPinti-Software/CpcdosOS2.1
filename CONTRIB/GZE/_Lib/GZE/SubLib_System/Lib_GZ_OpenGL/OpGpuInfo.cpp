#include "Lib_GZ_OpenGL/OpGpuInfo.h"

#include "Lib_GZ/Gpu/GpuInfo.h"
#include "Lib_GZ_OpenGL/OpenGL.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ_OpenGL{namespace OpGpuInfo{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpGpuInfo
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fIniFunctions"},{0,"fGetVersion"},{0,"OpGpuInfo"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpGpuInfo)

gzBool cOpGpuInfo::fIniFunctions(){ gz_(0)
	//Tag cpp
	Lib_GZ_OpenGL::SysGpuFunc::fGetGpuFunctions(); //Only if not already done
	return true;
}

gzBool cOpGpuInfo::fGetVersion(){ gz_(1)
	gzInt _nMaj = 0;
	gzInt _nMin = 0;
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetIntegerv(Lib_GZ_OpenGL::OpenGL::eGetName(Lib_GZ_OpenGL::OpenGL::eGetName::MAJOR_VERSION), (gzInt32*)(&_nMaj));
	Lib_GZ_OpenGL::OpenGL::Get(thread)->fGetIntegerv(Lib_GZ_OpenGL::OpenGL::eGetName(Lib_GZ_OpenGL::OpenGL::eGetName::MINOR_VERSION), (gzInt32*)(&_nMin));
	Lib_GZ::Gpu::GpuInfo::Get(thread)->nVersionMinor = _nMin;
	Lib_GZ::Gpu::GpuInfo::Get(thread)->nVersionMajor = _nMaj;
	//Tag cpp
	#define GZ_OpenGL_MinimalVersionMajor 3
	#define GZ_OpenGL_MinimalVersionMinor 3
	if( _nMaj <  GZ_OpenGL_MinimalVersionMajor){
	return false;
	}
	if( _nMaj ==  GZ_OpenGL_MinimalVersionMajor && _nMin <  GZ_OpenGL_MinimalVersionMinor){
	return false;
	}
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("GetVersion : nVersionMinor") + gzStrI(Lib_GZ::Gpu::GpuInfo::Get(thread)->nVersionMinor));
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("GetVersion : nVersionMajor") + gzStrI(Lib_GZ::Gpu::GpuInfo::Get(thread)->nVersionMajor));
	return true;
}

cOpGpuInfo::cOpGpuInfo(Lib_GZ::cBase* _parent) : Lib_GZ::Gpu::cGpuInfo(_parent){

}

void cOpGpuInfo::Ini_cOpGpuInfo(){ gz_(2)
	Ini_cGpuInfo();
}

gzAny cOpGpuInfo::MemCopy(){
return (gzAny)new cOpGpuInfo(*this);
}
gzAny cOpGpuInfo::DeepCopy(){
return (gzAny)new cOpGpuInfo(*this, true);
}
cOpGpuInfo::~cOpGpuInfo(){
}



}