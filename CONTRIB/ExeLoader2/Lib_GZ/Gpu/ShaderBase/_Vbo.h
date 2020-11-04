//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

namespace Lib_GZ{namespace Gpu{namespace ShaderBase{class cVbo;}}}
#ifndef tHDef_HH_Lib_GZ_Gpu_ShaderBase_Vbo
#define tHDef_HH_Lib_GZ_Gpu_ShaderBase_Vbo
#include "Lib_GZ/GzTypes.h"
namespace Lib_GZ{namespace Gpu{namespace ShaderBase{namespace Vbo{

	//Public const
	//Private const

	//Enum
	struct eVecType{
		enum Type {
			Vec1 = 0,
			Vec2 = 1,
			Vec3 = 2,
			Vec4 = 3,
			IVec1 = 4,
			IVec2 = 5,
			IVec3 = 6,
			IVec4 = 7
		};
		Type t_;inline eVecType(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eVecType(){};
	};
}}}}
#endif