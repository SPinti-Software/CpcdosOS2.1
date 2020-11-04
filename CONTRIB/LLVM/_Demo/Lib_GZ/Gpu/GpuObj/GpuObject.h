#if !( defined tHDef_Lib_GZ_Gpu_GpuObj_GpuObject || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_GpuObj_GpuObject
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuObject;}}}

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
namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuObject{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuObject;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuObject{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGpuObject {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGpuObject : public Lib_GZ::cClass {

	public:


		//Var
		cGpuObject(Lib_GZ::cBase* _parent);
		virtual void Ini_cGpuObject();
		virtual void fIni(Lib_GZ::Gfx::cInterface* _oInterface);
		virtual void fDraw(Lib_GZ::Gfx::cObject* _oSource, gzInt _nX_Start, gzInt _nX_End, gzInt _nY_Start, gzInt _nY_End);

		inline cGpuObject(const cGpuObject &_o)  : Lib_GZ::cClass(_o){};
		inline cGpuObject(const cGpuObject &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGpuObject();

	private:

		//Var

};
class tApi_Lib_GZ csGpuObject : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGpuObject> New(Lib_GZ::cBase* _parent){
			gzSp<cGpuObject>_oTemp = gzSp<cGpuObject>(new cGpuObject(_parent));
			_oTemp->Ini_cGpuObject();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csGpuObject(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGpuObject(){};
};
GZ_mStaticClass(GpuObject)
namespace GpuObject{
}}}}
#endif