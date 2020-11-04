#if !( defined tHDef_Lib_GZ_CpcDos_Sys_OpContext || defined  tHDef_IN_Lib_GZ_Sys_Context || defined  tHDef_IN_Lib_GZ_Sys_Window || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_CpcDos_Sys_OpContext
#define tHDef_IN_Lib_GZ_CpcDos_Sys_OpContext
namespace Lib_GZ_CpcDos{namespace Sys{class cOpContext;}}

#include "Lib_GZ_CpcDos/Lib_GZ_CpcDos.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/Context.h"
namespace Lib_GZ_CpcDos{namespace Sys{namespace OpContext{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gpu{class cGpu;}}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
#include "Lib_GZ/Input/_Key.h"
namespace Lib_GZ{namespace Sys{class cContext;}}
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace Sys{class cSystem;}}
namespace Lib_GZ_CpcDos{namespace Sys{class cOpContext;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_CpcDos{namespace Sys{namespace OpContext{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_CpcDos pOpContext {

	public:
	//Pure Function

};

class tApi_Lib_GZ_CpcDos cOpContext : public Lib_GZ::Sys::cContext {

	public:


		//Var
		cOpContext(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpContext(Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295));

		inline cOpContext(const cOpContext &_o)  : Lib_GZ::Sys::cContext(_o){};
		inline cOpContext(const cOpContext &_o, gzBool _b)  : Lib_GZ::Sys::cContext(_o, _b){};
		virtual ~cOpContext();

	private:

		//Var

};
class tApi_Lib_GZ_CpcDos csOpContext : public Lib_GZ::Sys::csContext  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Sys::cContext> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent = false, gzInt _nBgColor = gzInt(4294967295)){
			gzSp<cOpContext>_oTemp = gzSp<cOpContext>(new cOpContext(_parent));
			_oTemp->Ini_cOpContext(_oInterface, _sWindowName, _nFrameWidth, _nFrameHeight, _bTransparent, _nBgColor);
			return _oTemp;
		}
		//Public static

		//Static function
		virtual void fManageMessageOp();

		inline csOpContext(Lib_GZ::cBase* _parent): Lib_GZ::Sys::csContext(_parent){};
		inline ~csOpContext(){};
};
GZ_mStaticClassOp(OpContext, Lib_GZ::Sys::Context);
namespace OpContext{
}}}
#undef tHDef_IN_Lib_GZ_CpcDos_Sys_OpContext
#endif