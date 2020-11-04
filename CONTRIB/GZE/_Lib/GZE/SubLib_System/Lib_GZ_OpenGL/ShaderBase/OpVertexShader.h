#if !( defined tHDef_Lib_GZ_OpenGL_ShaderBase_OpVertexShader || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_VertexShader || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_ShaderBase || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_ShaderBase_OpVertexShader
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpVertexShader;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/ShaderBase/VertexShader.h"
namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpVertexShader{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cVertexShader;}}}
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpVertexShader;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpVertexShader{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpVertexShader {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpVertexShader : public Lib_GZ::Gpu::ShaderBase::cVertexShader {

	public:


		//Var
		cOpVertexShader(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpVertexShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto);
		virtual gzBool fSendToGpu(gzPStr _sShader);
		virtual gzBool fCompile();
		virtual gzStr fGetLog();

		inline cOpVertexShader(const cOpVertexShader &_o)  : Lib_GZ::Gpu::ShaderBase::cVertexShader(_o){};
		inline cOpVertexShader(const cOpVertexShader &_o, gzBool _b)  : Lib_GZ::Gpu::ShaderBase::cVertexShader(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpVertexShader();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpVertexShader : public Lib_GZ::Gpu::ShaderBase::csVertexShader  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::ShaderBase::cVertexShader> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto){
			gzSp<cOpVertexShader>_oTemp = gzSp<cOpVertexShader>(new cOpVertexShader(_parent));
			_oTemp->Ini_cOpVertexShader(_hGlsl_ES_Version);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpVertexShader(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::ShaderBase::csVertexShader(_parent){};
		inline ~csOpVertexShader(){};
};
GZ_mStaticClassOp(OpVertexShader, Lib_GZ::Gpu::ShaderBase::VertexShader);
namespace OpVertexShader{
}}}
#endif