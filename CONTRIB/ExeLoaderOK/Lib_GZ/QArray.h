//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

template <class T> class gzQArray;

#if !( defined tHDef_GZ_QArray)
#define tHDef_GZ_QArray

#include "Lib_GZ/GzBase.h"
#include "Lib_GZ/Macro.h"
#include "Lib_GZ/SmartPtr/SharedPtr.h"
#include "Lib_GZ/SmartPtr/WeakPtr.h"

#define gzPQArray const gzQArray&

/////// FOR_EACH MACRO ///////////
#define gzFOR_EACH_QArrayFrom(_qaQArray, _qeCurrElement, _Type) if(_qeCurrElement != _qaQArray.qeEmpty){ gzQElement<_Type>  _qeCurrElement##Reserved = _qaQArray.GqeFirst();do
#define gzFOR_EACH_QArrayNew(_qaQArray, _qeCurrElement, _Type) {gzQElement<_Type> _qeCurrElement = _qaQArray.GqeFirst();if(_qeCurrElement != _qaQArray.qeEmpty){ gzQElement<_Type>  _qeCurrElement##Reserved = _qaQArray.GqeFirst();do
#define gzEND_QArray(_qeCurrElement) _qeCurrElement = _qeCurrElement.GqeNext();}while(_qeCurrElement != _qeCurrElement##Reserved);}
///////////////////////////////////

struct gzQElementAnyHold {
    void* pNext;
    void* pPrev;
    void* pRoot;
    gzInt nNbInst;
};

class gzQElementAny {
    public:
    gzQElementAnyHold* qeAny;
   inline gzQElementAny(gzQElementAnyHold* _Any){
        qeAny = _Any;
    }
};

class gzQRoot {
public:
    void* pFirst;
    void* pLast;
    gzUInt nTotal;

    inline gzQRoot():nTotal(0){
    }
    inline ~gzQRoot(){};
};

/*
class gzPodsLinkOwn {
public :
    void* Val;
    Lib_GZ::Dlg_r_void_p_gzPtr::Dlg dDelete;
    inline gzPodsLinkOwn(void* _Val, Lib_GZ::Dlg_r_void_p_gzPtr::DlgP _dDelete): Val(_Val), dDelete(_dDelete) {
    }
};

template <class T>
class gzPods {
public :
    T* Val;
    bool bMustFree;
    Lib_GZ::Dlg_r_void_p_gzPtr::Dlg dDelete;

    inline gzPods() {
    }
    inline gzPods(const gzPodsLinkOwn &_pod): Val((T*)_pod.Val), dDelete( _pod.dDelete ), bMustFree(true) {
    }

 //   inline gzPods( const gzPods& other ):Val(other.Val),bMustFree(other.bMustFree) {
 //       const_cast<gzPods<T>*>(&other)->bMustFree = false;
       // printf("\nOther");
 //    }

    inline gzPods(T* _Val): Val(_Val) {
    }
    inline ~gzPods(){
    }
};
namespace Lib_GZ{
    template <typename T>
    inline void fIsFree(const T &t) {
    }
    template <typename T>
    inline void fIsFree(const gzPods<T> &t) {
        if(t.bMustFree){
            t.dDelete.fCall((void*)t.Val);
            GZ_fFree(t.Val);
        }
    }
}
*/
template <class T>
struct gzQElementHold {
    void* pNext;
    void* pPrev;
    void* pRoot;
    gzInt nNbInst;
    T Val;

    gzQElementHold<T>* fNext() const;
    gzQElementHold<T>* fPrev() const;

    inline gzQElementHold(const T &_Val): Val(_Val), nNbInst(1) {
       // printf("\n--Create");
    }

    inline gzQElementHold():nNbInst(1){
        //printf("\n--Create2");
    }
     inline ~gzQElementHold(){
       // Lib_GZ::fIsFree(Val);
    }
};


template <class T>
class gzQElement {
    public:
    gzQElementHold<T>* qeHold;

     inline gzQElement(){
        qeHold = new gzQElementHold<T>(); //Empty
        qeHold->pRoot = 0;
        qeHold->pPrev = qeHold;
        qeHold->pNext = qeHold;
        qeHold->nNbInst = 1;
     }

     inline gzQElement( const gzQElement& other ){
        qeHold = other.qeHold;
        qeHold->nNbInst++;
     }

    inline gzQElement& operator= (const gzQElement& other)
    {
       if(qeHold != 0){
            qeHold->nNbInst--;
            if(qeHold->nNbInst == 0){
                delete qeHold;
            }
        }
        qeHold = other.qeHold;
        qeHold->nNbInst++;
        return *this;
    }

    inline gzQElement( gzQElementHold<T>*  _qeHold) {
        qeHold = _qeHold;
        qeHold->nNbInst++;
    };

    inline ~gzQElement(){
        qeHold->nNbInst--;
        if(qeHold->nNbInst == 0){
           delete qeHold;
        }
    };

    inline T ref() const {

        return qeHold->Val;
    };

    inline T* val() const {

        return &qeHold->Val;
    };

    inline gzQElementHold<T>* operator->() const
    { return qeHold; }

    inline gzQElementHold<T>& operator->()
    { return *qeHold; }


    inline operator gzQElementHold<T>*() {
        return qeHold;
    };

    inline operator gzQElementHold<T>&() {
        return *qeHold;
    };

    inline gzQElement<T> GqeNext() const{ return qeHold->fNext();}
    inline gzQElement<T> GqePrev() const{ return qeHold->fPrev();}
};


//#include "Str.h"

#ifndef GZ_r_gzBool_p_gzQElement_gzQElement
#define GZ_r_gzBool_p_gzQElement_gzQElement
namespace Lib_GZ{GZ_mIComp(_r_gzBool_p_gzQElement_gzQElement);}
#endif


namespace Dlg_r_gzBool_p_gzQElement_gzQElement{

    //////////
   GZ_mDlgIni(gzBool, GZ_PARAM, const gzQElementAny& _pLeft, const gzQElementAny& _pRight){return false;};
   class Dlg { GZ_mDlgClass(_r_gzBool_p_gzQElement_gzQElement)
        ///////////////////
        inline  gzInt fCall(const gzQElementAny& _pLeft, const gzQElementAny& _pRight) const{
            return GZ_mDlgCall(GZ_PARAM, _pLeft, _pRight);
         }
    };
}


template <class T>
class gzQArray {

	public:
       // gzSp<gzQRoot<T>> queue;
        gzSp<gzQRoot> queue;
        gzQElementHold<T>* qeEmpty;

		gzQArray();
        gzQArray(gzPQArray _sOther);

        gzQElement<T> GqeEmpty() const;
        gzQElement<T> GqeFirst() const;
        gzQElement<T> GqeLast() const;
        gzUInt GnTotal() const;

        void fShort(Dlg_r_gzBool_p_gzQElement_gzQElement::DlgP _dCustomShort) const;

        gzBool fNext() const;
        gzBool fPrev() const;
        gzQElement<T> fPush(const T&) const;
		T fPrePop() const;
		
        gzBool fClear() const;

        virtual ~gzQArray();

        gzQArray& operator=(gzPQArray _sOther) const;
        gzQArray operator+(gzPQArray _sOther) const;
        gzQArray operator+=(gzPQArray _sOther) const;

	private:
       // void fDetachAndCopie();
};

//#define wThis const_cast<gzQArray*>(this)

namespace Lib_GZ{

    namespace cQArray{
        void fRangeShort( gzQElementAnyHold* pLeft, gzQElementAnyHold* pRight, Dlg_r_gzBool_p_gzQElement_gzQElement::DlgP _dCustomShort);

        inline void fSwap(gzQElementAnyHold* node1, gzQElementAnyHold* node2) {
         gzQElementAnyHold* temp;

        //Swap next
          temp = (gzQElementAnyHold*)node1->pNext;
          node1->pNext = node2->pNext;
          node2->pNext = temp;

          if (node1->pNext == zNull){
            ((gzQRoot*)node1->pRoot)->pLast = node1;
         //   ((gzQElementAnyHold*)((gzQRoot*)node1->pRoot)->pLast)->pPrev = node1->pPrev;
          }else{
            ((gzQElementAnyHold*)node1->pNext)->pPrev = node1;
          }
          if (node2->pNext == zNull){
            ((gzQRoot*)node2->pRoot)->pLast = node2;
          //  ((gzQElementAnyHold*)((gzQRoot*)node1->pRoot)->pLast)->pPrev = node2->pPrev;
          }else{
            ((gzQElementAnyHold*)node2->pNext)->pPrev = node2;
          }
          temp = (gzQElementAnyHold*)node1->pPrev;
          node1->pPrev = node2->pPrev;
          node2->pPrev = temp;

        //Swap prev
          if (node1->pPrev == zNull){
            ((gzQRoot*)node1->pRoot)->pFirst = node1;
          //      ((gzQElementAnyHold*)((gzQRoot*)node1->pRoot)->pFirst)->pNext = node1->pNext;
          }else{
            ((gzQElementAnyHold*)node1->pPrev)->pNext = node1;
          }

          if (node2->pPrev == zNull){
            ((gzQRoot*)node2->pRoot)->pFirst = node2;
           // ((gzQElementAnyHold*)((gzQRoot*)node1->pRoot)->pFirst)->pNext = node2->pNext;
          }else{
            ((gzQElementAnyHold*)node2->pPrev)->pNext = node2;
          }
        }


        inline void fShort( gzQRoot* _qaRoot, Dlg_r_gzBool_p_gzQElement_gzQElement::DlgP _dCustomShort){
            gzQElementAnyHold* pLeft = (gzQElementAnyHold*)_qaRoot->pFirst;
            gzQElementAnyHold* pRight = (gzQElementAnyHold*)_qaRoot->pLast;

            //ALL SORTHED
            //Break double linked list
            pLeft->pPrev = zNull;
            pRight->pNext = zNull;
            fRangeShort(pLeft, pRight, _dCustomShort);

            //Relink double linked list
            ((gzQElementAnyHold*)_qaRoot->pFirst)->pPrev = ((gzQElementAnyHold*)_qaRoot->pLast);
            ((gzQElementAnyHold*)_qaRoot->pLast)->pNext = ((gzQElementAnyHold*)_qaRoot->pFirst);
        }
    }
}

/////////////////////////////////////////////
///////////////// QElement /////////////////
/////////////////////////////////////////////

template <class T>
gzQElementHold<T>* gzQElementHold<T>::fNext() const {
    return (gzQElementHold<T>*)this->pNext;
}

template <class T>
gzQElementHold<T>* gzQElementHold<T>::fPrev() const {
    return (gzQElementHold<T>*)this->pPrev;
}

/////////////////////////////////////////////
///////////////// Queue /////////////////
/////////////////////////////////////////////

template <class T>
void gzQArray<T>::fShort(Dlg_r_gzBool_p_gzQElement_gzQElement::DlgP _dCustomShort) const {
    Lib_GZ::cQArray::fShort(queue.get(), _dCustomShort);
}


template <class T>
gzQElement<T> gzQArray<T>::fPush(const T& _Val) const {
    //New QElement gzQElementHold<T>* _qeEmpty
   // gzQElementHold<T>* _qeNew = (gzQElementHold<T>*)GZ_fMalloc(1, sizeof(gzQElementHold<T>));
    gzQElementHold<T>* _qeNew = new gzQElementHold<T>(_Val);
 //   _qeNew->Val = _Val;

    //_qeNew->nNbInst = 1;
    _qeNew->pRoot = queue.get();

    if(queue->nTotal == 0){
        queue->pFirst = _qeNew;
        queue->pLast = _qeNew;
        _qeNew->pPrev = _qeNew;
        _qeNew->pNext = _qeNew;
    }else {
         gzQElementHold<T>* _qeOldLast = (gzQElementHold<T>*)queue->pLast;
        queue->pLast = _qeNew;
        _qeOldLast->pNext = _qeNew;

        _qeNew->pPrev = _qeOldLast;
        _qeNew->pNext = (gzQElementHold<T>*)queue->pFirst; //Loopback
        ((gzQElementHold<T>*)(queue->pFirst))->pPrev = _qeNew;
    }
    queue->nTotal++;
    return _qeNew;
}

template <class T>
T gzQArray<T>::fPrePop() const {

	if(queue->nTotal == 0){
		return 0;
	}
	
	gzQElementHold<T>* _qePoped = (gzQElementHold<T>*)queue->pFirst;
	
	if(queue->nTotal == 1){
		queue->nTotal = 0;
		queue->pFirst = qeEmpty;
		queue->pLast = qeEmpty;
	}else{

		gzQElementHold<T>* _qeBef = (gzQElementHold<T>*)_qePoped->pPrev;
		gzQElementHold<T>* _qeAft = (gzQElementHold<T>*)_qePoped->pNext;
		
		_qeBef->pNext = _qeAft;
		_qeAft->pPrev = _qeBef;
		
		 queue->pFirst = _qeAft;
		 ((gzQElementHold<T>*)(queue->pLast))->pNext =  queue->pFirst;
		 queue->nTotal--;
	}
	 T _nVal = _qePoped->Val;
	 delete _qePoped;
	 return _nVal;
}








template <class T>
gzBool gzQArray<T>::fClear() const {
    gzQElementHold<T>* _qeCurrent = GqeFirst();
    gzQElementHold<T>* _qeLast = _qeCurrent;
    for(gzUInt i = 0; i <  queue->nTotal; i++){
      _qeCurrent = _qeCurrent->fNext();
      _qeLast->nNbInst --;
      if(_qeLast->nNbInst == 0){
            delete _qeLast;
      }
      _qeLast = _qeCurrent;
    }
    queue->nTotal = 0;
    queue->pFirst = qeEmpty;
    queue->pLast = qeEmpty;
    return true;
}


template <class T>
gzQElement<T> gzQArray<T>::GqeFirst() const {
    return (gzQElementHold<T>*)queue->pFirst;
}

template <class T>
gzQElement<T> gzQArray<T>::GqeLast() const {
    return (gzQElementHold<T>*)queue->pLast;
}

template <class T>
gzUInt gzQArray<T>::GnTotal() const { //Todo change for size
    return queue->nTotal;
}




//////////// Construtor ///////////////

template <class T>
gzQArray<T>::gzQArray():queue(gzSp< gzQRoot >( new gzQRoot() )) {

    qeEmpty = new gzQElementHold<T>();
    qeEmpty->pRoot = queue.get();
    qeEmpty->pPrev = qeEmpty;
    qeEmpty->pNext = qeEmpty;

    queue->pFirst = qeEmpty;
    queue->pLast = qeEmpty;
}

template <class T>
gzQArray<T>::gzQArray(gzPQArray _sOther){
 queue = _sOther.queue;
}

template <class T>
gzQArray<T>& gzQArray<T>::operator=(const gzQArray<T>& _sOther) const{
   const_cast<gzQArray<T>*>(this)->queue = _sOther.queue;
   return *const_cast<gzQArray<T>*>(this);
}
/*
template <class T>
gzQArray<T> gzQArray<T>::operator+(const gzQArray<T>& _sOther) const {
}

template <class T>
gzQArray<T> gzQArray<T>::operator+=(const gzQArray<T>& _sOther) const {
}*/

template <class T>
gzQArray<T>::~gzQArray(){
    if(queue.use_count() == 1){
       gzQElementHold<T>* _qeCurrent = GqeFirst();
       gzQElementHold<T>* _qeLast = _qeCurrent;
        for(gzUInt i = 0; i <  queue->nTotal; i++){
          _qeCurrent = _qeCurrent->fNext();
        _qeLast->nNbInst --;
          if(_qeLast->nNbInst == 0){
                delete _qeLast;
          }
          _qeLast = _qeCurrent;
        }
        qeEmpty->nNbInst--;
        if(qeEmpty->nNbInst == 0){
            delete qeEmpty;
        }
    }
}



#endif
