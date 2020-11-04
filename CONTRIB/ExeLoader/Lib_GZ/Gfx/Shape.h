#if !( defined tHDef_Lib_GZ_Gfx_Shape || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Shape
#define tHDef_IN_Lib_GZ_Gfx_Shape
namespace Lib_GZ{namespace Gfx{class cShape;}}

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
#include "_Shape.h"
#include "Lib_GZ/Gfx/Object.h"
namespace Lib_GZ{namespace Gfx{namespace Shape{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cPixel;}}
namespace Lib_GZ{namespace Gfx{class cObject;}}
#include "Lib_GZ/Gfx/_Buffer.h"
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/Gfx/_Face.h"
namespace Lib_GZ{namespace Gfx{class cTriangle; namespace Triangle {struct uPoint3D; struct _uPoint3D; struct uPoint2D; struct _uPoint2D; }}}
namespace Lib_GZ{namespace File{class cRcImg;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Base{class cPtA;}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Base{class cPoly4;}}
#include "Lib_GZ/Gfx/_Shape.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Shape{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pShape {

	public:
	//Pure Function

};

class tApi_Lib_GZ cShape : public Lib_GZ::Gfx::cObject {

	public:


		//Var
		gzFloat* aPt3dOri;
		gzFloat* aPoint3D;
		gzFloat* aPoint2D;
		gzFloat* aPtSource;
		gzArray<gzSp<Lib_GZ::Base::cPtA>> aNewPt3dOri;
		gzUInt nIndexPt;
		gzUInt nIndexSrc;
		gzSp<Lib_GZ::Gfx::cFace> oFace;
		gzUInt nNbPt;
		gzUInt nNbPt3;
		gzBool bSmoothBorder;
		cShape(Lib_GZ::cBase* _parent);
		virtual void Ini_cShape(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, gzUInt _nNbPt = 4, gzBool _bSmoothBorder = true);
		virtual void fAddPt(Lib_GZ::Base::cPtA* _oPt, Lib_GZ::Base::cPt* _oCenter);
		virtual void fCreateFace(Lib_GZ::File::cRcImg* _oRc, Lib_GZ::Base::cPoly4* _oSrc);
		virtual void fFinalUpdate();
		virtual gzBool fGpuDraw();
		virtual gzBool fIsInside();
		virtual gzBool fCpuDraw(gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End);
		virtual void fTransform();
		virtual void fConvertTo2d();
		virtual void fContextResume();

		inline cShape(const cShape &_o)  : Lib_GZ::Gfx::cObject(_o), aPt3dOri(), aPoint3D(), aPoint2D(), aPtSource(), aNewPt3dOri(), nIndexPt(_o.nIndexPt), nIndexSrc(_o.nIndexSrc), oFace(), nNbPt(_o.nNbPt), nNbPt3(_o.nNbPt3), bSmoothBorder(_o.bSmoothBorder){};
		inline cShape(const cShape &_o, gzBool _b)  : Lib_GZ::Gfx::cObject(_o, _b), aPt3dOri(), aPoint3D(), aPoint2D(), aPtSource(), aNewPt3dOri(), nIndexPt(_o.nIndexPt), nIndexSrc(_o.nIndexSrc), oFace(), nNbPt(_o.nNbPt), nNbPt3(_o.nNbPt3), bSmoothBorder(_o.bSmoothBorder){};
		virtual ~cShape();

	private:

		//Var

};
class tApi_Lib_GZ csShape : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cShape> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, gzUInt _nNbPt = 4, gzBool _bSmoothBorder = true){
			gzSp<cShape>_oTemp = gzSp<cShape>(new cShape(_parent));
			_oTemp->Ini_cShape(_oParent, _nX, _nY, _nNbPt, _bSmoothBorder);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csShape(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csShape(){};
};
GZ_mStaticClass(Shape)
namespace Shape{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Shape
#endif