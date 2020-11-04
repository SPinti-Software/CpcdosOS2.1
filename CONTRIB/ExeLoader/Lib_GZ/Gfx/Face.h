#if !( defined tHDef_Lib_GZ_Gfx_Face || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Face
namespace Lib_GZ{namespace Gfx{class cFace;}}

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
#include "_Face.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Gfx{namespace Face{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Shape.h"
#include "Lib_GZ/Gfx/_Root.h"
namespace Lib_GZ{namespace Gfx{class cTriangle; namespace Triangle {struct uPoint3D; struct _uPoint3D; struct uPoint2D; struct _uPoint2D; }}}
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuFace;}}}
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace File{class cRcImg;}}
namespace Lib_GZ{namespace Base{class cPtA;}}
namespace Lib_GZ{namespace Base{class cPoly4;}}
#include "Lib_GZ/Gfx/_Face.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Face{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pFace {

	public:
	//Pure Function

};

class tApi_Lib_GZ cFace : public Lib_GZ::cClass {

	public:


		//Var
		gzSp<Lib_GZ::Base::cPtA> oPt1;
		gzSp<Lib_GZ::Base::cPtA> oPt2;
		gzSp<Lib_GZ::Base::cPtA> oPt3;
		gzSp<Lib_GZ::Base::cPtA> oPt4;
		gzUInt nPt1;
		gzUInt nPt2;
		gzUInt nPt3;
		gzUInt nPt4;
		gzSp<Lib_GZ::Gpu::GpuObj::cGpuFace> oGpuObj;
		gzSp<Lib_GZ::File::cRcImg> oRc;
		gzWp<Lib_GZ::Gfx::cShape> oShape;
		gzFloat* aPtSource;
		gzFloat* aPoint2D;
		Lib_GZ::Gfx::Triangle::_uPoint3D* rPtS1;
		Lib_GZ::Gfx::Triangle::_uPoint3D* rPtS2;
		Lib_GZ::Gfx::Triangle::_uPoint3D* rPtS3;
		Lib_GZ::Gfx::Triangle::_uPoint3D* rPtS4;
		gzInt32** aPixelArray;
		cFace(Lib_GZ::cBase* _parent);
		virtual void Ini_cFace(Lib_GZ::Gfx::cShape* _oShape, Lib_GZ::File::cRcImg* _oRc, Lib_GZ::Base::cPtA* _oPt1, Lib_GZ::Base::cPtA* _oPt2, Lib_GZ::Base::cPtA* _oPt3, Lib_GZ::Base::cPtA* _oPt4, gzFloat* _aPoint2D, Lib_GZ::Base::cPoly4* _oSrc);
		virtual gzBool fGpuDraw();
		virtual gzBool fCpuDraw(Lib_GZ::Gfx::cObject* _oDest, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nRsAlpha, gzUInt _nRsBrRed, gzUInt _nRsBrGreen, gzUInt _nRsBrBlue, gzUInt _nRsRevRed, gzUInt _nRsRevBlue, gzUInt _nRsRevGreen, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen);

		inline cFace(const cFace &_o)  : Lib_GZ::cClass(_o), oPt1(), oPt2(), oPt3(), oPt4(), nPt1(_o.nPt1), nPt2(_o.nPt2), nPt3(_o.nPt3), nPt4(_o.nPt4), oGpuObj(), oRc(), oShape(), aPtSource(), aPoint2D(), rPtS1(), rPtS2(), rPtS3(), rPtS4(), aPixelArray(){};
		inline cFace(const cFace &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), oPt1(), oPt2(), oPt3(), oPt4(), nPt1(_o.nPt1), nPt2(_o.nPt2), nPt3(_o.nPt3), nPt4(_o.nPt4), oGpuObj(), oRc(), oShape(), aPtSource(), aPoint2D(), rPtS1(), rPtS2(), rPtS3(), rPtS4(), aPixelArray(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cFace();

	private:

		//Var

};
class tApi_Lib_GZ csFace : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cFace> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cShape* _oShape, Lib_GZ::File::cRcImg* _oRc, Lib_GZ::Base::cPtA* _oPt1, Lib_GZ::Base::cPtA* _oPt2, Lib_GZ::Base::cPtA* _oPt3, Lib_GZ::Base::cPtA* _oPt4, gzFloat* _aPoint2D, Lib_GZ::Base::cPoly4* _oSrc){
			gzSp<cFace>_oTemp = gzSp<cFace>(new cFace(_parent));
			_oTemp->Ini_cFace(_oShape, _oRc, _oPt1, _oPt2, _oPt3, _oPt4, _aPoint2D, _oSrc);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csFace(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csFace(){};
};
GZ_mStaticClass(Face)
namespace Face{
}}}
#endif