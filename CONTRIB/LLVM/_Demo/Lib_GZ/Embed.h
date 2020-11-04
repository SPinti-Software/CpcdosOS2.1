//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

template <class T> class gzEmbed;

#if !( defined tHDef_GZ_gzEmbed)
#define tHDef_GZ_gzEmbed

//#include "Lib_GZ/GzTypes.h"
#include "Lib_GZ/GzTypes.h"


template <class T>
class gzEmbed {
    public:
    T val;
   // inline gzEmbed() {};
    inline gzEmbed(Lib_GZ::cBase* _parent):val(_parent)  {};

    inline gzEmbed(T _val):val(_val){};

   // inline gzEmbed( gzSp<T> _oOther):val(*_oOther.get()){};

   inline gzEmbed(gzSp<T> _oOther):val(*_oOther.get()){}; //Copy

   inline gzEmbed& operator = (gzSp<T> _oOther){
      // GZ_fSpAssert(_oOther.get() == 0);
       if(_oOther.get() != 0){
            val = *_oOther.get(); //Copy
       }else{
            val = T( (Lib_GZ::cBase*)(val.parent.get()) ); //Reset if null
       }
        return *this;
    }


    inline T* operator->() const
    { return const_cast<T*>(&val);}



    inline  T* get(){
        return &val;
     }

    gzSp<T> SpFromThis()
    {
        printf("\n\n\nOKI");
    }

     /*
	 inline void spFromThis(){
        return &val;
     }
     */

    inline ~gzEmbed(){};
};


#endif
