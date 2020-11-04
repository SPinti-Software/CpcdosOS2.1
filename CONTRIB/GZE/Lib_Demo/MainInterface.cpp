#include "Lib_Demo/MainInterface.h"

#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gfx/Clip/Img.h"
#include "Lib_GZ/Gfx/Clip.h"
#include "Lib_Demo/Screen/DemoRoll.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Sys/ThreadItf.h"
#include "Lib_GZ/Base/Mat4x4.h"
#include "Lib_GZ/Base/Perspective.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/GlobalData.h"
#include "Lib_GZ/Sys/FrameRate.h"
#include "Lib_GZ/Sys/Context.h"
#include "Lib_GZ/Gfx/Clip/Rectangle.h"
#include "Lib_GZ/Gpu/GpuObj/GpuBuffer.h"
#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/Input/Key.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Gfx/Perspective.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"

GZ_mNewThreadCpp(Lib_Demo, MainInterface, Lib_GZ::Sys, ThreadItf);

namespace Lib_Demo{namespace MainInterface{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ MainInterface
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"MainInterface"},{0,"fWinStart"},{0,"fUpdateChildToParent"},{0,"fUpdateParentToChild"}};
#endif
///////////////////////////////

}

GZ_mCppClass(MainInterface)

cMainInterface::cMainInterface(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cInterface(_parent){
	

}

void cMainInterface::Ini_cMainInterface(Lib_GZ::Sys::cThreadItf* _oThreadItf){ gz_(0)
	//New thread started, this and subclass are isolated for thread safety
	//Select rendering on GPU on CPU, default, true
	bGpuDraw = false;
	//Make window transparent (Render or CPU)
	gzBool _bTranparent = false;
	//Create a new windows
	Ini_cInterface((Lib_GZ::Sys::cThreadItf*)(_oThreadItf), gzStrL("GroundZero"), 800, 600, _bTranparent, gzInt(4294967295));
	fCreateInterface(300, 100);
}

void cMainInterface::fWinStart(){ gz_(1)
	Lib_GZ::Sys::Debug::Get(thread)->fPass(gzStrL(" ---- Interface Lnx initialised ----"));
	//The windows was created
	// -------------------------------
	// Select your demo
	gzInt _nDemo = 1;
	// -------------------------------
	oDemo = gzSCast<Lib_GZ::Gfx::cClip>((Lib_Demo::Screen::DemoRoll::Get(thread)->New(this, (Lib_GZ::Gfx::cRoot*)(this))));
}

void cMainInterface::fUpdateChildToParent(){ gz_(2)
	//Updated each frame, parents before
}

void cMainInterface::fUpdateParentToChild(){ gz_(3)
	//Updated each frame, childs before
}

gzAny cMainInterface::MemCopy(){
return (gzAny)new cMainInterface(*this);
}
gzAny cMainInterface::DeepCopy(){
return (gzAny)new cMainInterface(*this, true);
}
cMainInterface::~cMainInterface(){
}



}