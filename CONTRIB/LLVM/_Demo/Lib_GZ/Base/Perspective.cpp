//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Base/Perspective.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Base/Vec4.h"
#include "Lib_GZ/Base/Mat4x4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Base{namespace Perspective{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Perspective
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Perspective"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Perspective)

cPerspective::cPerspective(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent),mProj(this){
	nRatio=0;nNear=0;nFar=0;nRange=0;nTanHalfFov=0;
	nWidth = gzFloat(800);
	nHeight = gzFloat(600);
	nFov = gzFloat(90);

}

void cPerspective::Ini_cPerspective(){ gz_(0)
	mProj->Ini_cMat4x4(0,0,0,0);
	nRatio = nWidth / nHeight;
	nNear = gzFloat(1);
	nFar = gzFloat(1000);
	nRange = nNear - nFar;
	nTanHalfFov = Lib_GZ::pMath::fTan(GZ_M_fToRadian(nFov / 2.0));
	mProj->v0 = gzSCast<Lib_GZ::Base::cVec4>((Lib_GZ::Base::Vec4::Get(thread)->New(this, 1.0 / (nTanHalfFov * nRatio), 0.0, 0.0, 0.0)));
	mProj->v1 = gzSCast<Lib_GZ::Base::cVec4>((Lib_GZ::Base::Vec4::Get(thread)->New(this, 0.0, 1.0 / nTanHalfFov, 0.0, 0.0)));
	mProj->v2 = gzSCast<Lib_GZ::Base::cVec4>((Lib_GZ::Base::Vec4::Get(thread)->New(this, 0.0, 0.0, ((nNear * gzFloat(-1)) - nFar) / nRange, gzFloat(2) * nFar * nNear / nRange)));
	mProj->v3 = gzSCast<Lib_GZ::Base::cVec4>((Lib_GZ::Base::Vec4::Get(thread)->New(this, 0.0, 0.0, 1.0, 0.0)));
}

gzAny cPerspective::MemCopy(){
return (gzAny)new cPerspective(*this);
}
gzAny cPerspective::DeepCopy(){
return (gzAny)new cPerspective(*this, true);
}
cPerspective::~cPerspective(){
}



}}