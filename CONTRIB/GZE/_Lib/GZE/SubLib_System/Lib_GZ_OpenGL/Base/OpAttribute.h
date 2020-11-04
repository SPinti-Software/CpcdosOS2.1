#if !( defined tHDef_Lib_GZ_OpenGL_Base_OpAttribute || defined  tHDef_IN_Lib_GZ_Gpu_Base_Attribute || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_Base_OpAttribute
namespace Lib_GZ_OpenGL{namespace Base{class cOpAttribute;}}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gpu/Base/Attribute.h"
namespace Lib_GZ_OpenGL{namespace Base{namespace OpAttribute{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ_OpenGL{class cOpGpuInfo;}
#include "Lib_GZ/Gpu/Base/_Attribute.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
namespace Lib_GZ_OpenGL{namespace Base{class cOpAttribute;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace Base{namespace OpAttribute{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpAttribute {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpAttribute : public Lib_GZ::Gpu::Base::cAttribute {

	public:


		//Var
		virtual void fLoad();
		virtual void fSetOffset(gzUInt _nValOffset);
		virtual void fSetDivisor(gzUInt _nDiv = 1);
		cOpAttribute(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpAttribute(Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName);

		inline cOpAttribute(const cOpAttribute &_o)  : Lib_GZ::Gpu::Base::cAttribute(_o){};
		inline cOpAttribute(const cOpAttribute &_o, gzBool _b)  : Lib_GZ::Gpu::Base::cAttribute(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpAttribute();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpAttribute : public Lib_GZ::Gpu::Base::csAttribute  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Gpu::Base::cAttribute> New(Lib_GZ::cBase* _parent, Lib_GZ::Gpu::ShaderBase::cProgramShader* _oProgram, gzPStr _sName){
			gzSp<cOpAttribute>_oTemp = gzSp<cOpAttribute>(new cOpAttribute(_parent));
			_oTemp->Ini_cOpAttribute(_oProgram, _sName);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csOpAttribute(Lib_GZ::cBase* _parent): Lib_GZ::Gpu::Base::csAttribute(_parent){};
		inline ~csOpAttribute(){};
};
GZ_mStaticClassOp(OpAttribute, Lib_GZ::Gpu::Base::Attribute);
namespace OpAttribute{
}}}
#endif