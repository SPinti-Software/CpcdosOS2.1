#if !( defined tHDef_Lib_GZ_Gfx_Clip || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Clip
#define tHDef_IN_Lib_GZ_Gfx_Clip
namespace Lib_GZ{namespace Gfx{class cClip;}}

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
#include "Lib_GZ/Gfx/Object.h"
namespace Lib_GZ{namespace Gfx{namespace Clip{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ/Gfx/_Attribute.h"
namespace Lib_GZ{namespace Gfx{class cObject;}}
#include "Lib_GZ/Gfx/_Root.h"
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{class cClip;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Clip{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pClip {

	public:
	//Pure Function

};

class tApi_Lib_GZ cClip : public Lib_GZ::Gfx::cObject {

	public:


		//Var
		cClip(Lib_GZ::cBase* _parent);
		virtual void Ini_cClip(Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY);
		virtual void fUpdate();
		virtual void fDraw();
		virtual void fContextResume();
		virtual void fApplyTransform();
		virtual void fAddSequence();
		virtual void fCalculateChildBorder();

		inline cClip(const cClip &_o)  : Lib_GZ::Gfx::cObject(_o){};
		inline cClip(const cClip &_o, gzBool _b)  : Lib_GZ::Gfx::cObject(_o, _b){};
		virtual ~cClip();

	private:

		//Var

};
class tApi_Lib_GZ csClip : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cClip> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent, gzFloat _nX, gzFloat _nY){
			gzSp<cClip>_oTemp = gzSp<cClip>(new cClip(_parent));
			_oTemp->Ini_cClip(_oParent, _nX, _nY);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csClip(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csClip(){};
};
GZ_mStaticClass(Clip)
namespace Clip{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Clip
#endif