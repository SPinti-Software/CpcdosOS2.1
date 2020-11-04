//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "ThreadExt.h"
#include "Lib_GZ/Sys/ThreadObj.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/ThreadList.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/Debug.h"
//Class include

////// Current Lib Access  ////
namespace Lib_GZ{

    void cThreadExt::Ini_cThreadExt(Lib_GZ::Dlg_r_void_p_gzPtr::DlgP _dCallBack){

        ThreadList::fAdd(this);
       // pSysThread = new cSysThread(_dCallBack, 0);
       oThreadObj = Sys::ThreadObj::Get(thread)->New(this, this, _dCallBack.get());
       fStart();
      // printf("Ini_cThreadExt crete\n");
    }


	/*
	void cThreadExt::fThreadCallBack(Lib_GZ::cInterface* _opItf){

	}*/

	void cThreadExt::fStart(){
        #ifndef GZ_tMonothread
        	if(!oThreadObj->bStarted){
			oThreadObj->fStart();
            }
        #else
           oThreadObj->bStarted = true;
            oThreadObj->dCallBack.fCall(this);

        #endif // GZ_tMonothread

	}

	void cThreadExt::fJoin(){
		if(!oThreadObj->bStarted){
			oThreadObj->fJoin();
		}
	}

	void cThreadExt::fCancel(){
		//oThreadObj->bStarted = false;
	}

	void cThreadExt::fClose(){

	}


    cThreadExt::~cThreadExt(){

        //Sleep(50);
        if( oThreadObj->bStarted){
             while(oThread == 0){ //Wait for complete creation (Linking)
                Sys::System::Get(thread)->fSleep(1);
             }
            oThread->bRun = false;
            oThreadObj->fClose();
        }
       // delete pSysThread;
    }

}
