//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Sys/File.h"

#include "Lib_GZ/File/Resource.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ{namespace Sys{namespace File{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ File
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"File"},{0,"fCreateDirectory"},{0,"fIsFileExist"},{0,"fLauch"},{0,"fGetExePath"},{0,"fGetFullPath"},{0,"fLoadFileFromVDrive"},{0,"fLoadFile"}};
#endif
///////////////////////////////

}

GZ_mCppClass(File)

cFile::cFile(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){

}

void cFile::Ini_cFile(){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("New File!"));
}

gzInt csFile::fCreateDirectory(gzPStr _sFolder){ gz_(1)
	GZ_mIsImplemented("GzNa::File::fCreateDirectory")
	return 0;
}

gzBool csFile::fIsFileExist(gzPStr _sFile){ gz_(2)
	GZ_mIsImplemented("GzNa::File::fIsFileExist")
	return false;
}

void csFile::fLauch(gzPStr _sFile, gzPStr _sArguments){ gz_(3)
	GZ_mIsImplemented("GzNa::File::fLauch")
}

gzStr csFile::fGetExePath(){ gz_(4)
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("fGetExePath not impletmented"));
	return gzStrL("");
}

gzStr csFile::fGetFullPath(gzPStr _sDrive, gzPStr _sPath){ gz_(5)
	gzStr _sRealDrive = _sDrive;
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("fGetFullPath: ") + _sPath);
	if (_sDrive == gzStrL("Exe")){
		//Tag cpp
		_sRealDrive = Lib_GZ::Lib::sDirExe;
		Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("_sRealDrivePath: ") + _sRealDrive);
	}
	return _sRealDrive + _sPath;
}

gzBool csFile::fLoadFileFromVDrive(Lib_GZ::File::cResource* _oRc){ gz_(6)
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("AfLoadFile not impletmented"));
	return Lib_GZ::Sys::File::Get(thread)->fLoadFile((Lib_GZ::File::cResource*)(_oRc), Lib_GZ::Sys::File::Get(thread)->fGetFullPath(_oRc->sVDrive, _oRc->sPath));
}

gzBool csFile::fLoadFile(Lib_GZ::File::cResource* _oRc, gzPStr _sFullPath){ gz_(7)
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("AAAAAfLoadFile not impletmented"));
	return false;
}

gzAny cFile::MemCopy(){
return (gzAny)new cFile(*this);
}
gzAny cFile::DeepCopy(){
return (gzAny)new cFile(*this, true);
}
cFile::~cFile(){
}



}}