#include "Lib_GZ_CpcDos/Sys/OpContext.h"

#include "Lib_GZ/Gpu/Gpu.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Input/Key.h"
#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Sys/Message/ContextCreated.h"
#include "Lib_GZ/Sys/Message/ContextLink.h"
#include "Lib_GZ/Sys/Message/MousePos.h"
#include "Lib_GZ/Sys/Message/Blit.h"
#include "Lib_GZ/Base/Pt.h"
#include "Lib_GZ/Base/Dim.h"


namespace Lib_GZ_CpcDos{namespace Sys{namespace OpContext{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ OpContext
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"OpContext"},{0,"fManageMessageOp"}};
#endif
///////////////////////////////

}

GZ_mCppClass(OpContext)

cOpContext::cOpContext(Lib_GZ::cBase* _parent) : Lib_GZ::Sys::cContext(_parent){

}

void cOpContext::Ini_cOpContext(Lib_GZ::Gfx::cInterface* _oInterface, gzPStr _sWindowName, gzUInt _nFrameWidth, gzUInt _nFrameHeight, gzBool _bTransparent, gzInt _nBgColor){ gz_(0)
	Lib_GZ::Sys::Debug::Get(thread)->fTrace1(gzStrL("---New OpWindows--"));
	Ini_cContext((Lib_GZ::Gfx::cInterface*)(_oInterface), _sWindowName, _nFrameWidth, _nFrameHeight, _bTransparent, _nBgColor);
}

void csOpContext::fManageMessageOp(){ gz_(1)
	GZ_mIsImplemented("GzCpcDos::OpContext::fManageMessageOp")
}

cOpContext::~cOpContext(){
}



}}