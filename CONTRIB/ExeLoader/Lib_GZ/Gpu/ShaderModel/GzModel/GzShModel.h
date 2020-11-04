#if !( defined tHDef_Lib_GZ_Gpu_ShaderModel_GzModel_GzShModel || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gpu_ShaderModel_GzModel_GzShModel
namespace Lib_GZ{namespace Gpu{namespace ShaderModel{namespace GzModel{class cGzShModel;}}}}

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
namespace Lib_GZ{namespace Gpu{namespace ShaderModel{namespace GzModel{namespace GzShModel{

//Structure Definition

}}}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cFragmentShader;}}}
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cVertexShader;}}}
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cProgramShader;}}}
#include "Lib_GZ/Gpu/Base/_Attribute.h"
#include "Lib_GZ/Gpu/Base/_Uniform.h"
namespace Lib_GZ{namespace Gpu{namespace Base{class cUnVec2;}}}
#include "Lib_GZ/Gpu/ShaderBase/_Vbo.h"
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuBatch;}}}
namespace Lib_GZ{namespace Base{class cPerspective;}}
namespace Lib_GZ{namespace Base{class cTestPod;}}
namespace Lib_GZ{namespace Base{class cTestPod2;}}
namespace Lib_GZ{namespace Gpu{namespace ShaderModel{namespace GzModel{class cGzShModel;}}}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gpu{namespace ShaderModel{namespace GzModel{namespace GzShModel{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pGzShModel {

	public:
	//Pure Function

};

class tApi_Lib_GZ cGzShModel : public Lib_GZ::cClass {

	public:


		//Var
		gzSp<Lib_GZ::Gpu::ShaderBase::cVertexShader> oVertex;
		gzSp<Lib_GZ::Gpu::ShaderBase::cFragmentShader> oFragement;
		gzSp<Lib_GZ::Gpu::ShaderBase::cProgramShader> oProgram;
		gzSp<Lib_GZ::Gpu::GpuObj::cGpuBatch> oGpuBatch;
		gzSp<Lib_GZ::Gpu::ShaderBase::cVbo> oVboBatch;
		gzSp<Lib_GZ::Gpu::Base::cUnVec2> oUvMouse;
		cGzShModel(Lib_GZ::cBase* _parent);
		virtual void Ini_cGzShModel();
		virtual gzBool fLoad();
		virtual void fPod(Lib_GZ::Base::cTestPod2* _oPod);
		virtual void fDraw();

		inline cGzShModel(const cGzShModel &_o)  : Lib_GZ::cClass(_o), oVertex(), oFragement(), oProgram(), oGpuBatch(), oVboBatch(), oUvMouse(){};
		inline cGzShModel(const cGzShModel &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), oVertex(), oFragement(), oProgram(), oGpuBatch(), oVboBatch(), oUvMouse(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cGzShModel();

	private:

		//Var

};
class tApi_Lib_GZ csGzShModel : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cGzShModel> New(Lib_GZ::cBase* _parent){
			gzSp<cGzShModel>_oTemp = gzSp<cGzShModel>(new cGzShModel(_parent));
			_oTemp->Ini_cGzShModel();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csGzShModel(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csGzShModel(){};
};
GZ_mStaticClass(GzShModel)
namespace GzShModel{
}}}}}
#endif