//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

namespace Lib_GZ{class cThreadList;}
#if !( defined tHDef_GZ_ThreadList)

#define tHDef_GZ_ThreadList
#include "Lib_GZ/GZ.h"
//#include "Lib_GZ/SysThread.h"
namespace Lib_GZ{class cThreadList;}


namespace Lib_GZ{
namespace ThreadList{
    extern gzQArray<gzSp<cThreadExt>> qaList;
    extern gzQElement<gzSp<cThreadExt>> qeTask;
    void fAdd(cThreadExt* _opThread);
    void fRemove(cThreadExt* _opThread);
    void Ini_Class();
    void fNextTask();
}

/*
class cThreadList {
	public:
		inline cThreadList(){};
		virtual ~cThreadList();
	private:
};*/
/*
namespace ThreadExt{
    //Object Creation Wrapper
    inline gzSp<Lib_GZ::cThreadExt> New(Lib_GZ::Dlg_r_void_p_gzPtr::DlgP _dCallBack){
        gzSp<Lib_GZ::cThreadExt>_oTemp = gzSp<Lib_GZ::cThreadExt>(new Lib_GZ::cThreadExt());
        _oTemp->Ini_cThreadExt(_dCallBack);
        return _oTemp;
    }
}
*/
}
#endif
