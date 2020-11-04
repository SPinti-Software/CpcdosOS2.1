//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Buffer.h"

#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Perspective.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

namespace Lib_GZ{namespace Gfx{namespace Buffer{
}}}


namespace Lib_GZ{namespace Gfx{namespace Buffer{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Buffer
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Buffer"},{0,"fSetLimit"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Buffer)

cBuffer::cBuffer(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cObject(_parent){
	nX=0;nY=0;nBuffPLimT=0;nBuffPLimL=0;nBuffPLimR=0;nBuffPLimB=0;nBuffLimT=0;nBuffLimL=0;nBuffLimR=0;nBuffLimB=0;
	nBuffWidth = 0;
	nBuffHeight = 0;
	aBufferArray = 0;

}

void cBuffer::Ini_cBuffer(Lib_GZ::Gfx::cRoot* _oParent, gzUInt _nWidth, gzUInt _nHeight, gzBool _bNewPerspective){ gz_(0)
	Ini_cObject((Lib_GZ::Gfx::cRoot*)(_oParent), gzFloat(0), gzFloat(0));
	oItf->nTotalBuffers++;
	oDstBuff = gzSCastSelf<Lib_GZ::Gfx::cBuffer>(this);
	nBuffWidth = _nWidth;
	nBuffHeight = _nHeight;
	if (_bNewPerspective != 0){
		oPerspective = gzSCast<Lib_GZ::Gfx::cPerspective>((Lib_GZ::Gfx::Perspective::Get(thread)->New(this, (Lib_GZ::Gfx::cBuffer*)(this))));
	}else{
	}
	fSetLimit(0, 0, _nWidth - 1, _nHeight - 1);
}

void cBuffer::fSetLimit(gzInt _nLimL, gzInt _nLimR, gzInt _nLimT, gzInt _nLimB){ gz_(1)
	nBuffLimT = _nLimL;
	nBuffLimL = _nLimR;
	nBuffLimR = _nLimT;
	nBuffLimB = _nLimB;
	nBuffPLimT = _nLimL * Lib_GZ::Math::nPrec;
	nBuffPLimL = _nLimR * Lib_GZ::Math::nPrec;
	nBuffPLimR = _nLimT * Lib_GZ::Math::nPrec;
	nBuffPLimB = _nLimB * Lib_GZ::Math::nPrec;
}

cBuffer::~cBuffer(){
oItf->nTotalBuffers--;
}



}}