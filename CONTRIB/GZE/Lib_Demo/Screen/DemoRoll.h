#if !( defined tHDef_Lib_Demo_Screen_DemoRoll || defined  tHDef_IN_Lib_GZ_Gfx_Clip || defined  tHDef_IN_Lib_GZ_Gfx_Object || defined  tHDef_IN_Lib_GZ_Gfx_Attribute || defined  tHDef_IN_Lib_GZ_Gfx_Root || defined  tHDef_IN_Lib_GZ_Gfx_Dispacher || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_Demo_Screen_DemoRoll
namespace Lib_Demo{namespace Screen{class cDemoRoll;}}

#include "Lib_Demo/Lib_Demo.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Gfx/Clip.h"
namespace Lib_Demo{namespace Screen{namespace DemoRoll{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{namespace Gfx{class cObject;}}
namespace Lib_GZ{namespace File{class cRcImg;}}
#include "Lib_GZ/Gfx/_Root.h"
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Gfx{class cClip;}}
#include "Lib_GZ/_Math.h"
namespace Lib_GZ{namespace Gfx{namespace Clip{class cImg;}}}
namespace Lib_Demo{namespace Screen{class cDemoRoll;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_Demo{namespace Screen{namespace DemoRoll{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_Demo pDemoRoll {

	public:
	//Pure Function

};

class tApi_Lib_Demo cDemoRoll : public Lib_GZ::Gfx::cClip {

	public:


		//Var
		gzSp<Lib_GZ::Gfx::Clip::cImg> oImg;
		// gzSp<Lib_GZ::Gfx::Clip::cImg> oImg_FOND;
		gzSp<Lib_GZ::Gfx::Clip::cImg> oImg_LOGO;
		

		cDemoRoll(Lib_GZ::cBase* _parent);
		virtual void Ini_cDemoRoll(Lib_GZ::Gfx::cRoot* _oParent);
		virtual void fUpdateParentToChild();
		virtual void fUpdateChildToParent();

		inline cDemoRoll(const cDemoRoll &_o)  : Lib_GZ::Gfx::cClip(_o), oImg(){};
		inline cDemoRoll(const cDemoRoll &_o, gzBool _b)  : Lib_GZ::Gfx::cClip(_o, _b), oImg(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cDemoRoll();

	private:

		//Var

};
class tApi_Lib_Demo csDemoRoll : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cDemoRoll> New(Lib_GZ::cBase* _parent, Lib_GZ::Gfx::cRoot* _oParent){
			gzSp<cDemoRoll>_oTemp = gzSp<cDemoRoll>(new cDemoRoll(_parent));
			_oTemp->Ini_cDemoRoll(_oParent);
			return _oTemp;
		}
		//Public static
		gzInt nInterger;
		gzFloat nFloat;
		gzStr sTest;

		//Static function

		inline csDemoRoll(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csDemoRoll(){};
};
GZ_mStaticClass(DemoRoll)
namespace DemoRoll{
}}}
#endif