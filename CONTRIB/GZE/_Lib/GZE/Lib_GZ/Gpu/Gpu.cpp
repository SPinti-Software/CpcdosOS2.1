//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/Gpu.h"

#include "Lib_GZ/Gpu/GpuInfo.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace Gpu{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Gpu
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Gpu"},{0,"fLoadImg"},{0,"fBlit"},{0,"fContextIni"},{0,"fError"},{0,"fFatal"},{0,"fClear"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Gpu)

cGpu::cGpu(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	

}

void cGpu::Ini_cGpu(gzUIntX _nHandleId, gzBool _bGlobalSharedContext){ gz_(0)
	oGpuInfo = gzSCast<Lib_GZ::Gpu::cGpuInfo>((Lib_GZ::Gpu::GpuInfo::Get(thread)->New(this)));
	fContextIni(_nHandleId, _bGlobalSharedContext);
	fBlit();
}

void cGpu::fLoadImg(gzInt* _aImg, gzInt _nWidth, gzInt _nHeight){ gz_(1)
	GZ_mIsImplemented("GzNa::Gpu::fLoadImg")
}

void cGpu::fBlit(){ gz_(2)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Gpu: fBlit: not implemented, unable to draw"));
}

gzBool cGpu::fContextIni(gzUIntX _nHandleId, gzBool _bGlobalSharedContext){ gz_(3)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("fContextIni: not implemented, unable to draw "));
	return false;
}

gzBool cGpu::fError(gzPStr _sError){ gz_(4)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Gpu error : ") + _sError);
	return false;
}

gzBool cGpu::fFatal(gzPStr _sError){ gz_(5)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Gpu fatal : ") + _sError);
	return false;
}

void cGpu::fClear(){ gz_(6)
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("Gpu fClear not implemented "));
}

gzAny cGpu::MemCopy(){
return (gzAny)new cGpu(*this);
}
gzAny cGpu::DeepCopy(){
return (gzAny)new cGpu(*this, true);
}
cGpu::~cGpu(){
}



}}