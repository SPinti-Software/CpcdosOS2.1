#if !( defined tHDef_Lib_Demo_MainInterface || defined  tHDef_IN_Lib_GZ_Gfx_Interface || defined  tHDef_IN_Lib_GZ_Sys_FrameRate || defined  tHDef_IN_Lib_GZ_Gfx_Buffer || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_Demo_MainInterface
namespace Lib_Demo{class cMainInterface;}

#include "Lib_Demo/Lib_Demo.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gfx/Interface.h"
namespace Lib_Demo{namespace MainInterface{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gfx{class cObject;}}
#include "Lib_GZ/Sys/_Window.h"
namespace Lib_GZ{namespace File{class cRcImg;}}
#include "Lib_GZ/Gfx/_Root.h"
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Gfx{namespace Clip{class cImg;}}}
namespace Lib_GZ{namespace Gfx{class cClip;}}
namespace Lib_Demo{namespace Screen{class cDemoRoll;}}
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{class cThread;}
namespace Lib_GZ{namespace Sys{class cThreadItf;}}
namespace Lib_GZ{namespace Base{class cMat4x4;}}
namespace Lib_GZ{namespace Base{class cPerspective;}}
namespace Lib_Demo{class cMainInterface;}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_Demo{namespace MainInterface{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_Demo pMainInterface {

	public:
	//Pure Function

};

class tApi_Lib_Demo cMainInterface : public Lib_GZ::Gfx::cInterface {

	public:


		//Var
		gzSp<Lib_GZ::Gfx::cClip> oDemo;
		gzSp<Lib_GZ::Gfx::Clip::cImg> oImg;
		cMainInterface(Lib_GZ::cBase* _parent);
		virtual void Ini_cMainInterface(Lib_GZ::Sys::cThreadItf* _oThreadItf);
		virtual void fWinStart();
		virtual void fUpdateChildToParent();
		virtual void fUpdateParentToChild();

		inline cMainInterface(const cMainInterface &_o)  : Lib_GZ::Gfx::cInterface(_o), oDemo(), oImg(){};
		inline cMainInterface(const cMainInterface &_o, gzBool _b)  : Lib_GZ::Gfx::cInterface(_o, _b), oDemo(), oImg(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cMainInterface();

	private:

		//Var

};
class tApi_Lib_Demo csMainInterface : public Lib_GZ::cStThread  {

	public:
		//Public static

		//Static function

		inline csMainInterface(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csMainInterface(){};
};
GZ_mStaticClass(MainInterface)
namespace MainInterface{
GZ_mNewThreadH();
}}
#endif