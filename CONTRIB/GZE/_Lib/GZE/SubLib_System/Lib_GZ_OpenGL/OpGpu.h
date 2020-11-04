#if !( defined tHDef_Lib_GZ_OpenGL_OpGpu || defined  tHDef_IN_Lib_GZ_Gpu_Gpu || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_OpGpu
namespace Lib_GZ_OpenGL{class cOpGpu;}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/Gpu.h"
namespace Lib_GZ_OpenGL{namespace OpGpu{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ{namespace Gpu{class cGpu;}}
namespace Lib_GZ{namespace Gpu{class cGpuInfo;}}
namespace Lib_GZ{namespace Gpu{namespace ShaderModel{namespace GzModel{class cGzShModel;}}}}
namespace Lib_GZ_OpenGL{class cOpGpu;}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace OpGpu{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpGpu {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpGpu : public Lib_GZ::Gpu::cGpu {

	public:


		//Var
		gzSp<Lib_GZ::Gpu::ShaderModel::GzModel::cGzShModel> oGzShModel;
		virtual void fLoadImg(gzInt* _aImg, gzInt _nWidth, gzInt _nHeight);
		virtual gzBool fContextIni(gzUIntX _nHandleId, gzBool _bGlobalSharedContext);
		virtual void fBlit();
		virtual gzBool fLoadDefaultShader();
		virtual void fClear();
		cOpGpu(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpGpu(gzUIntX _nHandleId, gzBool _bGlobalSharedContext);

		inline cOpGpu(const cOpGpu &_o)  : Lib_GZ::Gpu::cGpu(_o), oGzShModel(){};
		inline cOpGpu(const cOpGpu &_o, gzBool _b)  : Lib_GZ::Gpu::cGpu(_o, _b), oGzShModel(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpGpu();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpGpu : public Lib_GZ::Gpu::csGpu  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::cGpu> New(Lib_GZ::cBase* _parent, gzUIntX _nHandleId, gzBool _bGlobalSharedContext){
			gzSp<cOpGpu>_oTemp = gzSp<cOpGpu>(new cOpGpu(_parent));
			_oTemp->Ini_cOpGpu(_nHandleId, _bGlobalSharedContext);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpGpu(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::csGpu(_parent){};
		inline ~csOpGpu(){};
};
GZ_mStaticClassOp(OpGpu, Lib_GZ::Gpu::Gpu);
namespace OpGpu{
}}
#endif