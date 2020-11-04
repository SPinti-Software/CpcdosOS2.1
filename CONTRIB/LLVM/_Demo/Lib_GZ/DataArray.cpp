//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "DataArray.h"

//#define wThis const_cast<gg*>(this)



///////////////// EMSC ////////////////

#ifdef GZ_tWeb_Emsc
	#include "Lib_GZ/SysUtils/EmscHeader.h"
	#define GzNullVal emscripten::val::global("Null");
	typedef emscripten::val gzVal; //TODO

	
void* gzEmscPtrBuffer;
		

extern "C" {
	static void* gzEmscPtrMalloc;

	EMSCRIPTEN_KEEPALIVE
	__attribute__((noinline)) float GzfEmscMalloc(float *vals){
		
		gzEmscPtrMalloc = vals;
	//	gzEmscPtrBuffer = buffer;
		
		//printf("\n *** call my_emscripten_func");
		return 0;
	}

}

#endif


void gzDataRoot::fFree(){
 	#ifdef GZ_tWeb_Emsc
	
	#else
		GZ_fFree(aTab);
   	#endif
}

void gzDataRoot::fMalloc(gzUInt _nSize){
	
	#ifdef GZ_tWeb_Emsc
		
		 EM_ASM_ARGS({
				
				dEmscMalloc = cwrap('GzfEmscMalloc', 'number', ['number']);
		  
				var numBytes = $0; 

				var malloc = Module._malloc(numBytes);
				gzMallocPtr = new Uint8Array(Module.HEAPU8.buffer, malloc, numBytes);
				
				// call the c function which should modify the vals
				dEmscMalloc(gzMallocPtr.byteOffset, gzMallocPtr.buffer);
				//gzArrayHeap = new Int8Array(gzMallocPtr.buffer, gzMallocPtr.byteOffset + $1, numBytes);
				
		}, _nSize * 4 );	
		

		JsMem = val::global("gzMallocPtr");

		
		
		aTab = gzEmscPtrMalloc;
	#else
		aTab = GZ_fMalloc(_nSize, nStride);
   	#endif
	
}
