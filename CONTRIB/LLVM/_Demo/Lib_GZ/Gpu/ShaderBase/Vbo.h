#if !( defined tHDef_Lib_GZ_Gpu_ShaderBase_Vbo || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_ShaderBase_Vbo
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cVbo;}}}

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
#include "_Vbo.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace Vbo{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
#include "Lib_GZ/Gpu/ShaderBase/_Vbo.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace Vbo{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pVbo {

	public:
	//Pure Function

};

class tApi_Lib_GZ cVbo : public Lib_GZ::cClass {

	public:


		//Var
		gzData<gzFloat> aData;
		Lib_GZ::Gpu::ShaderBase::Vbo::eVecType hVecType;
		gzVal nId;
		gzWp<Lib_GZ::Gpu::ShaderBase::cProgramShader> oProgram;
		gzUInt nTotalData;
		cVbo(Lib_GZ::cBase* _parent);
		virtual void Ini_cVbo(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram);
		virtual void fLoad();
		virtual void fSendData();

		inline cVbo(const cVbo &_o)  : Lib_GZ::cClass(_o), aData(), hVecType(), nId(), oProgram(), nTotalData(_o.nTotalData){};
		inline cVbo(const cVbo &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), aData(), hVecType(), nId(), oProgram(), nTotalData(_o.nTotalData){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cVbo();

	private:

		//Var

};
class tApi_Lib_GZ csVbo : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cVbo> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram){
			gzSp<cVbo>_oTemp = gzSp<cVbo>(new cVbo(_parent));
			_oTemp->Ini_cVbo(_oProgram);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csVbo(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csVbo(){};
};
GZ_mStaticClass(Vbo)
namespace Vbo{
}}}}
#endif