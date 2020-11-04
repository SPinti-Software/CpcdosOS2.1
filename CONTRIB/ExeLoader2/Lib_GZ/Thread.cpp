//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/Debug.h"
//Class include

////// Current Lib Access  ////
namespace Lib_GZ{

	
gzUInt	cThread::nCurrId = 0;
cThread::cThread(cBase* _parent):cBase(_parent),bRun(true){
    thread = this;
	nId = nCurrId;
	nCurrId++;
};


void cThread::fLinkThreadExt(cThreadExt* _pThreadExt){
	Lib_GZ::Sys::Debug::Get(thread)->New(this); //TODO better way? DebugOnly?
    pThreadExt = _pThreadExt;
    pThreadExt->oThread = this;

}

void cThread::fStart(cBase* _opObj){

    oObj  = gzSCastSelf<Lib_GZ::cBase>(_opObj);
    fLoop();

}

void cThread::fLoop(){
#ifndef GZ_tMonothread
    while(bRun){
        oObj->ThreadLoop();
        Lib_GZ::Sys::System::Get(thread)->fSleep(nSleepTime); //TODO Syteme
    }
#else
    oObj->ThreadLoop();
#endif
}

cThread::~cThread(){
}
}
