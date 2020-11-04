#if !( defined tHDef_Lib_GZ_OpenGL_GpuObj_OpGpuBuffer || defined  tHDef_IN_Lib_GZ_Gpu_GpuObj_GpuBuffer || defined  tHDef_IN_Lib_GZ_Gpu_GpuObj_GpuObject || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_GpuObj_OpGpuBuffer
namespace Lib_GZ_OpenGL{namespace GpuObj{class cOpGpuBuffer;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuBuffer{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBuffer;}}}
namespace Lib_GZ_OpenGL{namespace GpuObj{class cOpGpuBuffer;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuBuffer{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpGpuBuffer {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpGpuBuffer : public Lib_GZ::Gpu::GpuObj::cGpuBuffer {

	public:


		//Var
		cOpGpuBuffer(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpGpuBuffer();

		inline cOpGpuBuffer(const cOpGpuBuffer &_o)  : Lib_GZ::Gpu::GpuObj::cGpuBuffer(_o){};
		inline cOpGpuBuffer(const cOpGpuBuffer &_o, gzBool _b)  : Lib_GZ::Gpu::GpuObj::cGpuBuffer(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpGpuBuffer();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpGpuBuffer : public Lib_GZ::Gpu::GpuObj::csGpuBuffer  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::GpuObj::cGpuBuffer> New(Lib_GZ::cBase* _parent){
			gzSp<cOpGpuBuffer>_oTemp = gzSp<cOpGpuBuffer>(new cOpGpuBuffer(_parent));
			_oTemp->Ini_cOpGpuBuffer();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpGpuBuffer(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::GpuObj::csGpuBuffer(_parent){};
		inline ~csOpGpuBuffer(){};
};
GZ_mStaticClassOp(OpGpuBuffer, Lib_GZ::Gpu::GpuObj::GpuBuffer);
namespace OpGpuBuffer{
}}}
#endif