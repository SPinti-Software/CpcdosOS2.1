#ifndef tHDef_Lib_GZ
#define tHDef_Lib_GZ

#ifdef tLibExport_Lib_GZ
	#define tApi_Lib_GZ __declspec(dllexport)
#elif tLibImport_Lib_GZ
	#define tApi_Lib_GZ __declspec(dllimport)
#else
	 #define tApi_Lib_GZ
#endif

#include "Lib_GZ/GzOverplace.h"
#include "Lib_GZ/Macro.h"
GZ_mHLib(Lib_GZ)
#endif