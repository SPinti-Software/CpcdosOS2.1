//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

namespace Lib_GZ{namespace Sys{class cWindow;}}
#ifndef tHDef_HH_Lib_GZ_Sys_Window
#define tHDef_HH_Lib_GZ_Sys_Window
#include "Lib_GZ/GzTypes.h"
namespace Lib_GZ{namespace Sys{namespace Window{

	//Public const
	const gzInt nPosCenter = -1;
	//Private const

	//Enum
	struct eWinState{
		enum Type {
			Normal = 0,
			Minimised = 1,
			Maximised = 2,
			Hidden = 3
		};
		Type t_;inline eWinState(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eWinState(){};
	};
	struct eWinBorder{
		enum Type {
			Normal = 0,
			NormalDouble = 1,
			None = 2,
			BorderOnly = 3,
			BorderOnlyDouble = 4,
			Title = 5,
			TitleDouble = 6
		};
		Type t_;inline eWinBorder(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eWinBorder(){};
	};
	struct eWinClick{
		enum Type {
			None = 0,
			Close = 1,
			Maximize = 2,
			Minimize = 3
		};
		Type t_;inline eWinClick(Type t) : t_(t) {}operator Type () const {return t_;}
		inline eWinClick(){};
	};
}}}
#endif