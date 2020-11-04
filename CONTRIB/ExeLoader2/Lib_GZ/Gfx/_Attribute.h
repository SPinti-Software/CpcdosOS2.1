//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

namespace Lib_GZ{namespace Gfx{class cAttribute;}}
#ifndef tHDef_HH_Lib_GZ_Gfx_Attribute
#define tHDef_HH_Lib_GZ_Gfx_Attribute
#include "Lib_GZ/GzTypes.h"
namespace Lib_GZ{namespace Gfx{namespace Attribute{

	//Public const
	//Private const

	//Enum
	struct eRotateOrder{
		enum Type {
			RollYawPitch = 0,
			YawPitchRoll = 1
		};
		Type t_;inline eRotateOrder(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eRotateOrder(){};
	};
}}}
#endif