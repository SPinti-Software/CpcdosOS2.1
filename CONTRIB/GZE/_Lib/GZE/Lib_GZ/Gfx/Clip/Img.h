#if !( defined tHDef_Lib_GZ_Gfx_Clip_Img || defined  tHDef_IN_Lib_GZ_Gfx_Shape || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Clip_Img
namespace Lib_GZ{namespace Gfx{namespace Clip{class cImg;}}}

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
#include "Lib_GZ/Gfx/Shape.h"
namespace Lib_GZ{namespace Gfx{namespace Clip{namespace Img{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Sys/_Window.h"
#include "Lib_GZ/Gfx/_Shape.h"
#include "Lib_GZ/Gfx/_Face.h"
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cTriangle; namespace Triangle {struct uPoint3D; struct _uPoint3D; struct uPoint2D; struct _uPoint2D; }}}
namespace Lib_GZ{namespace File{class cRcImg;}}
namespace Lib_GZ{namespace Base{class cPtA;}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Base{class cPoly4;}}
namespace Lib_GZ{namespace Gfx{namespace Clip{class cImg;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Clip{namespace Img{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pImg {

	public:
	//Pure Function

};

class tApi_Lib_GZ cImg : public Lib_GZ::Gfx::cShape {

	public:


		//Var
		gzInt* aFile;
		gzInt nTest;
		gzSp<Lib_GZ::File::cRcImg> oRc;
		gzSp<Lib_GZ::Base::cPtA> oPtTL;
		gzSp<Lib_GZ::Base::cPtA> oPtTR;
		gzSp<Lib_GZ::Base::cPtA> oPtBR;
		gzSp<Lib_GZ::Base::cPtA> oPtBL;
		cImg(Lib_GZ::cBase* _parent);
		virtual void Ini_cImg(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, Lib_GZ::File::cRcImg* _oRc, gzBool _bCenter = true, gzInt _nCenterX = 0, gzInt _nCenterY = 0, gzBool _bSmoothBorder = true, gzBool _bDrawLine = false, Lib_GZ::Base::cPoly4* _oSrcRegion = (Lib_GZ::Base::cPoly4*)(0), gzUInt _nWidth = 0, gzUInt _nHeight = 0, Lib_GZ::Base::cPoly4* _oPts = (Lib_GZ::Base::cPoly4*)(0));
		virtual void fUpdateChildToParent();

		inline cImg(const cImg &_o)  : Lib_GZ::Gfx::cShape(_o), aFile(), nTest(_o.nTest), oRc(), oPtTL(), oPtTR(), oPtBR(), oPtBL(){};
		inline cImg(const cImg &_o, gzBool _b)  : Lib_GZ::Gfx::cShape(_o, _b), aFile(), nTest(_o.nTest), oRc(), oPtTL(), oPtTR(), oPtBR(), oPtBL(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cImg();

	private:

		//Var

};
class tApi_Lib_GZ csImg : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cImg> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, Lib_GZ::File::cRcImg* _oRc, gzBool _bCenter = true, gzInt _nCenterX = 0, gzInt _nCenterY = 0, gzBool _bSmoothBorder = true, gzBool _bDrawLine = false, Lib_GZ::Base::cPoly4* _oSrcRegion = (Lib_GZ::Base::cPoly4*)(0), gzUInt _nWidth = 0, gzUInt _nHeight = 0, Lib_GZ::Base::cPoly4* _oPts = (Lib_GZ::Base::cPoly4*)(0)){
			gzSp<cImg>_oTemp = gzSp<cImg>(new cImg(_parent));
			_oTemp->Ini_cImg(_oParent, _nX, _nY, _oRc, _bCenter, _nCenterX, _nCenterY, _bSmoothBorder, _bDrawLine, _oSrcRegion, _nWidth, _nHeight, _oPts);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csImg(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csImg(){};
};
GZ_mStaticClass(Img)
namespace Img{
}}}}
#endif