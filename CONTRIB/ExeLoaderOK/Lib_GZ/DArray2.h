//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef DEF_GZ_DArray2
#define DEF_GZ_DArray2

#include "Lib_Gz/GzTypes.h"

///////////////////
//Array structure//
///////////////////
typedef struct {
    gzUInt  nNbIns;
    gzUInt size;
    gzUInt maxSize;
    gzPtr *array;
} ArrayFunc;


typedef struct {
    int *array;// = new int [nYLoop]
    gzUInt size;// = new int [nYLoop]
    gzUInt maxSize;// = new int [nYLoop]
} ArrayInt;

 typedef struct ArrayPtr {
    gzUInt size;// = new int [nYLoop]
    gzUInt maxSize;// = new int [nYLoop]
    ArrayPtr **array;// = new int [nYLoop]#ifdef USE_STR16
}ArrayPtr;
/*
typedef struct {
    void **array;// = new int [nYLoop]
    int size;// = new int [nYLoop]
    int maxSize;// = new int [nYLoop]

} ArrayArray;
*/

ArrayPtr** GZ_tAw_Ptr(ArrayPtr* _aArray, gzUInt _nIndex);
ArrayPtr* GZ_tAr_Ptr(ArrayPtr* _aArray, gzUInt _nIndex);

void* c_e(void* _ptr);
gzInt32* GZ_tAw_Int(ArrayInt* _aArray, gzUInt _nIndex);
gzInt32 GZ_tAr_Int(ArrayInt* _aArray, gzUInt _nIndex);

#endif