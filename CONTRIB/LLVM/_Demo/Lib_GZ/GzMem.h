//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.


#ifndef tHDef_GZ_Mem
#define tHDef_GZ_Mem

#include "Lib_GZ/GzBaseFunc.h"

#ifdef UseCustomHeapFor_GZ
	#include "Lib_GZ/Lib/umm_malloc.h"
	#define GZ_fMalloc umm_malloc
	#define GZ_fCalloc(_nSize, _nNB) umm_calloc(_nSize * _nNB)
	#define GZ_fRealloc umm_realloc
	#define GZ_fFree umm_free
#else
    #ifdef GZ_tLeakCheck
        #include "Lib/Memory/stb_leakcheck.h"
        #define GZ_fMalloc(_nNb, _nSize) stb_leakcheck_malloc((_nNb) * (_nSize), __FILE__, __LINE__)
        #define GZ_fCalloc(_nNb, _nSize) stb_leakcheck_calloc(_nNb , _nSize, __FILE__, __LINE__)
        #define GZ_fRealloc(p,sz) stb_leakcheck_realloc(p,sz, __FILE__, __LINE__)
        #define GZ_fFree(ptr) stb_leakcheck_free( (void*)(ptr) )
    #else

    //    #include <stdlib.h> //malocc/calloc/free

        #define GZ_fMalloc(_nNb, _nSize) malloc((_nNb) * (_nSize))
        #define GZ_fCalloc(_nNb, _nSize) calloc(_nNb, _nSize)
        #define GZ_fRealloc realloc
        #define GZ_fFree free
        //#define GZ_fFree(_Empty)
    #endif


     #define GZ_fSafeMalloc(_nNb, _nType)(_nType*)malloc((_nNb) * sizeof(_nType));
     #define GZ_fSafeCalloc(_nNb, _nType)(_nType*)calloc(_nNb, sizeof(_nType));
     #define GZ_fSafeRealloc realloc
     #define GZ_fSafeFree free

#endif



#endif


