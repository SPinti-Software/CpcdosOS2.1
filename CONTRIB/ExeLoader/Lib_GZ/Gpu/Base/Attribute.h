#if !( defined tHDef_Lib_GZ_Gpu_Base_Attribute || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_Base_Attribute
namespace Lib_GZ{namespace Gpu{namespace Base{class cAttribute;}}}

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
#include "_Attribute.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Gpu{namespace Base{namespace Attribute{

//Structure Definition

}}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gpu/ShaderBase/_ShaderBase.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
#include "Lib_GZ/Gpu/Base/_Attribute.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace Base{namespace Attribute{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pAttribute {

	public:
	//Pure Function

};

class tApi_Lib_GZ cAttribute : public Lib_GZ::cClass {

	public:


		//Var
		Lib_GZ::Gpu::Base::Attribute::eDataType hDataType;
		gzVal nId;
		gzStr sName;
		gzBool bValid;
		gzWp<Lib_GZ::Gpu::ShaderBase::cProgramShader> oProgram;
		cAttribute(Lib_GZ::cBase* _parent);
		virtual void Ini_cAttribute(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName);
		virtual void fLoad();
		virtual void fSetOffset();
		virtual void fSetDivisor(gzUInt _nDiv = 1);

		inline cAttribute(const cAttribute &_o)  : Lib_GZ::cClass(_o), hDataType(), nId(), sName(_o.sName), bValid(_o.bValid), oProgram(){};
		inline cAttribute(const cAttribute &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), hDataType(), nId(), sName(_o.sName,_b), bValid(_o.bValid), oProgram(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cAttribute();

	private:

		//Var

};
class tApi_Lib_GZ csAttribute : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cAttribute> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){
			gzSp<cAttribute>_oTemp = gzSp<cAttribute>(new cAttribute(_parent));
			_oTemp->Ini_cAttribute(_oProgram, _sName);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csAttribute(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csAttribute(){};
};
GZ_mStaticClass(Attribute)
namespace Attribute{
}}}}
#endif