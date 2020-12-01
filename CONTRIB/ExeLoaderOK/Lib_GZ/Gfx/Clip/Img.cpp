//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Clip/Img.h"

#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gfx/Shape.h"
#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Triangle.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Base/Poly4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

//Sub Class include
#include "Lib_GZ/Gpu/GpuObj/GpuFace.h"


namespace Lib_GZ{namespace Gfx{namespace Clip{namespace Img{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Img
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Img"},{0,"fUpdateChildToParent"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Img)

cImg::cImg(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cShape(_parent){
	nTest=0;
	aFile = 0;

}

void cImg::Ini_cImg(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, Lib_GZ::File::cRcImg* _oRc, gzBool _bCenter, gzInt _nCenterX, gzInt _nCenterY, gzBool _bSmoothBorder, gzBool _bDrawLine, Lib_GZ::Base::cPoly4* _oSrcRegion, gzUInt _nWidth, gzUInt _nHeight, Lib_GZ::Base::cPoly4* _oPts){ gz_(0)
	Ini_cShape((Lib_GZ::Gfx::cRoot*)(_oParent), _nX, _nY, 4, _bSmoothBorder);
	_oRc->fCpuLoad();
	aPixelArray = (_oRc->aImg);
	nWidth = gzFloat(_oRc->nWidth);
	nHeight = gzFloat(_oRc->nHeight);
	oRc = gzSCastSelf<Lib_GZ::File::cRcImg>(_oRc);
	if (_nWidth != 0){
		nWidth = gzFloat(_nWidth);
	}
	if (_nHeight != 0){
		nHeight = gzFloat(_nHeight);
	}
	if (oItf->bGpuDraw != 0){
		_oRc->fGpuLoad();
	}
	gzFloat _nBorder = gzFloat(0);
	if (_bSmoothBorder != 0){
		_nBorder = gzFloat(1);
	}
	if (_bCenter != 0){
		_nCenterX = gzInt(nWidth / gzFloat(2));
		_nCenterY = gzInt(nHeight / gzFloat(2));
	}
	gzSp<Lib_GZ::Base::cPt> _oCenter = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(_nCenterX), gzFloat(_nCenterY))));
	oPtTL = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, gzFloat(0) - _nBorder, gzFloat(0) - _nBorder)));
	oPtTR = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, nWidth + _nBorder, gzFloat(0) - _nBorder)));
	oPtBR = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, nWidth + _nBorder, nHeight + _nBorder)));
	oPtBL = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, gzFloat(0) - _nBorder, nHeight + _nBorder)));
	if (_oPts != (Lib_GZ::Base::cPoly4*)(0)){
		oPtTL->nX = _oPts->oPt1->nX;
		oPtTL->nY = _oPts->oPt1->nY;
		oPtTR->nX = _oPts->oPt2->nX;
		oPtTR->nY = _oPts->oPt2->nY;
		oPtBR->nX = _oPts->oPt3->nX;
		oPtBR->nY = _oPts->oPt3->nY;
		oPtBL->nX = _oPts->oPt4->nX;
		oPtBL->nY = _oPts->oPt4->nY;
	}
	fAddPt((Lib_GZ::Base::cPtA*)(oPtTL.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtTR.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtBR.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtBL.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	gzSp<Lib_GZ::Base::cPoly4> _oSrc;
	if (_oSrcRegion == (Lib_GZ::Base::cPoly4*)(0)){
		gzSp<Lib_GZ::Base::cPt> _oPtSrc1 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(0) - _nBorder, gzFloat(0) - _nBorder)));
		gzSp<Lib_GZ::Base::cPt> _oPtSrc2 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, nWidth + _nBorder, gzFloat(0) - _nBorder)));
		gzSp<Lib_GZ::Base::cPt> _oPtSrc3 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, nWidth + _nBorder, nHeight + _nBorder)));
		gzSp<Lib_GZ::Base::cPt> _oPtSrc4 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(0) - _nBorder, nHeight + _nBorder)));
		_oSrc = gzSCast<Lib_GZ::Base::cPoly4>((Lib_GZ::Base::Poly4::Get(thread)->New(this, (Lib_GZ::Base::cPt*)(_oPtSrc1.get()), (Lib_GZ::Base::cPt*)(_oPtSrc2.get()), (Lib_GZ::Base::cPt*)(_oPtSrc3.get()), (Lib_GZ::Base::cPt*)(_oPtSrc4.get()))));
	}else{
		_oSrc = gzSCastSelf<Lib_GZ::Base::cPoly4>(_oSrcRegion);
	}
	fCreateFace((Lib_GZ::File::cRcImg*)(_oRc), (Lib_GZ::Base::cPoly4*)(_oSrc.get()));
	oFace->oGpuObj->fSetImg((Lib_GZ::File::cRcImg*)(_oRc));
}

void cImg::fUpdateChildToParent(){ gz_(1)
	GZ_mIsImplemented("GzNa::Img::fUpdateChildToParent")
}

gzAny cImg::MemCopy(){
return (gzAny)new cImg(*this);
}
gzAny cImg::DeepCopy(){
return (gzAny)new cImg(*this, true);
}
cImg::~cImg(){
}



}}}