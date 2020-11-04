//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Shape.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Face.h"
#include "Lib_GZ/Gfx/Triangle.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Base/Poly4.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

//Sub Class include
#include "Lib_GZ/Gfx/Perspective.h"


namespace Lib_GZ{namespace Gfx{namespace Shape{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Shape
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Shape"},{0,"fAddPt"},{0,"fCreateFace"},{0,"fFinalUpdate"},{0,"fGpuDraw"},{0,"fIsInside"},{0,"fCpuDraw"},{0,"fTransform"},{0,"fConvertTo2d"},{0,"fContextResume"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Shape)

cShape::cShape(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cObject(_parent){
	
	aPt3dOri = (gzFloat*)GZ_fMalloc(12, sizeof(gzFloat));
	aPoint3D = (gzFloat*)GZ_fMalloc(12, sizeof(gzFloat));
	aPoint2D = (gzFloat*)GZ_fMalloc(12, sizeof(gzFloat));
	aPtSource = (gzFloat*)GZ_fMalloc(10, sizeof(gzFloat));
	nIndexPt = 0;
	nIndexSrc = 0;
	nNbPt = 0;
	nNbPt3 = 0;
	bSmoothBorder = true;

}

void cShape::Ini_cShape(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, gzUInt _nNbPt, gzBool _bSmoothBorder){ gz_(0)
	Ini_cObject((Lib_GZ::Gfx::cRoot*)(_oParent), _nX, _nY);
	nNbPt = _nNbPt;
	nNbPt3 = _nNbPt * 3;
	bSmoothBorder = _bSmoothBorder;
}

void cShape::fAddPt(Lib_GZ::Base::cPtA* _oPt, Lib_GZ::Base::cPt* _oCenter){ gz_(1)
	_oPt->nX = _oPt->nX - _oCenter->nX;
	_oPt->nY = _oPt->nY - _oCenter->nY;
	_oPt->nZ = _oPt->nZ - _oCenter->nZ;
	aNewPt3dOri.fPush(gzSCastSelf<Lib_GZ::Base::cPtA>(_oPt));
}

void cShape::fCreateFace(Lib_GZ::File::cRcImg* _oRc, Lib_GZ::Base::cPoly4* _oSrc){ gz_(2)
	oFace = gzSCast<Lib_GZ::Gfx::cFace>((Lib_GZ::Gfx::Face::Get(thread)->New(this, (Lib_GZ::Gfx::cShape*)(this), (Lib_GZ::File::cRcImg*)(_oRc), (Lib_GZ::Base::cPtA*)(aNewPt3dOri[gzUInt(0)].get()), (Lib_GZ::Base::cPtA*)(aNewPt3dOri[gzUInt(1)].get()), (Lib_GZ::Base::cPtA*)(aNewPt3dOri[gzUInt(2)].get()), (Lib_GZ::Base::cPtA*)(aNewPt3dOri[gzUInt(3)].get()), (gzFloat*)(aPoint2D), (Lib_GZ::Base::cPoly4*)(_oSrc))));
}

void cShape::fFinalUpdate(){ gz_(3)
	GZ_mIsImplemented("GzNa::Shape::fFinalUpdate")
}

gzBool cShape::fGpuDraw(){ gz_(4)
	oFace->fGpuDraw();
	return true;
}

gzBool cShape::fIsInside(){ gz_(5)
	gzFloat _nL;
	gzFloat _nR;
	gzFloat _nT;
	gzFloat _nB;
	if (aPoint2D[gzUInt(0)] < aPoint2D[gzUInt(3)]){
		_nL = aPoint2D[gzUInt(0)];
		_nR = aPoint2D[gzUInt(3)];
	}else{
		_nL = aPoint2D[gzUInt(3)];
		_nR = aPoint2D[gzUInt(0)];
	}
	if (aPoint2D[gzUInt(1)] < aPoint2D[gzUInt(7)]){
		_nT = aPoint2D[gzUInt(1)];
		_nB = aPoint2D[gzUInt(7)];
	}else{
		_nT = aPoint2D[gzUInt(7)];
		_nB = aPoint2D[gzUInt(1)];
	}
	gzFloat _nBuffL = gzFloat(0);
	gzFloat _nBuffR = gzFloat(1024);
	gzFloat _nBuffT = gzFloat(0);
	gzFloat _nBuffB = gzFloat(800);
	if (_nR < _nBuffL || _nL > _nBuffR || _nB < _nBuffT || _nT > _nBuffB){
		return false;
	}else{
		return true;
	}
	return false;
}

gzBool cShape::fCpuDraw(gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End){ gz_(6)
	if (oGblPt->nZ < (oItf->nHalfFrameHeight * gzFloat(-1))){
		return false;
	}
	fTransform();
	fConvertTo2d();
	gzInt _nRsBrRed = gzInt(nGAttRed * gzFloat(255));
	gzInt _nRsBrGreen = gzInt(nGAttGreen * gzFloat(255));
	gzInt _nRsBrBlue = gzInt(nGAttBlue * gzFloat(255));
	gzInt _nRsAlpha = gzInt((nGAttAlpha * gzFloat(255)));
	if (_nRsAlpha > 256){
		_nRsAlpha = 256;
	}
	if (_nRsAlpha < 0){
		_nRsAlpha = 0;
	}
	_nX_Start = oDstBuff->nBuffPLimL;
	_nX_End = oDstBuff->nBuffPLimR;
	_nY_Start = oDstBuff->nBuffPLimT;
	_nY_End = oDstBuff->nBuffPLimB;
	oFace->fCpuDraw((Lib_GZ::Gfx::cObject*)(oDstBuff.get()), Lib_GZ::Math::nHPrec, Lib_GZ::Math::nHPrec, _nX_Start, _nX_End, _nY_Start, _nY_End, _nRsAlpha, _nRsBrRed, _nRsBrGreen, _nRsBrBlue, 256, 256, 256, 0, 0, 0);
	return true;
}

void cShape::fTransform(){ gz_(7)
	gzFloat _nRoll = nGAttRoll;
	gzFloat _nPitch = nGAttPitch;
	gzFloat _nYaw = nGAttYaw;
	gzFloat _nWidth = nGAttWidth;
	gzFloat _nHeight = nGAttHeight;
	gzFloat _nLength = nGAttLength;
	gzFloat _nFocal = 1.0 / 270.0;
	for(gzUInt i = 0; i < nNbPt3; i += 3){
		Lib_GZ::Gfx::Triangle::_uPoint3D* _rPt = (Lib_GZ::Gfx::Triangle::_uPoint3D*)&(aPt3dOri[gzUInt(i)]);
		gzFloat x = _rPt->nX * _nWidth;
		gzFloat y = _rPt->nY * _nHeight;
		gzFloat z = _rPt->nZ * _nLength;
		gzFloat _nTx = (x * Lib_GZ::pMath::fCos(_nYaw)) - (z * Lib_GZ::pMath::fSin(_nYaw));
		gzFloat _nTz = (x * Lib_GZ::pMath::fSin(_nYaw)) + (z * Lib_GZ::pMath::fCos(_nYaw));
		gzFloat _nTy = (y * Lib_GZ::pMath::fCos(_nPitch)) - (_nTz * Lib_GZ::pMath::fSin(_nPitch));
		z = (y * Lib_GZ::pMath::fSin(_nPitch) * gzFloat(-1)) - (_nTz * Lib_GZ::pMath::fCos(_nPitch));
		x = (_nTx * Lib_GZ::pMath::fCos(_nRoll)) - (_nTy * Lib_GZ::pMath::fSin(_nRoll));
		y = (_nTx * Lib_GZ::pMath::fSin(_nRoll)) + (_nTy * Lib_GZ::pMath::fCos(_nRoll));
		aPoint3D[gzUInt(i)] = x;
		aPoint3D[gzUInt(i + 1)] = y;
		aPoint3D[gzUInt(i + 2)] = z;
	}
	for(gzUInt i = 0; i < aNewPt3dOri->nSize; i++){
		gzSp<Lib_GZ::Base::cPtA> _oPt = gzSCast<Lib_GZ::Base::cPtA>(aNewPt3dOri[gzUInt(i)]);
		_oPt->fCopyToTf();
		_oPt->oTf->nX *= nGAttWidth;
		_oPt->oTf->nY *= nGAttHeight;
		_oPt->oTf->nZ *= nGAttLength;
		_oPt->oTf->fRotate((Lib_GZ::Base::cQuaternion*)(oQuaternion.get()));
	}
}

void cShape::fConvertTo2d(){ gz_(8)
	gzFloat _nFocal = oDstBuff->oPerspective->nValue;
	gzFloat _nX = oGblPt->nX + 0.25;
	gzFloat _nY = oGblPt->nY - 0.25;
	if (oDstBuff->oPerspective->nType == 1){
		for(gzUInt i = 0; i < aNewPt3dOri->nSize; i++){
			gzSp<Lib_GZ::Base::cPtA> _oPt = gzSCast<Lib_GZ::Base::cPtA>(aNewPt3dOri[gzUInt(i)]);
			gzFloat _nZ = ((_oPt->oTf->nZ + oGblPt->nZ) * _nFocal) + gzFloat(1);
			_oPt->o2d->nX = (_oPt->oTf->nX / _nZ) + _nX;
			_oPt->o2d->nY = (_oPt->oTf->nY / _nZ) + _nY;
			_oPt->o2d->nZ = _nZ;
		}
	}else{
		gzFloat _nFromX = oDstBuff->oPerspective->nFromX;
		gzFloat _nFromY = oDstBuff->oPerspective->nFromY;
		for(gzUInt i = 0; i < aNewPt3dOri->nSize; i++){
			gzSp<Lib_GZ::Base::cPtA> _oPt = gzSCast<Lib_GZ::Base::cPtA>(aNewPt3dOri[gzUInt(i)]);
			gzFloat _nZ = ((_oPt->oTf->nZ + oGblPt->nZ) * _nFocal) + gzFloat(1);
			_oPt->o2d->nX = ((_oPt->oTf->nX + (_nX - _nFromX)) / _nZ) - (_nX - _nFromX) + _nX;
			_oPt->o2d->nY = ((_oPt->oTf->nY + (_nY - _nFromY)) / _nZ) - (_nY - _nFromY) + _nY;
			_oPt->o2d->nZ = _nZ;
		}
	}
}

void cShape::fContextResume(){ gz_(9)
	GZ_mIsImplemented("GzNa::Shape::fContextResume")
}

cShape::~cShape(){
	GZ_fFree(aPt3dOri);
	GZ_fFree(aPoint3D);
	GZ_fFree(aPoint2D);
	GZ_fFree(aPtSource);
}



}}