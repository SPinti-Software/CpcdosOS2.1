//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/File/Resource.h"

#include "Lib_GZ/Sys/File.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace File{namespace Resource{
}}}


namespace Lib_GZ{namespace File{namespace Resource{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Resource
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Resource"},{0,"fLoadFile"},{0,"fSetDynamicMemData"},{0,"fSetStaticMemData"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Resource)

cResource::cResource(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	nSize=0;
	//GZ_mArray_NewStringE(sFile); //Todo
	aSrcMemData = 0;
	//GZ_mArray_NewStringE(sPath); //Todo
	//GZ_mArray_NewStringE(sVDrive); //Todo
	bReadOnly = true;
	bRcLoaded = false;
	bGpuLoaded = false;
	hLocation = Lib_GZ::File::Resource::eLocation::Unknow;

}

void cResource::Ini_cResource(gzPStr _sPath, Lib_GZ::File::Resource::eLocation _hLocation){ gz_(0)
	hLocation = _hLocation;
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("AAAAAA Path string: ") + _sPath);
	gzArray<gzStr> _aPath = (_sPath.fSplit(gzStrL(":/")));
	sVDrive = _aPath[gzUInt(0)];
	sPath = _aPath[gzUInt(1)];
	sPath.fNext();
	sPath.fNext();
	sPath = sPath.fSubStr();
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("***sVDrive Path : ") + sVDrive);
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("***sVDrive Path : ") + sPath);
}

void cResource::fLoadFile(){ gz_(1)
	if (gzInt(hLocation) == Lib_GZ::File::Resource::eLocation::Unknow || gzInt(hLocation) == Lib_GZ::File::Resource::eLocation::Drive){
		Lib_GZ::Sys::File::Get(thread)->fLoadFileFromVDrive((Lib_GZ::File::cResource*)(this));
	}
}

void cResource::fSetDynamicMemData(gzUInt8* _aSrcMemData, gzUIntX _nSize){ gz_(2)
	aSrcMemData = (_aSrcMemData);
	nSize = _nSize;
}

void cResource::fSetStaticMemData(gzUInt8* _aSrcMemData, gzUIntX _nSize){ gz_(3)
	aSrcMemData = (_aSrcMemData);
	nSize = _nSize;
}

cResource::~cResource(){
}



}}