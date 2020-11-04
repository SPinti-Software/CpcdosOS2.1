#if !( defined tHDef_Lib_GZ_Sys_System || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_System
namespace Lib_GZ{namespace Sys{class cSystem;}}

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
namespace Lib_GZ{namespace Sys{namespace System{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Sys{class cSystem;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace System{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pSystem {

	public:
	//Pure Function

};

class tApi_Lib_GZ cSystem : public Lib_GZ::cClass {

	public:


		//Var
		cSystem(Lib_GZ::cBase* _parent);
		virtual void Ini_cSystem();
		virtual void fSleep(gzUInt _nMilliseconds = 1);

		inline cSystem(const cSystem &_o)  : Lib_GZ::cClass(_o){};
		inline cSystem(const cSystem &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cSystem();

	private:

		//Var

};
class tApi_Lib_GZ csSystem : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cSystem> New(Lib_GZ::cBase* _parent){
			gzSp<cSystem>_oTemp = gzSp<cSystem>(new cSystem(_parent));
			_oTemp->Ini_cSystem();
			return _oTemp;
		}
		//Public static
		gzSp<Lib_GZ::Sys::cSystem> oInst;
		gzUIntX nInstance;
		gzBool bHaveGpu;
		gzStr sCmdLineArguments;

		//Static function
		virtual void fSleep(gzUInt _nMilliseconds = 1);
		virtual void fIni(gzUIntX _nInstance, gzPStr _sCommandLine, gzUInt _nShowCmd);
		virtual gzBool fDetectGpu();
		virtual void fExit();
		virtual gzBool GbAnyResolutionAvailable();
		virtual gzUInt GnForceWidth();
		virtual gzUInt GnForceHeight();

		inline csSystem(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csSystem(){};
};
GZ_mStaticClass(System)
namespace System{
}}}
#endif