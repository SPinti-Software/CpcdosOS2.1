//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.


#ifndef tHDef_GZ_MainHeaderBase
#define tHDef_GZ_MainHeaderBase

#include "Lib_GZ/GzBaseFunc.h"

//#include "Lib_GZ/_SysOptions.h"

#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/GzMem.h"

#ifndef GZ_tOverplace
 #error GZE require an Overplace list, for exemple which sytem is used (Windows, Linux, ...) on this form: GZ_tOverplace="[Lib_GZ,Windows,Demo]"
#endif



//32bit by default
#ifndef GZ_tSys64
	#undef GZ_tSys32
    #define GZ_tSys32
#endif


#ifdef GZ_tUseCustomOptions
    #include "_GZ_ProjectOptions.h"
#endif





#ifdef GZ_tLinux
  //  #include <stdio.h>

    #include <X11/Xlib.h>
    #include <X11/Xutil.h>
    #include <sys/shm.h>
    #include <X11/extensions/XShm.h>
    #include <sys/time.h>
    #include <unistd.h>
    #include <math.h>
    #include <string.h>
    #include <wchar.h>
 //   #include <stdlib.h>
    #include <pthread.h>


#endif

#ifdef GZ_tMCU

//	#include <stdlib.h>
	#include <string.h>
	#include <math.h>
	typedef unsigned int    char32_t;
	typedef unsigned short int   char16_t;
#endif



#define UseLargeShape
#ifdef UseLargeShape
typedef gzInt64 tLS;
#else
typedef int tLS ;
#endif




#include "Lib_GZ/Delegate.h"



#ifdef __cplusplus
    #include "Math.h" //Math

    #include "Str.h"
    #include "Easing.h"
    #include "Macro.h"
  //  #include "Lib_GZ/Debug.h"
#endif


//#include "Lib_GZ/Embed.h"
#include "Lib_GZ/Pod.h"
#include "Lib_GZ/SmartPtr/SharedPtr.h"
#include "Lib_GZ/SmartPtr/WeakPtr.h"
#include "Lib_GZ/SmartPtr/EnableSharedFromThis.h"


/*
// A macro to disallow the copy constructor and operator= functions
// This should be used in the private: declarations for a class
#define GZ_tNoCopy(TypeName) \
  TypeName(const TypeName&);               \
  void operator=(const TypeName&)
*/


namespace Lib_GZ{

/////////////////////////////
//////Default Delegates//////
/////////////////////////////

#ifndef GZ_r_void_p_No
#define GZ_r_void_p_No
GZ_mIComp(_r_void_p_No);
namespace Dlg_r_void_p_No{
   GZ_mDlgIni(void){return ;};
   class Dlg { GZ_mDlgClass(_r_void_p_No)
        inline  void fCall() const{
            GZ_mDlgCall();
         }
    };
}
#endif
#ifndef GZ_r_void_p_gzStr
#define GZ_r_void_p_gzStr
GZ_mIComp(_r_void_p_gzStr);
namespace Dlg_r_void_p_gzStr{
   GZ_mDlgIni(void, GZ_PARAM, gzPStr){return ;};
   class Dlg { GZ_mDlgClass(_r_void_p_gzStr)
        inline  void fCall(gzPStr _sStr) const{
            GZ_mDlgCall(GZ_PARAM, _sStr);
         }
    };
}
#endif
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
}//namespace Lib_GZ


//#include "Lib_GZ/Embed.h"

#include "Lib_GZ/StThread.h"
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////




namespace Lib_GZ{namespace File{
	class cResource;
}}
typedef Lib_GZ::File::cResource* gzRcFile;
struct gzRcFolder{
	const unsigned int nTotalFolder;
	const unsigned int nTotalFile;
	const gzStr sName;
	const gzRcFolder* aFolder;
	const gzRcFile* aFile;
};

#ifdef GZ_tWeb_Emsc
	#include "Lib_GZ/SysUtils/EmscHeader.h"

	#define GzNullVal emscripten::val::global("Null");
	/*
	class gzVal {
		public:
		emscripten::val _oVal;
		inline gzVal() : _oVal(0) {};

		inline operator gzVal*() {
			return _oVal;
		};

	};*/

	typedef emscripten::val gzVal; //TODO

#else
	typedef gzUInt gzVal;
	#define GzNullVal 0;
#endif




#endif


