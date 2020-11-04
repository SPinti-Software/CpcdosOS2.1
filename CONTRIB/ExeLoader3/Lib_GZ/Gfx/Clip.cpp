//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Clip.h"

#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"


namespace Lib_GZ{namespace Gfx{namespace Clip{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Clip
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Clip"},{0,"fUpdate"},{0,"fDraw"},{0,"fContextResume"},{0,"fApplyTransform"},{0,"fAddSequence"},{0,"fCalculateChildBorder"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Clip)

cClip::cClip(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cObject(_parent){

}

void cClip::Ini_cClip(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY){ gz_(0)
	Ini_cObject((Lib_GZ::Gfx::cRoot*)(_oParent), _nX, _nY);
}

void cClip::fUpdate(){ gz_(1)
	GZ_mIsImplemented("GzNa::Clip::fUpdate")
}

void cClip::fDraw(){ gz_(2)
	fDispatchRender();
}

void cClip::fContextResume(){ gz_(3)
	fDispatchContextResume();
}

void cClip::fApplyTransform(){ gz_(4)
	GZ_mIsImplemented("GzNa::Clip::fApplyTransform")
}

void cClip::fAddSequence(){ gz_(5)
	GZ_mIsImplemented("GzNa::Clip::fAddSequence")
}

void cClip::fCalculateChildBorder(){ gz_(6)
	GZ_mIsImplemented("GzNa::Clip::fCalculateChildBorder")
}

cClip::~cClip(){
}



}}