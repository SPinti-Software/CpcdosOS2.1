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

//!ATOM RegisterClassW(const WNDCLASSW *lpWndClass)
inline ATOM WINAPI pipe_RegisterClassW(const WNDCLASSW *lpWndClass){
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

#ifdef ShowPixView
extern float pixView_mouse_x;
extern float pixView_mouse_y;
extern bool bLButtonDown; 
#else
bool bLButtonDown  = false;
#endif
bool bLButtonDown_last  = false;

inline void impl_GetMessages(){
	for(int i = 0; i < aWndProc_idx; i++){
		//Call all WndProc messages
		
		HWND _hWnd = (HWND)1;
		UINT uMsg = 1;
		LPARAM lparam;
		WPARAM wParam;

	    uMsg = WM_MOUSEMOVE;
		
		#ifdef ShowPixView
			static int j = 0;j++;
			lparam = SETLPARAM(pixView_mouse_x,pixView_mouse_y);
			showinf("mouse_X: %f, mouse_Y: %f, bLButtonDown:d", pixView_mouse_x, pixView_mouse_y, bLButtonDown);
			//TODO Multi msg
		
		#endif
		
		#ifdef CpcDos
			
			lparam = SETLPARAM(oCpc->Mouse_state(1),oCpc->Mouse_state(2));
			
			if(oCpc->Mouse_state(1) == 1){
				bLButtonDown = true;
			}else{
				bLButtonDown = false;
			}
				
		#endif
			
		
		if(bLButtonDown != bLButtonDown_last){
			bLButtonDown_last = bLButtonDown;
			if(bLButtonDown){
				uMsg = WM_LBUTTONDOWN;
			}else{
				uMsg = WM_LBUTTONUP;
			}
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
		aWndProc[i](_hWnd,uMsg,wParam,lparam);
	}
}




//!WINBOOL WINAPI PeekMessageA(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg)
//!WINBOOL WINAPI PeekMessageW(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg)
WINBOOL WINAPI sys_PeekMessageA(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg){
 	showfunc_opt("PeekMessageA( lpMsg: %p, hWnd: %p, wMsgFilterMin: %d, wMsgFilterMax: %d, wRemoveMsg: %d )", lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg );
	#ifdef Func_Win
		return PeekMessageA( lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg );
	#else
		impl_GetMessages();
		return 0;
	#endif
}
WINBOOL WINAPI sys_PeekMessageW(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg){
 	showfunc_opt("PeekMessageW( lpMsg: %p, hWnd: %p, wMsgFilterMin: %d, wMsgFilterMax: %d, wRemoveMsg: %d )", lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg );
	#ifdef Func_Win
		return PeekMessageW(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);
	#else
		impl_GetMessages();
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

/*
> -->Call:  GetProcAddress( hModule: 61980000, lpProcName: wglCreateContext)
O> -->Call: GetProcAddress( hModule: 61980000, lpProcName: wglDeleteContext)
O> -->Call: GetProcAddress( hModule: 61980000, lpProcName: wglGetProcAddress)
O> -->Call: GetProcAddress( hModule: 61980000, lpProcName: wglGetCurrentDC)
O> -->Call: GetProcAddress( hModule: 61980000, lpProcName: wglMakeCurrent)
*/

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
BOOL WINAPI pipe_SwapBuffers(HDC hdc){
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
	showfunc("GetModuleHandleW( lpModuleName: %p)", lpModuleName); //TODO wide str
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
 BOOL WINAPI pipe_CloseHandle(HANDLE hObject){
	showfunc_opt("CloseHandle( hObject: %p)", hObject); 
	#ifdef Func_Win
		return CloseHandle(hObject);
	#else
		return true;
	#endif
}

//!SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD     dwThreadId)
 HHOOK WINAPI pipe_SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD     dwThreadId){
	showfunc("SetWindowsHookExA( idHook: %d, lpfn:%p, hmod:%p, dwThreadId:%p )", idHook, lpfn, hmod, dwThreadId);
	#ifdef Func_Win
		return SetWindowsHookExA(idHook,lpfn,hmod,dwThreadId);
	#else
		return 0;
	#endif
}

//!LRESULT CallNextHookEx(HHOOK hhk, int nCode, WPARAM wParam,LPARAM lParam)
 LRESULT WINAPI pipe_CallNextHookEx(HHOOK hhk, int nCode, WPARAM wParam,LPARAM lParam){
	showfunc("CallNextHookEx( hhk: %d, nCode:%d, wParam:%p, lParam:%p )", hhk, nCode, wParam, lParam);
	#ifdef Func_Win
		return CallNextHookEx(hhk,nCode,wParam,lParam);
	#else
		return 0;
	#endif
}

//!BOOL EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD ModeNum,DEVMODEA *lpDevMode)
 BOOL WINAPI pipe_EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD ModeNum,DEVMODEA *lpDevMode){
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


//!void GetSystemInfo( LPSYSTEM_INFO lpSystemInfo)
void WINAPI pipe_GetSystemInfo( LPSYSTEM_INFO lpSystemInfo){
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


//!VOID WINAPI pipe_GetNativeSystemInfo (LPSYSTEM_INFO lpSystemInfo)
VOID WINAPI pipe_GetNativeSystemInfo(LPSYSTEM_INFO lpSystemInfo){
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
WINBOOL WINAPI pipe_FlushInstructionCache (HANDLE hProcess, LPCVOID lpBaseAddress, SIZE_T dwSize){
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
inline WINAPI BOOL pipe_ClientToScreen(HWND hWnd,LPPOINT lpPoint){
	showfunc_opt("ClientToScreen( hWnd:%p, lpPoint.x:%d, lpPoint.y:%d )",hWnd, lpPoint->x, lpPoint->y);
	#ifdef Func_Win
	return ClientToScreen(hWnd, lpPoint);
	#else
	return true;
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
	showfunc_opt("GetCurrentProcess( )", "");
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


//!VOID WINAPI GetStartupInfoA (LPSTARTUPINFOA lpStartupInfo)
//!VOID WINAPI GetStartupInfoW (LPSTARTUPINFOW lpStartupInfo)
VOID WINAPI pipe_GetStartupInfoA(LPSTARTUPINFOA lpStartupInfo){
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
VOID WINAPI pipe_GetStartupInfoW(LPSTARTUPINFOW lpStartupInfo){
	showfunc("GetStartupInfoW( lpStartupInfo: %p)", lpStartupInfo);
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
const char* pipe_getenv(const char* name){
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
int WINAPI pipe_WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWCH lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCCH lpDefaultChar, LPBOOL lpUsedDefaultChar){
	showfunc_opt("WideCharToMultiByte( ... )", "");
	#ifdef Func_Win 
	return WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
	#else
	//return WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar);
	return 0;//TODO
	#endif	
}

//!int WINAPI MultiByteToWideChar (UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar)
int WINAPI pipe_MultiByteToWideChar (UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar){
	showfunc_opt("MultiByteToWideChar( ... )", "");
	#ifdef Func_Win 
	return MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar);
	#else
	//return MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar);
	return 0;//TODO
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
	showfunc_opt("GetConsoleWindow( )", "");
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

//!HANDLE WINAPI GetStdHandle (DWORD nStdHandle)
HANDLE WINAPI pipe_GetStdHandle (DWORD nStdHandle){
	showfunc("GetStdHandle( nStdHandle: %d )", nStdHandle);
	#ifdef Func_Win 

	return GetStdHandle(nStdHandle);
	#else
	return 0;//If an application does not have associated standard handles, such as a service running on an interactive desktop, and has not redirected them, the return value is NULL.
	#endif	

}

//!WINBOOL WINAPI GetConsoleScreenBufferInfo(HANDLE hConsoleOutput,PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo);
WINBOOL WINAPI pipe_GetConsoleScreenBufferInfo(HANDLE hConsoleOutput,PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo){
	showfunc("GetConsoleScreenBufferInfo( hConsoleOutput: %d,  lpConsoleScreenBufferInfo: %p )", hConsoleOutput, lpConsoleScreenBufferInfo);
	#ifdef Func_Win 
	return GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);
	#else
	return 0;
	#endif	
} 


//!WINBOOL WINAPI DuplicateHandle (HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, LPHANDLE lpTargetHandle, DWORD dwDesiredAccess, WINBOOL bInheritHandle, DWORD dwOptions);
WINBOOL WINAPI pipe_DuplicateHandle(HANDLE hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, LPHANDLE lpTargetHandle, DWORD dwDesiredAccess, WINBOOL bInheritHandle, DWORD dwOptions){
	showfunc("DuplicateHandle( hSourceProcessHandle: %d,  hSourceHandle: %p, hTargetProcessHandle: %p, lpTargetHandle: %d, dwDesiredAccess: %p, bInheritHandle: %d, dwOptions: %d)", hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);
	#ifdef Func_Win 
	return DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);
	#else
	return true;
	#endif	
}

