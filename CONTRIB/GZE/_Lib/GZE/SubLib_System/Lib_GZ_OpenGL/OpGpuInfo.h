#if !( defined tHDef_Lib_GZ_OpenGL_OpGpuInfo || defined  tHDef_IN_Lib_GZ_Gpu_GpuInfo || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_OpGpuInfo
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/GpuInfo.h"
// ------  Cpp section  ------ //
#include "Lib_GZ/SysUtils/glWin.h"
// --------------------------- //

namespace Lib_GZ_OpenGL{namespace OpGpuInfo{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{class cGpuInfo;}}
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace OpGpuInfo{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpGpuInfo {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpGpuInfo : public Lib_GZ::Gpu::cGpuInfo {

	public:


		//Var
		virtual gzBool fIniFunctions();
		virtual gzBool fGetVersion();
		cOpGpuInfo(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpGpuInfo();

		inline cOpGpuInfo(const cOpGpuInfo &_o)  : Lib_GZ::Gpu::cGpuInfo(_o){};
		inline cOpGpuInfo(const cOpGpuInfo &_o, gzBool _b)  : Lib_GZ::Gpu::cGpuInfo(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpGpuInfo();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpGpuInfo : public Lib_GZ::Gpu::csGpuInfo  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::cGpuInfo> New(Lib_GZ::cBase* _parent){
			gzSp<cOpGpuInfo>_oTemp = gzSp<cOpGpuInfo>(new cOpGpuInfo(_parent));
			_oTemp->Ini_cOpGpuInfo();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpGpuInfo(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::csGpuInfo(_parent){};
		inline ~csOpGpuInfo(){};
};
GZ_mStaticClassOp(OpGpuInfo, Lib_GZ::Gpu::GpuInfo);
namespace OpGpuInfo{
}}
#endif