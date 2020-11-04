#if !( defined tHDef_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Attribute
#define tHDef_IN_Lib_GZ_Gfx_Attribute
namespace Lib_GZ{namespace Gfx{class cAttribute;}}

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "_Attribute.h"
#include "Lib_GZ/Gfx/Root.h"
namespace Lib_GZ{namespace Gfx{namespace Attribute{

//Structure Definition
struct uColor; struct _uColor; 
}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/_Attribute.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

/////Delegate InterCompatible  /////

#ifndef GZ_r_void_p_No
#define GZ_r_void_p_No
namespace Lib_GZ{GZ_mIComp(_r_void_p_No);}
#endif

/////////////////////////////////

namespace Lib_GZ{namespace Gfx{namespace Attribute{


	namespace Dlg_fRotationOrder1_r_void_p_No{
		///////
		GZ_mDlgIni(void, GZ_PARAM){return ;};
		 class Dlg { GZ_mDlgClass(_r_void_p_No)
			///////////////////
			inline  void fCall(){
				GZ_mDlgCall(GZ_PARAM);
			 }
		};
	}

	//Structure Implementation
	struct uColor { gzUInt nNbIns; gzFloat nA; gzFloat nR; gzFloat nG; gzFloat nB; };struct _uColor { gzFloat nA; gzFloat nR; gzFloat nG; gzFloat nB; };

	//Unit creation
	uColor* tNew_uColor();
	//Unit destruction
	void tDel_uColor(void* _oRtu);
	//Unit array write
	uColor* tAw_uColor(ArrayPtr* _aArray, unsigned int _nIndex);

}
class tApi_Lib_GZ pAttribute {

	public:
	//Pure Function

};

class tApi_Lib_GZ cAttribute : public Lib_GZ::Gfx::cRoot {

	public:

		//Delegate Ref


		//Var
		Lib_GZ::Gfx::Attribute::eRotateOrder hRotateOrder;
		gzFloat nGAttX;
		gzFloat nGAttY;
		gzFloat nGAttZ;
		gzEmbed<Lib_GZ::Base::cPtA> oGblPt;
		gzFloat nGAttRoll;
		gzFloat nGAttYaw;
		gzFloat nGAttPitch;
		gzFloat nGAttWidth;
		gzFloat nGAttHeight;
		gzFloat nGAttLength;
		gzFloat nGAttType;
		gzEmbed<Lib_GZ::Base::cQuaternion> oQuaternion;
		gzFloat nGAttRed;
		gzFloat nGAttGreen;
		gzFloat nGAttBlue;
		gzFloat nGAttAlpha;
		gzBool bUpdateOneTimeColor;
		gzBool bUpdateEasing;
		gzInt nAlpha;
		gzInt nBrRed;
		gzInt nBrBlue;
		gzInt nBrGreen;
		gzInt nRsBrRed;
		gzInt nRsBrBlue;
		gzInt nRsBrGreen;
		gzInt nRsAlpha;
		cAttribute(Lib_GZ::cBase* _parent);
		virtual void Ini_cAttribute(Lib_GZ::Gfx::cRoot* _oParent);
		virtual void WnX(gzFloat _nVal);
		virtual void WnY(gzFloat _nVal);
		virtual void WnZ(gzFloat _nVal);
		virtual void TnX(gzFloat _nVal);
		virtual void TnY(gzFloat _nVal);
		virtual void TnZ(gzFloat _nVal);
		virtual void MnX(gzFloat _nVal);
		virtual void MnY(gzFloat _nVal);
		virtual void MnZ(gzFloat _nVal);
		virtual void LnX(gzFloat _nVal);
		virtual void LnY(gzFloat _nVal);
		virtual void LnZ(gzFloat _nVal);
		virtual void EnX(gzFloat _nSpeed);
		virtual void EnY(gzFloat _nSpeed);
		virtual void EnZ(gzFloat _nSpeed);
		virtual gzFloat GnX();
		virtual gzFloat GnY();
		virtual gzFloat GnZ();
		inline static void wRotationOrder1(GZ_FuncWrapM){((cAttribute*)_w)->fRotationOrder1();}
		void fRotationOrder1();
		virtual void fRotationOrder2();
		virtual void fRotationOrder3();
		virtual void WnWidth(gzFloat _nVal);
		virtual void WnHeight(gzFloat _nVal);
		virtual void WnLength(gzFloat _nVal);
		virtual void TnWidth(gzFloat _nVal);
		virtual void TnHeight(gzFloat _nVal);
		virtual void TnLength(gzFloat _nVal);
		virtual void MnWidth(gzFloat _nVal);
		virtual void MnHeight(gzFloat _nVal);
		virtual void MnLength(gzFloat _nVal);
		virtual void LnWidth(gzFloat _nVal);
		virtual void LnHeight(gzFloat _nVal);
		virtual void LnLength(gzFloat _nVal);
		virtual void EnWidth(gzFloat _nSpeed);
		virtual void EnHeight(gzFloat _nSpeed);
		virtual void EnLength(gzFloat _nSpeed);
		virtual gzFloat GnWidth();
		virtual gzFloat GnHeight();
		virtual gzFloat GnLength();
		virtual void WnRoll(gzFloat _nVal);
		virtual void WnPitch(gzFloat _nVal);
		virtual void WnYaw(gzFloat _nVal);
		virtual void TnRoll(gzFloat _nVal);
		virtual void TnPitch(gzFloat _nVal);
		virtual void TnYaw(gzFloat _nVal);
		virtual void MnRoll(gzFloat _nVal);
		virtual void MnPitch(gzFloat _nVal);
		virtual void MnYaw(gzFloat _nVal);
		virtual void LnRoll(gzFloat _nVal);
		virtual void LnPitch(gzFloat _nVal);
		virtual void LnYaw(gzFloat _nVal);
		virtual void EnRoll(gzFloat _nSpeed);
		virtual void EnPitch(gzFloat _nSpeed);
		virtual void EnYaw(gzFloat _nSpeed);
		virtual gzFloat GnRoll();
		virtual gzFloat GnPitch();
		virtual gzFloat GnYaw();
		virtual void WnRed(gzFloat _nVal);
		virtual void WnBlue(gzFloat _nVal);
		virtual void WnGreen(gzFloat _nVal);
		virtual void WnAlpha(gzFloat _nVal);
		virtual void TnRed(gzFloat _nVal);
		virtual void TnBlue(gzFloat _nVal);
		virtual void TnGreen(gzFloat _nVal);
		virtual void TnAlpha(gzFloat _nVal);
		virtual void EnRed(gzFloat _nSpeed);
		virtual void EnBlue(gzFloat _nSpeed);
		virtual void EnGreen(gzFloat _nSpeed);
		virtual void EnAlpha(gzFloat _nSpeed);
		virtual gzFloat GnRed();
		virtual gzFloat GnBlue();
		virtual gzFloat GnGreen();
		virtual gzFloat GnAlpha();
		virtual void fApplyColor();
		virtual void fApplyPos();

		inline cAttribute(const cAttribute &_o)  : Lib_GZ::Gfx::cRoot(_o), hRotateOrder(), nGAttX(_o.nGAttX), nGAttY(_o.nGAttY), nGAttZ(_o.nGAttZ), oGblPt(_o.oGblPt), nGAttRoll(_o.nGAttRoll), nGAttYaw(_o.nGAttYaw), nGAttPitch(_o.nGAttPitch), nGAttWidth(_o.nGAttWidth), nGAttHeight(_o.nGAttHeight), nGAttLength(_o.nGAttLength), nGAttType(_o.nGAttType), oQuaternion(_o.oQuaternion), nGAttRed(_o.nGAttRed), nGAttGreen(_o.nGAttGreen), nGAttBlue(_o.nGAttBlue), nGAttAlpha(_o.nGAttAlpha), nAttX(_o.nAttX), nAttY(_o.nAttY), nAttZ(_o.nAttZ), nAttRoll(_o.nAttRoll), nAttYaw(_o.nAttYaw), nAttPitch(_o.nAttPitch), nAttWidth(_o.nAttWidth), nAttHeight(_o.nAttHeight), nAttLength(_o.nAttLength), nAttRed(_o.nAttRed), nAttGreen(_o.nAttGreen), nAttBlue(_o.nAttBlue), nAttAlpha(_o.nAttAlpha), nAttWrap(_o.nAttWrap), nAttMove(_o.nAttMove), bUpdateOneTimeColor(_o.bUpdateOneTimeColor), bUpdateEasing(_o.bUpdateEasing), nAlpha(_o.nAlpha), nBrRed(_o.nBrRed), nBrBlue(_o.nBrBlue), nBrGreen(_o.nBrGreen), nRsBrRed(_o.nRsBrRed), nRsBrBlue(_o.nRsBrBlue), nRsBrGreen(_o.nRsBrGreen), nRsAlpha(_o.nRsAlpha), dRotationOrder(){};
		inline cAttribute(const cAttribute &_o, gzBool _b)  : Lib_GZ::Gfx::cRoot(_o, _b), hRotateOrder(), nGAttX(_o.nGAttX), nGAttY(_o.nGAttY), nGAttZ(_o.nGAttZ), oGblPt(_o.oGblPt), nGAttRoll(_o.nGAttRoll), nGAttYaw(_o.nGAttYaw), nGAttPitch(_o.nGAttPitch), nGAttWidth(_o.nGAttWidth), nGAttHeight(_o.nGAttHeight), nGAttLength(_o.nGAttLength), nGAttType(_o.nGAttType), oQuaternion(_o.oQuaternion), nGAttRed(_o.nGAttRed), nGAttGreen(_o.nGAttGreen), nGAttBlue(_o.nGAttBlue), nGAttAlpha(_o.nGAttAlpha), nAttX(_o.nAttX), nAttY(_o.nAttY), nAttZ(_o.nAttZ), nAttRoll(_o.nAttRoll), nAttYaw(_o.nAttYaw), nAttPitch(_o.nAttPitch), nAttWidth(_o.nAttWidth), nAttHeight(_o.nAttHeight), nAttLength(_o.nAttLength), nAttRed(_o.nAttRed), nAttGreen(_o.nAttGreen), nAttBlue(_o.nAttBlue), nAttAlpha(_o.nAttAlpha), nAttWrap(_o.nAttWrap), nAttMove(_o.nAttMove), bUpdateOneTimeColor(_o.bUpdateOneTimeColor), bUpdateEasing(_o.bUpdateEasing), nAlpha(_o.nAlpha), nBrRed(_o.nBrRed), nBrBlue(_o.nBrBlue), nBrGreen(_o.nBrGreen), nRsBrRed(_o.nRsBrRed), nRsBrBlue(_o.nRsBrBlue), nRsBrGreen(_o.nRsBrGreen), nRsAlpha(_o.nRsAlpha), dRotationOrder(){};
		virtual ~cAttribute();


		//Associate:
		GZ_uEase_gzFloat32 ua_nAttX;
		GZ_uEase_gzFloat32 ua_nAttY;
		GZ_uEase_gzFloat32 ua_nAttZ;
		GZ_uEase_gzFloat32 ua_nAttRoll;
		GZ_uEase_gzFloat32 ua_nAttYaw;
		GZ_uEase_gzFloat32 ua_nAttPitch;
		GZ_uEase_gzFloat32 ua_nAttWidth;
		GZ_uEase_gzFloat32 ua_nAttHeight;
		GZ_uEase_gzFloat32 ua_nAttLength;
		GZ_uEase_gzFloat32 ua_nAttRed;
		GZ_uEase_gzFloat32 ua_nAttGreen;
		GZ_uEase_gzFloat32 ua_nAttBlue;
		GZ_uEase_gzFloat32 ua_nAttAlpha;
		GZ_uEase_gzInt32 ua_nAlpha;
		GZ_uEase_gzInt32 ua_nBrRed;
		GZ_uEase_gzInt32 ua_nBrBlue;
		GZ_uEase_gzInt32 ua_nBrGreen;
	private:

		//Var
		gzFloat nAttX;
		gzFloat nAttY;
		gzFloat nAttZ;
		gzFloat nAttRoll;
		gzFloat nAttYaw;
		gzFloat nAttPitch;
		gzFloat nAttWidth;
		gzFloat nAttHeight;
		gzFloat nAttLength;
		gzFloat nAttRed;
		gzFloat nAttGreen;
		gzFloat nAttBlue;
		gzFloat nAttAlpha;
		gzUInt nAttWrap;
		gzUInt nAttMove;
		Attribute::Dlg_fRotationOrder1_r_void_p_No::Dlg dRotationOrder;

};
class tApi_Lib_GZ csAttribute : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cAttribute> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent){
			gzSp<cAttribute>_oTemp = gzSp<cAttribute>(new cAttribute(_parent));
			_oTemp->Ini_cAttribute(_oParent);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csAttribute(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csAttribute(){};
};
GZ_mStaticClass(Attribute)
namespace Attribute{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Attribute
#endif