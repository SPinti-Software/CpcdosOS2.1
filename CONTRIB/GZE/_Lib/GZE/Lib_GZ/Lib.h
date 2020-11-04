//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHDef_GZ_Lib
#define tHDef_GZ_Lib

//#include "Lib_GZ/Sys/Window.h"
//#include "Lib_GZ/Sys/Context.h"

#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/QArray.h"

namespace Lib_GZ{

	namespace Sys{
		class cWindow;
		class cContext;
	}


/*
inline uLib* fAddLib( gzPStr _sName, gzQArray<uOverplace>* _qaClass){
    return  zqaLibList.fPush({_sName, _qaClass}).val();
}*/
class cLib;
namespace File{class cResource;}
typedef File::cResource* (*gzPtrFuncRc)(void);

namespace Lib {


/*
	namespace Sys{
	class cContext;
	class cWindow;
	}*/


	extern gzBool bLittleEndian;
    extern gzQArray<uLib> zqaLibList;
   // uLib* fAddLib( gzPStr _sName, gzQArray<uOverplace>* _qaClass);

    extern gzInt32 nThreadCount; //Atomic

    extern gzBool bIniFinish;
    extern gzInt32 nNumWindows;
    extern gzBool bIsAlive ;
    extern gzInt32 nAppReturn;
    extern gzBool  bIsIni;

    extern gzStr sDirExe;
    extern gzStr sExeName;
    extern gzStr sExeExt;
    extern gzStr sExe;
    extern gzStr sRcDir;

    extern gzStr sDirRcFiles;
    extern gzStr sDirRcEmbed;

	extern gzStr sDirExe; //Atomic Const?
    extern  gzStr sExeName;//Atomic Const?
    extern  gzStr sExeExt; //Atomic Const?
    extern gzStr sExe; //Atomic Const?



    extern gzWp<Lib_GZ::Sys::cContext> oWinLib;

    gzBool fAddLoadRc(gzPtrFuncRc _dPtrFunc);

    void fSetID(uOverplace* _rClass);

    void fLoadAllLib();

   // void fPreIni();
    void fCheckOverPlace(gzPArray(gzStr) _aLib);
    void fDoOverPlace(uOverplace* _rClass);

    extern gzArray<gzStr> aLib;



}



class cLib : public Lib_GZ::cThread  {

	public:
        //cLib(Lib_GZ::cBase* _parent);
        inline void	Ini_cLib(){};



        gzSp<Sys::cContext> oWinLib;

        gzBool bIsAlive;
        cLib(gzUIntX _nInstanceId, gzStr _sArg, gzUIntX _nCmd);

        void fIni();


        gzBool fMainUpdate(gzInt _nSleepTime = 1);

        void fSetDirRcFiles(gzPStr _sRcDir);
        void fSetDirRcEmbed(gzPStr _sDirRcEmbed);

        void fLoadAllRc();

        ~cLib();

	private:


};

class tApi_GZ csLib: public Lib_GZ::cStThread {

	public:
		inline gzSp<cLib> New(gzUIntX _nInstanceId, gzStr _sArg, gzUIntX _nCmd){
			gzSp<cLib>_oTemp = gzSp<cLib>(new cLib(_nInstanceId, _sArg, _nCmd));
			_oTemp->Ini_cLib();
			return _oTemp;
		}


	void fStaticIni();

     gzBool bIniFinish;
     gzInt32 nNumWindows;
     gzBool bIsAlive ;
     gzInt32 nAppReturn;
     gzBool  bIsIni;



     gzWp<Sys::cWindow> oWinLib;

    inline csLib(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
    inline ~csLib(){};

	private:
        //GZ_mEndStaticClass(Lib)
		//Static function

		//inline csLib(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		//inline ~csLib(){};
};
GZ_mStaticClass(Lib)



namespace Lib {
	inline gzSp<cLib> New(gzUIntX _nInstanceId, gzStr _sArg, gzUIntX _nCmd){
		gzSp<cLib>_oTemp = gzSp<cLib>(new cLib(_nInstanceId, _sArg, _nCmd));
		_oTemp->Ini_cLib();
		return _oTemp;
	}

}

}

#endif

