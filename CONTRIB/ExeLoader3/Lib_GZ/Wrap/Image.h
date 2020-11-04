//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#ifndef tHDef_GZ_WrapImage
#define tHDef_GZ_WrapImage


//#define STBI_NO_STDIO



#include "Lib_GZ/GZ.h"

//Class include
#include "Lib_GZ/Sys/Debug.h"

//#ifdef Windows
#include "Lib_GZ/Lib/SFF/stb_image.h"
//#endif

#define nBORDER 1
#define nBORDER_x2 (nBORDER*2)
/*
typedef unsigned char   uch;
typedef unsigned short  ush;
typedef unsigned long   ulg;
*/

#include "Lib_GZ/File/RcImg.h"

namespace Lib_GZ{namespace Wrap{

    namespace Image{
        struct pixel { gzUInt color; };
        struct pixel3Chan { gzUInt8 R;gzUInt8 G; gzUInt8 B; };
        extern gzUInt nNbFile;
         extern gzInt** aFileList;
         extern gzInt8** aPathList;
    }
    namespace pImage{
         gzInt fOpen(File::cRcImg* _oRc);



         void fClear(gzInt** _aPixelArray,  gzInt _height, gzInt _width );
         gzInt fDelete(gzInt** _aPixelArray, gzInt _nCurrentHeight);
		 gzInt** fNewEmpty(gzInt _height, gzInt _width);


        gzInt** fGetImage(File::cRcImg* _oRc, gzUInt8* image_data, gzUInt image_nbChannel);

         gzInt fDelete(File::cRcImg* _oRc);
    }


class cImage {

    public:



        gzStr* sPath;

        gzUInt pChannels;
        gzUInt pRowbytes; //Maybe better to set as unsigned long
        gzInt nGamma;

        cImage();


        gzInt fOpenFromMemory(gzInt* _aData, gzUInt _uLength) ;


        void iniFlashList();
        gzInt findFileInFlashList(gzStr* _sPath);


        //Getter
        gzInt fGetWidth();
        gzInt fGetHeight();



    private:

        ArrayInt* aArrayInt;
		ArrayPtr* aPixelArray;

};
}}

#endif

