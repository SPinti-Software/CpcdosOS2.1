#if !( defined tHDef_Lib_GZ_Gfx_Buffer || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Buffer
#define tHDef_IN_Lib_GZ_Gfx_Buffer
namespace Lib_GZ{namespace Gfx{class cBuffer;}}

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
#include "_Buffer.h"
#include "Lib_GZ/Gfx/Object.h"
namespace Lib_GZ{namespace Gfx{namespace Buffer{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/Gfx/_Attribute.h"
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cPixel;}}
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace Gfx{class cPerspective;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBuffer;}}}
#include "Lib_GZ/Gfx/_Buffer.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Buffer{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pBuffer {

	public:
	//Pure Function

};

class tApi_Lib_GZ cBuffer : public Lib_GZ::Gfx::cObject {

	public:


		//Var
		gzUInt nBuffWidth;
		gzUInt nBuffHeight;
		gzSp<Lib_GZ::Gfx::cPerspective> oPerspective;
		gzInt nX;
		gzInt nY;
		gzInt nBuffPLimT;
		gzInt nBuffPLimL;
		gzInt nBuffPLimR;
		gzInt nBuffPLimB;
		gzInt nBuffLimT;
		gzInt nBuffLimL;
		gzInt nBuffLimR;
		gzInt nBuffLimB;
		gzSp<Lib_GZ::Gpu::GpuObj::cGpuBuffer> oGpuObj;
		gzInt32** aBufferArray;
		cBuffer(Lib_GZ::cBase* _parent);
		virtual void Ini_cBuffer(Lib_GZ::Gfx::cRoot* _oParent, gzUInt _nWidth, gzUInt _nHeight, gzBool _bNewPerspective = false);
		virtual void fSetLimit(gzInt _nLimL, gzInt _nLimR, gzInt _nLimT, gzInt _nLimB);

		inline cBuffer(const cBuffer &_o)  : Lib_GZ::Gfx::cObject(_o), nBuffWidth(_o.nBuffWidth), nBuffHeight(_o.nBuffHeight), oPerspective(), nX(_o.nX), nY(_o.nY), nBuffPLimT(_o.nBuffPLimT), nBuffPLimL(_o.nBuffPLimL), nBuffPLimR(_o.nBuffPLimR), nBuffPLimB(_o.nBuffPLimB), nBuffLimT(_o.nBuffLimT), nBuffLimL(_o.nBuffLimL), nBuffLimR(_o.nBuffLimR), nBuffLimB(_o.nBuffLimB), oGpuObj(), aBufferArray(){};
		inline cBuffer(const cBuffer &_o, gzBool _b)  : Lib_GZ::Gfx::cObject(_o, _b), nBuffWidth(_o.nBuffWidth), nBuffHeight(_o.nBuffHeight), oPerspective(), nX(_o.nX), nY(_o.nY), nBuffPLimT(_o.nBuffPLimT), nBuffPLimL(_o.nBuffPLimL), nBuffPLimR(_o.nBuffPLimR), nBuffPLimB(_o.nBuffPLimB), nBuffLimT(_o.nBuffLimT), nBuffLimL(_o.nBuffLimL), nBuffLimR(_o.nBuffLimR), nBuffLimB(_o.nBuffLimB), oGpuObj(), aBufferArray(){};
		virtual ~cBuffer();

	private:

		//Var

};
class tApi_Lib_GZ csBuffer : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cBuffer> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzUInt _nWidth, gzUInt _nHeight, gzBool _bNewPerspective = false){
			gzSp<cBuffer>_oTemp = gzSp<cBuffer>(new cBuffer(_parent));
			_oTemp->Ini_cBuffer(_oParent, _nWidth, _nHeight, _bNewPerspective);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csBuffer(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csBuffer(){};
};
GZ_mStaticClass(Buffer)
namespace Buffer{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Buffer
#endif