#if !( defined tHDef_Lib_GZ_OpenGL_ShaderBase_OpProgramShader || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_ProgramShader || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_ShaderBase_OpProgramShader
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpProgramShader;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpProgramShader{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
#include "Lib_GZ/Gpu/ShaderBase/_ShaderBase.h"
namespace Lib_GZ_OpenGL{namespace ShaderBase{class cOpProgramShader;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace ShaderBase{namespace OpProgramShader{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpProgramShader {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpProgramShader : public Lib_GZ::Gpu::ShaderBase::cProgramShader {

	public:


		//Var
		virtual void fLoad();
		virtual void fAttachShader(Lib_GZ::Gpu::ShaderBase::cShaderBase* _oShader);
		virtual gzBool fLink();
		virtual gzBool fUse();
		cOpProgramShader(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpProgramShader();

		inline cOpProgramShader(const cOpProgramShader &_o)  : Lib_GZ::Gpu::ShaderBase::cProgramShader(_o){};
		inline cOpProgramShader(const cOpProgramShader &_o, gzBool _b)  : Lib_GZ::Gpu::ShaderBase::cProgramShader(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpProgramShader();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpProgramShader : public Lib_GZ::Gpu::ShaderBase::csProgramShader  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::ShaderBase::cProgramShader> New(Lib_GZ::cBase* _parent){
			gzSp<cOpProgramShader>_oTemp = gzSp<cOpProgramShader>(new cOpProgramShader(_parent));
			_oTemp->Ini_cOpProgramShader();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpProgramShader(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::ShaderBase::csProgramShader(_parent){};
		inline ~csOpProgramShader(){};
};
GZ_mStaticClassOp(OpProgramShader, Lib_GZ::Gpu::ShaderBase::ProgramShader);
namespace OpProgramShader{
}}}
#endif