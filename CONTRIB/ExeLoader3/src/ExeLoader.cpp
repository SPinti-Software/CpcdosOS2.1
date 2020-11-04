// Mickael BANVILLE & Sebastien FAVIER
//  ExeLoader pour Cpcdos
// Update v1 13/01/2016
// Update v2 19 AVR 2019
// Update v3 10 OCT 2019

#include <memory>
#include <iostream>
#include <cstdio>
#include <cstring>
#include <cstdarg> // Pour les arguments de fdebug_log
#include <stdlib.h>

//////////  Segfault catch //////////
#include <csignal>

void signalHandler( int signum ) {
   printf("\n Interrupt signal received: ");

   // cleanup and close up stuff here  
   
switch(signum){
case SIGTERM:
printf("SIGTERM, termination request, sent to the program ");
break;
case SIGSEGV:
printf("SIGSEGV, invalid memory access (segmentation fault) ");
break;
case SIGINT:
printf("SIGINT, external interrupt, usually initiated by the user ");
break;
case SIGILL:
printf("SIGILL, invalid program image, such as invalid instruction ");
break;
case SIGABRT:
printf("SIGABRT, abnormal termination condition, as is e.g. initiated by std::abort()");
break;
case SIGFPE:
printf("SIGFPE, erroneous arithmetic operation such as divide by zero");
break;
default:
printf("UNKNOW");
break;
   }
   
   exit(signum);  
}

/*
void segfault_sigaction(int signal, void* si, void *arg)
{
   printf("Caught segfault at address %p\n", si->si_addr);
    exit(0);
}*/

void registerSignal(  ) {
/* //No sigaction on Windows
int *foo = NULL;
    struct sigaction sa;
    memset(&sa, 0, sizeof(struct sigaction));
    sigemptyset(&sa.sa_mask);
    sa.sa_sigaction = segfault_sigaction;
    sa.sa_flags   = SA_SIGINFO;
    sigaction(SIGSEGV, NULL, NULL);
*/
for(int i = 1; i < 32; i++){
signal(i, signalHandler);
}
/*
signal(SIGTERM, signalHandler);  //termination request, sent to the program
signal(SIGSEGV, signalHandler);  //invalid memory access (segmentation fault)
signal(SIGINT, signalHandler);  //external interrupt, usually initiated by the user
signal(SIGILL, signalHandler);  //invalid program image, such as invalid instruction
signal(SIGABRT, signalHandler);  //abnormal termination condition, as is e.g. initiated by std::abort()
signal(10, signalHandler); //SIGBUS
*/
}
///////////////////////
 

extern "C" bool fStartExeLoader(const char* Source_File);


char * DLL_LOADED[512] = {0};
void * DLL_HANDLE[512] = {0};
int nTotalDLL = 0;

typedef int (*addNumberProc)(int, int);
typedef void (*testFunc)();
typedef int (*mainFunc)();
typedef int (*mainFunc2)(int argc, char* argv[]);
typedef void (*FUNC_Version)(int _nMajor, int _nMinor);

#include "Lib_GZ/GZ.h"

char* aExeFileData;
long nExeFileSize;

#ifdef CpcDos /* It's Cpcdos */

	#include "win.h"
	
    #include "Lib_GZ/SysUtils/CpcDosHeader.h"

    gzSp<CpcdosOSx_CPintiCore> oCpc = gzSp<CpcdosOSx_CPintiCore>(new CpcdosOSx_CPintiCore);
	
	void _EXE_LOADER_DEBUG(int alert, const char* format_FR, const char* format_EN, ...)
	{
		// Cette fonction permet d'utiliser le simuler un sprintf()
		va_list arg;
		char BUFFER[1024] = {0};
		
		// Faire une condition si l'instance est en Francais ou non
		
		va_start (arg, format_EN);
			vsprintf (BUFFER, format_FR, arg);
		va_end (arg);
		
		oCpc->debug_log_plus((const char*) BUFFER, 1, 1, alert, 0, 0, 0,  1100, NULL); 	
		
		BUFFER[0] = '\0';
	}
	


    gzBool fExeCpcDosLoadFile(const char* _sFullPath)
	{

		nExeFileSize = 0;
		aExeFileData = 0;
		
		_EXE_LOADER_DEBUG(0, "\nExeLoader: Test de l'existence de '%s'\n", "\nExeLoader: Test existence  '%s'\n", _sFullPath);
		gzUInt _nExist = oCpc->File_exist((char*) _sFullPath);
		if(_nExist > 0)
		{
			// Recuperer la taille du fichier
			nExeFileSize =  oCpc->File_size((char*) _sFullPath);
			
			// Afficher sur la console Cpcdos
			_EXE_LOADER_DEBUG(0, "ExeLoader: Lecture de %s (%d octets)...", "ExeLoader: Reading %s (%d bytes)...", _sFullPath, nExeFileSize);
			
			// Recuperer TOUT le contenu
			aExeFileData = (char*) calloc(nExeFileSize + 1, sizeof(char));
			
			FILE *fptr;

			if ((fptr = fopen(_sFullPath,"rb")) == NULL){
				_EXE_LOADER_DEBUG(4, "\nExeLoader: Erreur d'ouverture du fichier %s.\n", "\nExeLoader: Error openning file %s.\n", _sFullPath);
				return false;
			}
			
			
			fread(aExeFileData, nExeFileSize, 1, fptr);
			
			// oCpc->File_read_all((char*)_sFullPath, (char*)"RB", (char*)aExeFileData);
			
			// Caractere de terminaison
			aExeFileData[nExeFileSize] = '\0';
		}else{
			  _EXE_LOADER_DEBUG(4, "\nExeLoader: Fichier non disponible %s.\n", "\nExeLoader: File not avaiable %s.\n", _sFullPath);
			return false;
		}

		_EXE_LOADER_DEBUG(5, "ExeLoader: %s charge!", "ExeLoader:  %s loaded!\n" , _sFullPath);

		return true;
	}
#else /* !!! No Cpcdos !!! */

	//   #define UNICODE
	//   #define _UNICODE
	//    #include <windows.h>
	#include "win.h"
	
	void _EXE_LOADER_DEBUG(int alert, const char* format_FR, const char* format_EN, ...)
	{
		// Cette fonction permet d'utiliser le simuler un sprintf()
		va_list arg;
		char BUFFER[1024] = {0};
		
		// Faire une condition si l'instance est en Francais ou non
		
		va_start (arg, format_EN);
			vsprintf (BUFFER, format_EN, arg);
		va_end (arg);
		
		printf("%s\n" , BUFFER); 
		
	//	BUFFER[0] = '\0';
	//	printf("\n%d: %s",alert, format_FR);
	}

	
	/*
	DWORD WINAPI GetModuleFileName(
	_In_opt_ HMODULE hModule,
	_Out_    char*  lpFilename,
	_In_     DWORD   nSize
	);
	*/
	#define MAX_PATH 255
	gzBool fExeCpcDosLoadFile(const char* _sFullPath)
	{
	
		if(_sFullPath == 0){
			printf("\n Error: No file to load. \n ");
			return false;
		}
	
		//char buffer[MAX_PATH];
		//GetModuleFileName(0, (char*)buffer, MAX_PATH );

		//  gzUTF16 _wcFile(gzStrC(_sFullPath));
		//   FILE*  f = _wfopen((wchar_t*)(gzUInt16*)_wcFile, L"rb+");
		FILE*  f = fopen((char*)(gzUInt8*)_sFullPath, "rb+");
		unsigned char *result;

		if (f != NULL)
		{
			WIN32_FILE_ATTRIBUTE_DATA fa;
			/*
			if (!GetFileAttributesExW((LPCWSTR)(gzUInt16*)_wcFile, GetFileExInfoStandard, &fa)){
			// error handling
			}*/
			/*
			if (!GetFileAttributesEx((LPCSTR)(gzUInt8*)_sFullPath, GetFileExInfoStandard, &fa)){
			// error handling
			}*/
			//  int  size = ftell(f);
			// obtain file size:
			
			long lSize;
			fseek (f , 0 , SEEK_END);
			lSize = ftell (f);
			rewind (f);
			// gzUIntX _nSize =   ((gzUInt64)fa.nFileSizeHigh << 32) | fa.nFileSizeLow;
			gzUIntX _nSize = lSize;

			gzUInt8* _aData = new gzUInt8[_nSize];
			fread(_aData, 1, _nSize, f);

			nExeFileSize = _nSize;
			aExeFileData = (char*)_aData;

			// _oRc->fSetDynamicMemData(_aData, _nSize); //Will be auto free
			// Lib_GZ::Sys::pDebug::fConsole(gzStrL("---File Open!-- ") + _sFullPath);
			return true;
		}
		else
		{
			// Lib_GZ::Sys::pDebug::fConsole(gzStrL("Error, can't open file : ") + _sFullPath);
		}
		fclose(f);
		return false;
	}
#endif /* !!! No Cpcdos !!! */


#include "MemoryModule.h"
using namespace std;

HMEMORYMODULE fMainExeLoader(const char* _sPath = "");

#define Func(_func) (void*)(&_func)


bool fStartExeLoader(const char* _sPath){
	if(fMainExeLoader(_sPath)==NULL){
		return false;
	}else{
		return true;
	}
	//MemoryFreeLibrary(handle);

}


#ifdef ImWin
int main(int argc, char* argv[]) {
      printf("#\nMainCalled!! %d, %s", argc, argv[0]);

    fMainExeLoader(argv[1]); //argv[0] is path
	printf("\n -- END -- \n");
    system("Pause");

//MemoryFreeLibrary(handle);
    return false;
}
#endif




#define DEREF_32( name )*(DWORD *)(name)
#define BLOCKSIZE 100

void fix_relocations(IMAGE_BASE_RELOCATION *base_reloc,DWORD dir_size,	DWORD new_imgbase, DWORD old_imgbase);




mainFunc2 fFindMainFunction(MemoryModule* _oMem, HMEMORYMODULE handle) {

	mainFunc2 dMain ;
	
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'cpc_main()'... ", "research 'cpc_main()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "main_entry");
	if(dMain){return dMain;}
	
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'cpc_main()'... ", "research 'cpc_main()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "cpc_main");
	if(dMain){return dMain;}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// Disable standard main because of the CRT mess and Static Initialisation (Application must be compiled without this feature) ///
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	/*
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'main()'... ", "research 'main()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "main");
	if(dMain){return dMain;}
	
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'WinMain@16()'... ", "research 'WinMain@16()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "WinMain@16");
	if(dMain){return dMain;}
	
	// S'il s'agit d'une version Windows 16 bits
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'MAIN_LOOP_WINDOWS()'... ", "research 'MAIN_LOOP_WINDOWS()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "MAIN_LOOP_WINDOWS");
	if(dMain){return dMain;}
	
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'MAIN_LOOP()'... ", "research 'MAIN_LOOP()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "MAIN_LOOP");
	if(dMain){return dMain;}

	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'QBMAIN_WINDOWS()'... ", "research 'QBMAIN_WINDOWS()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "QBMAIN_WINDOWS");
	if(dMain){return dMain;}
	
	_EXE_LOADER_DEBUG(6, " * Recherche du point d'entre 'QBMAIN()'... ", "research 'QBMAIN()' entry point... ");
	dMain = (mainFunc2)_oMem->MemoryGetProcAddress(handle, "QBMAIN");
	if(dMain){return dMain;}
	*/
	
	return NULL;
}



////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////

HMEMORYMODULE fMainExeLoader(const char* _sPath){
	#ifdef ImWin
		registerSignal();
	#endif
	
	// Instancier MemoryModule
	shared_ptr<MemoryModule> memory_module_instance(new MemoryModule());

	void *data;
	long filesize;
	HMEMORYMODULE handle;
	mainFunc2 dMain ;


	for(int index = 0; index < nTotalDLL ; index++)  
	{
		if(index > 512)
			break;
		
		// Verifier si il y a quelque choose
		char* _sName = DLL_LOADED[index];
		if(_sName != NULL)
		{
			// Deja chargee!
			if(strcmp(_sName, _sPath) == 0)
			{
				_EXE_LOADER_DEBUG(5, "\nFichier %s deja charge", "\nFile %s already loaded", (char*) _sPath);
				return DLL_HANDLE[index];
			}
		}

	}

	// Charger le fichier en memoire
	if(!fExeCpcDosLoadFile(_sPath)) return NULL;

	// Recuperer la taille
	filesize = nExeFileSize;
	data = aExeFileData;


	// Charger le fichier
	handle = memory_module_instance->MemoryLoadLibrary(data, filesize);
	DLL_HANDLE[nTotalDLL - 1] = handle;
	
	// Oups probleme
	if (handle == NULL) {
		_EXE_LOADER_DEBUG(4, "\nImpossible de charger la librairie depuis la memoire\n", "\nUnable to to load library from the memory\n");
		return handle;
	}

	try{
		///////////// MAIN //////////////
		char* argument[] = {(char*)"aaaabbbvvv", (char*)"aaaaa"};

		int _nLastChar = 0;
		while( _sPath[_nLastChar] != 0)
		{
			_nLastChar++;
		}
		_nLastChar--;


		// Verifier si le fichier est un DLL ou un EXE
		if( _sPath[ _nLastChar] == 'l' || _sPath[ _nLastChar] == 'L')
		{ /*** DLL ***/

			// Ajouter dans le tableau des DLL deja charge
			DLL_LOADED[nTotalDLL] = (char*) _sPath;
			nTotalDLL ++;
			
		}
		else
		{ /*** EXE ***/

			#ifndef ImWin /* No Cpcdos */
			FUNC_Version dCpcVer = (FUNC_Version)memory_module_instance->MemoryGetProcAddress(handle, "cpc_Set_Version");
			
			if(dCpcVer != NULL)
				dCpcVer(1,0);

			#endif // ImWin

			int boucle = 0;
			
			dMain = fFindMainFunction(memory_module_instance.get(), handle);
			
			
			// Le point d'entre a ete trouve, maintenant on l'execute
			if(dMain != NULL)
			{
				_EXE_LOADER_DEBUG(5, " Execution du point d'entre...\n", "Point entry execution...");
				dMain(1,argument);
				_EXE_LOADER_DEBUG(5, " Execution du point d'entre TERMINE!\n", "Point entry execution...FINISHED!");
			}
			else
			{
				_EXE_LOADER_DEBUG(6, "Dernier essai, call Entry\n", "Last try, call Entry.");
				memory_module_instance->MemoryCallEntryPoint(handle);
			}
		} /*** EXE ***/

	} catch (...) 
	{
		_EXE_LOADER_DEBUG(4, "Exception catched !\n", "Catched exception !");
	}

	// printf("\n-------------------- End  : %s ------------------------\n ", _sPath );

	return handle;

}


//////////////////////////////// E N D  //////////////////////////////////////

