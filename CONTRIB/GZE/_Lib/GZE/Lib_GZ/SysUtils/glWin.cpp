//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

//#include "SysGpuInfo.h"
#include "glWin.h"
#include "Lib_GZ/GZ.h"



namespace _SysGpuInfo{
		#undef GL_NO_ERROR
		#define GL_NO_ERROR                       0
		#define GL_INVALID_ENUM                   0x0500
		#define GL_INVALID_VALUE                  0x0501
		#define GL_INVALID_OPERATION              0x0502
		#define GL_STACK_OVERFLOW                 0x0503
		#define GL_STACK_UNDERFLOW                0x0504
		#define GL_OUT_OF_MEMORY                  0x0505
		gzStr fGetErrorString(gzUInt _nError){
			switch (_nError) {
				case GL_NO_ERROR :
					return gzStrL("GL_NO_ERROR");
				break;
				case GL_INVALID_ENUM :
					return gzStrL("GL_INVALID_ENUM");
				break;
				case GL_INVALID_VALUE :
					return gzStrL("GL_INVALID_VALUE");
				break;
				case GL_INVALID_OPERATION :
					return gzStrL("GL_INVALID_OPERATION");
				break;
				case GL_STACK_OVERFLOW :
					return gzStrL("GL_STACK_OVERFLOW");
				break;
				case GL_STACK_UNDERFLOW :
					return gzStrL("GL_STACK_UNDERFLOW");
				break;
				case GL_OUT_OF_MEMORY :
					return gzStrL("GL_OUT_OF_MEMORY");
				break;
				default :
					return gzStrL("GL_UNKNOW(") + gzStrUI(_nError) + gzStrL(")");
				break;
			}
		}
	}

	gzStr fGetFile(const char *_cFile){
		gzStr _sFile = gzStrC(_cFile);
		_sFile.fReplaceAll(gzStrL("\\"), gzStrL("/"));
		return _sFile;
	}





#ifdef GZ_tWindows

	#include <Windows.h>
	namespace System{
		gzStr fGetLastErrorString(gzUInt _nError){
		  if (_nError)
		  {
			LPVOID lpMsgBuf;
			DWORD bufLen = FormatMessageW(
				FORMAT_MESSAGE_ALLOCATE_BUFFER |
				FORMAT_MESSAGE_FROM_SYSTEM |
				FORMAT_MESSAGE_IGNORE_INSERTS,
				NULL,
				_nError,
				MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
				(LPTSTR) &lpMsgBuf,
				0, NULL );
			if (bufLen)
			{
			  LPCSTR lpMsgStr = (LPCSTR)lpMsgBuf;
			  //std::string result(lpMsgStr, lpMsgStr+bufLen);
			 //   gzStr _sError = gzStr(lpMsgStr,(gzUInt)(bufLen) - 1);
				gzStr _sError = gzStr((gzUInt16*) lpMsgStr);

			_sError.fEnd().fPrev(); //Remove last char
			_sError = _sError.fRevSubStr(gzStrToEnd);
			  LocalFree(lpMsgBuf);

			  return _sError;
			}
		  }
		  return gzStrL("Unknow");
		}
	}


	void* Lib_GZ_OpenGL::SysGpuFunc::fGetFuncGL(const char *_cName, gzBool _bRequired){
		using namespace Lib_GZ;
		System::fResetLastError();
		void *p = (void *)wglGetProcAddress(_cName);
		gzUInt _nErr = GetLastError();
		if(_nErr == 127){
			SetLastError(0);
			HMODULE _pModule = LoadLibraryA("opengl32.dll");
			p = (void *)GetProcAddress(_pModule, _cName);
			if(p == 0 && _bRequired){
				GZ_Debug_fError(gzStrL("Error OGL function Missing: ") + gzStrC(_cName));
			}
		}else{
			if(_nErr){ 
				SetLastError(0);
				GZ_Debug_fError(gzStrL("Error loading OGL function (")  + gzStrUI(_nErr)  + gzStrL("): ") +  System::fGetLastErrorString(_nErr) + gzStrC(_cName));
			}
		}
		return p;
	}
		
#endif

	


