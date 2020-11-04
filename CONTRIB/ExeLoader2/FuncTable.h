// Mickael BANVILLE & Sebastien FAVIER
//  ExeLoader pour Cpcdos
// Update 27/10/2016

#include "win.h"

#ifndef ImWin
#define InCpcDosCore
#include "CPC_WPR.h"

#endif // ImWin

//#define WinLastError

#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include <errno.h>
#include <conio.h>

//#include <internal.h>
#include <cassert>
#include <cstdarg>
#include <setjmp.h>



#include "WinRemplaceFuncTable.h"


extern "C" int __kbhit(void);


//Declaration                        ----------------------->    decorated name
//void __cdecl foo(void);            ----------------------->    _foo
//void __cdecl foo(int a);           ----------------------->    _foo
//void __cdecl foo(int a, int b);    ----------------------->    _foo
//void __stdcall foo(void);          ----------------------->    _foo@0
//void __stdcall foo(int a);         ----------------------->    _foo@4
//void __stdcall foo(int a, int b);  ----------------------->    _foo@8
//void __fastcall foo(void);         ----------------------->    @foo@0
//void __fastcall foo(int a);        ----------------------->    @foo@4
//void __fastcall foo(int a, int b); ----------------------->    @foo@8

extern  FARPROC MyMemoryDefaultGetProcAddress(HCUSTOMMODULE module, LPCSTR name, void *userdata);


char * cpc_fgets ( char * texte, int num, FILE * stream )
{
	// if (stream == stdin)
	// {
		cpc_CCP_Exec_Commande("fix/ /q _exe_QUESTION", 4);
		char * retour = cpc_CCP_Lire_Variable("_exe_QUESTION", 4);
		for(int b = 0; b <= num; b++)
		{
			texte[b] = retour[b];
		}
		texte[num-1] = '\n';
		texte[num] = '\0';
		return texte;
	// }
	// else
		// return fgets(texte, num, stream);
}

int my_memcmp(const void *p1, const void *p2, size_t n)
{
	// Demande par Maeiky
    size_t i;

    if (p1 == p2)
    {
        return 0;
    }

    // Boucle pour comparer les deux buffers
    for (i = 0; (i < n) && (*(uint8_t *)p1 == *(uint8_t *)p2);
        i++, p1 = 1 + (uint8_t *)p1, p2 = 1 + (uint8_t *)p2);

    // Si ça retourne 1 c'est que c'est <
    return (i == n) ? 0 : (*(uint8_t *)p1 - *(uint8_t *)p2);
}

char * substr(char *chaineSource,int pos,int len) { 
	char * dest=NULL;                        
	if (len>0) {                  
		/* allocation et mise à zéro */          
		dest = (char *)calloc(len+1, 1);      
		/* vérification de la réussite de l'allocation*/  
		if(NULL != dest) {
			strncat(dest,chaineSource+pos,len);            
		}
	}                                       
	return dest;                            
}
 
char * mid(char *chaineSource, int pos) {
	return (pos>strlen(chaineSource))? chaineSource : substr(chaineSource, pos, strlen(chaineSource));
}
 
char * left(char *chaineSource, int len){
	return (len>=strlen(chaineSource))? chaineSource : substr(chaineSource, 0, len);
}
 
char * right(char *chaineSource, int len){
	return (len>=strlen(chaineSource))? chaineSource : substr(chaineSource, strlen(chaineSource)-len, len);
}


LPTSTR  My_GetCommandLineA(){
    _EXE_LOADER_DEBUG(3, "GetCommandLineA non implemente!", "GetCommandLineA not implemented!\n");
    return (LPTSTR)"TestCmdLine";
}
DWORD   My_GetCurrentThreadId(){
    _EXE_LOADER_DEBUG(3, "GetCurrentThreadId non implemente!", "GetCurrentThreadId not implemented!\n");
    return 55;
}

HANDLE   My_CreateMutexA(LPSECURITY_ATTRIBUTES lpMutexAttributes, BOOL      bInitialOwner, LPCTSTR               lpName){
    _EXE_LOADER_DEBUG(3, "CreateMutexA non implemente!", "CreateMutexA not implemented!\n");
    return 0;
}
DWORD    My_WaitForSingleObject( HANDLE hHandle, DWORD  dwMilliseconds){
    _EXE_LOADER_DEBUG(3, "WaitForSingleObject non implemente!", "WaitForSingleObject not implemented!\n");
    return 0;
}
ATOM    My_FindAtomA( LPCTSTR lpString){
    _EXE_LOADER_DEBUG(3, "FindAtomA non implemente!", "FindAtomA not implemented!\n");
    return 0;
}
UINT     My_GetAtomNameA(  ATOM   nAtom,  LPTSTR lpBuffer,  int    nSize){
    _EXE_LOADER_DEBUG(3, "GetAtomNameA non implemente!", "GetAtomNameA not implemented!\n");
    return 0;
}
ATOM      My_AddAtomA(  LPCTSTR lpString){
    _EXE_LOADER_DEBUG(3, "AddAtomA non implemente!", "AddAtomA not implemented!\n");
    return 0;
}

LONG  My_InterlockedExchange( LONG volatile *Target,  LONG Value){
    return 0;
}
BOOL   My_ReleaseMutex( HANDLE hMutex){
    return 0;
}

void WINAPI My_SetLastError(_In_ DWORD dwErrCode){
    _EXE_LOADER_DEBUG(3, "", "SetLastError not implemented!\n");
}


/*
void My_GetStartupInfoA(LPSTARTUPINFO lpStartupInfo){
    _EXE_LOADER_DEBUG(3, "", "GetStartupInfoA not implemented!\n");
}*/


void fNotImplemented(){
    _EXE_LOADER_DEBUG(3, "Fonction non implemente!", "Function not implemented!\n");
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
int My_fputc(int character, FILE * stream){
    _EXE_LOADER_DEBUG(0, "%c", "%c", character);
	return character;
}

void My_localeconv(){
    _EXE_LOADER_DEBUG(0, "localeconv fonction non implemente", "localeconv Function not implemented!\n");
}

void My_GetStartupInfo( LPSTARTUPINFO lpStartupInfo){
    _EXE_LOADER_DEBUG(0, "MyGetStartupInfo non implemente! -- Remise a zero", "MyGetStartupInfo Function not implemented! -- Reset info\n");
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

void WINAPI sleep_CPC(unsigned int millisecondes)
{
	// Cette fonction permet d'utiliser le "sleep" de Cpcdos
	cpc_cpinti_sleep_ms(millisecondes);
}

int WINAPI kbhit_CPC(void)
{
	return __kbhit();
}

void WINAPI usleep_CPC(unsigned int microsecondes)
{
	// Cette fonction permet d'utiliser le "sleep" de Cpcdos
	cpc_cpinti_sleep_us(microsecondes);
}

int WINAPI printf_CPC(const char* format, ...)
{
	// Cette fonction permet d'utiliser le "printf" de Cpcdos

	va_list arg;
	int Retour;
	char BUFFER[1024] = {0};
	
	va_start (arg, format);
		Retour = vsprintf (BUFFER, format, arg);
	va_end (arg);
	
	cpc_cpinti_debug_plus_cpinticore((const char*) BUFFER, 1, 1, 0, 0, 1, 0, 1110, NULL);
	
	memset(BUFFER, '\0', sizeof(char)*1024);
	
	return Retour;
}

void WINAPI  My_EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection){
    cpc_EntrerSectionCritique();
}

void WINAPI  My_LeaveCriticalSection(){
    cpc_SortirSectionCritique();
}
void WINAPI  My_DeleteCriticalSection(){
    _EXE_LOADER_DEBUG(3, "Impossible de supprimer, section critique initialise par le noyau", "Unable to delete, critical section initialised by kernel\n");
}

void WINAPI  My_GetModuleHandleA( LPCTSTR lpModuleName ){
    _EXE_LOADER_DEBUG(3, "GetModuleHandleA non implemente!", "GetModuleHandleA not implemented! Modulename: %s\n" , lpModuleName);
}
void WINAPI  My_InitializeCriticalSection(){
    _EXE_LOADER_DEBUG(3, "Section critique deja initialise par le noyau", "Critical section already initialised by kernel\n");
}
BOOL  WINAPI  My_InitializeCriticalSectionEx( LPCRITICAL_SECTION lpCriticalSection, DWORD              dwSpinCount, DWORD              Flags){
    _EXE_LOADER_DEBUG(3, "Section critique deja initialise par le noyau", "Critical section already initialised by kernel\n");
    return false;
}

LPTOP_LEVEL_EXCEPTION_FILTER  My_SetUnhandledExceptionFilter( LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter){
    _EXE_LOADER_DEBUG(3, "SetUnhandledExceptionFilter non implemente!", "SetUnhandledExceptionFilter not implemented!\n");
    return 0;
}


DWORD WINAPI My_TlsAlloc(void){
    _EXE_LOADER_DEBUG(3, "TlsAlloc non implemente!", "TlsAlloc not implemented!\n");
	return 0;
}
LPVOID WINAPI My_TlsGetValue(  DWORD dwTlsIndex){
    _EXE_LOADER_DEBUG(3, "TlsGetValue non implemente!", "TlsGetValue not implemented!\n");
    return (LPVOID)0;
}
BOOL  WINAPI My_TlsSetValue(  DWORD dwTlsIndex, _In_opt_ LPVOID lpTlsValue){
    _EXE_LOADER_DEBUG(3, "TlsSetValue non implemente!", "TlsSetValue not implemented!\n");
    return false;
}

void My_VirtualProtect(){
    _EXE_LOADER_DEBUG(3, "VirtualProtect non implemente!", "VirtualProtect not implemented!\n");
}
void My_VirtualQuery(){
    _EXE_LOADER_DEBUG(3, "VirtualQuery non implemente!", "VirtualQuery not implemented!\n");
}
int My_getmainargs( int * _Argc, char *** _Argv,  char *** _Env, int _DoWildCard,void * _StartInfo){
    _EXE_LOADER_DEBUG(3, "__getmainargs%d\n", "__getmainargs: %d\n", *_Argc);
	return -1;
}

void   My_set_app_type(int at){
    _EXE_LOADER_DEBUG(3, "__set_app_type non implemente --> App type: %d\n", "__set_app_type not implemented! --> App type: %d\n", at); //_UNKNOWN_APP , _CONSOLE_APP, _GUI_APP
}

void My__signal(){
    _EXE_LOADER_DEBUG(3, "signal non implemente!", "signal not implemented!\n");
}
int My_setmode( int fd, int mode ){
    _EXE_LOADER_DEBUG(3, "_setmode non implemente --> %d : %d \n", "_setmode not implemented! : %d : %d \n", fd, mode);
    return  0x0004; //O_BINARY
}

void exited(){
	_EXE_LOADER_DEBUG(0, "\n-- Exited --\n", "\n-- Exited --\n");
}

void My_ExitProcess( UINT uExitCode){
    // _EXE_LOADER_DEBUG(3, "ExitProcess non implemente!", "ExitProcess not implemented! %d \n", uExitCode);
	// cpc_Thread_En_Cours();
	_EXE_LOADER_DEBUG(3, "Le programme s'est arrete avec le code %d\n", "Program has stopped with %d code\n", uExitCode);
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
    throw;
}

int My_atexit(void (*func)(void)){
    func = exited;
    _EXE_LOADER_DEBUG(3, "atexit non implemente!", "atexit not implemented!\n");
    return 0;
}

void My_cexit(){
    cpc_doevents(10000);
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
    throw;
}

void My_Onexit(void (*func)(int status, void *arg)){
	cpc_doevents(10000);
    // _EXE_LOADER_DEBUG(3, "_onexit partiellement implemente!", "_onexit partially implemented!\n");
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
}

void My_exit(int status){
	// return;
	cpc_doevents(10000);
    _EXE_LOADER_DEBUG(3, "Le programme s'est arrete avec le code %d\n", "Program has stopped with %d code\n", status);
	cpc_supprimer_Thread(cpc_Thread_En_Cours(), true);
	cpc_doevents(0);
}
void iob(){
    _EXE_LOADER_DEBUG(3, "_iob non implemente!", "_iob not implemented!\n");
}

BOOL WINAPI My_IsProcessorFeaturePresent(_In_ DWORD ProcessorFeature){
    _EXE_LOADER_DEBUG(3, "IsProcessorFeaturePresent non implemente!", "IsProcessorFeaturePresent not implemented! ---- : %d \n", ProcessorFeature);
    return false;
}

DWORD  WINAPI My_GetCurrentProcessId(void){
    _EXE_LOADER_DEBUG(3, "GetCurrentProcessId non implemente!", "GetCurrentProcessId not implemented!\n");
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
	_EXE_LOADER_DEBUG(3, "__p__environ non implemente!", "__p__environ not implemented!\n");
	return cEnviron;
}

int fmode =  0x0004; //O_BINARY; //???????

int* My_pfmode(){
    _EXE_LOADER_DEBUG(0, "__p__fmode non implemente!", "__p__fmode not implemented!\n");
    return &fmode; //Pointer to the _fmode global variable.
}

HANDLE  STDCALL  My_CreateSemaphore( //Must have  __stdcall
 _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
  _In_     LONG                  lInitialCount,
  _In_     LONG                  lMaximumCount,
  _In_opt_ LPCTSTR               lpName
)
{
   _EXE_LOADER_DEBUG(3, "CreateSemaphore non implemente!", "CreateSemaphore not implemented!\n");
	return 0;
}


typedef void* (*FUNC_)();
typedef struct {
    const char* sFuncName;
    FUNC_ dFunc;
} sFunc;


sFunc aTableFunc[] = {

{"fNotImplemented" ,(FUNC_) fNotImplemented }, //Must be first

{"GetProcAddress" ,(FUNC_) My_GetProcAddress },

//{"_initterm" ,(FUNC_) My_initterm }, //Must be first


#ifdef UseWinFunc


	{"LoadLibraryExW"  ,(FUNC_) LoadLibraryExW },
	{"InitializeCriticalSectionEx" ,(FUNC_) My_InitializeCriticalSectionEx },
	{"IsProcessorFeaturePresent" ,(FUNC_) My_IsProcessorFeaturePresent },

    {"LoadLibraryExW"  ,(FUNC_) LoadLibraryExW },
  //  {"GetProcAddress"  ,(FUNC_) GetProcAddress },
    {"IsProcessorFeaturePresent"  ,(FUNC_) IsProcessorFeaturePresent },
    {"InitializeCriticalSectionAndSpinCount"  ,(FUNC_) InitializeCriticalSectionAndSpinCount },
    {"HeapAlloc"  ,(FUNC_) HeapAlloc },
    {"GetProcessHeap"  ,(FUNC_) GetProcessHeap },
    {"IsDebuggerPresent"  ,(FUNC_) IsDebuggerPresent },
    {"IsDebuggerPresent"  ,(FUNC_) IsDebuggerPresent },
    {"UnhandledExceptionFilter"  ,(FUNC_) UnhandledExceptionFilter },
    {"GetCurrentProcess"  ,(FUNC_) GetCurrentProcess },
    {"TerminateProcess"  ,(FUNC_) TerminateProcess },
    {"GetStartupInfoW"  ,(FUNC_) GetStartupInfoW },
    {"GetFileType"  ,(FUNC_) GetFileType },
    {"GetStdHandle"  ,(FUNC_) GetStdHandle },

    {"GetACP"  ,(FUNC_) GetACP },
    {"MultiByteToWideChar"  ,(FUNC_) MultiByteToWideChar },
    {"WideCharToMultiByte"  ,(FUNC_) WideCharToMultiByte },
    {"GetStringTypeW"  ,(FUNC_) GetStringTypeW },
    {"GetCommandLineA"  ,(FUNC_) GetCommandLineA },
    {"GetCommandLineW"  ,(FUNC_) GetCommandLineW },
    {"GetCPInfo"  ,(FUNC_) GetCPInfo },
    {"IsValidCodePage"  ,(FUNC_) IsValidCodePage },
    {"InitializeSListHead"  ,(FUNC_) InitializeSListHead },
    {"GetEnvironmentStringsW"  ,(FUNC_) GetEnvironmentStringsW },
    {"FreeEnvironmentStringsW"  ,(FUNC_) FreeEnvironmentStringsW },
    {"HeapFree"  ,(FUNC_) HeapFree },
    {"GetModuleFileNameA"  ,(FUNC_) GetModuleFileNameA },
    {"WriteFile"  ,(FUNC_) WriteFile },

	{"GetCurrentProcessId"  ,(FUNC_)GetCurrentProcessId },
	{"GetCurrentThreadId"  ,(FUNC_)GetCurrentThreadId },
	{"GetTickCount"  ,(FUNC_) GetTickCount },
	{"QueryPerformanceCounter"  ,(FUNC_) QueryPerformanceCounter },
	{"GetSystemTimeAsFileTime"  ,(FUNC_) GetSystemTimeAsFileTime },
	{"SetUnhandledExceptionFilter"  ,(FUNC_) SetUnhandledExceptionFilter },


	{"EnterCriticalSection" ,(FUNC_) EnterCriticalSection },//BUG
    {"LeaveCriticalSection" ,(FUNC_) LeaveCriticalSection }, //BUG
    {"DeleteCriticalSection" ,(FUNC_) DeleteCriticalSection },
    {"ExitProcess" ,(FUNC_) ExitProcess },
    {"LoadLibraryExW" ,(FUNC_) LoadLibraryExW },
    {"GetSystemTimeAsFileTime" ,(FUNC_) GetSystemTimeAsFileTime },
    {"IsProcessorFeaturePresent" ,(FUNC_) IsProcessorFeaturePresent },
    {"GetModuleHandleA" ,(FUNC_) GetModuleHandleA },
    {"InitializeCriticalSection" ,(FUNC_) InitializeCriticalSection },
  //  {"InitializeCriticalSectionEx" ,(FUNC_) InitializeCriticalSectionEx },


    {"GetCurrentProcessId"  ,(FUNC_) GetCurrentProcessId },
    {"GetModuleHandleW"  ,(FUNC_) GetModuleHandleW },
    {"CreateEventW"  ,(FUNC_) CreateEventW },
    {"IsDBCSLeadByte"  ,(FUNC_) IsDBCSLeadByte },
    {"GetConsoleMode"  ,(FUNC_) GetConsoleMode },
    {"SetConsoleCtrlHandler"  ,(FUNC_) SetConsoleCtrlHandler },
    {"LoadStringW"  ,(FUNC_) LoadStringW },
    {"SetErrorMode"  ,(FUNC_) SetErrorMode },
    {"RegOpenKeyExW"  ,(FUNC_) RegOpenKeyExW },
    {"RegQueryValueExW"  ,(FUNC_) RegQueryValueExW },
    {"RegCloseKey"  ,(FUNC_) RegCloseKey },
    {"GetVersionExW"  ,(FUNC_) GetVersionExW },
    {"GetVersionExW"  ,(FUNC_) GetVersionExW },
    {"LoadLibraryW"  ,(FUNC_) LoadLibraryW },
    {"CreateFileW"  ,(FUNC_) CreateFileW },
    {"GetCurrentDirectoryW"  ,(FUNC_) GetCurrentDirectoryW },
    {"CharUpperW"  ,(FUNC_) CharUpperW },

  /*
    {"EnterCriticalSection" ,(FUNC_) My_EnterCriticalSection },//BUG
    {"LeaveCriticalSection" ,(FUNC_) My_LeaveCriticalSection }, //BUG
    {"DeleteCriticalSection" ,(FUNC_) My_DeleteCriticalSection },
    {"ExitProcess" ,(FUNC_) My_ExitProcess },
    {"LoadLibraryExW" ,(FUNC_) My_LoadLibraryEx },
    {"GetSystemTimeAsFileTime" ,(FUNC_) My_GetSystemTimeAsFileTime },
    {"IsProcessorFeaturePresent" ,(FUNC_) My_IsProcessorFeaturePresent },
    {"GetModuleHandleA" ,(FUNC_) My_GetModuleHandleA },
    {"InitializeCriticalSection" ,(FUNC_) My_InitializeCriticalSection },
    {"InitializeCriticalSectionEx" ,(FUNC_) My_InitializeCriticalSectionEx },
    {"SetUnhandledExceptionFilter" ,(FUNC_) My_SetUnhandledExceptionFilter },
    {"QueryPerformanceCounter"  ,(FUNC_) My_QueryPerformanceCounter },
    {"GetCurrentProcessId"  ,(FUNC_) My_GetCurrentProcessId },
*/
  #endif

//  {"_initterm"  ,(FUNC_) My_initterm },
  //{"__lconv_init"  ,(FUNC_) My_lconv_init },


    //// main ///
    //{"CreateSemaphoreW"  ,(FUNC_) CreateSemaphore },


   // {"CreateSemaphoreW"  ,(FUNC_) My_CreateSemaphore },
    {"CreateSemaphoreW"  ,(FUNC_) My_CreateSemaphore },
    {"GetLastError"  ,(FUNC_) My_GetLastError },








//{"TlsGetValue" ,(FUNC_) My_TlsGetValue },

{"getenv"  ,(FUNC_) My_getenv },
{"__getmainargs" ,(FUNC_) My_getmainargs },
{"__set_app_type" ,(FUNC_) My_set_app_type },
{"_setmode" ,(FUNC_) My_setmode },
{"__p__environ" ,(FUNC_) My_penviron },
{"__p__fmode" ,(FUNC_) My_pfmode },
{"signal" ,(FUNC_) My__signal },
{"atexit" ,(FUNC_) My_atexit },
{"_cexit" ,(FUNC_) My_cexit },
{"_onexit" ,(FUNC_) My_Onexit },
{"exit" ,(FUNC_) My_exit },
{"GetStartupInfo" ,(FUNC_) My_GetStartupInfo },

{"GetCommandLineA"  ,(FUNC_) My_GetCommandLineA },
{"GetStartupInfoA"  ,(FUNC_) My_GetStartupInfo },
{"GetCurrentThreadId"  ,(FUNC_) My_GetCurrentThreadId },

{"fputc"  ,(FUNC_) My_fputc },
{"WriteConsoleA"  ,(FUNC_) My_WriteConsoleA },



{"realloc"  ,(FUNC_) realloc },
{"memcpy"  ,(FUNC_) memcpy },
{"memset"  ,(FUNC_) memset },
{"free"  ,(FUNC_) free },
{"malloc"  ,(FUNC_) malloc },
{"calloc"  ,(FUNC_) calloc },
{"abort"  ,(FUNC_) abort },
{"scanf"  ,(FUNC_) scanf },
{"fwrite"  ,(FUNC_) fwrite },
{"printf"  ,(FUNC_) printf_CPC },
{"usleep", 	(FUNC_) usleep_CPC },
{"msleep", 	(FUNC_) sleep_CPC }, // idem que Sleep
{"Sleep", 	(FUNC_) sleep_CPC },
{"vfprintf"  ,(FUNC_) vfprintf },
{"strcmp"  ,(FUNC_) strcmp },
{"stricmp"  ,(FUNC_) stricmp },
{"_stricmp"  ,(FUNC_) stricmp },
{"memcmp"  ,(FUNC_) memcmp },
{"memmove"  ,(FUNC_) memmove },
{"fgets"  ,(FUNC_) cpc_fgets },
{"fputs"  ,(FUNC_) fputs },
{"_fgets"  ,(FUNC_) cpc_fgets },
{"_fputs"  ,(FUNC_) fputs },
/* {"_write"  ,(FUNC_) _write },*/
/* {"_snwprintf"  ,(FUNC_) _snwprintf }, */
{"rand"  ,(FUNC_) rand },
{"setbuf"  ,(FUNC_) setbuf },
{"fseek"  ,(FUNC_) fseek },
{"ftell"  ,(FUNC_) ftell },
{"fflush"  ,(FUNC_) fflush },
{"fprintf"  ,(FUNC_) fprintf },
{"sprintf"  ,(FUNC_) sprintf },
{"strcat"  ,(FUNC_) strcat },
{"strchr"  ,(FUNC_) strchr },
{"strcpy"  ,(FUNC_) strcpy },
{"strncmp"  ,(FUNC_) strncmp },
{"strtok"  ,(FUNC_) strtok },
{"strtol"  ,(FUNC_) strtol },
{"time"  ,(FUNC_) time },
/* {"wcscpy"  ,(FUNC_) wcscpy }, */
{"strrchr"  ,(FUNC_) strrchr },
{"srand"  ,(FUNC_) srand },
{"strrchr"  ,(FUNC_) strrchr },


{"kbhit"  ,(FUNC_) kbhit_CPC },
{"_kbhit"  ,(FUNC_) kbhit_CPC },
{"getc"  ,(FUNC_) getc },
{"fgetc"  ,(FUNC_) fgetc },
{"putc"  ,(FUNC_) putc },
{"fputc"  ,(FUNC_) fputc },
{"putchar"  ,(FUNC_) putchar },
{"getchar"  ,(FUNC_) getchar },
{"getch"  ,(FUNC_) getch },
{"_getch"  ,(FUNC_) getch },

{"fopen"  ,(FUNC_) fopen },
{"fclose"  ,(FUNC_) fclose },
{"setjmp"  ,(FUNC_) setjmp },
{"_setjmp"  ,(FUNC_) setjmp },
{"sigsetjmp"  ,(FUNC_) sigsetjmp },
{"_sigsetjmp"  ,(FUNC_) sigsetjmp },

{"longjmp"  ,(FUNC_) longjmp },
{"_longjmp"  ,(FUNC_) longjmp },
{"siglongjmp"  ,(FUNC_) siglongjmp },
{"_siglongjmp"  ,(FUNC_) siglongjmp },

//{"localeconv"  ,(FUNC_) My_localeconv },
//{"localeconv"  ,(FUNC_) localeconv },


{"strlen"  ,(FUNC_) strlen },


//Math
{"abs"  ,(FUNC_) abs_CPC },
{"floor"  ,(FUNC_) floor },
{"ceil"  ,(FUNC_) ceil },
{"qsort"  ,(FUNC_) qsort },



///// Thread local Important? ///////
{"TlsAlloc"  ,(FUNC_) My_TlsAlloc },
{"TlsGetValue"  ,(FUNC_) My_TlsGetValue },
{"TlsSetValue"  ,(FUNC_) My_TlsSetValue },
///////////////////////////////////////



///////////////// ///////////////// /////////////////
///////////////// Windows  func //////////////////
#ifdef UseWinFunc

	{"GetStdHandle"  ,(FUNC_) GetStdHandle },
	{"GetConsoleWindow"  ,(FUNC_) GetConsoleWindow },
	{"SetConsoleWindowInfo"  ,(FUNC_) SetConsoleWindowInfo },
	{"setlocale"  ,(FUNC_) setlocale },
	{"SetConsoleOutputCP"  ,(FUNC_) SetConsoleOutputCP },
	{"SetConsoleTextAttribute"  ,(FUNC_) SetConsoleTextAttribute },
	{"SetConsoleScreenBufferSize"  ,(FUNC_) SetConsoleScreenBufferSize },
	{"MoveWindow"  ,(FUNC_) MoveWindow },

	{"GetModuleFileNameW"  ,(FUNC_) GetModuleFileNameW },
	{"GetFileAttributesExW"  ,(FUNC_) GetFileAttributesExW },


	{"_wfopen"  ,(FUNC_) _wfopen },

	{"wprintf"  ,(FUNC_) wprintf },
	{"wsprintfW"  ,(FUNC_) wsprintfW }, //Not work??

	{"SetLastError"  ,(FUNC_) SetLastError }, //Required !?
	{"fread"  ,(FUNC_) fread },
	{"MoveWindow"  ,(FUNC_) MoveWindow },
	{"GetModuleFileNameW"  ,(FUNC_) GetModuleFileNameW }, //useless?

	//Windows
	{"SetWindowLongW"  ,(FUNC_) SetWindowLongW },
	{"RegisterClassExW"  ,(FUNC_) RegisterClassExW },
	{"CreateWindowExW"  ,(FUNC_) CreateWindowExW },
	{"ShowWindow"  ,(FUNC_) ShowWindow },
	{"CreateCompatibleDC"  ,(FUNC_) CreateCompatibleDC },
	{"CreateDIBSection"  ,(FUNC_) CreateDIBSection },
	{"SelectObject"  ,(FUNC_) SelectObject },
	{"GetDC"  ,(FUNC_) GetDC },



	//Timer
	{"QueryPerformanceCounter"  ,(FUNC_) QueryPerformanceCounter },
	{"QueryPerformanceFrequency"  ,(FUNC_) QueryPerformanceFrequency },

	{"Sleep"  ,(FUNC_) Sleep },
	{"BitBlt"  ,(FUNC_) BitBlt },

	{"GetClientRect"  ,(FUNC_) GetClientRect },
	{"GetWindowRect"  ,(FUNC_) GetWindowRect },

	{"TranslateMessage"  ,(FUNC_) TranslateMessage },
	{"DispatchMessageW"  ,(FUNC_) DispatchMessageW },
	{"PeekMessageW"  ,(FUNC_) PeekMessageW },
	{"GetWindowLongW"  ,(FUNC_) GetWindowLongW },
	{"DefWindowProcW"  ,(FUNC_) DefWindowProcW },

	{"LoadCursorW"  ,(FUNC_) LoadCursorW },
	{"LoadIconW"  ,(FUNC_) LoadIconW },
	{"MessageBoxW"  ,(FUNC_) MessageBoxW },


#else  //OnCpcDOs


	{"GetStdHandle"  ,(FUNC_) My_GetStdHandle },
	{"GetConsoleWindow"  ,(FUNC_) My_GetConsoleWindow },
	{"SetConsoleWindowInfo"  ,(FUNC_) My_SetConsoleWindowInfo },
	{"setlocale"  ,(FUNC_) My_setlocale },
	{"SetConsoleOutputCP"  ,(FUNC_) My_SetConsoleOutputCP },
	{"SetConsoleTextAttribute"  ,(FUNC_) My_SetConsoleTextAttribute },
	{"SetConsoleScreenBufferSize"  ,(FUNC_) My_SetConsoleScreenBufferSize },
	{"MoveWindow"  ,(FUNC_) My_MoveWindow },

	{"GetModuleFileNameW"  ,(FUNC_) My_GetModuleFileNameW },
	{"GetFileAttributesExW"  ,(FUNC_) My_GetFileAttributesExW },



	{"_wfopen"  ,(FUNC_) My_wfopen },

	{"wprintf"  ,(FUNC_) My_wprintf },
	{"wsprintfW"  ,(FUNC_) My_wprintf }, //Not work??


	{"SetLastError"  ,(FUNC_) My_SetLastError }, //Required !?
	{"fread"  ,(FUNC_) My_fread },

	{"MoveWindow"  ,(FUNC_) Nothing },
	{"GetModuleFileNameW"  ,(FUNC_) Nothing }, //useless?

	//Windows
	{"SetWindowLongW"  ,(FUNC_) My_SetWindowLongW },
	{"RegisterClassExW"  ,(FUNC_) My_RegisterClassExW },
	{"CreateWindowExW"  ,(FUNC_) My_CreateWindowExW },
	{"ShowWindow"  ,(FUNC_) My_ShowWindow },
	{"CreateCompatibleDC"  ,(FUNC_) My_CreateCompatibleDC },
	{"CreateDIBSection"  ,(FUNC_) My_CreateDIBSection },
	{"SelectObject"  ,(FUNC_) My_SelectObject },
	{"GetDC"  ,(FUNC_) My_GetDC },


	//Timer
	{"QueryPerformanceCounter"  ,(FUNC_) My_QueryPerformanceCounter },
	{"QueryPerformanceFrequency"  ,(FUNC_) My_QueryPerformanceFrequency },

	//{"Sleep"  ,(FUNC_) My_Sleep },


	{"BitBlt"  ,(FUNC_) My_BitBlt },

	{"GetClientRect"  ,(FUNC_) My_GetClientRect },
	{"GetWindowRect"  ,(FUNC_) My_GetWindowRect },

	{"TranslateMessage"  ,(FUNC_) My_TranslateMessage },
	{"DispatchMessageW"  ,(FUNC_) My_DispatchMessageW },
	{"PeekMessageW"  ,(FUNC_) My_PeekMessageW },
	{"GetWindowLongW"  ,(FUNC_) My_GetWindowLongW },
	{"DefWindowProcW"  ,(FUNC_) My_DefWindowProcW },

	{"LoadCursorW"  ,(FUNC_) My_LoadCursorW },
	{"LoadIconW"  ,(FUNC_) My_LoadIconW },
	{"MessageBoxW"  ,(FUNC_) My_MessageBoxW },

#endif // UseWinFunc

////////////////////////////////////////////////////


#include "CpcDosFuncTable.h"
{"putchar"  ,(FUNC_) putchar },
{"puts"  ,(FUNC_) puts }


};










