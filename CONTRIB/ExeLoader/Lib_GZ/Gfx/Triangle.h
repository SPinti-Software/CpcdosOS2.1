#if !( defined tHDef_Lib_GZ_Gfx_Triangle || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Triangle
namespace Lib_GZ{namespace Gfx{class cTriangle;}}

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
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Gfx{namespace Triangle{

//Structure Definition
struct uPoint3D; struct _uPoint3D; struct uPoint2D; struct _uPoint2D; 
}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cPixel;}}
#include "Lib_GZ/Gfx/_Shape.h"
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Gfx{class cTriangle; namespace Triangle {struct uPoint3D; struct _uPoint3D; struct uPoint2D; struct _uPoint2D; }}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Triangle{


	//Structure Implementation
	struct uPoint3D { gzUInt nNbIns; gzFloat nX; gzFloat nY; gzFloat nZ; };struct _uPoint3D { gzFloat nX; gzFloat nY; gzFloat nZ; };
	struct uPoint2D { gzUInt nNbIns; gzFloat nX; gzFloat nY; };struct _uPoint2D { gzFloat nX; gzFloat nY; };

	//Unit creation
	uPoint3D* tNew_uPoint3D();
	uPoint2D* tNew_uPoint2D();
	//Unit destruction
	void tDel_uPoint3D(void* _oRtu);
	void tDel_uPoint2D(void* _oRtu);
	//Unit array write
	uPoint3D* tAw_uPoint3D(ArrayPtr* _aArray, unsigned int _nIndex);
	uPoint2D* tAw_uPoint2D(ArrayPtr* _aArray, unsigned int _nIndex);

}
class tApi_Lib_GZ pTriangle {

	public:
	//Pure Function

};

class tApi_Lib_GZ cTriangle : public Lib_GZ::cClass {

	public:


		//Var
		gzInt nLimitSourceWidth;
		gzInt nLimitSourceHeight;
		gzInt nDrawDir;
		gzFloat* aPtA;
		gzFloat* aPtB;
		gzFloat* aPtC;
		gzFloat* aPtT;
		gzFloat* aPtM;
		gzFloat* aPtL;
		gzFloat* aPtSA;
		gzFloat* aPtSB;
		gzFloat* aPtSC;
		gzFloat* aPtST;
		gzFloat* aPtSM;
		gzFloat* aPtSL;
		gzSp<Lib_GZ::Base::cPt> oPtA;
		gzSp<Lib_GZ::Base::cPt> oPtB;
		gzSp<Lib_GZ::Base::cPt> oPtC;
		gzSp<Lib_GZ::Base::cPt> oPtT;
		gzSp<Lib_GZ::Base::cPt> oPtM;
		gzSp<Lib_GZ::Base::cPt> oPtL;
		gzBool bOneSeg;
		cTriangle(Lib_GZ::cBase* _parent);
		virtual void Ini_cTriangle(gzFloat* _oPtA, gzFloat* _oPtB, gzFloat* _oPtC, gzFloat* _aPtSA, gzFloat* _aPtSB, gzFloat* _aPtSC);

		inline cTriangle(const cTriangle &_o)  : Lib_GZ::cClass(_o), nLimitSourceWidth(_o.nLimitSourceWidth), nLimitSourceHeight(_o.nLimitSourceHeight), nDrawDir(_o.nDrawDir), aPtA(), aPtB(), aPtC(), aPtT(), aPtM(), aPtL(), aPtSA(), aPtSB(), aPtSC(), aPtST(), aPtSM(), aPtSL(), oPtA(), oPtB(), oPtC(), oPtT(), oPtM(), oPtL(), bOneSeg(_o.bOneSeg){};
		inline cTriangle(const cTriangle &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), nLimitSourceWidth(_o.nLimitSourceWidth), nLimitSourceHeight(_o.nLimitSourceHeight), nDrawDir(_o.nDrawDir), aPtA(), aPtB(), aPtC(), aPtT(), aPtM(), aPtL(), aPtSA(), aPtSB(), aPtSC(), aPtST(), aPtSM(), aPtSL(), oPtA(), oPtB(), oPtC(), oPtT(), oPtM(), oPtL(), bOneSeg(_o.bOneSeg){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cTriangle();

	private:

		//Var

};
class tApi_Lib_GZ csTriangle : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cTriangle> New(Lib_GZ::cBase* _parent, gzFloat* _oPtA, gzFloat* _oPtB, gzFloat* _oPtC, gzFloat* _aPtSA, gzFloat* _aPtSB, gzFloat* _aPtSC){
			gzSp<cTriangle>_oTemp = gzSp<cTriangle>(new cTriangle(_parent));
			_oTemp->Ini_cTriangle(_oPtA, _oPtB, _oPtC, _aPtSA, _aPtSB, _aPtSC);
			return _oTemp;
		}
		//Public static

		//Static function
		virtual gzFloat fFindXFromLinePt(Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2, gzFloat _nY);
		virtual gzFloat fFindAngle(Lib_GZ::Base::cPt* _oPt1, Lib_GZ::Base::cPt* _oPt2);
		virtual void fDraw(Lib_GZ::Base::cPt* _oPtA, Lib_GZ::Base::cPt* _oPtB, Lib_GZ::Base::cPt* _oPtC, Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSA, Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSB, Lib_GZ::Gfx::Triangle::_uPoint3D* _aPtSC, gzInt _nPosX, gzInt _nPosY, gzInt32** _aPixelArray, gzUInt _nSWidth, gzUInt _nSHeight, Lib_GZ::Gfx::cObject* _oSource, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nRsAlpha, gzUInt _nRsBrRed, gzUInt _nRsBrGreen, gzUInt _nRsBrBlue, gzUInt _nRsRevRed, gzUInt _nRsRevBlue, gzUInt _nRsRevGreen, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen, gzBool _bNothingRight = false);

		inline csTriangle(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csTriangle(){};
};
GZ_mStaticClass(Triangle)
namespace Triangle{
}}}
#endif