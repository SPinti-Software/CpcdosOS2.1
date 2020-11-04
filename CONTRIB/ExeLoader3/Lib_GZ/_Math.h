//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHHDef_GZ_M
#define tHHDef_GZ_M

//M for MATH
#include "Lib_GZ/GzTypes.h"



namespace Lib_GZ {
namespace Math {

static const gzUInt nIPrecision = 10;
static const gzUInt nIDivPrecision = 12;  //32bit
static const gzUInt nIDivPrecAdd64 = 4;  //to add to nIDivPrecision for 64bit large shape

static const gzUInt nIPixPrecision = 8;



static const gzFloat nR90 = 1.57079633;
static const gzFloat nHPI = 1.57079633;
static const gzFloat64 nPI = 3.1415926535897932384626433832795028841971693993751058209749445923078164062;

static const gzUInt nPrec = (1 << nIPrecision);
static const gzUInt nHPrec = (nPrec/2);
static const gzUInt nSP = nIPrecision;

static const gzUInt nPixPrec = (1 << nIPixPrecision);
static const gzUInt nPixHPrec = (nPixPrec/2);
static const gzUInt nPixSP = nIPixPrecision;
static const gzUInt nPixSP8 = (nIPixPrecision + (nIPixPrecision - 8));
static const gzUInt nPixSPDiff = (nIPrecision - nIPixPrecision);

#define UseLargeShape
#ifdef UseLargeShape
    static const gzUInt nDivPrec = (nIDivPrecision + nIDivPrecAdd64);
#else
    static const gzUInt nDivPrec = nIDivPrecision;
#endif

//static const gzUInt nIPrecision = 10;
//static const gzUInt nIDivPrecision = 10;
}

}


#endif
