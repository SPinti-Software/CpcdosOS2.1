#ifndef tHDef_GZ_enable_shared_from_this
#define tHDef_GZ_enable_shared_from_this

//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

//// This file was in part from the Boost lirairie with some modification, under this licence :

//  Copyright 2002, 2009 Peter Dimov
//  Distributed under the Boost Software License, Version 1.0.
//  See accompanying file LICENSE_1_0.txt or copy at
//  http://www.Boost.org/LICENSE_1_0.txt

#include "Lib_GZ/SmartPtr/WeakPtr.h"
#include "Lib_GZ/SmartPtr/SharedPtr.h"


namespace GZptr
{

template<class T> class enable_shared_from_this
{
protected:

    enable_shared_from_this() GZ_NoExcept
    {
    }

    enable_shared_from_this(enable_shared_from_this const &) GZ_NoExcept
    {
    }

    enable_shared_from_this & operator=(enable_shared_from_this const &) GZ_NoExcept
    {
        return *this;
    }

    ~enable_shared_from_this() GZ_NoExcept // ~gzWp<T> newer throws, so this call also must not throw
    {
    }

public:


    gzSp<T> SpFromThis()
    {
        /*
        if (weak_this_.px == 0){  //No shared_ptr cration -> he is created in stack, make a copy
            gzSp<T> p( new T(this)  );
            return p;
 //(gzSp<T>(new T(r.val))).swap(*this); //Copy
            //return *this;

        }else{
            gzSp<T> p( weak_this_ );
            return p;
        }
*/

        gzSp<T> p( weak_this_ );
        return p;


        /*
        if(p){

            gzSp<T> p( weak_this_ );
          //  GZ_ASSERT( p.get() == this );


        }else{


        }*/

    }

    gzSp<T const> SpFromThis() const
    {
        gzSp<T const> p( weak_this_ );
        GZ_ASSERT( p.get() == this );
        return p;
    }

public: // actually private, but avoids compiler template friendship issues

    // Note: invoked automatically by gzSp; do not call
    template<class X, class Y> void _internal_accept_owner( gzSp<X> const * ppx, Y * py ) const
    {
        if( weak_this_.expired() )
        {
            weak_this_ = gzSp<T>( *ppx, py );
        }
    }

//private:

    //mutable gzWp<T> weak_this_;
    mutable gzWp<T> weak_this_;      //2 ptr size cost

};

} // namespace GZptr

#endif  // #ifndef GZ_SMART_PTR_ENABLE_SHARED_FROM_THIS_HPP_INCLUDED
