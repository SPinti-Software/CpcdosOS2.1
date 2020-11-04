#ifndef GZ_SMART_PTR_gzWp_HPP_INCLUDED
#define GZ_SMART_PTR_gzWp_HPP_INCLUDED

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

//sp_assert_convertible -- Removed --

#include "Lib_GZ/SmartPtr/SharedCount.h"
#include "Lib_GZ/SmartPtr/SharedPtr.h"

namespace GZptr
{

template<class T> class gzWp
{
private:

    // Borland 5.5.1 specific workarounds
    typedef gzWp<T> this_type;

public:

    typedef typename GZptr::detail::sp_element< T >::type element_type;

    gzWp() GZ_NoExcept : px(0), pn() // never throws in 1.30+
    {
    }

//  generated copy constructor, assignment, destructor are fine...

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

// ... except in C++0x, move disables the implicit copy

    gzWp( gzWp const & r ) GZ_NoExcept : px( r.px ), pn( r.pn )
    {
    }

    gzWp & operator=( gzWp const & r ) GZ_NoExcept
    {
        px = r.px;
        pn = r.pn;
        return *this;
    }

#endif

//
//  The "obvious" converting constructor implementation:
//
//  template<class Y>
//  gzWp(gzWp<Y> const & r): px(r.px), pn(r.pn) // never throws
//  {
//  }
//
//  has a serious problem.
//
//  r.px may already have been invalidated. The px(r.px)
//  conversion may require access to *r.px (virtual inheritance).
//
//  It is not possible to avoid spurious access violations since
//  in multithreaded programs r.px may be invalidated at any point.
//

    template<class Y>
#if !defined( GZ_SP_NO_SP_CONVERTIBLE )

    gzWp( gzWp<Y> const & r, typename GZptr::detail::sp_enable_if_convertible<Y,T>::type = GZptr::detail::sp_empty() )

#else

    gzWp( gzWp<Y> const & r )

#endif
    GZ_NoExcept : px(static_cast<element_type *>(r.lock().get()) ), pn(r.pn)  //GzAdd dynamic_cast 
    {
//        GZptr::detail::sp_assert_convertible< Y, T >();
    }

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    template<class Y>
#if !defined( GZ_SP_NO_SP_CONVERTIBLE )

    gzWp( gzWp<Y> && r, typename GZptr::detail::sp_enable_if_convertible<Y,T>::type = GZptr::detail::sp_empty() )

#else

    gzWp( gzWp<Y> && r )

#endif
    GZ_NoExcept : px( r.lock().get() ), pn( static_cast< GZptr::detail::weak_count && >( r.pn ) )
    {
        GZptr::detail::sp_assert_convertible< Y, T >();
        r.px = 0;
    }

    // for better efficiency in the T == Y case
    gzWp( gzWp && r )
    GZ_NoExcept : px( r.px ), pn( static_cast< GZptr::detail::weak_count && >( r.pn ) )
    {
        r.px = 0;
    }

    // for better efficiency in the T == Y case
    gzWp & operator=( gzWp && r ) GZ_NoExcept
    {
        this_type( static_cast< gzWp && >( r ) ).swap( *this );
        return *this;
    }


#endif

    template<class Y>
#if !defined( GZ_SP_NO_SP_CONVERTIBLE )

    gzWp( gzSp<Y> const & r, typename GZptr::detail::sp_enable_if_convertible<Y,T>::type = GZptr::detail::sp_empty() )

#else

    gzWp( gzSp<Y> const & r )

#endif
    GZ_NoExcept : px( r.px ), pn( r.pn )
    {
        GZptr::detail::sp_assert_convertible< Y, T >();
    }

#if !defined(GZ_MSVC) || (GZ_MSVC >= 1300)

    template<class Y>
    gzWp & operator=( gzWp<Y> const & r ) GZ_NoExcept
    {
        GZptr::detail::sp_assert_convertible< Y, T >();

        px = r.lock().get();
        pn = r.pn;

        return *this;
    }

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    template<class Y>
    gzWp & operator=( gzWp<Y> && r ) GZ_NoExcept
    {
        this_type( static_cast< gzWp<Y> && >( r ) ).swap( *this );
        return *this;
    }

#endif

    template<class Y>
    gzWp & operator=( gzSp<Y> const & r ) GZ_NoExcept
    {
        GZptr::detail::sp_assert_convertible< Y, T >();

        px = r.px;
        pn = r.pn;

        return *this;
    }

#endif


    gzSp<T> lock() const GZ_NoExcept
    {
        return gzSp<T>( *this, GZptr::detail::sp_nothrow_tag() );
    }



    long use_count() const GZ_NoExcept
    {
        return pn.use_count();
    }

    bool expired() const GZ_NoExcept
    {
        return pn.use_count() == 0;
    }

    bool _empty() const // extension, not in std::gzWp
    {
        return pn.empty();
    }

    void reset() GZ_NoExcept // never throws in 1.30+
    {
        this_type().swap(*this);
    }

    void swap(this_type & other) GZ_NoExcept
    {
        Lib_GZ::fSwap(px, other.px);
        pn.swap(other.pn);
    }

    template<typename Y>
    void _internal_aliasing_assign(gzWp<Y> const & r, element_type * px2)
    {
        px = px2;
        pn = r.pn;
    }

    template<class Y> bool owner_before( gzWp<Y> const & rhs ) const GZ_NoExcept
    {
        return pn < rhs.pn;
    }

    template<class Y> bool owner_before( gzSp<Y> const & rhs ) const GZ_NoExcept
    {
        return pn < rhs.pn;
    }


////////////////////////////////////////////////////////////////////
/////////////////GZ Custom direct Access to Weak_ptr /////////////////////
////////////////////////////////////////////////////////////////////
    typename GZptr::detail::sp_dereference< T >::type operator* () const
    {
        if( !pn.empty() ){
            GZ_fSpAssert( px != 0 );
          return  *px;
        }else{
            return 0; //Error?
        }
    }

    // never throws (but has a GZ_fSpAssert in it, so not marked with GZ_NoExcept)
    typename GZptr::detail::sp_member_access< T >::type operator-> () const
    {
        if( !pn.empty() ){
            GZ_fSpAssert( px != 0 );
          return  px;
        }else{
            return 0; //Error?
        }
    }

    element_type * get() const GZ_NoExcept
    {
        if( !pn.empty() ){
            GZ_fSpAssert( px != 0 );
          return  px;
        }else{
            return 0; //Error?
        }
    }


/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////



// Tasteless as this may seem, making all members public allows member templates
// to work in the absence of member template friends. (Matthew Langston)

#ifndef GZ_NO_MEMBER_TEMPLATE_FRIENDS

public:

    template<class Y> friend class gzWp;
    template<class Y> friend class gzSp;

#endif

    element_type * px;            // contained pointer
    GZptr::detail::weak_count pn; // reference counter

};  // gzWp

template<class T, class U> inline bool operator<(gzWp<T> const & a, gzWp<U> const & b) GZ_NoExcept
{
    return a.owner_before( b );
}

template<class T> void swap(gzWp<T> & a, gzWp<T> & b) GZ_NoExcept
{
    a.swap(b);
}

} // namespace GZptr

#endif  // #ifndef GZ_SMART_PTR_gzWp_HPP_INCLUDED
