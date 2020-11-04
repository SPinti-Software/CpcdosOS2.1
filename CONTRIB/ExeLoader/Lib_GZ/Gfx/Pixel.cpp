//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Pixel.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Shape.h"
#include "Lib_GZ/Gfx/Triangle.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gfx{namespace Pixel{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Pixel
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fTestShape"},{0,"fCopyPixelToDest"},{0,"fGetSmoothPixel"},{0,"fDrawSegTri"},{0,"fDrawClipSquare"},{0,"Pixel"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Pixel)

void csPixel::fTestShape(Lib_GZ::Gfx::cShape* _oShape){ gz_(0)
	GZ_mIsImplemented("GzNa::Pixel::fTestShape")
}

#ifndef tFDef_Lib_GZ_Gfx_Pixel_fCopyPixelToDest
void pPixel::fCopyPixelToDest(gzInt32** _aDest, gzUInt _nPixelClip, gzInt _nX, gzInt _nY){ gz_(1)
	gzUInt _nPixelFrame = 0;
	gzUInt _nFrameAlpha = 0;
	gzUInt _nFrameRed = 0;
	gzUInt _nFrameBlue = 0;
	gzUInt _nFrameGreen = 0;
	gzUInt _nClipAlpha = 0;
	gzUInt _nClipRed = 0;
	gzUInt _nClipBlue = 0;
	gzUInt _nClipGreen = 0;
	_nPixelFrame = _aDest[gzUInt(_nY)][gzUInt(_nX)];
	if (_nPixelFrame == 0){
		_aDest[gzUInt(_nY)][gzUInt(_nX)] = _nPixelClip;
	}else{
		_nFrameAlpha = (_nPixelFrame >> 24) & 255;
		if (_nFrameAlpha != 255){
			gzUInt _nRevAlphaDest = 255 - (_nPixelFrame >> 24);
			if (_nRevAlphaDest != 255){
				gzUInt _nResL = (_nPixelClip << 8) & 4278255360;
				gzUInt _nResH = _nPixelClip & 4278255360;
				gzUInt _nFramL = (_nPixelFrame & 16711935) << 8;
				gzUInt _nFramH = _nPixelFrame & 4278255360;
				_nResL = (_nFramL + ((_nResL >> 8) * _nRevAlphaDest)) & 4278255360;
				_nResH = (_nFramH + ((_nResH >> 8) * _nRevAlphaDest)) & 4278255360;
				_aDest[gzUInt(_nY)][gzUInt(_nX)] = _nResH | (_nResL >> 8);
			}
		}
	}
}
#endif

#ifndef tFDef_Lib_GZ_Gfx_Pixel_fGetSmoothPixel
void pPixel::fGetSmoothPixel(gzInt32** _aSource, gzUInt32 _nLx, gzUInt32 _nTy, gzInt32** _aDest, gzUInt32 _nDestX, gzUInt32 _nDestY, gzUInt32 _nAlpha, gzUInt32 _nPcBrRed, gzUInt32 _nPcBrGreen, gzUInt32 _nPcBrBlue, gzUInt32 _nPcRevRed, gzUInt32 _nPcRevBlue, gzUInt32 _nPcRevGreen, gzUInt32 _nOfRevRed, gzUInt32 _nOfRevBlue, gzUInt32 _nOfRevGreen){ gz_(2)
	gzUInt32 _nPixelFrame = _aDest[gzUInt(_nDestY)][gzUInt(_nDestX)];
	if ((_nPixelFrame & 4278190080) != gzUInt32(4278190080)){
		gzUInt32 _nRx = GZ_M_fIPixFrac(_nLx + Lib_GZ::Math::nPixPrec);
		gzUInt32 _nBy = GZ_M_fIPixFrac(_nTy + Lib_GZ::Math::nPixPrec);
		gzUInt32 _nRAlphaTR = ((_nRx * (Lib_GZ::Math::nPixPrec - GZ_M_fIPixFrac(_nTy))) + Lib_GZ::Math::nPixHPrec) >> Lib_GZ::Math::nPixSP8;
		gzUInt32 _nRAlphaBR = ((_nRx * _nBy) + (Lib_GZ::Math::nPixHPrec - 1)) >> Lib_GZ::Math::nPixSP8;
		gzUInt32 _nRAlphaBL = (((Lib_GZ::Math::nPixPrec - GZ_M_fIPixFrac(_nLx)) * _nBy) + (Lib_GZ::Math::nPixHPrec - 1)) >> Lib_GZ::Math::nPixSP8;
		gzUInt32 _nRAlphaTL = 257 - (_nRAlphaBR + _nRAlphaTR + _nRAlphaBL);
		_nLx = _nLx >> Lib_GZ::Math::nPixSP;
		_nTy = _nTy >> Lib_GZ::Math::nPixSP;
		gzUInt32 _nPixTL = _aSource[gzUInt(_nTy)][gzUInt(_nLx)];
		gzUInt32 _nPixTR = _aSource[gzUInt(_nTy)][gzUInt(_nLx + 1)];
		gzUInt32 _nPixBL = _aSource[gzUInt(_nTy + 1)][gzUInt(_nLx)];
		gzUInt32 _nPixBR = _aSource[gzUInt(_nTy + 1)][gzUInt(_nLx + 1)];
		gzUInt32 _nResH = (((_nPixTL & 4278255360) >> 8) * _nRAlphaTL);
		_nResH += (((_nPixTR & 4278255360) >> 8) * _nRAlphaTR);
		_nResH += (((_nPixBL & 4278255360) >> 8) * _nRAlphaBL);
		_nResH += (((_nPixBR & 4278255360) >> 8) * _nRAlphaBR);
		gzUInt32 _nResL = (_nPixTL & 16711935) * _nRAlphaTL;
		_nResL += (_nPixTR & 16711935) * _nRAlphaTR;
		_nResL += (_nPixBL & 16711935) * _nRAlphaBL;
		_nResL += (_nPixBR & 16711935) * _nRAlphaBR;
		gzUInt32 _nResHH = _nResH >> 24;
		gzUInt32 _nResLL = _nResL >> 24;
		_nResH = _nResH >> 8 & 255;
		_nResL = _nResL >> 8 & 255;
		_nResLL = (((_nResHH - _nResLL) * GZ_M_fMin(GZ_M_fMax(_nPcBrRed + _nOfRevRed, 0), 256)) + (_nResLL * _nPcRevRed)) * _nAlpha * GZ_M_fMin(GZ_M_fMax(_nPcBrRed + 256, 0), 256);
		_nResH = (((_nResHH - _nResH) * GZ_M_fMin(GZ_M_fMax(_nPcBrGreen + _nOfRevGreen, 0), 256)) + (_nResH * _nPcRevGreen)) * _nAlpha * GZ_M_fMin(GZ_M_fMax(_nPcBrGreen + 256, 0), 256);
		_nResL = (((_nResHH - _nResL) * GZ_M_fMin(GZ_M_fMax(_nPcBrBlue + _nOfRevBlue, 0), 256)) + (_nResL * _nPcRevBlue)) * _nAlpha * GZ_M_fMin(GZ_M_fMax(_nPcBrBlue + 256, 0), 256);
		_nResL = (_nResLL & 4278190080) | (_nResL >> 16);
		_nResH = (_nResHH * _nAlpha << 16) | (_nResH >> 16);
		_nResH = _nResH & 4278255360;
		gzUInt32 _nRevAlphaDest = 255 - (_nPixelFrame >> 24);
		if (_nRevAlphaDest != 255){
			gzUInt32 _nFramL = (_nPixelFrame & 16711935) << 8;
			gzUInt32 _nFramH = _nPixelFrame & 4278255360;
			_nResL = (_nFramL + ((_nResL >> 8) * _nRevAlphaDest)) & 4278255360;
			_nResH = (_nFramH + ((_nResH >> 8) * _nRevAlphaDest)) & 4278255360;
		}
		_aDest[gzUInt(_nDestY)][gzUInt(_nDestX)] = _nResH | (_nResL >> 8);
	}
}
#endif

#ifndef tFDef_Lib_GZ_Gfx_Pixel_fDrawSegTri
void pPixel::fDrawSegTri(gzInt _nDirX, Lib_GZ::Base::cPt* _oPtT, Lib_GZ::Base::cPt* _oPtL, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtST, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSL, Lib_GZ::Base::cPt* _oPtSegT, Lib_GZ::Base::cPt* _oPtSegL, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSegST, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSegSL, gzInt32** _aDest, gzInt32** _aSource, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nLimW, gzUInt _nLimH, gzInt _nLast, gzUInt _nAlpha, gzUInt _nPcBrRed, gzUInt _nPcBrGreen, gzUInt _nPcBrBlue, gzUInt _nPcRevRed, gzUInt _nPcRevGreen, gzUInt _nPcRevBlue, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen, gzInt _nFirst, gzBool _bNothingRight){ gz_(3)
	gzFloat _nFloatPrec = gzFloat(Lib_GZ::Math::nPrec);
	gzInt _nFL1x = gzInt(_oPtSegT->nX * gzFloat(Lib_GZ::Math::nPrec));
	gzInt _nFL2x = gzInt(_oPtSegL->nX * gzFloat(Lib_GZ::Math::nPrec));
	gzInt _nFTy = gzInt(_oPtSegT->nY * gzFloat(Lib_GZ::Math::nPrec));
	gzInt _nFBy = gzInt(_oPtSegL->nY * gzFloat(Lib_GZ::Math::nPrec));
	gzFloat _nSL1x = ((_rPtSegST->nX * 256.0) + 64.0) / _oPtSegT->nZ;
	gzFloat _nSL1y = ((_rPtSegST->nY * 256.0) - 64.0) / _oPtSegT->nZ;
	gzFloat _nSL1z = gzFloat(1) / _oPtSegT->nZ;
	gzFloat _nSL2x = ((_rPtSegSL->nX * 256.0) + 64.0) / _oPtSegL->nZ;
	gzFloat _nSL2y = ((_rPtSegSL->nY * 256.0) - 64.0) / _oPtSegL->nZ;
	gzFloat _nSL2z = gzFloat(1) / _oPtSegL->nZ;
	gzInt _nSlopeTy = gzInt(_oPtT->nY * gzFloat(Lib_GZ::Math::nPrec));
	gzInt _nSlopeTx = gzInt(_oPtT->nX * gzFloat(Lib_GZ::Math::nPrec));
	gzInt _nSlopeLy = gzInt(_oPtL->nY * gzFloat(Lib_GZ::Math::nPrec));
	gzInt _nSlopeLx = gzInt(_oPtL->nX * gzFloat(Lib_GZ::Math::nPrec));
	gzFloat _nSlopeSTx = ((_rPtST->nX * 256.0) + 64.0) / _oPtT->nZ;
	gzFloat _nSlopeSTy = ((_rPtST->nY * 256.0) - 64.0) / _oPtT->nZ;
	gzFloat _nSlopeSTz = gzFloat(1) / _oPtT->nZ;
	gzFloat _nSlopeSLx = ((_rPtSL->nX * 256.0) + 64.0) / _oPtL->nZ;
	gzFloat _nSlopeSLy = ((_rPtSL->nY * 256.0) - 64.0) / _oPtL->nZ;
	gzFloat _nSlopeSLz = gzFloat(1) / _oPtL->nZ;
	gzInt _nIPosX = _nPosX - Lib_GZ::Math::nPrec;
	gzInt _nIPosY = _nPosY - Lib_GZ::Math::nPrec;
	gzFloat _nSLx;
	gzFloat _nSLy;
	gzFloat _nSLz;
	gzFloat _nSRx;
	gzFloat _nSRy;
	gzFloat _nSRz;
	gzUInt _nGetX = 0;
	gzUInt _nGetY = 0;
	gzInt _nX = 0;
	gzInt _nY = 0;
	gzUInt _nPixelFrame = 0;
	gzUInt _nPixelClip = 0;
	gzInt _nXStart = 0;
	gzInt _nXEnd = 0;
	gzInt _nXDist = 0;
	gzInt _nOffX = 0;
	gzInt _nOffY = 0;
	gzInt _nIntOffX = GZ_M_fITronc(_nIPosX + Lib_GZ::Math::nHPrec);
	gzInt _nIntOffY = GZ_M_fITronc(_nIPosY + Lib_GZ::Math::nHPrec);
	gzInt _nLimXTOffset = (Lib_GZ::Math::nPrec + Lib_GZ::Math::nHPrec) - (_nIPosX + Lib_GZ::Math::nHPrec - _nIntOffX) - Lib_GZ::Math::nPrec;
	gzInt _nFHeight = (_nFBy - _nFTy) + 1;
	gzInt _nFHeightSlope = (_nSlopeLy - _nSlopeTy) + 1;
	gzInt _nDif_FLx = (tLS(_nFL2x - _nFL1x) << Lib_GZ::Math::nDivPrec) / _nFHeight;
	gzInt _nDif_FRx = (tLS(_nSlopeLx - _nSlopeTx) << Lib_GZ::Math::nDivPrec) / _nFHeightSlope;
	gzFloat _nFHeightFloat = gzFloat(_nFHeight) / _nFloatPrec;
	gzFloat _nDif_SLx = (_nSL2x - _nSL1x) / _nFHeightFloat;
	gzFloat _nDif_SLy = (_nSL2y - _nSL1y) / _nFHeightFloat;
	gzFloat _nDif_SLz = (_nSL2z - _nSL1z) / _nFHeightFloat;
	gzFloat _nFHeightFloatSlope = gzFloat(_nFHeightSlope) / _nFloatPrec;
	gzFloat _nDif_SRx = (_nSlopeSLx - _nSlopeSTx) / _nFHeightFloatSlope;
	gzFloat _nDif_SRy = (_nSlopeSLy - _nSlopeSTy) / _nFHeightFloatSlope;
	gzFloat _nDif_SRz = (_nSlopeSLz - _nSlopeSTz) / _nFHeightFloatSlope;
	gzInt _nTopY = _nIPosY + _nFTy;
	gzInt _nRealY = GZ_M_fMax(GZ_M_fITronc(_nIPosY + _nFTy) + _nFirst, _nIntOffY + _nY_Start);
	gzInt _nRealYPix = _nRealY >> Lib_GZ::Math::nSP;
	gzInt _nToY = GZ_M_fMin(GZ_M_fITronc(_nIPosY + _nFBy) + Lib_GZ::Math::nPrec, _nIntOffY + _nY_End);
	gzInt y = (GZ_M_fIFrac(_nIPosY + _nFTy) * -1) - (GZ_M_fITronc(_nIPosY + _nFTy) - _nRealY);
	gzFloat _nYFloat = gzFloat(y) / _nFloatPrec;
	gzFloat _nFTyFloat = gzFloat(_nFTy) / _nFloatPrec;
	gzFloat _nSlopeTyFloat = gzFloat(_nSlopeTy) / _nFloatPrec;
	gzInt _nAliL = 0;
	gzInt _nAliR = 0;
	if (_nDirX < 0){
	}else{
	}
	gzInt _nXAdd = Lib_GZ::Math::nPrec * _nDirX;
	gzFloat _nXAddFloat = gzFloat(_nDirX);
	gzInt _nDirEndX = _nAliR + Lib_GZ::Math::nPrec;
	gzInt _nDirBegX = Lib_GZ::Math::nPrec - _nAliL;
	if (_nDirX == -1){
		_nDirEndX = _nAliR;
		_nDirBegX = 0 - _nAliL;
	}
	gzInt _nIncY;
	gzInt x;
	gzInt _nXLimit;
	_nLimW -= 128;
	_nLimH -= 128;
	while(_nRealY < _nToY){
		_nSLx = _nSL1x + (_nYFloat * _nDif_SLx);
		_nSLy = _nSL1y + (_nYFloat * _nDif_SLy);
		_nSLz = _nSL1z + (_nYFloat * _nDif_SLz);
		_nSRx = _nSlopeSTx + ((_nYFloat + (_nFTyFloat - _nSlopeTyFloat)) * _nDif_SRx);
		_nSRy = _nSlopeSTy + ((_nYFloat + (_nFTyFloat - _nSlopeTyFloat)) * _nDif_SRy);
		_nSRz = _nSlopeSTz + ((_nYFloat + (_nFTyFloat - _nSlopeTyFloat)) * _nDif_SRz);
		_nXStart = _nFL1x + ((tLS(y) * _nDif_FLx) >> Lib_GZ::Math::nDivPrec);
		_nXEnd = _nSlopeTx + ((tLS(y + (_nFTy - _nSlopeTy)) * _nDif_FRx) >> Lib_GZ::Math::nDivPrec);
		if (_nDirX == 1){
			_nXDist = GZ_M_fMax(_nXEnd - _nXStart, 1);
			x = GZ_M_fMax(_nDirBegX, _nX_Start - _nXStart + _nLimXTOffset);
			_nXLimit = GZ_M_fMin(_nXDist + _nDirEndX, _nX_End - _nXStart + _nLimXTOffset + Lib_GZ::Math::nPrec);
		}else{
			_nXDist = GZ_M_fMin(_nXEnd - _nXStart, -1);
			x = GZ_M_fMin(_nDirBegX, _nX_End - _nXStart + _nLimXTOffset);
			_nXLimit = GZ_M_fMax(_nXDist + _nDirEndX, _nX_Start - _nXStart + _nLimXTOffset - Lib_GZ::Math::nPrec);
		}
		gzFloat _nXDistFloat = gzFloat(_nXDist) / _nFloatPrec;
		gzFloat _nDif_SLRx = (_nSRx - _nSLx) / _nXDistFloat;
		gzFloat _nDif_SLRy = (_nSRy - _nSLy) / _nXDistFloat;
		gzFloat _nDif_SLRz = (_nSRz - _nSLz) / _nXDistFloat;
		gzInt _nXFrac = GZ_M_fIFrac(_nIPosX + _nXStart + x);
		x -= _nXFrac;
		_nX = _nIPosX + _nXStart + _nXFrac;
		gzInt _nRealXPix = (_nX + x) >> Lib_GZ::Math::nSP;
		gzFloat _nXFloat = gzFloat(x) / _nFloatPrec;
		_nXLimit = GZ_M_fITronc(_nXLimit - x) + x;
		if ((_nDirX == 1 && x < _nXLimit) || (_nDirX == -1 && x > _nXLimit)){
			for(; x != _nXLimit; x += _nXAdd){
				gzFloat _n1OnZ = _nSLz + (_nXFloat * _nDif_SLRz);
				_nGetX = Lib_GZ::pMath::fFloatToInt((_nSLx + (_nXFloat * _nDif_SLRx)) / _n1OnZ);
				_nGetY = Lib_GZ::pMath::fFloatToInt((_nSLy + (_nXFloat * _nDif_SLRy)) / _n1OnZ);
				if (_nGetX > _nLimW || _nGetY > _nLimH){
					_nGetX = 0;
					_nGetY = 0;
				}
				Lib_GZ::Gfx::pPixel::fGetSmoothPixel((gzInt32**)(_aSource), _nGetX, _nGetY, (gzInt32**)(_aDest), _nRealXPix, _nRealYPix, _nAlpha, _nPcBrRed, _nPcBrGreen, _nPcBrBlue, _nPcRevRed, _nPcRevGreen, _nPcRevBlue, _nOfRevRed, _nOfRevBlue, _nOfRevGreen);
				_nRealXPix += _nDirX;
				_nXFloat += _nXAddFloat;
			}
		}
		_nYFloat += gzFloat(1);
		y += Lib_GZ::Math::nPrec;
		_nRealY += Lib_GZ::Math::nPrec;
		_nRealYPix++;
	}
}
#endif

void csPixel::fDrawClipSquare(gzInt32** _aDest, gzInt32** _aSource, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End){ gz_(4)
	gzUInt _nPixelClip = 0;
	gzInt _nX = 0;
	gzInt _nY = 0;
	for(gzInt y = _nY_Start; y <= _nY_End; y++){
		_nY = y + _nPosY;
		for(gzInt x = _nX_Start; x <= _nX_End; x++){
			_nX = x + _nPosX;
			_nPixelClip = _aSource[gzUInt(y)][gzUInt(x)];
			Lib_GZ::Gfx::pPixel::fCopyPixelToDest((gzInt32**)(_aDest), _nPixelClip, _nX, _nY);
		}
	}
}

cPixel::cPixel(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cPixel::Ini_cPixel(){ gz_(5)
	Ini_cClass();
}

gzAny cPixel::MemCopy(){
return (gzAny)new cPixel(*this);
}
gzAny cPixel::DeepCopy(){
return (gzAny)new cPixel(*this, true);
}
cPixel::~cPixel(){
}



}}