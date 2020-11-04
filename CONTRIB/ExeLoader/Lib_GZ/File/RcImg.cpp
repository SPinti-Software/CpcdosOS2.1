//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/File/RcImg.h"

#include "Lib_GZ/Wrap/Image.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/File/Resource.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Sys/File.h"


namespace Lib_GZ{namespace File{namespace RcImg{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ RcImg
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"RcImg"},{0,"fCpuLoad"},{0,"fGpuLoad"}};
#endif
///////////////////////////////

}

GZ_mCppClass(RcImg)

cRcImg::cRcImg(Lib_GZ::cBase* _parent) : Lib_GZ::File::cResource(_parent){
	nGpuTexId = 0;
	nWidth = 0;
	nHeight = 0;
	aImg = 0;

}

void cRcImg::Ini_cRcImg(gzPStr _sPath){ gz_(0)
	Ini_cResource(_sPath);
}

gzBool cRcImg::fCpuLoad(){ gz_(1)
	Lib_GZ::Sys::pDebug::fConsole(gzStrL("LoadRessource"));
	if (bRcLoaded == false){
		bRcLoaded = true;
		fLoadFile();
		Lib_GZ::Wrap::pImage::fOpen((Lib_GZ::File::cRcImg*)(this));
		Lib_GZ::Sys::pDebug::fConsole(gzStrL("Finish"));
	}
	return true;
}

gzBool cRcImg::fGpuLoad(){ gz_(2)
	return true;
}

gzAny cRcImg::MemCopy(){
return (gzAny)this;
}
gzAny cRcImg::DeepCopy(){
return (gzAny)new cRcImg(*this, true);
}
cRcImg::~cRcImg(){
Lib_GZ::Wrap::pImage::fDelete((Lib_GZ::File::cRcImg*)(this));
}



}}