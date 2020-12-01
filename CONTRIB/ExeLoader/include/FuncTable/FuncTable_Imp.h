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
* FuncTable_Impl is the ExeLoader custom implementation. 
* Main goal is to be portable which does not relying on system functions
* 
*/

//!HMODULE LoadLibraryA(LPCSTR lpLibFileName)
inline HMODULE WINAPI imp_LoadLibraryA(LPCSTR lpLibFileName){
	showfunc("LoadLibraryA( lpLibFileName: %s )", lpLibFileName);
	#ifdef USE_Windows_LoadLibrary
		HMODULE _ret = LoadLibraryA(lpLibFileName);
		if(!_ret){My_GetLastError();}return _ret;
	#else
		return (HMODULE)AddLibrary(lpLibFileName);
	#endif
}

//!FARPROC GetProcAddress(HMODULE hModule,LPCSTR  lpProcName)
FARPROC WINAPI  imp_GetProcAddress(  HMODULE hModule, LPCSTR  lpProcName){
	showfunc("GetProcAddress( hModule: %p, lpProcName: %s)",hModule, lpProcName);
	
	char* _sDllName = (char*)"unknow";
	bool bOurLib = is_in_aLibList((HMEMORYMODULE)hModule);

	FARPROC func = 0;
	if(bOurLib){
		PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY((PMEMORYMODULE)hModule, IMAGE_DIRECTORY_ENTRY_EXPORT);
		if(directory != 0){
			if ( directory->Size == 0) {
				 _EXE_LOADER_DEBUG(0, "no export table found", "no export table found" );
			}
			PIMAGE_EXPORT_DIRECTORY exports = (PIMAGE_EXPORT_DIRECTORY) ( ((MEMORYMODULE*)hModule)->codeBase + directory->VirtualAddress);
			_sDllName =  (char*) ( ((MEMORYMODULE*)hModule)->codeBase + exports->Name);
		}
		func =  memory_module->MemoryGetProcAddress((HMEMORYMODULE)hModule, lpProcName);
	}
	if(func != 0){
		_EXE_LOADER_DEBUG(0, "GetLibAddress[%s] --> %s() ...", "GetLibAddress[%s] --> %s() ...", _sDllName, lpProcName);
		return func;
	}else{
		_EXE_LOADER_DEBUG(0, "GetTableAddress[%s] --> %s() ...", "GetTableAddress[%s] --> %s() ...", _sDllName, lpProcName);
		return MyMemoryDefaultGetProcAddress(0, lpProcName, 0); //Look in our function table
	}
}

//!void __cdecl _initterm(PVFV *,PVFV *);
typedef void (CDECL *_PVFV)();
inline void imp_initterm(_PVFV* ppfn,_PVFV* end){
	showfunc("_initterm( ppfn: %p, end: %p )", ppfn,end);
	do {
        if (_PVFV pfn = *++ppfn){
            pfn();
        }
    } while (ppfn < end);
}

//!void __cdecl _initterm(PVFV *,PVFV *);
typedef int  (CDECL *_PIFV)();
inline int imp_initterm_e(_PIFV* ppfn,_PIFV* end){
	showfunc("_initterm_e( ppfn: %p, end: %p )", ppfn,end);
	do {
        if (_PIFV pfn = *++ppfn){
            if (int err = pfn()) {
				showinf("func error: %d", err);
				return err;
			}
        }
    } while (ppfn < end);
    return 0;
}

//!void __cdecl _lock(int locknum)
inline void  imp_lock(int locknum){
	showfunc_opt("_lock( locknum: %d )", locknum);
	//_lock(locknum);
}

//!void __cdecl _unlock(int locknum)
inline void  imp_unlock(int locknum){
	showfunc_opt("_unlock( locknum: %d )", locknum);
	//_unlock(locknum);
}

//!void __set_app_type (int at)
#define _UNKNOWN_APP    0
#define _CONSOLE_APP    1
#define _GUI_APP        2
void imp_set_app_type (int at){
	switch(at){
		case _GUI_APP:showfunc("_set_app_type( at: %d [_GUI_APP] )",at);break;
		case _CONSOLE_APP:showfunc("_set_app_type( at: %d [_CONSOLE_APP] )",at);break;
		default :showfunc("_set_app_type( at: %d [_UNKNOWN_APP] )",at);break;
	}
}

// struct MSVCRT_lconv * CDECL MSVCRT_localeconv(void)
// __declspec(dllimport) int __cdecl __lconv_init (void);
//!int __lconv_init(void)
int imp_lconv_init(void){
	showfunc("__lconv_init( )", "");
	/* char Char = (char) UCHAR_MAX;
	  _lconv.int_frac_digits = Char;
	  _lconv.frac_digits = Char;
	  _lconv.p_sep_by_space = _lconv.n_sep_by_space = Char;
	  _lconv.p_cs_precedes = _lconv.n_cs_precedes = Char;
	  _lconv.p_sign_posn = _lconv.n_sign_posn = Char;*/
	return -1;
}

//!const char** __p__acmdln( void )
const char* _acmdln = "Test cmdLine";
char** imp_p__acmdln( void ){
	showfunc("p__acmdln( )","");
	//_acmdln = (char*)malloc(8192);
    return (char**)&_acmdln;
   // return &_acmdln;
}	

//!_onexit_t _onexit(_onexit_t function)
FUNC_ imp_onexit(FUNC_ func){
	showfunc("_onexit( func: %p )", func);
	//TODO _onexit can have multiple functions, must be added to a list
	//https://github.com/shihyu/learn_c/blob/master/vc_lib_src/src/onexit.c
	return func; //success?
}

//!int* __p__fmode()
int _fmode_ = 0;
#define	_O_TEXT_	0x4000	// CR-LF in file becomes LF in memory. 
#define	_O_BINARY_	0x8000	// Input and output is not translated. 
int* imp_p__fmode(){
	showfunc("__p__fmode( )", "");
	_fmode_ = _O_TEXT_;
	return &_fmode_;
}

#ifndef _STARTUP_INFO_DEFINED
 #define _STARTUP_INFO_DEFINED
   typedef struct {
     int newmode;
   } _startupinfo;
 #endif
//!int __getmainargs(int * _Argc,char *** _Argv,char *** _Env,int _DoWildCard,_startupinfo * _StartInfo)
int imp_getmainargs(int* _Argc, char*** _Argv, char*** _Env, int _DoWildCard, void* _StartInfo){ //_StartInfo :Other information to be passed to the CRT DLL.
	showfunc("__getmainargs( _Argc: %p, _Argv: %p, _Env: %p, _DoWildCard: %d, _StartInfo: %p )", _Argc, _Argv, _Env, _DoWildCard, _StartInfo);
	
	/*LPSTARTUPINFOW
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
	
	for(int i = 0; i < *_Argc; i++){
		showinf("arg[%d]: %s", i, _Argv[i]);
	}
	return 0;//successful
}

//!int _vscprintf(const char *format,va_list argptr)
inline int imp_vscprintf(const char *format,va_list argptr){
	showfunc_opt("_vscprintf( )", "");
    int retval = 0; 
    va_list argcopy;
    va_copy(argcopy, argptr); 
    retval = vsnprintf(NULL, 0, format, argcopy); 
    va_end(argcopy); 
    return retval;
 }

//! void * _aligned_malloc(size_t size,size_t alignment)
inline void* imp_aligned_malloc(size_t size,size_t alignment){
	showfunc_opt("aligned_malloc( size: %d, alignment: %d )", size,alignment);
	void* p1; // original block
    void** p2; // aligned block
    int offset = alignment - 1 + sizeof(void*);
    if ((p1 = (void*)malloc(size + offset)) == NULL)
    {
       return NULL;
    }
    p2 = (void**)(((size_t)(p1) + offset) & ~(alignment - 1));
    p2[-1] = p1;
    return p2;
}
//!void _aligned_free (void *memblock)
inline void imp_aligned_free(void *memblock){
	showfunc_opt("aligned_free( memblock: %p )", memblock);
	if(memblock != 0){
		free(((void**)memblock)[-1]);
	}
}
//! void * _aligned_realloc(void *memblock,size_t size,size_t alignment);
inline void* imp_aligned_realloc(void *memblock,size_t size,size_t alignment){
	showfunc_opt("aligned_realloc( size: %d, alignment: %d )", size,alignment);
	imp_aligned_free(memblock);
	return imp_aligned_malloc(size, alignment);
}


//!char *_strdup(const char *strSource)
inline char* imp_strdup(const char *strSource){
	showfunc_opt("_strdup( strSource: %s )", strSource);
	size_t size = strlen(strSource) + 1;
	char* str = (char*)malloc(size);
	if (str) {memcpy(str, strSource, size);}
	return str;
}


//!char * strncpy( char * destination, const char * source, size_t num )
inline char* imp_strncpy( char * destination, const char * source, size_t num ){
	showfunc_opt("strncpy( destination: %p, source: %p, num: %d )", destination, source, num);
	size_t i = 0;
	while(i++ != num && (*destination++ = *source++));
	return destination;
}

//!int isspace ( int c )
inline int imp_isspace( int c ){
	showfunc_opt("isspace( c %d )", c);
	return c == ' ' || c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r'; // || whatever other char you consider space
}

//!int isupper ( int c )
inline int  imp_isupper( int c ){
	showfunc_opt("isupper( c %d )", c);
	return (c >= 'A' && c <= 'Z');
}

//!int islower ( int c )
inline int  imp_islower( int c ){
	showfunc_opt("islower( c %d )", c);
	return (c >= 'a' && c <= 'z');
}

//!int abs(int x)
inline int imp_abs(int x){
	showfunc_opt("abs( x %d )", x);
	if(x < 0){return x*-1;}return x;
}

//==== TLS === //

void** aTlsNewMem = 0;
//!DWORD TlsAlloc()
DWORD WINAPI imp_TlsAlloc(void){
   	showfunc_opt("TlsAlloc( )", "");
	static int _nIndex = 0;
	static int _nMax = 0;
	if(_nIndex >= _nMax){ //Realloc
		int _nNewSize = _nMax*2 + 5; 
		
		 void** _aNewMem = (void**)calloc(_nNewSize, sizeof(void*));
		 memcpy(_aNewMem, aTlsNewMem, _nMax*sizeof(void*) );
		 free(aTlsNewMem);
		 aTlsNewMem = _aNewMem;
		 
		 _nMax = _nNewSize;
		// _EXE_LOADER_DEBUG(3,"TlsAlloc() : [ReAlloc] size: %d\n","TlsAlloc() : [ReAlloc] size: %d\n", _nNewSize);
	}
	
	_EXE_LOADER_DEBUG(3,"TlsAlloc() : %d\n","TlsAlloc() : %d\n", _nIndex);
	_nIndex++;
	return _nIndex-1;
}

//!BOOL TlsSetValue(DWORD  dwTlsIndex,LPVOID lpTlsValue)
BOOL  WINAPI imp_TlsSetValue(DWORD dwTlsIndex, _In_opt_ LPVOID lpTlsValue){
	showfunc_opt("TlsSetValue( dwTlsIndex: %d, lpTlsValue: %p )", dwTlsIndex, lpTlsValue);
	//if(lpTlsValue != 0){showfunc_opt(3,"TlsSetValue() : %d [0x%p] value : %d\n","TlsSetValue() : %d [0x%p] value : %d\n", dwTlsIndex, lpTlsValue, *(int*)lpTlsValue );
	//}else{showfunc_opt(3,"TlsSetValue() : %d [0x%p]\n"		    ,"TlsSetValue() : %d [0x%p]\n",			   dwTlsIndex, lpTlsValue);}
   aTlsNewMem[dwTlsIndex] = lpTlsValue;
   return true;
}

//!LPVOID TlsGetValue(DWORD dwTlsIndex)
LPVOID WINAPI imp_TlsGetValue(DWORD dwTlsIndex){
	showfunc_opt("TlsGetValue( dwTlsIndex: %d )", dwTlsIndex);
   //if(aTlsNewMem[dwTlsIndex] != 0){_EXE_LOADER_DEBUG(3,"TlsGetValue() : %d [0x%p] value : %d\n","TlsGetValue() : %d [0x%p] value : %d\n", dwTlsIndex, aTlsNewMem[dwTlsIndex], *(int*)aTlsNewMem[dwTlsIndex]);
   //}else{_EXE_LOADER_DEBUG(3,"TlsGetValue() : %d [0x%p]\n"		     ,"TlsGetValue() : %d [0x%p]\n",		   dwTlsIndex, aTlsNewMem[dwTlsIndex]);}
   return aTlsNewMem[dwTlsIndex];
}

//!BOOL TlsFree(DWORD dwTlsIndex)
BOOL WINAPI imp_TlsFree(DWORD dwTlsIndex){
	showfunc_opt("TlsFree( dwTlsIndex: %d )", dwTlsIndex);
	//_EXE_LOADER_DEBUG(3,"TlsFree() : %d [0x%p] value : %d\n","TlsFree() : %d [0x%p] value: %d\n", dwTlsIndex, aTlsNewMem[dwTlsIndex], *(int*)aTlsNewMem[dwTlsIndex]);
	aTlsNewMem[dwTlsIndex] = 0;
	return true;
}

//==== Local Alloc === //  ** ---- Not tested --- **

//!HLOCAL WINAPI LocalAlloc (UINT uFlags, SIZE_T uBytes)
inline HLOCAL WINAPI imp_LocalAlloc(UINT  uFlags, SIZE_T uBytes){
	showfunc_opt("LocalAlloc( uFlags: %d, uBytes: %d )", uFlags, uBytes);
	SIZE_T* _alloc = (SIZE_T*)instance_AllocManager.ManagedCalloc(uBytes + sizeof(SIZE_T), sizeof(char));
	_alloc[0] = uBytes;
	return (HLOCAL)&_alloc[1];
}

//!SIZE_T WINAPI LocalSize (HLOCAL hMem)
SIZE_T WINAPI imp_LocalSize(HLOCAL hMem){
	showfunc_opt("LocalSize( hMem: %p)", hMem);
	SIZE_T* _alloc = (SIZE_T*)hMem;_alloc--;
	return _alloc[0];
}

//!HLOCAL WINAPI LocalFree (HLOCAL hMem)
inline SIZE_T WINAPI imp_LocalFree(HLOCAL hMem){
	showfunc_opt("LocalFree( hMem: %p)", hMem);
	if(hMem != 0){
		SIZE_T* _alloc = (SIZE_T*)hMem;_alloc--;
		instance_AllocManager.ManagedFree(_alloc);
	}
	return 0;
}

//!HLOCAL WINAPI LocalReAlloc (HLOCAL hMem, SIZE_T uBytes, UINT uFlags)
HLOCAL WINAPI imp_LocalReAlloc(HLOCAL hMem, SIZE_T uBytes, UINT uFlags){
	showfunc_opt("LocalReAlloc( hMem: %p, uFlags: %d, uBytes: %d )", hMem, uFlags, uBytes);
	imp_LocalFree(hMem);
	return imp_LocalAlloc(0, uBytes);
}

//===== CommandLine ==== //

//!LPWSTR GetCommandLineW(){
LPWSTR imp_GetCommandLineW(){
	showfunc("GetCommandLineW( )", "");
	#ifdef Func_Win
	return GetCommandLineW();
	#else
	//TODO Real Arg
	wchar_t* arg = (wchar_t*)L"Test ExeLoader winMain input arg";
	wchar_t* alloc = (wchar_t*)imp_LocalAlloc(0, sizeof(L"Test ExeLoader winMain input arg") ); //We must alloc with LocalAlloc because windows will call LocalFree later
	memcpy(alloc, arg, sizeof(L"Test ExeLoader winMain input arg"));
	showfunc_ret("GetCommandLineW[LPWSTR: %p]", alloc);
	return (LPWSTR)alloc; 
	#endif
}

//!LPWSTR* CommandLineToArgvW(LPCWSTR lpCmdLine,int* pNumArgs)
inline LPWSTR* imp_CommandLineToArgvW(LPCWSTR lpCmdLine,int* pNumArgs){
	showfunc("CommandLineToArgvW( lpCmdLine: %p, pNumArgs: %p )", lpCmdLine, pNumArgs);
	#ifdef Func_Win
	return CommandLineToArgvW(lpCmdLine, pNumArgs);
	#else
	pNumArgs = &exe_arg_nb;
	showfunc_ret("CommandLineToArgvW(pNumArgs: %d)[exe_arg: %s]", *pNumArgs, *exe_arg);
	return (LPWSTR*)exe_arg; //TODO Wide?
	#endif
}

//============ //

//!int snprintf ( char * s, size_t n, const char * format, ... )
inline int  imp_snwprintf( wchar_t* s, size_t n, const wchar_t* format, ... ){
	showfunc("snwprintf( s: %p, n: %d, format: %p, ... )", s,n,format); 
/*
	size_t len = wcslen(format);
	printf("\nlength: %d \n", len);
	printf("\nlsize_t: %d \n", n);
	
	/////////////// UTF16 to UTF8 ///////////////
	const UTF16* input = (const UTF16*)format;
	UTF8* output = (UTF8*)malloc(len+1);//+1 for null terminating char
	
	UTF8* outStart = (UTF8*)output;
	ConversionResult res =	ConvertUTF16toUTF8(&input, &input[len], &output, &output[n], ConversionFlags::lenientConversion);
	//Possible value of res: conversionOK || sourceExhausted || targetExhausted
	*output = 0; //Terminate string
	/////////////////////////////////////////////
	//free(output);
*/
	vswprintf_ARG(format, s, n, ret);
	//wprintf(L"TEST: %s", s);
	return  ret;
}



//!int fwprintf (FILE* stream, const wchar_t* format, ...)
inline int imp_fwprintf (FILE* stream, const wchar_t* format, ...){
	showfunc("fwprintf( stream: %p, format: %p, ... )", stream, format); 
	
	wchar_t BUFFER[8192]; //TODO GLOBAL BUFF or malloc?
	vswprintf_ARG(format, BUFFER, 8192, ret);
	
	#ifndef No_wprintf
	//Convert to cstr?
	wprintf(BUFFER);
	#else
	showinf("[No wprintf]", "");
	#endif
	return ret;
}

//!int vsnprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, va_list __local_argv);
int imp_vsnprintf (char* s, size_t n, const char *  format, va_list __local_argv){
	
	showfunc("vsnprintf( s: %p, n: %u, format: %s, ... )  --  %u", s, n, format);
	if(n > INT_MAX) 
		n = INT_MAX;
	
	if(strcmp(format, "#version %I64i%s%s") == 0)
	{
		format = "#version %llu%s%s";
		showfunc("CORRECTED : vsnprintf( s: %p, n: %u, format: %s, ... )", s, n, format);
	}

	
	return vsnprintf(s, n, format, __local_argv);
}

//!UINT ___lc_codepage_func(void)
UINT imp_lc_codepage_func(void){
	showfunc_opt("___lc_codepage_func( )", ""); 
	return 0; //TODO validate?
}

//!int _stricmp(const char *string1,const char *string2)
int imp_stricmp(const char *string1,const char *string2){
	showfunc_opt("_stricmp( string1: %p, string2: %p )", ""); 
	return stricmp(string1, string2);
}



/*
LPVOID WINAPI LocalLock (HLOCAL hMem);
SIZE_T WINAPI LocalShrink (HLOCAL hMem, UINT cbNewSize);
SIZE_T WINAPI LocalCompact (UINT uMinFree);
UINT WINAPI LocalFlags (HLOCAL hMem);
HLOCAL WINAPI LocalHandle (LPCVOID pMem);
WINBOOL WINAPI LocalUnlock (HLOCAL hMem);
*/