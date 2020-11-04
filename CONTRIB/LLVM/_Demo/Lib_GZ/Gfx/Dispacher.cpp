//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Gfx/Dispacher.h"

#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Gfx{namespace Dispacher{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Dispacher
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Dispacher"},{0,"fAddChild"},{0,"fDispatchUpdate"},{0,"fDispatchRender"},{0,"fDispatchContextResume"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Dispacher)

cDispacher::cDispacher(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cDispacher::Ini_cDispacher(){ gz_(0)
}

void cDispacher::fAddChild(Lib_GZ::Gfx::cRoot* _oObj){ gz_(1)
	qaChild.fPush(gzSCastSelf<Lib_GZ::Gfx::cRoot>(_oObj));
}

void cDispacher::fDispatchUpdate(){ gz_(2)
	gzFOR_EACH_QArrayNew(qaChild, _qe_oChild, gzSp<Lib_GZ::Gfx::cRoot>){
		Lib_GZ::Gfx::cRoot* _oChild = _qe_oChild.val()->get();
		_oChild->fUpdateRoot();
	gzEND_QArray(_qe_oChild)}
}

void cDispacher::fDispatchRender(){ gz_(3)
	gzFOR_EACH_QArrayNew(qaChild, _qe_oChild, gzSp<Lib_GZ::Gfx::cRoot>){
		Lib_GZ::Gfx::cRoot* _oChild = _qe_oChild.val()->get();
		_oChild->fRender();
	gzEND_QArray(_qe_oChild)}
}

void cDispacher::fDispatchContextResume(){ gz_(4)
	gzFOR_EACH_QArrayNew(qaChild, _qe_oChild, gzSp<Lib_GZ::Gfx::cRoot>){
		Lib_GZ::Gfx::cRoot* _oChild = _qe_oChild.val()->get();
		_oChild->fContextResume();
	gzEND_QArray(_qe_oChild)}
}

cDispacher::~cDispacher(){
}



}}