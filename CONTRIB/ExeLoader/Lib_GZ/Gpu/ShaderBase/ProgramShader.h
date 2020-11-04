#if !( defined tHDef_Lib_GZ_Gpu_ShaderBase_ProgramShader || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_ShaderBase_ProgramShader
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}

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
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ProgramShader{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gpu/ShaderBase/_ShaderBase.h"
#include "Lib_GZ/Gpu/Base/_Attribute.h"
#include "Lib_GZ/Gpu/ShaderBase/_Vbo.h"
#include "Lib_GZ/Gpu/Base/_Uniform.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ProgramShader{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pProgramShader {

	public:
	//Pure Function

};

class tApi_Lib_GZ cProgramShader : public Lib_GZ::cClass {

	public:


		//Var
		gzVal nId;
		gzBool bLinked;
		gzArray<gzSp<Lib_GZ::Gpu::Base::cAttribute>> aAttribute;
		gzArray<gzSp<Lib_GZ::Gpu::Base::cUniform>> aUniform;
		gzArray<gzSp<Lib_GZ::Gpu::ShaderBase::cVbo>> aVbo;
		gzUInt nDefaultAttribDivisor;
		cProgramShader(Lib_GZ::cBase* _parent);
		virtual void Ini_cProgramShader();
		virtual void fLoad();
		virtual void fAttachShader(Lib_GZ::Gpu::ShaderBase::cShaderBase* _oShader);
		virtual gzBool fLink();
		virtual gzBool fUse();
		virtual gzSp<Lib_GZ::Gpu::Base::cAttribute> fAddAttribute(gzPStr _sName);
		virtual gzSp<Lib_GZ::Gpu::ShaderBase::cVbo> fAddVbo();
		virtual void fSetDefaultAttribDivisor(gzInt _nDefaultAttribDivisor = 0);

		inline cProgramShader(const cProgramShader &_o)  : Lib_GZ::cClass(_o), nId(), bLinked(_o.bLinked), aAttribute(), aUniform(), aVbo(), nDefaultAttribDivisor(_o.nDefaultAttribDivisor){};
		inline cProgramShader(const cProgramShader &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), nId(), bLinked(_o.bLinked), aAttribute(), aUniform(), aVbo(), nDefaultAttribDivisor(_o.nDefaultAttribDivisor){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cProgramShader();

	private:

		//Var

};
class tApi_Lib_GZ csProgramShader : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cProgramShader> New(Lib_GZ::cBase* _parent){
			gzSp<cProgramShader>_oTemp = gzSp<cProgramShader>(new cProgramShader(_parent));
			_oTemp->Ini_cProgramShader();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csProgramShader(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csProgramShader(){};
};
GZ_mStaticClass(ProgramShader)
namespace ProgramShader{
}}}}
#endif