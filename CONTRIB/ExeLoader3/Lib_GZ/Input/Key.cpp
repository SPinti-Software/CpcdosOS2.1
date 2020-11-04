//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Input/Key.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"

namespace Lib_GZ{namespace Input{namespace Key{
}}}


namespace Lib_GZ{namespace Input{namespace Key{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ Key
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"Key"},{0,"fIsDown"}};
#endif
///////////////////////////////

}

GZ_mCppClass(Key)

cKey::cKey(Lib_GZ::cBase* _parent) : Lib_GZ::cClass(_parent){
	aKeyDown = (gzBool*)GZ_fMalloc(256, sizeof(gzBool));
	aKeyPress = (gzBool*)GZ_fMalloc(256, sizeof(gzBool));
	aKeyRelease = (gzBool*)GZ_fMalloc(256, sizeof(gzBool));

}

void cKey::Ini_cKey(){ gz_(0)
}

gzBool cKey::fIsDown(Lib_GZ::Input::Key::eKey _hKey){ gz_(1)
	return aKeyDown[gzUInt(_hKey)];
}

gzAny cKey::MemCopy(){
return (gzAny)new cKey(*this);
}
gzAny cKey::DeepCopy(){
return (gzAny)new cKey(*this, true);
}
cKey::~cKey(){
	GZ_fFree(aKeyDown);
	GZ_fFree(aKeyPress);
	GZ_fFree(aKeyRelease);
}



}}