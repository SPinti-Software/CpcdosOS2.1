#include "Lib_Demo/Screen/DemoRoll.h"

#include "Lib_GZ/Gfx/Object.h"
#include "Lib_GZ/File/RcImg.h"
#include "Lib_GZ/Gfx/Root.h"
#include "Lib_GZ/Gfx/Interface.h"
#include "Lib_GZ/Gfx/Clip.h"
#include "Lib_GZ/Math.h"
#include "Lib_GZ/Gfx/Clip/Img.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Class.h"
#include "Lib_GZ/ThreadMsg.h"
#include "Lib_GZ/Gfx/Attribute.h"
#include "Lib_GZ/Gfx/Buffer.h"
#include "Lib_GZ/Gfx/Pixel.h"
#include "Lib_GZ/Base/Quaternion.h"
#include "Lib_GZ/Base/PtA.h"
#include "Lib_GZ/Gfx/Dispacher.h"
#include "Lib_GZ/Sys/Window.h"
#include "Lib_GZ/Gpu/GpuObj/GpuObject.h"


namespace Lib_Demo{namespace Screen{namespace DemoRoll{
////// Current Lib Access  ////
//// Current Static Access ////
#undef _
#define _ DemoRoll
void Ini_Class(){
}
#ifdef GZ_tHaveCallStack
gzFuncStack zFuncName[] = {{0,"DemoRoll"},{0,"fUpdateParentToChild"},{0,"fUpdateChildToParent"}};
#endif
///////////////////////////////

}

GZ_mCppClass(DemoRoll)

cDemoRoll::cDemoRoll(Lib_GZ::cBase* _parent) : Lib_GZ::Gfx::cClip(_parent){
	

}

void cDemoRoll::Ini_cDemoRoll(Lib_GZ::Gfx::cRoot* _oParent){ gz_(0)
	Ini_cClip((Lib_GZ::Gfx::cRoot*)(_oParent), 0.0, 0.0);
	// ----------------------------------------------------------------------------
	// ------------ Object as attribute variable to do transformation -------------
	// ----------------------------------------------------------------------------
	// -------- Pos -- In Screen Coordinate (0.0, 0.0, 0.0 = Top left)
	//nX = Position X
	//nY = Position Y
	//nZ = Position X
	// --------Size ------ (1.0 = Normal, 0.5 Half, 2.0 Double)
	//nWidth  = Width
	//nHeight = Height
	//nLength = Length
	// -----Rotation ----- (0.0 = Normal, PI/2.0 = 90deg,  PI = 180deg ) *All in radian
	//nRoll  = Rot X
	//nPitch = Rot Y
	//nYaw   = Rot Z
	// -----Brightness --- (0.0 = Normal, -1.0 = Dark, 1.0 = Bright)
	//nRed =   Red%
	//nBlue =  Blue%
	//nGreen = Green%
	// -----Alpha -------- (0.0 = Transparent, 1.0 = Normal)
	//nAlpha = Alpha%
	// ----------------------------------------------------------------------------
	// -------------------------- Function Modifier  ------------------------------
	// ----------------------------------------------------------------------------
	//	Add one of these modifier to change how the attributes react, in a fonction call
	// W = Wrap -> Wrap/Teleport to a specific position/value
	// T = To -> Move to a specifique destination -- NOTE: without Limit or Ease this will teleport to destination (infinite speed) ---
	// M = Move -> Move continuously with speed (+=)
	// L = Limit -> Set maximum speed (use with To or Move)
	// E = Ease -> Set gradually decreasing speed value (or gradually increasing speed when value are negative)
	// G = Get -> Getter on attibute (To get is value)
	//----------------------------------------------------------------------------
	//Create an image
	oImg_LOGO = gzSCast<Lib_GZ::Gfx::Clip::cImg>((Lib_GZ::Gfx::Clip::Img::Get(thread)->New(this, (Lib_GZ::Gfx::cRoot*)(this), 100.0, 500.0, Lib_GZ::File::RcImg::Get(thread)->New(this,gzStrL("Exe:/GZ_CPC.png")).get(), true)));
	oImg_LOGO->WnWidth(0.5);
	oImg_LOGO->WnHeight(0.5);
	oImg_LOGO->TnWidth(1.0);
	oImg_LOGO->TnHeight(1.0);
	oImg_LOGO->EnWidth(gzFloat(75));
	oImg_LOGO->EnHeight(gzFloat(75));
	oImg_LOGO->TnYaw(3.0 * Lib_GZ::Math::nPI);
	oImg_LOGO->EnYaw(gzFloat(150));
	oImg_LOGO->WnAlpha(0.0);
	oImg_LOGO->TnAlpha(1.0);
	oImg_LOGO->EnAlpha(50.0);
	
	
	
	//Create an image
	oImg = gzSCast<Lib_GZ::Gfx::Clip::cImg>((Lib_GZ::Gfx::Clip::Img::Get(thread)->New(this, (Lib_GZ::Gfx::cRoot*)(this), 400.0, 300.0, Lib_GZ::File::RcImg::Get(thread)->New(this,gzStrL("Exe:/Tf.png")).get(), true)));
	oImg->WnWidth(0.5);
	oImg->WnHeight(0.5);
	oImg->TnWidth(1.0);
	oImg->TnHeight(1.0);
	oImg->EnWidth(gzFloat(75));
	oImg->EnHeight(gzFloat(75));
	oImg->TnYaw(3.0 * Lib_GZ::Math::nPI);
	oImg->EnYaw(gzFloat(150));
	oImg->WnAlpha(0.0);
	oImg->TnAlpha(1.0);
	oImg->EnAlpha(100.0);
	
/* 	//Create an image
	oImg_FOND = gzSCast<Lib_GZ::Gfx::Clip::cImg>((Lib_GZ::Gfx::Clip::Img::Get(thread)->New(this, (Lib_GZ::Gfx::cRoot*)(this), 400.0, 300.0, Lib_GZ::File::RcImg::Get(thread)->New(this,gzStrL("Exe:/GZ_FD.png")).get(), true)));
	oImg_FOND->WnWidth(0.5);
	oImg_FOND->WnHeight(0.5);
	oImg_FOND->TnWidth(1.0);
	oImg_FOND->TnHeight(1.0);
	oImg_FOND->EnWidth(gzFloat(75));
	oImg_FOND->EnHeight(gzFloat(75));
	// oImg_FOND->TnYaw(3.0 * Lib_GZ::Math::nPI);
	// oImg_FOND->EnYaw(gzFloat(150));
	oImg_FOND->WnAlpha(0.0);
	oImg_FOND->TnAlpha(0.5);
	oImg_FOND->EnAlpha(40.0); */
	
}

void cDemoRoll::fUpdateParentToChild(){ gz_(1)
	//Updated each frame, parents before
	oImg->MnRoll(0.005);
	oImg->MnPitch(0.010);
	
	// oImg_FOND->MnRoll(0.0001);
	
	oImg_LOGO->MnPitch(0.05);
}

void cDemoRoll::fUpdateChildToParent(){ gz_(2)
	//Updated each frame, childs before
}

gzAny cDemoRoll::MemCopy(){
return (gzAny)new cDemoRoll(*this);
}
gzAny cDemoRoll::DeepCopy(){
return (gzAny)new cDemoRoll(*this, true);
}
cDemoRoll::~cDemoRoll(){
}



}}