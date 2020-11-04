#if !( defined tHDef_Lib_GZ_Gpu_GpuObj_GpuBuffer || defined  tHDef_IN_Lib_GZ_Gpu_GpuObj_GpuObject || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_GpuObj_GpuBuffer
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBuffer;}}}

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
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"
namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuBuffer{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuObject;}}}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBuffer;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace GpuObj{namespace GpuBuffer{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGpuBuffer {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGpuBuffer : public Lib_GZ::Gpu::GpuObj::cGpuObject {

	public:


		//Var
		gzInt nId;
		gzWp<Lib_GZ::Gpu::ShaderBase::cProgramShader> oProgram;
		cGpuBuffer(Lib_GZ::cBase* _parent);
		virtual void Ini_cGpuBuffer();

		inline cGpuBuffer(const cGpuBuffer &_o)  : Lib_GZ::Gpu::GpuObj::cGpuObject(_o), nId(_o.nId), oProgram(){};
		inline cGpuBuffer(const cGpuBuffer &_o, gzBool _b)  : Lib_GZ::Gpu::GpuObj::cGpuObject(_o, _b), nId(_o.nId), oProgram(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGpuBuffer();

	private:

		//Var

};
class tApi_Lib_GZ csGpuBuffer : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGpuBuffer> New(Lib_GZ::cBase* _parent){
			gzSp<cGpuBuffer>_oTemp = gzSp<cGpuBuffer>(new cGpuBuffer(_parent));
			_oTemp->Ini_cGpuBuffer();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csGpuBuffer(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGpuBuffer(){};
};
GZ_mStaticClass(GpuBuffer)
namespace GpuBuffer{
}}}}
#endif