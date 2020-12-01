/////////////// MAIN /////////////////

#ifndef GZ_tGenerate_Embed_Files
#include "Lib_Demo/MainEntry.h"
#endif


#include "Lib_GZ/Sys/System.h"
#include "Lib_GZ/GZ.h"

#include "Lib_GZ/Sys/Debug.h"


/*
#include "Lib_GZ/Lib/Memory/stb_leakcheck.h"
#ifdef GZ_tDebug
namespace Lib_GZE{
 class cLeakCheck {
        public:
        cLeakCheck(){
            stb_leakcheck_start();
        };
        ~cLeakCheck(){
            if(!Lib_GZ::Lib::bIsAlive){
                stb_leakcheck_dumpmem();
            }
        };
    };

}
#endif
*/


#ifdef GZ_tJit
	
gzSp<Lib_GZ::cLib> oGz;
gzSp<Lib_Demo::cMainEntry> oTest;

extern "C" int Jit_Main(void* _dTest) { //Jit entry
	using namespace Lib_GZ;
  //  _dTest(10);

  char* buffer = (char*) malloc(50);
  buffer[0] = 'A';
  buffer[1] = 'B';
  buffer[2] = 'C';
  buffer[3] = 0;
  
  
  printf("\nMy malloc %s ", buffer);
  
  printf("\nTest goood yes %d ", 55);
    free(buffer);
	
	oGz  = Lib_GZ::Lib::New(0, gzStrL(""), 0);
	//cLib _oGZ(0, gzStrL(""), 0);

			
	oTest = Lib_Demo::MainEntry::Get(oGz->thread)->New(oGz->thread); //GZE demo examples
	/*
	while( _oGZ.bIsAlive){
		_oGZ.fMainUpdate();
	}*/
	
  return 8;
  
}

extern "C" int Jit_Update() { //Jit entry
	using namespace Lib_GZ;
	//  printf("\nUpdate!!! ");
	if( oGz->bIsAlive){
		//	  printf("\fMainUpdate!!! %d ", 55);
		oGz->fMainUpdate();
	}
	return oGz->bIsAlive;
}


#elif  GZ_tWindows

	#include "Lib_GZ/SysUtils/WindowsHeader.h"

	gzUIntX nTestProgInstance = 0;

	gzInt WINAPI WinMain(HINSTANCE _hInstance,  HINSTANCE _hNull, LPSTR _lpCmdLine, gzInt _nShowCmd){
		using namespace Lib_GZ; using namespace Lib_GZ::Sys;
		{

			gzSp<Lib_GZ::cLib> _oGz = Lib_GZ::Lib::New((gzUIntX)_hInstance, gzStrL(""), (gzUIntX)_nShowCmd);

			////  Main class call ////
			gzSp<Lib_Demo::cMainEntry> _oTest = Lib_Demo::MainEntry::Get(_oGz->thread)->New(_oGz->thread); //GZE demo examples

			while( _oGz->bIsAlive){
				_oGz->fMainUpdate();
			}

		}

	//    Debug::fTrace1(gzStrL(" ------------- END ---------------"));
		return 0;
	}

#elif GZ_tWeb_Emsc ////////////////////// Web //////////////////////////////////////

	#include <emscripten/emscripten.h>
	#include <emscripten/bind.h>

	Lib_GZ::cLib* oGzGbl;

	void do_frame(){
	  //  printf("frame\n");
		if( oGzGbl->bIsAlive){
			oGzGbl->fMainUpdate();
		}else{

		}
	}


	gzInt main(){
		using namespace Lib_GZ; using namespace Lib_GZ::Sys;
		{
		printf("GZ_tWeb_Emsc\n");
		
		Lib_GZ::cLib _oGzGbl(0, gzStrL(""), 0);
		oGzGbl = &_oGzGbl;


		gzSp<Lib_Demo::cMainEntry> _oTest = Lib_Demo::MainEntry::Get(_oGzGbl.thread)->New(_oGzGbl.thread); //GZE demo examples

		emscripten_set_main_loop(do_frame, 0, 1);
	
		return 0;
		}
	}

	
#elif GZ_tCpcDos

	extern "C" int cpc__gze_main() {
		using namespace Lib_GZ;
		cLib _oGZ(0, gzStrL(""), 0);
		gzSp<Lib_Demo::cMainEntry> _oTest = Lib_Demo::MainEntry::Get(_oGZ.thread)->New(_oGZ.thread); //GZE demo examples
		while( _oGZ.bIsAlive){
			_oGZ.fMainUpdate();
		}
		return 0;
	}
	
	

#else ////////////////////// Others ////////////////////////////////////////// 

	int main () {
		using namespace Lib_GZ;
		
			cLib _oGZ(0, gzStrL(""), 0);
			
			gzSp<Lib_Demo::cMainEntry> _oTest = Lib_Demo::MainEntry::Get(_oGZ.thread)->New(_oGZ.thread); //GZE demo examples
			while( _oGZ.bIsAlive){
				_oGZ.fMainUpdate();
			}
		return 0;
	}
	
#endif