//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Perspective.h"

#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gfx{namespace Perspective{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Perspective
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Perspective"},{0,"fSetFromPosition"},{0,"fSetFromSelf"},{0,"fSetFromBuffer"},{0,"fSetFromBufferCenter"},{0,"fSetFocal"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Perspective)

cPerspective::cPerspective(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	nFocal=0;nValue=0;nFromX=0;nFromY=0;nType=0;

}

void cPerspective::Ini_cPerspective(Lib_GZ::Gfx::cBuffer* _oBuffer, gzFloat _nFocalPc, gzBool _bSelf){ gz_(0)
	oBuffer = gzSCastSelf<Lib_GZ::Gfx::cBuffer>(_oBuffer);
	if (_bSelf != 0){
		fSetFromSelf();
	}else{
		fSetFromBufferCenter();
	}
	fSetFocal(_nFocalPc);
}

void cPerspective::fSetFromPosition(gzFloat _nFromX, gzFloat _nFromY){ gz_(1)
	nFromX = _nFromX;
	nFromY = _nFromY;
	nType = 0;
}

void cPerspective::fSetFromSelf(){ gz_(2)
	nType = 1;
}

void cPerspective::fSetFromBuffer(){ gz_(3)
	nType = 2;
	nFromX = gzFloat(oBuffer->nX);
	nFromY = gzFloat(oBuffer->nY);
}

void cPerspective::fSetFromBufferCenter(){ gz_(4)
	nType = 2;
	nFromX = gzFloat(oBuffer->nX + (oBuffer->nBuffWidth / 2));
	nFromY = gzFloat(oBuffer->nY + (oBuffer->nBuffHeight / 2));
}

void cPerspective::fSetFocal(gzFloat _nPcVal){ gz_(5)
	if (_nPcVal > gzFloat(400)){
		_nPcVal = gzFloat(400);
	}
	if (_nPcVal < gzFloat(0)){
		_nPcVal = gzFloat(0);
	}
	nFocal = _nPcVal;
	_nPcVal += gzFloat(10);
	nValue = 8.0 / (_nPcVal * _nPcVal);
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