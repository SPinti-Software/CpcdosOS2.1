#if !( defined tHDef_Lib_GZ_CpcDos_Sys_OpSystem || defined  tHDef_IN_Lib_GZ_Sys_System || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_CpcDos_Sys_OpSystem
#define tHDef_IN_Lib_GZ_CpcDos_Sys_OpSystem
namespace Lib_GZ_CpcDos{namespace Sys{class cOpSystem;}}

#include "Lib_GZ_CpcDos/Lib_GZ_CpcDos.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/System.h"
namespace Lib_GZ_CpcDos{namespace Sys{namespace OpSystem{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cSystem;}}
namespace Lib_GZ_CpcDos{namespace Sys{class cOpSystem;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_CpcDos{namespace Sys{namespace OpSystem{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_CpcDos pOpSystem {

	public:
	//Pure Function

};

class tApi_Lib_GZ_CpcDos cOpSystem : public Lib_GZ::Sys::cSystem {

	public:


		//Var
		cOpSystem(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpSystem();

		inline cOpSystem(const cOpSystem &_o)  : Lib_GZ::Sys::cSystem(_o){};
		inline cOpSystem(const cOpSystem &_o, gzBool _b)  : Lib_GZ::Sys::cSystem(_o, _b){};
		virtual ~cOpSystem();

	private:

		//Var

};
class tApi_Lib_GZ_CpcDos csOpSystem : public Lib_GZ::Sys::csSystem  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<Lib_GZ::Sys::cSystem> New(Lib_GZ::cBase* _parent){
			gzSp<cOpSystem>_oTemp = gzSp<cOpSystem>(new cOpSystem(_parent));
			_oTemp->Ini_cOpSystem();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual void fSleep(gzUInt _nMilliseconds = 1);
		virtual void fExit();

		inline csOpSystem(Lib_GZ::cBase* _parent): Lib_GZ::Sys::csSystem(_parent){};
		inline ~csOpSystem(){};
};
GZ_mStaticClassOp(OpSystem, Lib_GZ::Sys::System);
namespace OpSystem{
}}}
#undef tHDef_IN_Lib_GZ_CpcDos_Sys_OpSystem
#endif