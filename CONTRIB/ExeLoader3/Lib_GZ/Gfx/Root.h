#if !( defined tHDef_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Gfx_Root
#define tHDef_IN_Lib_GZ_Gfx_Root
namespace Lib_GZ{namespace Gfx{class cRoot;}}

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
#include "_Root.h"
#include "Lib_GZ/Gfx/Dispacher.h"
namespace Lib_GZ{namespace Gfx{namespace Root{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gfx{class cDispacher;}}
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace Gfx{class cObject;}}
#include "Lib_GZ/Gfx/_Buffer.h"
namespace Lib_GZ{namespace Gfx{class cInterface;}}
#include "Lib_GZ/Gfx/_Attribute.h"
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gpu{namespace GpuObj{class cGpuObject;}}}
#include "Lib_GZ/Gfx/_Root.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ{namespace Gfx{namespace Root{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pRoot {

	public:
	//Pure Function

};

class tApi_Lib_GZ cRoot : public Lib_GZ::Gfx::cDispacher {

	public:


		//Var
		gzWp<Lib_GZ::Gfx::cObject> oParent;
		Lib_GZ::Gfx::Root::eType hType;
		gzBool bFirstSetLimit;
		gzBool bLimitLock;
		gzBool bDeleteReady;
		gzBool bToDelete;
		gzBool bContainer;
		gzInt nParBrRed;
		gzInt nParBrBlue;
		gzInt nParBrGreen;
		gzInt nParAlpha;
		gzInt nParRevRed;
		gzInt nParRevBlue;
		gzInt nParRevGreen;
		gzFloat nParRotation;
		gzFloat nParYaw;
		gzFloat nParPitch;
		gzWp<Lib_GZ::Gfx::cInterface> oItf;
		gzWp<Lib_GZ::Gfx::cBuffer> oDstBuff;
		cRoot(Lib_GZ::cBase* _parent);
		virtual void Ini_cRoot(Lib_GZ::Gfx::cRoot* _oParent);
		virtual void fChangeParent(Lib_GZ::Gfx::cRoot* _oParent, gzBool _bUpdateManually = false);
		virtual void fUpdateChild();
		virtual void fUpdateRoot();
		virtual void fRender();
		virtual void fApplyPos();
		virtual void tDelete();
		virtual void fFinalUpdate();
		virtual void fApplyTransform();
		virtual void fUpdateChildToParent();
		virtual void fUpdateParentToChild();
		virtual void fApplyColor();
		virtual void fContextResume();

		inline cRoot(const cRoot &_o)  : Lib_GZ::Gfx::cDispacher(_o), oParent(), hType(), nEventValue(_o.nEventValue), bFirstSetLimit(_o.bFirstSetLimit), bLimitLock(_o.bLimitLock), bDeleteReady(_o.bDeleteReady), bToDelete(_o.bToDelete), bContainer(_o.bContainer), nParBrRed(_o.nParBrRed), nParBrBlue(_o.nParBrBlue), nParBrGreen(_o.nParBrGreen), nParAlpha(_o.nParAlpha), nParRevRed(_o.nParRevRed), nParRevBlue(_o.nParRevBlue), nParRevGreen(_o.nParRevGreen), nParRotation(_o.nParRotation), nParYaw(_o.nParYaw), nParPitch(_o.nParPitch), oItf(), oDstBuff(){};
		inline cRoot(const cRoot &_o, gzBool _b)  : Lib_GZ::Gfx::cDispacher(_o, _b), oParent(), hType(), nEventValue(_o.nEventValue), bFirstSetLimit(_o.bFirstSetLimit), bLimitLock(_o.bLimitLock), bDeleteReady(_o.bDeleteReady), bToDelete(_o.bToDelete), bContainer(_o.bContainer), nParBrRed(_o.nParBrRed), nParBrBlue(_o.nParBrBlue), nParBrGreen(_o.nParBrGreen), nParAlpha(_o.nParAlpha), nParRevRed(_o.nParRevRed), nParRevBlue(_o.nParRevBlue), nParRevGreen(_o.nParRevGreen), nParRotation(_o.nParRotation), nParYaw(_o.nParYaw), nParPitch(_o.nParPitch), oItf(), oDstBuff(){};
		virtual ~cRoot();

	private:

		//Var
		gzInt nEventValue;

};
class tApi_Lib_GZ csRoot : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cRoot> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent){
			gzSp<cRoot>_oTemp = gzSp<cRoot>(new cRoot(_parent));
			_oTemp->Ini_cRoot(_oParent);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csRoot(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csRoot(){};
};
GZ_mStaticClass(Root)
namespace Root{
}}}
#undef tHDef_IN_Lib_GZ_Gfx_Root
#endif