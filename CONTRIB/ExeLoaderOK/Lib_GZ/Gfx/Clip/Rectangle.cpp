//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Clip/Rectangle.h"

#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Shape.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Base/Poly4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Triangle.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"


namespace Lib_GZ{namespace Gfx{namespace Clip{namespace Rectangle{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Rectangle
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Rectangle"},{0,"fUpdate"},{0,"fGpuDraw"},{0,"fCpuDraw"},{0,"fGetPixel"},{0,"fSetColor1"},{0,"fUpdateLimits"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Rectangle)

cRectangle::cRectangle(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cShape(_parent){
	nSetColor1=0;nSetColor2=0;nGoColor1=0;nGoColor2=0;nS1Red=0;nS1Blue=0;nS1Green=0;nG1Red=0;nG1Blue=0;nG1Green=0;nC1Red=0;nC1Blue=0;nC1Green=0;nC2Red=0;nC2Blue=0;nC2Green=0;bSolid=0;

}

void cRectangle::Ini_cRectangle(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, gzFloat _nW, gzFloat _nH, gzUInt _nColor1, gzUInt _nColor2){ gz_(0)
	Ini_cShape((Lib_GZ::Gfx::cRoot*)(_oParent), _nX, _nY, 4, false);
	nGAttType = 2.0;
	gzInt _nCenterX = 0;
	gzInt _nCenterY = 0;
	nWidth = _nW;
	nHeight = _nH;
	gzFloat _nBorder = gzFloat(0);
	gzSp<Lib_GZ::Base::cPt> _oCenter = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(_nCenterX), gzFloat(_nCenterY))));
	oPtTL = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, gzFloat(0) - _nBorder, gzFloat(0) - _nBorder)));
	oPtTR = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, nWidth + _nBorder, gzFloat(0) - _nBorder)));
	oPtBR = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, nWidth + _nBorder, nHeight + _nBorder)));
	oPtBL = gzSCast<Lib_GZ::Base::cPtA>((Lib_GZ::Base::PtA::Get(thread)->New(this, gzFloat(0) - _nBorder, nHeight + _nBorder)));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtTL.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtTR.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtBR.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	fAddPt((Lib_GZ::Base::cPtA*)(oPtBL.get()), (Lib_GZ::Base::cPt*)(_oCenter.get()));
	gzSp<Lib_GZ::Base::cPt> _oPtSrc1 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(0), gzFloat(0))));
	gzSp<Lib_GZ::Base::cPt> _oPtSrc2 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, nWidth, gzFloat(0))));
	gzSp<Lib_GZ::Base::cPt> _oPtSrc3 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, nWidth, nHeight)));
	gzSp<Lib_GZ::Base::cPt> _oPtSrc4 = gzSCast<Lib_GZ::Base::cPt>((Lib_GZ::Base::Pt::Get(thread)->New(this, gzFloat(0), nHeight)));
	gzSp<Lib_GZ::Base::cPoly4> _oSrc = gzSCast<Lib_GZ::Base::cPoly4>((Lib_GZ::Base::Poly4::Get(thread)->New(this, (Lib_GZ::Base::cPt*)(_oPtSrc1.get()), (Lib_GZ::Base::cPt*)(_oPtSrc2.get()), (Lib_GZ::Base::cPt*)(_oPtSrc3.get()), (Lib_GZ::Base::cPt*)(_oPtSrc4.get()))));
	fCreateFace((Lib_GZ::File::cRcImg*)(GZ_NullObj), (Lib_GZ::Base::cPoly4*)(_oSrc.get()));
	nSetColor1 = _nColor1;
	nSetColor2 = _nColor2;
	nGoColor1 = _nColor1;
	nGoColor2 = _nColor2;
	if (nSetColor2 == 0){
		bSolid = true;
	}else{
		bSolid = false;
	}
	nC1Red = (nSetColor1 >> 16) & 255;
	nC1Blue = (nSetColor1 >> 8) & 255;
	nC1Green = nSetColor1 & 255;
	nC2Red = (nSetColor2 >> 16) & 255;
	nC2Blue = (nSetColor2 >> 8) & 255;
	nC2Green = nSetColor2 & 255;
	fSetColor1(nSetColor1);
	nG1Red = nS1Red;
	nG1Blue = nS1Blue;
	nG1Green = nS1Green;
}

void cRectangle::fUpdate(){ gz_(1)
	nG1Red += (nS1Red - nG1Red) / 6;
	nG1Blue += (nS1Blue - nG1Blue) / 6;
	nG1Green += (nS1Green - nG1Green) / 6;
	nGoColor1 = (gzInt(255) << 24) | (nG1Red & gzInt(16711680)) | ((nG1Blue & gzInt(16711680)) >> 8) | ((nG1Green & gzInt(16711680)) >> 16);
}

gzBool cRectangle::fGpuDraw(){ gz_(2)
	gzFloat _nRed = (gzFloat((nGoColor1 >> 16) & 255)) / 255.0;
	gzFloat _nGreen = (gzFloat((nGoColor1 >> 8) & 255)) / 255.0;
	gzFloat _nBlue = (gzFloat(nGoColor1 & 255)) / 255.0;
	nGAttRed += _nRed;
	nGAttGreen += _nGreen;
	nGAttBlue += _nBlue;
	oFace->fGpuDraw();
	return false;
}

gzBool cRectangle::fCpuDraw(gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End){ gz_(3)
	GZ_mIsImplemented("GzNa::Rectangle::fCpuDraw")
	return false;
}

gzUInt cRectangle::fGetPixel(gzInt x, gzInt y){ gz_(4)
	gzUInt _nCRed;
	gzUInt _nCBlue;
	gzUInt _nCGreen;
	_nCRed = gzUInt(gzFloat(nC1Red) + ((gzFloat(nC2Red - nC1Red)) * gzFloat(x) / nWidth));
	_nCBlue = 25;
	_nCGreen = 55;
	return (gzInt(255) << 24) | (_nCRed << 16) | (_nCBlue << 8) | _nCGreen;
}

void cRectangle::fSetColor1(gzUInt _nColor){ gz_(5)
	nS1Red = _nColor & 16711680;
	nS1Blue = (_nColor & 65280) << 8;
	nS1Green = (_nColor & 255) << 16;
}

void cRectangle::fUpdateLimits(){ gz_(6)
	GZ_mIsImplemented("GzNa::Rectangle::fUpdateLimits")
}

gzAny cRectangle::MemCopy(){
return (gzAny)new cRectangle(*this);
}
gzAny cRectangle::DeepCopy(){
return (gzAny)new cRectangle(*this, true);
}
cRectangle::~cRectangle(){
}



}}}