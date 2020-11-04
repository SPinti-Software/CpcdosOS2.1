#if !( defined tHDef_Lib_GZ_OpenGL_ShaderBase_OpFragmentShader || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_FragmentShader || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_ShaderBase || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_ShaderBase_OpFragmentShader
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpFragmentShader;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/ShaderBase/FragmentShader.h"
namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpFragmentShader{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cFragmentShader;}}}
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpFragmentShader;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpFragmentShader{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpFragmentShader {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpFragmentShader : public Lib_GZ::Gpu::ShaderBase::cFragmentShader {

	public:


		//Var
		cOpFragmentShader(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpFragmentShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto);
		virtual gzBool fSendToGpu(gzPStr _sShader);
		virtual gzBool fCompile();
		virtual gzStr fGetLog();

		inline cOpFragmentShader(const cOpFragmentShader &_o)  : Lib_GZ::Gpu::ShaderBase::cFragmentShader(_o){};
		inline cOpFragmentShader(const cOpFragmentShader &_o, gzBool _b)  : Lib_GZ::Gpu::ShaderBase::cFragmentShader(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpFragmentShader();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpFragmentShader : public Lib_GZ::Gpu::ShaderBase::csFragmentShader  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::ShaderBase::cFragmentShader> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto){
			gzSp<cOpFragmentShader>_oTemp = gzSp<cOpFragmentShader>(new cOpFragmentShader(_parent));
			_oTemp->Ini_cOpFragmentShader(_hGlsl_ES_Version);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpFragmentShader(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::ShaderBase::csFragmentShader(_parent){};
		inline ~csOpFragmentShader(){};
};
GZ_mStaticClassOp(OpFragmentShader, Lib_GZ::Gpu::ShaderBase::FragmentShader);
namespace OpFragmentShader{
}}}
#endif