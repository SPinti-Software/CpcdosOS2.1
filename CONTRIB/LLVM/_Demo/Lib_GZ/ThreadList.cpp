//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.


//#include "Lib_GZ/SysThread.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Lib.h"
//Class include
#include "ThreadExt.h"

////// Current Lib Access  ////
namespace Lib_GZ{ namespace ThreadList{



    gzQArray<gzSp<cThreadExt>> qaList;
 //   gzQElement<gzSp<cThreadExt>> qeTask = qaList.GqeFirst();
    gzQElement<gzSp<cThreadExt>> qeTask;


    void Ini_Class(){
        qaList = gzQArray<gzSp<cThreadExt>> ();
        gzQElement<gzSp<cThreadExt>> qeTask = qaList.GqeFirst();

        printf("\n\n\n INaaaaaII_Class! \n\n");
    }


    void fAdd(cThreadExt* _opThread){
        Lib_GZ::Lib::nThreadCount++;
        qaList.fPush( gzSCast<cThreadExt>( _opThread->SpFromThis()) );
        _opThread->qeInList = qaList.GqeLast();
    }

    void fRemove(cThreadExt* _opThread){
        Lib_GZ::Lib::nThreadCount--;
    }


   void fNextTask(){
       if(qaList.GnTotal() > 0){
           // printf("DoTask %d \n" , Lib_GZ::Global::nThreadCount);
            qeTask = qaList.GqeFirst();
            qeTask.ref()->oThread->fLoop();
            qeTask = qeTask.GqeNext();
       }
   }

}



/*
void cThreadExt::Ini_cThreadList(){
}
cThreadList::~cThreadList(){
}
*/


}
