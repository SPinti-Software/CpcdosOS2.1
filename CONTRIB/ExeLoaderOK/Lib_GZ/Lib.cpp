//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib.h"
#include "Lib_GZ/Sys/System.h"

#ifndef GZ_tGenerate_Embed_Files
    #include "Lib_GZ/Sys/Context.h"
#endif
//#include "Lib_GZ/SysFrameRate.h"
#include "Lib_GZ/Sys/File.h"
#include "Lib_GZ/Sys/Debug.h"

#include "Lib_GZ/ThreadList.h"
#include "Lib_GZ/ThreadMsg.h"


/////////  NullObj Implementation  //////  //TODO   // 191 GZ_NullObj = GZ_SpNullObj.get(); TODO
//gzSp<Lib_GZ::cDelegate> GZ_SpNullObj = gzSp<Lib_GZ::cDelegate>(new Lib_GZ::cDelegate);
//Lib_GZ::cDelegate* GZ_NullObj; //ReadOnly
/////////////////////////////////////////

namespace Lib_GZ {

namespace Lib {
		gzUInt _nId = Lib_GZ::Lib::nClass++;

		gzBool bLittleEndian;


       gzInt32 nThreadCount = 0; //TODO atomic

       uLib* rLastLib = 0;  //zero-initialization -> before dynamic -> ini order ok
       gzUInt nClass = 0; //SpecialVar


        gzBool bIniFinish = false;
        gzInt32 nNumWindows = 0;
        gzBool bIsAlive = true;
        gzInt32 nAppReturn = 0;
        gzBool bIsIni = false;

         gzStr sDirExe;
         gzStr sExeName;
         gzStr sExeExt;
         gzStr sExe;


         gzStr sDirRcFiles;
         gzStr sDirRcEmbed;
        gzArray<gzStr> aLib;

        gzWp<Lib_GZ::Sys::cContext> oWinLib;

        void Ini_Class(){
            //IniOthers
           Lib_GZ::ThreadList::Ini_Class();
            printf("\n\n\n INII_Class! \n\n");
        }

   //     gzQArray<gzSp<> > qaThread;
}

GZ_mCppClass( Lib);

//Resource*
//////////////////  Ressources loader    //////////////
struct uRcList{
    uRcList* rNext;
    File::cResource* _oRc;
};
static uRcList* rFirstRc = 0; //zero-initialization -> before dynamic


struct uRcPtrFuncList{
    uRcPtrFuncList* rPrec;
    gzPtrFuncRc _dPtrFunc;
};
static uRcPtrFuncList* _rLastPtrFunc = 0;
gzBool Lib::fAddLoadRc(gzPtrFuncRc _dPtrFunc){
    uRcPtrFuncList* _rPtrFunc = (uRcPtrFuncList*)GZ_fMalloc(1, sizeof(uRcPtrFuncList));
    _rPtrFunc->_dPtrFunc =  _dPtrFunc;
    _rPtrFunc->rPrec =  _rLastPtrFunc;
    _rLastPtrFunc = _rPtrFunc;
    return true;
}



void csLib::fStaticIni(){

	gzStr _sPath = Lib_GZ::Sys::File::Get(thread)->fGetExePath();
	_sPath.fEnd();
	_sPath.fPathFindPrecFolder();
	_sPath.fNext();
	Lib::sDirExe = _sPath.fRevSubStr(gzStrToEnd);
/////////
	Lib::sExeName = _sPath.fPathGetFileName();
	Lib::sExeExt = _sPath.fPathGetFileExtention();
	Lib::sExe = Lib::sExeName + gzStrL(".") + Lib::sExeExt;


	     Lib_GZ::Sys::pDebug::fConsole(gzStrL("*********************--- PATH: ") +  Lib::sDirExe);
}

void cLib::fLoadAllRc(){

     uRcPtrFuncList* _rPtrFunc =  _rLastPtrFunc;
    while (_rPtrFunc != 0){
         //////////////////
        uRcList* _oPtrRc = (uRcList*)GZ_fMalloc(1, sizeof(uRcList));
        _oPtrRc->rNext = rFirstRc;
        _oPtrRc->_oRc = (*_rPtrFunc->_dPtrFunc)();
        rFirstRc = _oPtrRc;
         ///////////////////
        _rPtrFunc = _rPtrFunc->rPrec;
        GZ_fFree(_rPtrFunc);
    }
     GZ_fFree(_rLastPtrFunc);
    _rLastPtrFunc = 0;
}
/////////////////////////////////////////////////////////
/////////////////// LIBS ///////////////////////////////
static uLib* _rLasLib = 0;

/*
///////////Test Manual overplace
//GZ_tOverplace=\"[Lib_GZ,Lib_GZ_Windows,Lib_GZ_OpenGL,Lib_GZ_WinOpenGL,Lib_Demo]\"
extern "C" int IniLib_Lib_GZ();
extern "C" int IniLib_Lib_GZ_Windows();
extern "C" int IniLib_Lib_GZ_OpenGL();
extern "C" int IniLib_Lib_GZ_WinOpenGL();
extern "C" int IniLib_Lib_Demo();
*/
//////////////////////////////////


void Lib::fLoadAllLib(){

/*
    rLastLib = 0;
    IniLib_Lib_GZ();
    IniLib_Lib_GZ_Windows();
    IniLib_Lib_GZ_OpenGL();
    IniLib_Lib_GZ_WinOpenGL();
    IniLib_Lib_Demo();
*/
	#ifdef GZ_tManIni
	  Lib_GZ::Lib::NewClass(); //TODO pmly on jit
	#endif




     Lib_GZ::Sys::pDebug::fConsole(gzStrL("\n ---fLoadAllLib - "));

     uLib* _rLib = rLastLib;
    while (_rLib != 0){

        Lib_GZ::Sys::pDebug::fConsole(gzStrL("\n----Lib: ") + _rLib->sName);
     //   printf("\nLib :" );
        fSetID(*_rLib->_rLastClass);
        _rLib = _rLib->rPrec;
       // GZ_fFree(_rLib); //Keep in meomry for now
    }
   //  GZ_fFree(_rLastPtrFunc);// Keep in meomry for now
    _rLastPtrFunc = 0;

    gzStr _sLib = gzStrC(GZ_tOverplace);
    _sLib.fEnd();
    _sLib.fPrev();
    _sLib = _sLib.fRevSubStr(gzStrL("["), true); //TODOStr
    _sLib.fBegin();
    aLib = _sLib.fSplit(gzStrL(","));
    _sLib.fBegin();

    fCheckOverPlace(aLib);
	    Lib_GZ::Sys::pDebug::fConsole(gzStrL("\n ----- End -------------- ") );


}

void Lib::fSetID(uOverplace* _rClass){

    while (_rClass != 0){
        _rClass->nId = Lib_GZ::Lib::nClass++;
        _rClass = _rClass->_rPrec;
    }
}

void Lib::fCheckOverPlace(gzPArray(gzStr) _aLib){

		    printf("\n--- Check OverPlace %d \n", _aLib.GnSize());
    for(gzInt i = 0; i < _aLib.GnSize(); i++ ){
       Lib_GZ::fConsole(gzStrL("Sel") + gzStrI(i) + gzStrL(":")  +_aLib[i]);
        gzStr _sLibName = _aLib[i];
        gzBool _bFound = false;
        uLib* _rLib = rLastLib;
        while (_rLib != 0){
			  //   Lib_GZ::fConsole(gzStrL("Test ") + _rLib->sName);

            if(_sLibName == _rLib->sName){
                    Lib_GZ::fConsole(gzStrL("Lib OverPlace: ") + _sLibName);
                   fDoOverPlace(*_rLib->_rLastClass);
                  _bFound = true;
                  break;
            }
            _rLib = _rLib->rPrec;
        }
        if(!_bFound){
            Lib_GZ::fConsole(gzStrL("Warning Lib Not found: ") + _sLibName);
        }
    }
}

void Lib::fDoOverPlace(uOverplace* _rClass){
    while (_rClass != 0){

				uOverplace* _subClass = _rClass;
                while(_subClass->cfExtAdr != 0){
					uOverplace* _subExtClass = ((uOverplace*)_subClass->cfExtAdr());
					_subExtClass->cfOver = _rClass->cfOri;
					_subClass = _subExtClass;
                }

       _rClass = _rClass->_rPrec;
    }
}
/*
void Lib::fDoOverPlace(uOverplace* _rClass){
    while (_rClass != 0){
                if(_rClass->cfExtAdr != 0){
                  ((uOverplace*)_rClass->cfExtAdr())->cfOver = _rClass->cfOri;
                }
       _rClass = _rClass->_rPrec;
    }
}
*/

/////////////////////////////////////////////////////////


cLib::cLib(gzUIntX _nInstanceId, gzStr _sArg, gzUIntX _nCmd): Lib_GZ::cThread(0){

	const gzInt32 nNum = 1;
	if(*(char *)&nNum == 1){
		Lib::bLittleEndian = true;
	}else{
		Lib::bLittleEndian = false;
	}

  //  GZ_NullObj = GZ_SpNullObj.get(); TODO
    Lib_GZ::Lib::fLoadAllLib();
    Lib_GZ::Sys::Debug::Get(thread)->New(this);

    bIsAlive = true;


    Lib_GZ::Sys::System::Get(thread)->fDetectGpu();


    //GZ_NullPtr
         //oWinLib = new SysWindow(0, gzStrL("OpenGL"), 5, 5, false, 0xFFFFFFFF,_SysWindow::eWinBorder::Normal,true,true,true,false);
    oWinLib =  Lib_GZ::Sys::Context::Get(thread)->New(thread, 0, gzStrL("OpenGL"), 5, 5, false, 0xFFFFFFFF);
	//,Sys::Window::eWinBorder::Normal,true,true,true,false);
    oWinLib->bLibSharedContext = true;

    #ifdef GZ_tHaveGPU
        //oWinLib->fCreate(0,0,0,0, SysWindow::eWinState::Hidden);
        Lib::oWinLib = oWinLib;
        oWinLib->fCreate(SysWindow::nPosCenter,SysWindow::nPosCenter,0,0);
        cSysWindow::fManageMessage();
    #else
        oWinLib->bReady = true;
        Lib::oWinLib = oWinLib;

    #endif


    oWinLib->fIniProcess();
       // _Lib::nNumWindows--;

    Lib_GZ::Sys::System::Get(thread)->bHaveGpu = oWinLib->bWinGPU;

	Lib_GZ::Sys::System::Get(thread)->fIni(_nInstanceId, _sArg, _nCmd);
	fIni();
	Lib_GZ::Lib::Get(thread)->fStaticIni();
}

void cLib::fIni(){

   fLoadAllRc();
   Lib::bIsIni = true;
}

void cLib::fSetDirRcFiles(gzPStr _sDirRcFiles){
    using namespace Lib;
    sDirRcFiles  = sDirExe.fPathGetRelative( _sDirRcFiles);
    Lib_GZ::Sys::pDebug::fConsole(gzStrL("RC PATH:    ") +  sDirRcFiles);
}

void cLib::fSetDirRcEmbed(gzPStr _sDirRcEmbed){
    using namespace Lib;
    sDirRcEmbed = sDirExe.fPathGetRelative( _sDirRcEmbed);
     Lib_GZ::Sys::pDebug::fConsole(gzStrL("EMBED PATH: ") +  sDirRcEmbed);
}

gzBool cLib::fMainUpdate(gzInt _nSleepTime){

	Lib::bIniFinish = true;
	Sys::Context::Get(this)->fManageMessage();
   // printf("fMainUpdate\n");

    #ifdef GZ_tMonothread
        Lib_GZ::ThreadList::fNextTask();
    #endif


	  Lib_GZ::Sys::System::Get(this)->fSleep(1);


	 if(!(Lib::nThreadCount > 0)){ //Quit

    //    Sys::System::Get(this)->fSleep(1);

        Lib::bIsAlive = false;
        bIsAlive = false;

        return false;
    }

	/*
	int _nVal = ThreadMsg::fGetMasterMsg();
	if(_nVal){
		Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("fGetMasterMsg: ") +  gzStrI(_nVal));
	}*/

	/*
	if(){

	}
	*/

  //  printf("EndSleep\n");
  //  Sys::System::Get(this)->fSleep(_nSleepTime); //TODO Syteme
    return true;
}




cLib::~cLib(){
     Lib_GZ::Sys::System::Get(this)->fExit();

    uRcList* _nCurrent = rFirstRc;
    while(_nCurrent != 0){
        uRcList* _nLast = _nCurrent;
        _nCurrent = _nCurrent->rNext;
        //delete _nLast->_oRc;
        GZ_fFree(_nLast);
    }

/*
    sDirExe2.~gzStr();
    sExeName2.~gzStr();
    sExeExt2.~gzStr();
    sExe2.~gzStr();
    sDirRcFiles2.~gzStr();
    sDirRcEmbed2.~gzStr();
*/
}
}



