#if !( defined tHDef_Lib_GZ_Gpu_Base_UnVec2 || defined  tHDef_IN_Lib_GZ_Gpu_Base_Uniform || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_Base_UnVec2
namespace Lib_GZ{namespace Gpu{namespace Base{class cUnVec2;}}}

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
#include "Lib_GZ/Gpu/Base/Uniform.h"
namespace Lib_GZ{namespace Gpu{namespace Base{namespace UnVec2{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gpu/ShaderBase/ShaderBase.h"
#include "Lib_GZ/Gpu/ShaderBase/ProgramShader.h"
#include "Lib_GZ/Gpu/Base/Uniform.h"
#include "Lib_GZ/Base/Vec2.h"
namespace Lib_GZ{namespace Gpu{namespace Base{class cUnVec2;}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace Base{namespace UnVec2{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pUnVec2 {

	public:
	//Pure Function

};

class tApi_Lib_GZ cUnVec2 : public Lib_GZ::Gpu::Base::cUniform {

	public:


		//Var
		gzEmbed<Lib_GZ::Base::cVec2> oVal;
		virtual void fLoad();
		cUnVec2(Lib_GZ::cBase* _parent);
		virtual void Ini_cUnVec2(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName);

		inline cUnVec2(const cUnVec2 &_o)  : Lib_GZ::Gpu::Base::cUniform(_o), oVal(_o.oVal){};
		inline cUnVec2(const cUnVec2 &_o, gzBool _b)  : Lib_GZ::Gpu::Base::cUniform(_o, _b), oVal(_o.oVal){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cUnVec2();

	private:

		//Var

};
class tApi_Lib_GZ csUnVec2 : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cUnVec2> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){
			gzSp<cUnVec2>_oTemp = gzSp<cUnVec2>(new cUnVec2(_parent));
			_oTemp->Ini_cUnVec2(_oProgram, _sName);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csUnVec2(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csUnVec2(){};
};
GZ_mStaticClass(UnVec2)
namespace UnVec2{
}}}}
#endif