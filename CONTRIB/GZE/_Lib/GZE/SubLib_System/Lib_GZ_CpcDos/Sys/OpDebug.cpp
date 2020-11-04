#include "Lib_GZ_CpcDos/Sys/OpDebug.h"

#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"


namespace Lib_GZ_CpcDos{namespace Sys{namespace OpDebug{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpDebug
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpDebug"},{0,"fTrace1"},{0,"fTrace2"},{0,"fTrace3"},{0,"fWarning"},{0,"fError"},{0,"fPass"},{0,"fFatal"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpDebug)

cOpDebug::cOpDebug(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cDebug(_parent){

}

void cOpDebug::Ini_cOpDebug(){ gz_(0)
	Ini_cDebug();
}

void csOpDebug::fTrace1(gzPStr _sValue){ gz_(1)
	//Tag cpp
	printf("1:%s\n", (char*)_sValue.fcStr());
}

void csOpDebug::fTrace2(gzPStr _sValue){ gz_(2)
	//Tag cpp
	printf("2:%s\n", (char*)_sValue.fcStr());
}

void csOpDebug::fTrace3(gzPStr _sValue){ gz_(3)
	//Tag cpp
	printf("3:%s\n", (char*)_sValue.fcStr());
}

void csOpDebug::fWarning(gzPStr _sValue){ gz_(4)
	//Tag cpp
	printf("W:%s\n", (char*)_sValue.fcStr());
}

void csOpDebug::fError(gzPStr _sValue){ gz_(5)
	//Tag cpp
	printf("E:%s\n", (char*)_sValue.fcStr());
}

void csOpDebug::fPass(gzPStr _sValue){ gz_(6)
	//Tag cpp
	printf("P:%s\n", (char*)_sValue.fcStr());
}

void csOpDebug::fFatal(gzPStr _sValue){ gz_(7)
	//Tag cpp
	printf("F:%s\n", (char*)_sValue.fcStr());
}

cOpDebug::~cOpDebug(){
}



}}