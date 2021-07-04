 /*  -== XE-Loader ==-
 *
 *  Load [.exe .elf / .dll .so] from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *  
 * Copyright (c) 2021 - V·Liance
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 *
 * Description:
* 
* FuncTable_Sys is an attempt to remake system functions, or redirect them, 
* this is a mix between FuncTable_Pipe & FuncTable_Imp
* 
* Warning: Windows WINAPI function are __stdcall instead of __cdecl. 
* __stdcall remapped function must have the EXACT same paramters and must be specified as __stdcall
*  If not, your app will likely crash when the function return.
*
*/

//!VOID WINAPI SetLastError (DWORD dwErrCode)
DWORD last_error = 0;
VOID WINAPI sys_SetLastError (DWORD dwErrCode){
	if(dwErrCode != 0){
		showfunc("SetLastError( dwErrCode: %d)", dwErrCode); 
	}
	#if defined(Func_Win) || defined(USE_Window_LastError) 
		SetLastError(dwErrCode);
	#else
	last_error = dwErrCode;
	#endif
}

//!DWORD WINAPI GetLastError (VOID)
DWORD WINAPI sys_GetLastError(VOID){
	showfunc_opt("GetLastError( )", ""); 
	#if defined(Func_Win) || defined(USE_Window_LastError) 
	DWORD error = GetLastError();
	if (error){
		LPVOID lpMsgBuf;
		DWORD bufLen = FormatMessage(	FORMAT_MESSAGE_ALLOCATE_BUFFER |
										FORMAT_MESSAGE_FROM_SYSTEM |
										FORMAT_MESSAGE_IGNORE_INSERTS,
										NULL,error,MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),(LPTSTR) &lpMsgBuf,0, NULL );
		if (bufLen){
		  LPCSTR lpMsgStr = (LPCSTR)lpMsgBuf;
		//  std::string result(lpMsgStr, lpMsgStr+bufLen); //TODO
		  LocalFree(lpMsgBuf);
		//  showinf("GetLastError:%s", result.c_str());
		  showinf("TODO GetLastError:","");
		}

	}
	return error;
	#else
	 return last_error;
	#endif
}


//!WINBOOL WINAPI GetVersionExA (LPOSVERSIONINFOA lpVersionInformation)
//!WINBOOL WINAPI GetVersionExW (LPOSVERSIONINFOW lpVersionInformation)
	//DWORD dwOSVersionInfoSize;
	//DWORD dwMajorVersion;
	//DWORD dwMinorVersion;
	//DWORD dwBuildNumber;
	//DWORD dwPlatformId;
	//WCHAR szCSDVersion[128];	
WINBOOL WINAPI sys_GetVersionExA(LPOSVERSIONINFOA lpVersionInformation){
	showfunc("GetVersionExA( lpVersionInformation: %p )", lpVersionInformation);
	#ifdef Func_Win
		return GetVersionExA(lpVersionInformation);
	#else
		lpVersionInformation->dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
		lpVersionInformation->dwMajorVersion = 10;
		lpVersionInformation->dwMinorVersion = 0;
		lpVersionInformation->dwBuildNumber = 0;
		lpVersionInformation->dwPlatformId = 2;
		lpVersionInformation->szCSDVersion[128] = 0;
		return 1;
	#endif
}
WINBOOL WINAPI sys_GetVersionExW (LPOSVERSIONINFOW lpVersionInformation){
	showfunc("GetVersionExW( lpVersionInformation: %p)", lpVersionInformation); 
	#ifdef Func_Win
		return GetVersionExW(lpVersionInformation);
	#else
		lpVersionInformation->dwOSVersionInfoSize = sizeof(OSVERSIONINFO);
		lpVersionInformation->dwMajorVersion = 10;
		lpVersionInformation->dwMinorVersion = 0;
		lpVersionInformation->dwBuildNumber = 0;
		lpVersionInformation->dwPlatformId = 2;
		lpVersionInformation->szCSDVersion[128] = 0;
		return 1;
	#endif
}

//!WINBOOL WINAPI TrackMouseEvent(LPTRACKMOUSEEVENT lpEventTrack)
WINBOOL WINAPI sys_TrackMouseEvent(LPTRACKMOUSEEVENT lpEventTrack){
	showfunc("TrackMouseEvent( lpEventTrack: %p)", lpEventTrack); 
	#ifdef Func_Win
		return TrackMouseEvent(lpEventTrack);
	#else
		return true;
	#endif
}


//!HDC GetDC(HWND hWnd)
inl HDC WINAPI sys_GetDC(HWND hWnd){
	showfunc("GetDC( lpModuleName: %p)", hWnd); 
	#ifdef Func_Win
		return GetDC(hWnd);
	#else
		return (HDC)hWnd; //HDC is same as HWND (not necessary to dissociate them)
	#endif
}

//!HWND WindowFromDC(HDC hDC)
inl WINAPI HWND sys_WindowFromDC(HDC hDC){
	showfunc_opt("WindowFromDC( hDC:%p )",hDC);
	#ifdef Func_Win
	return WindowFromDC(hDC);
	#else
	return (HWND)hDC; //HDC is same as HWND (not necessary to dissociate them)
	#endif
}

//!HWND WINAPI CreateWindowExA(DWORD dwExStyle,LPCSTR lpClassName,LPCSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HMENU hMenu,HINSTANCE hInstance,LPVOID lpParam)
HWND WINAPI sys_CreateWindowExA(DWORD dwExStyle,LPCSTR lpClassName,LPCSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HMENU hMenu,HINSTANCE hInstance,LPVOID lpParam){
	showfunc("CreateWindowExA( dwExStyle: %d, lpClassName: %s, lpWindowName :%p, dwStyle: %d, X: %d, Y: %d, nWidth: %d, nHeight: %d, hWndParent: %p, hMenu: %p, hInstance: %d, lpParam: %d )",
								dwExStyle, lpClassName, lpWindowName, dwStyle, X, Y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
	#ifdef Func_Win
		return CreateWindowExA( dwExStyle, lpClassName, lpWindowName, dwStyle, X, Y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam );
	#else
		int idx = Create_context((ContextInf){.width=nWidth, .height=nHeight});
		return (HWND)idx;
	#endif
}
//!HWND WINAPI CreateWindowExW(DWORD dwExStyle,LPCWSTR lpClassName,LPCWSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HMENU hMenu,HINSTANCE hInstance,LPVOID lpParam)
HWND WINAPI sys_CreateWindowExW(DWORD dwExStyle,LPCWSTR lpClassName,LPCWSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HMENU hMenu,HINSTANCE hInstance,LPVOID lpParam){
	showfunc("CreateWindowExW( dwExStyle: %d, lpClassName: %p, lpWindowName :%p, dwStyle: %d, X: %d, Y: %d, nWidth: %d, nHeight: %d, hWndParent: %p, hMenu: %p, hInstance: %d, lpParam: %d )",
								dwExStyle, lpClassName, lpWindowName, dwStyle, X, Y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
	#ifdef Func_Win
		return CreateWindowExW( dwExStyle, lpClassName, lpWindowName, dwStyle, X, Y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam );
	#else
	
		int idx = Create_context((ContextInf){.width=nWidth, .height=nHeight});
		return (HWND)idx;
	#endif
}


//!int StretchDIBits(HDC hdc,int xDest,int yDest,int DestWidth,int DestHeight,int xSrc,int ySrc, int SrcWidth, int SrcHeight, const VOID *lpBits, const BITMAPINFO *lpbmi, UINT iUsage, DWORD rop)
int WINAPI sys_StretchDIBits(HDC hdc,int xDest,int yDest,int DestWidth,int DestHeight,int xSrc,int ySrc, int SrcWidth, int SrcHeight, const VOID *lpBits, const BITMAPINFO *lpbmi, UINT iUsage, DWORD rop){
	showfunc("StretchDIBits( hdc: %p )", hdc);
	#ifdef Func_Win
		return StretchDIBits(hdc, xDest, yDest, DestWidth, DestHeight, xSrc, ySrc, SrcWidth, SrcHeight, lpBits, lpbmi, iUsage, rop);
	#else
		/*
		showinf("lpbmi.bmiHeader.biWidth: %d", lpbmi->bmiHeader.biWidth);
		showinf("lpbmi.bmiHeader.biHeight: %d", lpbmi->bmiHeader.biHeight);
		showinf("lpbmi.bmiHeader.biPlanes: %d", lpbmi->bmiHeader.biPlanes);
		showinf("lpbmi.bmiHeader.biBitCount: %d", lpbmi->bmiHeader.biBitCount);
		showinf("lpbmi.bmiHeader.biCompression: %d", lpbmi->bmiHeader.biCompression);
		showinf("lpbmi.bmiHeader.biSizeImage: %d", lpbmi->bmiHeader.biSizeImage);
		showinf("lpbmi.bmiHeader.biXPelsPerMeter: %d", lpbmi->bmiHeader.biXPelsPerMeter);
		showinf("lpbmi.bmiHeader.biYPelsPerMeter: %d", lpbmi->bmiHeader.biYPelsPerMeter);
		showinf("lpbmi.bmiHeader.biClrUsed: %d", lpbmi->bmiHeader.biClrUsed);
		showinf("lpbmi.bmiHeader.biClrImportant: %d", lpbmi->bmiHeader.biClrImportant);
		showinf("lpbmi.bmiColors[0].rgbBlue: %d", lpbmi->bmiColors[0].rgbBlue );
		showinf("lpbmi.bmiColors[0].rgbGreen: %d", lpbmi->bmiColors[0].rgbGreen );
		showinf("lpbmi.bmiColors[0].rgbRed: %d", lpbmi->bmiColors[0].rgbRed );
		showinf("lpbmi.bmiColors[0].rgbReserved: %d", lpbmi->bmiColors[0].rgbReserved );
		*/
		return Blit_context((size_t)hdc, lpBits, SrcWidth)->height; //->heighT: number of scan lines copied
	#endif
}


//!WINBOOL WINAPI GetClientRect(HWND hWnd,LPRECT lpRect)
//struct RECT {LONG left; LONG top;LONG right;LONG bottom;}
WINBOOL WINAPI sys_GetClientRect(HWND hWnd,LPRECT lpRect){
 	showfunc_opt("GetClientRect( hWnd: %p, lpRect: %p )", hWnd, lpRect);
	#ifdef Func_Win
		return GetClientRect(hWnd, lpRect);
	#else
		lpRect->left = 0;
		lpRect->top  = 0;
		lpRect->right  = aContext[(size_t)hWnd].width;
		lpRect->bottom = aContext[(size_t)hWnd].height;
		return true;
	#endif
}

//!WINBOOL WINAPI GetWindowRect(HWND hWnd,LPRECT lpRect)
WINBOOL WINAPI sys_GetWindowRect(HWND hWnd,LPRECT lpRect){
	showfunc_opt("GetWindowRect( hWnd: %p, lpRect: %p )", hWnd, lpRect);
	#ifdef Func_Win
		return GetWindowRect(hWnd, lpRect);
	#else
		lpRect->left = 0;
		lpRect->top  = 0;
		lpRect->right  = aContext[(size_t)hWnd].width;
		lpRect->bottom = aContext[(size_t)hWnd].height;
		return true;
	#endif
}

//!WINBOOL WINAPI TranslateMessage(CONST MSG *lpMsg)
WINBOOL WINAPI sys_TranslateMessage(CONST MSG *lpMsg){
 	showfunc_opt("TranslateMessage( lpMsg: %p )", lpMsg);
	#ifdef Func_Win
		return TranslateMessage(lpMsg);
	#else
		return true;
	#endif
}

//!LRESULT WINAPI DispatchMessageA(CONST MSG *lpMsg)
//!LRESULT WINAPI DispatchMessageW(CONST MSG *lpMsg)
WINBOOL WINAPI sys_DispatchMessageA(CONST MSG *lpMsg){
 	showfunc_opt("DispatchMessageA( lpMsg: %p )", lpMsg);
	#ifdef Func_Win
		return DispatchMessageA(lpMsg);
	#else
		return true;
	#endif
}
WINBOOL WINAPI sys_DispatchMessageW(CONST MSG *lpMsg){
 	showfunc_opt("DispatchMessageW( lpMsg: %p )", lpMsg);
	#ifdef Func_Win
		return DispatchMessageW(lpMsg);
	#else
		return true;
	#endif
}

//!UINT WINAPI SetErrosrMode (UINT uMode)
UINT WINAPI sys_SetErrorMode(UINT uMode){
 	showfunc("SetErrorMode( uMode: %p )", uMode);
	#ifdef Func_Win
		return SetErrorMode(uMode);
	#else
		return 0;
	#endif
}

//!DWORD GetFileType(HANDLE hFile)
DWORD sys_GetFileType(HANDLE hFile){
	showfunc("GetFileType( hFile: %p )", hFile);
	#ifdef Func_Win
		return GetFileType(hFile);
	#else
	return 0;
	#endif
}

//!ULONGLONG NTAPI VerSetConditionMask (ULONGLONG ConditionMask, DWORD TypeMask, BYTE Condition);
ULONGLONG NTAPI sys_VerSetConditionMask (ULONGLONG ConditionMask, DWORD TypeMask, BYTE Condition){
	showfunc_opt("VerSetConditionMask( ConditionMask: %p, TypeMask: %d, Condition: %d )", ConditionMask, TypeMask, Condition);
	#ifdef Func_Win
		return VerSetConditionMask(ConditionMask, TypeMask, Condition);
	#else
		return 0;
	#endif

}

//!WINBOOL WINAPI VerifyVersionInfoW (LPOSVERSIONINFOEXW lpVersionInformation, DWORD dwTypeMask, DWORDLONG dwlConditionMask)
WINBOOL WINAPI sys_VerifyVersionInfoW (LPOSVERSIONINFOEXW lpVersionInformation, DWORD dwTypeMask, DWORDLONG dwlConditionMask){
	showfunc_opt("VerifyVersionInfoW( lpVersionInformation: %p, dwTypeMask: %d, dwlConditionMask: %d )", lpVersionInformation, dwTypeMask, dwlConditionMask);
	#ifdef Func_Win
		return VerifyVersionInfoW(lpVersionInformation, dwTypeMask, dwlConditionMask);
	#else
		//If the currently running operating system satisfies the specified requirements, the return value is a nonzero value.
		return 1;
	#endif
}

//!BOOL IMAGEAPI EnumerateLoadedModules64(__in HANDLE hProcess,__in PENUMLOADED_MODULES_CALLBACK64 EnumLoadedModulesCallback,__in PVOID UserContext)
typedef BOOL (CALLBACK* PENUMLOADED_MODULES_CALLBACK64)( PCSTR ModuleName, ULONG ModuleBase, ULONG ModuleSize, PVOID UserContext);
BOOL WINAPI sys_EnumerateLoadedModules64( HANDLE hProcess, PENUMLOADED_MODULES_CALLBACK64 EnumLoadedModulesCallback, PVOID UserContext){
	showfunc_opt("EnumerateLoadedModules64( hProcess: %p, EnumLoadedModulesCallback: %p, UserContext: %p )", hProcess, EnumLoadedModulesCallback, UserContext);
	// static BOOL CALLBACK ELM_Callback(WIN32_ELMCB_PCSTR ModuleName, DWORD64 ModuleBase,ULONG ModuleSize, PVOID UserContext);
	//Just send a fake Module 
	EnumLoadedModulesCallback(0,0,0,0);

	return true;
}

//!DWORD WINAPI GetCurrentDirectoryA (DWORD nBufferLength, LPSTR lpBuffer)
//!DWORD WINAPI GetCurrentDirectoryW (DWORD nBufferLength, LPWSTR lpBuffer)
DWORD WINAPI sys_GetCurrentDirectoryA (DWORD nBufferLength, LPSTR lpBuffer){
	showfunc_opt("GetCurrentDirectoryA( nBufferLength: %d, lpBuffer: %p )", nBufferLength, lpBuffer);
	#ifdef Func_Win
		return GetCurrentDirectoryA( nBufferLength, lpBuffer);
	#else
		//If the currently running operating system satisfies the specified requirements, the return value is a nonzero value.
		return 1;
	#endif
}
DWORD WINAPI sys_GetCurrentDirectoryW (DWORD nBufferLength, LPWSTR lpBuffer){
	showfunc_opt("GetCurrentDirectoryW( nBufferLength: %d, lpBuffer: %p )", nBufferLength, lpBuffer);
	#ifdef Func_Win
		return GetCurrentDirectoryW( nBufferLength, lpBuffer);
	#else
		//return GetCurrentDirectoryW( nBufferLength, lpBuffer);//TODO
		//If the currently running operating system satisfies the specified requirements, the return value is a nonzero value.
		return 1;
	#endif
}

//!HRESULT GetDpiForMonitor(HMONITOR hmonitor, MONITOR_DPI_TYPE dpiType,UINT *dpiX,UINT *dpiY)
HRESULT sys_GetDpiForMonitor(HMONITOR hmonitor,int dpiType,UINT* dpiX,UINT* dpiY){
	showfunc("GetDpiForMonitor( hmonitor: %p, dpiType: %d, dpiX: %p,  dpiY: %p )", hmonitor, dpiType, dpiX, dpiY);
	*dpiX = 0;
	*dpiY = 0;
	return 0;
}

//!BOOL SetProcessDPIAware()
inl BOOL sys_SetProcessDPIAware(){
	showfunc("SetProcessDPIAware( )","");
	return true;
}

//!HRESULT SetProcessDpiAwareness(PROCESS_DPI_AWARENESS value)
inl HRESULT sys_SetProcessDpiAwareness(int value){
	showfunc("SetProcessDpiAwareness( value: %d )",value);
	return 0;
}

//!WINBOOL WINAPI QueryPerformanceCounter (LARGE_INTEGER *lpPerformanceCount)

WINBOOL WINAPI sys_QueryPerformanceCounter(LARGE_INTEGER* lpPerformanceCount){
   	showfunc_opt("QueryPerformanceCounter(lpPerformanceCount)", lpPerformanceCount);
	#ifdef Func_Win
		return QueryPerformanceCounter( lpPerformanceCount);
	#else
		static int i = 0; i++;
		if(lpPerformanceCount != 0){
			LARGE_INTEGER lpPerformanceCount_ = {(DWORD)521891041 + i};//Dummy value
			*lpPerformanceCount = lpPerformanceCount_;
		}
		return true;
	#endif
}

//!WINBOOL WINAPI QueryPerformanceFrequency (LARGE_INTEGER *lpFrequency)
WINBOOL WINAPI sys_QueryPerformanceFrequency(LARGE_INTEGER* lpFrequency){
   	showfunc("QueryPerformanceFrequency( lpFrequency: %p )", lpFrequency);
	#ifdef Func_Win
		return QueryPerformanceFrequency( lpFrequency);
	#else
		static const LARGE_INTEGER lpFrequency_ = {8221038}; //Dummy value
		if(lpFrequency != 0){*lpFrequency = lpFrequency_;}
		return false;
	#endif
}

//!DWORD WINAPI GetTickCount (VOID)
DWORD WINAPI sys_GetTickCount(VOID){
 	showfunc("GetTickCount( )", "");
	#ifdef Func_Win
		return GetTickCount();
	#else
		return 1;//Fake
	#endif
}

//!DWORD WINAPI GetCurrentThreadId (VOID)
DWORD WINAPI sys_GetCurrentThreadId(VOID){
 	showfunc("GetCurrentThreadId( )", "");
	#ifdef Func_Win
		return GetCurrentThreadId();
	#else
		return 1;//Fake
	#endif
}

//!DWORD WINAPI GetCurrentThreadId (VOID)
DWORD WINAPI sys_GetCurrentProcessId(VOID){
 	showfunc("GetCurrentProcessId( )", "");
	#ifdef Func_Win
		return GetCurrentProcessId();
	#else
		return 1;//TODO
	#endif
}

 //!VOID WINAPI GetSystemTimeAsFileTime (LPFILETIME lpSystemTimeAsFileTime)
 VOID WINAPI sys_GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime){
	 showfunc("GetSystemTimeAsFileTime( lpSystemTimeAsFileTime: %p )", lpSystemTimeAsFileTime);
	#ifdef Func_Win
		GetSystemTimeAsFileTime(lpSystemTimeAsFileTime);
	#else
		//typedef struct _FILETIME {DWORD dwLowDateTime;DWORD dwHighDateTime;} FILETIME,*PFILETIME,*LPFILETIME;
		lpSystemTimeAsFileTime->dwLowDateTime = 1; //Fake time
		lpSystemTimeAsFileTime->dwHighDateTime = 1; //Fake time
	#endif
 }

//!LPTOP_LEVEL_EXCEPTION_FILTER WINAPI SetUnhandledExceptionFilter (LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
LPTOP_LEVEL_EXCEPTION_FILTER WINAPI sys_SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter){
 	showfunc("SetUnhandledExceptionFilter( lpTopLevelExceptionFilter: %p )", lpTopLevelExceptionFilter);
	#ifdef Func_Win
		return SetUnhandledExceptionFilter(lpTopLevelExceptionFilter);
	#else
		return 0;
	#endif
}


//!HANDLE WINAPI CreateEventA (LPSECURITY_ATTRIBUTES lpEventAttributes, WINBOOL bManualReset, WINBOOL bInitialState, LPCSTR lpName)
//!HANDLE WINAPI CreateEventW (LPSECURITY_ATTRIBUTES lpEventAttributes, WINBOOL bManualReset, WINBOOL bInitialState, LPCWSTR lpName)
HANDLE WINAPI sys_CreateEventA(LPSECURITY_ATTRIBUTES lpEventAttributes, WINBOOL bManualReset, WINBOOL bInitialState, LPCSTR lpName){
	showfunc("CreateEventA( lpEventAttributes: %p,  bManualReset: %d, bInitialState: %d, lpName: %s )", lpEventAttributes, bManualReset, bInitialState, lpName);
	#ifdef Func_Win
		return CreateEventA(lpEventAttributes, bManualReset, bInitialState, lpName);
	#else
		return malloc(sizeof(HANDLE)); //new handle // TODO delete
	#endif
}
HANDLE WINAPI sys_CreateEventW(LPSECURITY_ATTRIBUTES lpEventAttributes, WINBOOL bManualReset, WINBOOL bInitialState, LPCWSTR lpName){
	showfunc("CreateEventW( lpEventAttributes: %p,  bManualReset: %d, bInitialState: %d, lpName: %p )", lpEventAttributes, bManualReset, bInitialState, lpName);
	#ifdef Func_Win
		return CreateEventW(lpEventAttributes, bManualReset, bInitialState, lpName);
	#else
		return malloc(sizeof(HANDLE)); //new handle // TODO delete
	#endif
}

//!SHORT WINAPI GetKeyState(int nVirtKey)
SHORT WINAPI sys_GetKeyState(int nVirtKey){
	showfunc_opt("GetKeyState( nVirtKey: %d )", nVirtKey);
	#ifdef Func_Win
		return GetKeyState(nVirtKey);
	#else
		return 0;
	#endif
}


//!VOID WINAPI InitializeSListHead (PSLIST_HEADER ListHead)
VOID WINAPI sys_InitializeSListHead(PSLIST_HEADER ListHead){
	showfunc("InitializeSListHead( ListHead: %d )", ListHead);
	#ifdef Func_Win
		 InitializeSListHead(ListHead);
	#else
	//	 0;
	//TODO
	#endif
}

//!LPCH WINAPI GetEnvironmentStrings (VOID)
//!LPWCH WINAPI GetEnvironmentStringsW (VOID)
LPCH WINAPI sys_GetEnvironmentStrings (VOID){
	showfunc("GetEnvironmentStrings( )", "");
	#ifdef Func_Win
		return GetEnvironmentStrings();
	#else
		return 0;	//TODO (Not work!?)
	#endif
}
LPWCH WINAPI sys_GetEnvironmentStringsW (VOID){
	showfunc("GetEnvironmentStringsW( )", "");

	#ifdef Func_Win
		return GetEnvironmentStringsW();
	#else
		return 0;	//TODO (Not work!?)
	#endif
}
 //!WINBOOL WINAPI FreeEnvironmentStringsA (LPCH penv)
 //!WINBOOL WINAPI FreeEnvironmentStringsW (LPWCH penv)
 WINBOOL WINAPI sys_FreeEnvironmentStringsA (LPCH penv){
 	showfunc("FreeEnvironmentStringsA( penv: %p )", penv);
	#ifdef Func_Win
		return FreeEnvironmentStringsA(penv);
	#else
		return 0;	//TODO (Not work!?)
	#endif
 }
 WINBOOL WINAPI sys_FreeEnvironmentStringsW (LPWCH penv){
  	showfunc("FreeEnvironmentStringsW( penv: %p )", penv);
	#ifdef Func_Win
		return FreeEnvironmentStringsW(penv);
	#else
		return 0;	//TODO (Not work!?)
	#endif
 }
 
//!DWORD WINAPI GetModuleFileNameA (HMODULE hModule, LPSTR lpFilename, DWORD nSize)
//!DWORD WINAPI GetModuleFileNameW (HMODULE hModule, LPWSTR lpFilename, DWORD nSize)
DWORD WINAPI sys_GetModuleFileNameA (HMODULE hModule, LPSTR lpFilename, DWORD nSize){
	showfunc("GetModuleFileNameA( hModule: %p, lpFilename: %s, nSize: %d )", hModule, lpFilename, nSize);
	#ifdef Func_Win
		return GetModuleFileNameA(hModule, lpFilename, nSize);
	#else
		return 0;
	#endif
}
DWORD WINAPI sys_GetModuleFileNameW (HMODULE hModule, LPWSTR lpFilename, DWORD nSize){
	showfunc("GetModuleFileNameW( hModule: %p, lpFilename: %p, nSize: %d )", hModule, lpFilename, nSize);
	#ifdef Func_Win
		return GetModuleFileNameW(hModule, lpFilename, nSize);
	#else
		return 0;
	#endif
}

//!int WINAPI GetSystemMetrics(int nIndex)
int WINAPI sys_GetSystemMetrics(int nIndex){
	showfunc("GetSystemMetrics( nIndex: %d )", nIndex);
	#ifdef Func_Win
		return GetSystemMetrics(nIndex);
	#else
		return 0;//Fail --> use custom implementation
	#endif
}

//!WINBOOL WINAPI SystemParametersInfoA(UINT uiAction,UINT uiParam,PVOID pvParam,UINT fWinIni)
//!WINBOOL WINAPI SystemParametersInfoW(UINT uiAction,UINT uiParam,PVOID pvParam,UINT fWinIni)
DWORD WINAPI sys_SystemParametersInfoA(UINT uiAction,UINT uiParam,PVOID pvParam,UINT fWinIni){
	showfunc("SystemParametersInfoA( uiAction: %p, uiParam: %s, pvParam: %d, fWinIni: %d )", uiAction, uiParam, pvParam, fWinIni);
	#ifdef Func_Win
		return SystemParametersInfoA(uiAction, uiParam, pvParam, fWinIni);
	#else
		return 0;
	#endif
}
DWORD WINAPI sys_SystemParametersInfoW(UINT uiAction,UINT uiParam,PVOID pvParam,UINT fWinIni){
	showfunc("SystemParametersInfoW( uiAction: %p, uiParam: %s, pvParam: %d, fWinIni: %d )", uiAction, uiParam, pvParam, fWinIni);
	#ifdef Func_Win
		return SystemParametersInfoW(uiAction, uiParam, pvParam, fWinIni);
	#else
		return 0;
	#endif
}

//!WINBOOL WINAPI GetCursorPos(LPPOINT lpPoint)
WINBOOL WINAPI sys_GetCursorPos(LPPOINT lpPoint){
	showfunc("GetCursorPos( lpPoint: %p )", lpPoint);
	#ifdef Func_Win
		return GetCursorPos(lpPoint);
	#else
		return false;//Fail
	#endif
}

//!HMONITOR WINAPI MonitorFromPoint(POINT pt,DWORD dwFlags)
HMONITOR WINAPI sys_MonitorFromPoint(POINT pt,DWORD dwFlags){
	showfunc("MonitorFromPoint( pt: %p, dwFlags: %d )", pt, dwFlags);
	#ifdef Func_Win
		return MonitorFromPoint(pt, dwFlags);
	#else
		return 0;//Fail
	#endif
}
//!WINBOOL WINAPI SetConsoleTextAttribute(HANDLE hConsoleOutput,WORD wAttributes)
WINBOOL WINAPI sys_SetConsoleTextAttribute(HANDLE hConsoleOutput,WORD wAttributes){
	showfunc("SetConsoleTextAttribute( hConsoleOutput: %p, wAttributes: %d )", hConsoleOutput, wAttributes);
	#ifdef Func_Win
		return SetConsoleTextAttribute(hConsoleOutput, wAttributes);
	#else
		return false;//Fail
	#endif
}

//!WINBOOL WINAPI GetMonitorInfoA(HMONITOR hMonitor,LPMONITORINFO lpmi)
//!WINBOOL WINAPI GetMonitorInfoW(HMONITOR hMonitor,LPMONITORINFO lpmi)
WINBOOL WINAPI sys_GetMonitorInfoA(HMONITOR hMonitor,LPMONITORINFO lpmi){
	showfunc("GetMonitorInfoA( hMonitor: %p, lpmi: %d )", hMonitor, lpmi);
	#ifdef Func_Win
		return GetMonitorInfoA(hMonitor, lpmi);
	#else
		return false;//Fail
	#endif
}
WINBOOL WINAPI sys_GetMonitorInfoW(HMONITOR hMonitor,LPMONITORINFO lpmi){
	showfunc("GetMonitorInfoW( hMonitor: %p, lpmi: %d )", hMonitor, lpmi);
	#ifdef Func_Win
		return GetMonitorInfoW(hMonitor, lpmi);
	#else
		return false;//Fail
	#endif
}

//!WINBOOL WINAPI AdjustWindowRect(LPRECT lpRect,DWORD dwStyle,WINBOOL bMenu)
WINBOOL WINAPI sys_AdjustWindowRect(LPRECT lpRect,DWORD dwStyle,WINBOOL bMenu){
		showfunc("AdjustWindowRect( lpRect: %p, dwStyle: %d, bMenu: %d )", lpRect, dwStyle, bMenu);
	#ifdef Func_Win
		return AdjustWindowRect(lpRect, dwStyle, bMenu);
	#else
		return false;//Fail
	#endif
}

//!int WINAPI MapWindowPoints(HWND hWndFrom,HWND hWndTo,LPPOINT lpPoints,UINT cPoints)
int WINAPI sys_MapWindowPoints(HWND hWndFrom,HWND hWndTo,LPPOINT lpPoints,UINT cPoints){
	showfunc("MapWindowPoints( hWndFrom: %p, hWndTo: %d, lpPoints: %d, cPoints: %d )", hWndFrom, hWndTo, lpPoints, cPoints);
	#ifdef Func_Win
		return MapWindowPoints(hWndFrom, hWndTo, lpPoints, cPoints);
	#else
		return 0;//Fail
	#endif
}

//!WINBOOL WINAPI PtInRect(CONST RECT *lprc,POINT pt)
WINBOOL WINAPI sys_PtInRect(CONST RECT *lprc,POINT pt){
	showfunc("PtInRect( lprc: %p, pt: %d )", lprc, pt);
	#ifdef Func_Win
		return PtInRect(lprc, pt);
	#else
		return 0;//If the specified point does not lie within the rectangle, the return value is zero.
	#endif
}

//!WINBOOL WINAPI SetForegroundWindow(HWND hWnd)
WINBOOL WINAPI sys_SetForegroundWindow(HWND hWnd){
	showfunc("SetForegroundWindow( hWnd: %p )", hWnd);
	#ifdef Func_Win
		return SetForegroundWindow(hWnd);
	#else
		return false;
	#endif
}

//!int WINAPI GetDeviceCaps(HDC hdc,int index)
int WINAPI sys_GetDeviceCaps(HDC hdc,int index){
	showfunc("GetDeviceCaps( hdc: %p, index: %d )", hdc, index);
	#ifdef Func_Win
		return GetDeviceCaps(hdc, index);
	#else
		return 0;
	#endif
}

//!HPALETTE WINAPI CreatePalette(CONST LOGPALETTE *plpal)
HPALETTE WINAPI sys_CreatePalette(CONST LOGPALETTE *plpal){
	showfunc("CreatePalette( plpal: %p )", plpal);
	#ifdef Func_Win
		return CreatePalette(plpal);
	#else
		return 0;//Fail
	#endif
}

//!WINUSERAPI int WINAPI ReleaseDC(HWND hWnd,HDC hDC)
int WINAPI sys_ReleaseDC(HWND hWnd,HDC hDC){
	showfunc("ReleaseDC( hWnd: %p, hDC: %p )", hWnd, hDC);
	#ifdef Func_Win
		return ReleaseDC(hWnd, hDC);
	#else
		return 0;//Not released
	#endif
}

//!WINBOOL WINAPI SetEvent (HANDLE hEvent)
WINBOOL WINAPI sys_SetEvent (HANDLE hEvent){
	showfunc("SetEvent( hEvent: %p )", hEvent);
	#ifdef Func_Win
		return SetEvent(hEvent);
	#else
		return true;//Todo
	#endif
}

//!int WINAPI SetDIBitsToDevice(HDC hdc,int xDest,int yDest,DWORD w,DWORD h,int xSrc,int ySrc,UINT StartScan,UINT cLines,CONST VOID *lpvBits,CONST BITMAPINFO *lpbmi,UINT ColorUse);
int WINAPI sys_SetDIBitsToDevice(HDC hdc,int xDest,int yDest,DWORD w,DWORD h,int xSrc,int ySrc,UINT StartScan,UINT cLines,CONST VOID *lpvBits,CONST BITMAPINFO *lpbmi,UINT ColorUse){
	showfunc("SetDIBitsToDevice( hdc: %p, xDest: %d, yDest %d, w: %d, h: %d, xSrc: %d, ySrc: %d, StartScan: %d, cLines: %d, lpvBits: %p, lpbmi: %p, ColorUse: %p )", hdc, xDest, yDest, w, h, xSrc, ySrc, StartScan, cLines, lpvBits, lpbmi, ColorUse);
	#ifdef Func_Win
		return SetDIBitsToDevice( hdc, xDest, yDest, w, h, xSrc, ySrc, StartScan, cLines, lpvBits, lpbmi, ColorUse);
	#else
		return false;
	#endif
}

//!WINBOOL WINAPI GetKeyboardState(PBYTE lpKeyState)
WINBOOL WINAPI sys_GetKeyboardState(PBYTE lpKeyState){
	showfunc("GetKeyboardState( lpKeyState: %p )", lpKeyState);
	#ifdef Func_Win
		return GetKeyboardState(lpKeyState);
	#else
		return false;
	#endif
}

//!HCURSOR WINAPI SetCursor(HCURSOR hCursor)
HCURSOR WINAPI sys_SetCursor(HCURSOR hCursor){
	showfunc("SetCursor( hCursor: %p )", hCursor);
	#ifdef Func_Win
		return SetCursor(hCursor);
	#else
		return false;
	#endif
}

//!HDC WINAPI BeginPaint(HWND hWnd,LPPAINTSTRUCT lpPaint)
HDC WINAPI sys_BeginPaint(HWND hWnd,LPPAINTSTRUCT lpPaint){
	showfunc("BeginPaint( hWnd: %p, lpPaint:%p )", hWnd, lpPaint);
	#ifdef Func_Win
		return BeginPaint(hWnd, lpPaint);
	#else
		return 0;
	#endif
}

//!HPALETTE WINAPI SelectPalette(HDC hdc,HPALETTE hPal,WINBOOL bForceBkgd)
HPALETTE WINAPI sys_SelectPalette(HDC hdc,HPALETTE hPal,WINBOOL bForceBkgd){
	showfunc("SelectPalette( hdc: %p, hPal:%p, bForceBkgd: %d )", hdc, hPal, bForceBkgd);
	#ifdef Func_Win
		return SelectPalette( hdc, hPal, bForceBkgd);
	#else
		return 0;
	#endif
}

//!WINGDIAPI UINT WINAPI RealizePalette(HDC hdc)
UINT WINAPI sys_RealizePalette(HDC hdc){
	showfunc("RealizePalette( hdc: %p )", hdc);
	#ifdef Func_Win
		return RealizePalette( hdc );
	#else
		return 0;
	#endif
}

//!WINBOOL WINAPI InvalidateRect(HWND hWnd,CONST RECT *lpRect,WINBOOL bErase)
WINBOOL WINAPI sys_InvalidateRect(HWND hWnd,CONST RECT *lpRect,WINBOOL bErase){
	showfunc("InvalidateRect( hWnd: %p, lpRec: %p, bErase: %d )", hWnd, lpRect, bErase );
	#ifdef Func_Win
		return InvalidateRect( hWnd, lpRect, bErase );
	#else
		return 0;
	#endif
}

//!WINBOOL WINAPI EndPaint(HWND hWnd,CONST PAINTSTRUCT *lpPaint)
WINBOOL WINAPI sys_EndPaint(HWND hWnd,CONST PAINTSTRUCT *lpPaint){
	showfunc("EndPaint( hWnd: %p, lpPaint: %p )", hWnd, lpPaint );
	#ifdef Func_Win
		return EndPaint( hWnd, lpPaint);
	#else
		return false;
	#endif
}

//!WINBOOL WINAPI DestroyWindow(HWND hWnd)
WINBOOL WINAPI sys_DestroyWindow(HWND hWnd){
	showfunc("DestroyWindow( hWnd: %p )", hWnd );
	#ifdef Func_Win
		return DestroyWindow( hWnd);
	#else
		return false;
	#endif
}

//!WINBOOL WINAPI DeleteObject(HGDIOBJ ho)
WINBOOL WINAPI sys_DeleteObject(HGDIOBJ ho){
	showfunc("DeleteObject( ho: %p )", ho );
	#ifdef Func_Win
		return DeleteObject( ho);
	#else
		return false;
	#endif
}

//!WINBOOL WINAPI KillTimer(HWND hWnd,UINT_PTR uIDEvent)
WINBOOL WINAPI sys_KillTimer(HWND hWnd,UINT_PTR uIDEvent){
	showfunc("KillTimer( hWnd: %p, uIDEvent: %p )", hWnd, uIDEvent );
	#ifdef Func_Win
		return KillTimer( hWnd, uIDEvent);
	#else
		return false;
	#endif
}

//!LONG WINAPI ChangeDisplaySettingsExA(LPCSTR lpszDeviceName,LPDEVMODEA lpDevMode,HWND hwnd,DWORD dwflags,LPVOID lParam)
LONG WINAPI sys_ChangeDisplaySettingsExA(LPCSTR lpszDeviceName,LPDEVMODEA lpDevMode,HWND hwnd,DWORD dwflags,LPVOID lParam){
	showfunc("ChangeDisplaySettingsExA( lpszDeviceName: %p, lpDevMode: %p,dwflags: %p, lParam: %p )", lpszDeviceName, lpDevMode, hwnd, dwflags, lParam);
	#ifdef Func_Win
		return ChangeDisplaySettingsExA( lpszDeviceName, lpDevMode, hwnd, dwflags, lParam);
	#else
		return 0;
	#endif
}
//!WINBASEAPI WINBOOL WINAPI GetConsoleMode(HANDLE hConsoleHandle,LPDWORD lpMode)
WINBOOL WINAPI sys_GetConsoleMode(HANDLE hConsoleHandle,LPDWORD lpMode){
	showfunc("GetConsoleMode( hConsoleHandle: %p, lpMode: %d )", hConsoleHandle, lpMode );
	#ifdef Func_Win
		return GetConsoleMode( hConsoleHandle, lpMode);
	#else
		return false;
	#endif
}
//!WINBASEAPI WINBOOL WINAPI SetConsoleMode(HANDLE hConsoleHandle,DWORD dwMode)
WINBOOL WINAPI sys_SetConsoleMode(HANDLE hConsoleHandle,DWORD dwMode){
	showfunc("SetConsoleMode( hConsoleHandle: %p, dwMode: %d )", hConsoleHandle, dwMode );
	#ifdef Func_Win
		return SetConsoleMode( hConsoleHandle, dwMode);
	#else
		return false;
	#endif
}

//!WINBASEAPI WINBOOL WINAPI PeekConsoleInputA(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead);
//!WINBASEAPI WINBOOL WINAPI PeekConsoleInputW(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead);
WINBOOL WINAPI sys_PeekConsoleInputA(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead){
	showfunc("PeekConsoleInputA( hConsoleInput: %p, lpBuffer: %d, nLength: %d, lpNumberOfEventsRead: %p )", hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
	#ifdef Func_Win
		return PeekConsoleInputA( hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead );
	#else
		return false;
	#endif
}
WINBOOL WINAPI sys_PeekConsoleInputW(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead){
	showfunc("PeekConsoleInputA( PeekConsoleInputW: %p, lpBuffer: %d, nLength: %d, lpNumberOfEventsRead: %p )", hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
	#ifdef Func_Win
		return PeekConsoleInputW( hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead );
	#else
		return false;
	#endif
}

//!WINBASEAPI WINBOOL WINAPI ReadConsoleInputA(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead)
//!WINBASEAPI WINBOOL WINAPI ReadConsoleInputW(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead)
WINBOOL WINAPI sys_ReadConsoleInputA(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead){
	showfunc("ReadConsoleInputA( hConsoleInput: %p, lpBuffer: %d, nLength: %d, lpNumberOfEventsRead: %p )", hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
	#ifdef Func_Win
		return PeekConsoleInputA( hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead );
	#else
		return false;
	#endif
}
WINBOOL WINAPI sys_ReadConsoleInputW(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead){
	showfunc("sys_ReadConsoleInputW( hConsoleInput: %p, lpBuffer: %d, nLength: %d, lpNumberOfEventsRead: %p )", hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);
	#ifdef Func_Win
		return sys_ReadConsoleInputW( hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead );
	#else
		return false;
	#endif
}

//!WINBASEAPI WINBOOL WINAPI SetConsoleCtrlHandler(PHANDLER_ROUTINE HandlerRoutine,WINBOOL Add)
WINBOOL WINAPI sys_SetConsoleCtrlHandler(PHANDLER_ROUTINE HandlerRoutine,WINBOOL Add){
	showfunc("SetConsoleCtrlHandler( HandlerRoutine: %p, Add: %d )", HandlerRoutine, Add );
	#ifdef Func_Win
		return SetConsoleCtrlHandler( HandlerRoutine, Add);
	#else
		return false;
	#endif
}

//!WINBASEAPI DWORD WINAPI GetFullPathNameA (LPCSTR lpFileName, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart)
DWORD WINAPI sys_GetFullPathNameA (LPCSTR lpFileName, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart){
	showfunc("GetFullPathNameA( lpFileName: %p, nBufferLength: %d, lpBuffer: %p, lpFilePart: %p )", lpFileName, nBufferLength, lpBuffer, lpFilePart );
	#ifdef Func_Win
		return GetFullPathNameA( lpFileName, nBufferLength, lpBuffer, lpFilePart );
	#else
		return 0;
	#endif
}

//!WINBASEAPI DWORD WINAPI GetTempPathA (DWORD nBufferLength, LPSTR lpBuffer)
//!WINBASEAPI DWORD WINAPI GetTempPathW (DWORD nBufferLength, LPWSTR lpBuffer)
DWORD WINAPI  sys_GetTempPathA (DWORD nBufferLength, LPSTR lpBuffer){
	showfunc("GetTempPathA( nBufferLength: %d, lpBuffer: %p )", nBufferLength, lpBuffer );
	#ifdef Func_Win
		return GetTempPathA( nBufferLength, lpBuffer);
	#else
		const char path_temp[] = "C:\\Windows\\TEMP\\";
		if(nBufferLength >= sizeof(path_temp)){
			_memcpy(lpBuffer, path_temp, sizeof(path_temp));
		}
		return sizeof(path_temp); //If the return value is greater than nBufferLength, the return value is the length, in TCHARs, of the buffer required to hold the path.
	#endif
}
DWORD WINAPI  sys_GetTempPathW (DWORD nBufferLength, LPWSTR lpBuffer){
	showfunc("GetTempPathW( nBufferLength: %d, lpBuffer: %d )", nBufferLength, lpBuffer );
	#ifdef Func_Win
		return GetTempPathW( nBufferLength, lpBuffer);
	#else
		const wchar_t* path_temp = L"C:\\TEMP\\";
		_memcpy(lpBuffer, path_temp, sizeof(path_temp));
		return sizeof(path_temp);
	#endif
}


//!WINBASEAPI HANDLE WINAPI CreateFileA (LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
//!WINBASEAPI HANDLE WINAPI CreateFileW (LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
HANDLE WINAPI sys_CreateFileA (LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile){
 	showfunc("CreateFileA( lpFileName: %s, dwDesiredAccess: %d, dwShareMode: %d, lpSecurityAttributes: %p, dwCreationDisposition: %d, dwFlagsAndAttributes: %d, hTemplateFile: %p )", lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile );
	#ifdef Func_Win
		return CreateFileA(  lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile );
	#else
		return 0;
	#endif
 }
HANDLE WINAPI sys_CreateFileW (LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile){
 	Vla_WstrC(_lpFileName, lpFileName);
	showfunc("CreateFileW( lpFileName: %s, dwDesiredAccess: %d, dwShareMode: %d, lpSecurityAttributes: %p, dwCreationDisposition: %d, dwFlagsAndAttributes: %d, hTemplateFile: %p )", _lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile );
	#ifdef Func_Win
		return CreateFileW( lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile );
	#else
	/*
	    _sfetch_file_handle_t h = CreateFileW(
			w_path,                // lpFileName 
			GENERIC_READ,           // dwDesiredAccess 
			FILE_SHARE_READ,       // dwShareMode 
			NULL,                   // lpSecurityAttributes 
			OPEN_EXISTING,          // dwCreationDisposition 
			FILE_ATTRIBUTE_NORMAL|FILE_FLAG_SEQUENTIAL_SCAN,   // dwFlagsAndAttributes 
			NULL);                  // hTemplateFile 
		return h;
	*/
		if(dwCreationDisposition == OPEN_EXISTING){
			printf("\n OPEN_EXISTING %s: ", _lpFileName);
			
		}
		
		return 0;
	#endif
 } 

//!WINBASEAPI DWORD WINAPI GetFileSize (HANDLE hFile, LPDWORD lpFileSizeHigh)
DWORD WINAPI sys_GetFileSize (HANDLE hFile, LPDWORD lpFileSizeHigh){
	showfunc("GetFileSize( hFile: %p, lpFileSizeHigh: %d )", hFile, lpFileSizeHigh );
	#ifdef Func_Win
		return GetFileSize( hFile, lpFileSizeHigh );
	#else
		return XeGI_GetFileSize((uint32_t)hFile);
	#endif
}

//!WINBASEAPI WINBOOL WINAPI SetFilePointerEx (HANDLE hFile, LARGE_INTEGER liDistanceToMove, PLARGE_INTEGER lpNewFilePointer, DWORD dwMoveMethod)
WINBOOL WINAPI sys_SetFilePointerEx(HANDLE hFile, LARGE_INTEGER liDistanceToMove, PLARGE_INTEGER lpNewFilePointer, DWORD dwMoveMethod){
	showfunc("SetFilePointerEx( hFile: %p, liDistanceToMove: %d, lpNewFilePointer %p, dwMoveMethod: %d )", hFile, liDistanceToMove, lpNewFilePointer, dwMoveMethod);
	#ifdef Func_Win
		return SetFilePointerEx( hFile, liDistanceToMove, lpNewFilePointer, dwMoveMethod );
	#else
		return true; //TODO file seek
	#endif
}

//!WINBASEAPI WINBOOL WINAPI ReadFile (HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped);
WINBOOL WINAPI sys_ReadFile (HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped){
	showfunc("ReadFile( hFile: %p, lpBuffer: %d, nNumberOfBytesToRead %d, lpNumberOfBytesRead: %p, lpOverlapped: %p )", hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
	#ifdef Func_Win
		return ReadFile( hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped );
	#else
		return XeGI_ReadFile((hdl_t)hFile, lpBuffer, nNumberOfBytesToRead); //TODO file seek
	#endif
}

//!WINBASEAPI WINBOOL WINAPI CreateProcessA (LPCSTR lpApplicationName, LPSTR lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes, WINBOOL bInheritHandles, DWORD dwCreationFlags, LPVOID lpEnvironment, LPCSTR lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation)
//!WINBASEAPI WINBOOL WINAPI CreateProcessW (LPCWSTR lpApplicationName, LPWSTR lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes, WINBOOL bInheritHandles, DWORD dwCreationFlags, LPVOID lpEnvironment, LPCWSTR lpCurrentDirectory, LPSTARTUPINFOW lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation)
WINBOOL WINAPI sys_CreateProcessA (LPCSTR lpApplicationName, LPSTR lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes, WINBOOL bInheritHandles, DWORD dwCreationFlags, LPVOID lpEnvironment, LPCSTR lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation){
	showfunc("CreateProcessA( lpApplicationName: %s, lpCommandLine: %s, lpProcessAttributes: %p, lpThreadAttributes: %p, bInheritHandles: %p, dwCreationFlags: %d, lpEnvironment: %p, lpCurrentDirectory: %p, lpStartupInfo: %p, lpProcessInformation: %p )", lpApplicationName, lpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles, dwCreationFlags, lpEnvironment, lpCurrentDirectory, lpStartupInfo, lpProcessInformation );
	#ifdef Func_Win
		bool ret =  CreateProcessA( lpApplicationName, lpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles, dwCreationFlags, lpEnvironment, lpCurrentDirectory, lpStartupInfo, lpProcessInformation );
	#else
		bool ret = false ;
	#endif
	showinf("ret: %d", ret);
	return ret;
}

//!WINBASEAPI WINBOOL WINAPI GetExitCodeProcess (HANDLE hProcess, LPDWORD lpExitCode)
WINBOOL WINAPI sys_GetExitCodeProcess (HANDLE hProcess, LPDWORD lpExitCode) {
 	showfunc("GetExitCodeProcess( hProcess: %p, lpExitCode: %p )", hProcess, lpExitCode);
	#ifdef Func_Win
		bool ret = GetExitCodeProcess( hProcess, lpExitCode );
	#else
		bool ret = false ;
	#endif
	showinf("ret: %d, *lpExitCode: %d", ret,  *lpExitCode);
	return ret;
}

//!WINBASEAPI WINBOOL WINAPI GlobalMemoryStatusEx (LPMEMORYSTATUSEX lpBuffer)
typedef struct _MEMORYSTATUSEX_ {
  DWORD     dwLength;
  DWORD     dwMemoryLoad;
  DWORDLONG ullTotalPhys;
  DWORDLONG ullAvailPhys;
  DWORDLONG ullTotalPageFile;
  DWORDLONG ullAvailPageFile;
  DWORDLONG ullTotalVirtual;
  DWORDLONG ullAvailVirtual;
  DWORDLONG ullAvailExtendedVirtual;
} _MEMORYSTATUSEX_, *LPMEMORYSTATUSEX_;
 WINBOOL WINAPI sys_GlobalMemoryStatusEx (LPMEMORYSTATUSEX_ lpBuffer){
	showfunc("GlobalMemoryStatusEx( lpBuffer: %p )", lpBuffer);
	#ifdef Func_Win
		return GlobalMemoryStatusEx((LPMEMORYSTATUSEX)lpBuffer );
	#else
	
		return true;
	#endif
}

//!SHSTDAPI_(void) DragAcceptFiles (HWND hWnd, WINBOOL fAccept)
WINAPI void sys_DragAcceptFiles(HWND hWnd, WINBOOL fAccept){
	showfunc("DragAcceptFiles( hWnd: %p, fAccept: %d )", hWnd, fAccept );
	#ifdef Func_Win
		DragAcceptFiles( hWnd, fAccept );
	#else
	#endif
}


/*
  typedef struct tagWNDCLASSW {
    UINT style;
    WNDPROC lpfnWndProc;
    int cbClsExtra;
    int cbWndExtra;
    HINSTANCE hInstance;
    HICON hIcon;
    HCURSOR hCursor;
    HBRUSH hbrBackground;
    LPCWSTR lpszMenuName;
    LPCWSTR lpszClassName;
  } WNDCLASSW,*PWNDCLASSW,*NPWNDCLASSW,*LPWNDCLASSW;
*/
#define MAX_WND_CLASS 20

typedef LRESULT (*func_WndProc)( HWND hwnd,UINT msg,WPARAM wParam,LPARAM lParam);
func_WndProc aWndProc[MAX_WND_CLASS] = {};
short aWndProc_idx = 0;

//!ATOM WINAPI RegisterClassA (CONST WNDCLASSA *lpWndClass)
//!ATOM RegisterClassW(const WNDCLASSW *lpWndClass)
inl ATOM WINAPI sys_RegisterClassA(const WNDCLASSA *lpWndClass){
	showfunc("RegisterClassA( value: %p )", lpWndClass);
	#ifdef Func_Win
		return RegisterClassA((WNDCLASSA*)lpWndClass);
	#else
		if(aWndProc_idx < MAX_WND_CLASS){
		    aWndProc[aWndProc_idx] = (func_WndProc)lpWndClass->lpfnWndProc;//WNDPROC
			aWndProc_idx++;
		}
		return 0;
	#endif
}
inl ATOM WINAPI sys_RegisterClassW(const WNDCLASSW *lpWndClass){
	showfunc("RegisterClassW( value: %p )", lpWndClass);
	#ifdef Func_Win
		return RegisterClassW((WNDCLASSW*)lpWndClass);
	#else
		if(aWndProc_idx < MAX_WND_CLASS){
		    aWndProc[aWndProc_idx] = (func_WndProc)lpWndClass->lpfnWndProc;//WNDPROC
			aWndProc_idx++;
		}
		return 0;
	#endif
}

//!WINBOOL WINAPI UnregisterClassA (LPCSTR lpClassName, HINSTANCE hInstance)
//!WINBOOL WINAPI UnregisterClassW (LPCWSTR lpClassName, HINSTANCE hInstance)
WINBOOL WINAPI sys_UnregisterClassA (LPCSTR lpClassName, HINSTANCE hInstance){
	showfunc("UnregisterClassA( lpClassName: %p, hInstance: %p)", lpClassName, hInstance);
	#ifdef Func_Win
		return UnregisterClassA(lpClassName, hInstance);
	#else
		return false;
	#endif
}
WINBOOL WINAPI sys_UnregisterClassW (LPCSTR lpClassName, HINSTANCE hInstance){
	showfunc("UnregisterClassW( lpClassName: %p, hInstance: %p)", lpClassName, hInstance);
	#ifdef Func_Win
		return sys_UnregisterClassW(lpClassName, hInstance);
	#else
		return false;
	#endif
}

#ifdef ShowPixView
extern float pixView_mouse_x;
extern float pixView_mouse_y;
extern bool bLButtonDown; 
#else
bool bLButtonDown  = false;
#endif
bool bLButtonDown_last  = false;

inl void impl_GetMessages(HWND hWnd_Filter){ //if hWnd_Filter=0 -> all
	for(int i = 0; i < aWndProc_idx; i++){
		//Call all WndProc messages
		
		HWND _hWnd = (HWND)1;
		UINT uMsg = 1;
		LPARAM lparam = 0;
		WPARAM wParam = 0;

/*
	    uMsg = WM_MOUSEMOVE;
		
		#ifdef ShowPixView
			static int j = 0;j++;
			lparam = SETLPARAM(pixView_mouse_x,pixView_mouse_y);
			showinf("mouse[%d]: %f, mouse_Y: %f, bLButtonDown:d",i, pixView_mouse_x, pixView_mouse_y, bLButtonDown);
			//TODO Multi msg
		
		#endif
		
		#ifdef CpcDos
			
			lparam = SETLPARAM(oCpc->Mouse_state(1),oCpc->Mouse_state(2));
			
			if((oCpc->Mouse_state(1) & 0x01) == 0x01){
				bLButtonDown = true;
			}else{
				bLButtonDown = false;
			}
			showinf("mouse[%d]: lparam: %p, bLButtonDown:d",i, lparam, bLButtonDown);
		#endif
			
		
		if(bLButtonDown != bLButtonDown_last){
			bLButtonDown_last = bLButtonDown;
			if(bLButtonDown){
				uMsg = WM_LBUTTONDOWN;
			}else{
				uMsg = WM_LBUTTONUP;
			}
		}
*/
		for(int j = 0; j < aSysMsg.size; j++){
			XEGI_SysMsg msg = aSysMsg.data[j];
			
			switch (msg.type.val)
			{
			_case XEGI_Msg_LBUTTONDOWN:{	uMsg = WM_LBUTTONDOWN;
			}
			_case XEGI_Msg_LBUTTONUP:{		uMsg = WM_LBUTTONUP;
			}
			_case XEGI_Msg_MOUSEMOVE:
			{		
				uMsg = WM_MOUSEMOVE;
				lparam = SETLPARAM(msg.x,msg.y);
			}
			}
			aWndProc[i](_hWnd,uMsg,wParam,lparam); //Call DefWindowProc (When return)
		}
	}
	aSysMsg(reset);
}
/*
	WM_MOUSEMOVE
	GET_X_LPARAM(lParam)

	WM_CLOSE
	WM_SYSCOMMAND
		SC_SCREENSAVE
		SC_MONITORPOWER
		SC_KEYMENU
	WM_ERASEBKGND
	WM_SIZE 
		SIZE_MINIMIZED 
		SAPP_EVENTTYPE_ICONIFIED
		SAPP_EVENTTYPE_RESTORED
	WM_SETCURSOR
	WM_LBUTTONDOWN
		SAPP_EVENTTYPE_MOUSE_DOWN
		SAPP_MOUSEBUTTON_LEFT
		SAPP_MOUSEBUTTON_RIGHT
		SAPP_MOUSEBUTTON_MIDDLE
	WM_MOUSEMOVE
	WM_MBUTTONUP
	WM_MBUTTONDOWN
	WM_INPUT
	WM_MOUSELEAVE
	WM_MOUSEWHEEL
	WM_KEYUP
	WM_SYSKEYUP
	WM_CHAR
*/

//!LRESULT WINAPI DefWindowProcA (HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
//!LRESULT WINAPI DefWindowProcW (HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
LRESULT WINAPI sys_DefWindowProcA (HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam){
	showfunc("DefWindowProcA( hWnd: %p, Msg: %p, wParam: %p, lParam: %p )", hWnd, Msg, wParam, lParam);
	#ifdef Func_Win
		return DefWindowProcA(hWnd, Msg, wParam, lParam);
	#else
		return 0;
	#endif
}
LRESULT WINAPI sys_DefWindowProcW (HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam){
	showfunc("DefWindowProcW( hWnd: %p, Msg: %p, wParam: %p, lParam: %p )", hWnd, Msg, wParam, lParam);
	#ifdef Func_Win
		return DefWindowProcW(hWnd, Msg, wParam, lParam);
	#else
		return 0;
	#endif
}


//!WINBOOL WINAPI PeekMessageA(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg)
//!WINBOOL WINAPI PeekMessageW(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg)
WINBOOL WINAPI sys_PeekMessageA(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg){
 	showfunc_opt("PeekMessageA( lpMsg: %p, hWnd: %p, wMsgFilterMin: %d, wMsgFilterMax: %d, wRemoveMsg: %d )", lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg );
	#ifdef Func_Win
		return PeekMessageA( lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg );
	#else
		impl_GetMessages(hWnd);
		return false;
	#endif
}
WINBOOL WINAPI sys_PeekMessageW(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg){
 	showfunc_opt("PeekMessageW( lpMsg: %p, hWnd: %p, wMsgFilterMin: %d, wMsgFilterMax: %d, wRemoveMsg: %d )", lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg );
	#ifdef Func_Win
		return PeekMessageW(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);
	#else
		impl_GetMessages(hWnd);
		return false;
	#endif
}


extern funcPtr_int _dFunc_wglGetPixelFormat;
//!int GetPixelFormat(HDC hdc)
inl BOOL WINAPI sys_GetPixelFormat(HDC hdc){
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
inl BOOL WINAPI sys_SetPixelFormat(void* hdc, int format, void* ppfd){
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
inl int WINAPI sys_ChoosePixelFormat(void* hdc, void* ppfd){
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
inl int WINAPI sys_DescribePixelFormat(HDC hdc,int iPixelFormat,UINT nBytes,LPPIXELFORMATDESCRIPTOR ppfd){
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
BOOL WINAPI sys_SwapBuffers(HDC hdc){
	showfunc_opt("SwapBuffers( hdc: %p )", hdc);
	if(_dFunc_wglSwapBuffers != 0){
		return _dFunc_wglSwapBuffers(hdc);
	}
	#ifdef Func_Win
		//_sapp.wgl.ChoosePixelFormat(_sapp.wgl.msg_dc, &pfd);
		return SwapBuffers((HDC)hdc);
	#else
		return true;
	#endif
}

//!BOOL AdjustWindowRectEx(LPRECT lpRect,DWORD  dwStyle,BOOL bMenu,DWORD  dwExStyle)
inl BOOL WINAPI sys_AdjustWindowRectEx(LPRECT lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle){
	showfunc("AdjustWindowRectEx( lpRect: %p, dwStyle: %d, bMenu: %d, dwExStyle: %p )", lpRect, dwStyle, bMenu, dwExStyle);
	#ifdef Func_Win
		return AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle);
	#else
		return true;
	#endif
}

//!BOOL ShowWindow(HWND hWnd,int nCmdShow);
inl BOOL WINAPI  sys_ShowWindow(HWND hWnd,int nCmdShow){
	showfunc("ShowWindow( hWnd: %p, nCmdShow: %d)", hWnd, nCmdShow);
	#ifdef Func_Win
		return ShowWindow(hWnd, nCmdShow);
	#else
		return true;
	#endif
}

//!HMODULE GetModuleHandleA(LPCSTR  lpModuleName)
//!HMODULE GetModuleHandleW(LPCWSTR lpModuleName)
inl HMODULE  WINAPI sys_GetModuleHandleA(LPCSTR lpModuleName){
	showfunc("GetModuleHandleA( lpModuleName: %s)", lpModuleName);
	#ifdef Func_Win
		return GetModuleHandleA(lpModuleName);
	#else
		return 0;
	#endif
}
inl HMODULE  WINAPI sys_GetModuleHandleW(LPCWSTR lpModuleName){
	Vla_WstrC(_lpModuleName, lpModuleName);
	showfunc("GetModuleHandleW( lpModuleName: %s)", _lpModuleName); //TODO wide str
	
	#ifdef Func_Win
		return GetModuleHandleW(lpModuleName);
	#else
		//wprintf(L"\nlpModuleName: %ws\n", lpModuleName );
		return 0;
	#endif
}

///////////////// HERE OK ////////////
//#undef Func_Win
////////////////////////////////

//!HCURSOR LoadCursorA(HINSTANCE hInstance,LPCSTR lpCursorName)
//!HCURSOR LoadCursorW(HINSTANCE hInstance,LPCWSTR lpCursorName)
HCURSOR WINAPI sys_LoadCursorA(HINSTANCE hInstance, LPCSTR lpCursorName){
	//showfunc("LoadCursorA( hInstance: %p, lpCursorName: %s)", hInstance, lpCursorName);
	showfunc("LoadCursorA( hInstance: %p, lpCursorName: %p)", hInstance, lpCursorName);
	#ifdef Func_Win
		return LoadCursorA(hInstance, lpCursorName);
	#else
		return 0;
	#endif
}
HCURSOR WINAPI sys_LoadCursorW(HINSTANCE hInstance, LPCWSTR lpCursorName){
	Vla_WstrC(_lpCursorName, lpCursorName);
	showfunc("LoadCursorW( hInstance: %p, lpCursorName: %s)", hInstance, _lpCursorName);//TODO ewide str
	#ifdef Func_Win
		return LoadCursorW(hInstance, lpCursorName);
	#else
		return 0;
	#endif
}

//!HICON LoadIconA(HINSTANCE hInstance, LPCSTR lpIconName)
//!HICON LoadIconW(HINSTANCE hInstance, LPCWSTR lpIconName)
HICON WINAPI sys_LoadIconA(HINSTANCE hInstance, LPCSTR lpIconName){
	showfunc("LoadIconA( hInstance: %p, lpIconName: %p)", hInstance, lpIconName); //Bug on print iconName %s (Ressource not loaded?) 
	#ifdef Func_Win
		return LoadIconA(hInstance, lpIconName);
	#else
		return 0;
	#endif
}
HICON WINAPI sys_LoadIconW(HINSTANCE hInstance, LPCWSTR lpIconName){
	Vla_WstrC(_lpIconName, lpIconName);
	showfunc("LoadIconW( hInstance: %p, lpIconName: %s)", hInstance, _lpIconName);//TODO ewide str
	#ifdef Func_Win
		return LoadIconW(hInstance, lpIconName);
	#else
		return 0;
	#endif
}

//!BOOL WINAPI CloseHandle(HANDLE hObject)
 BOOL WINAPI sys_CloseHandle(HANDLE hObject){
	showfunc_opt("CloseHandle( hObject: %p)", hObject); 
	#ifdef Func_Win
		return CloseHandle(hObject);
	#else
		return true;
	#endif
}

//!SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD     dwThreadId)
 HHOOK WINAPI sys_SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD     dwThreadId){
	showfunc("SetWindowsHookExA( idHook: %d, lpfn:%p, hmod:%p, dwThreadId:%p )", idHook, lpfn, hmod, dwThreadId);
	#ifdef Func_Win
		return SetWindowsHookExA(idHook,lpfn,hmod,dwThreadId);
	#else
		return 0;
	#endif
}

//!LRESULT CallNextHookEx(HHOOK hhk, int nCode, WPARAM wParam,LPARAM lParam)
 LRESULT WINAPI sys_CallNextHookEx(HHOOK hhk, int nCode, WPARAM wParam,LPARAM lParam){
	showfunc("CallNextHookEx( hhk: %d, nCode:%d, wParam:%p, lParam:%p )", hhk, nCode, wParam, lParam);
	#ifdef Func_Win
		return CallNextHookEx(hhk,nCode,wParam,lParam);
	#else
		return 0;
	#endif
}

//!BOOL EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD ModeNum,DEVMODEA *lpDevMode)
 BOOL WINAPI sys_EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD ModeNum,DEVMODEA *lpDevMode){
	showfunc("EnumDisplaySettingsA( lpszDeviceName: %p, ModeNum: %d, lpDevMode: %d)", lpszDeviceName, ModeNum, lpDevMode);
	#ifdef Func_Win
		return EnumDisplaySettingsA(lpszDeviceName,ModeNum,lpDevMode);
	#else
		return 0;
	#endif

}

//!int _set_error_mode(int mode_val)
int sys_set_error_mode(int mode_val){
	showfunc("_set_error_mode( mode_val: %d )", mode_val);
	return 0;
}

//!int setvbuf ( FILE * stream, char * buffer, int mode, size_t size );
inl int sys_setvbuf( FILE * stream, char * buffer, int mode, size_t size ){
	showfunc("pipe_setvbuf( stream: %p, buffer: %p, mode: %d, size:%d )", stream, buffer, mode, size);
	return 0; //TODO crash?
	//#ifdef Func_Win
	//return setvbuf(stream, buffer, mode, size);
	//#else
	//return 0;
	//#endif
}

//!HANDLE  CreateToolhelp32Snapshot(DWORD  dwFlags,DWORD  th32ProcessID)
inl HANDLE WINAPI sys_CreateToolhelp32Snapshot(DWORD  dwFlags,DWORD  th32ProcessID){
	showfunc("CreateToolhelp32Snapshot( dwFlags: %p, th32ProcessID: %p )", dwFlags,th32ProcessID);
	return INVALID_HANDLE_VALUE;//INVALID_HANDLE_VALUE //TODO
}


//!void GetSystemInfo( LPSYSTEM_INFO lpSystemInfo)
void WINAPI sys_GetSystemInfo( LPSYSTEM_INFO lpSystemInfo){
	//A pointer to a SYSTEM_INFO structure that receives the information.
	showfunc("GetSystemInfo( lpSystemInfo:%p )",lpSystemInfo);
	#ifdef Func_Win
	GetSystemInfo(lpSystemInfo);
	#else
	
//In 32bit System, value is 64KB(65536 Bytes)
//It would depend on the CPU architecture and its implementation of pages and paging table

//"Page size and granularity are the same."  Wrong!
//Page size is the size of each memory "page" in the memory paging model of virtual memory.  It's the size of the span of addresses having the same address translation (between virtual addresses and physical addresses).  
//Although x86 CPUs support 2 MiB pages and 4 MiB pages, and x64 CPUs support 1 GiB pages (and multiple sizes ranging from 4 kiB through 256 MiB), I think only 4 kiB pages have been in commonplace use for personal computer users.
//Allocation granularity is a rather arbitrary value that Microsoft selected.  From the MSDN documentation for the SYSTEM_INFO structure: dwAllocationGranularity
//The granularity with which virtual memory is allocated.
//For example, a VirtualAlloc request to allocate 1 byte will reserve an address space of dwAllocationGranularity bytes.
//This value was hard coded as 64 KB in the past, but other hardware architectures may require different values.
//On my 64-bit Windows 7 system, with 12 GiB of RAM, "dwPageSize" is 4096 bytes, and "dwAllocationGranularity" is 65536 bytes (i.e., 64 kiB, which was imprecisely called "64 KB" in the documentation).
/*
	GetSystemInfo(lpSystemInfo);
	printf("\n wProcessorArchitecture: %d", lpSystemInfo->wProcessorArchitecture);
	printf("\n wReserved: %d", lpSystemInfo->wReserved);
	printf("\n dwPageSize: %d", lpSystemInfo->dwPageSize);
	printf("\n lpMinimumApplicationAddress: %d", lpSystemInfo->lpMinimumApplicationAddress);
	printf("\n lpMaximumApplicationAddress: %d", lpSystemInfo->lpMaximumApplicationAddress);
	printf("\n dwActiveProcessorMask: %d", lpSystemInfo->dwActiveProcessorMask);
	printf("\n dwNumberOfProcessors: %d", lpSystemInfo->dwNumberOfProcessors);
	printf("\n dwProcessorType: %d", lpSystemInfo->dwProcessorType);
	printf("\n dwAllocationGranularity: %d", lpSystemInfo->dwAllocationGranularity); //Needed for mesa
	printf("\n wProcessorLevel: %d", lpSystemInfo->wProcessorLevel);
	printf("\n wProcessorRevision: %d", lpSystemInfo->wProcessorRevision);
	*/
/*
O>  wProcessorArchitecture: 0
O>  wReserved: 0
O>  dwPageSize: 4096
O>  lpMinimumApplicationAddress: 65536
O>  lpMaximumApplicationAddress: -65537
O>  dwActiveProcessorMask: 255
O>  dwNumberOfProcessors: 8
O>  dwProcessorType: 586
O>  dwAllocationGranularity: 65536
O>  wProcessorLevel: 6
O>  wProcessorRevision: 15363
/////////////////////////////
O>  wProcessorArchitecture: 0
O>  wReserved: 0
O>  dwPageSize: 4096
O>  lpMinimumApplicationAddress: 65536
O>  lpMaximumApplicationAddress: -65537
O>  dwActiveProcessorMask: 15
O>  dwNumberOfProcessors: 4
O>  dwProcessorType: 586
O>  dwAllocationGranularity: 65536
O>  wProcessorLevel: 6
O>  wProcessorRevision: 10759
*/

//Hardcoded typical data
lpSystemInfo->wProcessorArchitecture = 0;
lpSystemInfo->wReserved = 0;
lpSystemInfo->dwPageSize = 4096;
lpSystemInfo->lpMinimumApplicationAddress = (void*) 65536;
lpSystemInfo->lpMaximumApplicationAddress = (void*)-65537;
lpSystemInfo->dwActiveProcessorMask = 0;//TODO
lpSystemInfo->dwNumberOfProcessors = 4;	//TODO
lpSystemInfo->dwProcessorType = 586;	//TODO
lpSystemInfo->dwAllocationGranularity = 65536; //Needed for LLVM
lpSystemInfo->wProcessorLevel = 6; 		//TODO
lpSystemInfo->wProcessorRevision = 0;

/*
//LLVM
  SYSTEM_INFO  Info;
  ::GetSystemInfo(&Info);
  if (Info.dwPageSize > Info.dwAllocationGranularity)
	return Info.dwPageSize;
  else
	return Info.dwAllocationGranularity;
*/
	#endif
}


//!VOID WINAPI sys_GetNativeSystemInfo (LPSYSTEM_INFO lpSystemInfo)
VOID WINAPI sys_GetNativeSystemInfo(LPSYSTEM_INFO lpSystemInfo){
	showfunc("GetNativeSystemInfo( lpSystemInfo:%p )", lpSystemInfo);
	#ifdef Func_Win
	GetNativeSystemInfo(lpSystemInfo);
	#else
/*	
	GetNativeSystemInfo(lpSystemInfo);
	printf("\n wProcessorArchitecture: %d", lpSystemInfo->wProcessorArchitecture);
	printf("\n wReserved: %d", lpSystemInfo->wReserved);
	printf("\n dwPageSize: %d", lpSystemInfo->dwPageSize);
	printf("\n lpMinimumApplicationAddress: %d", lpSystemInfo->lpMinimumApplicationAddress);
	printf("\n lpMaximumApplicationAddress: %d", lpSystemInfo->lpMaximumApplicationAddress);
	printf("\n dwActiveProcessorMask: %d", lpSystemInfo->dwActiveProcessorMask);
	printf("\n dwNumberOfProcessors: %d", lpSystemInfo->dwNumberOfProcessors);
	printf("\n dwProcessorType: %d", lpSystemInfo->dwProcessorType);
	printf("\n dwAllocationGranularity: %d", lpSystemInfo->dwAllocationGranularity); //Needed for mesa
	printf("\n wProcessorLevel: %d", lpSystemInfo->wProcessorLevel);
	printf("\n wProcessorRevision: %d", lpSystemInfo->wProcessorRevision);

O>  wProcessorArchitecture: 9
O>  wReserved: 0
O>  dwPageSize: 4096
O>  lpMinimumApplicationAddress: 65536
O>  lpMaximumApplicationAddress: -65537
O>  dwActiveProcessorMask: 15
O>  dwNumberOfProcessors: 4
O>  dwProcessorType: 8664
O>  dwAllocationGranularity: 65536
O>  wProcessorLevel: 6
O>  wProcessorRevision: 10759.
*/
//Hardcoded typical data
lpSystemInfo->wProcessorArchitecture = 0;
lpSystemInfo->wReserved = 0;
lpSystemInfo->dwPageSize = 4096;
lpSystemInfo->lpMinimumApplicationAddress = (void*) 65536;
lpSystemInfo->lpMaximumApplicationAddress = (void*)-65537;
lpSystemInfo->dwActiveProcessorMask = 0;//TODO
lpSystemInfo->dwNumberOfProcessors = 4;	//TODO
lpSystemInfo->dwProcessorType = 586;	//TODO (May be different from GetSystemInfo)
lpSystemInfo->dwAllocationGranularity = 65536; //Needed for LLVM
lpSystemInfo->wProcessorLevel = 6; 		//TODO
lpSystemInfo->wProcessorRevision = 0;

	#endif
}

//!WINBOOL WINAPI FlushInstructionCache (HANDLE hProcess, LPCVOID lpBaseAddress, SIZE_T dwSize)
WINBOOL WINAPI sys_FlushInstructionCache (HANDLE hProcess, LPCVOID lpBaseAddress, SIZE_T dwSize){
	showfunc_opt("FlushInstructionCache( hProcess:%p, lpBaseAddress:%d, dwSize:%d )",hProcess, lpBaseAddress, dwSize);
	#ifdef Func_Win
	return FlushInstructionCache(hProcess, lpBaseAddress, dwSize);
	#else
	//Applications should call FlushInstructionCache if they generate or modify code in memory. 
	//The CPU cannot detect the change, and may execute the old code it cached.
	//return FlushInstructionCache(hProcess, lpBaseAddress, dwSize); //TODO
	return true;
	#endif
}
 
//!BOOL ClientToScreen(HWND    hWnd,LPPOINT lpPoint)
inl WINAPI BOOL sys_ClientToScreen(HWND hWnd,LPPOINT lpPoint){
	showfunc_opt("ClientToScreen( hWnd:%p, lpPoint.x:%d, lpPoint.y:%d )",hWnd, lpPoint->x, lpPoint->y);
	#ifdef Func_Win
	return ClientToScreen(hWnd, lpPoint);
	#else
	return true;
	#endif
}

//!BOOL ScreenToClient(HWND hWnd,LPPOINT lpPoint)
BOOL WINAPI sys_ScreenToClient(HWND hWnd,LPPOINT lpPoint){
	showfunc("ScreenToClient( %d, lpPoint: %p )", hWnd ,lpPoint);
	#ifdef Func_Win
	return ScreenToClient(hWnd, lpPoint);
	#else
	return 0;
	#endif	
}

//!BOOL GetCursorInfo(PCURSORINFO pci)
BOOL WINAPI sys_GetCursorInfo(PCURSORINFO pci){
	showfunc("pipe_GetCursorInfo( pci: %p )", pci);
	#ifdef Func_Win
	return GetCursorInfo(pci);
	#else
	return 0;
	#endif	
}

//!BOOL SetWindowPos(HWND hWnd,HWND hWndInsertAfter,int  X,int  Y,int  cx,int  cy,UINT uFlags)
BOOL WINAPI sys_SetWindowPos(HWND hWnd,HWND hWndInsertAfter,int  X,int  Y,int  cx,int  cy,UINT uFlags){
	showfunc("SetWindowPos( hWnd: %p, hWndInsertAfter: %p, X: %d, Y: %d, cw: %d, cy: %d, uFlags: %d )", hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
	#ifdef Func_Win
	return SetWindowPos(hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
	#else
	//here
	
	return true;
	#endif	
}

//!HMONITOR MonitorFromRect(LPCRECT lprc,DWORD   dwFlags)
HMONITOR WINAPI sys_MonitorFromRect(LPCRECT lprc,DWORD   dwFlags){
	showfunc("MonitorFromRect( lprc: %p, dwFlags: %p )", lprc, dwFlags);
	#ifdef Func_Win 
	return MonitorFromRect(lprc, dwFlags);
	#else
	return 0;
	#endif	
}

//!BOOL InitializeCriticalSectionEx(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount,DWORD Flags)
BOOL WINAPI sys_InitializeCriticalSectionEx(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount,DWORD Flags){
	showfunc("InitializeCriticalSectionEx( lpCriticalSection: %p, dwSpinCount: %p, Flags: %p )", lpCriticalSection, dwSpinCount, Flags);
	#ifdef Func_Win 
	return InitializeCriticalSectionEx(lpCriticalSection, dwSpinCount, Flags);
	#else
	return 0;
	#endif	
}

//!BOOL IsProcessorFeaturePresent(DWORD ProcessorFeature)
BOOL WINAPI sys_IsProcessorFeaturePresent(DWORD ProcessorFeature){
	showfunc("IsProcessorFeaturePresent( ProcessorFeature: %p )", ProcessorFeature);
	#ifdef Func_Win 
	return IsProcessorFeaturePresent(ProcessorFeature);
	#else
	return false;
	#endif	
}

//!BOOL InitializeCriticalSectionAndSpinCount(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount)
BOOL WINAPI sys_InitializeCriticalSectionAndSpinCount(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount){
	showfunc("InitializeCriticalSectionAndSpinCount( lpCriticalSection: %p,  dwSpinCount: %p )", lpCriticalSection, dwSpinCount);
	#ifdef Func_Win 
	return InitializeCriticalSectionAndSpinCount(lpCriticalSection, dwSpinCount);
	#else
	return true;
	#endif	
}

//!WINBOOL WINAPI IsDebuggerPresent (VOID)
BOOL WINAPI sys_IsDebuggerPresent(){
	showfunc("IsDebuggerPresent( )", "");
	#ifdef Func_Win 
	return IsDebuggerPresent();
	#else
	return false;
	#endif	
}

//!LONG WINAPI UnhandledExceptionFilter(_EXCEPTION_POINTERS *ExceptionInfo)
LONG WINAPI sys_UnhandledExceptionFilter(void* ExceptionInfo){
	showfunc("UnhandledExceptionFilter( ExceptionInfo: %p )", ExceptionInfo);
	#ifdef Func_Win 
	return UnhandledExceptionFilter(ExceptionInfo);
	#else
	return false;
	#endif	
}

//!HANDLE WINAPI GetCurrentProcess()
HANDLE WINAPI sys_GetCurrentProcess(){
	showfunc_opt("GetCurrentProcess( )", "");
	#ifdef Func_Win 
	return GetCurrentProcess();
	#else
	return 0;
	#endif	
}

//!BOOL WINAPI TerminateProcess(HANDLE hProcess,UINT   uExitCode)
BOOL WINAPI sys_TerminateProcess(HANDLE hProcess,UINT uExitCode){
	showfunc("TerminateProcess( hProcess: %p, uExitCode: %d )", hProcess, uExitCode);
	#ifdef Func_Win 
	return TerminateProcess(hProcess, uExitCode);
	#else
	return false;
	#endif	
}


//!VOID WINAPI GetStartupInfoA (LPSTARTUPINFOA lpStartupInfo)
//!VOID WINAPI GetStartupInfoW (LPSTARTUPINFOW lpStartupInfo)
VOID WINAPI sys_GetStartupInfoA(LPSTARTUPINFOA lpStartupInfo){
	showfunc("GetStartupInfoA( lpStartupInfo: %p)", lpStartupInfo);
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
	GetStartupInfoA(lpStartupInfo);
	#else
	#endif	
}
VOID WINAPI sys_GetStartupInfoW(LPSTARTUPINFOW lpStartupInfo){
	showfunc("GetStartupInfoW( lpStartupInfo: %p)", lpStartupInfo);
	#ifdef Func_Win 
	GetStartupInfoW(lpStartupInfo);
	#else
	#endif	
}

//!char* setlocale(int category, const char* locale)
char* sys_setlocale(int category, const char* locale){
	showfunc_opt("setlocale( category: %d, locale: %s )", category, locale);
	return setlocale(category, locale); //required?
}

//!char* getenv (const char* name)
const char* sys_getenv(const char* name){
	showfunc("getenv( name: %s )", name);
	if(strcmp(name, "GALLIUM_PRINT_OPTIONS") == 0 ){
		return "yes";
	}
	if(strcmp(name, "LP_NUM_THREADS") == 0 ){
		return "0";
	}
	if(strcmp(name, "GALLIUM_DRIVER") == 0 ){
		//return "softpipe";
		return "llvmpipe";
		//return "swr";
	}
	
	if(strcmp(name, "ST_DEBUG") == 0 ){
		return "tgsi";
	}
	
	return 0;
	
	if(strcmp(name, "MESA_DEBUG") == 0 ){
	 // { "silent", DEBUG_SILENT }, /* turn off debug messages */
     // { "flush", DEBUG_ALWAYS_FLUSH }, /* flush after each drawing command */
     // { "incomplete_tex", DEBUG_INCOMPLETE_TEXTURE },
      //{ "incomplete_fbo", DEBUG_INCOMPLETE_FBO },
     // { "context", DEBUG_CONTEXT } /* force set GL_CONTEXT_FLAG_DEBUG_BIT flag */
		return "yes";
	}
	if(strcmp(name, "MESA_VERBOSE") == 0 ){
		return "yes";
	}
	if(strcmp(name, "LIBGL_DEBUG") == 0 ){
		return "verbose";
	}
	if(strcmp(name, "LIBGL_SHOW_FPS") == 0 ){
		return "yes";
	}
	
	return getenv(name);
}

//!int WINAPI WideCharToMultiByte (UINT CodePage, DWORD dwFlags, LPCWCH lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCCH lpDefaultChar, LPBOOL lpUsedDefaultChar)
int WINAPI sys_WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWCH lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCCH lpDefaultChar, LPBOOL lpUsedDefaultChar){
	showfunc("WideCharToMultiByte( ... )", "");
	#ifdef Func_Win 
	return WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
	#else
	//return WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
	return 0;//TODO
	#endif	
}

#define CP_UTF8 65001
//!int WINAPI MultiByteToWideChar (UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar)
int WINAPI sys_MultiByteToWideChar (UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar){
	showfunc_opt("MultiByteToWideChar( ... )", "");
	#ifdef Func_Win 
	return MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar);
	#else
	// MultiByteToWideChar(CP_UTF8, 0, src, -1, dst, dst_chars);
	//printf("\nlpMultiByteStr: %s\n", lpMultiByteStr);
	
	//Minimal implementation  src
	//if(lpMultiByteStr[0] != 0){
	if(CodePage == CP_UTF8 && dwFlags == 0){//For UTF-8, dwFlags must be set to either 0
		//cbMultiByte -> Size, in bytes, of the string indicated by the lpMultiByteStr parameter. Alternatively, this parameter can be set to -1 if the string is null-terminated.
		//cchWideChar -> Size, in characters, of the buffer indicated by lpWideCharStr. If this value is 0, the function returns the required buffer size, in characters, including any terminating null character, and makes no use of the lpWideCharStr buffer.
		if(cchWideChar == 0){
			//return required size
			//Use x4 size to be sure we can fit all char in UTF8 (length UTF16 x 4), 
			return strlen(lpMultiByteStr) * 4;
		}else{
			//Fill dest buffer
			CStrW2_(lpWideCharStr, lpMultiByteStr, strlen(lpMultiByteStr),cchWideChar);
			//wprintf(L"\nRESULT! %s", lpWideCharStr);
			return cchWideChar;
		}
	}
	//return MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar);
	return 0;//TODO better implementetaion?
	#endif	
}

//!VOID WINAPI OutputDebugStringA (LPCSTR lpOutputString)
//!VOID WINAPI OutputDebugStringW (LPCWSTR lpOutputString)
VOID WINAPI sys_OutputDebugStringA (LPCSTR lpOutputString){
	showfunc_opt("OutputDebugStringA( lpOutputString: %p )", lpOutputString);
	showinf("%s", lpOutputString);
	#ifdef Func_Win 
	OutputDebugStringA(lpOutputString);
	#else
	#endif	
}
VOID WINAPI sys_OutputDebugStringW (LPCWSTR lpOutputString){
	showfunc_opt("OutputDebugStringW( lpOutputString: %p )", lpOutputString);
	#ifdef Func_Win 
	OutputDebugStringW(lpOutputString);
	#else
	#endif	
}

//!HWND WINAPI GetConsoleWindow(VOID)
HWND WINAPI sys_GetConsoleWindow(VOID){
	showfunc_opt("GetConsoleWindow( )", "");
	#ifdef Func_Win 
	return GetConsoleWindow();
	#else
	return 0;
	#endif	
	
}

//!struct lconv* localeconv (void)
struct lconv* sys_localeconv(void){
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

//!HANDLE WINAPI GetStdHandle (DWORD nStdHandle)
HANDLE WINAPI sys_GetStdHandle (DWORD nStdHandle){
	showfunc("GetStdHandle( nStdHandle: %d )", nStdHandle);
	#ifdef Func_Win 

	return GetStdHandle(nStdHandle);
	#else
	return 0;//If an application does not have associated standard handles, such as a service running on an interactive desktop, and has not redirected them, the return value is NULL.
	#endif	

}

//!WINBOOL WINAPI GetConsoleScreenBufferInfo(HANDLE hConsoleOutput,PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo);
WINBOOL WINAPI sys_GetConsoleScreenBufferInfo(HANDLE hConsoleOutput,PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo){
	showfunc("GetConsoleScreenBufferInfo( hConsoleOutput: %d,  lpConsoleScreenBufferInfo: %p )", hConsoleOutput, lpConsoleScreenBufferInfo);
	#ifdef Func_Win 
	return GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);
	#else
	return 0;
	#endif	
} 

//!WINBOOL WINAPI DuplicateHandle (HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, LPHANDLE lpTargetHandle, DWORD dwDesiredAccess, WINBOOL bInheritHandle, DWORD dwOptions);
WINBOOL WINAPI sys_DuplicateHandle(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, LPHANDLE lpTargetHandle, DWORD dwDesiredAccess, WINBOOL bInheritHandle, DWORD dwOptions){
	showfunc("DuplicateHandle( hSourceProcessHandle: %d,  hSourceHandle: %p, hTargetProcessHandle: %p, lpTargetHandle: %d, dwDesiredAccess: %p, bInheritHandle: %d, dwOptions: %d)", hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);
	#ifdef Func_Win 
	return DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);
	#else
	return true;
	#endif	
}



