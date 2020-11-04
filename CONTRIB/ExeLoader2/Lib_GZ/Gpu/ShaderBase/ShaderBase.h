#if !( defined tHDef_Lib_GZ_Gpu_ShaderBase_ShaderBase || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_ShaderBase_ShaderBase
#define tHDef_IN_Lib_GZ_Gpu_ShaderBase_ShaderBase
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cShaderBase;}}}

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
#include "_ShaderBase.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ShaderBase{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gpu/ShaderBase/_ShaderBase.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace ShaderBase{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pShaderBase {

	public:
	//Pure Function

};

class tApi_Lib_GZ cShaderBase : public Lib_GZ::cClass {

	public:


		//Var
		gzStr sSharder;
		gzVal nId;
		gzBool bReady;
		gzUInt nLineError;
		gzUInt nSourceError;
		Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version hGlsl_ES_Version;
		gzStr sLog;
		gzArray<gzStr> aLine;
		Lib_GZ::Gpu::ShaderBase::ShaderBase::eType hType;
		cShaderBase(Lib_GZ::cBase* _parent);
		virtual void Ini_cShaderBase(Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto);
		virtual void fLoad();
		virtual gzBool fSendToGpu(gzPStr _sShader);
		virtual gzBool fCompile();
		virtual gzStr fGetLog();
		virtual gzStr fGetErrorLine();
		virtual void fAddLine(gzPStr _sLine);

		inline cShaderBase(const cShaderBase &_o)  : Lib_GZ::cClass(_o), sSharder(_o.sSharder), nId(), bReady(_o.bReady), nLineError(_o.nLineError), nSourceError(_o.nSourceError), hGlsl_ES_Version(), sLog(_o.sLog), aLine(), hType(){};
		inline cShaderBase(const cShaderBase &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), sSharder(_o.sSharder,_b), nId(), bReady(_o.bReady), nLineError(_o.nLineError), nSourceError(_o.nSourceError), hGlsl_ES_Version(), sLog(_o.sLog,_b), aLine(), hType(){};
		virtual ~cShaderBase();

	private:

		//Var

};
class tApi_Lib_GZ csShaderBase : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cShaderBase> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version _hGlsl_ES_Version = Lib_GZ::Gpu::ShaderBase::ShaderBase::eGlsl_ES_Version::Auto){
			gzSp<cShaderBase>_oTemp = gzSp<cShaderBase>(new cShaderBase(_parent));
			_oTemp->Ini_cShaderBase(_hGlsl_ES_Version);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csShaderBase(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csShaderBase(){};
};
GZ_mStaticClass(ShaderBase)
namespace ShaderBase{
}}}}
#undef tHDef_IN_Lib_GZ_Gpu_ShaderBase_ShaderBase
#endif