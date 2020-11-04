#if !( defined tHDef_Lib_Demo_MainEntry || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_Demo_MainEntry
namespace Lib_Demo{class cMainEntry;}

#include "Lib_Demo/Lib_Demo.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Class.h"
namespace Lib_Demo{namespace MainEntry{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_Demo{class cMainInterface;}
namespace Lib_GZ{class cThreadExt;}
namespace Lib_GZ{namespace Sys{class cFile;}}
namespace Lib_Demo{class cMainEntry;}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

/////Delegate InterCompatible  /////

#ifndef GZ_r_gzBool_p_gzQElement_gzQElement
#define GZ_r_gzBool_p_gzQElement_gzQElement
namespace Lib_GZ{GZ_mIComp(_r_gzBool_p_gzQElement_gzQElement);}
#endif

/////////////////////////////////

namespace Lib_Demo{namespace MainEntry{


	namespace Dlg_fQueueDelegate_r_gzBool_p_gzQElement_gzQElement{
		///////
		GZ_mDlgIni(gzBool, GZ_PARAM, gzQElement<gzInt> _qT1, gzQElement<gzInt> _qT2){return false;};
		 class Dlg { GZ_mDlgClass(_r_gzBool_p_gzQElement_gzQElement)
			///////////////////
			inline  gzBool fCall(gzQElement<gzInt> _qT1, gzQElement<gzInt> _qT2){
				return GZ_mDlgCall(GZ_PARAM, _qT1, _qT2);
			 }
		};
	}

	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_Demo pMainEntry {

	public:
	//Pure Function

};

class tApi_Lib_Demo cMainEntry : public Lib_GZ::cClass {

	public:

		//Delegate Ref


		//Var
		gzSp<Lib_GZ::cThreadExt> oThread;
		gzSp<Lib_Demo::cMainInterface> oInterface;
		cMainEntry(Lib_GZ::cBase* _parent);
		virtual void Ini_cMainEntry();
		virtual void fTestArray(gzArray<gzInt> _aTest);
		virtual gzInt fTestDelegate(gzFloat _nF1, gzFloat _nF2);
		inline static gzBool wQueueDelegate(GZ_FuncWrapM, gzQElement<gzInt> _qT1, gzQElement<gzInt> _qT2){return ((cMainEntry*)_w)->fQueueDelegate(_qT1, _qT2);}
		gzBool fQueueDelegate(gzQElement<gzInt> _qT1, gzQElement<gzInt> _qT2);

		inline cMainEntry(const cMainEntry &_o)  : Lib_GZ::cClass(_o), oThread(), aInt1d(), aInt2d(), qaShort(), dComapre(), oInterface(){};
		inline cMainEntry(const cMainEntry &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), oThread(), aInt1d(), aInt2d(), qaShort(), dComapre(), oInterface(){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cMainEntry();

	private:

		//Var
		gzArray<gzInt> aInt1d;
		gzArray2D(gzInt) aInt2d;
		gzQArray<gzInt> qaShort;
		MainEntry::Dlg_fQueueDelegate_r_gzBool_p_gzQElement_gzQElement::Dlg dComapre;

};
class tApi_Lib_Demo csMainEntry : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cMainEntry> New(Lib_GZ::cBase* _parent){
			gzSp<cMainEntry>_oTemp = gzSp<cMainEntry>(new cMainEntry(_parent));
			_oTemp->Ini_cMainEntry();
			return _oTemp;
		}
		//Public static

		//Static function

		inline csMainEntry(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csMainEntry(){};
};
GZ_mStaticClass(MainEntry)
namespace MainEntry{
}}
#endif