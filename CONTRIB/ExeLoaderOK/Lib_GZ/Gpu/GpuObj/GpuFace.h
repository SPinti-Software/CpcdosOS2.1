#if !( defined tHDef_Lib_GZ_Gpu_GpuObj_GpuFace || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_GpuObj_GpuFace
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuFace;}}}

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
namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuFace{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Face.h"
#include "Lib_GZ/Gfx/_Buffer.h"
namespace Lib_GZ{namespace File{class cRcImg;}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuFace;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuFace{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGpuFace {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGpuFace : public Lib_GZ::cClass {

	public:


		//Var
		cGpuFace(Lib_GZ::cBase* _parent);
		virtual void Ini_cGpuFace();
		virtual void fIni(Lib_GZ::Gfx::cFace* _oFace);
		virtual void fDraw(Lib_GZ::Gfx::cBuffer* _oSource, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End);
		virtual void fSetImg(Lib_GZ::File::cRcImg* _oRc);

		inline cGpuFace(const cGpuFace &_o)  : Lib_GZ::cClass(_o){};
		inline cGpuFace(const cGpuFace &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGpuFace();

	private:

		//Var

};
class tApi_Lib_GZ csGpuFace : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGpuFace> New(Lib_GZ::cBase* _parent){
			gzSp<cGpuFace>_oTemp = gzSp<cGpuFace>(new cGpuFace(_parent));
			_oTemp->Ini_cGpuFace();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csGpuFace(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGpuFace(){};
};
GZ_mStaticClass(GpuFace)
namespace GpuFace{
}}}}
#endif