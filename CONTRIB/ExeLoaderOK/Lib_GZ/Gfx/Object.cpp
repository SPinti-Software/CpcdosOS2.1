//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Object.h"

#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

//Sub Class include
#include "Lib_GZ/Sys/Context.h"


namespace Lib_GZ{namespace Gfx{namespace Object{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Object
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Object"},{0,"fRender"},{0,"fDraw"},{0,"fGpuDraw"},{0,"fCpuDraw"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Object)

cObject::cObject(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cAttribute(_parent){
	nWidth = gzFloat(0);
	nHeight = gzFloat(0);
	bTri = false;
	nShapeWidth = gzFloat(0);
	nShapeHeight = gzFloat(0);
	nDirWidth = gzFloat(1);
	nDirHeight = gzFloat(1);
	nClockwise = gzFloat(1);
	nOriClockwise = gzFloat(1);
	nScaleX = gzFloat(1);
	nScaleY = gzFloat(1);
	aPixelArray = 0;
	aSourcePixel = 0;

}

void cObject::Ini_cObject(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY){ gz_(0)
	Ini_cAttribute((Lib_GZ::Gfx::cRoot*)(_oParent));
	WnX(_nX);
	WnY(_nY);
}

void cObject::fRender(){ gz_(1)
	fDraw();
}

void cObject::fDraw(){ gz_(2)
	if (oItf->oContext->bWinGPU != 0){
		fGpuDraw();
	}else{
		gzInt _nResL = oDstBuff->nBuffPLimL;
		gzInt _nResR = oDstBuff->nBuffPLimR;
		gzInt _nResT = oDstBuff->nBuffPLimT;
		gzInt _nResB = oDstBuff->nBuffPLimB;
		fCpuDraw(Lib_GZ::Math::nHPrec, Lib_GZ::Math::nHPrec, _nResL, _nResR, _nResT, _nResB);
	}
}

gzBool cObject::fGpuDraw(){ gz_(3)
	GZ_mIsImplemented("GzNa::Object::fGpuDraw")
	return false;
}

gzBool cObject::fCpuDraw(gzInt nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End){ gz_(4)
	GZ_mIsImplemented("GzNa::Object::fCpuDraw")
	return false;
}

cObject::~cObject(){
}



}}