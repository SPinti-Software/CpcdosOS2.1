//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/Lib_GZ.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Debugging.h"

#ifdef GZ_tHaveCallStack
 gzPtr gzaCallStack[GZ_tCallStackSize];
 gzUInt gznCallStackIndex;
#endif

namespace Lib_GZ{

    void fConsole(gzPStr _sValue){
        printf("c:");
        printf("%s", (char*)_sValue.fcStr() );
        printf("\n");
    }

    void fSpAssertError(gzUInt _nLine){
        Lib_GZ::fConsole(gzStrL("Shared Ptr Error, place breakpoint here to get the call stack"));
		GZ_Crash();
    }

    void fSpAssertError(gzPStr _sMessage, gzUInt _nLine){
        Lib_GZ::fConsole(gzStrL("Shared Ptr Error:") + _sMessage + gzStrL(", place breakpoint here to get the call stack"));
		GZ_Crash();
    }
}



