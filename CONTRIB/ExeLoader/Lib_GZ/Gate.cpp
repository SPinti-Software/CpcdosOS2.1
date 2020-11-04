//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.



#include "Lib_GZ/Gate.h"


#include "Lib_GZ/AtomicQueue.h"


namespace Lib_GZ{
namespace Gate{

	void fAdd(Lib_GZ::cHoldGate* _oHold){
		_oHold->nNbIns++;
	}

	void fSub(Lib_GZ::cHoldGate* _oHold){
		if(_oHold->nNbIns == 1){
			delete _oHold;
		}else{
			_oHold->nNbIns--;
		}
	}
}


	cHoldGate::cHoldGate():nNbIns(1){
		oQueue = new cAtomicQueue();
	}

	cHoldGate::~cHoldGate(){
		delete oQueue;
	}


	 int cHoldGate::fSend(Lib_GZ::cThreadMsg* _oMsg){

		Lib_GZ::cThreadMsg* _oCpyMsg =  (Lib_GZ::cThreadMsg*) ((Lib_GZ::cDelegate*)_oMsg)->DeepCopy();
		
		oQueue->fSend(_oCpyMsg);
		return 0;
	 }


	Lib_GZ::cThreadMsg* cHoldGate::fReceive(cBase* _oReceivingClass) {
        Lib_GZ::cThreadMsg* _oMsg = (Lib_GZ::cThreadMsg*)oQueue->fReceive();
        if(_oMsg){
			_oMsg->parent = _oReceivingClass->SpFromThis();
            _oMsg->thread = _oReceivingClass->thread;
        }
		return _oMsg;
	}


 }