//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Root.h"

#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Gfx{namespace Root{
}}}


namespace Lib_GZ{namespace Gfx{namespace Root{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Root
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Root"},{0,"fChangeParent"},{0,"fUpdateChild"},{0,"fUpdateRoot"},{0,"fRender"},{0,"fApplyPos"},{0,"tDelete"},{0,"fFinalUpdate"},{0,"fApplyTransform"},{0,"fUpdateChildToParent"},{0,"fUpdateParentToChild"},{0,"fApplyColor"},{0,"fContextResume"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Root)

cRoot::cRoot(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cDispacher(_parent){
	nEventValue=0;bFirstSetLimit=0;
	bLimitLock = false;
	bDeleteReady = true;
	bToDelete = false;
	bContainer = false;
	nParBrRed = 0;
	nParBrBlue = 0;
	nParBrGreen = 0;
	nParAlpha = 0;
	nParRevRed = 0;
	nParRevBlue = 0;
	nParRevGreen = 0;
	nParRotation = gzFloat(0);
	nParYaw = gzFloat(0);
	nParPitch = gzFloat(0);

}

void cRoot::Ini_cRoot(Lib_GZ::Gfx::cRoot* _oParent){ gz_(0)
	Ini_cDispacher();
	fChangeParent((Lib_GZ::Gfx::cRoot*)(_oParent));
}

void cRoot::fChangeParent(Lib_GZ::Gfx::cRoot* _oParent, gzBool _bUpdateManually){ gz_(1)
	if (_oParent != (Lib_GZ::Gfx::cRoot*)(GZ_NullObj)){
		oParent = gzSCastSelf<Lib_GZ::Gfx::cObject>(_oParent);
	}
	if (_oParent != (Lib_GZ::Gfx::cRoot*)(GZ_NullObj)){
		oItf = _oParent->oItf;
		oDstBuff = _oParent->oDstBuff;
		if (gzInt(_bUpdateManually) == 0){
			_oParent->fAddChild((Lib_GZ::Gfx::cRoot*)(this));
		}
	}
}

void cRoot::fUpdateChild(){ gz_(2)
	fDispatchUpdate();
}

void cRoot::fUpdateRoot(){ gz_(3)
	fUpdateParentToChild();
	fApplyPos();
	fApplyColor();
	fApplyTransform();
	fUpdateChild();
}

void cRoot::fRender(){ gz_(4)
	GZ_mIsImplemented("GzNa::Root::fRender")
}

void cRoot::fApplyPos(){ gz_(5)
	GZ_mIsImplemented("GzNa::Root::fApplyPos")
}

void cRoot::tDelete(){ gz_(6)
	if (bDeleteReady != 0){
	}else{
		bToDelete = true;
	}
}

void cRoot::fFinalUpdate(){ gz_(7)
	GZ_mIsImplemented("GzNa::Root::fFinalUpdate")
}

void cRoot::fApplyTransform(){ gz_(8)
	GZ_mIsImplemented("GzNa::Root::fApplyTransform")
}

void cRoot::fUpdateChildToParent(){ gz_(9)
	GZ_mIsImplemented("GzNa::Root::fUpdateChildToParent")
}

void cRoot::fUpdateParentToChild(){ gz_(10)
	GZ_mIsImplemented("GzNa::Root::fUpdateParentToChild")
}

void cRoot::fApplyColor(){ gz_(11)
	GZ_mIsImplemented("GzNa::Root::fApplyColor")
}

void cRoot::fContextResume(){ gz_(12)
	GZ_mIsImplemented("GzNa::Root::fContextResume")
}

cRoot::~cRoot(){
}



}}