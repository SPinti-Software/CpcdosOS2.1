#if !( defined tHDef_Lib_GZ_OpenGL_ShaderBase_OpVbo || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_Vbo || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_ShaderBase_OpVbo
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpVbo;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/ShaderBase/Vbo.h"
namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpVbo{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
#include "Lib_GZ/Gpu/ShaderBase/_Vbo.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpVbo;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpVbo{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpVbo {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpVbo : public Lib_GZ::Gpu::ShaderBase::cVbo {

	public:


		//Var
		virtual void fLoad();
		virtual void fSendData();
		cOpVbo(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpVbo(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram);

		inline cOpVbo(const cOpVbo &_o)  : Lib_GZ::Gpu::ShaderBase::cVbo(_o){};
		inline cOpVbo(const cOpVbo &_o, gzBool _b)  : Lib_GZ::Gpu::ShaderBase::cVbo(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpVbo();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpVbo : public Lib_GZ::Gpu::ShaderBase::csVbo  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::ShaderBase::cVbo> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram){
			gzSp<cOpVbo>_oTemp = gzSp<cOpVbo>(new cOpVbo(_parent));
			_oTemp->Ini_cOpVbo(_oProgram);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpVbo(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::ShaderBase::csVbo(_parent){};
		inline ~csOpVbo(){};
};
GZ_mStaticClassOp(OpVbo, Lib_GZ::Gpu::ShaderBase::Vbo);
namespace OpVbo{
}}}
#endif