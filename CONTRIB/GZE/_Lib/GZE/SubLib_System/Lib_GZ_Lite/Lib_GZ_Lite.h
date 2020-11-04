#ifndef tHDef_Lib_GZ_Lite
#define tHDef_Lib_GZ_Lite

#ifdef tLibExport_Lib_GZ_Lite
	#define tApi_Lib_GZ_Lite __declspec(dllexport)
#elif tLibImport_Lib_GZ_Lite
	#define tApi_Lib_GZ_Lite __declspec(dllimport)
#else
	 #define tApi_Lib_GZ_Lite
#endif

#include "Lib_GZ/GzOverplace.h"
#include "Lib_GZ/Macro.h"
GZ_mHLib(Lib_GZ_Lite)
#endif