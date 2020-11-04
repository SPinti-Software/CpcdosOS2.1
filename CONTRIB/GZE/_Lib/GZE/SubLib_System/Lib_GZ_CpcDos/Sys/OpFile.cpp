#include "Lib_GZ_CpcDos/Sys/OpFile.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Sys/File.h"
#include "Lib_GZ/File/Resource.h"
#include "Lib_GZ_CpcDos/Sys/OpContextHandle.h"


namespace Lib_GZ_CpcDos{namespace Sys{namespace OpFile{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpFile
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"fGetExePath"},{0,"fLoadFile"},{0,"OpFile"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpFile)

gzStr csOpFile::fGetExePath(){ gz_(0)
	//Tag cpp
	///TEmp////
	static gzBool _bSet = false;
	if(_bSet == false){
	_bSet = true;
	oCpcdos = gzSp<CpcdosOSx_CPintiCore>(new CpcdosOSx_CPintiCore);
	}
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("fGetExePath called"));
	gzStr _sPath;
	//Tag cpp
	_sPath = gzStrC(oCpcdos->Get_Path(0));
	_sPath.fReplaceAll(gzStrL("\\"), gzStrL("/"));
	_sPath.fBegin();
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("-------------fGetExePath: ") + _sPath);
	return _sPath;
}

gzBool csOpFile::fLoadFile(Lib_GZ::File::cResource* _oRc, gzPStr _sFullPath){ gz_(1)
	//Tag cpp
	_sFullPath.fBegin();
	_sFullPath.fReplaceAll(gzStrL("/"), gzStrL("\\")); //todo  _sFullPath = _sFullPath.fReplaceAll
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("Oki fLoadFile: ") + _sFullPath);
	//Tag cpp
	gzUInt _nExist = oCpcdos->File_exist((char*) _sFullPath.fcStr());
	if(_nExist > 0){
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("File Exist: ") + _sFullPath);
	//Tag cpp
	gzUIntX _nSize =  oCpcdos->File_size((char*) _sFullPath.fcStr());
	gzUInt8* _aData = new gzUInt8[_nSize]; //TODO may be 0 sized
	// Recuperer TOUT le contenu
	oCpcdos->File_read_all((char*)_sFullPath.fcStr(), (char*)"RB", (char*)_aData);
	_oRc->fSetDynamicMemData(_aData, _nSize); //Will be auto free
	}else{
	Lib_GZ::Sys::Debug::Get(thread)->fError(gzStrL("File not found: ") + _sFullPath);
	return false;
	//Tag cpp
	}
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("Loaded ") + _sFullPath);
	return true;
}

cOpFile::cOpFile(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cFile(_parent){

}

void cOpFile::Ini_cOpFile(){ gz_(2)
	Ini_cFile();
}

gzAny cOpFile::MemCopy(){
return (gzAny)new cOpFile(*this);
}
gzAny cOpFile::DeepCopy(){
return (gzAny)new cOpFile(*this, true);
}
cOpFile::~cOpFile(){
}



}}