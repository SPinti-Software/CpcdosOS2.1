//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/FrameRate.h"

#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/GlobalData.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Perspective.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"


namespace Lib_GZ{namespace Sys{namespace FrameRate{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ FrameRate
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"FrameRate"},{0,"fStartProcess"},{0,"fQuit"},{0,"ThreadLoop"},{0,"fBlit"},{0,"fNewFrame"},{0,"fIniProcess"}};
#endif
///////////////////////////////

}

GZ_mCppClass(FrameRate)

cFrameRate::cFrameRate(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cBuffer(_parent){
	nFramePerSecond = 30;

}

void cFrameRate::Ini_cFrameRate(Lib_GZ::Gfx::cRoot* _oParent, gzUInt _nWidth, gzUInt _nHeight){ gz_(0)
	Ini_cBuffer((Lib_GZ::Gfx::cRoot*)(_oParent), _nWidth, _nHeight, true);
}

void cFrameRate::fStartProcess(){ gz_(1)
	fIniProcess();
}

void cFrameRate::fQuit(){ gz_(2)
	GZ_mIsImplemented("GzNa::FrameRate::fQuit")
}

void cFrameRate::ThreadLoop(){ gz_(3)
	fNewFrame();
	fBlit();
}

void cFrameRate::fBlit(){ gz_(4)
	GZ_mIsImplemented("GzNa::FrameRate::fBlit")
}

void cFrameRate::fNewFrame(){ gz_(5)
	GZ_mIsImplemented("GzNa::FrameRate::fNewFrame")
}

void cFrameRate::fIniProcess(){ gz_(6)
	GZ_mIsImplemented("GzNa::FrameRate::fIniProcess")
}

cFrameRate::~cFrameRate(){
}



}}