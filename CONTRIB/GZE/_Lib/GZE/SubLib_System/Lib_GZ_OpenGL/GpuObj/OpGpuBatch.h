#if !( defined tHDef_Lib_GZ_OpenGL_GpuObj_OpGpuBatch || defined  tHDef_IN_Lib_GZ_Gpu_GpuObj_GpuBatch || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_GpuObj_OpGpuBatch
namespace Lib_GZ_OpenGL{namespace GpuObj{class cOpGpuBatch;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBatch.h"
namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuBatch{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
#include "Lib_GZ/Gfx/_Face.h"
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBatch;}}}
namespace Lib_GZ_OpenGL{namespace GpuObj{class cOpGpuBatch;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuBatch{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpGpuBatch {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpGpuBatch : public Lib_GZ::Gpu::GpuObj::cGpuBatch {

	public:


		//Var
		gzUInt8* aIndice2Tri;
		gzData<gzUInt8> aIndice;
		virtual void fDraw();
		cOpGpuBatch(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpGpuBatch();

		inline cOpGpuBatch(const cOpGpuBatch &_o)  : Lib_GZ::Gpu::GpuObj::cGpuBatch(_o), aIndice2Tri(), aIndice(){};
		inline cOpGpuBatch(const cOpGpuBatch &_o, gzBool _b)  : Lib_GZ::Gpu::GpuObj::cGpuBatch(_o, _b), aIndice2Tri(), aIndice(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpGpuBatch();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpGpuBatch : public Lib_GZ::Gpu::GpuObj::csGpuBatch  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::GpuObj::cGpuBatch> New(Lib_GZ::cBase* _parent){
			gzSp<cOpGpuBatch>_oTemp = gzSp<cOpGpuBatch>(new cOpGpuBatch(_parent));
			_oTemp->Ini_cOpGpuBatch();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpGpuBatch(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::GpuObj::csGpuBatch(_parent){};
		inline ~csOpGpuBatch(){};
};
GZ_mStaticClassOp(OpGpuBatch, Lib_GZ::Gpu::GpuObj::GpuBatch);
namespace OpGpuBatch{
}}}
#endif