#if !( defined tHDef_Lib_GZ_Gpu_Gpu || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_Gpu
namespace Lib_GZ{namespace Gpu{class cGpu;}}

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
namespace Lib_GZ{namespace Gpu{namespace Gpu{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{class cGpuInfo;}}
namespace Lib_GZ{namespace Gpu{class cGpu;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace Gpu{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGpu {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGpu : public Lib_GZ::cClass {

	public:


		//Var
		gzSp<Lib_GZ::Gpu::cGpuInfo> oGpuInfo;
		cGpu(Lib_GZ::cBase* _parent);
		virtual void Ini_cGpu(gzUIntX _nHandleId, gzBool _bGlobalSharedContext);
		virtual void fLoadImg(gzInt* _aImg, gzInt _nWidth, gzInt _nHeight);
		virtual void fBlit();
		virtual gzBool fContextIni(gzUIntX _nHandleId, gzBool _bGlobalSharedContext);
		virtual gzBool fError(gzPStr _sError);
		virtual gzBool fFatal(gzPStr _sError);
		virtual void fClear();

		inline cGpu(const cGpu &_o)  : Lib_GZ::cClass(_o), oGpuInfo(){};
		inline cGpu(const cGpu &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), oGpuInfo(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGpu();

	private:

		//Var

};
class tApi_Lib_GZ csGpu : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGpu> New(Lib_GZ::cBase* _parent, gzUIntX _nHandleId, gzBool _bGlobalSharedContext){
			gzSp<cGpu>_oTemp = gzSp<cGpu>(new cGpu(_parent));
			_oTemp->Ini_cGpu(_nHandleId, _bGlobalSharedContext);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csGpu(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGpu(){};
};
GZ_mStaticClass(Gpu)
namespace Gpu{
}}}
#endif