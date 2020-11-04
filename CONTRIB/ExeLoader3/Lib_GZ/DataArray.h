//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.



#if !( defined tHDef_GZ_DataArray)
#define tHDef_GZ_DataArray

#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/GzBaseFunc.h"
//#include "Lib_GZ/GZ.h"
#include "Lib_GZ/Macro.h"
#include "Lib_GZ/GzMem.h"


#define gzPData(_type) const gzFData<_type>&

//#include "stb_arr.h"
#include "Lib_GZ/SmartPtr/SharedPtr.h"




/*
#define gzArray2D(_type) gzData<gzData<_type>>
#define gzArray3D(_type) gzData<gzData<gzData<_type>>>
#define gzArray4D(_type) gzData<gzData<gzData<gzData<_type>>>>
#define gzArray5D(_type) gzData<gzData<gzData<gzData<gzData<_type>>>>>

#define gzPArray2D(_type) const gzData<gzData<_type>>&
#define gzPArray3D(_type) const gzData<gzData<gzData<_type>>>&
#define gzPArray4D(_type) const gzData<gzData<gzData<gzData<_type>>>>&
#define gzPArray5D(_type) const gzData<gzData<gzData<gzData<gzData<_type>>>>>&
*/


	#ifdef GZ_tWeb_Emsc
		#include "Lib_GZ/SysUtils/EmscHeader.h"
		#define GzNullVal emscripten::val::global("Null");
		typedef emscripten::val gzVal; //TODO


	#endif




class gzDataRoot {
public:
	gzUInt nNbIns;
	gzUInt nStride;
	gzUInt nSize;
    gzUInt nLimit;
	
	#ifdef GZ_tWeb_Emsc
		val JsMem; 

	#endif
	
    void* aTab;

	
	inline void fAddInstance(){
		nNbIns++;
	}
	inline void fRemoveInstance(){
		nNbIns--;
		if(nNbIns == 0){
			delete this;
		}
	}
	
	
	 void fMalloc( gzUInt _nSize);
	 void fFree();
	
	
	inline void fResizeMem( gzUInt _nSize){
		if(aTab == 0){ //Malloc
			fMalloc(_nSize);
			
		}else{ //Realloc, free?
			fMalloc(_nSize);
		}
	}
	
	
	inline void fSetSize( gzUInt _nSize){
		nSize = _nSize;
		if(nSize > nLimit){
			nLimit = nSize * 2; //Double factor
			fResizeMem(nLimit);
		}
	}
	

    inline gzDataRoot(gzUInt _nStride):nNbIns(1), aTab(0), nSize(0),nLimit(0) {
		nStride = _nStride;
		

		fSetSize(100); //TODO i
    }
	
	
    inline gzDataRoot(gzUInt _nStride, gzUIntX _nRealSize):nNbIns(1), aTab(0),nSize(0),nLimit(0) {
		nStride = _nStride;
		
		fSetSize(100); 

    }
    inline ~gzDataRoot(){
		fFree();
     
    };
	
};



template <class T> class gzData;

template <class T>
class gzFData {
	
	public:
		gzDataRoot* array;

		gzFData(gzDataRoot*_pOther){
			const_cast<gzFData<T>*>(this)->array = _pOther;
		}
		
		gzFData(const gzData<T>& _sOther){
			const_cast<gzFData<T>*>(this)->array = _sOther.array;
		}
		
		inline gzDataRoot* get() const {
			return array;
        }
};




template <class T>
class gzData {

	public:
		
		gzDataRoot* array;

		
		gzData(): array( new gzDataRoot( sizeof(T) ) ) {
		}
		
		gzData(gzDataRoot*_pOther){
		  fFirstAssign(_pOther);
		}
		
		gzData(const gzData& _sOther){
		  fFirstAssign(_sOther.array);
		}
		

        gzData& operator=(const gzData& _sOther) const{
			fAssign(_sOther.array);
		   return *const_cast<gzData<T>*>(this);
		}
		
		
		
		
		inline gzDataRoot* get() const {
			return array;
        }
		
		/*
        gzData operator+(const gzData& _sOther) const;
        gzData operator+=(const gzData& _sOther) const;
		*/
		
		/*
        gzDataRoot<T> operator->() const
        { return array; }
		*/
		/*
        gzSp<gzDataRoot> operator->() const
        { return array; }
		*/

		inline void fFirstAssign(gzDataRoot* _pOther) const {
			const_cast<gzData<T>*>(this)->array = _pOther;
			_pOther->fAddInstance();
        }
		inline void fAssign(gzDataRoot* _pOther) const {
			gzDataRoot* _pTemp = array; //Protect from self assign/destroy
			const_cast<gzData<T>*>(this)->array = _pOther;
			_pOther->fAddInstance();
			if(_pTemp != 0){
				_pTemp->fRemoveInstance();
			}
        }
		
		
		/*
		inline void fRezise(gzUIntX _nNewSize) const { //Todo change for size
			stb_arr_makevalid(array->aTab, _nNewSize);
        }*/
		
		
        inline gzUInt GnSize() const { //Todo change for size
         //   return stb_arr_len(array->aTab);
			return 0;
        }

         //READING
        T* operator()(gzUIntX _nIndex) const;

        //WRITING
        T & operator[](gzUIntX _nIndex) const{ //WRITING
			return ((T*)array->aTab)[_nIndex];
		}
				
		
		

        inline void fPush(const T& _nVal){
			//stb_arr_push(array->aTab, _nVal);
          //  (*this)[ array->nSize] = _nVal;
        }
		
		~gzData(){
			array->fRemoveInstance();
		}

    private :
        //void fOutOfBound(gzUIntX _nIndex) const;
};

//////////// Construtor ///////////////


///////  COPY //////



/*
template <class T>
gzData<T> gzData<T>::operator+(const gzData<T>& _sOther) const {
  array = _sOther.array;  //TODO
}

template <class T>
gzData<T> gzData<T>::operator+=(const gzData<T>& _sOther) const {
 array = _sOther.array; //TODO
}
*/




//READING
template <class T>
 T* gzData<T>::operator()(gzUIntX _nIndex) const {
 /*
     if(_nIndex < array->nSize && array->aTab[_nIndex] != 0){
        return &array->aTab[_nIndex]->val;
     }*/
    return 0;
}

/*
//WRITING
template <class T>
 T& gzData<T>::operator[](gzUIntX _nIndex) const {
    //TODO Assert
	
	 return ((T*)array->aTab)[_nIndex];
}
*/


namespace Lib_GZ{
    namespace cArray{

    }
}



#endif
