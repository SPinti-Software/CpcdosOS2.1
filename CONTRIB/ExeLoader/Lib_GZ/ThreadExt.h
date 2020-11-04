//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

namespace Lib_GZ{class cThreadExt;}
#if !( defined tHDef_GZ_ThreadExt)

#define tHDef_GZ_ThreadExt
#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/Delegate.h"

#include "Lib_GZ/QArray.h"




namespace Lib_GZ{class cThread;}
namespace Lib_GZ{namespace Sys{class cThreadObj;}}


//Optimised Class include -> direct class or header of header (Constants)
namespace Lib_GZ{class cDispacher;}


namespace Lib_GZ{
namespace ThreadExt{


}

//Temp?
#ifndef GZ_r_void_p_gzPtr
#define GZ_r_void_p_gzPtr
GZ_mIComp(_r_void_p_gzPtr);
namespace Dlg_r_void_p_gzPtr{
   GZ_mDlgIni(void, GZ_PARAM, gzPtr){return ;};
   class Dlg { GZ_mDlgClass(_r_void_p_gzPtr)
        inline  void fCall(gzPtr _pAny) const{
            GZ_mDlgCall(GZ_PARAM, _pAny);
         }
    };
}
#endif


class cThreadExt : public Lib_GZ::cBase  {

	public:
        gzSp<Sys::cThreadObj> oThreadObj;

        gzQElement<gzSp<cThreadExt>> qeInList;

        cThread* oThread;

		inline cThreadExt(cBase _parent):cBase(_parent), oThread(0){};
		void Ini_cThreadExt(Lib_GZ::Dlg_r_void_p_gzPtr::DlgP _dCallBack);
		virtual void fStart();
		virtual void fJoin();
		virtual void fCancel();
		virtual void fClose();
		virtual ~cThreadExt();

	private:

};
namespace ThreadExt{
    //Object Creation Wrapper
    inline gzSp<Lib_GZ::cThreadExt> New(cBase _parent, Lib_GZ::Dlg_r_void_p_gzPtr::DlgP _dCallBack){
        gzSp<Lib_GZ::cThreadExt>_oTemp = gzSp<Lib_GZ::cThreadExt>(new Lib_GZ::cThreadExt(_parent));
        _oTemp->Ini_cThreadExt(_dCallBack);
        return _oTemp;
    }
}

}
#endif
