#if !( defined tHDef_Lib_GZ_Gfx_Clip_Rectangle || defined  tHDef_IN_Lib_GZ_Gfx_Shape || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Clip_Rectangle
namespace Lib_GZ{namespace Gfx{namespace Clip{class cRectangle;}}}

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
namespace Lib_GZ{namespace Gfx{namespace Clip{namespace Rectangle{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace Gfx{class cObject;}}
#include "Lib_GZ/Gfx/_Shape.h"
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cPixel;}}
#include "Lib_GZ/Gfx/_Face.h"
namespace Lib_GZ{namespace Base{class cPtA;}}
namespace Lib_GZ{namespace Base{class cPt;}}
namespace Lib_GZ{namespace Base{class cPoly4;}}
namespace Lib_GZ{namespace Gfx{namespace Clip{class cRectangle;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Clip{namespace Rectangle{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pRectangle {

	public:
	//Pure Function

};

class tApi_Lib_GZ cRectangle : public Lib_GZ::Gfx::cShape {

	public:


		//Var
		gzUInt nSetColor1;
		gzUInt nSetColor2;
		gzUInt nGoColor1;
		gzUInt nGoColor2;
		gzSp<Lib_GZ::Base::cPtA> oPtTL;
		gzSp<Lib_GZ::Base::cPtA> oPtTR;
		gzSp<Lib_GZ::Base::cPtA> oPtBR;
		gzSp<Lib_GZ::Base::cPtA> oPtBL;
		cRectangle(Lib_GZ::cBase* _parent);
		virtual void Ini_cRectangle(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, gzFloat _nW, gzFloat _nH, gzUInt _nColor1, gzUInt _nColor2 = 0);
		virtual void fUpdate();
		virtual gzBool fGpuDraw();
		virtual gzBool fCpuDraw(gzInt _nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End);
		virtual void fSetColor1(gzUInt _nColor);
		virtual void fUpdateLimits();

		inline cRectangle(const cRectangle &_o)  : Lib_GZ::Gfx::cShape(_o), nSetColor1(_o.nSetColor1), nSetColor2(_o.nSetColor2), nGoColor1(_o.nGoColor1), nGoColor2(_o.nGoColor2), nS1Red(_o.nS1Red), nS1Blue(_o.nS1Blue), nS1Green(_o.nS1Green), nG1Red(_o.nG1Red), nG1Blue(_o.nG1Blue), nG1Green(_o.nG1Green), nC1Red(_o.nC1Red), nC1Blue(_o.nC1Blue), nC1Green(_o.nC1Green), nC2Red(_o.nC2Red), nC2Blue(_o.nC2Blue), nC2Green(_o.nC2Green), bSolid(_o.bSolid), oPtTL(), oPtTR(), oPtBR(), oPtBL(){};
		inline cRectangle(const cRectangle &_o, gzBool _b)  : Lib_GZ::Gfx::cShape(_o, _b), nSetColor1(_o.nSetColor1), nSetColor2(_o.nSetColor2), nGoColor1(_o.nGoColor1), nGoColor2(_o.nGoColor2), nS1Red(_o.nS1Red), nS1Blue(_o.nS1Blue), nS1Green(_o.nS1Green), nG1Red(_o.nG1Red), nG1Blue(_o.nG1Blue), nG1Green(_o.nG1Green), nC1Red(_o.nC1Red), nC1Blue(_o.nC1Blue), nC1Green(_o.nC1Green), nC2Red(_o.nC2Red), nC2Blue(_o.nC2Blue), nC2Green(_o.nC2Green), bSolid(_o.bSolid), oPtTL(), oPtTR(), oPtBR(), oPtBL(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cRectangle();

	private:

		//Var
		gzInt nS1Red;
		gzInt nS1Blue;
		gzInt nS1Green;
		gzInt nG1Red;
		gzInt nG1Blue;
		gzInt nG1Green;
		gzUInt nC1Red;
		gzUInt nC1Blue;
		gzUInt nC1Green;
		gzUInt nC2Red;
		gzUInt nC2Blue;
		gzUInt nC2Green;
		gzBool bSolid;
		virtual gzUInt fGetPixel(gzInt x, gzInt y);

};
class tApi_Lib_GZ csRectangle : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cRectangle> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY, gzFloat _nW, gzFloat _nH, gzUInt _nColor1, gzUInt _nColor2 = 0){
			gzSp<cRectangle>_oTemp = gzSp<cRectangle>(new cRectangle(_parent));
			_oTemp->Ini_cRectangle(_oParent, _nX, _nY, _nW, _nH, _nColor1, _nColor2);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csRectangle(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csRectangle(){};
};
GZ_mStaticClass(Rectangle)
namespace Rectangle{
}}}}
#endif