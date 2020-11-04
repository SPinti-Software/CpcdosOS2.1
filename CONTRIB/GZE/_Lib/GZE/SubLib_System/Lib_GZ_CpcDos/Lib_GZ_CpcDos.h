#ifndef tHDef_Lib_GZ_CpcDos
#define tHDef_Lib_GZ_CpcDos

#ifdef tLibExport_Lib_GZ_CpcDos
	#define tApi_Lib_GZ_CpcDos __declspec(dllexport)
#elif tLibImport_Lib_GZ_CpcDos
	#define tApi_Lib_GZ_CpcDos __declspec(dllimport)
#else
	 #define tApi_Lib_GZ_CpcDos
#endif

#include "Lib_GZ/GzOverplace.h"
#include "Lib_GZ/Macro.h"
GZ_mHLib(Lib_GZ_CpcDos)
#endif