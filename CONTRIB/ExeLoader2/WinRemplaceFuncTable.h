

/////////////////////////////// WPrintf //////////////
#define tConvtBufferSize 1024
char aConvtBuffer[tConvtBufferSize];
size_t fNarrow(const wchar_t * src, char * dest, size_t dest_len){
  size_t i;
  wchar_t code;
  i = 0;
  while (src[i] != '\0' && i < (dest_len - 1)){
    code = src[i];
    if (code < 128)
      dest[i] = char(code);
    else{
      dest[i] = '?';
      if (code >= 0xD800 && code <= 0xD8FF)
        // lead surrogate, skip the next code unit, which is the trail
        i++;
    }
    i++;
  }
  dest[i] = '\0';
  return i - 1;
}
char* tempUTF16toUTF(const wchar_t * src){
    fNarrow(src, aConvtBuffer, tConvtBufferSize);
    return aConvtBuffer;
}
int My_wprintf (const wchar_t* format, ...){
	int NombreCaracteres;
	va_list arglist;
	
	va_start( arglist, format );
		NombreCaracteres = vprintf( tempUTF16toUTF(format), arglist );
	va_end( arglist );
	
	return NombreCaracteres;
}
/////////////////////////////////////////////////////////////////////
////////////////////////// WinLastError /////////////////////////////

#ifdef WinLastError
    //#define OnWin
	#include <windows.h>


	// Create a string with last error message
	std::string GetLastErrorStdStr()
	{
	  DWORD error = GetLastError();
	  if (error)
	  {
		LPVOID lpMsgBuf;
		DWORD bufLen = FormatMessage(
			FORMAT_MESSAGE_ALLOCATE_BUFFER |
			FORMAT_MESSAGE_FROM_SYSTEM |
			FORMAT_MESSAGE_IGNORE_INSERTS,
			NULL,
			error,
			MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
			(LPTSTR) &lpMsgBuf,
			0, NULL );
		if (bufLen)
		{
		  LPCSTR lpMsgStr = (LPCSTR)lpMsgBuf;
		  std::string result(lpMsgStr, lpMsgStr+bufLen);

		  LocalFree(lpMsgBuf);

		  return result;
		}
	  }else{
	      return "None";
	  }
	  return std::string();
	}
#endif
DWORD My_GetLastError(){
	#ifdef WinLastError
		_EXE_LOADER_DEBUG(3, "GetLastError: %s \n", "GetLastError: %s \n", GetLastErrorStdStr().c_str());
	#else
		_EXE_LOADER_DEBUG(3, "GetLastError non implemente!\n", "GetLastError Function not implemented!\n");
	#endif
    return 0;
}

/////////////////////////////////////////////////////////

void My_wfopen( const wchar_t *filename, const wchar_t *mode){
	if((filename) && (mode))
		_EXE_LOADER_DEBUG(3, "wfopen non implemente!", "wfopen not implemented!\n");
	else
		_EXE_LOADER_DEBUG(3, "wfopen non implemente! non implemente!", "wfopen not implemented!\n");
   // fopen
}

LARGE_INTEGER nCounter = {0};
BOOL  My_QueryPerformanceCounter(  LARGE_INTEGER* lpPerformanceCount){
        _EXE_LOADER_DEBUG(3, "QueryPerformanceCounter non implemente!", "QueryPerformanceCounter not implemented!\n");
    lpPerformanceCount = &nCounter;
    return true;
}

FILETIME sSystemTimeAsFileTime = {0};
void WINAPI My_GetSystemTimeAsFileTime(_Out_ LPFILETIME lpSystemTimeAsFileTime){
    _EXE_LOADER_DEBUG(3, "GetSystemTimeAsFileTime non implemente!", "GetSystemTimeAsFileTime not implemented!\n");
    lpSystemTimeAsFileTime = &sSystemTimeAsFileTime;

}


DWORD  My_GetTickCount(void){
    _EXE_LOADER_DEBUG(3, "GetTickCount non implemente!", "GetTickCount not implemented!\n");
    return 0;
}

HANDLE WINAPI My_GetStdHandle(
  _In_ DWORD nStdHandle
){
 _EXE_LOADER_DEBUG(3, "GetStdHandle non implemente!", "GetStdHandle not implemented!\n");
 return 0;
}

HWND WINAPI My_GetConsoleWindow(void){
     _EXE_LOADER_DEBUG(3, "GetConsoleWindow non implemente!", "GetConsoleWindow not implemented!\n");
    return 0;
}

BOOL WINAPI My_SetConsoleWindowInfo(
  _In_       HANDLE     hConsoleOutput,
  _In_       BOOL       bAbsolute,
  _In_ const SMALL_RECT *lpConsoleWindow
){
   _EXE_LOADER_DEBUG(3, "SetConsoleWindowInfo non implemente!", "SetConsoleWindowInfo not implemented!\n");
    return false;
}

char * My_setlocale(
   int category,
   const char *locale
){
     _EXE_LOADER_DEBUG(3, "setlocale non implemente!", "setlocale not implemented!\n");
    return 0;
}

BOOL WINAPI My_SetConsoleOutputCP(
  _In_ UINT wCodePageID
){
 _EXE_LOADER_DEBUG(3, "SetConsoleOutputCP non implemente!", "SetConsoleOutputCP not implemented!\n");
 return false;
}

BOOL WINAPI My_SetConsoleTextAttribute(
  _In_ HANDLE hConsoleOutput,
  _In_ WORD   wAttributes
){
 _EXE_LOADER_DEBUG(3, "SetConsoleTextAttribute non implemente!", "SetConsoleTextAttribute not implemented!\n");
 return false;
}

BOOL WINAPI  My_SetConsoleScreenBufferSize(
  _In_ HANDLE hConsoleOutput,
  _In_ COORD  dwSize
){
 _EXE_LOADER_DEBUG(3, "SetConsoleScreenBufferSize non implemente!", "SetConsoleScreenBufferSize not implemented!\n");
 return false;
}

BOOL WINAPI My_MoveWindow(
  _In_ HWND hWnd,
  _In_ int  X,
  _In_ int  Y,
  _In_ int  nWidth,
  _In_ int  nHeight,
  _In_ BOOL bRepaint
){
 _EXE_LOADER_DEBUG(3, "MoveWindow non implemente!", "MoveWindow not implemented!\n");
 return false;
}

DWORD WINAPI My_GetModuleFileNameW(
  _In_opt_ HMODULE hModule,
  _Out_    LPTSTR  lpFilename,
  _In_     DWORD   nSize
){
 _EXE_LOADER_DEBUG(3, "GetModuleFileNameW non implemente!", "GetModuleFileNameW not implemented!\n");
 return 0;
}

BOOL WINAPI My_GetFileAttributesExW(
  _In_  LPCTSTR                lpFileName,
  _In_  void* fInfoLevelId,
  _Out_ LPVOID                 lpFileInformation
){

 _EXE_LOADER_DEBUG(3, "GetFileAttributesExW non implemente!", "GetFileAttributesExW not implemented!\n");
 return 0;
}

size_t My_fread(void* ptr, size_t size, size_t nitems,  FILE * stream){
    _EXE_LOADER_DEBUG(3, "fread non implemente!", "fread not implemented!\n");
    return 0;
}

LONG WINAPI My_SetWindowLongW(
  _In_ HWND hWnd,
  _In_ int  nIndex,
  _In_ LONG dwNewLong
){
    _EXE_LOADER_DEBUG(3, "SetWindowLongW non implemente!", "SetWindowLongW not implemented!\n");
    return 0;
}

#define WNDCLASSEX void
ATOM WINAPI My_RegisterClassExW(
  _In_ const WNDCLASSEX *lpwcx
){
    _EXE_LOADER_DEBUG(3, "RegisterClassExW non implemente!", "RegisterClassExW not implemented!\n");
    return 0;
}

HWND WINAPI My_CreateWindowExW(
  _In_     DWORD     dwExStyle,
  _In_opt_ LPCTSTR   lpClassName,
  _In_opt_ LPCTSTR   lpWindowName,
  _In_     DWORD     dwStyle,
  _In_     int       x,
  _In_     int       y,
  _In_     int       nWidth,
  _In_     int       nHeight,
  _In_opt_ HWND      hWndParent,
  _In_opt_ HMENU     hMenu,
  _In_opt_ HINSTANCE hInstance,
  _In_opt_ LPVOID    lpParam
){
    _EXE_LOADER_DEBUG(3, "CreateWindowEx non implemente!", "CreateWindowEx not implemented!\n");
    return 0;
}

BOOL WINAPI My_ShowWindow(
  _In_ HWND hWnd,
  _In_ int  nCmdShow
){
    _EXE_LOADER_DEBUG(3, "ShowWindow non implemente!", "ShowWindow not implemented!\n");
    return false;
}

HDC My_CreateCompatibleDC(
  _In_ HDC hdc
){
    _EXE_LOADER_DEBUG(3, "CreateCompatibleDC non implemente!", "CreateCompatibleDC not implemented!\n");
    return 0;
}
#define BITMAPINFO void
HBITMAP My_CreateDIBSection(
  _In_        HDC        hdc,
  _In_  const BITMAPINFO *pbmi,
  _In_        UINT       iUsage,
  _Out_       VOID       **ppvBits,
  _In_        HANDLE     hSection,
  _In_        DWORD      dwOffset
){
    _EXE_LOADER_DEBUG(3, "CreateDIBSection non implemente!", "CreateDIBSection not implemented!\n");
    return 0;
}
#define HGDIOBJ void*
HGDIOBJ My_SelectObject(
  _In_ HDC     hdc,
  _In_ HGDIOBJ hgdiobj
){
        _EXE_LOADER_DEBUG(3, "SelectObject non implemente!", "SelectObject not implemented!\n");
    return 0;
}

HDC My_GetDC(
  _In_ HWND hWnd
){
    _EXE_LOADER_DEBUG(3, "GetDC non implemente!", "GetDC not implemented!\n");
   return 0;
}

BOOL WINAPI My_QueryPerformanceFrequency(
  _Out_ LARGE_INTEGER *lpFrequency
){
_EXE_LOADER_DEBUG(3, "QueryPerformanceFrequency non implemente!", "QueryPerformanceFrequency not implemented!\n");
return 0;
}

VOID WINAPI My_Sleep(
  _In_ DWORD dwMilliseconds
){
_EXE_LOADER_DEBUG(3, "Sleep non implemente!", "Sleep not implemented!\n");
}


BOOL My_BitBlt(
  _In_ HDC   hdcDest,
  _In_ int   nXDest,
  _In_ int   nYDest,
  _In_ int   nWidth,
  _In_ int   nHeight,
  _In_ HDC   hdcSrc,
  _In_ int   nXSrc,
  _In_ int   nYSrc,
  _In_ DWORD dwRop
){
_EXE_LOADER_DEBUG(3, "BitBlt non implemente!", "BitBlt not implemented!\n");
return 0;
}

BOOL WINAPI My_GetClientRect(
  _In_  HWND   hWnd,
  _Out_ LPRECT lpRect
){
_EXE_LOADER_DEBUG(3, "GetClientRect non implemente!", "GetClientRect not implemented!\n");
return 0;
}

BOOL WINAPI My_GetWindowRect(
 _In_  HWND   hWnd,
  _Out_ LPRECT lpRect
){
_EXE_LOADER_DEBUG(3, "GetWindowRect non implemente!", "GetWindowRect not implemented!\n");
return 0;
}

BOOL WINAPI My_TranslateMessage(
  _In_ const MSG *lpMsg
){
_EXE_LOADER_DEBUG(3, "TranslateMessage non implemente!", "TranslateMessage not implemented!\n");
return 0;
}

LRESULT WINAPI My_DispatchMessageW(
  _In_ const MSG *lpmsg
){
    _EXE_LOADER_DEBUG(3, "DispatchMessage non implemente!", "DispatchMessage not implemented!\n");
    return 0;
}

BOOL WINAPI My_PeekMessageW(
  _Out_    LPMSG lpMsg,
  _In_opt_ HWND  hWnd,
  _In_     UINT  wMsgFilterMin,
  _In_     UINT  wMsgFilterMax,
  _In_     UINT  wRemoveMsg
){
    _EXE_LOADER_DEBUG(3, "PeekMessage non implemente!", "PeekMessage not implemented!\n");
    return 0;
}

LONG WINAPI My_GetWindowLongW(
  _In_ HWND hWnd,
  _In_ int  nIndex
){
_EXE_LOADER_DEBUG(3, "GetWindowLongW non implemente!", "GetWindowLongW not implemented!\n");
    return 0;
}

LRESULT WINAPI My_DefWindowProcW(
  _In_ HWND   hWnd,
  _In_ UINT   Msg,
  _In_ WPARAM wParam,
  _In_ LPARAM lParam
){
_EXE_LOADER_DEBUG(3, "DefWindowProc non implemente!", "DefWindowProc not implemented!\n");
    return 0;
}

#define HCURSOR void*
HCURSOR WINAPI  My_LoadCursorW(
  _In_opt_ HINSTANCE hInstance,
  _In_     LPCTSTR   lpCursorName
){
_EXE_LOADER_DEBUG(3, "LoadCursor non implemente!", "LoadCursor not implemented!\n");
    return 0;
}

HICON WINAPI My_LoadIconW(
  _In_opt_ HINSTANCE hInstance,
  _In_     LPCTSTR   lpIconName
){
_EXE_LOADER_DEBUG(3, "LoadIcon non implemente!", "LoadIcon not implemented!\n");
    return 0;
}

int WINAPI My_MessageBoxW(
  _In_opt_ HWND    hWnd,
  _In_opt_ LPCTSTR lpText,
  _In_opt_ LPCTSTR lpCaption,
  _In_     UINT    uType
){
_EXE_LOADER_DEBUG(3, "MessageBoxW non implemente!", "MessageBoxW not implemented!\n");
    return 0;
}





