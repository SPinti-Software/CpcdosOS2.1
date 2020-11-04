//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Face.h"

#include "Lib_GZ/Gfx/Shape.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Triangle.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gpu/GpuObj/GpuFace.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Base/Poly4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

//Sub Class include
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Gfx/Buffer.h"


namespace Lib_GZ{namespace Gfx{namespace Face{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Face
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Face"},{0,"fGpuDraw"},{0,"fCpuDraw"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Face)

cFace::cFace(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	nPt1=0;nPt2=0;nPt3=0;nPt4=0;
	aPtSource = (gzFloat*)GZ_fMalloc(8, sizeof(gzFloat));
	aPoint2D = 0;
	aPixelArray = 0;

}

void cFace::Ini_cFace(Lib_GZ::Gfx::cShape* _oShape, Lib_GZ::File::cRcImg* _oRc, Lib_GZ::Base::cPtA* _oPt1, Lib_GZ::Base::cPtA* _oPt2, Lib_GZ::Base::cPtA* _oPt3, Lib_GZ::Base::cPtA* _oPt4, gzFloat* _aPoint2D, Lib_GZ::Base::cPoly4* _oSrc){ gz_(0)
	oShape = gzSCastSelf<Lib_GZ::Gfx::cShape>(_oShape);
	oRc = gzSCastSelf<Lib_GZ::File::cRcImg>(_oRc);
	aPoint2D = (_aPoint2D);
	oPt1 = gzSCastSelf<Lib_GZ::Base::cPtA>(_oPt1);
	oPt2 = gzSCastSelf<Lib_GZ::Base::cPtA>(_oPt2);
	oPt3 = gzSCastSelf<Lib_GZ::Base::cPtA>(_oPt3);
	oPt4 = gzSCastSelf<Lib_GZ::Base::cPtA>(_oPt4);
	oShape->oItf->nTotalFaces++;
	nPt1 = 0;
	nPt2 = 3;
	nPt3 = 6;
	nPt4 = 9;
	aPtSource[gzUInt(0)] = _oSrc->oPt1->nX + _::nBorder;
	aPtSource[gzUInt(1)] = _oSrc->oPt1->nY + _::nBorder;
	aPtSource[gzUInt(2)] = _oSrc->oPt2->nX + _::nBorder;
	aPtSource[gzUInt(3)] = _oSrc->oPt2->nY + _::nBorder;
	aPtSource[gzUInt(4)] = _oSrc->oPt3->nX + _::nBorder;
	aPtSource[gzUInt(5)] = _oSrc->oPt3->nY + _::nBorder;
	aPtSource[gzUInt(6)] = _oSrc->oPt4->nX + _::nBorder;
	aPtSource[gzUInt(7)] = _oSrc->oPt4->nY + _::nBorder;
	rPtS1 = (Lib_GZ::Gfx::Triangle::_uPoint3D*)&(aPtSource[gzUInt(0)]);
	rPtS2 = (Lib_GZ::Gfx::Triangle::_uPoint3D*)&(aPtSource[gzUInt(2)]);
	rPtS3 = (Lib_GZ::Gfx::Triangle::_uPoint3D*)&(aPtSource[gzUInt(4)]);
	rPtS4 = (Lib_GZ::Gfx::Triangle::_uPoint3D*)&(aPtSource[gzUInt(6)]);
	oGpuObj = gzSCast<Lib_GZ::Gpu::GpuObj::cGpuFace>((Lib_GZ::Gpu::GpuObj::GpuFace::Get(thread)->New(this)));
	oGpuObj->fIni((Lib_GZ::Gfx::cFace*)(this));
}

gzBool cFace::fGpuDraw(){ gz_(1)
	oGpuObj->fDraw((Lib_GZ::Gfx::cBuffer*)(oShape->oDstBuff.get()), 0, 0, 0, 0);
	return false;
}

gzBool cFace::fCpuDraw(Lib_GZ::Gfx::cObject* _oDest, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nRsAlpha, gzUInt _nRsBrRed, gzUInt _nRsBrGreen, gzUInt _nRsBrBlue, gzUInt _nRsRevRed, gzUInt _nRsRevBlue, gzUInt _nRsRevGreen, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen){ gz_(2)
	Lib_GZ::Gfx::Triangle::Get(thread)->fDraw((Lib_GZ::Base::cPt*)(oPt1->o2d.get()), (Lib_GZ::Base::cPt*)(oPt2->o2d.get()), (Lib_GZ::Base::cPt*)(oPt4->o2d.get()), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(rPtS1), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(rPtS2), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(rPtS4), _nPosX, _nPosY, (gzInt32**)(oRc->aImg), oRc->nWidth, oRc->nHeight, (Lib_GZ::Gfx::cObject*)(_oDest), _nX_Start, _nX_End, _nY_Start, _nY_End, _nRsAlpha, _nRsBrRed, _nRsBrGreen, _nRsBrBlue, _nRsRevRed, _nRsRevBlue, _nRsRevGreen, _nOfRevRed, _nOfRevBlue, _nOfRevGreen);
	Lib_GZ::Gfx::Triangle::Get(thread)->fDraw((Lib_GZ::Base::cPt*)(oPt4->o2d.get()), (Lib_GZ::Base::cPt*)(oPt2->o2d.get()), (Lib_GZ::Base::cPt*)(oPt3->o2d.get()), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(rPtS4), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(rPtS2), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(rPtS3), _nPosX, _nPosY, (gzInt32**)(oRc->aImg), oRc->nWidth, oRc->nHeight, (Lib_GZ::Gfx::cObject*)(_oDest), _nX_Start, _nX_End, _nY_Start, _nY_End, _nRsAlpha, _nRsBrRed, _nRsBrGreen, _nRsBrBlue, _nRsRevRed, _nRsRevBlue, _nRsRevGreen, _nOfRevRed, _nOfRevBlue, _nOfRevGreen, true);
	return false;
}

gzAny cFace::MemCopy(){
return (gzAny)new cFace(*this);
}
gzAny cFace::DeepCopy(){
return (gzAny)new cFace(*this, true);
}
cFace::~cFace(){
oShape->oItf->nTotalFaces--;
	GZ_fFree(aPtSource);
}



}}