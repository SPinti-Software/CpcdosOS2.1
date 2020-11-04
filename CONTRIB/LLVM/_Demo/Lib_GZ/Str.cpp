//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.
#include "Math.h"
#include "Str.h"


/*
gzStr::gzStr(const char* _Array){
    printf("\n Size : %d", sizeof(_Array));
}
*/
#define wThis const_cast<gzStr*>(this)
/*
gzStr::gzStr(bool _bNoDelete){
    sStr = (gzHoldStr*)GZ_fMalloc(1, sizeof(gzHoldStr));
    sStr->NoDelete = _bNoDelete;
    sStr->nNbIns = 1;
}*/

using namespace Lib_GZ;

gzStr::gzStr(){
	
    //sStr = (gzHoldStr*)GZ_fMalloc(1, sizeof(gzHoldStr));
    sStr = GZ_fSafeMalloc(1, gzHoldStr);

    sStr->array = (gzUInt8*)"\0\0";
    sStr->end = &sStr->array[1];
    sStr->NoDelete = true;
    sStr->nNbIns = 1;
    pCurrPos =  (gzUInt8*)sStr->array;
    //sStr->AlreadyDeleted = false;
}

gzStr::gzStr(gzUInt8* _Array, gzUInt _nLength, bool _bNoDelete){
    //TODO verify if is true
    sStr = GZ_fSafeMalloc(1, gzHoldStr);

    sStr->array = (gzUInt8*)_Array;
    sStr->end = (gzUInt8*)_Array + _nLength + 1;
    sStr->NoDelete = _bNoDelete; //Normaly True
    sStr->nNbIns = 1;
    pCurrPos = (gzUInt8*)sStr->array;
    //sStr->AlreadyDeleted = false;
}
gzStr::gzStr(gzUInt16* _Array){
    //TODO verify if is true
   // sStr = (gzHoldStr*)GZ_fMalloc(1, sizeof(gzHoldStr));
    sStr = GZ_fSafeMalloc(1, gzHoldStr);

    sStr->array = NewConvertUTF16toUTF8(_Array);
  //  sStr->size =  ;

    sStr->end = sStr->array  +  sStr->array[0]; //sStr->array[0] Temp size
    sStr->array[0] = 0;
    sStr->NoDelete = false;
    sStr->nNbIns = 1;
    pCurrPos = (gzUInt8*)sStr->array;
    //sStr->AlreadyDeleted = false;
}



/*
//Not really used
gzStr::gzStr(gzUInt8* _Array, gzUInt _nLength){

   sStr = (gzHoldStr*)GZ_fMalloc(1, sizeof(gzHoldStr));
    sStr->array = (gzUInt8*)GZ_fMalloc(_nLength+2, sizeof(char));
    for(gzUInt i = 0; i < _nLength + 1; i++){
         sStr->array[i] = _Array[i];
    }
    //memcpy(  _sString->array, Array, _nLength * sizeof(TSTR));
     sStr->array[_nLength + 1] = 0;
    // sStr->size = _nLength;
     sStr->end = (gzUInt8*)_Array + _nLength + 1;
     sStr->NoDelete = false;
     sStr->nNbIns = 1;
     pCurrPos =  (gzUInt8*)sStr->array;
}
//////////
*/

gzStr::gzStr(const  gzStr& _sOther){
    sStr = _sOther.sStr;
    ++sStr->nNbIns;
    //pCurrPos =  (gzUInt8*)sStr->array; //Strat of the string
    //pCurrPos =  _sOther.pCurrPos; //Keep pos (Not sure)
    pCurrPos =  (gzUInt8*)sStr->array; //Reset pos
}

gzStr::gzStr(const  gzStr& _sOther, gzBool _bDeepCpy){
	   /*
	sStr = _sOther.sStr;
    ++sStr->nNbIns;
    //pCurrPos =  (gzUInt8*)sStr->array; //Strat of the string
    //pCurrPos =  _sOther.pCurrPos; //Keep pos (Not sure)
    pCurrPos =  (gzUInt8*)sStr->array; //Reset pos
	*/
	
	//printf("DeepCopy");
	sStr = GZ_fSafeMalloc(1, gzHoldStr);
	
	gzUInt8* _aOtherStr = _sOther.sStr->array;
    gzUInt _nOtherSize = _sOther.sStr->end - _aOtherStr;
	  
	//DeepCopy
    gzUInt8* _aNew = GZ_fSafeMalloc( (_nOtherSize + 1 ) , gzUInt8); // + 1 for end of string (0)
    memcpy( _aNew, _aOtherStr, (_nOtherSize + 1 ) * sizeof(gzUInt8));
    sStr->array = _aNew;
	
    sStr->end =  sStr->array +_nOtherSize;
    sStr->NoDelete = _sOther.sStr->NoDelete; //Normaly True
    sStr->nNbIns = 1;
    pCurrPos = (gzUInt8*)sStr->array;
}





gzStr::gzStr(gzInt32 _nChar){

   sStr = GZ_fSafeMalloc(1, gzHoldStr);

    sStr->array = u8_fNewUtf32ToUtf8(_nChar);
    sStr->end = sStr->array  +  sStr->array[0]; //sStr->array[0] Temp size
    sStr->array[0] = 0;
    sStr->NoDelete = false;
    sStr->nNbIns = 1;
    pCurrPos = (gzUInt8*)sStr->array;
}




gzStr::~gzStr(){
//if(sStr->AlreadyDeleted){printf("\n*** DEL BUG*****: %s : %d",sStr->array+1, sStr->nNbIns );}

    --sStr->nNbIns;
    //printf("\n %s Destroy", sStr->array + 1);
   //    printf("\n %d nNbIns", sStr->nNbIns);
    if(sStr->nNbIns == 0) {
      //  printf("\n %s Destroy", sStr->array);
        if(!sStr->NoDelete){

            GZ_fSafeFree(sStr->array);
        }
       // sStr->AlreadyDeleted = true;
        GZ_fSafeFree(sStr);
    }else{
     //  printf("\n %s NoDes", sStr->array);
    }

}


gzStr& gzStr::operator=(gzPStr _sOther) const{

     if(this == &_sOther || sStr == _sOther.sStr){ // self assignment might cause a problem
         // return *this;
            return *wThis;
     }
    if(sStr != 0){
       --sStr->nNbIns; // this element will no longer point to its current data

      //     printf("\n %d nNbIns", sStr->nNbIns);
       if(sStr->nNbIns == 0){ // and if no other instance then delete the data

          // printf("\n %s Destroy", sStr->array);
          if(!sStr->NoDelete){
            GZ_fSafeFree(sStr->array);
          }
          GZ_fSafeFree(sStr);
       }else{
           //printf("\n %s NoDes", sStr->array);
        }
    }
    const_cast<gzStr*>(this)->sStr = _sOther.sStr; // link up to RHS object's data

   ++sStr->nNbIns; // which now has an extra instance

    // wThis->pCurrPos = _sOther.pCurrPos; //Keep pos (Not sure)
     wThis->pCurrPos =  (gzUInt8*)sStr->array; //Reset pos

  // return *this;
    return *wThis;
}

gzBool gzStr::operator==(gzPStr _sOther) const{

    if(GnSize() == _sOther.GnSize()){
        gzUInt8* _aLeft = &sStr->array[1];
        gzUInt8* _aRight = &_sOther.sStr->array[1];

        gzUInt i = 0;
        while(_aLeft[i] != 0 && _aRight[i] != 0 && _aLeft[i] == _aRight[i]){
            i++;
        }
        if(_aLeft[i] == 0 && _aRight[i] == 0){
            return true;
        }
    }
    return false;
}



// Do this before any Write operation
// After we have a single instance, we are free to operate on the data
gzBool gzStr::fDetachAndHold() const{

 // make a deep copy of the object - if necessary
  if(sStr->nNbIns == 1) { // not necessary - only one instance
        return  !sStr->NoDelete;
  }

  
   //Make deep copy
   gzHoldStr* _sTemp = GZ_fSafeMalloc(1, gzHoldStr);
   _sTemp->array = sStr->array; // Temp link string, must fReleaseHold after use
   _sTemp->end = sStr->end;
   _sTemp->NoDelete = false;
   _sTemp->nNbIns = 1; //It a new string
   --sStr->nNbIns; // no of instances to old data is decremented
    wThis->sStr = _sTemp; // now pointing to new data with one instance
	
	
    return false;
}


void gzStr::fReleaseHold(gzBool _bPrevRelease) const{

    if(_bPrevRelease){
        GZ_fSafeFree(sStr->array);
    }else{
        sStr->NoDelete = false;
    }
}


///////////////////////////////////////////////////
///////////////////////////////////////////////////
//////// Write Operation - must detach   //////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////

gzStr gzStr::operator+(gzPStr _sOther) const {

    gzUInt8* _aStr1 = sStr->array;
    gzUInt _nSize1 = sStr->end -  _aStr1;

    gzUInt8* _aStr2 = _sOther.sStr->array;
    gzUInt _nSize2 = _sOther.sStr->end - _aStr2;

    gzUInt _nNewSize = _nSize1 + _nSize2 - 1; //-1 second string begin with null

    gzUInt8* _aNew = GZ_fSafeMalloc( (_nNewSize + 1) , gzUInt8);


    memcpy( _aNew, _aStr1, _nSize1 * sizeof(gzUInt8));
    memcpy( _aNew + _nSize1, _aStr2  + 1, _nSize2 * sizeof(gzUInt8)); // + 1 second string begin with null

    _aNew[_nNewSize] = 0; //End Of string


    return gzStr(_aNew, _nNewSize - 1, false);
}

gzStr gzStr::operator+=(gzPStr _sOther) const {

    //gzHoldStr* _sOld = sStr;
    gzBool _bPrevRelease = fDetachAndHold();
  //   if(_sOld->nNbIns != 1) {
   //     free(_sOld);
   //  }

    gzUInt8* _aStr1 = sStr->array;
    gzUInt _nSize1 = sStr->end -  _aStr1;

    gzUInt8* _aStr2 = _sOther.sStr->array;
    gzUInt _nSize2 = _sOther.sStr->end - _aStr2;

    gzUInt _nNewSize = _nSize1 + _nSize2 - 1; //-1 second string begin with null

    //gzUInt8* _aNew = (gzUInt8*)GZ_fMalloc( (_nNewSize + 1) , sizeof(gzUInt8));
    gzUInt8* _aNew = GZ_fSafeMalloc( (_nNewSize + 1) , gzUInt8);


    memcpy( _aNew, _aStr1, _nSize1 * sizeof(gzUInt8));
    memcpy( _aNew + _nSize1, _aStr2  + 1, _nSize2 * sizeof(gzUInt8)); // + 1 second string begin with null

    _aNew[_nNewSize] = 0; //End Of string

    //ResetPos
     wThis->pCurrPos = (pCurrPos - _aStr1) + _aNew;

    fReleaseHold(_bPrevRelease);
    //Reattach
    sStr->array = _aNew;
    sStr->end = _aNew + _nNewSize;
    return *wThis;
}




gzStr& gzStr::fSubStrCount(gzUInt nCount) const {
    gzUInt8* _pBackPos = pCurrPos;
    gzUInt _nNewSize = nCount;

    if(_pBackPos == sStr->array){ //Don'tatke empty char
        _pBackPos++;
        nCount++;
    }

    while(nCount > 0 &&  fNext()){
        nCount--;
    }

    gzBool _bPrevRelease = fDetachAndHold();
    gzUIntX nRealSize = pCurrPos - _pBackPos;

   // gzUInt8* _aNew = (gzUInt8*)GZ_fMalloc( nRealSize + 2, sizeof(gzUInt8));
    gzUInt8* _aNew = GZ_fSafeMalloc( nRealSize + 2, gzUInt8);


    _aNew[0] = 0;
    gzUInt8* _aSubStr = &_aNew[1];
    _aSubStr[nRealSize] = 0;

    memcpy(_aSubStr, _pBackPos, pCurrPos - _pBackPos);

    fReleaseHold(_bPrevRelease);

    //Reattach
    sStr->array = _aNew;
    sStr->end = _aSubStr + nRealSize ;
    wThis->pCurrPos = _aNew;
    return *wThis;
}

gzStr gzStr::fSubStr(gzPStr _sFind, gzBool _bExclude) const {

   gzUInt8* _pBackPos = pCurrPos;
    if(_pBackPos == sStr->array){ //If find was startStr
       _pBackPos++;
    }

   gzUIntX nRealSize;
    if(!fFind(_sFind, !_bExclude)){
        fEnd();
    }
    nRealSize = pCurrPos - _pBackPos;

   // gzUInt8* _aNew = (gzUInt8*)GZ_fMalloc( nRealSize + 2, sizeof(gzUInt8));
    gzUInt8* _aNew = GZ_fSafeMalloc( nRealSize + 2, gzUInt8);

    _aNew[0] = 0;
    _aNew[nRealSize + 1] = 0;

    memcpy(_aNew + 1, _pBackPos, nRealSize);

   // wThis->pCurrPos = _pBackPos;
    return gzStr(_aNew, nRealSize, false);


    //NotFound
    // wThis->pCurrPos = _pBackPos;
    //Not found return an empty string
 //   return gzStr(gzL(""));
}

gzStr gzStr::fRevSubStr(gzPStr _sFind, gzBool _bExclude) const {

   gzUInt8* _pBackPos = pCurrPos;
    if(_pBackPos == sStr->end){ //If find was endStr
       _pBackPos--;
    }


  if(fRevFind(_sFind, _bExclude)){
	  
	  //%?? Is that good?
        gzBool _bPrevRelease = fDetachAndHold(); 
      
       if(pCurrPos == sStr->array){ //If find was endStr  
            wThis->pCurrPos++;                         
            if(pCurrPos > _pBackPos){
                _pBackPos = pCurrPos;
            }
        }   
		
		//  //%?? Is that good?
    } else{
        fBegin();
    }

    gzUIntX nRealSize = _pBackPos - pCurrPos;
    gzUInt8* _aNew = GZ_fSafeMalloc( nRealSize + 2, gzUInt8);

    _aNew[0] = 0;
    _aNew[nRealSize] = 0;

    memcpy(_aNew + 1, pCurrPos, nRealSize  );

   // wThis->pCurrPos = _pBackPos;
    return gzStr(_aNew, nRealSize, false);



   //  wThis->pCurrPos = _pBackPos;
    //Not found return an empty string
   //  return gzStr(gzL(""));
}


gzUInt gzStr::fReplaceAll(gzPStr _sFind, gzPStr _sReplace) const {

    gzUInt _nCount = 0;
    while(fReplace(_sFind, _sReplace) ){  //Todo, only one détach for multiple rerpacenent
        _nCount++;
    }
    return _nCount;
}


gzBool gzStr::fReplace(gzPStr _sFind, gzPStr _sReplace) const {
    if(fFind(_sFind)){

        gzBool _bPrevRelease = fDetachAndHold();
        gzUInt _nNewSize = GnSize() - _sFind.GnSize() + _sReplace.GnSize() + 1; //+2 start / end -> null
        gzUInt8* _aNew = GZ_fSafeMalloc( _nNewSize + 1, gzUInt8);


        gzUIntX _nSize = pCurrPos - (sStr->array);

        memcpy( _aNew, sStr->array, _nSize);         //Copy Start String
        memcpy( _aNew + _nSize ,  _sReplace.sStr->array + 1, _sReplace.GnSize());  //Copy Replace String
        gzUInt8* pStart = sStr->array + _nSize +  _sFind.GnSize();
        memcpy( _aNew + _nSize + _sReplace.GnSize(), pStart,  sStr->end - pStart + 1);  //Copy End String // +1 copy 0 to end string
        //ResetPos
        wThis->pCurrPos = (pCurrPos - sStr->array) + _aNew; //TODO better way?
        fReleaseHold(_bPrevRelease);
        //Reattach
        sStr->array = _aNew;
        sStr->end = _aNew + _nNewSize;
        return true;
    }
    return false;
}

gzUInt gzStr::fRevReplaceAll(gzPStr _sFind, gzPStr _sReplace) const {

    gzUInt _nCount = 0;
    while(fRevReplace(_sFind, _sReplace) ){  //Todo, only one dettach for multiple replacenent
        _nCount++;
    }
    return _nCount;
}

gzBool gzStr::fRevReplace(gzPStr _sFind, gzPStr _sReplace) const {
    if(fRevFind(_sFind)){
        gzBool _bPrevRelease = fDetachAndHold();

        gzUInt _nNewSize = GnSize() - _sFind.GnSize() + _sReplace.GnSize() + 1; //+2 start / end -> null
        gzUInt8* _aNew = GZ_fSafeCalloc( _nNewSize + 1, gzUInt8);
        gzUIntX _nSize = pCurrPos - (sStr->array) ;

        memcpy( _aNew, sStr->array, _nSize);         //Copy Start String
        memcpy( _aNew + _nSize,  _sReplace.sStr->array + 1, _sReplace.GnSize() + 1);  //Copy Replace String
        gzUInt8* pStart = sStr->array + _nSize +  _sFind.GnSize();
        memcpy( _aNew + _nSize + _sReplace.GnSize(), pStart,  sStr->end - pStart + 1);  //Copy End String
        //ResetPos
        wThis->pCurrPos = (pCurrPos - sStr->array) + _aNew; //TODO better way?
        fReleaseHold(_bPrevRelease);
        //Reattach
        sStr->array = _aNew;
        sStr->end = _aNew + _nNewSize;
        return true;
    }
    return false;
}


///////////////////////////////////////////////////
///////////////////////////////////////////////////
//// Read Operation -  No need to detach   ////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////

gzUInt32 gzStr::GnCurrChar() const{ // this is a const service so just operate on sStr->array directly
    return u8_fGetChar(pCurrPos);
}
extern   char trailingBytesForUTF8[];


gzStr& gzStr::fBegin() const {
   wThis->pCurrPos = sStr->array;
    return *wThis;
}
gzStr& gzStr::fEnd() const {
   wThis->pCurrPos = sStr->end;
    return *wThis;
}


gzBool gzStr::fNext() const { // this is a const service so just operate on sStr->array directly
    wThis->pCurrPos += u8_next(pCurrPos);
    if(pCurrPos >= (gzUInt8*)sStr->end){
         wThis->pCurrPos = (gzUInt8*)sStr->end;
        return false;
    }else{
        return true;
    }
}

gzBool gzStr::fPrev() const { // this is a const service so just operate on sStr->array directly
    wThis->pCurrPos += u8_prev(pCurrPos);
    if(pCurrPos <= (gzUInt8*)sStr->array){
         wThis->pCurrPos = (gzUInt8*)sStr->array;
        return false;
    }else{
        return true;
    }
}

gzBool gzStr::fFind(gzPStr _sFind, gzBool _bExclude) const {
    //Non-carcatere begin with 0xEF - 0xB7
    if(_sFind.sStr->array[1] == 0xEF && _sFind.GnSize() == 3 && _sFind.sStr->array[2] == 0xB7 &&  _sFind.sStr->array[3] == 0x90){ //ToEndStr
        fEnd();
        return true;
    }

    gzUInt8* _pBackSearchPos = _sFind.pCurrPos;
    gzUInt8* _pBackPos = pCurrPos;

    gzUInt8* pFirstSearchChar = _sFind.sStr->array + 1;
    const_cast<gzStr*>(&_sFind)->pCurrPos = pFirstSearchChar;

    gzUInt32 _nFirstSearchChar = _sFind.GnCurrChar();

    while(fNext()){

        if(GnCurrChar() == _nFirstSearchChar){

            // gzUInt8* pSavePos = pCurrPos; //Better?

            while(_sFind.fNext() && fNext()){
                  if(GnCurrChar() != _sFind.GnCurrChar()){
                      break;
                  }
            }
            if(_sFind.GnCurrChar() == 0){ //Full string found
                ////FOUND//////
                wThis->fNext();

                 if(!_bExclude){
                    wThis->pCurrPos -= _sFind.GnSize();
                  }
                 // wThis->pCurrPos = pSavePos; //Better?
                 //   GZ__Debug::fTrace1(GnCurrChar());

                const_cast<gzStr*>(&_sFind)->pCurrPos = _pBackSearchPos;
                return true;
                ///////////////
            }else{
                //Reset second string lookup
                const_cast<gzStr*>(&_sFind)->pCurrPos = pFirstSearchChar;
            }
        }
    }

    ////NOT FOUND////
    wThis->pCurrPos = _pBackPos;     //Not found reset current pos
    const_cast<gzStr*>(&_sFind)->pCurrPos = _pBackSearchPos;
    return false;
 }


gzBool gzStr::fRevFind(gzPStr _sFind, gzBool _bExclude) const {

    //Non-carcatere begin with 0xEF - 0xB7
    if(_sFind.sStr->array[1] == 0xEF && _sFind.GnSize() == 3 && _sFind.sStr->array[2] == 0xB7 &&  _sFind.sStr->array[3] == 0x90){ //ToEndStr
        fBegin();
        return true;
    }

    gzUInt8* _pBackSearchPos = _sFind.pCurrPos;
    gzUInt8* _pBackPos = pCurrPos;

    _sFind.fEnd();
    _sFind.fPrev();
    gzUInt8* pLastSearchChar = _sFind.pCurrPos;
    const_cast<gzStr*>(&_sFind)->pCurrPos = pLastSearchChar;

    gzUInt32 _nLastSearchChar = _sFind.GnCurrChar();

    while(fPrev()){
        if(GnCurrChar() == _nLastSearchChar){

      //      gzUInt8* pSavePos = pCurrPos; //Better?
            while(_sFind.fPrev() && fPrev()){

                  if(GnCurrChar() != _sFind.GnCurrChar()){
                      break;
                  }
            }
            if(_sFind.GnCurrChar() == 0){ //Full string found
                    ////FOUND//////
                //    wThis->pCurrPos += _sFind.GnSize();
                //    wThis->fPrev();
            //     wThis->pCurrPos = pSavePos; //Better?

                if(_bExclude){
                    wThis->pCurrPos += _sFind.GnSize();
                }

                const_cast<gzStr*>(&_sFind)->pCurrPos = _pBackSearchPos;
                return true;
                ///////////////
            }else{
                //Reset second string lookup
                const_cast<gzStr*>(&_sFind)->pCurrPos = pLastSearchChar;
            }
        }
    }
    ////NOT FOUND////
    wThis->pCurrPos = _pBackPos;     //Not found reset current pos
    const_cast<gzStr*>(&_sFind)->pCurrPos = _pBackSearchPos;
    return false;
 }


gzArray<gzStr> gzStr::fSplit(gzPStr _sDelimiter) const {
    gzArray<gzStr> aSplit;
    gzUInt8* _pBackPos = pCurrPos;
    fBegin();

    gzUInt i = 0;
    do{
        aSplit[i] = fSubStr(_sDelimiter,true);

        i++;
    }while(fNext());

    wThis->pCurrPos = _pBackPos;     //Restore current pos
	
    return aSplit;
}


/////////////////////////////////////////////////////////////
/////////////////////// Path  ///////////////////////////
/////////////////////////////////////////////////////////////

gzStr gzStr::fPathGetFileExtention() const {

    gzUStrAutoRestore _sBackup(*this);
    fEnd();
    return fRevSubStr( gzStrL("."), true );
}

gzStr gzStr::fPathGetFileName() const {

    gzUStrAutoRestore _sBackup(*this);
    fEnd();
    fRevFind(gzStrL("."));
    return fRevSubStr( gzStrL("/"), true );
}

gzStr gzStr::fPathGetCurrFolder() const {


    gzUStrAutoRestore _sBackup(*this);
    //fFind(gzStrL("/"));
    fRevFind(gzStrL("/"), true);
    gzUInt8* _pBackPos = pCurrPos;
    if(fRevFind(gzStrL("/"), true)){
        //fNext();
        return fSubStr(gzStrL("/"),false);
    }else{
        fBegin();
        return fSubStr(gzStrL("/"));
    }
}

gzStr gzStr::fPathGetRelative(gzPStr _sRelativePath) const {
    gzUStrAutoRestore _sBackup(*this);
    gzUStrAutoRestore _sBackup2(_sRelativePath);

    fEnd();
    fPathFindPrecFolder();
    _sRelativePath.fBegin();
    while(_sRelativePath.fFind(gzStrL("../"))){
        fPathFindPrecFolder();
    }
    _sRelativePath.fNext();
    _sRelativePath.fNext();
   return fRevSubStr(gzStrToEnd) + _sRelativePath.fSubStr(gzStrToEnd);
}



gzBool gzStr::fPathFindPrecFolder() const {
   //fPrev();
    if( fRevFind(gzStrL("/")) ){
       //fPrev();
        return true;
    }else{
       // fNext();
        return false;
    }
}

gzUInt gzStr::fToUInt() const {
    gzInt c = 0;
    gzInt sign = 0;
    gzInt x = 0;
    gzUInt8* p = &sStr->array[1];

    for(c = *(p++); (c < 48 || c > 57); c = *(p++)) {
        if (c == 45) {
            sign = 1; c = *(p++); break;
        }
    }; // eat whitespaces and check sign

    for(; c > 47 && c < 58; c = *(p++)){
        x = (x << 1) + (x << 3) + c - 48;
    }

    return sign ? -x : x;
}



/////////////////////////////////////////////////////////////
///////////////////////  Convert  ///////////////////////////
/////////////////////////////////////////////////////////////

gzStr gzStrUI(gzUInt64 _nEntier) {

    gzUInt _nSize = 0;
    gzUInt8* _aArray;
    if(_nEntier != 0){

        gzUInt8 intBuff[20];// 18446744073709551615 (0xffffffffffffffff)  --> 20char

        while (_nEntier > 0){
            intBuff[_nSize] = _nEntier % 10 + 0x30; //Get dizaine
            _nEntier /= 10;
            _nSize ++;
        }

        _aArray  = GZ_fSafeMalloc( (_nSize + 2) ,gzUInt8);

        _aArray[0] = 0;
        gzUInt8* _aNumbers = &_aArray[1];

        //Reverse order
        int i = 0;
        int j = _nSize;
        while ( i < _nSize){
            j --;
            _aNumbers[i] = intBuff[j];
            i++;
        }

        _aNumbers[_nSize] = 0;

    }else{
        //Value is 0 then  set "0" string
        _aArray = GZ_fSafeMalloc( 3 , gzUInt8);


        _aArray[0] = 0;
        _aArray[1] = 0x30;
        _aArray[2] = 0;
        _nSize = 1;
    }

    return gzStr(_aArray, _nSize, false);
}



gzStr gzStrI(gzInt64 _nEntier) {

    gzUInt _nSize = 0;
    gzUInt8* _aArray;

    if(_nEntier != 0){

        gzInt i;

        //Check if negative
        if(_nEntier > 0){
            i = 0;
            _nSize = 0;
        }else{
            i = 1;
            _nSize = 1;
            _nEntier *= -1;
        }

        //TSTR intBuff[10]; // uint range	0 to 4,294,967,295  --> 10char
        gzUInt8 intBuff[11]; // uint range	–2 147 483 648 to 2 147 483 647  --> 11char

        while (_nEntier != 0){
            intBuff[_nSize] = _nEntier % 10 + 0x30; //Get dizaine
            _nEntier /= 10;
            _nSize ++;
        }

        _aArray = GZ_fSafeMalloc( (_nSize + 2) , gzUInt8);
        _aArray[0] = 0;
        gzUInt8* _aNumbers = &_aArray[1];

        //Negative
        if(i == 1){
            _aNumbers[0] = 0x2D; // -
        }

        //Reverse order
        gzInt j = _nSize;
        while ( i < _nSize){
            j --;
            _aNumbers[i] = intBuff[j];
            i++;
        }

        _aNumbers[_nSize] = 0; //0 is the end of string

    }else{
        //Value is 0 then  set "0" string
        _aArray = GZ_fSafeMalloc( 3 , gzUInt8);

        _aArray[0] = 0;
        _aArray[1] = 0x30;
        _aArray[2] = 0;
        _nSize = 1;
    }

    return gzStr(_aArray, _nSize, false);
}


gzStr gzStrF(gzFloat64 _nFloat, gzUInt8 _nbCharAfter){

    if(_nbCharAfter > 8){
        _nbCharAfter = 8;
    }
    gzUInt _nEntier = _nFloat;

    _nbCharAfter++; //Dot
    gzStr _sFloat = gzStrUI(_nEntier);
    gzUInt _nSize = _sFloat.GnSize();
    gzUInt _nNewSize = _nSize  + _nbCharAfter;

    //New array with enough space
    gzUInt8* _aNewArray = GZ_fSafeMalloc( (_nNewSize + 2 ), gzUInt8);


    _aNewArray[0] = 0;
    gzUInt8* _aArray = &_aNewArray[1];

    memcpy( _aArray,  _sFloat.sStr->array+1, _nSize * sizeof(gzUInt8));

    _aArray[_nSize] = L'.';

    gzFloat64 _nTest = (1.0 + _nFloat - gzFloat64(_nEntier)) * Lib_GZ::pMath::fPow(gzFloat64(10.0), (_nbCharAfter));
	gzUInt64 _nAfterDot = Lib_GZ::pMath::fFloatToInt(_nTest ); //Limit to 8 _nbCharAfter TODO
    gzStr _sAfterDot = gzStrUI(_nAfterDot);

    memcpy(_aArray + _nSize + 1, _sAfterDot.sStr->array+2, (_sAfterDot.GnSize() -1)* sizeof(gzUInt8));
    GZ_fSafeFree(_sFloat.sStr->array);

    _aArray[_nNewSize] = 0; //0 is the end of string
    _sFloat.sStr->array = _aNewArray;
    _sFloat.sStr->end = _aNewArray + _nNewSize + 1;
    _sFloat.pCurrPos = (gzUInt8*)_sFloat.sStr->array;

    return _sFloat;
}


inline gzUInt GZ_fHexToChar(gzUInt _nVal){
    _nVal += 0x30;
    if(_nVal > 0x39){
        _nVal += 0x07;
    }
    return _nVal;
}

gzStr gzStrH32(gzUInt32 _nEntier){

  // gzUInt8* _aArray = (gzUInt8*)GZ_fMalloc( 10, sizeof(gzUInt8));
   gzUInt8* _aArray = GZ_fSafeMalloc( 10, gzUInt8);
    _aArray[0] = 0;
    _aArray[1] = GZ_fHexToChar((_nEntier >> 28 ) & 0x0F);
    _aArray[2] = GZ_fHexToChar((_nEntier >> 24 ) & 0x0F);
    _aArray[3] = GZ_fHexToChar((_nEntier >> 20 ) & 0x0F);
    _aArray[4] = GZ_fHexToChar((_nEntier >> 16 ) & 0x0F);
    _aArray[5] = GZ_fHexToChar((_nEntier >> 12 ) & 0x0F);
    _aArray[6] = GZ_fHexToChar((_nEntier >> 8 ) & 0x0F);
    _aArray[7] = GZ_fHexToChar((_nEntier >> 4 ) & 0x0F);
    _aArray[8] = GZ_fHexToChar(_nEntier & 0x0F);
    _aArray[9] = 0;

    return gzStr(_aArray, 8, false);
}

//Char
gzStr gzStrC(const char* _Array){
    if(_Array == 0){
        return gzStrL("");
    }
    gzUInt _nCount = 0;
    if(_Array[0] != 0){
        do{
            _nCount++;
        }while(_Array[_nCount] != 0);
    }

    gzUInt8* _aNew = GZ_fSafeMalloc( (_nCount + 2) , gzUInt8);
    memcpy( _aNew+1, _Array, _nCount  * sizeof(gzUInt8));
    _aNew[0] = 0;
    _aNew[_nCount + 1] = 0;

   return  gzStr((gzUInt8*)_aNew, _nCount);
}
gzStr gzStrC(gzInt* _Array){
    if(_Array == 0){
        return gzStrL("");
    }
    gzUInt _nCount = 0;
    if(_Array[0] != 0){
        do{
            _nCount++;
        }while(_Array[_nCount] != 0);
    }
    gzUInt8* _aNew = GZ_fSafeMalloc( (_nCount + 2) , gzUInt8);
    memcpy( _aNew+1, _Array, _nCount  * sizeof(gzUInt8));
    _aNew[0] = 0;
    _aNew[_nCount + 1] = 0;
   return  gzStr((gzUInt8*)_aNew, _nCount);
}

gzStr gzStrC(const char* _Array, gzUInt _nCount){
    if(_Array == 0){
        return gzStrL("");
    }
    gzUInt8* _aNew = GZ_fSafeMalloc( (_nCount + 2) , gzUInt8);
    memcpy( _aNew+1, _Array, _nCount  * sizeof(gzUInt8));
    _aNew[0] = 0;
    _aNew[_nCount + 1] = 0;
   return  gzStr((gzUInt8*)_aNew, _nCount);
}


gzStr gzStrB(gzBool _bValue){
    if(_bValue){
        return  gzStrL("true");
    }else{
        return  gzStrL("false");
    }
}




