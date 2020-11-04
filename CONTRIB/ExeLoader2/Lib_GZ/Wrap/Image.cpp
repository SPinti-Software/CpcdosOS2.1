//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Image.h"
#include "Lib_GZ/Sys/Debug.h"


namespace Lib_GZ{ namespace Wrap{


namespace Image{
gzInt**  aFileList = 0;
gzInt8**  aPathList = 0;
gzUInt nNbFile = 0;
}


gzInt pImage::fOpen(File::cRcImg* _oRc) {

	
	
	
	
//#ifndef GZ_tWeb_Emsc


//#if ( defined GZ_tWindows || defined  GZ_tLinux || defined  GZ_tAndroid )
   // sPath = _sPath;
  //  m_NewWCharFromXStr(_wcPath, _sPath);
    gzUInt8* image_data;
    gzUInt image_nbChannel;
    gzInt32 x,y,n;
    gzUInt8* data;

	#ifdef GZ_tWeb_Emsc
	//_oRc->hLocation = File::Resource::eLocation::Drive; //Temp (with cpp exoprt)
	
	#endif
			/*
    switch(_oRc->hLocation){
		

       case  File::Resource::eLocation::Drive :{

			#ifndef STBI_NO_STDIO
			   Sys::pDebug::fConsole(gzStrL("File To Load: ") + _oRc->sVDrive +  _oRc->sPath);
			   // Debug::fTrace1( _oRc->sSubPath);
				//From drive
				
				#ifdef GZ_tWeb_Emsc
						gzUTF16 _sLoad(gzStrL("GZ/RcEngine/Transform.png"));
				#else
						gzUTF16 _sLoad(_oRc->sVDrive + _oRc->sPath);
				#endif
				
				data = stbi_load((wchar_t*)(gzUInt16*)( _sLoad ), &x, &y, &n, 0);
			#else
			  Sys::pDebug::fConsole(gzStrL("No stbi_load implemented: ") + _oRc->sVDrive +  _oRc->sPath);
			#endif
			
        }break;

        case  File::Resource::eLocation::Memory :{
			*/
            //From memory
			
			/*
			if(_oRc->aSrcMemData == 0){
				Sys::pDebug::fConsole(gzStrL("IMG LOAD FAIL: Nothing in memory for: ") + _oRc->sVDrive +  _oRc->sPath  );
				data = 0;
			}else{
				data = stbi_load_from_memory(  (stbi_uc*)_oRc->aSrcMemData, _oRc->nSize, &x, &y, &n, 0);
			}*/
			
			
           // Debug::fTrace2(gzStrL("MemLoaded: ")  +  gzStrI(_oRc->nSize));
		/*   
        }break;
		
		default:
			Sys::pDebug::fConsole(gzStrL("Error ") + _oRc->sVDrive +  _oRc->sPath);
		break;
		

    }
		*/
		
		if(_oRc->aSrcMemData == 0){
				Sys::pDebug::fConsole(gzStrL("IMG LOAD FAIL: Nothing in memory for: ") + _oRc->sVDrive +  _oRc->sPath  );
				data = 0;
			}else{
				data = stbi_load_from_memory(  (stbi_uc*)_oRc->aSrcMemData, _oRc->nSize, &x, &y, &n, 0);
	
		
				if(data){
					image_data  = data;
					 _oRc->nWidth= (gzInt)x;
					 _oRc->nHeight = (gzInt)y;
					image_nbChannel = n;

					//printf("\n IMG LOAD GOOD: %i\n", image_height);
				   // printf("\n IMG LOAD GOOD: %i\n", image_width);
					//printf("\n image_nbChannel %i\n", image_nbChannel);
				}else {
					//Fail
				   // Sys::Debug::fError(gzStrL("IMG LOAD FAIL: ") + gzStrC(stbi_failure_reason())  + gzStrL(" ") +  _oRc->sRoot +  _oRc->sSubPath  );
					 Sys::pDebug::fConsole(gzStrL("IMG LOAD FAIL: ") + gzStrC(stbi_failure_reason())  + gzStrL(" ") +  _oRc->sVDrive +  _oRc->sPath  );

				 //   printf("\n IMG %s LOAD FAIL: %s\n", , stbi_failure_reason());
				}
		}

//#endif


#ifdef GZ_tMCU_2
			image_width = 200 - nBORDER_x2;
    image_height = 200 - nBORDER_x2;

	gzInt* aPixelImg = (gzInt*)(uint*)(0x8080000);

	nExtHeight = image_height + nBORDER_x2;
	  nExtWidth = image_width + nBORDER_x2;
	  p2DArray = new gzInt*[nExtHeight];

		//Associate border
	for (gzInt y  = 0;  y  < nBORDER;  y ++){

				p2DArray[y] =  &aPixelImg[y  * nExtWidth] ; //Border empty
				p2DArray[nExtHeight - (y +1)] =  &aPixelImg[ (nExtHeight - (y +1)) * nExtWidth] ; //Border empty
		}
	 for (gzInt y = 0;  y < image_height;  y++){

				p2DArray[y + nBORDER] =  &aPixelImg[(y + nBORDER) * nExtWidth] ; //Border empty
	 }
#endif

#ifdef GZ_tMCU
		static bool bFlashListIni = false;
		if(!bFlashListIni){
			bFlashListIni = true;
			iniFlashList();
		}

		gzInt nIndex = findFileInFlashList(_sPath);
	//	oDebugCOM->vPrint("\n\r Count: ");

		if(nIndex == -1){
			return -1;
		}

		gzInt* _pAdr = (gzInt*)aFileList[nIndex];

		//gzInt* aPixelImg = (gzInt*)(0x8080000);
		//TODO test name
		_pAdr += 3;
		image_height = *_pAdr;
		_pAdr ++;
		image_width = *_pAdr;
		_pAdr ++;

	  nExtHeight = image_height + nBORDER_x2;
	  nExtWidth = image_width + nBORDER_x2;

	 // p2DArray = new gzInt*[nExtHeight];
	  p2DArray = (gzInt **)malloc(sizeof(gzInt*) * nExtHeight);

		//Associate border
		p2DArray[0] =  &_pAdr[0] ; //Border empty
		p2DArray[1] =  p2DArray[0] ; //Border empty
		p2DArray[nExtHeight - 1]  =  p2DArray[0];
		p2DArray[nExtHeight - 2]  =  p2DArray[0];

		for (gzInt y = 0;  y < image_height;  y++){
			p2DArray[y + nBORDER] =  &_pAdr[(y + 1) * nExtWidth] ;

#endif

    pImage::fGetImage(_oRc, image_data, image_nbChannel);
//#endif
	return 0;
}


gzInt** pImage::fGetImage(File::cRcImg* _oRc, gzUInt8* image_data, gzUInt image_nbChannel)
{


    gzUInt image_height =  _oRc->nHeight;
    gzUInt image_width =  _oRc->nWidth;

    gzInt** p2DArray;

//#if (defined GZ_tWindows || defined  GZ_tLinux  || defined  GZ_tAndroid )

    Image::pixel *p;
    Image::pixel *pixels;

    gzUInt nExtWidth;
    gzUInt nExtHeight;

    nExtHeight = _oRc->nHeight + nBORDER_x2;
    nExtWidth = _oRc->nWidth  + nBORDER_x2;

    //////////////////////////////////////////////////////////////
    //Copy in a new Array && Reverse color && make border buffer//
    //////////////////////////////////////////////////////////////
    p2DArray = new gzInt*[nExtHeight];

    gzUInt _nPixelFrame;
    gzUInt _nFrameAlpha;
    gzUInt _nFrameRed;
    gzUInt _nFrameBlue;
    gzUInt _nFrameGreen;
	gzInt* p1DArray = (gzInt *)GZ_fCalloc(nExtHeight * nExtWidth , sizeof(gzInt) );

    p2DArray[0] = p1DArray;
    p2DArray[nExtHeight - 1] = &p1DArray[ nExtWidth * (image_height + nBORDER)];

	switch(image_nbChannel){

			case 3 :  //RGB
					for (gzInt y = 0;  y < image_height;  y++){
							//p2DArray[y+nBORDER] = (gzInt *)GZ_fCalloc(sizeof(gzInt), nExtWidth); //Or set border to 0 manualy
							//Reverse Red && blue  and premultiply
							 for (gzInt x = 0;  x < image_width;  x++){

								//  _nPixelFrame =   pOri2DArray[y][x];
									Image::pixel3Chan* _nPix =  (Image::pixel3Chan*)&image_data[y * image_width*image_nbChannel + x*3];
									_nFrameAlpha = 0xFF;

									_nFrameRed =  _nPix->R;
									_nFrameGreen = _nPix->G;
									_nFrameBlue = _nPix->B;

                                    p1DArray[((y+nBORDER) *  nExtWidth) + (x+nBORDER) ]  = (_nFrameAlpha << 24) | (_nFrameRed << 16) | (_nFrameGreen << 8) | _nFrameBlue;
                                    p2DArray[(y+nBORDER)] = &p1DArray[((y+nBORDER) *  nExtWidth)];
						 }
					}
			break;


			case 4 :  //ARGB

					for (gzInt y = 0;  y < image_height;  y++){

						//	p2DArray[y+nBORDER] = (gzInt *)fCalloc(sizeof(gzInt), nExtWidth); //Or set border to 0 manualy
							//Reverse Red && blue  and premultiply
                            gzInt* RowY = (gzInt*)&image_data[y * image_width*image_nbChannel];

							 for (gzInt x = 0;  x < image_width;  x++){

									_nPixelFrame =  RowY[x];
									_nFrameAlpha = (_nPixelFrame >> 24);

									_nFrameBlue = ((_nPixelFrame >> 16) & 0xFF) * _nFrameAlpha >> 8;
									_nFrameGreen = ((_nPixelFrame >> 8) & 0xFF) * _nFrameAlpha >> 8;
									_nFrameRed = (_nPixelFrame & 0xFF)          * _nFrameAlpha >> 8;

									//p2DArray[y+nBORDER][x+nBORDER] = (_nFrameAlpha << 24) | (_nFrameRed << 16) | (_nFrameGreen << 8) | _nFrameBlue;
									p1DArray[((y+nBORDER) *  nExtWidth) + (x+nBORDER) ]  = (_nFrameAlpha << 24) | (_nFrameRed << 16) | (_nFrameGreen << 8) | _nFrameBlue;
									//p2DArray[y+nBORDER][x+nBORDER] = (_nFrameAlpha << 24) | (_nFrameRed << 16) | (_nFrameGreen << 8) | _nFrameBlue;
									p2DArray[(y+nBORDER)] = &p1DArray[((y+nBORDER) *  nExtWidth)];
						}
					}
			break;

	}
	//printf("\n OKA: %i\n", p2DArray);

//#endif


	/*
    ///// MCU ///////
    gzInt* aPixelImg = (gzInt*)(0x8080000);
    //TODO test name
    aPixelImg += 3;
    image_height = *aPixelImg;
    aPixelImg ++;
    image_width = *aPixelImg;
    aPixelImg ++;

    nExtHeight = image_height + nBORDER_x2;
    nExtWidth = image_width + nBORDER_x2;
    p2DArray = new gzInt*[nExtHeight];

    //Associate border
    p2DArray[0] =  &aPixelImg[0] ; //Border empty
    p2DArray[1] =  p2DArray[0] ; //Border empty
    p2DArray[nExtHeight - 1]  =  p2DArray[0];
    p2DArray[nExtHeight - 2]  =  p2DArray[0];

    for (gzInt y = 0;  y < image_height;  y++){
        p2DArray[y + nBORDER] =  &aPixelImg[(y + 1) * nExtWidth] ;
    }
#endif
    */
    _oRc->aImg = p2DArray;
	//printf("!aImage Loaded : %d," (int )_oRc->aImg);
	
    return p2DArray;
}


void cImage::iniFlashList(){
	#ifdef GZ_tMCU

	gzInt* aFlashList = (gzInt*)(0x8080000);
	gzInt _nBaseAdr = (gzInt)aFlashList;

	//List_
	aFlashList += 2;

	//NB FILE
	nNbFile = *aFlashList;
	//oDebugCOM->vPrintUNum(nNbFile ,0);
	aFileList = (gzInt**)malloc(sizeof(gzInt*) * nNbFile);
	aPathList = (char**)malloc(sizeof(char*) * nNbFile);
	////////////

	//oDebugCOM->vPrint(" ");

	aFlashList ++;
	char* aFilesPath = (char*)(aFlashList + 1); //FilePath
	gzInt _nStartAdr = *aFlashList;
	aFlashList = (gzInt*)(_nBaseAdr + _nStartAdr);

/*
	oDebugCOM->vPrint("\n\r _nStartAdr: ");
	oDebugCOM->vPrintHexUI32(_nStartAdr ,1);
	oDebugCOM->vPrint(" ");
	oDebugCOM->vPrintHexUI32((gzInt)aFlashList ,1);
*/

	/// ADRESS LIST /////
	for(gzInt i = 0; i < nNbFile; i++){
		//oDebugCOM->vPrint("\n\r ADR: ");
			gzInt* _pAdr =  (gzInt*)(_nBaseAdr + *aFlashList);

			aFileList[i] = _pAdr;

		//	oDebugCOM->vPrintHexUI32((gzInt)		aFileList[i]  ,1);
			aFlashList++;
	}

	for(gzInt i = 0; i < nNbFile; i++){
		/////// Load FilePath////////
		char* aStartPath = aFilesPath;
		uint nSize = 0;
		while(*aFilesPath != 0){ //DetectSize
			aFilesPath++;
			nSize++;
		}

		char* sNewPath = (char*)malloc(sizeof(char) * (nSize+1 ));
		aFilesPath = aStartPath;
		for(gzInt j =0; j < nSize; j++){
			sNewPath[j] = *aFilesPath;
			aFilesPath++;

		}
		aPathList[i] = sNewPath;


		aFilesPath++; //Next path

		//oDebugCOM->vPrint("\n\r Path: ");
		//oDebugCOM->vPrint(sNewPath);
		////////////////////////
	}

//	oDebugCOM->vPrint("  Fin  ");
	#endif
}




gzInt cImage::findFileInFlashList(gzStr* _sPath){
    #ifdef GZ_tMCU
	for(gzInt i = 0; i < nNbFile; i++){
		char* _sSelectPath = 	aPathList[i];

		TSTR* _sSearch = _sPath->array;
		//oDebugCOM->vPrint("\n\r _sSelectPath: ");
	  //oDebugCOM->vPrint((char*)_sSelectPath);
		//oDebugCOM->vPrint("\n\r");

		uint j;
		for( j = 0; j < _sPath->size; j++){
			unsigned char _nChar = _sSelectPath[j];
			//oDebugCOM->vPrintLetter( _sSearch[j]);
			if((_nChar == 0) ||  _nChar != _sSearch[j]){
				break;
			}
		}
		if(j == _sPath->size){
				//oDebugCOM->vPrint("\n\r FOUND: ");
				//oDebugCOM->vPrintUNum(i, 0);
				//oDebugCOM->vPrint("  Path: ");
				//oDebugCOM->vPrint(_sSelectPath);
				return i;
		}
	}
//	oDebugCOM->vPrint("\n\r Error not found ");
	return -1;
	#endif
    return 0; //Temp
}



void pImage::fClear(gzInt** _aPixelArray,  gzInt _height, gzInt _width ){

    //free all
    if(_aPixelArray != 0){

         for (gzInt y = 0;  y < _height;  y++){
             memset(_aPixelArray[y+nBORDER],0,_width*4);
        }
    }
}



gzInt pImage::fDelete(File::cRcImg* _oRc){

    //free all
    gzInt32** _aPixelArray = _oRc->aImg;
    if(_aPixelArray != 0){

      GZ_fFree(_aPixelArray[0]);
        //Todo delete P2D array
    }
//    printf("\n -----************ Destroye!******* ");
    return 0;
}


gzInt** pImage::fNewEmpty( gzInt _height, gzInt _width){

	gzInt _nExtHeight = _height + nBORDER_x2;
    gzInt _nExtWidth = _width + nBORDER_x2;

    gzInt ** _aPixelArray = (gzInt **)GZ_fMalloc(_nExtWidth, sizeof(gzInt*));

    _aPixelArray[0] = (gzInt *)GZ_fCalloc(sizeof(gzInt), _nExtWidth);
    _aPixelArray[1] = _aPixelArray[0];
    _aPixelArray[_nExtHeight - 1] = _aPixelArray[0];
    _aPixelArray[_nExtHeight - 2] = _aPixelArray[0];

    for (gzInt y = 0;  y < _height;  y++){
        _aPixelArray[y+nBORDER] = (gzInt *)GZ_fCalloc(sizeof(gzInt), _nExtWidth);
    }
	return _aPixelArray;
}


}//Image

}

