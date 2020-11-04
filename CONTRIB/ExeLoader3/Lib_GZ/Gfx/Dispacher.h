#if !( defined tHDef_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Dispacher
#define tHDef_IN_Lib_GZ_Gfx_Dispacher
namespace Lib_GZ{namespace Gfx{class cDispacher;}}

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
namespace Lib_GZ{namespace Gfx{namespace Dispacher{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gfx{class cObject;}}
#include "Lib_GZ/Gfx/_Buffer.h"
#include "Lib_GZ/Gfx/_Root.h"
namespace Lib_GZ{namespace Gfx{class cDispacher;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Dispacher{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pDispacher {

	public:
	//Pure Function

};

class tApi_Lib_GZ cDispacher : public Lib_GZ::cClass {

	public:


		//Var
		gzQArray<gzSp<Lib_GZ::Gfx::cRoot>> qaChild;
		cDispacher(Lib_GZ::cBase* _parent);
		virtual void Ini_cDispacher();
		virtual void fAddChild(Lib_GZ::Gfx::cRoot* _oObj);
		virtual void fDispatchUpdate();
		virtual void fDispatchRender();
		virtual void fDispatchContextResume();

		inline cDispacher(const cDispacher &_o)  : Lib_GZ::cClass(_o), qaChild(){};
		inline cDispacher(const cDispacher &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), qaChild(){};
		virtual ~cDispacher();

	private:

		//Var

};
class tApi_Lib_GZ csDispacher : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cDispacher> New(Lib_GZ::cBase* _parent){
			gzSp<cDispacher>_oTemp = gzSp<cDispacher>(new cDispacher(_parent));
			_oTemp->Ini_cDispacher();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csDispacher(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csDispacher(){};
};
GZ_mStaticClass(Dispacher)
namespace Dispacher{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Dispacher
#endif