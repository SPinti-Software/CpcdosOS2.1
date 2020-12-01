/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html

* Description:
* 
* FuncTable_Pipe will remap a system function to a same signature custom function to see what is called,
* and then we choose what to do with it. Usefull for Log, Debug & Redirect functions.
*
* Warning: Windows WINAPI function are __stdcall instead of __cdecl. 
* __stdcall remapped function must have the EXACT same paramters and must be specified as __stdcall
*  If not, your app will likely crash when the function return.
*
*/



//!ATOM RegisterClassW(const WNDCLASSW *lpWndClass)
inline ATOM WINAPI pipe_RegisterClassW(void* value){
	showfunc("RegisterClassW( value: %p )", value);
	#ifdef Func_Win
		return RegisterClassW((WNDCLASSW*)value);
	#else
		return 0;
	#endif
}

//!LRESULT DispatchMessageA(const MSG *lpMsg)
inline LRESULT WINAPI pipe_DispatchMessageA(const MSG *lpMsg){
	showfunc_opt("DispatchMessageA( lpMsg: %s )", lpMsg);
	#ifdef Func_Win
		return DispatchMessageA(lpMsg);
	#else
		return 0;
	#endif
}

extern funcPtr_int _dFunc_wglGetPixelFormat;
//!int GetPixelFormat(HDC hdc)
inline BOOL WINAPI pipe_GetPixelFormat(HDC hdc){
	showfunc("GetPixelFormat( hdc: %p )", hdc);
	if(_dFunc_wglGetPixelFormat != 0){
		return _dFunc_wglGetPixelFormat(hdc);
	}
	
	#ifdef Func_Win
		return GetPixelFormat(hdc);
	#else
		return true;
	#endif
}
extern funcPtrIntPtr_bool _dFunc_wglSetPixelFormat;
//!BOOL SetPixelFormat(HDC hdc, int format, const PIXELFORMATDESCRIPTOR *ppfd)
inline BOOL WINAPI pipe_SetPixelFormat(void* hdc, int format, void* ppfd){
	showfunc("SetPixelFormat( hdc: %p, format: %d, ppfd: %p )", hdc, format, ppfd);
	if(_dFunc_wglSetPixelFormat != 0){
		return _dFunc_wglSetPixelFormat(hdc, format, ppfd);
	}
	
	#ifdef Func_Win
		return SetPixelFormat((HDC)hdc, format, (PIXELFORMATDESCRIPTOR*)ppfd);
	#else
		return true;
	#endif
}


extern funcPtrPtr_int _dFunc_wglChoosePixelFormat;
//!int ChoosePixelFormat( HDC hdc, const PIXELFORMATDESCRIPTOR *ppfd)
inline int WINAPI pipe_ChoosePixelFormat(void* hdc, void* ppfd){
	showfunc("ChoosePixelFormat( hdc: %p, ppfd: %p )", hdc, ppfd);
	if(_dFunc_wglChoosePixelFormat != 0){
		return _dFunc_wglChoosePixelFormat(hdc, ppfd);
	}
	
	//Check if we have wglChoosePixelFormat which is a better replacement
	//////////////////////////////////
	#ifdef Func_Win
		//_sapp.wgl.ChoosePixelFormat(_sapp.wgl.msg_dc, &pfd);
		int _ret = ChoosePixelFormat((HDC)hdc, (PIXELFORMATDESCRIPTOR*)ppfd);
		showfunc_ret("ChoosePixelFormat[ int: %d ]", _ret);return _ret;
	#else
		return 0;
	#endif
}

extern funcPtrIntIntPtr_int _dFunc_wglDescribePixelFormat;
//!int DescribePixelFormat(HDC hdc,int iPixelFormat,UINT nBytes,LPPIXELFORMATDESCRIPTOR ppfd)
inline int WINAPI pipe_DescribePixelFormat(HDC hdc,int iPixelFormat,UINT nBytes,LPPIXELFORMATDESCRIPTOR ppfd){
	showfunc("DescribePixelFormat( hdc: %p, iPixelFormat: %d, nBytes: %d, ppfd: %p )", hdc, iPixelFormat, nBytes, ppfd);
	if(_dFunc_wglDescribePixelFormat != 0){
		return _dFunc_wglDescribePixelFormat(hdc, iPixelFormat, nBytes, ppfd);
	}
	#ifdef Func_Win
		//_sapp.wgl.ChoosePixelFormat(_sapp.wgl.msg_dc, &pfd);
		return DescribePixelFormat((HDC)hdc, iPixelFormat, nBytes, ppfd);
	#else
		return 0;
	#endif
	
}

extern funcPtr_bool _dFunc_wglSwapBuffers;
//!BOOL SwapBuffers(HDC Arg1)
inline BOOL WINAPI pipe_SwapBuffers(HDC hdc){
	showfunc("SwapBuffers( hdc: %p )", hdc);
	if(_dFunc_wglSwapBuffers != 0){
		return _dFunc_wglSwapBuffers(hdc);
	}
	#ifdef Func_Win
		//_sapp.wgl.ChoosePixelFormat(_sapp.wgl.msg_dc, &pfd);
		return SwapBuffers((HDC)hdc);
	#else
		return false;
	#endif
}


//!BOOL AdjustWindowRectEx(LPRECT lpRect,DWORD  dwStyle,BOOL bMenu,DWORD  dwExStyle)
inline BOOL WINAPI pipe_AdjustWindowRectEx(LPRECT lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle){
	showfunc("AdjustWindowRectEx( lpRect: %p, dwStyle: %d, bMenu: %d, dwExStyle: %p )", lpRect, dwStyle, bMenu, dwExStyle);
	#ifdef Func_Win
		return AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle);
	#else
		return true;
	#endif
}

//!BOOL ShowWindow(HWND hWnd,int nCmdShow);
inline BOOL WINAPI  pipe_ShowWindow(HWND hWnd,int nCmdShow){
	showfunc("ShowWindow( hWnd: %p, nCmdShow: %d)", hWnd, nCmdShow);
	#ifdef Func_Win
		return ShowWindow(hWnd, nCmdShow);
	#else
		return true;
	#endif
}

//!HMODULE GetModuleHandleA(LPCSTR  lpModuleName)
//!HMODULE GetModuleHandleW(LPCWSTR lpModuleName)
inline HMODULE  WINAPI pipe_GetModuleHandleA(LPCSTR lpModuleName){
	showfunc("GetModuleHandleA( lpModuleName: %s)", lpModuleName);
	#ifdef Func_Win
		return GetModuleHandleA(lpModuleName);
	#else
		return 0;
	#endif
}
inline HMODULE  WINAPI pipe_GetModuleHandleW(LPCWSTR lpModuleName){
	showfunc("GetModuleHandleW( lpModuleName: %s)", lpModuleName); //TODO ewide str
	#ifdef Func_Win
		return GetModuleHandleW(lpModuleName);
	#else
		//wprintf(L"\nlpModuleName: %ws\n", lpModuleName );
		return 0;
	#endif
}

//!HCURSOR LoadCursorA(HINSTANCE hInstance,LPCSTR lpCursorName)
//!HCURSOR LoadCursorW(HINSTANCE hInstance,LPCWSTR lpCursorName)
HCURSOR WINAPI pipe_LoadCursorA(HINSTANCE hInstance, LPCSTR lpCursorName){
	//showfunc("LoadCursorA( hInstance: %p, lpCursorName: %s)", hInstance, lpCursorName);
	showfunc("LoadCursorA( hInstance: %p, lpCursorName: %p)", hInstance, lpCursorName);
	#ifdef Func_Win
		return LoadCursorA(hInstance, lpCursorName);
	#else
		return 0;
	#endif
}
HCURSOR WINAPI pipe_LoadCursorW(HINSTANCE hInstance, LPCWSTR lpCursorName){
	showfunc("LoadCursorW( hInstance: %p, lpCursorName: %p)", hInstance, lpCursorName);//TODO ewide str
	#ifdef Func_Win
		return LoadCursorW(hInstance, lpCursorName);
	#else
		return 0;
	#endif
}

//!HICON LoadIconA(HINSTANCE hInstance, LPCSTR lpIconName)
//!HICON LoadIconW(HINSTANCE hInstance, LPCWSTR lpIconName)
HICON WINAPI pipe_LoadIconA(HINSTANCE hInstance, LPCSTR lpIconName){
	showfunc("LoadIconA( hInstance: %p, lpIconName: %p)", hInstance, lpIconName);
	#ifdef Func_Win
		return LoadIconA(hInstance, lpIconName);
	#else
		return 0;
	#endif
}
HICON WINAPI pipe_LoadIconW(HINSTANCE hInstance, LPCWSTR lpIconName){
	showfunc("LoadIconW( hInstance: %p, lpIconName: %p)", hInstance, lpIconName);//TODO ewide str
	#ifdef Func_Win
		return LoadIconW(hInstance, lpIconName);
	#else
		return 0;
	#endif
}

//!BOOL WINAPI CloseHandle(HANDLE hObject)
inline BOOL WINAPI pipe_CloseHandle(HANDLE hObject){
	showfunc("CloseHandle( hObject: %p)", hObject); 
	#ifdef Func_Win
		return CloseHandle(hObject);
	#else
		return true;
	#endif
}

//!SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD     dwThreadId)
inline HHOOK WINAPI pipe_SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD     dwThreadId){
	showfunc("SetWindowsHookExA( idHook: %d, lpfn:%p, hmod:%p, dwThreadId:%p )", idHook, lpfn, hmod, dwThreadId);
	#ifdef Func_Win
		return SetWindowsHookExA(idHook,lpfn,hmod,dwThreadId);
	#else
		return 0;
	#endif
}

//!LRESULT CallNextHookEx(HHOOK hhk, int nCode, WPARAM wParam,LPARAM lParam)
inline LRESULT WINAPI pipe_CallNextHookEx(HHOOK hhk, int nCode, WPARAM wParam,LPARAM lParam){
	showfunc("CallNextHookEx( hhk: %d, nCode:%d, wParam:%p, lParam:%p )", hhk, nCode, wParam, lParam);
	#ifdef Func_Win
		return CallNextHookEx(hhk,nCode,wParam,lParam);
	#else
		return 0;
	#endif
}

//!BOOL EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD ModeNum,DEVMODEA *lpDevMode)
inline BOOL WINAPI pipe_EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD ModeNum,DEVMODEA *lpDevMode){
	showfunc("EnumDisplaySettingsA( lpszDeviceName: %p, ModeNum: %d, lpDevMode: %d)", lpszDeviceName, ModeNum, lpDevMode);
	#ifdef Func_Win
		return EnumDisplaySettingsA(lpszDeviceName,ModeNum,lpDevMode);
	#else
		return 0;
	#endif

}

//!int _set_error_mode(int mode_val)
int pipe_set_error_mode(int mode_val){
	showfunc("_set_error_mode( mode_val: %d )", mode_val);
	return 0;
}

//!int setvbuf ( FILE * stream, char * buffer, int mode, size_t size );
inline int pipe_setvbuf( FILE * stream, char * buffer, int mode, size_t size ){
	showfunc("pipe_setvbuf( stream: %p, buffer: %p, mode: %d, size:%d )", stream, buffer, mode, size);
	return 0; //TODO crash?
	//#ifdef Func_Win
	//return setvbuf(stream, buffer, mode, size);
	//#else
	//return 0;
	//#endif
}

//!HANDLE  CreateToolhelp32Snapshot(DWORD  dwFlags,DWORD  th32ProcessID)
inline HANDLE WINAPI pipe_CreateToolhelp32Snapshot(DWORD  dwFlags,DWORD  th32ProcessID){
	showfunc("CreateToolhelp32Snapshot( dwFlags: %p, th32ProcessID: %p )", dwFlags,th32ProcessID);
	return INVALID_HANDLE_VALUE;//INVALID_HANDLE_VALUE //TODO
}

//!BOOL Thread32First(HANDLE hSnapshot,LPTHREADENTRY32 lpte)
BOOL WINAPI pipe_Thread32First(HANDLE hSnapshot,void* lpte){
	showfunc("Thread32First( hSnapshot: %p, lpte: %p )", hSnapshot,lpte);
	return 0;
}

//!BOOL Thread32Next(HANDLE hSnapshot,LPTHREADENTRY32 lpte)
BOOL WINAPI pipe_Thread32Next(HANDLE hSnapshot,void* lpte){
	showfunc("Thread32Next( hSnapshot: %p, lpte: %p )", hSnapshot,lpte);
	return 0;
}

//!HANDLE CreateSemaphoreA(_In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,_In_ LONG lInitialCount, _In_ LONG lMaximumCount, _In_opt_ LPCTSTR lpName)
//!HANDLE CreateSemaphoreW(_In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,_In_ LONG lInitialCount, _In_ LONG lMaximumCount, _In_opt_ LPCWSTR lpName)
HANDLE WINAPI  pipe_CreateSemaphoreA( //Must have __stdcall
 _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
  _In_     LONG                  lInitialCount,
  _In_     LONG                  lMaximumCount,
  _In_opt_ LPCTSTR               lpName
){
	showfunc_unimplt("_CreateSemaphoreA(  )","");
	#ifdef Func_Win
	return CreateSemaphoreA(lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName);
	#else
	#endif
	return 0;
}
HANDLE  WINAPI  pipe_CreateSemaphoreW( //Must have __stdcall
 _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
  _In_     LONG                  lInitialCount,
  _In_     LONG                  lMaximumCount,
  _In_opt_ LPCWSTR                lpName
){
	showfunc_unimplt("_CreateSemaphoreW(  )","");
	#ifdef Func_Win
	return CreateSemaphoreW(lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName);
	#else
	#endif
	return 0;
}

//!void GetSystemInfo( LPSYSTEM_INFO lpSystemInfo)
inline void WINAPI pipe_GetSystemInfo( LPSYSTEM_INFO lpSystemInfo){
	//A pointer to a SYSTEM_INFO structure that receives the information.
	showfunc("GetSystemInfo( lpSystemInfo:%p )",lpSystemInfo);
	#ifdef Func_Win
	GetSystemInfo(lpSystemInfo);
	#else
	#endif
}

//!BOOL ClientToScreen(HWND    hWnd,LPPOINT lpPoint)
inline WINAPI BOOL pipe_ClientToScreen(HWND hWnd,LPPOINT lpPoint){
	showfunc("ClientToScreen( hWnd:%p, lpPoint.x:%d, lpPoint.y:%d )",hWnd, lpPoint->x, lpPoint->y);
	#ifdef Func_Win
	return ClientToScreen(hWnd, lpPoint);
	#else
	return true;
	#endif
}

//!LPVOID VirtualAlloc(LPVOID lpAddress,SIZE_T dwSize,DWORD flAllocationType,DWORD flProtect)
inline LPVOID WINAPI pipe_VirtualAlloc(LPVOID lpAddress,SIZE_T dwSize,DWORD flAllocationType,DWORD flProtect){
	showfunc("VirtualAlloc( lpAddress %p, dwSize: %d, flAllocationType: %d, flProtect:%d )", lpAddress, dwSize, flAllocationType, flProtect);
	#ifdef USE_Windows_VirtualAlloc
	return VirtualAlloc(lpAddress, dwSize, flAllocationType, flProtect); 
	#else
	if(flAllocationType == 0x01000){
		return instance_AllocManager.ManagedCalloc(dwSize, sizeof(char));
	}else{
		return 0;
	}
	#endif
	
}

//!BOOL VirtualFree(LPVOID lpAddress,SIZE_T dwSize,DWORD  dwFreeType)
inline BOOL WINAPI pipe_VirtualFree(LPVOID lpAddress,SIZE_T dwSize,DWORD  dwFreeType){
	showfunc("VirtualFree( lpAddress %p, dwSize: %d, dwFreeType:%d )", lpAddress, dwSize, dwFreeType);
	#ifdef USE_Windows_VirtualAlloc
    return VirtualFree(lpAddress, dwSize, dwFreeType); 
	#else
	if(dwFreeType == 0x08000){
		return instance_AllocManager.ManagedFree(lpAddress);
	}else{
		return true;
	}
	#endif
}

//!BOOL ScreenToClient(HWND hWnd,LPPOINT lpPoint)
BOOL WINAPI pipe_ScreenToClient(HWND hWnd,LPPOINT lpPoint){
	showfunc("ScreenToClient( %d, lpPoint: %p )", hWnd ,lpPoint);
	#ifdef Func_Win
	return ScreenToClient(hWnd, lpPoint);
	#else
	return 0;
	#endif	
}

//!BOOL GetCursorInfo(PCURSORINFO pci)
BOOL WINAPI pipe_GetCursorInfo(PCURSORINFO pci){
	showfunc("pipe_GetCursorInfo( pci: %p )", pci);
	#ifdef Func_Win
	return GetCursorInfo(pci);
	#else
	return 0;
	#endif	
}

//!BOOL SetWindowPos(HWND hWnd,HWND hWndInsertAfter,int  X,int  Y,int  cx,int  cy,UINT uFlags)
BOOL WINAPI pipe_SetWindowPos(HWND hWnd,HWND hWndInsertAfter,int  X,int  Y,int  cx,int  cy,UINT uFlags){
	showfunc("SetWindowPos( hWnd: %p, hWndInsertAfter: %p, X: %d, Y: %d, cw: %d, cy: %d, uFlags: %d )", hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
	#ifdef Func_Win
	return SetWindowPos(hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
	#else
	//here
	
	return true;
	#endif	
}

//!HMONITOR MonitorFromRect(LPCRECT lprc,DWORD   dwFlags)
HMONITOR WINAPI pipe_MonitorFromRect(LPCRECT lprc,DWORD   dwFlags){
	showfunc("MonitorFromRect( lprc: %p, dwFlags: %p )", lprc, dwFlags);
	#ifdef Func_Win 
	return MonitorFromRect(lprc, dwFlags);
	#else
	return 0;
	#endif	
}

//!BOOL GetMonitorInfoW(HMONITOR hMonitor,LPMONITORINFO lpmi)
BOOL WINAPI pipe_GetMonitorInfoW(HMONITOR hMonitor, LPMONITORINFO lpmi){
	showfunc("GetMonitorInfoW( hMonitor: %p, lpmi: %p )", hMonitor, lpmi);
	#ifdef Func_Win 
	return GetMonitorInfoW(hMonitor, lpmi);
	#else
	return 0;
	#endif	
}

//!BOOL InitializeCriticalSectionEx(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount,DWORD Flags)
BOOL WINAPI pipe_InitializeCriticalSectionEx(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount,DWORD Flags){
	showfunc("InitializeCriticalSectionEx( lpCriticalSection: %p, dwSpinCount: %p, Flags: %p )", lpCriticalSection, dwSpinCount, Flags);
	#ifdef Func_Win 
	return InitializeCriticalSectionEx(lpCriticalSection, dwSpinCount, Flags);
	#else
	return 0;
	#endif	
}

//!BOOL IsProcessorFeaturePresent(DWORD ProcessorFeature)
BOOL pipe_IsProcessorFeaturePresent(DWORD ProcessorFeature){
	showfunc("IsProcessorFeaturePresent( ProcessorFeature: %p )", ProcessorFeature);
	#ifdef Func_Win 
	return IsProcessorFeaturePresent(ProcessorFeature);
	#else
	return false;
	#endif	
}

//!BOOL InitializeCriticalSectionAndSpinCount(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount)
BOOL pipe_InitializeCriticalSectionAndSpinCount(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount){
	showfunc("InitializeCriticalSectionAndSpinCount( lpCriticalSection: %p,  dwSpinCount: %p )", lpCriticalSection, dwSpinCount);
	#ifdef Func_Win 
	return InitializeCriticalSectionAndSpinCount(lpCriticalSection, dwSpinCount);
	#else
	return true;
	#endif	
}

//!WINBOOL WINAPI IsDebuggerPresent (VOID)
BOOL WINAPI pipe_IsDebuggerPresent(){
	showfunc("IsDebuggerPresent( )", "");
	#ifdef Func_Win 
	return IsDebuggerPresent();
	#else
	return false;
	#endif	
}

//!LONG WINAPI UnhandledExceptionFilter(_EXCEPTION_POINTERS *ExceptionInfo)
LONG WINAPI pipe_UnhandledExceptionFilter(_EXCEPTION_POINTERS* ExceptionInfo){
	showfunc("UnhandledExceptionFilter( ExceptionInfo: %p )", ExceptionInfo);
	#ifdef Func_Win 
	return UnhandledExceptionFilter(ExceptionInfo);
	#else
	return false;
	#endif	
}

//!HANDLE WINAPI GetCurrentProcess()
HANDLE WINAPI pipe_GetCurrentProcess(){
	showfunc("GetCurrentProcess( )", "");
	#ifdef Func_Win 
	return GetCurrentProcess();
	#else
	return 0;
	#endif	
}

//!BOOL WINAPI TerminateProcess(HANDLE hProcess,UINT   uExitCode)
BOOL WINAPI pipe_TerminateProcess(HANDLE hProcess,UINT uExitCode){
	showfunc("TerminateProcess( hProcess: %p, uExitCode: %d )", hProcess, uExitCode);
	#ifdef Func_Win 
	return TerminateProcess(hProcess, uExitCode);
	#else
	return false;
	#endif	
}

//!VOID WINAPI GetStartupInfoW (LPSTARTUPINFOW lpStartupInfo)
VOID WINAPI pipe_GetStartupInfoW(LPSTARTUPINFOW lpStartupInfo){
	showfunc("GetStartupInfoW( lpStartupInfo: %p)", lpStartupInfo);
	/*
	lpStartupInfo->cb = sizeof(LPSTARTUPINFO);
	lpStartupInfo->lpDesktop = (LPTSTR)L"";
	lpStartupInfo->lpTitle = (LPTSTR)"";
	lpStartupInfo->dwX =0;
	lpStartupInfo->dwY =0;
	lpStartupInfo->dwXSize =0;
	lpStartupInfo->dwYSize =0;
	lpStartupInfo->dwXCountChars =0;
	lpStartupInfo->dwYCountChars =0;
	lpStartupInfo->dwFillAttribute =0;
	lpStartupInfo->dwFlags =0;
	lpStartupInfo->wShowWindow =0;
	lpStartupInfo->cbReserved2 =0;
	lpStartupInfo->lpReserved2 =0;

	lpStartupInfo->hStdInput =0;
	lpStartupInfo->hStdOutput =0;
	lpStartupInfo->hStdError =0;
*/

	#ifdef Func_Win 
	GetStartupInfoW(lpStartupInfo);
	#else
	#endif	
}

//!char* setlocale(int category, const char* locale)
char* pipe_setlocale(int category, const char* locale){
	showfunc_opt("setlocale( category: %d, locale: %s )", category, locale);
	return setlocale(category, locale); //required?
}

//!char* getenv (const char* name)
char* pipe_getenv(const char* name){
	showfunc("getenv( name: %s )", name);
	return getenv(name);
}

//!int WINAPI WideCharToMultiByte (UINT CodePage, DWORD dwFlags, LPCWCH lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCCH lpDefaultChar, LPBOOL lpUsedDefaultChar)
int WINAPI pipe_WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWCH lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCCH lpDefaultChar, LPBOOL lpUsedDefaultChar){
	showfunc("WideCharToMultiByte( ... )", "");
	#ifdef Func_Win 
	return WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
	#else
	return 0;
	#endif	
}

//!int WINAPI MultiByteToWideChar (UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar)
int WINAPI pipe_MultiByteToWideChar (UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar){
	showfunc_opt("MultiByteToWideChar( ... )", "");
	#ifdef Func_Win 
	return MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar);
	#else
	return 0;
	#endif	
}

//!VOID WINAPI OutputDebugStringA (LPCSTR lpOutputString)
//!VOID WINAPI OutputDebugStringW (LPCWSTR lpOutputString)
VOID WINAPI pipe_OutputDebugStringA (LPCSTR lpOutputString){
	showfunc_opt("OutputDebugStringA( lpOutputString: %p )", lpOutputString);
	showinf("%s", lpOutputString);
	#ifdef Func_Win 
	OutputDebugStringA(lpOutputString);
	#else
	#endif	
}
VOID WINAPI pipe_OutputDebugStringW (LPCWSTR lpOutputString){
	showfunc_opt("OutputDebugStringW( lpOutputString: %p )", lpOutputString);
	#ifdef Func_Win 
	OutputDebugStringW(lpOutputString);
	#else
	#endif	
}

//!HWND WINAPI GetConsoleWindow(VOID)
HWND WINAPI pipe_GetConsoleWindow(VOID){
	showfunc("GetConsoleWindow( )", "");
	#ifdef Func_Win 
	return GetConsoleWindow();
	#else
	return 0;
	#endif	
	
}

//!struct lconv* localeconv (void)
struct lconv* pipe_localeconv(void){
	showfunc("localeconv( )", "");
	return localeconv();//TODO?
	/*
	#ifdef Func_Win 
	return localeconv();
	#else
	return 0;//Crash
	#endif	
	*/
}