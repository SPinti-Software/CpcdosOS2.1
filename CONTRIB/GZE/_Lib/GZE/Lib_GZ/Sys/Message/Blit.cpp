//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/Message/Blit.h"

#include "Lib_GZ/Sys/ContextHandle.h"
#include "Lib_GZ/Sys/Message/BlitComplete.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

//Sub Class include
#include "Lib_GZ/Sys/Message/ContextLink.h"


namespace Lib_GZ{namespace Sys{namespace Message{namespace Blit{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Blit
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Blit"},{0,"fRun"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Blit)

cBlit::cBlit(Lib_GZ::cBase* _parent) : Lib_GZ::cThreadMsg(_parent){
	nPosX = 4;
	nPosY = 3;

}

void cBlit::Ini_cBlit(){ gz_(0)
}

void cBlit::fRun(){ gz_(1)
	gzSp<Lib_GZ::Sys::cContextHandle> _oHandle = gzSCastSelf<Lib_GZ::Sys::cContextHandle>(parent.get());
	if (_oHandle->oLink->bGpuDraw != 0){
		_oHandle->fGpuBlit();
	}else{
		_oHandle->fBlit();
	}
	gzSp<Lib_GZ::Sys::Message::cBlitComplete> _oBlitComplete = gzSCast<Lib_GZ::Sys::Message::cBlitComplete>((Lib_GZ::Sys::Message::BlitComplete::Get(thread)->New(this)));
	_oHandle->oLink->gFrom.fSend((Lib_GZ::cThreadMsg*)(_oBlitComplete.get()));
}

gzAny cBlit::MemCopy(){
return (gzAny)new cBlit(*this);
}
gzAny cBlit::DeepCopy(){
return (gzAny)new cBlit(*this, true);
}
cBlit::~cBlit(){
}



}}}