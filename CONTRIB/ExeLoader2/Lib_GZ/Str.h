//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

class gzStr;

#if !( defined tHDef_GZ_UStr)
#define tHDef_GZ_UStr
#define tHDef_IN_GZ_UStr

#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/GzBaseFunc.h"
#include "utf8.h"
#include "DArray.h"
#include "Lib_GZ/GzMem.h"

#define gzPStr const gzStr&

#define gzStrL(_constStr)(gzStr((gzUInt8*)"\0" _constStr, (sizeof("\0" _constStr)/sizeof(gzUInt8)) - 2, true))
#define gzL(_constStr)(gzUInt8*)"\0" _constStr, (sizeof(("\0" _constStr))/sizeof(gzUInt8)) - 2, true

#define gzStrToEnd gzStrL("\xEF\xB7\x90")



struct gzHoldStr
{
    gzUInt  nNbIns;
  //  gzUInt size;
    gzUInt8* end;
    gzUInt maxSize;
    gzUInt8* array;
    bool NoDelete;
   // bool AlreadyDeleted;
};
//Structure Implementation

//Enum

//#include <stdio.h>


class gzStr {

	public:
        gzHoldStr* sStr;
        gzUInt8* pCurrPos;

		//gzStr(gzUInt8* _Array, gzUInt _nLength);
		gzStr();
        gzStr(gzUInt8* _Array, gzUInt _nLength, bool _bNoDelete = false);
        gzStr(gzUInt16* _Array);
        gzStr(gzPStr _sOther);
		gzStr(gzPStr _sOther, gzBool _bDeepCpy);
        gzStr(gzInt32 _nChar);


        gzBool fNext() const;
        gzBool fPrev() const;

        virtual ~gzStr();

        gzBool operator==(gzPStr _sOther) const;

        gzStr& operator=(gzPStr _sOther) const;
        gzStr operator+(gzPStr _sOther) const;
        gzStr operator+=(gzPStr _sOther) const;

        gzUInt32 GnCurrChar() const;
        inline gzUIntX GnSize() const{
            return sStr->end - sStr->array - 1;
        }

        inline gzUInt8* fcStr() const {
            return (gzUInt8*)sStr->array + 1;
        }

        gzBool fReplace(gzPStr _sFind, gzPStr _sReplace) const;
        gzUInt fReplaceAll(gzPStr _sFind, gzPStr _sReplace) const;
        gzBool fRevReplace(gzPStr _sFind, gzPStr _sReplace) const;
        gzUInt fRevReplaceAll(gzPStr _sFind, gzPStr _sReplace) const;


        gzUInt fToUInt() const;
        gzStr& fSubStrCount(gzUInt nCount) const;
        gzStr fSubStr(gzPStr _sFind = gzStrToEnd, gzBool _bExclude = false) const;
        gzStr fRevSubStr(gzPStr _sFind = gzStrToEnd, gzBool _bExclude = false) const;

        gzArray<gzStr> fSplit(gzPStr _sDelimiter) const;

        gzBool fFind(gzPStr _sFind, gzBool _bExclude = false) const;
        gzBool fRevFind(gzPStr _sFind, gzBool _bExclude = false) const;
        gzStr& fBegin() const;
        gzStr& fEnd() const;

        //Path
        gzStr fPathGetFileExtention() const;
        gzStr fPathGetFileName() const;
        gzStr fPathGetCurrFolder() const;
        gzBool fPathFindPrecFolder() const;
        gzStr fPathGetRelative(gzPStr _sRelativePath) const;

	private:
        inline void fNextInline();
        gzBool fDetachAndHold() const;
        void fReleaseHold(gzBool _bPrevRelease) const;
        void fDetachAndCopie();
};


//Convert
gzStr gzStrUI(gzUInt64 _nEntier);
gzStr gzStrI(gzInt64 _nEntier);
gzStr gzStrF(gzFloat64 _nFloat, gzUInt8 _nbCharAfter = 3);
gzStr gzStrH32(gzUInt32 _nEntier);
gzStr gzStrC(const char* _Array);
gzStr gzStrC(gzInt* _Array);
gzStr gzStrC(const char* _Array, gzUInt _nCount);
gzStr gzStrB(gzBool _bValue);

class gzUTF16 {
    gzUInt16* array;

    public  :
    inline gzUTF16(gzPStr _sConvert) {
       array = NewConvertUTF8toUTF16( _sConvert.sStr->array + 1 );
    }

    inline operator gzUInt16*() {
        return array;
    };
    inline gzUInt16* get() {
        return array;
    };

    inline ~gzUTF16(){
        GZ_fFree(array);
    }
};

class gzUStrAutoRestore {
    public  :
        gzUInt8* pBackPos;
        gzStr* sRef;

         inline gzUStrAutoRestore(gzPStr _sBackup){
            sRef = const_cast<gzStr*>(&_sBackup);
            pBackPos = _sBackup.pCurrPos;
        }
        inline ~gzUStrAutoRestore(){
            sRef->pCurrPos = pBackPos;
        }
};

#define StrFunc(_sRet, _sName)  inline _sRet _sName() const {return sRef->_sName();}

class gzRstUStr  {
     public  :
        gzUInt8* pBackPos;
        gzStr* sRef;
        gzStr* sBackRef;

         inline gzRstUStr(gzPStr _sBackup){
            sRef = const_cast<gzStr*>(&_sBackup);
            sBackRef = const_cast<gzStr*>(&_sBackup);
            pBackPos = _sBackup.pCurrPos;
        }

        inline ~gzRstUStr(){
            sBackRef->pCurrPos = pBackPos;
        }

        StrFunc(gzStr&, fEnd);
        StrFunc(gzBool, fPrev);
        StrFunc(gzUInt32, GnCurrChar);

        inline gzRstUStr operator+=(gzPStr _sOther) const{
            (*sRef) += _sOther;
            return *const_cast<gzRstUStr*>(this);
        }

        inline gzStr operator+(gzPStr _sOther) const{
            return  (*sRef) + _sOther;
        }

        inline gzRstUStr& operator=(gzPStr _sOther) {
            sRef = const_cast<gzStr*>(&_sOther);
            return *const_cast<gzRstUStr*>(this);
        }


        inline gzStr* operator->() const
        { return sRef; }

        inline gzStr& operator->()
        { return *sRef; }

        inline operator gzStr*() {
            return sRef;
        };

        inline operator gzStr&() {
            return *sRef;
        };

};
#undef StrFunc

#undef tHDef_IN_GZ_UStr
#endif
