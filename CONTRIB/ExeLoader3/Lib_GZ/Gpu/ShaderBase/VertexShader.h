#if !( defined tHDef_Lib_GZ_Gpu_ShaderBase_VertexShader || defined  tHDef_IN_Lib_GZ_Gpu_ShaderBase_ShaderBase || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_ShaderBase_VertexShader
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cVertexShader;}}}

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace VertexShader{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gpu/ShaderBase/_ShaderBase.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cVertexShader;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace VertexShader{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pVertexShader {

	public:
	//Pure Function

};

class tApi_Lib_GZ cVertexShader : public Lib_GZ::Gpu::ShaderBase::cShaderBase {

	public:


		//Var
		cVertexShader(Lib_GZ::cBase* _parent);
		virtual void Ini_cVertexShader(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto);

		inline cVertexShader(const cVertexShader &_o)  : Lib_GZ::Gpu::ShaderBase::cShaderBase(_o){};
		inline cVertexShader(const cVertexShader &_o, gzBool _b)  : Lib_GZ::Gpu::ShaderBase::cShaderBase(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cVertexShader();

	private:

		//Var

};
class tApi_Lib_GZ csVertexShader : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cVertexShader> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto){
			gzSp<cVertexShader>_oTemp = gzSp<cVertexShader>(new cVertexShader(_parent));
			_oTemp->Ini_cVertexShader(_hGlsl_ES_Version);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csVertexShader(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csVertexShader(){};
};
GZ_mStaticClass(VertexShader)
namespace VertexShader{
}}}}
#endif