#ifndef tHDef_Lib_GZ_OpenGL
#define tHDef_Lib_GZ_OpenGL

#ifdef tLibExport_Lib_GZ_OpenGL
	#define tApi_Lib_GZ_OpenGL __declspec(dllexport)
#elif tLibImport_Lib_GZ_OpenGL
	#define tApi_Lib_GZ_OpenGL __declspec(dllimport)
#else
	 #define tApi_Lib_GZ_OpenGL
#endif

#include "Lib_GZ/GzOverplace.h"
#include "Lib_GZ/Macro.h"
GZ_mHLib(Lib_GZ_OpenGL)
#endif