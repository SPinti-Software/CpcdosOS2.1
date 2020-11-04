#if !( defined tHDef_Lib_GZ_Sys_FrameRate || defined  tHDef_IN_Lib_GZ_Gfx_Buffer || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_FrameRate
#define tHDef_IN_Lib_GZ_Sys_FrameRate
namespace Lib_GZ{namespace Sys{class cFrameRate;}}

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
#include "Lib_GZ/Gfx/Buffer.h"
namespace Lib_GZ{namespace Sys{namespace FrameRate{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Root.h"
namespace Lib_GZ{namespace Gfx{class cGlobalData;}}
#include "Lib_GZ/Gfx/_Buffer.h"
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Sys{class cFrameRate;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Sys{namespace FrameRate{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pFrameRate {

	public:
	//Pure Function

};

class tApi_Lib_GZ cFrameRate : public Lib_GZ::Gfx::cBuffer {

	public:


		//Var
		gzInt nFramePerSecond;
		cFrameRate(Lib_GZ::cBase* _parent);
		virtual void Ini_cFrameRate(Lib_GZ::Gfx::cRoot* _oParent, gzUInt _nWidth, gzUInt _nHeight);
		virtual void fStartProcess();
		virtual void fQuit();
		virtual void ThreadLoop();
		virtual void fBlit();
		virtual void fNewFrame();
		virtual void fIniProcess();

		inline cFrameRate(const cFrameRate &_o)  : Lib_GZ::Gfx::cBuffer(_o), nFramePerSecond(_o.nFramePerSecond){};
		inline cFrameRate(const cFrameRate &_o, gzBool _b)  : Lib_GZ::Gfx::cBuffer(_o, _b), nFramePerSecond(_o.nFramePerSecond){};
		virtual ~cFrameRate();

	private:

		//Var

};
class tApi_Lib_GZ csFrameRate : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cFrameRate> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzUInt _nWidth, gzUInt _nHeight){
			gzSp<cFrameRate>_oTemp = gzSp<cFrameRate>(new cFrameRate(_parent));
			_oTemp->Ini_cFrameRate(_oParent, _nWidth, _nHeight);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csFrameRate(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csFrameRate(){};
};
GZ_mStaticClass(FrameRate)
namespace FrameRate{
}}}
#undef tHDef_IN_Lib_GZ_Sys_FrameRate
#endif