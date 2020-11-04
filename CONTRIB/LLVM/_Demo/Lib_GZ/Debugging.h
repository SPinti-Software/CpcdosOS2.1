//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHDef_GZ_Debugging
#define tHDef_GZ_Debugging


#ifdef GZ_tDebug
    #define GZ_fSpAssert(expr)   if( !(expr )){\
                Lib_GZ::fSpAssertError(__LINE__); \
            }
    #define GZ_fSpAssertMsg(expr, msg) assert((expr)&&(msg))\
       Lib_GZLib_GZ_fSpAssertMsg(msg, __LINE__);


#else
    #define GZ_fSpAssert(expr)
    #define GZ_fSpAssertMsg(expr, msg)
#endif

class gzStr;
#define gzPStr const gzStr&

namespace Lib_GZ{

    void fSpAssertError(gzUInt _nLine);
    void fSpAssertError(gzPStr _sMessage, gzUInt _nLine);
    void fConsole(gzPStr _sValue);

}
#endif
