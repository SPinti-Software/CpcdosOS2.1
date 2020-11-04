#if !( defined tHDef_Lib_GZ_OpenGL_GpuObj_OpGpuFace || defined  tHDef_IN_Lib_GZ_Gpu_GpuObj_GpuFace || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_GpuObj_OpGpuFace
namespace Lib_GZ_OpenGL{namespace GpuObj{class cOpGpuFace;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/GpuObj/GpuFace.h"
namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuFace{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
#include "Lib_GZ/Gfx/_Face.h"
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuFace;}}}
namespace Lib_GZ_OpenGL{namespace GpuObj{class cOpGpuFace;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace GpuObj{namespace OpGpuFace{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpGpuFace {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpGpuFace : public Lib_GZ::Gpu::GpuObj::cGpuFace {

	public:


		//Var
		cOpGpuFace(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpGpuFace();

		inline cOpGpuFace(const cOpGpuFace &_o)  : Lib_GZ::Gpu::GpuObj::cGpuFace(_o){};
		inline cOpGpuFace(const cOpGpuFace &_o, gzBool _b)  : Lib_GZ::Gpu::GpuObj::cGpuFace(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpGpuFace();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpGpuFace : public Lib_GZ::Gpu::GpuObj::csGpuFace  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::GpuObj::cGpuFace> New(Lib_GZ::cBase* _parent){
			gzSp<cOpGpuFace>_oTemp = gzSp<cOpGpuFace>(new cOpGpuFace(_parent));
			_oTemp->Ini_cOpGpuFace();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpGpuFace(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::GpuObj::csGpuFace(_parent){};
		inline ~csOpGpuFace(){};
};
GZ_mStaticClassOp(OpGpuFace, Lib_GZ::Gpu::GpuObj::GpuFace);
namespace OpGpuFace{
}}}
#endif