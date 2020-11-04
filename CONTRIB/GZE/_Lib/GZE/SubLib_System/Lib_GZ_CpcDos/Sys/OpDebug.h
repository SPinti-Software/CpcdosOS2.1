#if !( defined tHDef_Lib_GZ_CpcDos_Sys_OpDebug || defined  tHDef_IN_Lib_GZ_Sys_Debug || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_CpcDos_Sys_OpDebug
#define tHDef_IN_Lib_GZ_CpcDos_Sys_OpDebug
namespace Lib_GZ_CpcDos{namespace Sys{class cOpDebug;}}

#include "Lib_GZ_CpcDos/Lib_GZ_CpcDos.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/Debug.h"
namespace Lib_GZ_CpcDos{namespace Sys{namespace OpDebug{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ_CpcDos{namespace Sys{class cOpDebug;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_CpcDos{namespace Sys{namespace OpDebug{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_CpcDos pOpDebug {

	public:
	//Pure Function

};

class tApi_Lib_GZ_CpcDos cOpDebug : public Lib_GZ::Sys::cDebug {

	public:


		//Var
		cOpDebug(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpDebug();

		inline cOpDebug(const cOpDebug &_o)  : Lib_GZ::Sys::cDebug(_o){};
		inline cOpDebug(const cOpDebug &_o, gzBool _b)  : Lib_GZ::Sys::cDebug(_o, _b){};
		virtual ~cOpDebug();

	private:

		//Var

};
class tApi_Lib_GZ_CpcDos csOpDebug : public Lib_GZ::Sys::csDebug  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Sys::cDebug> New(Lib_GZ::cBase* _parent){
			gzSp<cOpDebug>_oTemp = gzSp<cOpDebug>(new cOpDebug(_parent));
			_oTemp->Ini_cOpDebug();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual void fTrace1(gzPStr _sValue);
		virtual void fTrace2(gzPStr _sValue);
		virtual void fTrace3(gzPStr _sValue);
		virtual void fWarning(gzPStr _sValue);
		virtual void fError(gzPStr _sValue);
		virtual void fPass(gzPStr _sValue);
		virtual void fFatal(gzPStr _sValue);

		inline csOpDebug(Lib_GZ::cBase* _parent): Lib_GZ::Sys::csDebug(_parent){};
		inline ~csOpDebug(){};
};
GZ_mStaticClassOp(OpDebug, Lib_GZ::Sys::Debug);
namespace OpDebug{
}}}
#undef tHDef_IN_Lib_GZ_CpcDos_Sys_OpDebug
#endif