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
 * FuncTable_Impl is the XE-Loader custom implementation. 
 * Main goal is to be portable which does not relying on system functions
 *
*/

//!HMODULE LoadLibraryW(LPCWSTR lpLibFileName)
inl HMODULE WINAPI impl_LoadLibraryW(LPCWSTR lpLibFileName){

	int len = wcslen_(lpLibFileName);
	byte_t aVLA[len + sizeof(fptr_t)];
	
	view_t view = {	.header=(fptr_t*)aVLA,	
					.data=(byte_t*)&aVLA[sizeof(fptr_t)] ,
					.size=len,
					};
	/*
	int len = wcslen_(lpLibFileName);
	char aVLA[len];
	W2CStr(aVLA, lpLibFileName,len);
	*/
	showinf("\nTODO: impl_LoadLibraryW" , "");
}

//!HMODULE LoadLibraryA(LPCSTR lpLibFileName)
inl HMODULE WINAPI impl_LoadLibraryA(LPCSTR lpLibFileName){
	showfunc("LoadLibraryA( lpLibFileName: %s )", lpLibFileName);
	#ifdef USE_Windows_LoadLibrary
		HMODULE _ret = LoadLibraryA(lpLibFileName);
		if(!_ret){sys_GetLastError();}return _ret;
	#else
		return (HMODULE)Xe_AddLibrary(lpLibFileName);
		//return (HMODULE)AddLibrary("test");
	#endif
}

//!HMODULE WINAPI LoadLibraryExA (LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags)
//!HMODULE WINAPI LoadLibraryExW (LPCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags)
HMODULE WINAPI impl_LoadLibraryExA (LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags){
	showfunc("LoadLibraryExA( lpLibFileName: %s, dwFlags: %d )", lpLibFileName, dwFlags);
	#ifdef USE_Windows_LoadLibrary
		HMODULE _ret = LoadLibraryExA(lpLibFileName, dwFlags);
		if(!_ret){sys_GetLastError();}return _ret;
	#else
		return (HMODULE)Xe_AddLibrary(lpLibFileName);
	#endif
}
HMODULE WINAPI impl_LoadLibraryExW (LPCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags){

	showinf("TODO impl_LoadLibraryExW", "");
/* ==>  FIXME convert this C++ code to C VLA
	WStr _swFile(lpLibFileName);const char* _sFile = _swFile.ToCStr();
	showfunc("LoadLibraryExW( lpLibFileName: %s, dwFlags: %d )", _sFile, dwFlags);
	#ifdef USE_Windows_LoadLibrary
		HMODULE _ret = LoadLibraryExW(lpLibFileName, dwFlags);
		if(!_ret){sys_GetLastError();}return _ret;
	#else
		return (HMODULE)AddLibrary(_sFile);
	#endif
	*/
}

//!WINBOOL WINAPI FreeLibrary (HMODULE hLibModule)
WINBOOL WINAPI impl_FreeLibrary(HMODULE hLibModule){
	#ifdef USE_Windows_LoadLibrary
		WINBOOL _ret = FreeLibrary(hLibModule);
		if(!_ret){sys_GetLastError();}return _ret;
	#else
		return true; //TODO free lib?
	#endif
}

//!FARPROC GetProcAddress(HMODULE hModule,LPCSTR  lpProcName)
FARPROC WINAPI  impl_GetProcAddress(  HMODULE hModule, LPCSTR  lpProcName){
	showfunc("GetProcAddress( hModule: %p, lpProcName: %s)",hModule, lpProcName);
	#ifdef USE_Windows_GetProcAddress
		return GetProcAddress(hModule, lpProcName);
	#else
		char* _sDllName = (char*)"unknow";
		bool bOurLib = aModule(contain, (XE_Module*)hModule);

		FARPROC _func = 0;
		if(bOurLib){
			info_print("Module: %s [%s]", ((XE_Module*)hModule)->file.path, lpProcName);
			MEMORYMODULE* handle = ((XE_Module*)hModule)->handle;
			
			PIMAGE_DATA_DIRECTORY directory = GET_HEADER_DICTIONARY(handle, IMAGE_DIRECTORY_ENTRY_EXPORT);
			if(directory != 0){
				if ( directory->Size == 0) {
					 err_print("no export table found" );
				}
				_sDllName =  ((XE_Module*)hModule)->name;
			}
			_func =  MemGetProcAddress(handle, lpProcName);
		}
		if(_func != 0){
			_printl( "GetLibAddress[%s] --> %s() ...", _sDllName, lpProcName);
			return _func;
		}else{
			_printl("GetTableAddress[%s] --> %s() ...", _sDllName, lpProcName);
			// malloc name to keep track of it ///
			//TODO free it at end of XE-loading
			char* _newName = _mallocpy(lpProcName, strlen(lpProcName)+1, char);
			return MyMemoryDefaultGetProcAddress(0, _newName); //Look in our function table
		}
	#endif
}

void * impl_memset ( void * ptr, int value, size_t num ){
	printf("\n Memest!\n ");
	printf("\n -Memest!\n ");
	printf("\n -Memest!\n ");
	return 0;
}

/*
//!VOID impl_chkstk(DWORD size)
static void* ntdll = 0;
typedef ULONG  (*funcPtr_chkstk)();
static funcPtr_chkstk _func = 0;
//https://metricpanda.com/rival-fortress-update-45-dealing-with-__chkstk-__chkstk_ms-when-cross-compiling-for-windows/
//https://stackoverflow.com/questions/52406183/mingw-stack-size-reserved-or-committed
//WINIWE: https://github.com/wine-mirror/wine/blob/master/dlls/ntdll/signal_i386.c

//This issue was not only due to ntdll.dll. Potentially it could be on "large-address-aware" with JIT.I have missed to consider the case that JIT memory pool would not be within 2GB area.
ULONG impl_chkstk(){
	//Windows pages in extra stack for your thread as it is used. At the end of the stack, there is one guard page mapped as inaccessible memory -- if the program accesses it (because it is trying to use more stack than is currently mapped), there's an access violation. The OS catches the fault, maps in another page of stack at the same address as the old guard page, creates a new guard page just beyond the old one, and resumes from the instruction that caused the violation.
	//alloca is partially intrinsic function, implemented by compiler. but internally it call _alloca_probe_16 (for x86) or __chkstk(x64) for move guard page down on stack. implementation of this functions exist in alloca16.obj and chkstk.objwhich can be found in VC subfolder (where exacly depended from VC version) - you can add this obj for link process or even first convert it to lib. also in latest WDK libs - exist ntdllp.lib (not confuse with ntdll.lib) - it also containing all need for implementation ( ntdll.dll export _chkstk (for x86) and __chkstk (for x64))
	showfunc("chkstk( )", "");
	//showfunc("chkstk(size: %d)", size);
	if(ntdll == 0){
		//HMODULE _hmod = LoadLibraryA("ntdll.dll");
		HMODULE _hmod = LoadLibraryA("C:/Windows/System32/ntdll.dll");
		//HMODULE _hmod = LoadLibraryA("C:/Windows/SysWOW64/ntdll.dll");
		if(_hmod != 0){
			printf("\nLoaded");
			//_func = (funcPtr_chkstk)GetProcAddress(_hmod,"_chkstk");
			_func = (funcPtr_chkstk)GetProcAddress(_hmod,"_chkstk");
		}
	}
	if(_func != 0){
		showinf("Found chkstk: Call it %p", _func);
		return _func();
	}else{
		showinf("Error: No function 'chkstk'","");
	}
	return 0;
	//Load ntdll.dll: __chkstk
}
 */
 
 //!FILE * fopen ( const char * filename, const char * mode )
 FILE * impl_fopen ( const char * filename, const char * mode ){
	showfunc("fopen( filename: %p, mode: %s )", filename,mode);
	return fopen(filename, mode);
 }

 //!size_t wcstombs (char* dest, const wchar_t* src, size_t max);
 //Important: Windows wchar_t is 16-bit & for Linux, wchar_t is 32 bit.
 size_t impl_wcstombs(char* dest, const wchar_t* src, size_t max){
// wprintf(L"\nTHE SOURCE! %c\n " ,src);
	showfunc("wcstombs( dest: %p, src: %p , max: %d )", dest,src,max);
	if(!dest){ return 0;}
	
	// char* _res = W2CStr_(dest, src, max);
	 char* _res = W4CStr_(dest, (UTF32*)src, max);
	 showinf("_res: %s", dest);
	 return max;//TODO The number of bytes written to dest
	 
 }
 
//!void __cdecl _initterm(PVFV *,PVFV *);
typedef void (CDECL *__PVFV)();
inl void impl_initterm(__PVFV* ppfn,__PVFV* end){
	showfunc("_initterm( ppfn: %p, end: %p )", ppfn,end);
	do {
       __PVFV pfn =  *++ppfn;
        if (pfn){
            pfn();
        }
    } while (ppfn < end);
}

//!void __cdecl _initterm(PVFV *,PVFV *);
typedef int  (CDECL *__PIFV)();
inl int impl_initterm_e(__PIFV* ppfn,__PIFV* end){
	showfunc("_initterm_e( ppfn: %p, end: %p )", ppfn,end);
	do {
        __PIFV pfn = *++ppfn;
        if (pfn){
		int err;
            if ( err = pfn()) {
				showinf("fn error: %d", err);
				return err;
			}
        }
    } while (ppfn < end);
    return 0;
}

//!_CRTIMP char ***__cdecl __p__environ(void)
char* _environ_[] = {"test1", "test2"};
inl char*** impl_p__environ(void){
	showfunc("__p__environ( )", "");
	//return &_environ; //Standard one
	return (char***)&_environ_; //Custom
}

//!void __cdecl _lock(int locknum)
inl void  impl_lock(int locknum){
	showfunc_opt("_lock( locknum: %d )", locknum);
	//_lock(locknum);
}

//!void __cdecl _unlock(int locknum)
inl void  impl_unlock(int locknum){
	showfunc_opt("_unlock( locknum: %d )", locknum);
	//_unlock(locknum);
}

//!void __set_app_type (int at)
#define _UNKNOWN_APP    0
#define _CONSOLE_APP    1
#define _GUI_APP        2
void impl_set_app_type (int at){
	switch(at){
		case _GUI_APP:showfunc("_set_app_type( at: %d [_GUI_APP] )",at);break;
		case _CONSOLE_APP:showfunc("_set_app_type( at: %d [_CONSOLE_APP] )",at);break;
		default :showfunc("_set_app_type( at: %d [_UNKNOWN_APP] )",at);break;
	}
}

// struct MSVCRT_lconv * CDECL MSVCRT_localeconv(void)
// __declspec(dllimport) int __cdecl __lconv_init (void);
//!int __lconv_init(void)
int impl_lconv_init(void){
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
const char* __acmdln = "Test cmdLine";
char** impl_p__acmdln( void ){
	showfunc("p__acmdln( )","");
	//__acmdln = (char*)malloc(8192);
    return (char**)&__acmdln;
   // return &__acmdln;
}	

//!_onexit_t _onexit(_onexit_t function)
FUNC_ impl_onexit(FUNC_ _func){
	showfunc("_onexit( fn: %p )", _func);
	//TODO _onexit can have multiple functions, must be added to a list
	//https://github.com/shihyu/learn_c/blob/master/vc_lib_src/src/onexit.c
	return _func; //success?
}

#define	_O_TEXT_	0x4000	// CR-LF in file becomes LF in memory. 
#define	_O_BINARY_	0x8000	// Input and output is not translated. 
int _fmode_ = _O_TEXT_;
int* impl_p__fmode(){
	showfunc("__p__fmode( )", "");
	_fmode_ = _O_TEXT_;
	return &_fmode_;
}
#define _IOCOMMIT   0x4000
int _commode = _IOCOMMIT;
int * impl_p__commode(){
	return &_commode;
}
char *__initenv = NULL;     /* pointer to initial environment block */
int * impl_p__initenv(){
	return &_commode;
}


#ifndef _STARTUP_INFO_DEFINED
 #define _STARTUP_INFO_DEFINED
   typedef struct {
     int newmode;
   } _startupinfo;
 #endif
int argc_ = 3;
const char* envp_[] = { "env0", "env1", "env2" };
//const char* argv_[] = { "cwc", "param1", "param2" };
const char* argv_[] = { "cwc", "-c", "ddd.c" };

//!int __getmainargs(int * _Argc,char *** _Argv,char *** _Env,int _DoWildCard,_startupinfo * _StartInfo)
int impl_getmainargs(int* _Argc, char*** _Argv, char*** _Env, int _DoWildCard, void* _StartInfo){ //_StartInfo :Other information to be passed to the CRT DLL.
	showfunc("__getmainargs( _Argc: %p, _Argv: %p, _Env: %p, _DoWildCard: %d, _StartInfo: %p )", _Argc, _Argv, _Env, _DoWildCard, _StartInfo);
	
	LPSTARTUPINFO lpStartupInfo = _StartInfo;
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

	for(int i = 0; i < *_Argc; i++){
		showinf("arg[%d]: %s", i, (*_Argv)[i]);
	}

	*_Argc = argc_;
	*_Env = (char**)&envp_;
	*_Argv = (char**)&argv_;

	return 0;//successful
}

//!int _vscprintf(const char *format,va_list argptr)
inl int impl_vscprintf(const char *format,va_list argptr){
	showfunc_opt("_vscprintf( )", "");
    int retval = 0; 
    va_list argcopy;
    va_copy(argcopy, argptr); 
    retval = vsnprintf(NULL, 0, format, argcopy); 
    va_end(argcopy); 
    return retval;
 }

//!char *_strdup(const char *strSource)
inl char* impl_strdup(const char *strSource){
	showfunc_opt("_strdup( strSource: %s )", strSource);
	size_t size = strlen(strSource) + 1;
	char* str = (char*)malloc(size);
	if (str) {memcpy(str, strSource, size);}
	return str;
}

//!char * strncpy( char * destination, const char * source, size_t num )
inl char* impl_strncpy( char * destination, const char * source, size_t num ){
	showfunc_opt("strncpy( destination: %p, source: %p, num: %d )", destination, source, num);
	size_t i = 0;
	while(i++ != num && (*destination++ = *source++));
	return destination;
}

//!int isspace ( int c )
inl int impl_isspace( int c ){
	showfunc_opt("isspace( c %d )", c);
	return c == ' ' || c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r'; // || whatever other char you consider space
}

//!int isupper ( int c )
inl int  impl_isupper( int c ){
	showfunc_opt("isupper( c %d )", c);
	return (c >= 'A' && c <= 'Z');
}

//!int islower ( int c )
inl int  impl_islower( int c ){
	showfunc_opt("islower( c %d )", c);
	return (c >= 'a' && c <= 'z');
}

//!int abs(int x)
inl int impl_abs(int x){
	showfunc_opt("abs( x %d )", x);
	if(x < 0){return x*-1;}return x;
}

//===== CommandLine ==== //

//!LPSTR GetCommandLineA(){
//!LPWSTR GetCommandLineW(){
LPSTR impl_GetCommandLineA(){
	showfunc("GetCommandLineA( )", "");
	#ifdef Func_Win
	return GetCommandLineA();
	#else
	//TODO Real Arg
	wchar_t* arg = (wchar_t*)L"Test ExeLoader winMain input arg";
	wchar_t* alloc = (wchar_t*) impl_LocalAlloc(0, sizeof(L"Test ExeLoader winMain input arg") ); //We must alloc with LocalAlloc because windows will call LocalFree later
	memcpy(alloc, arg, sizeof(L"Test ExeLoader winMain input arg"));
	showfunc_ret("GetCommandLineA[LPSTR: %p]", alloc);
	return (LPSTR)alloc; 
	#endif
}
LPWSTR WINAPI impl_GetCommandLineW(){
	showfunc("GetCommandLineW( )", "");
	#ifdef Func_Win
	return GetCommandLineW();
	#else
	//TODO Real Arg
	wchar_t* arg = (wchar_t*)L"Test ExeLoader winMain input arg";
	wchar_t* alloc = (wchar_t*) impl_LocalAlloc(0, sizeof(L"Test ExeLoader winMain input arg") ); //We must alloc with LocalAlloc because windows will call LocalFree later
	memcpy(alloc, arg, sizeof(L"Test ExeLoader winMain input arg"));
	showfunc_ret("GetCommandLineW[LPWSTR: %p]", alloc);
	return (LPWSTR)alloc; 
	#endif
}

//!LPWSTR* CommandLineToArgvW(LPCWSTR lpCmdLine,int* pNumArgs)
inl LPWSTR* WINAPI impl_CommandLineToArgvW(LPCWSTR lpCmdLine,int* pNumArgs){
	showfunc("CommandLineToArgvW( lpCmdLine: %p, pNumArgs: %p )", lpCmdLine, pNumArgs);
	#ifdef Func_Win
	return CommandLineToArgvW(lpCmdLine, pNumArgs);
	#else
	*pNumArgs = xe_arg_nb;
	showfunc_ret("CommandLineToArgvW(pNumArgs: %d)[exe_arg:]", *pNumArgs, *xe_arg);
	//TODO convert to wide
	return (LPWSTR*)xe_arg;
	#endif
}

//============ //

//!int snprintf ( char * s, size_t n, const char * format, ... )
inl int  impl_snwprintf( wchar_t* s, size_t n, const wchar_t* format, ... ){
	showfunc_opt("snwprintf( s: %p, n: %d, format: %p, ... )", s,n,format); 
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

	vswprintf_ARG(format, s, n, ret);
	//wprintf(L"TEST: %s", s);
	return  ret;
	*/
	return 0;
}


//!int fwprintf (FILE* stream, const wchar_t* format, ...)
inl int impl_fwprintf (FILE* stream, const wchar_t* format, ...){
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
int impl_vsnprintf (char* s, size_t n, const char *  format, va_list __local_argv){

	showfunc_opt("vsnprintf( s: %p, n: %u, format: %s, ... )", s, n, format);
	#ifdef USE_limit_on_vsnprintf
	if(n > USE_limit_on_vsnprintf) n = USE_limit_on_vsnprintf;
	#endif
	
	return vsnprintf(s, n, format, __local_argv);
}

//!int vsprintf (char * s, const char * format, va_list arg )
int impl_vsprintf (char* s, const char *  format, va_list __local_argv){
	showfunc_opt("vsprintf( s: %p, format: %s, ... )", s,  format);
	int ret = vsprintf(s, format, __local_argv);
	showinf("vsprintf_result: %s", s);
	return ret;
}

//!UINT ___lc_codepage_func(void)
UINT impl_lc_codepage_func(void){
	showfunc_opt("___lc_codepage_func( )", ""); 
	return 0; //TODO validate?
}

//!int _stricmp(const char *string1,const char *string2)
int impl_stricmp(const char *string1,const char *string2){
	showfunc_opt("_stricmp( string1: %p, string2: %p )", ""); 
	return stricmp(string1, string2);
}

//!int fprintf ( FILE * stream, const char * format, ... )
//int impl_fprintf( FILE* stream, const char* format, va_list __local_argv){
int impl_fprintf( FILE* stream, const char* format, ...){
	showfunc_opt("fprintf( stream: %p, format: %s, ... )", stream,format); 
	va_list _arg_;va_start (_arg_, format);

	#ifdef USE_PRINTF
	int ret = vprintf(format, _arg_);
	#else
	
	//TODO optimise & size check
	char BUFFER[4096] = {0};
	int ret = 0;
	va_list arg;
	va_start (arg, format);
		 ret = vsprintf (BUFFER, format, arg);
	va_end (arg);
	showinf("O> %s", BUFFER);
	#endif
	
	va_end (_arg_);
	return ret;
}

//!int printf ( const char * format, ... )
//int impl_printf( const char* format, va_list __local_argv){
int impl_printf( const char* format, ...){
	showfunc_opt("printf( stream: %p, format: %s, ... )",format); 
	va_list _arg_;va_start (_arg_, format);
	#ifdef USE_PRINTF
	int ret = printf(_arg_);
	#else
	
	//TODO optimise & size check
	char BUFFER[4096] = {0};
	va_list arg;
	va_start (arg, format);
		int ret = vsprintf (BUFFER, format, arg);
	va_end (arg);
	showinf("O> %s", BUFFER);
	
	#endif
	va_end (_arg_);
	return ret;
}

//!size_t fwrite ( const void * ptr, size_t size, size_t count, FILE * stream )
size_t impl_fwrite( const void * ptr, size_t size, size_t count, FILE * stream ){
	showfunc_opt("fwrite( ptr: %p, size: %d, count: %d, stream: %p )", ptr,size, count, stream); 
	return fwrite(ptr,size, count, stdout);
	//printf("%s", _char);
}

//!int fflush ( FILE * stream )
int impl_fflush( FILE * stream ){
	showfunc("fflush( stream: %p )", stream); 
	return 0;
}

//!int fputc(int char, FILE *stream)
int impl_fputc(int _char, FILE *stream){
	showfunc_opt("fputc( _char: %d, stream: %p, ... )", _char,stream); 
	_printf("%c", _char);
	return _char;
}

//!int putc(int char, FILE *stream)
int impl_putc(int _char, FILE *stream){
	showfunc_opt("putc( _char: %d, stream: %p, ... )", _char,stream); 
	_printf("%c", _char);
	return _char;
}
//!int putchar ( int character )
int impl_putchar( int _char ){
	showfunc_opt("putc( character: %c )", _char); 
	_printf("%c", _char);
	return _char;
}

//!int puts ( const char * str )
int impl_puts( const char * str ){
	showfunc_opt("puts( _char: %s )", str); 
	return _printf(str);
}

//!int fputs ( const char * str, FILE * stream )
int impl_fputs ( const char * str, FILE * stream ){
	showfunc_opt("puts( _char: %s, stream: %p)", str, stream); 
	return _printf(str);
}

//!int sprintf ( char * str, const char * format, ... )
int impl_sprintf( char * str, const char * format, va_list __local_argv){
	showfunc_opt("sprintf( s: %p, format: %p, ... )", str,format); 
	return sprintf(str, format, __local_argv);
}

//!int sprintf ( char * str, const char * format, ... )
int impl_snprintf( char * str, size_t n, const char * format, va_list __local_argv){
	showfunc_opt("snprintf( s: %p, format: %p, ... )", str,format); 
	return snprintf(str, n, format, __local_argv);
}

//!int* CDECL _errno(void )
static int _errno_ = 0;
int* impl_errno(void ){
	showfunc_opt("errno()", ""); 
	//  return &(msvcrt_get_thread_data()->thread_errno);
	return &_errno_;
}

//!long _lseek(int fd,long offset,int origin)
long impl_lseek(int fd,long offset,int origin){
	showfunc_opt("_lseek( fd: %d, offset: %d, origin: %d )", fd, offset, origin); 
	//File descriptor 0 stdint, 1 stdout, 2 strerr
	//If execution is allowed to continue, these functions set errno to EBADF and return -1L.
	return ((long)-1);
}

//!int _write(int fd,const void *buffer, unsigned int count)
int impl_write(int fd,const void* buffer, unsigned int count){
	showfunc_opt("_write( fd: %d, buffer: %p, count: %d )", fd, buffer, count);
	int _bytes = _printf ("%.*s\n",count, buffer)-1;
	if(_bytes > count){_bytes = count;}
	return _bytes;
}

//!int _isatty( int fd )
int impl_isatty( int fd ){
	showfunc_opt("isatty( fd: %d)", fd);
	//_isatty returns a nonzero value if the descriptor is associated with a character device. Otherwise, _isatty returns 0.
	return 1;
}

//!void __register_frame(void*)
void impl_register_frame(void* ptr){	//!__USING_SJLJ_EXCEPTIONS__
	// libgcc defines the __register_frame function to dynamically register new
	// dwarf frames for exception handling. This functionality is not portable
	// across compilers and is only provided by GCC. We use the __register_frame
	// function here so that code generated by the JIT cooperates with the unwinding
	// runtime of libgcc. When JITting with exception handling enable, LLVM
	// generates dwarf frames and registers it to libgcc with __register_frame.
	showfunc_opt("__register_frame( ptr: %p)", ptr);
}
//!void __deregister_frame(void*)	
void impl_deregister_frame(void* ptr){
	showfunc_opt("__deregister_frame( ptr: %p)", ptr);
}

//!void exit(int status)
void impl_exit(int status){
	showfunc("exit(status: %d)", status);
	fn void GDB_Func_Break();
	GDB_Func_Break();
	showfunc("Try Continuing...", "");
	return;
}

//!void abort (void)
void impl_abort (void){
	showfunc("abort", "");
	fn void GDB_Func_Break();
	GDB_Func_Break();
	showfunc("Try Continuing...", "");
	return;
}

//! int __cdecl _isctype(int _C,int _Type)
int impl_isctype(int _C,int _Type){
	showfunc("_isctype( _C: %d, _Type: %d)", _C, _Type);
	//return _isctype(_C, _Type);
	return 1; //or 0?
}

//!size_t strlen ( const char * str )
int impl_strlen(const char * str ){
	showfunc_opt("strlen( str: %s)", str);
	if(str == 0){ //Std will not check for null ptr!
		err_print("strlen on null ptr!");
		return 0;
	}
	return strlen(str);
}

//!char* strpbrk( const char * str1, const char * str2 )
char* impl_strpbrk( const char* str1, const char* str2 ){
	showfunc("strpbrk( str1: %s, str2: %s)", str1, str2);
	return strpbrk(str1, str2);
}

//!int _putenv(const char *envstring)
int impl_putenv(const char *envstring){
	showfunc("putenv( envstring: %s)", envstring);
	return 0;//successful 
}


//!void (*signal(int sig, void (*func)(int)))(int)
void (*impl_signal(int sig, void (*func)(int)))(int){
	showfunc("signal(signal: %d, func: %p)", sig, func);
	signal(sig, func);
}

#include <io.h> //_open / _get_osfhandle / _fileno

//!int _access( const char *path, int mode)
int impl_access( const char* path, int mode){
	showfunc("_access( path: %s, mode: %d)", path, mode);
	//return 0;//Each function returns 0 if the file has the given mode. The function returns -1 if the named file does not exist or does not have the given mode; in this case, errno is set as shown in the following table.
	#ifdef Func_Win
	return _access( path, mode);//Each function returns 0 if the file has the given mode. The function returns -1 if the named file does not exist or does not have the given mode; in this case, errno is set as shown in the following table.
	#endif
	return 0;
}

//!int _fileno(FILE *stream)
int impl_fileno(FILE* stream){
	showfunc("_fileno( stream: %p)", stream);
	#ifdef Func_Win
	return _fileno(stream);//continue? 
	#endif
	return -1;;//continue? 
}

//!intptr_t _get_osfhandle(int fd)
#ifndef EBADF
#define EBADF            9      /* Bad file number */
#endif
intptr_t impl_get_osfhandle(int fd){
	showfunc("_get_osfhandle( fd: %d )", fd); 
	#ifdef Func_Win
	intptr_t handle = _get_osfhandle(fd);
	showinf("FileHandle: %p", handle);
	//File descriptor 0 stdint, 1 stdout, 2 strerr
	//If execution is allowed to continue, it returns INVALID_HANDLE_VALUE (-1). It also sets errno to EBADF, indicating an invalid file handle.
	return handle;
	#endif
	return -1;
}

//!int _open(const char *filename, int oflag, [int pmode])
int impl_open(const char *filename, int oflag, int pmode){
	showfunc("_open(filename: '%s', oflag: %d, pmode: %d)", filename, oflag, pmode);
	#ifdef Func_Win
	return _open(filename, oflag, pmode);
	#endif
	return -1;//error
}

//!char *__cdecl strerror(int) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;
char* impl_strerror(int _errno){
	showfunc("strerror(_errno: %d)", _errno);
	char* err  = strerror(_errno);
	showinf("strerror: %s", err);
	return err;
}

//!int _stati64(const char *__path, struct stati64 *__statbuf);
#define _dev_t uint32_t //Represents device handles.
#define _ino_t uint16_t //For returning status information.
struct _stati64 {
    _dev_t st_dev;	//If a device, fd; otherwise 0.
    _ino_t st_ino;	//
    unsigned short st_mode; //Bit mask for file-mode information. The _S_IFCHR bit is set if fd refers to a device. The _S_IFREG bit is set if fd refers to an ordinary file. The read/write bits are set according to the file's permission mode. _S_IFCHR and other constants are defined in SYS\Stat.h.
    short st_nlink;	 //Always 1 on non-NTFS file systems.
    short st_uid;    //
    short st_gid;	 //
    _dev_t st_rdev;  //If a device, fd; otherwise 0.
    __int64 st_size; //Size of the file in bytes.
    time_t st_atime; //Time of the last file access.
    time_t st_mtime; //Time of the last modification of the file.
    time_t st_ctime; //Time of the creation of the file.
};
int impl_stati64(const char* __path, struct _stati64* __statbuf){
	showfunc("_stati64(__path: '%s', __statbuf: %p)", __path, __statbuf);
	//TODO get  last modification of the file.
	return 0;
	//The return value is 0 if the call was successful, otherwise -1 is returned and errno contains the reason. The buffer is not touched unless the call is successful. 
}
//!int _fstati64(int fd, struct _stati64 *buffer)
int impl_fstati64(int fd, struct _stati64* buffer){
	showfunc("_fstati64(fd: '%d', buffer: %p)", fd, buffer);
	//TODO get  last modification of the file.
	return 0;
	//Returns 0 if the file-status information is obtained. A return value of -1 indicates an error.
}


//!int _read(int const fd, void * const buffer, unsigned const buffer_size)
int impl_read(int const fd, void* const buffer, unsigned const buffer_size){
	showfunc("_read(fd: '%d', buffer: %p, buffer_size: %d)", fd, buffer, buffer_size);
	return _read( fd, buffer, buffer_size);
}

//!int _close(int fd)
int impl_close(int fd){
	showfunc("_close(fd: %d )", fd);
	return _close( fd);
}

//!int impl_dup(int fd)
int impl_dup(int fd){
	showfunc("_dup((fd: %d )", fd);
	#ifdef Func_Win
	int ret = _dup( fd);
	showinf("ret: %d", ret);
	return ret;
	#endif
	return 0;
}

//!WINBASEAPI WINBOOL WINAPI WriteFile (HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, LPDWORD lpNumberOfBytesWritten, LPOVERLAPPED lpOverlapped);
WINBOOL WINAPI impl_WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, LPDWORD lpNumberOfBytesWritten, LPOVERLAPPED lpOverlapped){
	showfunc("WriteFile(hFile: %p, lpBuffer: %p, nNumberOfBytesToWrite: %d, lpNumberOfBytesWritten: %p, lpOverlapped: %p)", hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, lpOverlapped);
	/*
	//Is that what we want?
	#ifdef Func_Win 
		return WriteFile(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, lpOverlapped);
	#endif
	*/
	*lpNumberOfBytesWritten=nNumberOfBytesToWrite;
	_printl("%.*s\n", nNumberOfBytesToWrite, lpBuffer);
	return true;
}

#include <process.h>
//int __cdecl _getpid(void);
//!int _getpid( void )
int impl_getpid( void ){
	showfunc("_getpid( )", "");
	#ifdef Func_Win
	int ret = _getpid( );
	showinf("ret: %d", ret)
	return ret;
	#endif
	return 0;
}

//!clock_t clock (void)
#include <time.h> 
clock_t impl_clock(void){ //Returns the processor time consumed by the program.
	showfunc("clock( )", "");
	clock_t _ret = clock();
	showinf("ret: %d ", _ret);
	return _ret;
}

//!int ___mb_cur_max_func(void)
int impl_mb_cur_max_func(void){ //Internal CRT function. Retrieves the maximum number of bytes in a multibyte character for the current or specified locale.
	showfunc("___mb_cur_max_func( )", "");
	return 1;
}

//!void _cexit( void )
void impl_cexit(void){ //The _cexit function calls, in last-in, first-out (LIFO) order, the functions registered by atexit and _onexit. Then _cexit flushes all I/O buffers and closes all open streams before returning. _c_exit is the same as _exit but returns to the calling process without processing atexit or _onexit or flushing stream buffers
	showfunc("_cexit( )", "");
}

/*
LPVOID WINAPI LocalLock (HLOCAL hMem);
SIZE_T WINAPI LocalShrink (HLOCAL hMem, UINT cbNewSize);
SIZE_T WINAPI LocalCompact (UINT uMinFree);
UINT WINAPI LocalFlags (HLOCAL hMem);
HLOCAL WINAPI LocalHandle (LPCVOID pMem);
WINBOOL WINAPI LocalUnlock (HLOCAL hMem);
*/