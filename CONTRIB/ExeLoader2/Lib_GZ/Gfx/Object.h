#if !( defined tHDef_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Object
#define tHDef_IN_Lib_GZ_Gfx_Object
namespace Lib_GZ{namespace Gfx{class cObject;}}

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
#include "Lib_GZ/Gfx/Attribute.h"
namespace Lib_GZ{namespace Gfx{namespace Object{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/Gfx/_Attribute.h"
#include "Lib_GZ/Gfx/_Buffer.h"
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cPixel;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Object{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pObject {

	public:
	//Pure Function

};

class tApi_Lib_GZ cObject : public Lib_GZ::Gfx::cAttribute {

	public:


		//Var
		gzFloat nWidth;
		gzFloat nHeight;
		gzBool bTri;
		gzFloat nShapeWidth;
		gzFloat nShapeHeight;
		gzFloat nDirWidth;
		gzFloat nDirHeight;
		gzFloat nClockwise;
		gzFloat nOriClockwise;
		gzFloat nScaleX;
		gzFloat nScaleY;
		gzInt32** aPixelArray;
		gzInt32** aSourcePixel;
		cObject(Lib_GZ::cBase* _parent);
		virtual void Ini_cObject(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY);
		virtual void fRender();
		virtual void fDraw();
		virtual gzBool fGpuDraw();
		virtual gzBool fCpuDraw(gzInt nPosX, gzInt _nPosY, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End);

		inline cObject(const cObject &_o)  : Lib_GZ::Gfx::cAttribute(_o), nWidth(_o.nWidth), nHeight(_o.nHeight), bTri(_o.bTri), nShapeWidth(_o.nShapeWidth), nShapeHeight(_o.nShapeHeight), nDirWidth(_o.nDirWidth), nDirHeight(_o.nDirHeight), nClockwise(_o.nClockwise), nOriClockwise(_o.nOriClockwise), nScaleX(_o.nScaleX), nScaleY(_o.nScaleY), aPixelArray(), aSourcePixel(){};
		inline cObject(const cObject &_o, gzBool _b)  : Lib_GZ::Gfx::cAttribute(_o, _b), nWidth(_o.nWidth), nHeight(_o.nHeight), bTri(_o.bTri), nShapeWidth(_o.nShapeWidth), nShapeHeight(_o.nShapeHeight), nDirWidth(_o.nDirWidth), nDirHeight(_o.nDirHeight), nClockwise(_o.nClockwise), nOriClockwise(_o.nOriClockwise), nScaleX(_o.nScaleX), nScaleY(_o.nScaleY), aPixelArray(), aSourcePixel(){};
		virtual ~cObject();

	private:

		//Var

};
class tApi_Lib_GZ csObject : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cObject> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY){
			gzSp<cObject>_oTemp = gzSp<cObject>(new cObject(_parent));
			_oTemp->Ini_cObject(_oParent, _nX, _nY);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csObject(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csObject(){};
};
GZ_mStaticClass(Object)
namespace Object{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Object
#endif