//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Attribute.h"

#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

namespace Lib_GZ{namespace Gfx{namespace Attribute{
}}}


namespace Lib_GZ{namespace Gfx{namespace Attribute{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Attribute
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Attribute"},{0,"WnX"},{0,"WnY"},{0,"WnZ"},{0,"TnX"},{0,"TnY"},{0,"TnZ"},{0,"MnX"},{0,"MnY"},{0,"MnZ"},{0,"LnX"},{0,"LnY"},{0,"LnZ"},{0,"EnX"},{0,"EnY"},{0,"EnZ"},{0,"GnX"},{0,"GnY"},{0,"GnZ"},{0,"fRotationOrder1"},{0,"fRotationOrder2"},{0,"fRotationOrder3"},{0,"WnWidth"},{0,"WnHeight"},{0,"WnLength"},{0,"TnWidth"},{0,"TnHeight"},{0,"TnLength"},{0,"MnWidth"},{0,"MnHeight"},{0,"MnLength"},{0,"LnWidth"},{0,"LnHeight"},{0,"LnLength"},{0,"EnWidth"},{0,"EnHeight"},{0,"EnLength"},{0,"GnWidth"},{0,"GnHeight"},{0,"GnLength"},{0,"WnRoll"},{0,"WnPitch"},{0,"WnYaw"},{0,"TnRoll"},{0,"TnPitch"},{0,"TnYaw"},{0,"MnRoll"},{0,"MnPitch"},{0,"MnYaw"},{0,"LnRoll"},{0,"LnPitch"},{0,"LnYaw"},{0,"EnRoll"},{0,"EnPitch"},{0,"EnYaw"},{0,"GnRoll"},{0,"GnPitch"},{0,"GnYaw"},{0,"WnRed"},{0,"WnBlue"},{0,"WnGreen"},{0,"WnAlpha"},{0,"TnRed"},{0,"TnBlue"},{0,"TnGreen"},{0,"TnAlpha"},{0,"EnRed"},{0,"EnBlue"},{0,"EnGreen"},{0,"EnAlpha"},{0,"GnRed"},{0,"GnBlue"},{0,"GnGreen"},{0,"GnAlpha"},{0,"fApplyColor"},{0,"fApplyPos"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Attribute)

cAttribute::cAttribute(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cRoot(_parent),oGblPt(this),oQuaternion(this)
//Delegate ini
,dRotationOrder(this, &Lib_GZ::Gfx::cAttribute::wRotationOrder1)

{ gz_(0)
	nGAttX=0;nGAttY=0;nGAttZ=0;nGAttRoll=0;nGAttYaw=0;nGAttPitch=0;nGAttRed=0;nGAttGreen=0;nGAttBlue=0;nAttX=0;nAttY=0;nAttZ=0;nAttRoll=0;nAttYaw=0;nAttPitch=0;nAttRed=0;nAttGreen=0;nAttBlue=0;nAttWrap=0;nAttMove=0;
	nGAttWidth = 1.0;
	nGAttHeight = 1.0;
	nGAttLength = 1.0;
	nGAttType = 1.0;
	nGAttAlpha = 1.0;
	nAttWidth = gzFloat(1);
	nAttHeight = gzFloat(1);
	nAttLength = gzFloat(1);
	nAttAlpha = 1.0;
	bUpdateOneTimeColor = false;
	bUpdateEasing = false;
	nAlpha = 0;
	nBrRed = 0;
	nBrBlue = 0;
	nBrGreen = 0;
	nRsBrRed = 0;
	nRsBrBlue = 0;
	nRsBrGreen = 0;
	nRsAlpha = 256;

	//Associate:
	 ua_nAttX.nVal = &nAttX;
	 ua_nAttX.nFracVal = 0;
	 ua_nAttX.nTo = nAttX;
	 ua_nAttX.nSpeed = 1;
	 ua_nAttX.nLimit = GZ_nMaxFloat;
	 ua_nAttY.nVal = &nAttY;
	 ua_nAttY.nFracVal = 0;
	 ua_nAttY.nTo = nAttY;
	 ua_nAttY.nSpeed = 1;
	 ua_nAttY.nLimit = GZ_nMaxFloat;
	 ua_nAttZ.nVal = &nAttZ;
	 ua_nAttZ.nFracVal = 0;
	 ua_nAttZ.nTo = nAttZ;
	 ua_nAttZ.nSpeed = 1;
	 ua_nAttZ.nLimit = GZ_nMaxFloat;
	 ua_nAttRoll.nVal = &nAttRoll;
	 ua_nAttRoll.nFracVal = 0;
	 ua_nAttRoll.nTo = nAttRoll;
	 ua_nAttRoll.nSpeed = 1;
	 ua_nAttRoll.nLimit = GZ_nMaxFloat;
	 ua_nAttYaw.nVal = &nAttYaw;
	 ua_nAttYaw.nFracVal = 0;
	 ua_nAttYaw.nTo = nAttYaw;
	 ua_nAttYaw.nSpeed = 1;
	 ua_nAttYaw.nLimit = GZ_nMaxFloat;
	 ua_nAttPitch.nVal = &nAttPitch;
	 ua_nAttPitch.nFracVal = 0;
	 ua_nAttPitch.nTo = nAttPitch;
	 ua_nAttPitch.nSpeed = 1;
	 ua_nAttPitch.nLimit = GZ_nMaxFloat;
	 ua_nAttWidth.nVal = &nAttWidth;
	 ua_nAttWidth.nFracVal = 0;
	 ua_nAttWidth.nTo = nAttWidth;
	 ua_nAttWidth.nSpeed = 1;
	 ua_nAttWidth.nLimit = GZ_nMaxFloat;
	 ua_nAttHeight.nVal = &nAttHeight;
	 ua_nAttHeight.nFracVal = 0;
	 ua_nAttHeight.nTo = nAttHeight;
	 ua_nAttHeight.nSpeed = 1;
	 ua_nAttHeight.nLimit = GZ_nMaxFloat;
	 ua_nAttLength.nVal = &nAttLength;
	 ua_nAttLength.nFracVal = 0;
	 ua_nAttLength.nTo = nAttLength;
	 ua_nAttLength.nSpeed = 1;
	 ua_nAttLength.nLimit = GZ_nMaxFloat;
	 ua_nAttRed.nVal = &nAttRed;
	 ua_nAttRed.nFracVal = 0;
	 ua_nAttRed.nTo = nAttRed;
	 ua_nAttRed.nSpeed = 1;
	 ua_nAttRed.nLimit = GZ_nMaxFloat;
	 ua_nAttGreen.nVal = &nAttGreen;
	 ua_nAttGreen.nFracVal = 0;
	 ua_nAttGreen.nTo = nAttGreen;
	 ua_nAttGreen.nSpeed = 1;
	 ua_nAttGreen.nLimit = GZ_nMaxFloat;
	 ua_nAttBlue.nVal = &nAttBlue;
	 ua_nAttBlue.nFracVal = 0;
	 ua_nAttBlue.nTo = nAttBlue;
	 ua_nAttBlue.nSpeed = 1;
	 ua_nAttBlue.nLimit = GZ_nMaxFloat;
	 ua_nAttAlpha.nVal = &nAttAlpha;
	 ua_nAttAlpha.nFracVal = 0;
	 ua_nAttAlpha.nTo = nAttAlpha;
	 ua_nAttAlpha.nSpeed = 1;
	 ua_nAttAlpha.nLimit = GZ_nMaxFloat;
	 ua_nAlpha.nVal = &nAlpha;
	 ua_nAlpha.nFracVal = 0;
	 ua_nAlpha.nTo = nAlpha;
	 ua_nAlpha.nSpeed = 1;
	 ua_nAlpha.nLimit = GZ_nMaxFloat;
	 ua_nBrRed.nVal = &nBrRed;
	 ua_nBrRed.nFracVal = 0;
	 ua_nBrRed.nTo = nBrRed;
	 ua_nBrRed.nSpeed = 1;
	 ua_nBrRed.nLimit = GZ_nMaxFloat;
	 ua_nBrBlue.nVal = &nBrBlue;
	 ua_nBrBlue.nFracVal = 0;
	 ua_nBrBlue.nTo = nBrBlue;
	 ua_nBrBlue.nSpeed = 1;
	 ua_nBrBlue.nLimit = GZ_nMaxFloat;
	 ua_nBrGreen.nVal = &nBrGreen;
	 ua_nBrGreen.nFracVal = 0;
	 ua_nBrGreen.nTo = nBrGreen;
	 ua_nBrGreen.nSpeed = 1;
	 ua_nBrGreen.nLimit = GZ_nMaxFloat;

}

void cAttribute::Ini_cAttribute(Lib_GZ::Gfx::cRoot* _oParent){ gz_(0)
	oGblPt->Ini_cPtA(0,0,0);
	oQuaternion->Ini_cQuaternion();
	Ini_cRoot((Lib_GZ::Gfx::cRoot*)(_oParent));
	hRotateOrder = Lib_GZ::Gfx::Attribute::eRotateOrder::YawPitchRoll;
}

void cAttribute::WnX(gzFloat _nVal){ gz_(1)
	nAttX = _nVal;
	GZ_uEase_fTo((ua_nAttX), _nVal);
	nAttWrap = nAttWrap | (1 << 0);
}

void cAttribute::WnY(gzFloat _nVal){ gz_(2)
	nAttY = _nVal;
	GZ_uEase_fTo((ua_nAttY), _nVal);
	nAttWrap = nAttWrap | (1 << 1);
}

void cAttribute::WnZ(gzFloat _nVal){ gz_(3)
	nAttZ = _nVal;
	GZ_uEase_fTo((ua_nAttZ), _nVal);
	nAttWrap = nAttWrap | (1 << 2);
}

void cAttribute::TnX(gzFloat _nVal){ gz_(4)
	GZ_uEase_fTo((ua_nAttX), _nVal);
	nAttMove = nAttMove | (1 << 0);
}

void cAttribute::TnY(gzFloat _nVal){ gz_(5)
	GZ_uEase_fTo((ua_nAttY), _nVal);
	nAttMove = nAttMove | (1 << 1);
}

void cAttribute::TnZ(gzFloat _nVal){ gz_(6)
	GZ_uEase_fTo((ua_nAttZ), _nVal);
	nAttMove = nAttMove | (1 << 2);
}

void cAttribute::MnX(gzFloat _nVal){ gz_(7)
	GZ_uEase_fTo((ua_nAttX), nAttX + _nVal);
	nAttMove = nAttMove | (1 << 0);
}

void cAttribute::MnY(gzFloat _nVal){ gz_(8)
	GZ_uEase_fTo((ua_nAttY), nAttY + _nVal);
	nAttMove = nAttMove | (1 << 1);
}

void cAttribute::MnZ(gzFloat _nVal){ gz_(9)
	GZ_uEase_fTo((ua_nAttZ), nAttZ + _nVal);
	nAttMove = nAttMove | (1 << 2);
}

void cAttribute::LnX(gzFloat _nVal){ gz_(10)
	GZ_uEase_fLimit(&(ua_nAttX), _nVal);
}

void cAttribute::LnY(gzFloat _nVal){ gz_(11)
	GZ_uEase_fLimit(&(ua_nAttY), _nVal);
}

void cAttribute::LnZ(gzFloat _nVal){ gz_(12)
	GZ_uEase_fLimit(&(ua_nAttZ), _nVal);
}

void cAttribute::EnX(gzFloat _nSpeed){ gz_(13)
	GZ_uEase_fSpeed(&(ua_nAttX), _nSpeed);
}

void cAttribute::EnY(gzFloat _nSpeed){ gz_(14)
	GZ_uEase_fSpeed(&(ua_nAttY), _nSpeed);
}

void cAttribute::EnZ(gzFloat _nSpeed){ gz_(15)
	GZ_uEase_fSpeed(&(ua_nAttZ), _nSpeed);
}

gzFloat cAttribute::GnX(){ gz_(16)
	return nAttX;
}

gzFloat cAttribute::GnY(){ gz_(17)
	return nAttY;
}

gzFloat cAttribute::GnZ(){ gz_(18)
	return nAttZ;
}

void cAttribute::fRotationOrder1(){ gz_(19)
	GZ_mIsImplemented("GzNa::Attribute::fRotationOrder1")
}

void cAttribute::fRotationOrder2(){ gz_(20)
	GZ_mIsImplemented("GzNa::Attribute::fRotationOrder2")
}

void cAttribute::fRotationOrder3(){ gz_(21)
	GZ_mIsImplemented("GzNa::Attribute::fRotationOrder3")
}

void cAttribute::WnWidth(gzFloat _nVal){ gz_(22)
	nAttWidth = _nVal;
	GZ_uEase_fTo((ua_nAttWidth), _nVal);
	nAttWrap = nAttWrap | (1 << (0 + 3));
}

void cAttribute::WnHeight(gzFloat _nVal){ gz_(23)
	nAttHeight = _nVal;
	GZ_uEase_fTo((ua_nAttHeight), _nVal);
	nAttWrap = nAttWrap | (1 << (1 + 3));
}

void cAttribute::WnLength(gzFloat _nVal){ gz_(24)
	nAttLength = _nVal;
	GZ_uEase_fTo((ua_nAttLength), _nVal);
	nAttWrap = nAttWrap | (1 << (2 + 3));
}

void cAttribute::TnWidth(gzFloat _nVal){ gz_(25)
	GZ_uEase_fTo((ua_nAttWidth), _nVal);
	nAttMove = nAttMove | (1 << (0 + 3));
}

void cAttribute::TnHeight(gzFloat _nVal){ gz_(26)
	GZ_uEase_fTo((ua_nAttHeight), _nVal);
	nAttMove = nAttMove | (1 << (1 + 3));
}

void cAttribute::TnLength(gzFloat _nVal){ gz_(27)
	GZ_uEase_fTo((ua_nAttLength), _nVal);
	nAttMove = nAttMove | (1 << (2 + 3));
}

void cAttribute::MnWidth(gzFloat _nVal){ gz_(28)
	GZ_uEase_fTo((ua_nAttWidth), nAttWidth + _nVal);
	nAttMove = nAttMove | (1 << 0);
}

void cAttribute::MnHeight(gzFloat _nVal){ gz_(29)
	GZ_uEase_fTo((ua_nAttHeight), nAttHeight + _nVal);
	nAttMove = nAttMove | (1 << 1);
}

void cAttribute::MnLength(gzFloat _nVal){ gz_(30)
	GZ_uEase_fTo((ua_nAttLength), nAttLength + _nVal);
	nAttMove = nAttMove | (1 << 2);
}

void cAttribute::LnWidth(gzFloat _nVal){ gz_(31)
	GZ_uEase_fLimit(&(ua_nAttWidth), _nVal);
}

void cAttribute::LnHeight(gzFloat _nVal){ gz_(32)
	GZ_uEase_fLimit(&(ua_nAttHeight), _nVal);
}

void cAttribute::LnLength(gzFloat _nVal){ gz_(33)
	GZ_uEase_fLimit(&(ua_nAttLength), _nVal);
}

void cAttribute::EnWidth(gzFloat _nSpeed){ gz_(34)
	GZ_uEase_fSpeed(&(ua_nAttWidth), _nSpeed);
}

void cAttribute::EnHeight(gzFloat _nSpeed){ gz_(35)
	GZ_uEase_fSpeed(&(ua_nAttHeight), _nSpeed);
}

void cAttribute::EnLength(gzFloat _nSpeed){ gz_(36)
	GZ_uEase_fSpeed(&(ua_nAttLength), _nSpeed);
}

gzFloat cAttribute::GnWidth(){ gz_(37)
	return nAttWidth;
}

gzFloat cAttribute::GnHeight(){ gz_(38)
	return nAttHeight;
}

gzFloat cAttribute::GnLength(){ gz_(39)
	return nAttLength;
}

void cAttribute::WnRoll(gzFloat _nVal){ gz_(40)
	nAttRoll = _nVal;
	GZ_uEase_fTo((ua_nAttRoll), _nVal);
	nAttWrap = nAttWrap | (1 << (0 + 6));
}

void cAttribute::WnPitch(gzFloat _nVal){ gz_(41)
	nAttPitch = _nVal;
	GZ_uEase_fTo((ua_nAttPitch), _nVal);
	nAttWrap = nAttWrap | (1 << (1 + 6));
}

void cAttribute::WnYaw(gzFloat _nVal){ gz_(42)
	nAttYaw = _nVal;
	GZ_uEase_fTo((ua_nAttYaw), _nVal);
	nAttWrap = nAttWrap | (1 << (2 + 6));
}

void cAttribute::TnRoll(gzFloat _nVal){ gz_(43)
	GZ_uEase_fTo((ua_nAttRoll), _nVal);
	nAttMove = nAttMove | (1 << (0 + 6));
}

void cAttribute::TnPitch(gzFloat _nVal){ gz_(44)
	GZ_uEase_fTo((ua_nAttPitch), _nVal);
	nAttMove = nAttMove | (1 << (1 + 6));
}

void cAttribute::TnYaw(gzFloat _nVal){ gz_(45)
	GZ_uEase_fTo((ua_nAttYaw), _nVal);
	nAttMove = nAttMove | (1 << (2 + 6));
}

void cAttribute::MnRoll(gzFloat _nVal){ gz_(46)
	GZ_uEase_fTo((ua_nAttRoll), nAttRoll + _nVal);
	nAttMove = nAttMove | (1 << 0);
}

void cAttribute::MnPitch(gzFloat _nVal){ gz_(47)
	GZ_uEase_fTo((ua_nAttPitch), nAttPitch + _nVal);
	nAttMove = nAttMove | (1 << 1);
}

void cAttribute::MnYaw(gzFloat _nVal){ gz_(48)
	GZ_uEase_fTo((ua_nAttYaw), nAttYaw + _nVal);
	nAttMove = nAttMove | (1 << 2);
}

void cAttribute::LnRoll(gzFloat _nVal){ gz_(49)
	GZ_uEase_fLimit(&(ua_nAttRoll), _nVal);
}

void cAttribute::LnPitch(gzFloat _nVal){ gz_(50)
	GZ_uEase_fLimit(&(ua_nAttPitch), _nVal);
}

void cAttribute::LnYaw(gzFloat _nVal){ gz_(51)
	GZ_uEase_fLimit(&(ua_nAttYaw), _nVal);
}

void cAttribute::EnRoll(gzFloat _nSpeed){ gz_(52)
	GZ_uEase_fSpeed(&(ua_nAttRoll), _nSpeed);
}

void cAttribute::EnPitch(gzFloat _nSpeed){ gz_(53)
	GZ_uEase_fSpeed(&(ua_nAttPitch), _nSpeed);
}

void cAttribute::EnYaw(gzFloat _nSpeed){ gz_(54)
	GZ_uEase_fSpeed(&(ua_nAttYaw), _nSpeed);
}

gzFloat cAttribute::GnRoll(){ gz_(55)
	return nAttRoll;
}

gzFloat cAttribute::GnPitch(){ gz_(56)
	return nAttPitch;
}

gzFloat cAttribute::GnYaw(){ gz_(57)
	return nAttYaw;
}

void cAttribute::WnRed(gzFloat _nVal){ gz_(58)
	nAttRed = _nVal;
	GZ_uEase_fTo((ua_nAttRed), _nVal);
	nAttWrap = nAttWrap | (1 << (0 + 9));
}

void cAttribute::WnBlue(gzFloat _nVal){ gz_(59)
	nAttBlue = _nVal;
	GZ_uEase_fTo((ua_nAttBlue), _nVal);
	nAttWrap = nAttWrap | (1 << (1 + 9));
}

void cAttribute::WnGreen(gzFloat _nVal){ gz_(60)
	nAttGreen = _nVal;
	GZ_uEase_fTo((ua_nAttGreen), _nVal);
	nAttWrap = nAttWrap | (1 << (2 + 9));
}

void cAttribute::WnAlpha(gzFloat _nVal){ gz_(61)
	nAttAlpha = _nVal;
	GZ_uEase_fTo((ua_nAttAlpha), _nVal);
	nAttWrap = nAttWrap | (1 << (3 + 9));
}

void cAttribute::TnRed(gzFloat _nVal){ gz_(62)
	GZ_uEase_fTo((ua_nAttRed), _nVal);
	nAttMove = nAttMove | (1 << (0 + 9));
}

void cAttribute::TnBlue(gzFloat _nVal){ gz_(63)
	GZ_uEase_fTo((ua_nAttBlue), _nVal);
	nAttMove = nAttMove | (1 << (1 + 9));
}

void cAttribute::TnGreen(gzFloat _nVal){ gz_(64)
	GZ_uEase_fTo((ua_nAttGreen), _nVal);
	nAttMove = nAttMove | (1 << (2 + 9));
}

void cAttribute::TnAlpha(gzFloat _nVal){ gz_(65)
	GZ_uEase_fTo((ua_nAttAlpha), _nVal);
	nAttMove = nAttMove | (1 << (2 + 9));
}

void cAttribute::EnRed(gzFloat _nSpeed){ gz_(66)
	GZ_uEase_fSpeed(&(ua_nAttRed), _nSpeed);
}

void cAttribute::EnBlue(gzFloat _nSpeed){ gz_(67)
	GZ_uEase_fSpeed(&(ua_nAttBlue), _nSpeed);
}

void cAttribute::EnGreen(gzFloat _nSpeed){ gz_(68)
	GZ_uEase_fSpeed(&(ua_nAttGreen), _nSpeed);
}

void cAttribute::EnAlpha(gzFloat _nSpeed){ gz_(69)
	GZ_uEase_fSpeed(&(ua_nAttAlpha), _nSpeed);
}

gzFloat cAttribute::GnRed(){ gz_(70)
	return nAttRed;
}

gzFloat cAttribute::GnBlue(){ gz_(71)
	return nAttBlue;
}

gzFloat cAttribute::GnGreen(){ gz_(72)
	return nAttGreen;
}

gzFloat cAttribute::GnAlpha(){ gz_(73)
	return nAttAlpha;
}

void cAttribute::fApplyColor(){ gz_(74)
	GZ_uEase_fStep(&(ua_nAttX));
	GZ_uEase_fStep(&(ua_nAttY));
	GZ_uEase_fStep(&(ua_nAttZ));
	GZ_uEase_fStep(&(ua_nAttWidth));
	GZ_uEase_fStep(&(ua_nAttHeight));
	GZ_uEase_fStep(&(ua_nAttLength));
	GZ_uEase_fStep(&(ua_nAttRed));
	GZ_uEase_fStep(&(ua_nAttGreen));
	GZ_uEase_fStep(&(ua_nAttBlue));
	GZ_uEase_fStep(&(ua_nAttAlpha));
	GZ_uEase_fStep(&(ua_nAttRoll));
	GZ_uEase_fStep(&(ua_nAttYaw));
	GZ_uEase_fStep(&(ua_nAttPitch));
	oQuaternion->fReset();
	if (gzInt(hRotateOrder) == Lib_GZ::Gfx::Attribute::eRotateOrder::RollYawPitch){
		oQuaternion->fRoll(nAttRoll);
		oQuaternion->fYaw(nAttYaw);
		oQuaternion->fPitch(nAttPitch * gzFloat(-1));
	}else{
		oQuaternion->fYaw(nAttYaw);
		oQuaternion->fPitch(nAttPitch * gzFloat(-1));
		oQuaternion->fRoll(nAttRoll);
	}
	oQuaternion->fCombine((Lib_GZ::Base::cQuaternion*)(oParent->oQuaternion.get()));
}

void cAttribute::fApplyPos(){ gz_(75)
	oGblPt->nX = nAttX * oParent->nGAttWidth;
	oGblPt->nY = nAttY * oParent->nGAttHeight;
	oGblPt->nZ = nAttZ * oParent->nGAttLength;
	oGblPt->fRotate((Lib_GZ::Base::cQuaternion*)(oParent->oQuaternion.get()));
	oGblPt->nX += oParent->oGblPt->nX;
	oGblPt->nY += oParent->oGblPt->nY;
	oGblPt->nZ += oParent->oGblPt->nZ;
	nGAttRoll = nAttRoll + oParent->nGAttRoll;
	nGAttYaw = nAttYaw + oParent->nGAttYaw;
	nGAttPitch = nAttPitch + oParent->nGAttPitch;
	nGAttRed = nAttRed + oParent->nGAttRed;
	nGAttGreen = nAttGreen + oParent->nGAttGreen;
	nGAttBlue = nAttBlue + oParent->nGAttBlue;
	nGAttWidth = nAttWidth * oParent->nGAttWidth;
	nGAttHeight = nAttHeight * oParent->nGAttHeight;
	nGAttLength = nAttLength * oParent->nGAttLength;
	nGAttAlpha = nAttAlpha * oParent->nGAttAlpha;
}

cAttribute::~cAttribute(){
}



//Unit creation
Lib_GZ::Gfx::Attribute::uColor* Attribute::tNew_uColor(){
	GZ_mIniStructureNV(_oRtu,uColor);
	//Var Ini : 
	return _oRtu;
}
//Unit array write
Lib_GZ::Gfx::Attribute::uColor* Attribute::tAw_uColor(ArrayPtr* _aArray, unsigned int _nIndex){
	if(_nIndex >  _aArray->size){
	}
	if(_aArray->array[_nIndex] == 0){ //undefined
	uColor* _rNewRtu = tNew_uColor();
	_aArray->array[_nIndex] = (ArrayPtr*)_rNewRtu;
	return _rNewRtu;
	}
	return (uColor*)_aArray->array[_nIndex];
}
//Unit destruction
void Attribute::tDel_uColor(void* _oRtu){
	GZ_fFree(((uColor*)_oRtu));
}
}}