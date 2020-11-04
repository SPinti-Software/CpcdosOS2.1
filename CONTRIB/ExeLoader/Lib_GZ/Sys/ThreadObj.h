#if !( defined tHDef_Lib_GZ_Sys_ThreadObj || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_Sys_ThreadObj
#define tHDef_IN_Lib_GZ_Sys_ThreadObj
namespace Lib_GZ{namespace Sys{class cThreadObj;}}

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "Lib_GZ/Class.h"
namespace Lib_GZ{namespace Sys{namespace ThreadObj{

//Structure Definition

}}}

//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{class cThread;}
namespace Lib_GZ{class cThreadExt;}
namespace Lib_GZ{namespace Gfx{class cInterface;}}
namespace Lib_GZ{namespace Sys{class cThreadObj;}}
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

/////Delegate InterCompatible  /////

#ifndef GZ_r_void_p_gzPtr
#define GZ_r_void_p_gzPtr
namespace Lib_GZ{GZ_mIComp(_r_void_p_gzPtr);}
#endif

/////////////////////////////////

namespace Lib_GZ{namespace Sys{namespace ThreadObj{


	namespace Dlg_fThreadCallBack_r_void_p_gzPtr{
		///////
		GZ_mDlgIni(void, GZ_PARAM, Lib_GZ::cThreadExt* _oThreadEx){return ;};
		 class Dlg { GZ_mDlgClass(_r_void_p_gzPtr)
			///////////////////
			inline  void fCall(Lib_GZ::cThreadExt* _oThreadEx){
				GZ_mDlgCall(GZ_PARAM, _oThreadEx);
			 }
		};
	}

	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ pThreadObj {

	public:
	//Pure Function

};

class tApi_Lib_GZ cThreadObj : public Lib_GZ::cClass {

	public:

		//Delegate Ref


		//Var
		gzBool bStarted;
		gzBool bCreated;
		gzSp<Lib_GZ::cThreadExt> oThreadExt;
		ThreadObj::Dlg_fThreadCallBack_r_void_p_gzPtr::Dlg dCallBack;
		cThreadObj(Lib_GZ::cBase* _parent);
		virtual void Ini_cThreadObj(Lib_GZ::cThreadExt* _oThreadEx, ThreadObj::Dlg_fThreadCallBack_r_void_p_gzPtr::Dlg _dCallBack);
		virtual void fSetPriority(gzUInt _nPriority);
		virtual void fThreadCallBack(Lib_GZ::cThreadExt* _oThreadEx);
		virtual void fStart();
		virtual void fJoin();
		virtual void fCancel();
		virtual void fClose();

		inline cThreadObj(const cThreadObj &_o)  : Lib_GZ::cClass(_o), bStarted(_o.bStarted), bCreated(_o.bCreated), oThreadExt(), dCallBack(){};
		inline cThreadObj(const cThreadObj &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b), bStarted(_o.bStarted), bCreated(_o.bCreated), oThreadExt(), dCallBack(){};
		virtual ~cThreadObj();

	private:

		//Var

};
class tApi_Lib_GZ csThreadObj : public Lib_GZ::cStThread  {

	public:
		//Object Creation Wrapper
		inline virtual gzSp<cThreadObj> New(Lib_GZ::cBase* _parent, Lib_GZ::cThreadExt* _oThreadEx, ThreadObj::Dlg_fThreadCallBack_r_void_p_gzPtr::Dlg _dCallBack){
			gzSp<cThreadObj>_oTemp = gzSp<cThreadObj>(new cThreadObj(_parent));
			_oTemp->Ini_cThreadObj(_oThreadEx, _dCallBack);
			return _oTemp;
		}
		//Public static

		//Static function

		inline csThreadObj(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csThreadObj(){};
};
GZ_mStaticClass(ThreadObj)
namespace ThreadObj{
}}}
#undef tHDef_IN_Lib_GZ_Sys_ThreadObj
#endif