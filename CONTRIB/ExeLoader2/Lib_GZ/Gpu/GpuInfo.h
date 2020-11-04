#if !( defined tHDef_Lib_GZ_Gpu_GpuInfo || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_GpuInfo
namespace Lib_GZ{namespace Gpu{class cGpuInfo;}}

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
namespace Lib_GZ{namespace Gpu{namespace GpuInfo{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{class cGpuInfo;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace GpuInfo{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGpuInfo {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGpuInfo : public Lib_GZ::cClass {

	public:


		//Var
		cGpuInfo(Lib_GZ::cBase* _parent);
		virtual void Ini_cGpuInfo();
		virtual gzBool fIniFunctions();
		virtual gzBool fGetVersion();

		inline cGpuInfo(const cGpuInfo &_o)  : Lib_GZ::cClass(_o){};
		inline cGpuInfo(const cGpuInfo &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGpuInfo();

	private:

		//Var

};
class tApi_Lib_GZ csGpuInfo : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGpuInfo> New(Lib_GZ::cBase* _parent){
			gzSp<cGpuInfo>_oTemp = gzSp<cGpuInfo>(new cGpuInfo(_parent));
			_oTemp->Ini_cGpuInfo();
			return _oTemp;
		}
		//Public static
		gzUInt nVersionMajor;
		gzUInt nVersionMinor;

		//Static function

		inline csGpuInfo(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGpuInfo(){};
};
GZ_mStaticClass(GpuInfo)
namespace GpuInfo{
}}}
#endif