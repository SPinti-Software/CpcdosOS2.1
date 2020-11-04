#ifndef tHDef_Lib_Demo
#define tHDef_Lib_Demo

#ifdef tLibExport_Lib_Demo
	#define tApi_Lib_Demo __declspec(dllexport)
#elif tLibImport_Lib_Demo
	#define tApi_Lib_Demo __declspec(dllimport)
#else
	 #define tApi_Lib_Demo
#endif

#include "Lib_GZ/GzOverplace.h"
#include "Lib_GZ/Macro.h"
GZ_mHLib(Lib_Demo)
#endif