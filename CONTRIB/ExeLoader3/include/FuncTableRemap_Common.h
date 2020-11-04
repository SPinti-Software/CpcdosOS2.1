

extern  FARPROC MyMemoryDefaultGetProcAddress(HCUSTOMMODULE module, LPCSTR name, void *userdata);


void WINAPI  My_EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
	#ifndef UseWinFunc
    cpc_EntrerSectionCritique();
	#endif
}

void WINAPI  My_LeaveCriticalSection(){
	#ifndef UseWinFunc
    cpc_SortirSectionCritique();
	#endif
}

void WINAPI  My_DeleteCriticalSection(){
    _EXE_LOADER_DEBUG(3, "Impossible de supprimer, section critique initialise par le noyau", "Unable to delete, critical section initialised by kernel");
}

void WINAPI  My_GetModuleHandleA( LPCTSTR lpModuleName ){
    _EXE_LOADER_DEBUG(3, "GetModuleHandleA non implemente!", "GetModuleHandleA not implemented! Modulename: %s\n" , lpModuleName);
}
void WINAPI  My_InitializeCriticalSection(){
    _EXE_LOADER_DEBUG(3, "Section critique deja initialise par le noyau", "Critical section already initialised by kernel");
}
BOOL  WINAPI  My_InitializeCriticalSectionEx( LPCRITICAL_SECTION lpCriticalSection, DWORD              dwSpinCount, DWORD              Flags){
    _EXE_LOADER_DEBUG(3, "Section critique deja initialise par le noyau", "Critical section already initialised by kernel");
    return false;
}

LPTOP_LEVEL_EXCEPTION_FILTER  My_SetUnhandledExceptionFilter( LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter){
    _EXE_LOADER_DEBUG(3, "SetUnhandledExceptionFilter non implemente!", "SetUnhandledExceptionFilter not implemented!");
    return 0;
}


DWORD WINAPI My_TlsAlloc(void){
    _EXE_LOADER_DEBUG(3, "TlsAlloc non implemente!", "TlsAlloc not implemented!");
	return 0;
}
LPVOID WINAPI My_TlsGetValue(  DWORD dwTlsIndex){
    _EXE_LOADER_DEBUG(3, "TlsGetValue non implemente!", "TlsGetValue not implemented!");
    return (LPVOID)0;
}
BOOL  WINAPI My_TlsSetValue(  DWORD dwTlsIndex, _In_opt_ LPVOID lpTlsValue){
    _EXE_LOADER_DEBUG(3, "TlsSetValue non implemente!", "TlsSetValue not implemented!");
    return false;
}

void __cdecl  My_lock(int locknum ){
	printf("\nTry to lock");
}

void My_VirtualProtect(){
    _EXE_LOADER_DEBUG(3, "VirtualProtect non implemente!", "VirtualProtect not implemented!");
}
void My_VirtualQuery(){
    _EXE_LOADER_DEBUG(3, "VirtualQuery non implemente!", "VirtualQuery not implemented!");
}
int My_getmainargs( int * _Argc, char *** _Argv,  char *** _Env, int _DoWildCard,void * _StartInfo){
    _EXE_LOADER_DEBUG(3, "__getmainargs%d\n", "__getmainargs: %d\n", *_Argc);
	return -1;
}

void   My_set_app_type(int at){
    _EXE_LOADER_DEBUG(3, "__set_app_type non implemente --> App type: %d\n", "__set_app_type not implemented! --> App type: %d\n", at); //_UNKNOWN_APP , _CONSOLE_APP, _GUI_APP
}

void My__signal(){
    _EXE_LOADER_DEBUG(3, "signal non implemente!", "signal not implemented!");
}
int My_setmode( int fd, int mode ){
    _EXE_LOADER_DEBUG(3, "_setmode non implemente --> %d : %d \n", "_setmode not implemented! : %d : %d \n", fd, mode);
    return  0x0004; //O_BINARY
}

void exited(){
	_EXE_LOADER_DEBUG(0, "-- Exited --\n", "\n-- Exited --");
}

void My_ExitProcess( UINT uExitCode){
#ifndef UseWinFunc
    // _EXE_LOADER_DEBUG(3, "ExitProcess non implemente!", "ExitProcess not implemented! %d \n", uExitCode);
	// cpc_Thread_En_Cours();
	_EXE_LOADER_DEBUG(3, "Le programme s'est arrete avec le code %d\n", "Program has stopped with %d code\n", uExitCode);
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
    throw;
#endif
}

int My_atexit(void (*func)(void)){
    func = exited;
    _EXE_LOADER_DEBUG(3, "atexit non implemente!", "atexit not implemented!");
    return 0;
}

void My_cexit(){
	#ifndef UseWinFunc
    cpc_doevents(10000);
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
    throw;
	#endif
}

void My_Onexit(void (*func)(int status, void *arg)){
	#ifndef UseWinFunc
	cpc_doevents(10000);
    // _EXE_LOADER_DEBUG(3, "_onexit partiellement implemente!", "_onexit partially implemented!");
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
	#endif
}

//char gblbuf[1024] = "";
//void setbuf ( FILE * stream, char * buffer );
void My_setbuf( FILE * stream, char * buffer){
	printf("Using setbuf...%s \n", 0);
	setbuf(stream, 0);
}
void My_exit(int status){
	#ifndef UseWinFunc
	// return;
	cpc_doevents(10000);
    _EXE_LOADER_DEBUG(3, "Le programme s'est arrete avec le code %d\n", "Program has stopped with %d code\n", status);
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
	#endif
}
void iob(){
    _EXE_LOADER_DEBUG(3, "_iob non implemente!", "_iob not implemented!");
}

BOOL WINAPI My_IsProcessorFeaturePresent(_In_ DWORD ProcessorFeature){
    _EXE_LOADER_DEBUG(3, "IsProcessorFeaturePresent non implemente!", "IsProcessorFeaturePresent not implemented! ---- : %d \n", ProcessorFeature);
    return false;
}

DWORD  WINAPI My_GetCurrentProcessId(void){
    _EXE_LOADER_DEBUG(3, "GetCurrentProcessId non implemente!", "GetCurrentProcessId not implemented!");
    return 0;
}

void Nothing(){
  //  #ifndef OnWin
    _EXE_LOADER_DEBUG(0, "\n--- Nothing ---", "\n--- Nothing ---");
   // #endif
}

void STDCALL StdNothing(){
  //  #ifndef OnWin
    _EXE_LOADER_DEBUG(0, "\n--- Nothing ---", "\n--- Nothing ---");
   // #endif
}



char* sEnviron[] = {(char*)"aaaabbbvvv", (char*)"aaaaa"};
char*** cEnviron;
char ***  My_penviron()
{
	cEnviron = (char***) &sEnviron;
	_EXE_LOADER_DEBUG(3, "__p__environ non implemente!", "__p__environ not implemented!");
	return cEnviron;
}

int fmode =  0x0004; //O_BINARY; //???????

int* My_pfmode(){
    _EXE_LOADER_DEBUG(0, "__p__fmode non implemente!", "__p__fmode not implemented!");
    return &fmode; //Pointer to the _fmode global variable.
}

UINT  My__lc_codepage_func(){
	return 0;
}



HANDLE  STDCALL  My_CreateSemaphore( //Must have  __stdcall
 _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
  _In_     LONG                  lInitialCount,
  _In_     LONG                  lMaximumCount,
  _In_opt_ LPCTSTR               lpName
)
{
   _EXE_LOADER_DEBUG(3, "CreateSemaphore non implemente!", "CreateSemaphore not implemented!");
	return 0;
}




LPTSTR  My_GetCommandLineA(){
    _EXE_LOADER_DEBUG(3, "GetCommandLineA non implemente!", "GetCommandLineA not implemented!");
    return (LPTSTR)"TestCmdLine";
}
DWORD   My_GetCurrentThreadId(){
    _EXE_LOADER_DEBUG(3, "GetCurrentThreadId non implemente!", "GetCurrentThreadId not implemented!");
    return 55;
}

HANDLE   My_CreateMutexA(LPSECURITY_ATTRIBUTES lpMutexAttributes, BOOL      bInitialOwner, LPCTSTR               lpName){
    _EXE_LOADER_DEBUG(3, "CreateMutexA non implemente!", "CreateMutexA not implemented!");
    return 0;
}
DWORD    My_WaitForSingleObject( HANDLE hHandle, DWORD  dwMilliseconds){
    _EXE_LOADER_DEBUG(3, "WaitForSingleObject non implemente!", "WaitForSingleObject not implemented!");
    return 0;
}
ATOM    My_FindAtomA( LPCTSTR lpString){
    _EXE_LOADER_DEBUG(3, "FindAtomA non implemente!", "FindAtomA not implemented!");
    return 0;
}
UINT     My_GetAtomNameA(  ATOM   nAtom,  LPTSTR lpBuffer,  int    nSize){
    _EXE_LOADER_DEBUG(3, "GetAtomNameA non implemente!", "GetAtomNameA not implemented!");
    return 0;
}
ATOM      My_AddAtomA(  LPCTSTR lpString){
    _EXE_LOADER_DEBUG(3, "AddAtomA non implemente!", "AddAtomA not implemented!");
    return 0;
}

LONG  My_InterlockedExchange( LONG volatile *Target,  LONG Value){
    return 0;
}
BOOL   My_ReleaseMutex( HANDLE hMutex){
    return 0;
}

void WINAPI My_SetLastError(_In_ DWORD dwErrCode){
    _EXE_LOADER_DEBUG(3, "", "SetLastError not implemented!");
}


/*
void My_GetStartupInfoA(LPSTARTUPINFO lpStartupInfo){
    _EXE_LOADER_DEBUG(3, "", "GetStartupInfoA not implemented!");
}*/


void fNotImplemented(){
    _EXE_LOADER_DEBUG(3, "Fonction non implemente!", "Function not implemented!");
}

LONG  My_InterlockedDecrement( LONG volatile *Addend){

    return (LONG)Addend;
}

bool STDCALL My_WriteConsoleA( HANDLE  hConsoleOutput, const VOID* lpBuffer, DWORD   nNumberOfCharsToWrite,LPDWORD lpNumberOfCharsWritten, LPVOID  lpReserved ){
    for(unsigned int i = 0; i < nNumberOfCharsToWrite; i++){
        _EXE_LOADER_DEBUG(0, "%c", "%c", ((char*)lpBuffer)[i]);
    }
    return true;
}

char * My_getenv(const char *varname ){
    return 0;
    _EXE_LOADER_DEBUG(0, "Mygetenv: %s\n", "Mygetenv: %s\n", varname);
   // return (char*)varname;
   errno = EINVAL;
    return (char*)"10";
}
/*
//int puts(const char *str);
void My_puts( const char * str ){
	printf("\n\n");
}*/
//int printf ( const char * format, ... );
int WINAPI My_printf( const char * format, ... ){
	printf("\nPrintfCallled!\n");
    return 1;

}


int My_fputc(int character, FILE * stream){
    _EXE_LOADER_DEBUG(0, "%c", "%c", character);
	return character;
}

void My_localeconv(){
    _EXE_LOADER_DEBUG(0, "localeconv fonction non implemente", "localeconv Function not implemented!");
}

void My_GetStartupInfo( LPSTARTUPINFO lpStartupInfo){
    _EXE_LOADER_DEBUG(0, "MyGetStartupInfo non implemente! -- Remise a zero", "MyGetStartupInfo Function not implemented! -- Reset info");
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


}

HMODULE  My_LoadLibraryEx(  LPCTSTR lpFileName, HANDLE  hFile, DWORD   dwFlags)
{
	_EXE_LOADER_DEBUG(3, "LoadLibraryEx non implemente!", "LoadLibraryEx not implemented! : %s\n", lpFileName);
    return 0;
}

//LoadLibraryExW
FARPROC WINAPI  My_GetProcAddress(  HMODULE hModule, LPCSTR  lpProcName){
    _EXE_LOADER_DEBUG(0, "GetProcAddress --> %s() ...", "GetProcAddress --> %s() ...", lpProcName);
    return MyMemoryDefaultGetProcAddress(0, lpProcName, 0);
}

int WINAPI abs_CPC(int nombre)
{
	const int ret[2] = { nombre, -nombre };
    return ret [nombre<0];
}
int My_abs(int nombre){
	if(nombre < 0){
		return nombre*-1;
	}
    return nombre;
}
