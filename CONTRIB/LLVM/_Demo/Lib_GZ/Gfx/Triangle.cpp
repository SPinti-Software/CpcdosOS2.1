//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Triangle.h"

#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Shape.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gfx{namespace Triangle{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Triangle
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Triangle"},{0,"fFindXFromLinePt"},{0,"fFindAngle"},{0,"fDraw"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Triangle)

cTriangle::cTriangle(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	
	nLimitSourceWidth = 0;
	nLimitSourceHeight = 0;
	nDrawDir = 1;
	aPtA = 0;
	aPtB = 0;
	aPtC = 0;
	aPtT = 0;
	aPtM = 0;
	aPtL = 0;
	aPtSA = 0;
	aPtSB = 0;
	aPtSC = 0;
	aPtST = 0;
	aPtSM = 0;
	aPtSL = 0;
	bOneSeg = false;

}

void cTriangle::Ini_cTriangle(gzFloat* _oPtA, gzFloat* _oPtB, gzFloat* _oPtC, gzFloat* _aPtSA, gzFloat* _aPtSB, gzFloat* _aPtSC){ gz_(0)
}

gzFloat csTriangle::fFindXFromLinePt(Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2, gzFloat _nY){ gz_(1)
	gzFloat _nRelY = _oPt1->nY - _nY;
	return _oPt1->nX - (_nRelY / Lib_GZ::pMath::fTan(Lib_GZ::Gfx::Triangle::Get(thread)->fFindAngle((Lib_GZ::Base::cPt*)(_oPt1), (Lib_GZ::Base::cPt*)(_oPt2))));
}

gzFloat csTriangle::fFindAngle(Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2){ gz_(2)
	return Lib_GZ::pMath::fATan2(_oPt1->nY - _oPt2->nY, _oPt1->nX - _oPt2->nX);
}

void csTriangle::fDraw(Lib_GZ::Base::cPt* _oPtA, Lib_GZ::Base::cPt* _oPtB, Lib_GZ::Base::cPt* _oPtC, Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSA, Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSB, Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSC, gzInt _nPosX, gzInt _nPosY, gzInt32** _aPixelArray, gzUInt _nSWidth, gzUInt _nSHeight, Lib_GZ::Gfx::cObject* _oSource, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nRsAlpha, gzUInt _nRsBrRed, gzUInt _nRsBrGreen, gzUInt _nRsBrBlue, gzUInt _nRsRevRed, gzUInt _nRsRevBlue, gzUInt _nRsRevGreen, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen, gzBool _bNothingRight){ gz_(3)
	gzSp<Lib_GZ::Base::cPt> _oPtT;
	gzSp<Lib_GZ::Base::cPt> _oPtM;
	gzSp<Lib_GZ::Base::cPt> _oPtL;
	Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtST;
	Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSM;
	Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSL;
	if (_oPtA->nY <= _oPtB->nY && _oPtA->nY < _oPtC->nY){
		_oPtT = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtA);
		_aPtST = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSA);
		if (_oPtB->nY < _oPtC->nY){
			_oPtM = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtB);
			_oPtL = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtC);
			_aPtSM = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSB);
			_aPtSL = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSC);
		}else{
			_oPtM = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtC);
			_oPtL = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtB);
			_aPtSM = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSC);
			_aPtSL = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSB);
		}
	}else if (_oPtB->nY < _oPtA->nY && _oPtB->nY < _oPtC->nY){
		_oPtT = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtB);
		_aPtST = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSB);
		if (_oPtA->nY < _oPtC->nY){
			_oPtM = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtA);
			_oPtL = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtC);
			_aPtSM = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSA);
			_aPtSL = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSC);
		}else{
			_oPtM = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtC);
			_oPtL = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtA);
			_aPtSM = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSC);
			_aPtSL = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSA);
		}
	}else{
		_oPtT = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtC);
		_aPtST = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSC);
		if (_oPtA->nY < _oPtB->nY){
			_oPtM = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtA);
			_oPtL = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtB);
			_aPtSM = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSA);
			_aPtSL = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSB);
		}else{
			_oPtM = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtB);
			_oPtL = gzSCastSelf<Lib_GZ::Base::cPt>(_oPtA);
			_aPtSM = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSB);
			_aPtSL = (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSA);
		}
	}
	gzInt _nDrawDir = 1;
	gzFloat _nCutLineX = Lib_GZ::Gfx::Triangle::Get(thread)->fFindXFromLinePt((Lib_GZ::Base::cPt*)(_oPtT.get()), (Lib_GZ::Base::cPt*)(_oPtL.get()), _oPtM->nY);
	if (_nCutLineX < _oPtM->nX){
		_nDrawDir = -1;
	}else{
		_nDrawDir = 1;
	}
	_nSWidth = gzUInt(((gzFloat(_nSWidth) + (gzFloat(2) * 1.0)) * 256.0) - gzFloat(129));
	_nSHeight = gzUInt(((gzFloat(_nSHeight) + (gzFloat(2) * 1.0)) * 256.0) - gzFloat(129));
	gzInt _nFirst = 0;
	Lib_GZ::Gfx::pPixel::fDrawSegTri(_nDrawDir, (Lib_GZ::Base::cPt*)(_oPtT.get()), (Lib_GZ::Base::cPt*)(_oPtL.get()), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtST), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSL), (Lib_GZ::Base::cPt*)(_oPtT.get()), (Lib_GZ::Base::cPt*)(_oPtM.get()), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtST), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSM), (gzInt32**)(_oSource->aPixelArray), (gzInt32**)(_aPixelArray), _nPosX, _nPosY, _nX_Start, _nX_End, _nY_Start, _nY_End, _nSWidth, _nSHeight, 0, _nRsAlpha, _nRsBrRed, _nRsBrGreen, _nRsBrBlue, _nRsRevRed, _nRsRevBlue, _nRsRevGreen, _nOfRevRed, _nOfRevBlue, _nOfRevGreen, _nFirst, _bNothingRight);
	_nFirst = Lib_GZ::Math::nPrec;
	Lib_GZ::Gfx::pPixel::fDrawSegTri(_nDrawDir, (Lib_GZ::Base::cPt*)(_oPtT.get()), (Lib_GZ::Base::cPt*)(_oPtL.get()), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtST), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSL), (Lib_GZ::Base::cPt*)(_oPtM.get()), (Lib_GZ::Base::cPt*)(_oPtL.get()), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSM), (Lib_GZ::Gfx::Triangle::_uPoint3D*)(_aPtSL), (gzInt32**)(_oSource->aPixelArray), (gzInt32**)(_aPixelArray), _nPosX, _nPosY, _nX_Start, _nX_End, _nY_Start, _nY_End, _nSWidth, _nSHeight, 0, _nRsAlpha, _nRsBrRed, _nRsBrGreen, _nRsBrBlue, _nRsRevRed, _nRsRevBlue, _nRsRevGreen, _nOfRevRed, _nOfRevBlue, _nOfRevGreen, _nFirst, _bNothingRight);
}

gzAny cTriangle::MemCopy(){
return (gzAny)new cTriangle(*this);
}
gzAny cTriangle::DeepCopy(){
return (gzAny)new cTriangle(*this, true);
}
cTriangle::~cTriangle(){
}



//Unit creation
Lib_GZ::Gfx::Triangle::uPoint3D* Triangle::tNew_uPoint3D(){
	GZ_mIniStructureNV(_oRtu,uPoint3D);
	//Var Ini : 
	return _oRtu;
}
Lib_GZ::Gfx::Triangle::uPoint2D* Triangle::tNew_uPoint2D(){
	GZ_mIniStructureNV(_oRtu,uPoint2D);
	//Var Ini : 
	return _oRtu;
}
//Unit array write
Lib_GZ::Gfx::Triangle::uPoint3D* Triangle::tAw_uPoint3D(ArrayPtr* _aArray, unsigned int _nIndex){
	if(_nIndex >  _aArray->size){
	}
	if(_aArray->array[_nIndex] == 0){ //undefined
	uPoint3D* _rNewRtu = tNew_uPoint3D();
	_aArray->array[_nIndex] = (ArrayPtr*)_rNewRtu;
	return _rNewRtu;
	}
	return (uPoint3D*)_aArray->array[_nIndex];
}
Lib_GZ::Gfx::Triangle::uPoint2D* Triangle::tAw_uPoint2D(ArrayPtr* _aArray, unsigned int _nIndex){
	if(_nIndex >  _aArray->size){
	}
	if(_aArray->array[_nIndex] == 0){ //undefined
	uPoint2D* _rNewRtu = tNew_uPoint2D();
	_aArray->array[_nIndex] = (ArrayPtr*)_rNewRtu;
	return _rNewRtu;
	}
	return (uPoint2D*)_aArray->array[_nIndex];
}
//Unit destruction
void Triangle::tDel_uPoint3D(void* _oRtu){
	GZ_fFree(((uPoint3D*)_oRtu));
}
void Triangle::tDel_uPoint2D(void* _oRtu){
	GZ_fFree(((uPoint2D*)_oRtu));
}
}}