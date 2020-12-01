#if !( defined tHDef_Lib_GZ_Gfx_Perspective || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Perspective
namespace Lib_GZ{namespace Gfx{class cPerspective;}}

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
namespace Lib_GZ{namespace Gfx{namespace Perspective{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/Gfx/_Attribute.h"
#include "Lib_GZ/_Math.h"
#include "Lib_GZ/Gfx/_Buffer.h"
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBuffer;}}}
namespace Lib_GZ{namespace Gfx{class cPerspective;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Perspective{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pPerspective {

	public:
	//Pure Function

};

class tApi_Lib_GZ cPerspective : public Lib_GZ::cClass {

	public:


		//Var
		gzFloat nFocal;
		gzFloat nValue;
		gzFloat nFromX;
		gzFloat nFromY;
		gzInt nType;
		gzWp<Lib_GZ::Gfx::cBuffer> oBuffer;
		cPerspective(Lib_GZ::cBase* _parent);
		virtual void Ini_cPerspective(Lib_GZ::Gfx::cBuffer* _oBuffer, gzFloat _nFocalPc = 50.0, gzBool _bSelf = false);
		virtual void fSetFromPosition(gzFloat _nFromX, gzFloat _nFromY);
		virtual void fSetFromSelf();
		virtual void fSetFromBuffer();
		virtual void fSetFromBufferCenter();
		virtual void fSetFocal(gzFloat _nPcVal);

		inline cPerspective(const cPerspective &_o)  : Lib_GZ::cClass(_o), nFocal(_o.nFocal), nValue(_o.nValue), nFromX(_o.nFromX), nFromY(_o.nFromY), nType(_o.nType), oBuffer(){};
		inline cPerspective(const cPerspective &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), nFocal(_o.nFocal), nValue(_o.nValue), nFromX(_o.nFromX), nFromY(_o.nFromY), nType(_o.nType), oBuffer(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cPerspective();

	private:

		//Var

};
class tApi_Lib_GZ csPerspective : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cPerspective> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cBuffer* _oBuffer, gzFloat _nFocalPc = 50.0, gzBool _bSelf = false){
			gzSp<cPerspective>_oTemp = gzSp<cPerspective>(new cPerspective(_parent));
			_oTemp->Ini_cPerspective(_oBuffer, _nFocalPc, _bSelf);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csPerspective(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csPerspective(){};
};
GZ_mStaticClass(Perspective)
namespace Perspective{
}}}
#endif