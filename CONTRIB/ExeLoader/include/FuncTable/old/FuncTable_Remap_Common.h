/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *   - Sebastien FAVIER
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html
 */

#include "ExeLoader.h"
#include "MemoryModule.h"

///////////////////////////////////////////////
///////////////////////////////////////////////
extern  FARPROC MyMemoryDefaultGetProcAddress(HCUSTOMMODULE module, LPCSTR name, void *userdata);
extern MemoryModule* memory_module;
extern bool is_in_aLibList(HMEMORYMODULE _handle);

FARPROC WINAPI  My_GetProcAddress(  HMODULE hModule, LPCSTR  lpProcName){

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

////////////////////////////////////////////
////////////////////////////////////////////


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
	printf("Using setbuf... \n");
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

// DWORD  WINAPI My_GetCurrentProcessId(void){
    // _EXE_LOADER_DEBUG(3, "GetCurrentProcessId non implemente!", "GetCurrentProcessId not implemented!");
    // return 0;
// }

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
void fNotImplemented_1(){
    _EXE_LOADER_DEBUG(3, "Fonction non implemente!1", "Function not implemented!:1");
}
void fNotImplemented_2(){
    _EXE_LOADER_DEBUG(3, "Fonction non implemente!2", "Function not implemented!:2");
}
void * fNotImplemented_3(){
    _EXE_LOADER_DEBUG(3, "TlsGetValue  Fonction non implemente!3", "TlsGetValue  Function not implemented!:3");
	return (void* )malloc(1024);
}
bool fNotImplemented_4(){
	
    _EXE_LOADER_DEBUG(3, "TlsSetValue Fonction non implemente!4", "TlsSetValue  Function not implemented!:4");
	return true;
}
void fNotImplemented_5(){
    _EXE_LOADER_DEBUG(3, "Fonction non implemente!5", "Function not implemented!:5");
}
void fNotImplemented_6(){
    _EXE_LOADER_DEBUG(3, "Fonction non implemente!6", "Function not implemented!:6");
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
int  My_printf( const char * format, ... ){
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




#define GET_HEADER_DICTIONARYs(module, idx)  &(module)->headers->OptionalHeader.DataDirectory[idx]
/*
int WINAPI abs_CPC(int nombre)
{
	const int ret[2] = { nombre, -nombre };
    return ret [nombre<0];
}
*/












