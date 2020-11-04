//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gpu/GpuObj/GpuFace.h"

#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuFace{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ GpuFace
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"GpuFace"},{0,"fIni"},{0,"fDraw"},{0,"fSetImg"}};
#endif
///////////////////////////////

}

GZ_mCppClass(GpuFace)

cGpuFace::cGpuFace(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cGpuFace::Ini_cGpuFace(){ gz_(0)
}

void cGpuFace::fIni(Lib_GZ::Gfx::cFace* _oFace){ gz_(1)
	GZ_mIsImplemented("GzNa::GpuFace::fIni")
}

void cGpuFace::fDraw(Lib_GZ::Gfx::cBuffer* _oSource, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End){ gz_(2)
	GZ_mIsImplemented("GzNa::GpuFace::fDraw")
}

void cGpuFace::fSetImg(Lib_GZ::File::cRcImg* _oRc){ gz_(3)
	GZ_mIsImplemented("GzNa::GpuFace::fSetImg")
}

gzAny cGpuFace::MemCopy(){
return (gzAny)new cGpuFace(*this);
}
gzAny cGpuFace::DeepCopy(){
return (gzAny)new cGpuFace(*this, true);
}
cGpuFace::~cGpuFace(){
}



}}}