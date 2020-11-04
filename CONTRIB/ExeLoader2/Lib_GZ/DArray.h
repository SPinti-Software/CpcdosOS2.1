//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

template <class T> class gzArray;

#if !( defined tHDef_GZ_Array)
#define tHDef_GZ_Array

#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/GzBaseFunc.h"
//#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Macro.h"
#include "Lib_GZ/GzMem.h"
#include "Lib_GZ/SmartPtr/SharedPtr.h"
#include "Lib_GZ/SmartPtr/WeakPtr.h"


#define gzPArray(_type) const gzArray<_type>&
//#include "stdio.h"
//

#define gzArray2D(_type) gzArray<gzArray<_type>>
#define gzArray3D(_type) gzArray<gzArray<gzArray<_type>>>
#define gzArray4D(_type) gzArray<gzArray<gzArray<gzArray<_type>>>>
#define gzArray5D(_type) gzArray<gzArray<gzArray<gzArray<gzArray<_type>>>>>

#define gzPArray2D(_type) const gzArray<gzArray<_type>>&
#define gzPArray3D(_type) const gzArray<gzArray<gzArray<_type>>>&
#define gzPArray4D(_type) const gzArray<gzArray<gzArray<gzArray<_type>>>>&
#define gzPArray5D(_type) const gzArray<gzArray<gzArray<gzArray<gzArray<_type>>>>>&

template <class T>
class gzAElement {
    public:
    T val;
    inline gzAElement():val() {
    };
    inline gzAElement(T _val):val(_val){};
    inline ~gzAElement(){};
};


template <class T>
class gzARoot {
public:
    gzAElement<T>** aTab;
    gzUIntX nSize;
    gzUIntX nRealSize;
     gzAElement<T> oNull;

    inline gzARoot():nSize(0),nRealSize(0),aTab(0){
           // oNull = new gzAElement<T>();
    }
    inline gzARoot(gzUIntX _nRealSize):nSize(_nRealSize),nRealSize(_nRealSize) {
      //  aTab = (T*)GZ_fCalloc(_nRealSize, sizeof(T));

        aTab = (gzAElement<T>**)GZ_fCalloc(_nRealSize, sizeof(gzAElement<T>*));
    }
    inline ~gzARoot(){
        for(gzUIntX i = 0; i < nSize; i++){
            delete aTab[i];
        }
       GZ_fFree(aTab);
    };
};

template <class T>
class gzArray {

	public:

        gzSp<gzARoot<T>> array;


		gzArray();
		//gzArray(gzUIntX _nRealSize);

        gzArray(const gzArray& _sOther);


        virtual ~gzArray();

        gzArray& operator=(const gzArray& _sOther) const;
        gzArray operator+(const gzArray& _sOther) const;
        gzArray operator+=(const gzArray& _sOther) const;

        gzSp<gzARoot<T>> operator->() const
        { return array; }



        inline gzUInt GnSize() const { //Todo change for size
            return array->nSize;
        }



         //READING
        T* operator()(gzUIntX _nIndex) const;

        //WRITING
        T & operator[](gzUIntX _nIndex) const;

        inline void fPush(const T& _nVal){
            (*this)[ array->nSize] = _nVal;
        }


    private :
        void fOutOfBound(gzUIntX _nIndex) const;
};

//////////// Construtor ///////////////
template <class T>
gzArray<T>::gzArray():array(gzSp< gzARoot<T> >( new gzARoot<T>() )) {

}

/*
template <class T>
gzArray<T>::gzArray(gzUIntX _nRealSize):array(gzSp< gzARoot<T>  >( new gzARoot<T>(_nRealSize) )) {
}*/
///////  COPY //////

template <class T>
gzArray<T>::gzArray(const gzArray& _sOther){
  array = _sOther.array;
}

template <class T>
gzArray<T>& gzArray<T>::operator=(const gzArray<T>& _sOther) const{
   // printf("\n\n-------Associate--------");
   const_cast<gzArray<T>*>(this)->array = _sOther.array;
   return *const_cast<gzArray<T>*>(this);
}

template <class T>
gzArray<T> gzArray<T>::operator+(const gzArray<T>& _sOther) const {
  array = _sOther.array;  //TODO
}

template <class T>
gzArray<T> gzArray<T>::operator+=(const gzArray<T>& _sOther) const {
 array = _sOther.array; //TODO
}






template <class T>
void gzArray<T>::fOutOfBound(gzUIntX _nIndex) const {
        gzAElement<T>** _pTemp = array->aTab;
        gzUIntX _nRealSizeTemp = array->nRealSize;
         array->nSize = _nIndex+1;
         array->nRealSize = array->nSize * 2; //Double in size
        ///////////////Realloc?////////////////
        array->aTab = (gzAElement<T>**)GZ_fMalloc(array->nRealSize, sizeof(gzAElement<T>*));
        memcpy(array->aTab, _pTemp, _nRealSizeTemp * sizeof(gzAElement<T>*));
        ///////////////////////////////////////
        memset(array->aTab + _nRealSizeTemp, 0, (array->nRealSize - _nRealSizeTemp) * sizeof(gzAElement<T>*)); //Fill with 0
        GZ_fFree(_pTemp);
}




//READING
template <class T>
 T* gzArray<T>::operator()(gzUIntX _nIndex) const {
     if(_nIndex < array->nSize && array->aTab[_nIndex] != 0){
        return &array->aTab[_nIndex]->val;
     }
    return 0;
}


//WRITING
template <class T>
 T & gzArray<T>::operator[](gzUIntX _nIndex) const {
     if(_nIndex >= array->nSize){

        if(_nIndex < array->nRealSize){
            array->nSize = _nIndex + 1;
         }else{
             if(_nIndex > GZ_nMaxUInt/2){ //Negative value return empty
                return  array->oNull.val;
             }
             fOutOfBound(_nIndex);
         }
     }

    if(array->aTab[_nIndex] == 0){ //Create new
        array->aTab[_nIndex] = new gzAElement<T>();
    }
    return array->aTab[_nIndex]->val;
}

template <class T>
gzArray<T>::~gzArray(){

}


namespace Lib_GZ{
    namespace cArray{

    }
}

/////////////////////////////////////////////
///////////////// QElement /////////////////
/////////////////////////////////////////////


#endif
