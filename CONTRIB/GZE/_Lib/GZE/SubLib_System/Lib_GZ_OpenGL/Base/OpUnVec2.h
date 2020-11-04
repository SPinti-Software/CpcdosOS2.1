#if !( defined tHDef_Lib_GZ_OpenGL_Base_OpUnVec2 || defined  tHDef_IN_Lib_GZ_Gpu_Base_UnVec2 || defined  tHDef_IN_Lib_GZ_Gpu_Base_Uniform || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_Base_OpUnVec2
namespace Lib_GZ_OpenGL{namespace Base{class cOpUnVec2;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/Base/UnVec2.h"
namespace Lib_GZ_OpenGL{namespace Base{namespace OpUnVec2{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
#include "Lib_GZ/Gpu/Base/_Uniform.h"
namespace Lib_GZ{namespace Base{class cVec2;}}
namespace Lib_GZ{namespace Gpu{namespace Base{class cUnVec2;}}}
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
namespace Lib_GZ_OpenGL{namespace Base{class cOpUnVec2;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace Base{namespace OpUnVec2{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpUnVec2 {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpUnVec2 : public Lib_GZ::Gpu::Base::cUnVec2 {

	public:


		//Var
		virtual void fLoad();
		virtual void fSend();
		cOpUnVec2(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpUnVec2(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName);

		inline cOpUnVec2(const cOpUnVec2 &_o)  : Lib_GZ::Gpu::Base::cUnVec2(_o){};
		inline cOpUnVec2(const cOpUnVec2 &_o, gzBool _b)  : Lib_GZ::Gpu::Base::cUnVec2(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpUnVec2();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpUnVec2 : public Lib_GZ::Gpu::Base::csUnVec2  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::Base::cUnVec2> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){
			gzSp<cOpUnVec2>_oTemp = gzSp<cOpUnVec2>(new cOpUnVec2(_parent));
			_oTemp->Ini_cOpUnVec2(_oProgram, _sName);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpUnVec2(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::Base::csUnVec2(_parent){};
		inline ~csOpUnVec2(){};
};
GZ_mStaticClassOp(OpUnVec2, Lib_GZ::Gpu::Base::UnVec2);
namespace OpUnVec2{
}}}
#endif