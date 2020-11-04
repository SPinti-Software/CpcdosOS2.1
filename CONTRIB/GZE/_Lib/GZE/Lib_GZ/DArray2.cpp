//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "DArray.h"
#include "Lib_GZ/Sys/Debug.h"
#include "Lib_GZ/Lib.h"


#ifdef GZ_tWindows
    #include "Lib_GZ/SysUtils/WindowsHeader.h" //MSG
#endif

//Test empty class
void* c_e(void* _ptr){
    if(_ptr == 0){
			//  GZ__Debug::fError((TSTRC16*)L"Error ptr is undefined");

        while(1){
            #ifdef GZ_tWindows
                    //Main Loop
                    if(Lib_GZ::Lib::nNumWindows!= 0){
                            MSG msg;
                            while( GetMessage(&msg, NULL, 0, 0)) {
                                    TranslateMessage(&msg);
                                    DispatchMessage(&msg);
                            }
                            Lib_GZ::Lib::nAppReturn = (gzInt32)msg.wParam ;
                    }
                    Sleep(1000);
            #endif
        }
    }
    return _ptr;
}


//Dynamic function
ArrayPtr** GZ_tAw_Ptr(ArrayPtr* _aArray, gzUInt _nIndex){
	if(_nIndex >  _aArray->size){
	}
	if(_aArray->array[_nIndex] == 0){ //undefined

        ArrayPtr* _aNewArray;
        GZ_mArray_New(_aNewArray, 10);
        _aArray->array[_nIndex] = _aNewArray;
       // return &_aNewArray; NOT WORK!!!!
       	return &_aArray->array[_nIndex];
	}
	return &_aArray->array[_nIndex];
}


ArrayPtr* GZ_tAr_Ptr(ArrayPtr* _aArray, gzUInt _nIndex){
	if(_nIndex >  _aArray->size){
	}
	if(_aArray->array[_nIndex] == 0){ //undefined

        ArrayPtr* _aNewArray;
        GZ_mArray_New(_aNewArray, 10);
        _aArray->array[_nIndex] = _aNewArray;
        return _aNewArray;
	}
	return _aArray->array[_nIndex];
}


gzInt32* GZ_tAw_Int(ArrayInt* _aArray, gzUInt _nIndex){
	if(_nIndex >  _aArray->size){
        //Rezize array int
	}
	return &_aArray->array[_nIndex];
}
gzInt32 GZ_tAr_Int(ArrayInt* _aArray, gzUInt _nIndex){
	if(_nIndex >  _aArray->size){
        return 0;
	}
	return _aArray->array[_nIndex];
}

