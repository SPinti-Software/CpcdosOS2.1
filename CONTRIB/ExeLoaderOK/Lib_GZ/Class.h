#if !( defined tHDef_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Class
#define tHDef_IN_Lib_GZ_Class
namespace Lib_GZ{class cClass;}

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/Thread.h"
// ------  Cpp section  ------ //
//#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/GzBase.h"
// --------------------------- //

namespace Lib_GZ{namespace Class{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{class cThreadMsg;}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Class{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

	// ------  Cpp section  ------ //
	cClass* MemCopy(cClass* _oClass);
	// --------------------------- //

}
class tApi_Lib_GZ pClass {

	public:
	//Pure Function

};

class tApi_Lib_GZ cClass : public Lib_GZ::cBase {

	public:


		//Var
		cClass(Lib_GZ::cBase* _parent);
		virtual void Ini_cClass();

		inline cClass(const cClass &_o)  : Lib_GZ::cBase(_o){};
		inline cClass(const cClass &_o, gzBool _b)  : Lib_GZ::cBase(_o, _b){};
		virtual ~cClass();

	private:

		//Var

};
class tApi_Lib_GZ csClass : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cClass> New(Lib_GZ::cBase* _parent){
			gzSp<cClass>_oTemp = gzSp<cClass>(new cClass(_parent));
			_oTemp->Ini_cClass();
			return _oTemp;
		}
		//Public static
		gzInt nClassId;

		//Static function

		inline csClass(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csClass(){};
};
GZ_mStaticClass(Class)
namespace Class{
}}
#undef tHDef_IN_Lib_GZ_Class
#endif