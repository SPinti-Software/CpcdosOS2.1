#if !( defined tHDef_Lib_GZ_OpenGL_OpenGL || defined  tHDef_IN_Lib_GZ_Class)
#pragma once
#define tHDef_Lib_GZ_OpenGL_OpenGL
namespace Lib_GZ_OpenGL{class cOpenGL;}

#include "Lib_GZ_OpenGL/Lib_GZ_OpenGL.h"
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Thread.h"
#include "_OpenGL.h"
#include "Lib_GZ/Class.h"
// ------  Cpp section  ------ //
#ifdef GZ_tWeb_Emsc
#include "Lib_GZ/SysUtils/EmscHeader.h"
#endif
extern void* gzEmscPtrBuffer;
// --------------------------- //

namespace Lib_GZ_OpenGL{namespace OpenGL{

//Structure Definition

}}

//Optimised Class include -> direct class or header of header (Constants)
#include "Lib_GZ_OpenGL/_OpenGL.h"
namespace Lib_GZ{namespace Sys{class cDebug;}}
namespace Lib_GZ{class cClass;}
namespace Lib_GZ{class cThreadMsg;}

namespace Lib_GZ_OpenGL{namespace OpenGL{


	//Structure Implementation

	//Unit creation
	//Unit destruction
	//Unit array write

}
class tApi_Lib_GZ_OpenGL pOpenGL {

	public:
	//Pure Function

};

class tApi_Lib_GZ_OpenGL cOpenGL : public Lib_GZ::cClass {

	public:


		//Var
		cOpenGL(Lib_GZ::cBase* _parent);
		virtual void Ini_cOpenGL();

		inline cOpenGL(const cOpenGL &_o)  : Lib_GZ::cClass(_o){};
		inline cOpenGL(const cOpenGL &_o, gzBool _b)  : Lib_GZ::cClass(_o, _b){};
		virtual gzAny MemCopy();
		virtual gzAny DeepCopy();
		virtual ~cOpenGL();

	private:

		//Var

};
class tApi_Lib_GZ_OpenGL csOpenGL : public Lib_GZ::cStThread  {

	public:
		// ------  Cpp section  ------ //
		#ifdef GZ_tWeb_Emsc
		val oGL = val::global("Null");
		#endif
		// --------------------------- //

		//Object Creation Wrapper
		inline virtual gzSp<cOpenGL> New(Lib_GZ::cBase* _parent){
			gzSp<cOpenGL>_oTemp = gzSp<cOpenGL>(new cOpenGL(_parent));
			_oTemp->Ini_cOpenGL();
			return _oTemp;
		}
		//Public static

		//Static function
		virtual gzUInt fGetError();
		virtual void fFlush();
		virtual void fEnable(gzUInt _eCapability);
		virtual void fDisable(gzUInt _eCapability);
		virtual void fDepthMask(gzBool _bEnable);
		virtual void fDepthFunc(gzUInt _eFunc);
		virtual void fGetBooleanv(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzBool* _pData);
		virtual void fGetDoublev(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzFloat64* _pData);
		virtual void fGetFloatv(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzFloat32* _pData);
		virtual void fGetIntegerv(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzInt32* _pData);
		virtual void fGetInteger64v(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzInt64* _pData);
		virtual void fGetBooleani_v(gzUInt _hTarget, gzUInt _nIndex, gzBool* _pData);
		virtual void fGetIntegeri_v(gzUInt _hTarget, gzUInt _nIndex, gzFloat64* _pData);
		virtual void fGetFloati_v(gzUInt _hTarget, gzUInt _nIndex, gzFloat32* _pData);
		virtual void fGetDoublei_v(gzUInt _hTarget, gzUInt _nIndex, gzInt32* _pData);
		virtual void fGetInteger64i_v(gzUInt _hTarget, gzUInt _nIndex, gzInt64* _pData);
		virtual void fVertexAttribPointer(gzVal _nIndex, Lib_GZ_OpenGL::OpenGL::eVecLength _hLength, Lib_GZ_OpenGL::OpenGL::eVarType _hType, gzBool _bNormalized, gzInt _nStride, gzUInt _nPointer);
		virtual void fVertexAttribDivisor(gzVal _nIndex, gzUInt _nDivisor);
		virtual void fEnableVertexAttribArray(gzVal _nIndex);
		virtual void fDisableVertexAttribArray(gzUInt _nIndex);
		virtual gzBool fSwapIntervalEXT(gzInt _nInterval);
		virtual void fBlendEquation(gzUInt _eMode);
		virtual void fBlendFuncSeparate(gzUInt _eSFactorRGB, gzUInt _eDFactorRGB, gzUInt _eSFactorAlpha, gzUInt _eDFactorAlpha);
		virtual void fBlendFunc(gzUInt _eSrcFactor, gzUInt _eDstFactor);
		virtual void fGenVertexArrays(gzInt _nNb, gzUInt* _aArrays);
		virtual gzVal fCreateBuffer();
		virtual void fGenBuffers(gzInt _nNb, gzUInt* _aBuffers);
		virtual void fBindVertexArray(gzUInt _nVAO);
		virtual void fBindBuffer(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzVal _nBuffer);
		virtual void fBufferSubData(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzIntX _nOffset, gzIntX _nSize, void* _pData);
		virtual gzStr fGetShaderInfoLog(gzVal _nShaderId);
		virtual void fGetShaderInfoLog(gzVal _nShaderId, gzInt _nMaxLength, gzInt* _aLength, gzUInt8* _cLogInfo);
		virtual gzVal fCreateProgram();
		virtual void fLinkProgram(gzVal _nIdProgram);
		virtual void fGetProgramParameter(gzVal _nShaderId, Lib_GZ_OpenGL::OpenGL::eProgramInfo _hInfo, gzInt* _aParams);
		virtual void fGetProgramiv(gzVal _nIdProgram, Lib_GZ_OpenGL::OpenGL::eProgramInfo _hInfo, gzInt* _aParams);
		virtual void fUseProgram(gzVal _nIdProgram);
		virtual void fDeleteProgram(gzVal _nIdProgram);
		virtual void fGetProgramInfoLog(gzVal _nProgramId, gzInt _nMaxLength, gzInt* _aLength, gzUInt8* _cLogInfo);
		virtual gzVal fGetUniformLocation(gzVal _nIdProgram, gzUInt8* _cName);
		virtual gzVal fGetAttribLocation(gzVal _nIdProgram, gzUInt8* _cName);
		virtual void fBindAttribLocation(gzVal _nIdProgram, gzUInt _nIndex, gzUInt8* _cName);
		virtual gzVal fCreateShader(Lib_GZ_OpenGL::OpenGL::eShader _hType);
		virtual void fShaderSource(gzVal _nShaderId, gzPStr _sSourceCode);
		virtual void fShaderSource(gzVal _nShaderId, gzInt _nCount, gzUInt8** _cSourceCode, gzInt* _pLength = (GZ_NullObj));
		virtual void fCompileShader(gzVal _nShaderId);
		virtual gzUInt fGetShaderParameter(gzVal _nShaderId, Lib_GZ_OpenGL::OpenGL::eShaderInfo _hInfo);
		virtual void fGetShaderiv(gzVal _nShaderId, Lib_GZ_OpenGL::OpenGL::eShaderInfo _hInfo, gzInt* _aParams);
		virtual void fDeleteShader(gzVal _nShaderId);
		virtual void fAttachShader(gzVal _nIdProgram, gzVal _nShaderId);
		virtual void fActiveTexture(gzUInt _eTexture);
		virtual void fTexImage2D(gzUInt _eTarget, gzInt _nLevel, gzInt _nInternalformat, gzInt _nWidth, gzInt _nHeight, gzInt _nBorder, gzUInt _eFormat, gzUInt _eType, void* _pPixel);
		virtual void fTexImage3D(gzUInt _eTarget, gzInt _nLevel, gzInt _nInternalformat, gzInt _nWidth, gzInt _nHeight, gzInt _nDepth, gzInt _nBorder, gzUInt _eFormat, gzUInt _eType, void* _pPixel);
		virtual void fTexSubImage3D(gzUInt _eTarget, gzInt _nLevel, gzInt _nOffsetX, gzInt _nOffsetY, gzInt _nOffsetZ, gzInt _nWidth, gzInt _nHeight, gzInt _nDepth, gzUInt _eFormat, gzUInt _eType, void* _pPixel);
		virtual void fBindTexture(gzUInt _eTarget, gzUInt _nTextureId);
		virtual void fTexParameterf(gzUInt _eTarget, gzUInt _eName, gzFloat32 _nParam);
		virtual void fTexParameteri(gzUInt _eTarget, gzUInt _eName, gzInt _nParam);
		virtual void fGenTextures(gzInt _nNb, gzUInt* _aTextures);
		virtual void fClear(Lib_GZ_OpenGL::OpenGL::eClearBuffer _hMask);
		virtual void fClearColor(gzFloat32 _nRed, gzFloat32 _nGreen, gzFloat32 _nBlue, gzFloat32 _nAlpha);
		virtual void fBufferData(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzUInt _nNb, Lib_GZ_OpenGL::OpenGL::eTypeSize _hType, gzPData(gzUInt8) _pData, Lib_GZ_OpenGL::OpenGL::eDrawFlow _hUsage);
		virtual void fBufferData(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzIntX _nSize, void* _pData, Lib_GZ_OpenGL::OpenGL::eDrawFlow _hUsage);
		virtual void fDrawElements(Lib_GZ_OpenGL::OpenGL::eDrawMode _hMode, gzInt _nCount, Lib_GZ_OpenGL::OpenGL::eVarType _hVarType, void* _pOffset);
		virtual void fDrawElementsInstanced(Lib_GZ_OpenGL::OpenGL::eDrawMode _hMode, gzInt _nCount, Lib_GZ_OpenGL::OpenGL::eVarType _hVarType, void* _pIndicesLocation, gzInt _nInstanceCount);
		virtual void fGenFramebuffers(gzInt _nNb, gzUInt* _aFrameBuffers);
		virtual void fBindFramebuffer(gzUInt _eTarget, gzUInt _nFrameBufferId);
		virtual void fGenRenderbuffers(gzInt _nNb, gzUInt* _aRenderBuffers);
		virtual void fBindRenderbuffer(gzUInt _eTarget, gzUInt _nRenderBufferId);
		virtual void fRenderbufferStorage(gzUInt _eTarget, gzUInt _eInternalFormat, gzInt _nWidth, gzInt _nHeight);
		virtual void fFramebufferTexture2D(gzUInt _eTarget, gzUInt _eAttachement, gzUInt _eTextureTarget, gzUInt _nTexture, gzInt _nLevel);
		virtual void fFramebufferRenderbuffer(gzUInt _eTarget, gzUInt _eAttachement, gzUInt _eRenderBufferTarget, gzUInt _nRenderBufferId);
		virtual gzUInt fCheckFramebufferStatus(gzUInt _eTarget);
		virtual void fDeleteBuffers(gzInt _nNb, gzUInt* _aBuffers);
		virtual void fUniform1f(gzVal _nLocation, gzFloat32 _n0);
		virtual void fUniform2f(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1);
		virtual void fUniform3f(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, gzFloat32 _n2);
		virtual void fUniform4f(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, gzFloat32 _n2, gzFloat32 _n3);
		virtual void fUniform1i(gzVal _nLocation, gzInt32 _n0);
		virtual void fUniform2i(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1);
		virtual void fUniform3i(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, gzInt32 _n2);
		virtual void fUniform4i(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, gzInt32 _n2, gzInt32 _n3);
		virtual void fUniform1fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
		virtual void fUniform2fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
		virtual void fUniform3fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
		virtual void fUniform4fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
		virtual void fUniform1iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
		virtual void fUniform2iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
		virtual void fUniform3iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
		virtual void fUniform4iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
		virtual void fUniformMatrix2fv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue);
		virtual void fUniformMatrix3fv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue);
		virtual void fUniformMatrix4fv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue);
		virtual void fUniform1d(gzVal _nLocation, gzFloat64 _nX);
		virtual void fUniform2d(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY);
		virtual void fUniform3d(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, gzFloat64 _nZ);
		virtual void fUniform4d(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, gzFloat64 _nZ, gzFloat64 _nW);
		virtual void fUniform1dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
		virtual void fUniform2dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
		virtual void fUniform3dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
		virtual void fUniform4dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
		virtual void fUniformMatrix2dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix3dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix4dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix2x3dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix2x4dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix3x2dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix3x4dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix4x2dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniformMatrix4x3dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
		virtual void fUniform1ui(gzVal _nLocation, gzUInt32 _n0);
		virtual void fUniform2ui(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1);
		virtual void fUniform3ui(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, gzUInt32 _n2);
		virtual void fUniform4ui(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, gzUInt32 _n2, gzUInt32 _n3);
		virtual void fUniform1uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
		virtual void fUniform2uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
		virtual void fUniform3uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
		virtual void fUniform4uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
		virtual gzUInt fGetUniformBlockIndex(gzUInt _nPorgramId, gzUInt8* _cUboName);
		virtual void fBindBufferBase(gzUInt _eTarget, gzUInt _nIndex, gzUInt _nBuffer);
		virtual void fUniformBlockBinding(gzUInt _nPorgramId, gzUInt _nUniformBlickId, gzUInt _nBindPoint);

		inline csOpenGL(Lib_GZ::cBase* _parent): Lib_GZ::cStThread(_parent){};
		inline ~csOpenGL(){};
};
GZ_mStaticClass(OpenGL)
namespace OpenGL{
}}
#endif
//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

namespace Lib_GZ_OpenGL{class cOpenGL;}
#ifndef tHDef_Generate_OpenGL_Lib_GZ_OpenGL_OpenGL
#define tHDef_Generate_OpenGL_Lib_GZ_OpenGL_OpenGL
#include "Lib_GZ/GZ.h"
#include "Lib_GZ/SysUtils/glWin.h"
#include "Lib_GZ/Sys/Debug.h"
namespace Lib_GZ_OpenGL {namespace SysGpuFunc{
void* fGetFuncGL(const char *_cName, gzBool _bRequired = true);
gzBool fGetGpuFunctions();
}}

#if !( defined GZ_tWeb_Emsc ||  defined GZ_tCpcDos  ||  defined GZ_tLite  ) 
#define GL_fGetError glCall_fGetError
typedef gzUInt (APIENTRY* FUNC_fGetError)();
extern FUNC_fGetError glCall_fGetError;
#else
#endif

#if !( defined GZ_tWeb_Emsc ||  defined GZ_tCpcDos  ||  defined GZ_tLite  ) 
#define GL_fFlush() glDbg_fFlush(__FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fFlush)();
extern FUNC_fFlush glCall_fFlush;
void  glDbg_fFlush(const char* _cFile , gzUInt _nLine);

#define GL_fEnable(_eCapability) glDbg_fEnable(_eCapability, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fEnable)(gzUInt _eCapability);
extern FUNC_fEnable glCall_fEnable;
void  glDbg_fEnable(gzUInt _eCapability, const char* _cFile , gzUInt _nLine);

#define GL_fDisable(_eCapability) glDbg_fDisable(_eCapability, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDisable)(gzUInt _eCapability);
extern FUNC_fDisable glCall_fDisable;
void  glDbg_fDisable(gzUInt _eCapability, const char* _cFile , gzUInt _nLine);

#define GL_fDepthMask(_bEnable) glDbg_fDepthMask(_bEnable, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDepthMask)(gzBool _bEnable);
extern FUNC_fDepthMask glCall_fDepthMask;
void  glDbg_fDepthMask(gzBool _bEnable, const char* _cFile , gzUInt _nLine);

#define GL_fDepthFunc(_eFunc) glDbg_fDepthFunc(_eFunc, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDepthFunc)(gzUInt _eFunc);
extern FUNC_fDepthFunc glCall_fDepthFunc;
void  glDbg_fDepthFunc(gzUInt _eFunc, const char* _cFile , gzUInt _nLine);

#define GL_fGetBooleanv(_hName, _pData) glDbg_fGetBooleanv(_hName, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetBooleanv)(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzBool* _pData);
extern FUNC_fGetBooleanv glCall_fGetBooleanv;
void  glDbg_fGetBooleanv(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzBool* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetDoublev(_hName, _pData) glDbg_fGetDoublev(_hName, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetDoublev)(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzFloat64* _pData);
extern FUNC_fGetDoublev glCall_fGetDoublev;
void  glDbg_fGetDoublev(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzFloat64* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetFloatv(_hName, _pData) glDbg_fGetFloatv(_hName, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetFloatv)(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzFloat32* _pData);
extern FUNC_fGetFloatv glCall_fGetFloatv;
void  glDbg_fGetFloatv(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzFloat32* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetIntegerv(_hName, _pData) glDbg_fGetIntegerv(_hName, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetIntegerv)(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzInt32* _pData);
extern FUNC_fGetIntegerv glCall_fGetIntegerv;
void  glDbg_fGetIntegerv(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzInt32* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetInteger64v(_hName, _pData) glDbg_fGetInteger64v(_hName, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetInteger64v)(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzInt64* _pData);
extern FUNC_fGetInteger64v glCall_fGetInteger64v;
void  glDbg_fGetInteger64v(Lib_GZ_OpenGL::OpenGL::eGetName _hName, gzInt64* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetBooleani_v(_hTarget, _nIndex, _pData) glDbg_fGetBooleani_v(_hTarget, _nIndex, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetBooleani_v)(gzUInt _hTarget, gzUInt _nIndex, gzBool* _pData);
extern FUNC_fGetBooleani_v glCall_fGetBooleani_v;
void  glDbg_fGetBooleani_v(gzUInt _hTarget, gzUInt _nIndex, gzBool* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetIntegeri_v(_hTarget, _nIndex, _pData) glDbg_fGetIntegeri_v(_hTarget, _nIndex, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetIntegeri_v)(gzUInt _hTarget, gzUInt _nIndex, gzFloat64* _pData);
extern FUNC_fGetIntegeri_v glCall_fGetIntegeri_v;
void  glDbg_fGetIntegeri_v(gzUInt _hTarget, gzUInt _nIndex, gzFloat64* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetFloati_v(_hTarget, _nIndex, _pData) glDbg_fGetFloati_v(_hTarget, _nIndex, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetFloati_v)(gzUInt _hTarget, gzUInt _nIndex, gzFloat32* _pData);
extern FUNC_fGetFloati_v glCall_fGetFloati_v;
void  glDbg_fGetFloati_v(gzUInt _hTarget, gzUInt _nIndex, gzFloat32* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetDoublei_v(_hTarget, _nIndex, _pData) glDbg_fGetDoublei_v(_hTarget, _nIndex, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetDoublei_v)(gzUInt _hTarget, gzUInt _nIndex, gzInt32* _pData);
extern FUNC_fGetDoublei_v glCall_fGetDoublei_v;
void  glDbg_fGetDoublei_v(gzUInt _hTarget, gzUInt _nIndex, gzInt32* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetInteger64i_v(_hTarget, _nIndex, _pData) glDbg_fGetInteger64i_v(_hTarget, _nIndex, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetInteger64i_v)(gzUInt _hTarget, gzUInt _nIndex, gzInt64* _pData);
extern FUNC_fGetInteger64i_v glCall_fGetInteger64i_v;
void  glDbg_fGetInteger64i_v(gzUInt _hTarget, gzUInt _nIndex, gzInt64* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fVertexAttribPointer(_nIndex, _hLength, _hType, _bNormalized, _nStride, _nPointer) glDbg_fVertexAttribPointer(_nIndex, _hLength, _hType, _bNormalized, _nStride, _nPointer, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fVertexAttribPointer)(gzVal _nIndex, Lib_GZ_OpenGL::OpenGL::eVecLength _hLength, Lib_GZ_OpenGL::OpenGL::eVarType _hType, gzBool _bNormalized, gzInt _nStride, gzUInt _nPointer);
extern FUNC_fVertexAttribPointer glCall_fVertexAttribPointer;
void  glDbg_fVertexAttribPointer(gzVal _nIndex, Lib_GZ_OpenGL::OpenGL::eVecLength _hLength, Lib_GZ_OpenGL::OpenGL::eVarType _hType, gzBool _bNormalized, gzInt _nStride, gzUInt _nPointer, const char* _cFile , gzUInt _nLine);

#define GL_fVertexAttribDivisor(_nIndex, _nDivisor) glDbg_fVertexAttribDivisor(_nIndex, _nDivisor, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fVertexAttribDivisor)(gzVal _nIndex, gzUInt _nDivisor);
extern FUNC_fVertexAttribDivisor glCall_fVertexAttribDivisor;
void  glDbg_fVertexAttribDivisor(gzVal _nIndex, gzUInt _nDivisor, const char* _cFile , gzUInt _nLine);

#define GL_fEnableVertexAttribArray(_nIndex) glDbg_fEnableVertexAttribArray(_nIndex, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fEnableVertexAttribArray)(gzVal _nIndex);
extern FUNC_fEnableVertexAttribArray glCall_fEnableVertexAttribArray;
void  glDbg_fEnableVertexAttribArray(gzVal _nIndex, const char* _cFile , gzUInt _nLine);

#define GL_fDisableVertexAttribArray(_nIndex) glDbg_fDisableVertexAttribArray(_nIndex, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDisableVertexAttribArray)(gzUInt _nIndex);
extern FUNC_fDisableVertexAttribArray glCall_fDisableVertexAttribArray;
void  glDbg_fDisableVertexAttribArray(gzUInt _nIndex, const char* _cFile , gzUInt _nLine);

#define GL_fSwapIntervalEXT(_nInterval) glDbg_fSwapIntervalEXT(_nInterval, __FILE__, __LINE__)
typedef gzBool (APIENTRY* FUNC_fSwapIntervalEXT)(gzInt _nInterval);
extern FUNC_fSwapIntervalEXT glCall_fSwapIntervalEXT;
gzBool  glDbg_fSwapIntervalEXT(gzInt _nInterval, const char* _cFile , gzUInt _nLine);

#define GL_fBlendEquation(_eMode) glDbg_fBlendEquation(_eMode, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBlendEquation)(gzUInt _eMode);
extern FUNC_fBlendEquation glCall_fBlendEquation;
void  glDbg_fBlendEquation(gzUInt _eMode, const char* _cFile , gzUInt _nLine);

#define GL_fBlendFuncSeparate(_eSFactorRGB, _eDFactorRGB, _eSFactorAlpha, _eDFactorAlpha) glDbg_fBlendFuncSeparate(_eSFactorRGB, _eDFactorRGB, _eSFactorAlpha, _eDFactorAlpha, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBlendFuncSeparate)(gzUInt _eSFactorRGB, gzUInt _eDFactorRGB, gzUInt _eSFactorAlpha, gzUInt _eDFactorAlpha);
extern FUNC_fBlendFuncSeparate glCall_fBlendFuncSeparate;
void  glDbg_fBlendFuncSeparate(gzUInt _eSFactorRGB, gzUInt _eDFactorRGB, gzUInt _eSFactorAlpha, gzUInt _eDFactorAlpha, const char* _cFile , gzUInt _nLine);

#define GL_fBlendFunc(_eSrcFactor, _eDstFactor) glDbg_fBlendFunc(_eSrcFactor, _eDstFactor, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBlendFunc)(gzUInt _eSrcFactor, gzUInt _eDstFactor);
extern FUNC_fBlendFunc glCall_fBlendFunc;
void  glDbg_fBlendFunc(gzUInt _eSrcFactor, gzUInt _eDstFactor, const char* _cFile , gzUInt _nLine);

#define GL_fGenVertexArrays(_nNb, _aArrays) glDbg_fGenVertexArrays(_nNb, _aArrays, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGenVertexArrays)(gzInt _nNb, gzUInt* _aArrays);
extern FUNC_fGenVertexArrays glCall_fGenVertexArrays;
void  glDbg_fGenVertexArrays(gzInt _nNb, gzUInt* _aArrays, const char* _cFile , gzUInt _nLine);

#define GL_fGenBuffers(_nNb, _aBuffers) glDbg_fGenBuffers(_nNb, _aBuffers, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGenBuffers)(gzInt _nNb, gzUInt* _aBuffers);
extern FUNC_fGenBuffers glCall_fGenBuffers;
void  glDbg_fGenBuffers(gzInt _nNb, gzUInt* _aBuffers, const char* _cFile , gzUInt _nLine);

#define GL_fBindVertexArray(_nVAO) glDbg_fBindVertexArray(_nVAO, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindVertexArray)(gzUInt _nVAO);
extern FUNC_fBindVertexArray glCall_fBindVertexArray;
void  glDbg_fBindVertexArray(gzUInt _nVAO, const char* _cFile , gzUInt _nLine);

#define GL_fBindBuffer(_hTarget, _nBuffer) glDbg_fBindBuffer(_hTarget, _nBuffer, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindBuffer)(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzVal _nBuffer);
extern FUNC_fBindBuffer glCall_fBindBuffer;
void  glDbg_fBindBuffer(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzVal _nBuffer, const char* _cFile , gzUInt _nLine);

#define GL_fBufferSubData(_hTarget, _nOffset, _nSize, _pData) glDbg_fBufferSubData(_hTarget, _nOffset, _nSize, _pData, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBufferSubData)(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzIntX _nOffset, gzIntX _nSize, void* _pData);
extern FUNC_fBufferSubData glCall_fBufferSubData;
void  glDbg_fBufferSubData(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzIntX _nOffset, gzIntX _nSize, void* _pData, const char* _cFile , gzUInt _nLine);

#define GL_fGetShaderInfoLog(_nShaderId, _nMaxLength, _aLength, _cLogInfo) glDbg_fGetShaderInfoLog(_nShaderId, _nMaxLength, _aLength, _cLogInfo, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetShaderInfoLog)(gzVal _nShaderId, gzInt _nMaxLength, gzInt* _aLength, gzUInt8* _cLogInfo);
extern FUNC_fGetShaderInfoLog glCall_fGetShaderInfoLog;
void  glDbg_fGetShaderInfoLog(gzVal _nShaderId, gzInt _nMaxLength, gzInt* _aLength, gzUInt8* _cLogInfo, const char* _cFile , gzUInt _nLine);

#define GL_fCreateProgram() glDbg_fCreateProgram(__FILE__, __LINE__)
typedef gzVal (APIENTRY* FUNC_fCreateProgram)();
extern FUNC_fCreateProgram glCall_fCreateProgram;
gzVal  glDbg_fCreateProgram(const char* _cFile , gzUInt _nLine);

#define GL_fLinkProgram(_nIdProgram) glDbg_fLinkProgram(_nIdProgram, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fLinkProgram)(gzVal _nIdProgram);
extern FUNC_fLinkProgram glCall_fLinkProgram;
void  glDbg_fLinkProgram(gzVal _nIdProgram, const char* _cFile , gzUInt _nLine);

#define GL_fGetProgramiv(_nIdProgram, _hInfo, _aParams) glDbg_fGetProgramiv(_nIdProgram, _hInfo, _aParams, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetProgramiv)(gzVal _nIdProgram, Lib_GZ_OpenGL::OpenGL::eProgramInfo _hInfo, gzInt* _aParams);
extern FUNC_fGetProgramiv glCall_fGetProgramiv;
void  glDbg_fGetProgramiv(gzVal _nIdProgram, Lib_GZ_OpenGL::OpenGL::eProgramInfo _hInfo, gzInt* _aParams, const char* _cFile , gzUInt _nLine);

#define GL_fUseProgram(_nIdProgram) glDbg_fUseProgram(_nIdProgram, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUseProgram)(gzVal _nIdProgram);
extern FUNC_fUseProgram glCall_fUseProgram;
void  glDbg_fUseProgram(gzVal _nIdProgram, const char* _cFile , gzUInt _nLine);

#define GL_fDeleteProgram(_nIdProgram) glDbg_fDeleteProgram(_nIdProgram, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDeleteProgram)(gzVal _nIdProgram);
extern FUNC_fDeleteProgram glCall_fDeleteProgram;
void  glDbg_fDeleteProgram(gzVal _nIdProgram, const char* _cFile , gzUInt _nLine);

#define GL_fGetProgramInfoLog(_nProgramId, _nMaxLength, _aLength, _cLogInfo) glDbg_fGetProgramInfoLog(_nProgramId, _nMaxLength, _aLength, _cLogInfo, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetProgramInfoLog)(gzVal _nProgramId, gzInt _nMaxLength, gzInt* _aLength, gzUInt8* _cLogInfo);
extern FUNC_fGetProgramInfoLog glCall_fGetProgramInfoLog;
void  glDbg_fGetProgramInfoLog(gzVal _nProgramId, gzInt _nMaxLength, gzInt* _aLength, gzUInt8* _cLogInfo, const char* _cFile , gzUInt _nLine);

#define GL_fGetUniformLocation(_nIdProgram, _cName) glDbg_fGetUniformLocation(_nIdProgram, _cName, __FILE__, __LINE__)
typedef gzVal (APIENTRY* FUNC_fGetUniformLocation)(gzVal _nIdProgram, gzUInt8* _cName);
extern FUNC_fGetUniformLocation glCall_fGetUniformLocation;
gzVal  glDbg_fGetUniformLocation(gzVal _nIdProgram, gzUInt8* _cName, const char* _cFile , gzUInt _nLine);

#define GL_fGetAttribLocation(_nIdProgram, _cName) glDbg_fGetAttribLocation(_nIdProgram, _cName, __FILE__, __LINE__)
typedef gzVal (APIENTRY* FUNC_fGetAttribLocation)(gzVal _nIdProgram, gzUInt8* _cName);
extern FUNC_fGetAttribLocation glCall_fGetAttribLocation;
gzVal  glDbg_fGetAttribLocation(gzVal _nIdProgram, gzUInt8* _cName, const char* _cFile , gzUInt _nLine);

#define GL_fBindAttribLocation(_nIdProgram, _nIndex, _cName) glDbg_fBindAttribLocation(_nIdProgram, _nIndex, _cName, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindAttribLocation)(gzVal _nIdProgram, gzUInt _nIndex, gzUInt8* _cName);
extern FUNC_fBindAttribLocation glCall_fBindAttribLocation;
void  glDbg_fBindAttribLocation(gzVal _nIdProgram, gzUInt _nIndex, gzUInt8* _cName, const char* _cFile , gzUInt _nLine);

#define GL_fCreateShader(_hType) glDbg_fCreateShader(_hType, __FILE__, __LINE__)
typedef gzVal (APIENTRY* FUNC_fCreateShader)(Lib_GZ_OpenGL::OpenGL::eShader _hType);
extern FUNC_fCreateShader glCall_fCreateShader;
gzVal  glDbg_fCreateShader(Lib_GZ_OpenGL::OpenGL::eShader _hType, const char* _cFile , gzUInt _nLine);

#define GL_fShaderSource(_nShaderId, _nCount, _cSourceCode, _pLength) glDbg_fShaderSource(_nShaderId, _nCount, _cSourceCode, _pLength, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fShaderSource)(gzVal _nShaderId, gzInt _nCount, gzUInt8** _cSourceCode, gzInt* _pLength);
extern FUNC_fShaderSource glCall_fShaderSource;
void  glDbg_fShaderSource(gzVal _nShaderId, gzInt _nCount, gzUInt8** _cSourceCode, gzInt* _pLength, const char* _cFile , gzUInt _nLine);

#define GL_fCompileShader(_nShaderId) glDbg_fCompileShader(_nShaderId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fCompileShader)(gzVal _nShaderId);
extern FUNC_fCompileShader glCall_fCompileShader;
void  glDbg_fCompileShader(gzVal _nShaderId, const char* _cFile , gzUInt _nLine);

#define GL_fGetShaderiv(_nShaderId, _hInfo, _aParams) glDbg_fGetShaderiv(_nShaderId, _hInfo, _aParams, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGetShaderiv)(gzVal _nShaderId, Lib_GZ_OpenGL::OpenGL::eShaderInfo _hInfo, gzInt* _aParams);
extern FUNC_fGetShaderiv glCall_fGetShaderiv;
void  glDbg_fGetShaderiv(gzVal _nShaderId, Lib_GZ_OpenGL::OpenGL::eShaderInfo _hInfo, gzInt* _aParams, const char* _cFile , gzUInt _nLine);

#define GL_fDeleteShader(_nShaderId) glDbg_fDeleteShader(_nShaderId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDeleteShader)(gzVal _nShaderId);
extern FUNC_fDeleteShader glCall_fDeleteShader;
void  glDbg_fDeleteShader(gzVal _nShaderId, const char* _cFile , gzUInt _nLine);

#define GL_fAttachShader(_nIdProgram, _nShaderId) glDbg_fAttachShader(_nIdProgram, _nShaderId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fAttachShader)(gzVal _nIdProgram, gzVal _nShaderId);
extern FUNC_fAttachShader glCall_fAttachShader;
void  glDbg_fAttachShader(gzVal _nIdProgram, gzVal _nShaderId, const char* _cFile , gzUInt _nLine);

#define GL_fActiveTexture(_eTexture) glDbg_fActiveTexture(_eTexture, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fActiveTexture)(gzUInt _eTexture);
extern FUNC_fActiveTexture glCall_fActiveTexture;
void  glDbg_fActiveTexture(gzUInt _eTexture, const char* _cFile , gzUInt _nLine);

#define GL_fTexImage2D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nBorder, _eFormat, _eType, _pPixel) glDbg_fTexImage2D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nBorder, _eFormat, _eType, _pPixel, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fTexImage2D)(gzUInt _eTarget, gzInt _nLevel, gzInt _nInternalformat, gzInt _nWidth, gzInt _nHeight, gzInt _nBorder, gzUInt _eFormat, gzUInt _eType, void* _pPixel);
extern FUNC_fTexImage2D glCall_fTexImage2D;
void  glDbg_fTexImage2D(gzUInt _eTarget, gzInt _nLevel, gzInt _nInternalformat, gzInt _nWidth, gzInt _nHeight, gzInt _nBorder, gzUInt _eFormat, gzUInt _eType, void* _pPixel, const char* _cFile , gzUInt _nLine);

#define GL_fTexImage3D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nDepth, _nBorder, _eFormat, _eType, _pPixel) glDbg_fTexImage3D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nDepth, _nBorder, _eFormat, _eType, _pPixel, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fTexImage3D)(gzUInt _eTarget, gzInt _nLevel, gzInt _nInternalformat, gzInt _nWidth, gzInt _nHeight, gzInt _nDepth, gzInt _nBorder, gzUInt _eFormat, gzUInt _eType, void* _pPixel);
extern FUNC_fTexImage3D glCall_fTexImage3D;
void  glDbg_fTexImage3D(gzUInt _eTarget, gzInt _nLevel, gzInt _nInternalformat, gzInt _nWidth, gzInt _nHeight, gzInt _nDepth, gzInt _nBorder, gzUInt _eFormat, gzUInt _eType, void* _pPixel, const char* _cFile , gzUInt _nLine);

#define GL_fTexSubImage3D(_eTarget, _nLevel, _nOffsetX, _nOffsetY, _nOffsetZ, _nWidth, _nHeight, _nDepth, _eFormat, _eType, _pPixel) glDbg_fTexSubImage3D(_eTarget, _nLevel, _nOffsetX, _nOffsetY, _nOffsetZ, _nWidth, _nHeight, _nDepth, _eFormat, _eType, _pPixel, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fTexSubImage3D)(gzUInt _eTarget, gzInt _nLevel, gzInt _nOffsetX, gzInt _nOffsetY, gzInt _nOffsetZ, gzInt _nWidth, gzInt _nHeight, gzInt _nDepth, gzUInt _eFormat, gzUInt _eType, void* _pPixel);
extern FUNC_fTexSubImage3D glCall_fTexSubImage3D;
void  glDbg_fTexSubImage3D(gzUInt _eTarget, gzInt _nLevel, gzInt _nOffsetX, gzInt _nOffsetY, gzInt _nOffsetZ, gzInt _nWidth, gzInt _nHeight, gzInt _nDepth, gzUInt _eFormat, gzUInt _eType, void* _pPixel, const char* _cFile , gzUInt _nLine);

#define GL_fBindTexture(_eTarget, _nTextureId) glDbg_fBindTexture(_eTarget, _nTextureId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindTexture)(gzUInt _eTarget, gzUInt _nTextureId);
extern FUNC_fBindTexture glCall_fBindTexture;
void  glDbg_fBindTexture(gzUInt _eTarget, gzUInt _nTextureId, const char* _cFile , gzUInt _nLine);

#define GL_fTexParameterf(_eTarget, _eName, _nParam) glDbg_fTexParameterf(_eTarget, _eName, _nParam, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fTexParameterf)(gzUInt _eTarget, gzUInt _eName, gzFloat32 _nParam);
extern FUNC_fTexParameterf glCall_fTexParameterf;
void  glDbg_fTexParameterf(gzUInt _eTarget, gzUInt _eName, gzFloat32 _nParam, const char* _cFile , gzUInt _nLine);

#define GL_fTexParameteri(_eTarget, _eName, _nParam) glDbg_fTexParameteri(_eTarget, _eName, _nParam, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fTexParameteri)(gzUInt _eTarget, gzUInt _eName, gzInt _nParam);
extern FUNC_fTexParameteri glCall_fTexParameteri;
void  glDbg_fTexParameteri(gzUInt _eTarget, gzUInt _eName, gzInt _nParam, const char* _cFile , gzUInt _nLine);

#define GL_fGenTextures(_nNb, _aTextures) glDbg_fGenTextures(_nNb, _aTextures, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGenTextures)(gzInt _nNb, gzUInt* _aTextures);
extern FUNC_fGenTextures glCall_fGenTextures;
void  glDbg_fGenTextures(gzInt _nNb, gzUInt* _aTextures, const char* _cFile , gzUInt _nLine);

#define GL_fClear(_hMask) glDbg_fClear(_hMask, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fClear)(Lib_GZ_OpenGL::OpenGL::eClearBuffer _hMask);
extern FUNC_fClear glCall_fClear;
void  glDbg_fClear(Lib_GZ_OpenGL::OpenGL::eClearBuffer _hMask, const char* _cFile , gzUInt _nLine);

#define GL_fClearColor(_nRed, _nGreen, _nBlue, _nAlpha) glDbg_fClearColor(_nRed, _nGreen, _nBlue, _nAlpha, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fClearColor)(gzFloat32 _nRed, gzFloat32 _nGreen, gzFloat32 _nBlue, gzFloat32 _nAlpha);
extern FUNC_fClearColor glCall_fClearColor;
void  glDbg_fClearColor(gzFloat32 _nRed, gzFloat32 _nGreen, gzFloat32 _nBlue, gzFloat32 _nAlpha, const char* _cFile , gzUInt _nLine);

#define GL_fBufferData(_hTarget, _nSize, _pData, _hUsage) glDbg_fBufferData(_hTarget, _nSize, _pData, _hUsage, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBufferData)(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzIntX _nSize, void* _pData, Lib_GZ_OpenGL::OpenGL::eDrawFlow _hUsage);
extern FUNC_fBufferData glCall_fBufferData;
void  glDbg_fBufferData(Lib_GZ_OpenGL::OpenGL::eBufferTarget _hTarget, gzIntX _nSize, void* _pData, Lib_GZ_OpenGL::OpenGL::eDrawFlow _hUsage, const char* _cFile , gzUInt _nLine);

#define GL_fDrawElements(_hMode, _nCount, _hVarType, _pOffset) glDbg_fDrawElements(_hMode, _nCount, _hVarType, _pOffset, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDrawElements)(Lib_GZ_OpenGL::OpenGL::eDrawMode _hMode, gzInt _nCount, Lib_GZ_OpenGL::OpenGL::eVarType _hVarType, void* _pOffset);
extern FUNC_fDrawElements glCall_fDrawElements;
void  glDbg_fDrawElements(Lib_GZ_OpenGL::OpenGL::eDrawMode _hMode, gzInt _nCount, Lib_GZ_OpenGL::OpenGL::eVarType _hVarType, void* _pOffset, const char* _cFile , gzUInt _nLine);

#define GL_fDrawElementsInstanced(_hMode, _nCount, _hVarType, _pIndicesLocation, _nInstanceCount) glDbg_fDrawElementsInstanced(_hMode, _nCount, _hVarType, _pIndicesLocation, _nInstanceCount, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDrawElementsInstanced)(Lib_GZ_OpenGL::OpenGL::eDrawMode _hMode, gzInt _nCount, Lib_GZ_OpenGL::OpenGL::eVarType _hVarType, void* _pIndicesLocation, gzInt _nInstanceCount);
extern FUNC_fDrawElementsInstanced glCall_fDrawElementsInstanced;
void  glDbg_fDrawElementsInstanced(Lib_GZ_OpenGL::OpenGL::eDrawMode _hMode, gzInt _nCount, Lib_GZ_OpenGL::OpenGL::eVarType _hVarType, void* _pIndicesLocation, gzInt _nInstanceCount, const char* _cFile , gzUInt _nLine);

#define GL_fGenFramebuffers(_nNb, _aFrameBuffers) glDbg_fGenFramebuffers(_nNb, _aFrameBuffers, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGenFramebuffers)(gzInt _nNb, gzUInt* _aFrameBuffers);
extern FUNC_fGenFramebuffers glCall_fGenFramebuffers;
void  glDbg_fGenFramebuffers(gzInt _nNb, gzUInt* _aFrameBuffers, const char* _cFile , gzUInt _nLine);

#define GL_fBindFramebuffer(_eTarget, _nFrameBufferId) glDbg_fBindFramebuffer(_eTarget, _nFrameBufferId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindFramebuffer)(gzUInt _eTarget, gzUInt _nFrameBufferId);
extern FUNC_fBindFramebuffer glCall_fBindFramebuffer;
void  glDbg_fBindFramebuffer(gzUInt _eTarget, gzUInt _nFrameBufferId, const char* _cFile , gzUInt _nLine);

#define GL_fGenRenderbuffers(_nNb, _aRenderBuffers) glDbg_fGenRenderbuffers(_nNb, _aRenderBuffers, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fGenRenderbuffers)(gzInt _nNb, gzUInt* _aRenderBuffers);
extern FUNC_fGenRenderbuffers glCall_fGenRenderbuffers;
void  glDbg_fGenRenderbuffers(gzInt _nNb, gzUInt* _aRenderBuffers, const char* _cFile , gzUInt _nLine);

#define GL_fBindRenderbuffer(_eTarget, _nRenderBufferId) glDbg_fBindRenderbuffer(_eTarget, _nRenderBufferId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindRenderbuffer)(gzUInt _eTarget, gzUInt _nRenderBufferId);
extern FUNC_fBindRenderbuffer glCall_fBindRenderbuffer;
void  glDbg_fBindRenderbuffer(gzUInt _eTarget, gzUInt _nRenderBufferId, const char* _cFile , gzUInt _nLine);

#define GL_fRenderbufferStorage(_eTarget, _eInternalFormat, _nWidth, _nHeight) glDbg_fRenderbufferStorage(_eTarget, _eInternalFormat, _nWidth, _nHeight, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fRenderbufferStorage)(gzUInt _eTarget, gzUInt _eInternalFormat, gzInt _nWidth, gzInt _nHeight);
extern FUNC_fRenderbufferStorage glCall_fRenderbufferStorage;
void  glDbg_fRenderbufferStorage(gzUInt _eTarget, gzUInt _eInternalFormat, gzInt _nWidth, gzInt _nHeight, const char* _cFile , gzUInt _nLine);

#define GL_fFramebufferTexture2D(_eTarget, _eAttachement, _eTextureTarget, _nTexture, _nLevel) glDbg_fFramebufferTexture2D(_eTarget, _eAttachement, _eTextureTarget, _nTexture, _nLevel, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fFramebufferTexture2D)(gzUInt _eTarget, gzUInt _eAttachement, gzUInt _eTextureTarget, gzUInt _nTexture, gzInt _nLevel);
extern FUNC_fFramebufferTexture2D glCall_fFramebufferTexture2D;
void  glDbg_fFramebufferTexture2D(gzUInt _eTarget, gzUInt _eAttachement, gzUInt _eTextureTarget, gzUInt _nTexture, gzInt _nLevel, const char* _cFile , gzUInt _nLine);

#define GL_fFramebufferRenderbuffer(_eTarget, _eAttachement, _eRenderBufferTarget, _nRenderBufferId) glDbg_fFramebufferRenderbuffer(_eTarget, _eAttachement, _eRenderBufferTarget, _nRenderBufferId, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fFramebufferRenderbuffer)(gzUInt _eTarget, gzUInt _eAttachement, gzUInt _eRenderBufferTarget, gzUInt _nRenderBufferId);
extern FUNC_fFramebufferRenderbuffer glCall_fFramebufferRenderbuffer;
void  glDbg_fFramebufferRenderbuffer(gzUInt _eTarget, gzUInt _eAttachement, gzUInt _eRenderBufferTarget, gzUInt _nRenderBufferId, const char* _cFile , gzUInt _nLine);

#define GL_fCheckFramebufferStatus(_eTarget) glDbg_fCheckFramebufferStatus(_eTarget, __FILE__, __LINE__)
typedef gzUInt (APIENTRY* FUNC_fCheckFramebufferStatus)(gzUInt _eTarget);
extern FUNC_fCheckFramebufferStatus glCall_fCheckFramebufferStatus;
gzUInt  glDbg_fCheckFramebufferStatus(gzUInt _eTarget, const char* _cFile , gzUInt _nLine);

#define GL_fDeleteBuffers(_nNb, _aBuffers) glDbg_fDeleteBuffers(_nNb, _aBuffers, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fDeleteBuffers)(gzInt _nNb, gzUInt* _aBuffers);
extern FUNC_fDeleteBuffers glCall_fDeleteBuffers;
void  glDbg_fDeleteBuffers(gzInt _nNb, gzUInt* _aBuffers, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1f(_nLocation, _n0) glDbg_fUniform1f(_nLocation, _n0, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1f)(gzVal _nLocation, gzFloat32 _n0);
extern FUNC_fUniform1f glCall_fUniform1f;
void  glDbg_fUniform1f(gzVal _nLocation, gzFloat32 _n0, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2f(_nLocation, _n0, _n1) glDbg_fUniform2f(_nLocation, _n0, _n1, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2f)(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1);
extern FUNC_fUniform2f glCall_fUniform2f;
void  glDbg_fUniform2f(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3f(_nLocation, _n0, _n1, _n2) glDbg_fUniform3f(_nLocation, _n0, _n1, _n2, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3f)(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, gzFloat32 _n2);
extern FUNC_fUniform3f glCall_fUniform3f;
void  glDbg_fUniform3f(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, gzFloat32 _n2, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4f(_nLocation, _n0, _n1, _n2, _n3) glDbg_fUniform4f(_nLocation, _n0, _n1, _n2, _n3, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4f)(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, gzFloat32 _n2, gzFloat32 _n3);
extern FUNC_fUniform4f glCall_fUniform4f;
void  glDbg_fUniform4f(gzVal _nLocation, gzFloat32 _n0, gzFloat32 _n1, gzFloat32 _n2, gzFloat32 _n3, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1i(_nLocation, _n0) glDbg_fUniform1i(_nLocation, _n0, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1i)(gzVal _nLocation, gzInt32 _n0);
extern FUNC_fUniform1i glCall_fUniform1i;
void  glDbg_fUniform1i(gzVal _nLocation, gzInt32 _n0, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2i(_nLocation, _n0, _n1) glDbg_fUniform2i(_nLocation, _n0, _n1, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2i)(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1);
extern FUNC_fUniform2i glCall_fUniform2i;
void  glDbg_fUniform2i(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3i(_nLocation, _n0, _n1, _n2) glDbg_fUniform3i(_nLocation, _n0, _n1, _n2, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3i)(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, gzInt32 _n2);
extern FUNC_fUniform3i glCall_fUniform3i;
void  glDbg_fUniform3i(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, gzInt32 _n2, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4i(_nLocation, _n0, _n1, _n2, _n3) glDbg_fUniform4i(_nLocation, _n0, _n1, _n2, _n3, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4i)(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, gzInt32 _n2, gzInt32 _n3);
extern FUNC_fUniform4i glCall_fUniform4i;
void  glDbg_fUniform4i(gzVal _nLocation, gzInt32 _n0, gzInt32 _n1, gzInt32 _n2, gzInt32 _n3, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1fv(_nLocation, _nCount, _aValue) glDbg_fUniform1fv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1fv)(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
extern FUNC_fUniform1fv glCall_fUniform1fv;
void  glDbg_fUniform1fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2fv(_nLocation, _nCount, _aValue) glDbg_fUniform2fv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2fv)(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
extern FUNC_fUniform2fv glCall_fUniform2fv;
void  glDbg_fUniform2fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3fv(_nLocation, _nCount, _aValue) glDbg_fUniform3fv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3fv)(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
extern FUNC_fUniform3fv glCall_fUniform3fv;
void  glDbg_fUniform3fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4fv(_nLocation, _nCount, _aValue) glDbg_fUniform4fv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4fv)(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue);
extern FUNC_fUniform4fv glCall_fUniform4fv;
void  glDbg_fUniform4fv(gzVal _nLocation, gzInt _nCount, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1iv(_nLocation, _nCount, _aValue) glDbg_fUniform1iv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1iv)(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
extern FUNC_fUniform1iv glCall_fUniform1iv;
void  glDbg_fUniform1iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2iv(_nLocation, _nCount, _aValue) glDbg_fUniform2iv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2iv)(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
extern FUNC_fUniform2iv glCall_fUniform2iv;
void  glDbg_fUniform2iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3iv(_nLocation, _nCount, _aValue) glDbg_fUniform3iv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3iv)(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
extern FUNC_fUniform3iv glCall_fUniform3iv;
void  glDbg_fUniform3iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4iv(_nLocation, _nCount, _aValue) glDbg_fUniform4iv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4iv)(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue);
extern FUNC_fUniform4iv glCall_fUniform4iv;
void  glDbg_fUniform4iv(gzVal _nLocation, gzInt _nCount, gzInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix2fv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix2fv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix2fv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue);
extern FUNC_fUniformMatrix2fv glCall_fUniformMatrix2fv;
void  glDbg_fUniformMatrix2fv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix3fv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix3fv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix3fv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue);
extern FUNC_fUniformMatrix3fv glCall_fUniformMatrix3fv;
void  glDbg_fUniformMatrix3fv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix4fv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix4fv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix4fv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue);
extern FUNC_fUniformMatrix4fv glCall_fUniformMatrix4fv;
void  glDbg_fUniformMatrix4fv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1d(_nLocation, _nX) glDbg_fUniform1d(_nLocation, _nX, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1d)(gzVal _nLocation, gzFloat64 _nX);
extern FUNC_fUniform1d glCall_fUniform1d;
void  glDbg_fUniform1d(gzVal _nLocation, gzFloat64 _nX, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2d(_nLocation, _nX, _nY) glDbg_fUniform2d(_nLocation, _nX, _nY, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2d)(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY);
extern FUNC_fUniform2d glCall_fUniform2d;
void  glDbg_fUniform2d(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3d(_nLocation, _nX, _nY, _nZ) glDbg_fUniform3d(_nLocation, _nX, _nY, _nZ, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3d)(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, gzFloat64 _nZ);
extern FUNC_fUniform3d glCall_fUniform3d;
void  glDbg_fUniform3d(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, gzFloat64 _nZ, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4d(_nLocation, _nX, _nY, _nZ, _nW) glDbg_fUniform4d(_nLocation, _nX, _nY, _nZ, _nW, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4d)(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, gzFloat64 _nZ, gzFloat64 _nW);
extern FUNC_fUniform4d glCall_fUniform4d;
void  glDbg_fUniform4d(gzVal _nLocation, gzFloat64 _nX, gzFloat64 _nY, gzFloat64 _nZ, gzFloat64 _nW, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1dv(_nLocation, _nCount, _aValue) glDbg_fUniform1dv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1dv)(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
extern FUNC_fUniform1dv glCall_fUniform1dv;
void  glDbg_fUniform1dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2dv(_nLocation, _nCount, _aValue) glDbg_fUniform2dv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2dv)(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
extern FUNC_fUniform2dv glCall_fUniform2dv;
void  glDbg_fUniform2dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3dv(_nLocation, _nCount, _aValue) glDbg_fUniform3dv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3dv)(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
extern FUNC_fUniform3dv glCall_fUniform3dv;
void  glDbg_fUniform3dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4dv(_nLocation, _nCount, _aValue) glDbg_fUniform4dv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4dv)(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue);
extern FUNC_fUniform4dv glCall_fUniform4dv;
void  glDbg_fUniform4dv(gzVal _nLocation, gzInt _nCount, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix2dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix2dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix2dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix2dv glCall_fUniformMatrix2dv;
void  glDbg_fUniformMatrix2dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix3dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix3dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix3dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix3dv glCall_fUniformMatrix3dv;
void  glDbg_fUniformMatrix3dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix4dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix4dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix4dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix4dv glCall_fUniformMatrix4dv;
void  glDbg_fUniformMatrix4dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix2x3dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix2x3dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix2x3dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix2x3dv glCall_fUniformMatrix2x3dv;
void  glDbg_fUniformMatrix2x3dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix2x4dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix2x4dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix2x4dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix2x4dv glCall_fUniformMatrix2x4dv;
void  glDbg_fUniformMatrix2x4dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix3x2dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix3x2dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix3x2dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix3x2dv glCall_fUniformMatrix3x2dv;
void  glDbg_fUniformMatrix3x2dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix3x4dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix3x4dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix3x4dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix3x4dv glCall_fUniformMatrix3x4dv;
void  glDbg_fUniformMatrix3x4dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix4x2dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix4x2dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix4x2dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix4x2dv glCall_fUniformMatrix4x2dv;
void  glDbg_fUniformMatrix4x2dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniformMatrix4x3dv(_nLocation, _nCount, _bTranspose, _aValue) glDbg_fUniformMatrix4x3dv(_nLocation, _nCount, _bTranspose, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformMatrix4x3dv)(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue);
extern FUNC_fUniformMatrix4x3dv glCall_fUniformMatrix4x3dv;
void  glDbg_fUniformMatrix4x3dv(gzVal _nLocation, gzInt _nCount, gzBool _bTranspose, gzFloat64* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1ui(_nLocation, _n0) glDbg_fUniform1ui(_nLocation, _n0, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1ui)(gzVal _nLocation, gzUInt32 _n0);
extern FUNC_fUniform1ui glCall_fUniform1ui;
void  glDbg_fUniform1ui(gzVal _nLocation, gzUInt32 _n0, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2ui(_nLocation, _n0, _n1) glDbg_fUniform2ui(_nLocation, _n0, _n1, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2ui)(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1);
extern FUNC_fUniform2ui glCall_fUniform2ui;
void  glDbg_fUniform2ui(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3ui(_nLocation, _n0, _n1, _n2) glDbg_fUniform3ui(_nLocation, _n0, _n1, _n2, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3ui)(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, gzUInt32 _n2);
extern FUNC_fUniform3ui glCall_fUniform3ui;
void  glDbg_fUniform3ui(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, gzUInt32 _n2, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4ui(_nLocation, _n0, _n1, _n2, _n3) glDbg_fUniform4ui(_nLocation, _n0, _n1, _n2, _n3, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4ui)(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, gzUInt32 _n2, gzUInt32 _n3);
extern FUNC_fUniform4ui glCall_fUniform4ui;
void  glDbg_fUniform4ui(gzVal _nLocation, gzUInt32 _n0, gzUInt32 _n1, gzUInt32 _n2, gzUInt32 _n3, const char* _cFile , gzUInt _nLine);

#define GL_fUniform1uiv(_nLocation, _nCount, _aValue) glDbg_fUniform1uiv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform1uiv)(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
extern FUNC_fUniform1uiv glCall_fUniform1uiv;
void  glDbg_fUniform1uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform2uiv(_nLocation, _nCount, _aValue) glDbg_fUniform2uiv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform2uiv)(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
extern FUNC_fUniform2uiv glCall_fUniform2uiv;
void  glDbg_fUniform2uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform3uiv(_nLocation, _nCount, _aValue) glDbg_fUniform3uiv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform3uiv)(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
extern FUNC_fUniform3uiv glCall_fUniform3uiv;
void  glDbg_fUniform3uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fUniform4uiv(_nLocation, _nCount, _aValue) glDbg_fUniform4uiv(_nLocation, _nCount, _aValue, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniform4uiv)(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue);
extern FUNC_fUniform4uiv glCall_fUniform4uiv;
void  glDbg_fUniform4uiv(gzVal _nLocation, gzInt _nCount, gzUInt32* _aValue, const char* _cFile , gzUInt _nLine);

#define GL_fGetUniformBlockIndex(_nPorgramId, _cUboName) glDbg_fGetUniformBlockIndex(_nPorgramId, _cUboName, __FILE__, __LINE__)
typedef gzUInt (APIENTRY* FUNC_fGetUniformBlockIndex)(gzUInt _nPorgramId, gzUInt8* _cUboName);
extern FUNC_fGetUniformBlockIndex glCall_fGetUniformBlockIndex;
gzUInt  glDbg_fGetUniformBlockIndex(gzUInt _nPorgramId, gzUInt8* _cUboName, const char* _cFile , gzUInt _nLine);

#define GL_fBindBufferBase(_eTarget, _nIndex, _nBuffer) glDbg_fBindBufferBase(_eTarget, _nIndex, _nBuffer, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fBindBufferBase)(gzUInt _eTarget, gzUInt _nIndex, gzUInt _nBuffer);
extern FUNC_fBindBufferBase glCall_fBindBufferBase;
void  glDbg_fBindBufferBase(gzUInt _eTarget, gzUInt _nIndex, gzUInt _nBuffer, const char* _cFile , gzUInt _nLine);

#define GL_fUniformBlockBinding(_nPorgramId, _nUniformBlickId, _nBindPoint) glDbg_fUniformBlockBinding(_nPorgramId, _nUniformBlickId, _nBindPoint, __FILE__, __LINE__)
typedef void (APIENTRY* FUNC_fUniformBlockBinding)(gzUInt _nPorgramId, gzUInt _nUniformBlickId, gzUInt _nBindPoint);
extern FUNC_fUniformBlockBinding glCall_fUniformBlockBinding;
void  glDbg_fUniformBlockBinding(gzUInt _nPorgramId, gzUInt _nUniformBlickId, gzUInt _nBindPoint, const char* _cFile , gzUInt _nLine);


#endif
#ifdef GZ_tWeb_Emsc
#define GL_fFlush() oGL.call<void>("flush")
#define GL_fEnable(_eCapability) oGL.call<void>("enable", val(_eCapability))
#define GL_fDisable(_eCapability) oGL.call<void>("disable", val(_eCapability))
#define GL_fDepthMask(_bEnable) oGL.call<void>("depthMask", val(_bEnable))
#define GL_fDepthFunc(_eFunc) oGL.call<void>("depthFunc", val(_eFunc))
#define GL_fGetBooleanv(_hName, _pData) oGL.call<void>("getBooleanv", val(gzInt(_hName)), val(_pData))
#define GL_fGetDoublev(_hName, _pData) oGL.call<void>("getDoublev", val(gzInt(_hName)), val(_pData))
#define GL_fGetFloatv(_hName, _pData) oGL.call<void>("getFloatv", val(gzInt(_hName)), val(_pData))
#define GL_fGetIntegerv(_hName, _pData) oGL.call<void>("getIntegerv", val(gzInt(_hName)), val(_pData))
#define GL_fGetInteger64v(_hName, _pData) oGL.call<void>("getInteger64v", val(gzInt(_hName)), val(_pData))
#define GL_fGetBooleani_v(_hTarget, _nIndex, _pData) oGL.call<void>("getBooleani_v", val(_hTarget), val(_nIndex), val(_pData))
#define GL_fGetIntegeri_v(_hTarget, _nIndex, _pData) oGL.call<void>("getIntegeri_v", val(_hTarget), val(_nIndex), val(_pData))
#define GL_fGetFloati_v(_hTarget, _nIndex, _pData) oGL.call<void>("getFloati_v", val(_hTarget), val(_nIndex), val(_pData))
#define GL_fGetDoublei_v(_hTarget, _nIndex, _pData) oGL.call<void>("getDoublei_v", val(_hTarget), val(_nIndex), val(_pData))
#define GL_fGetInteger64i_v(_hTarget, _nIndex, _pData) oGL.call<void>("getInteger64i_v", val(_hTarget), val(_nIndex), val(_pData))
#define GL_fVertexAttribPointer(_nIndex, _hLength, _hType, _bNormalized, _nStride, _nPointer) oGL.call<void>("vertexAttribPointer", val(_nIndex), val(gzInt(_hLength)), val(gzInt(_hType)), val(_bNormalized), val(_nStride), val(_nPointer))
#define GL_fVertexAttribDivisor(_nIndex, _nDivisor) oGL.call<void>("vertexAttribDivisor", val(_nIndex), val(_nDivisor))
#define GL_fEnableVertexAttribArray(_nIndex) oGL.call<void>("enableVertexAttribArray", val(_nIndex))
#define GL_fDisableVertexAttribArray(_nIndex) oGL.call<void>("disableVertexAttribArray", val(_nIndex))
#define GL_fSwapIntervalEXT(_nInterval) oGL.call<bool>("swapIntervalEXT", val(_nInterval))
#define GL_fBlendEquation(_eMode) oGL.call<void>("blendEquation", val(_eMode))
#define GL_fBlendFuncSeparate(_eSFactorRGB, _eDFactorRGB, _eSFactorAlpha, _eDFactorAlpha) oGL.call<void>("blendFuncSeparate", val(_eSFactorRGB), val(_eDFactorRGB), val(_eSFactorAlpha), val(_eDFactorAlpha))
#define GL_fBlendFunc(_eSrcFactor, _eDstFactor) oGL.call<void>("blendFunc", val(_eSrcFactor), val(_eDstFactor))
#define GL_fGenVertexArrays(_nNb, _aArrays) oGL.call<void>("genVertexArrays", val(_nNb), val(_aArrays))
#define GL_fGenBuffers(_nNb, _aBuffers) oGL.call<void>("genBuffers", val(_nNb), val(_aBuffers))
#define GL_fBindVertexArray(_nVAO) oGL.call<void>("bindVertexArray", val(_nVAO))
#define GL_fBindBuffer(_hTarget, _nBuffer) oGL.call<void>("bindBuffer", val(gzInt(_hTarget)), val(_nBuffer))
#define GL_fBufferSubData(_hTarget, _nOffset, _nSize, _pData) oGL.call<void>("bufferSubData", val(gzInt(_hTarget)), val(_nOffset), val(_nSize), val(_pData))
#define GL_fGetShaderInfoLog(_nShaderId, _nMaxLength, _aLength, _cLogInfo) oGL.call<void>("getShaderInfoLog", val(_nShaderId), val(_nMaxLength), val(_aLength), val(_cLogInfo))
#define GL_fCreateProgram() oGL.call<val>("createProgram")
#define GL_fLinkProgram(_nIdProgram) oGL.call<void>("linkProgram", val(_nIdProgram))
#define GL_fGetProgramiv(_nIdProgram, _hInfo, _aParams) oGL.call<void>("getProgramiv", val(_nIdProgram), val(gzInt(_hInfo)), val(_aParams))
#define GL_fUseProgram(_nIdProgram) oGL.call<void>("useProgram", val(_nIdProgram))
#define GL_fDeleteProgram(_nIdProgram) oGL.call<void>("deleteProgram", val(_nIdProgram))
#define GL_fGetProgramInfoLog(_nProgramId, _nMaxLength, _aLength, _cLogInfo) oGL.call<void>("getProgramInfoLog", val(_nProgramId), val(_nMaxLength), val(_aLength), val(_cLogInfo))
#define GL_fGetUniformLocation(_nIdProgram, _cName) oGL.call<val>("getUniformLocation", val(_nIdProgram), val(_cName))
#define GL_fGetAttribLocation(_nIdProgram, _cName) oGL.call<val>("getAttribLocation", val(_nIdProgram), val(_cName))
#define GL_fBindAttribLocation(_nIdProgram, _nIndex, _cName) oGL.call<void>("bindAttribLocation", val(_nIdProgram), val(_nIndex), val(_cName))
#define GL_fCreateShader(_hType) oGL.call<val>("createShader", val(gzInt(_hType)))
#define GL_fShaderSource(_nShaderId, _nCount, _cSourceCode, _pLength) oGL.call<void>("shaderSource", val(_nShaderId), val(_nCount), val(_cSourceCode), _pLength)
#define GL_fCompileShader(_nShaderId) oGL.call<void>("compileShader", val(_nShaderId))
#define GL_fGetShaderiv(_nShaderId, _hInfo, _aParams) oGL.call<void>("getShaderiv", val(_nShaderId), val(gzInt(_hInfo)), val(_aParams))
#define GL_fDeleteShader(_nShaderId) oGL.call<void>("deleteShader", val(_nShaderId))
#define GL_fAttachShader(_nIdProgram, _nShaderId) oGL.call<void>("attachShader", val(_nIdProgram), val(_nShaderId))
#define GL_fActiveTexture(_eTexture) oGL.call<void>("activeTexture", val(_eTexture))
#define GL_fTexImage2D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nBorder, _eFormat, _eType, _pPixel) oGL.call<void>("texImage2D", val(_eTarget), val(_nLevel), val(_nInternalformat), val(_nWidth), val(_nHeight), val(_nBorder), val(_eFormat), val(_eType), val(_pPixel))
#define GL_fTexImage3D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nDepth, _nBorder, _eFormat, _eType, _pPixel) oGL.call<void>("texImage3D", val(_eTarget), val(_nLevel), val(_nInternalformat), val(_nWidth), val(_nHeight), val(_nDepth), val(_nBorder), val(_eFormat), val(_eType), val(_pPixel))
#define GL_fTexSubImage3D(_eTarget, _nLevel, _nOffsetX, _nOffsetY, _nOffsetZ, _nWidth, _nHeight, _nDepth, _eFormat, _eType, _pPixel) oGL.call<void>("texSubImage3D", val(_eTarget), val(_nLevel), val(_nOffsetX), val(_nOffsetY), val(_nOffsetZ), val(_nWidth), val(_nHeight), val(_nDepth), val(_eFormat), val(_eType), val(_pPixel))
#define GL_fBindTexture(_eTarget, _nTextureId) oGL.call<void>("bindTexture", val(_eTarget), val(_nTextureId))
#define GL_fTexParameterf(_eTarget, _eName, _nParam) oGL.call<void>("texParameterf", val(_eTarget), val(_eName), val(_nParam))
#define GL_fTexParameteri(_eTarget, _eName, _nParam) oGL.call<void>("texParameteri", val(_eTarget), val(_eName), val(_nParam))
#define GL_fGenTextures(_nNb, _aTextures) oGL.call<void>("genTextures", val(_nNb), val(_aTextures))
#define GL_fClear(_hMask) oGL.call<void>("clear", val(gzInt(_hMask)))
#define GL_fClearColor(_nRed, _nGreen, _nBlue, _nAlpha) oGL.call<void>("clearColor", val(_nRed), val(_nGreen), val(_nBlue), val(_nAlpha))
#define GL_fBufferData(_hTarget, _nSize, _pData, _hUsage) oGL.call<void>("bufferData", val(gzInt(_hTarget)), val(_nSize), val(_pData), val(gzInt(_hUsage)))
#define GL_fDrawElements(_hMode, _nCount, _hVarType, _pOffset) oGL.call<void>("drawElements", val(gzInt(_hMode)), val(_nCount), val(gzInt(_hVarType)), val(_pOffset))
#define GL_fDrawElementsInstanced(_hMode, _nCount, _hVarType, _pIndicesLocation, _nInstanceCount) oGL.call<void>("drawElementsInstanced", val(gzInt(_hMode)), val(_nCount), val(gzInt(_hVarType)), val(_pIndicesLocation), val(_nInstanceCount))
#define GL_fGenFramebuffers(_nNb, _aFrameBuffers) oGL.call<void>("genFramebuffers", val(_nNb), val(_aFrameBuffers))
#define GL_fBindFramebuffer(_eTarget, _nFrameBufferId) oGL.call<void>("bindFramebuffer", val(_eTarget), val(_nFrameBufferId))
#define GL_fGenRenderbuffers(_nNb, _aRenderBuffers) oGL.call<void>("genRenderbuffers", val(_nNb), val(_aRenderBuffers))
#define GL_fBindRenderbuffer(_eTarget, _nRenderBufferId) oGL.call<void>("bindRenderbuffer", val(_eTarget), val(_nRenderBufferId))
#define GL_fRenderbufferStorage(_eTarget, _eInternalFormat, _nWidth, _nHeight) oGL.call<void>("renderbufferStorage", val(_eTarget), val(_eInternalFormat), val(_nWidth), val(_nHeight))
#define GL_fFramebufferTexture2D(_eTarget, _eAttachement, _eTextureTarget, _nTexture, _nLevel) oGL.call<void>("framebufferTexture2D", val(_eTarget), val(_eAttachement), val(_eTextureTarget), val(_nTexture), val(_nLevel))
#define GL_fFramebufferRenderbuffer(_eTarget, _eAttachement, _eRenderBufferTarget, _nRenderBufferId) oGL.call<void>("framebufferRenderbuffer", val(_eTarget), val(_eAttachement), val(_eRenderBufferTarget), val(_nRenderBufferId))
#define GL_fCheckFramebufferStatus(_eTarget) oGL.call<int>("checkFramebufferStatus", val(_eTarget))
#define GL_fDeleteBuffers(_nNb, _aBuffers) oGL.call<void>("deleteBuffers", val(_nNb), val(_aBuffers))
#define GL_fUniform1f(_nLocation, _n0) oGL.call<void>("uniform1f", val(_nLocation), val(_n0))
#define GL_fUniform2f(_nLocation, _n0, _n1) oGL.call<void>("uniform2f", val(_nLocation), val(_n0), val(_n1))
#define GL_fUniform3f(_nLocation, _n0, _n1, _n2) oGL.call<void>("uniform3f", val(_nLocation), val(_n0), val(_n1), val(_n2))
#define GL_fUniform4f(_nLocation, _n0, _n1, _n2, _n3) oGL.call<void>("uniform4f", val(_nLocation), val(_n0), val(_n1), val(_n2), val(_n3))
#define GL_fUniform1i(_nLocation, _n0) oGL.call<void>("uniform1i", val(_nLocation), val(_n0))
#define GL_fUniform2i(_nLocation, _n0, _n1) oGL.call<void>("uniform2i", val(_nLocation), val(_n0), val(_n1))
#define GL_fUniform3i(_nLocation, _n0, _n1, _n2) oGL.call<void>("uniform3i", val(_nLocation), val(_n0), val(_n1), val(_n2))
#define GL_fUniform4i(_nLocation, _n0, _n1, _n2, _n3) oGL.call<void>("uniform4i", val(_nLocation), val(_n0), val(_n1), val(_n2), val(_n3))
#define GL_fUniform1fv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform1fv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform2fv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform2fv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform3fv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform3fv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform4fv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform4fv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform1iv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform1iv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform2iv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform2iv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform3iv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform3iv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform4iv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform4iv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniformMatrix2fv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix2fv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix3fv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix3fv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix4fv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix4fv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniform1d(_nLocation, _nX) oGL.call<void>("uniform1d", val(_nLocation), val(_nX))
#define GL_fUniform2d(_nLocation, _nX, _nY) oGL.call<void>("uniform2d", val(_nLocation), val(_nX), val(_nY))
#define GL_fUniform3d(_nLocation, _nX, _nY, _nZ) oGL.call<void>("uniform3d", val(_nLocation), val(_nX), val(_nY), val(_nZ))
#define GL_fUniform4d(_nLocation, _nX, _nY, _nZ, _nW) oGL.call<void>("uniform4d", val(_nLocation), val(_nX), val(_nY), val(_nZ), val(_nW))
#define GL_fUniform1dv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform1dv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform2dv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform2dv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform3dv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform3dv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform4dv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform4dv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniformMatrix2dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix2dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix3dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix3dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix4dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix4dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix2x3dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix2x3dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix2x4dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix2x4dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix3x2dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix3x2dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix3x4dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix3x4dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix4x2dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix4x2dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniformMatrix4x3dv(_nLocation, _nCount, _bTranspose, _aValue) oGL.call<void>("uniformMatrix4x3dv", val(_nLocation), val(_nCount), val(_bTranspose), val(_aValue))
#define GL_fUniform1ui(_nLocation, _n0) oGL.call<void>("uniform1ui", val(_nLocation), val(_n0))
#define GL_fUniform2ui(_nLocation, _n0, _n1) oGL.call<void>("uniform2ui", val(_nLocation), val(_n0), val(_n1))
#define GL_fUniform3ui(_nLocation, _n0, _n1, _n2) oGL.call<void>("uniform3ui", val(_nLocation), val(_n0), val(_n1), val(_n2))
#define GL_fUniform4ui(_nLocation, _n0, _n1, _n2, _n3) oGL.call<void>("uniform4ui", val(_nLocation), val(_n0), val(_n1), val(_n2), val(_n3))
#define GL_fUniform1uiv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform1uiv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform2uiv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform2uiv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform3uiv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform3uiv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fUniform4uiv(_nLocation, _nCount, _aValue) oGL.call<void>("uniform4uiv", val(_nLocation), val(_nCount), val(_aValue))
#define GL_fGetUniformBlockIndex(_nPorgramId, _cUboName) oGL.call<int>("getUniformBlockIndex", val(_nPorgramId), val(_cUboName))
#define GL_fBindBufferBase(_eTarget, _nIndex, _nBuffer) oGL.call<void>("bindBufferBase", val(_eTarget), val(_nIndex), val(_nBuffer))
#define GL_fUniformBlockBinding(_nPorgramId, _nUniformBlickId, _nBindPoint) oGL.call<void>("uniformBlockBinding", val(_nPorgramId), val(_nUniformBlickId), val(_nBindPoint))

#endif
#if ( defined GZ_tCpcDos ||  defined GZ_tLite ) 
#define GL_fFlush() 
#define GL_fEnable(_eCapability) 
#define GL_fDisable(_eCapability) 
#define GL_fDepthMask(_bEnable) 
#define GL_fDepthFunc(_eFunc) 
#define GL_fGetBooleanv(_hName, _pData) 
#define GL_fGetDoublev(_hName, _pData) 
#define GL_fGetFloatv(_hName, _pData) 
#define GL_fGetIntegerv(_hName, _pData) 
#define GL_fGetInteger64v(_hName, _pData) 
#define GL_fGetBooleani_v(_hTarget, _nIndex, _pData) 
#define GL_fGetIntegeri_v(_hTarget, _nIndex, _pData) 
#define GL_fGetFloati_v(_hTarget, _nIndex, _pData) 
#define GL_fGetDoublei_v(_hTarget, _nIndex, _pData) 
#define GL_fGetInteger64i_v(_hTarget, _nIndex, _pData) 
#define GL_fVertexAttribPointer(_nIndex, _hLength, _hType, _bNormalized, _nStride, _nPointer) 
#define GL_fVertexAttribDivisor(_nIndex, _nDivisor) 
#define GL_fEnableVertexAttribArray(_nIndex) 
#define GL_fDisableVertexAttribArray(_nIndex) 
#define GL_fSwapIntervalEXT(_nInterval) false
#define GL_fBlendEquation(_eMode) 
#define GL_fBlendFuncSeparate(_eSFactorRGB, _eDFactorRGB, _eSFactorAlpha, _eDFactorAlpha) 
#define GL_fBlendFunc(_eSrcFactor, _eDstFactor) 
#define GL_fGenVertexArrays(_nNb, _aArrays) 
#define GL_fGenBuffers(_nNb, _aBuffers) 
#define GL_fBindVertexArray(_nVAO) 
#define GL_fBindBuffer(_hTarget, _nBuffer) 
#define GL_fBufferSubData(_hTarget, _nOffset, _nSize, _pData) 
#define GL_fGetShaderInfoLog(_nShaderId, _nMaxLength, _aLength, _cLogInfo) 
#define GL_fCreateProgram() 0
#define GL_fLinkProgram(_nIdProgram) 
#define GL_fGetProgramiv(_nIdProgram, _hInfo, _aParams) 
#define GL_fUseProgram(_nIdProgram) 
#define GL_fDeleteProgram(_nIdProgram) 
#define GL_fGetProgramInfoLog(_nProgramId, _nMaxLength, _aLength, _cLogInfo) 
#define GL_fGetUniformLocation(_nIdProgram, _cName) 0
#define GL_fGetAttribLocation(_nIdProgram, _cName) 0
#define GL_fBindAttribLocation(_nIdProgram, _nIndex, _cName) 
#define GL_fCreateShader(_hType) 0
#define GL_fShaderSource(_nShaderId, _nCount, _cSourceCode, _pLength) 
#define GL_fCompileShader(_nShaderId) 
#define GL_fGetShaderiv(_nShaderId, _hInfo, _aParams) 
#define GL_fDeleteShader(_nShaderId) 
#define GL_fAttachShader(_nIdProgram, _nShaderId) 
#define GL_fActiveTexture(_eTexture) 
#define GL_fTexImage2D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nBorder, _eFormat, _eType, _pPixel) 
#define GL_fTexImage3D(_eTarget, _nLevel, _nInternalformat, _nWidth, _nHeight, _nDepth, _nBorder, _eFormat, _eType, _pPixel) 
#define GL_fTexSubImage3D(_eTarget, _nLevel, _nOffsetX, _nOffsetY, _nOffsetZ, _nWidth, _nHeight, _nDepth, _eFormat, _eType, _pPixel) 
#define GL_fBindTexture(_eTarget, _nTextureId) 
#define GL_fTexParameterf(_eTarget, _eName, _nParam) 
#define GL_fTexParameteri(_eTarget, _eName, _nParam) 
#define GL_fGenTextures(_nNb, _aTextures) 
#define GL_fClear(_hMask) 
#define GL_fClearColor(_nRed, _nGreen, _nBlue, _nAlpha) 
#define GL_fBufferData(_hTarget, _nSize, _pData, _hUsage) 
#define GL_fDrawElements(_hMode, _nCount, _hVarType, _pOffset) 
#define GL_fDrawElementsInstanced(_hMode, _nCount, _hVarType, _pIndicesLocation, _nInstanceCount) 
#define GL_fGenFramebuffers(_nNb, _aFrameBuffers) 
#define GL_fBindFramebuffer(_eTarget, _nFrameBufferId) 
#define GL_fGenRenderbuffers(_nNb, _aRenderBuffers) 
#define GL_fBindRenderbuffer(_eTarget, _nRenderBufferId) 
#define GL_fRenderbufferStorage(_eTarget, _eInternalFormat, _nWidth, _nHeight) 
#define GL_fFramebufferTexture2D(_eTarget, _eAttachement, _eTextureTarget, _nTexture, _nLevel) 
#define GL_fFramebufferRenderbuffer(_eTarget, _eAttachement, _eRenderBufferTarget, _nRenderBufferId) 
#define GL_fCheckFramebufferStatus(_eTarget) 0
#define GL_fDeleteBuffers(_nNb, _aBuffers) 
#define GL_fUniform1f(_nLocation, _n0) 
#define GL_fUniform2f(_nLocation, _n0, _n1) 
#define GL_fUniform3f(_nLocation, _n0, _n1, _n2) 
#define GL_fUniform4f(_nLocation, _n0, _n1, _n2, _n3) 
#define GL_fUniform1i(_nLocation, _n0) 
#define GL_fUniform2i(_nLocation, _n0, _n1) 
#define GL_fUniform3i(_nLocation, _n0, _n1, _n2) 
#define GL_fUniform4i(_nLocation, _n0, _n1, _n2, _n3) 
#define GL_fUniform1fv(_nLocation, _nCount, _aValue) 
#define GL_fUniform2fv(_nLocation, _nCount, _aValue) 
#define GL_fUniform3fv(_nLocation, _nCount, _aValue) 
#define GL_fUniform4fv(_nLocation, _nCount, _aValue) 
#define GL_fUniform1iv(_nLocation, _nCount, _aValue) 
#define GL_fUniform2iv(_nLocation, _nCount, _aValue) 
#define GL_fUniform3iv(_nLocation, _nCount, _aValue) 
#define GL_fUniform4iv(_nLocation, _nCount, _aValue) 
#define GL_fUniformMatrix2fv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix3fv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix4fv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniform1d(_nLocation, _nX) 
#define GL_fUniform2d(_nLocation, _nX, _nY) 
#define GL_fUniform3d(_nLocation, _nX, _nY, _nZ) 
#define GL_fUniform4d(_nLocation, _nX, _nY, _nZ, _nW) 
#define GL_fUniform1dv(_nLocation, _nCount, _aValue) 
#define GL_fUniform2dv(_nLocation, _nCount, _aValue) 
#define GL_fUniform3dv(_nLocation, _nCount, _aValue) 
#define GL_fUniform4dv(_nLocation, _nCount, _aValue) 
#define GL_fUniformMatrix2dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix3dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix4dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix2x3dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix2x4dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix3x2dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix3x4dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix4x2dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniformMatrix4x3dv(_nLocation, _nCount, _bTranspose, _aValue) 
#define GL_fUniform1ui(_nLocation, _n0) 
#define GL_fUniform2ui(_nLocation, _n0, _n1) 
#define GL_fUniform3ui(_nLocation, _n0, _n1, _n2) 
#define GL_fUniform4ui(_nLocation, _n0, _n1, _n2, _n3) 
#define GL_fUniform1uiv(_nLocation, _nCount, _aValue) 
#define GL_fUniform2uiv(_nLocation, _nCount, _aValue) 
#define GL_fUniform3uiv(_nLocation, _nCount, _aValue) 
#define GL_fUniform4uiv(_nLocation, _nCount, _aValue) 
#define GL_fGetUniformBlockIndex(_nPorgramId, _cUboName) 0
#define GL_fBindBufferBase(_eTarget, _nIndex, _nBuffer) 
#define GL_fUniformBlockBinding(_nPorgramId, _nUniformBlickId, _nBindPoint) 

#endif
#endif