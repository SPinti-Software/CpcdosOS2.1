#if !( defined tHDef_Lib_GZ_Gfx_Pixel || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Pixel
namespace Lib_GZ{namespace Gfx{class cPixel;}}

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
namespace Lib_GZ{namespace Gfx{namespace Pixel{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/_Math.h"
#include "Lib_GZ/Gfx/_Shape.h"
namespace Lib_GZ{namespace Gfx{class cTriangle; namespace Triangle {struct uPoint3D; struct _uPoint3D; struct uPoint2D; struct _uPoint2D; }}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Gfx{class cPixel;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Pixel{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pPixel {

	public:
	//Pure Function
	static void fCopyPixelToDest(gzInt32** _aDest, gzUInt _nPixelClip, gzInt _nX, gzInt _nY);
	static void fGetSmoothPixel(gzInt32** _aSource, gzUInt32 _nLx, gzUInt32 _nTy, gzInt32** _aDest, gzUInt32 _nDestX, gzUInt32 _nDestY, gzUInt32 _nAlpha, gzUInt32 _nPcBrRed, gzUInt32 _nPcBrGreen, gzUInt32 _nPcBrBlue, gzUInt32 _nPcRevRed, gzUInt32 _nPcRevBlue, gzUInt32 _nPcRevGreen, gzUInt32 _nOfRevRed, gzUInt32 _nOfRevBlue, gzUInt32 _nOfRevGreen);
	static void fDrawSegTri(gzInt _nDirX, Lib_GZ::Base::cPt* _oPtT, Lib_GZ::Base::cPt* _oPtL, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtST, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSL, Lib_GZ::Base::cPt* _oPtSegT, Lib_GZ::Base::cPt* _oPtSegL, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSegST, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSegSL, gzInt32** _aDest, gzInt32** _aSource, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nLimW, gzUInt _nLimH, gzInt _nLast, gzUInt _nAlpha, gzUInt _nPcBrRed, gzUInt _nPcBrGreen, gzUInt _nPcBrBlue, gzUInt _nPcRevRed, gzUInt _nPcRevGreen, gzUInt _nPcRevBlue, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen, gzInt _nFirst, gzBool _bNothingRight = false);

};

class tApi_Lib_GZ cPixel : public Lib_GZ::cClass {

	public:


		//Var
		cPixel(Lib_GZ::cBase* _parent);
		virtual void Ini_cPixel();

		inline cPixel(const cPixel &_o)  : Lib_GZ::cClass(_o){};
		inline cPixel(const cPixel &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cPixel();

	private:

		//Var

};
class tApi_Lib_GZ csPixel : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cPixel> New(Lib_GZ::cBase* _parent){
			gzSp<cPixel>_oTemp = gzSp<cPixel>(new cPixel(_parent));
			_oTemp->Ini_cPixel();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual void fTestShape(Lib_GZ::Gfx::cShape* _oShape);
		static void fCopyPixelToDest(gzInt32** _aDest, gzUInt _nPixelClip, gzInt _nX, gzInt _nY);
		static void fGetSmoothPixel(gzInt32** _aSource, gzUInt32 _nLx, gzUInt32 _nTy, gzInt32** _aDest, gzUInt32 _nDestX, gzUInt32 _nDestY, gzUInt32 _nAlpha, gzUInt32 _nPcBrRed, gzUInt32 _nPcBrGreen, gzUInt32 _nPcBrBlue, gzUInt32 _nPcRevRed, gzUInt32 _nPcRevBlue, gzUInt32 _nPcRevGreen, gzUInt32 _nOfRevRed, gzUInt32 _nOfRevBlue, gzUInt32 _nOfRevGreen);
		static void fDrawSegTri(gzInt _nDirX, Lib_GZ::Base::cPt* _oPtT, Lib_GZ::Base::cPt* _oPtL, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtST, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSL, Lib_GZ::Base::cPt* _oPtSegT, Lib_GZ::Base::cPt* _oPtSegL, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSegST, Lib_GZ::Gfx::Triangle::_uPoint3D* _rPtSegSL, gzInt32** _aDest, gzInt32** _aSource, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End, gzUInt _nLimW, gzUInt _nLimH, gzInt _nLast, gzUInt _nAlpha, gzUInt _nPcBrRed, gzUInt _nPcBrGreen, gzUInt _nPcBrBlue, gzUInt _nPcRevRed, gzUInt _nPcRevGreen, gzUInt _nPcRevBlue, gzUInt _nOfRevRed, gzUInt _nOfRevBlue, gzUInt _nOfRevGreen, gzInt _nFirst, gzBool _bNothingRight = false);
		virtual void fDrawClipSquare(gzInt32** _aDest, gzInt32** _aSource, gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End);

		inline csPixel(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csPixel(){};
};
GZ_mStaticClass(Pixel)
namespace Pixel{
}}}
#endif