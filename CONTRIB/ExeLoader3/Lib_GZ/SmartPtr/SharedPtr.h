#ifndef GZ_SMART_PTR_gzSp_HPP_INCLUDED
#define GZ_SMART_PTR_gzSp_HPP_INCLUDED

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
//#include <stdio.h>
#include "Lib_GZ/GzBaseFunc.h"
#include "Lib_GZ/GzTypes.h"
//#include "Lib_GZ/Sys/Debug.h"
//#include "Lib_GZ/Delegate.h"



#define GZ_NoExcept
#define GZ_NoExcept_OR_NOTHROW throw()
#define GZ_NoExcept_IF(Predicate)
#define GZ_NoExcept_EXPR(Expression) false
#define GZ_DELETED_FUNCTION(fun) fun = delete;

#include "Lib_GZ/Debugging.h"



//#include <assert.h> // .h to support old libraries w/o <cassert> - effect is the same


#define GZ_NO_AUTO_PTR
#define GZ_NO_CXX11_SMART_PTR
#define GZ_NO_EXCEPTIONS
#define GZ_NO_CXX11_ALLOCATOR
#define GZ_NO_CXX11_NULLPTR
#define GZ_SP_NO_SP_CONVERTIBLE
//#define GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION
#define GZ_NO_SFINAE


#include "Lib_GZ/SmartPtr/SharedCount.h"



namespace Lib_GZ
{
    class cBase;
    template <class T> void fSwap( T& a, T& b )
    {
      T c(a); a=b; b=c;
    }
}


using namespace GZptr;


namespace GZptr
{
template<class T> class gzSp;
template<class T> class gzWp;

template<class T> class enable_shared_from_this;

class enable_shared_from_raw;





#include "Lib_GZ/Embed.h"




namespace detail
{

// sp_element, element_type

template< class T > struct sp_element
{
    typedef T type;
};

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )
template< class T > struct sp_element< T[] >
{
    typedef T type;
};

template< class T, gzUIntX N > struct sp_element< T[N] >
{
    typedef T type;
};
#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )



// sp_dereference, return type of operator*

template< class T > struct sp_dereference
{
    typedef T & type;
};

template<> struct sp_dereference< void >
{
    typedef void type;
};


#if !defined(GZ_NO_CV_VOID_SPECIALIZATIONS)
template<> struct sp_dereference< void const >
{
    typedef void type;
};

template<> struct sp_dereference< void volatile >
{
    typedef void type;
};

template<> struct sp_dereference< void const volatile >
{
    typedef void type;
};
#endif // !defined(GZ_NO_CV_VOID_SPECIALIZATIONS)

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

template< class T > struct sp_dereference< T[] >
{
    typedef void type;
};


template< class T, gzUIntX N > struct sp_dereference< T[N] >
{
    typedef void type;
};
#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )


// sp_member_access, return type of operator->

template< class T > struct sp_member_access
{
    typedef T * type;
};

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

template< class T > struct sp_member_access< T[] >
{
    typedef void type;
};


template< class T, gzUIntX N > struct sp_member_access< T[N] >
{
    typedef void type;
};

#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )



// sp_array_access, return type of operator[]

template< class T > struct sp_array_access
{
    typedef void type;
};

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

template< class T > struct sp_array_access< T[] >
{
    typedef T & type;
};


template< class T, gzUIntX N > struct sp_array_access< T[N] >
{
    typedef T & type;
};


#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )




// sp_extent, for operator[] index check

template< class T > struct sp_extent
{
    enum _vt { value = 0 };
};

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

template< class T, gzUIntX N > struct sp_extent< T[N] >
{
    enum _vt { value = N };
};

#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )



// enable_shared_from_this support

template< class X, class Y, class T > inline void sp_enable_shared_from_this( gzSp<X> const * ppx, Y const * py, GZptr::enable_shared_from_this< T > const * pe )
{
    if( pe != 0 )
    {
        pe->_internal_accept_owner( ppx, const_cast< Y* >( py ) );
    }
}

template< class X, class Y > inline void sp_enable_shared_from_this( gzSp<X> * ppx, Y const * py, GZptr::enable_shared_from_raw const * pe );

#ifdef _MANAGED

// Avoid C4793, ... causes native code generation

struct sp_any_pointer
{
    template<class T> sp_any_pointer( T* ) {}
};

inline void sp_enable_shared_from_this( sp_any_pointer, sp_any_pointer, sp_any_pointer )
{
}

#else // _MANAGED

inline void sp_enable_shared_from_this( ... )
{
}
#endif // _MANAGED


#if !defined( GZ_NO_SFINAE ) && !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION ) && !defined( GZ_NO_AUTO_PTR )

// rvalue auto_ptr support based on a technique by Dave Abrahams

template< class T, class R > struct sp_enable_if_auto_ptr
{
};

template< class T, class R > struct sp_enable_if_auto_ptr< std::auto_ptr< T >, R >
{
    typedef R type;
};

#endif

// sp_assert_convertible

template< class Y, class T > inline void sp_assert_convertible()
{
#if !defined( GZ_SP_NO_SP_CONVERTIBLE )

    // static_assert( sp_convertible< Y, T >::value );
    typedef char tmp[ sp_convertible< Y, T >::value? 1: -1 ];
    (void)sizeof( tmp );

#else

    T* p = static_cast< Y* >( 0 );
    (void)p;

#endif
}

// pointer constructor helper

template< class T, class Y > inline void sp_pointer_construct( gzSp< T > * ppx, Y * p, GZptr::detail::shared_count & pn )
{
    GZptr::detail::shared_count( p ).swap( pn );
    GZptr::detail::sp_enable_shared_from_this( ppx, p, p );
}

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

template< class T, class Y > inline void sp_pointer_construct( gzSp< T[] > * /*ppx*/, Y * p, GZptr::detail::shared_count & pn )
{
    sp_assert_convertible< Y[], T[] >();
    GZptr::detail::shared_count( p, GZptr::checked_array_deleter< T >() ).swap( pn );
}

template< class T, gzUIntX N, class Y > inline void sp_pointer_construct( gzSp< T[N] > * /*ppx*/, Y * p, GZptr::detail::shared_count & pn )
{
    sp_assert_convertible< Y[N], T[N] >();
    GZptr::detail::shared_count( p, GZptr::checked_array_deleter< T >() ).swap( pn );
}

#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

// deleter constructor helper

template< class T, class Y > inline void sp_deleter_construct( gzSp< T > * ppx, Y * p )
{
    GZptr::detail::sp_enable_shared_from_this( ppx, p, p );
}

#if !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

template< class T, class Y > inline void sp_deleter_construct( gzSp< T[] > * /*ppx*/, Y * /*p*/ )
{
    sp_assert_convertible< Y[], T[] >();
}

template< class T, gzUIntX N, class Y > inline void sp_deleter_construct( gzSp< T[N] > * /*ppx*/, Y * /*p*/ )
{
    sp_assert_convertible< Y[N], T[N] >();
}

#endif // !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

} // namespace detail









template<class T, class U> inline bool operator==(gzSp<T> const & a, gzSp<U> const & b) GZ_NoExcept
{
    return a.get() == b.get();
}

template<class T, class U> inline bool operator!=(gzSp<T> const & a, gzSp<U> const & b) GZ_NoExcept
{
    return a.get() != b.get();
}

#if __GNUC__ == 2 && __GNUC_MINOR__ <= 96
// Resolve the ambiguity between our op!= and the one in rel_ops

template<class T> inline bool operator!=(gzSp<T> const & a, gzSp<T> const & b) GZ_NoExcept
{
    return a.get() != b.get();
}

#endif

#if !defined( GZ_NO_CXX11_NULLPTR )

template<class T> inline bool operator==( gzSp<T> const & p, GZptr::detail::sp_nullptr_t ) GZ_NoExcept
{
    return p.get() == 0;
}

template<class T> inline bool operator==( GZptr::detail::sp_nullptr_t, gzSp<T> const & p ) GZ_NoExcept
{
    return p.get() == 0;
}

template<class T> inline bool operator!=( gzSp<T> const & p, GZptr::detail::sp_nullptr_t ) GZ_NoExcept
{
    return p.get() != 0;
}

template<class T> inline bool operator!=( GZptr::detail::sp_nullptr_t, gzSp<T> const & p ) GZ_NoExcept
{
    return p.get() != 0;
}

#endif

template<class T, class U> inline bool operator<(gzSp<T> const & a, gzSp<U> const & b) GZ_NoExcept
{
    return a.owner_before( b );
}

template<class T> inline void swap(gzSp<T> & a, gzSp<T> & b) GZ_NoExcept
{
    a.swap(b);
}



template<class T, class U> gzSp<T> gzSCast( gzWp<U> const & r ) GZ_NoExcept
{
    (void) static_cast< T* >( static_cast< U* >( 0 ) );

    typedef typename gzSp<T>::element_type E;

    E * p = static_cast< E* >( r.get() );

    return gzSp<T>(  r.lock(), p );
}




template<class T, class U> gzSp<T> gzSCast( gzSp<U> const & r ) GZ_NoExcept
{
    (void) static_cast< T* >( static_cast< U* >( 0 ) );

    typedef typename gzSp<T>::element_type E;


    E * p = static_cast< E* >( r.get() );
    return gzSp<T>( r, p );
}



template<class T, class U> gzSp<T> gzCCast( gzSp<U> const & r ) GZ_NoExcept
{
    (void) const_cast< T* >( static_cast< U* >( 0 ) );

    typedef typename gzSp<T>::element_type E;

    E * p = const_cast< E* >( r.get() );
    return gzSp<T>( r, p );
}

template<class T, class U> gzSp<T> gzDCast( gzSp<U> const & r ) GZ_NoExcept
{
    (void) dynamic_cast< T* >( static_cast< U* >( 0 ) );

    typedef typename gzSp<T>::element_type E;

    E * p = dynamic_cast< E* >( r.get() );
    return p? gzSp<T>( r, p ): gzSp<T>();
}

template<class T, class U> gzSp<T> gzRCast( gzSp<U> const & r ) GZ_NoExcept
{
    (void) reinterpret_cast< T* >( static_cast< U* >( 0 ) );

    typedef typename gzSp<T>::element_type E;

    E * p = reinterpret_cast< E* >( r.get() );
    return gzSp<T>( r, p );
}

// get_pointer() enables GZptr::mem_fn to recognize gzSp

template<class T> inline typename gzSp<T>::element_type * get_pointer(gzSp<T> const & p) GZ_NoExcept
{
    return p.get();
}


// get_deleter



//
//  gzSp
//
//  An enhanced relative of scoped_ptr with reference counted copy semantics.
//  The object pointed to is deleted when the last gzSp pointing to it
//  is destroyed or reset.

template<class T> class gzSp
{
private:

    // Borland 5.5.1 specific workaround
    typedef gzSp<T> this_type;

public:

    typedef typename GZptr::detail::sp_element< T >::type element_type;

    gzSp() GZ_NoExcept : px( 0 ), pn() // never throws in 1.30+
    {
      //   printf("\n    -----------------  Heree ---------------");
    }

#if !defined( GZ_NO_CXX11_NULLPTR )

    gzSp( GZptr::detail::sp_nullptr_t ) GZ_NoExcept : px( 0 ), pn() // never throws
    {
    }

#endif

    template<class Y>
    explicit gzSp( Y * p ): px( p ), pn() // Y must be complete
    {
        GZptr::detail::sp_pointer_construct( this, p, pn );
    }

    //
    // Requirements: D's copy constructor must not throw
    //
    // gzSp will release p by calling d(p)
    //

    template<class Y, class D> gzSp( Y * p, D d ): px( p ), pn( p, d )
    {
        GZptr::detail::sp_deleter_construct( this, p );
    }

#if !defined( GZ_NO_CXX11_NULLPTR )

    template<class D> gzSp( GZptr::detail::sp_nullptr_t p, D d ): px( p ), pn( p, d )
    {
    }

#endif

    // As above, but with allocator. A's copy constructor shall not throw.

    template<class Y, class D, class A> gzSp( Y * p, D d, A a ): px( p ), pn( p, d, a )
    {
        GZptr::detail::sp_deleter_construct( this, p );
    }

#if !defined( GZ_NO_CXX11_NULLPTR )

    template<class D, class A> gzSp( GZptr::detail::sp_nullptr_t p, D d, A a ): px( p ), pn( p, d, a )
    {
    }

#endif

//  generated copy constructor, destructor are fine...

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

// ... except in C++0x, move disables the implicit copy

    gzSp( gzSp const & r ) GZ_NoExcept : px( r.px ), pn( r.pn )
    {
    }

#endif

    template<class Y>
    explicit gzSp( gzWp<Y> const & r ): pn( r.pn ) // may throw
    {
        GZptr::detail::sp_assert_convertible< Y, T >();

        // it is now safe to copy r.px, as pn(r.pn) did not throw
        px = r.px;
    }

    template<class Y>
    gzSp( gzWp<Y> const & r, GZptr::detail::sp_nothrow_tag )
    GZ_NoExcept : px( 0 ), pn( r.pn, GZptr::detail::sp_nothrow_tag() )
    {
        if( !pn.empty() )
        {
            px = r.px;
        }
    }

    template<class Y>
#if !defined( GZ_SP_NO_SP_CONVERTIBLE )

    gzSp( gzSp<Y> const & r, typename GZptr::detail::sp_enable_if_convertible<Y,T>::type = GZptr::detail::sp_empty() )

#else

    gzSp( gzSp<Y> const & r )

#endif
    GZ_NoExcept : px( r.px ), pn( r.pn )
    {
        GZptr::detail::sp_assert_convertible< Y, T >();
    }

    // aliasing
    template< class Y >
    gzSp( gzSp<Y> const & r, element_type * p ) GZ_NoExcept : px( p ), pn( r.pn )
    {
    }

#ifndef GZ_NO_AUTO_PTR

    template<class Y>
    explicit gzSp( std::auto_ptr<Y> & r ): px(r.get()), pn()
    {
        GZptr::detail::sp_assert_convertible< Y, T >();

        Y * tmp = r.get();
        pn = GZptr::detail::shared_count( r );

        GZptr::detail::sp_deleter_construct( this, tmp );
    }

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    template<class Y>
    gzSp( std::auto_ptr<Y> && r ): px(r.get()), pn()
    {
        GZptr::detail::sp_assert_convertible< Y, T >();

        Y * tmp = r.get();
        pn = GZptr::detail::shared_count( r );

        GZptr::detail::sp_deleter_construct( this, tmp );
    }

#elif !defined( GZ_NO_SFINAE ) && !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

    template<class Ap>
    explicit gzSp( Ap r, typename GZptr::detail::sp_enable_if_auto_ptr<Ap, int>::type = 0 ): px( r.get() ), pn()
    {
        typedef typename Ap::element_type Y;

        GZptr::detail::sp_assert_convertible< Y, T >();

        Y * tmp = r.get();
        pn = GZptr::detail::shared_count( r );

        GZptr::detail::sp_deleter_construct( this, tmp );
    }

#endif // GZ_NO_SFINAE, GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION

#endif // GZ_NO_AUTO_PTR

    //GZE implementaion of embed vars
    template<class Y>
    gzSp&  operator=(gzEmbed<Y> const & r ) GZ_NoExcept{
        (gzSp<T>(new T(r.val))).swap(*this); //Copy
        return *this;
    }
    template<class Y>
    gzSp(gzEmbed<Y> const & r ) GZ_NoExcept{
        *this =  r ;
    }


    gzSp & operator=( gzSp const & r ) GZ_NoExcept
    {
        this_type(r).swap(*this);
        return *this;
    }

#if !defined(GZ_MSVC) || (GZ_MSVC >= 1400)

    template<class Y>
    gzSp & operator=(gzSp<Y> const & r) GZ_NoExcept
    {
        this_type(r).swap(*this);
        return *this;
    }

#endif

#ifndef GZ_NO_AUTO_PTR

    template<class Y>
    gzSp & operator=( std::auto_ptr<Y> & r )
    {
        this_type( r ).swap( *this );
        return *this;
    }

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    template<class Y>
    gzSp & operator=( std::auto_ptr<Y> && r )
    {
        this_type( static_cast< std::auto_ptr<Y> && >( r ) ).swap( *this );
        return *this;
    }

#elif !defined( GZ_NO_SFINAE ) && !defined( GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION )

    template<class Ap>
    typename GZptr::detail::sp_enable_if_auto_ptr< Ap, gzSp & >::type operator=( Ap r )
    {
        this_type( r ).swap( *this );
        return *this;
    }

#endif // GZ_NO_SFINAE, GZ_NO_TEMPLATE_PARTIAL_SPECIALIZATION

#endif // GZ_NO_AUTO_PTR


/*
//////////Empty read Array support * for GZE * /////////
  gzSp(int _nZeroVal)GZ_NoExcept : px( 0 ), pn(){
  printf("\n    -----------------  Heree ---------------");
  }
/////////////////////////////////
*/

// Move support

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    gzSp( gzSp && r ) GZ_NoExcept : px( r.px ), pn()
    {
        pn.swap( r.pn );
        r.px = 0;
    }

    template<class Y>

#if !defined( GZ_SP_NO_SP_CONVERTIBLE )

    gzSp( gzSp<Y> && r, typename GZptr::detail::sp_enable_if_convertible<Y,T>::type = GZptr::detail::sp_empty() )

#else
    gzSp( gzSp<Y> && r )
#endif

    GZ_NoExcept : px( r.px ), pn()
    {
        GZptr::detail::sp_assert_convertible< Y, T >();

        pn.swap( r.pn );
        r.px = 0;
    }

    gzSp & operator=( gzSp && r ) GZ_NoExcept
    {
        this_type( static_cast< gzSp && >( r ) ).swap( *this );
        return *this;
    }

    template<class Y>
    gzSp & operator=( gzSp<Y> && r ) GZ_NoExcept
    {
        this_type( static_cast< gzSp<Y> && >( r ) ).swap( *this );
        return *this;
    }

#endif

#if !defined( GZ_NO_CXX11_NULLPTR )

    gzSp & operator=( GZptr::detail::sp_nullptr_t ) GZ_NoExcept // never throws
    {
        this_type().swap(*this);
        return *this;
    }

#endif

    void reset() GZ_NoExcept // never throws in 1.30+
    {
        this_type().swap(*this);
    }

    template<class Y> void reset( Y * p ) // Y must be complete
    {
        GZ_fSpAssert( p == 0 || p != px ); // catch self-reset errors
        this_type( p ).swap( *this );
    }

    template<class Y, class D> void reset( Y * p, D d )
    {
        this_type( p, d ).swap( *this );
    }

    template<class Y, class D, class A> void reset( Y * p, D d, A a )
    {
        this_type( p, d, a ).swap( *this );
    }

    template<class Y> void reset( gzSp<Y> const & r, element_type * p )
    {
        this_type( r, p ).swap( *this );
    }

    // never throws (but has a GZ_fSpAssert in it, so not marked with GZ_NoExcept)
    typename GZptr::detail::sp_dereference< T >::type operator* () const
    {
        GZ_fSpAssert( px != 0 );
        return *px;
    }

    // never throws (but has a GZ_fSpAssert in it, so not marked with GZ_NoExcept)
    typename GZptr::detail::sp_member_access< T >::type operator-> () const
    {
        GZ_fSpAssert( px != 0 );
        return px;
    }

    // never throws (but has a GZ_fSpAssert in it, so not marked with GZ_NoExcept)
    typename GZptr::detail::sp_array_access< T >::type operator[] ( gzIntX i ) const
    {
        GZ_fSpAssert( px != 0 );
        GZ_fSpAssert( i >= 0 && ( i < GZptr::detail::sp_extent< T >::value || GZptr::detail::sp_extent< T >::value == 0 ) );

        return px[ i ];
    }

    element_type * get() const GZ_NoExcept
    {
        return px;
    }

// implicit conversion to "bool"
typedef element_type * this_type::*unspecified_bool_type;
operator unspecified_bool_type() const GZ_NoExcept
{
    return px == 0? 0: &this_type::px;
}
// operator! is redundant, but some compilers need it
bool operator! () const GZ_NoExcept
{
    return px == 0;
}
///////////////////////////////



    bool unique() const GZ_NoExcept
    {
        return pn.unique();
    }

    long use_count() const GZ_NoExcept
    {
        return pn.use_count();
    }

    void swap( gzSp & other ) GZ_NoExcept
    {
        Lib_GZ::fSwap(px, other.px);
        pn.swap(other.pn);
    }

    template<class Y> bool owner_before( gzSp<Y> const & rhs ) const GZ_NoExcept
    {
        return pn < rhs.pn;
    }

    template<class Y> bool owner_before( gzWp<Y> const & rhs ) const GZ_NoExcept
    {
        return pn < rhs.pn;
    }
/*
    void * _internal_get_deleter( GZptr::detail::sp_typeinfo const & ti ) const GZ_NoExcept
    {
        return pn.get_deleter( ti );
    }*/

    void * _internal_get_untyped_deleter() const GZ_NoExcept
    {
        return pn.get_untyped_deleter();
    }

    bool _internal_equiv( gzSp const & r ) const GZ_NoExcept
    {
        return px == r.px && pn == r.pn;
    }

// Tasteless as this may seem, making all members public allows member templates
// to work in the absence of member template friends. (Matthew Langston)

#ifndef GZ_NO_MEMBER_TEMPLATE_FRIENDS

private:
    template<class Y> friend class gzSp;
    template<class Y> friend class gzWp;

#endif


    element_type * px;                 // contained pointer
    GZptr::detail::shared_count pn;    // reference counter

};  // gzSp





namespace detail
{
        using namespace GZptr;
/*
template<class D, class T> D * basic_get_deleter( gzSp<T> const & p ) GZ_NoExcept
{
    return static_cast<D *>( p._internal_get_deleter(GZ_SP_TYPEID(D)) );
}*/

class esft2_deleter_wrapper
{
private:

    gzSp<void const volatile> deleter_;

public:

    esft2_deleter_wrapper()
    {
    }

    template< class T > void set_deleter( gzSp<T> const & deleter )
    {
        deleter_ = deleter;
    }
/*
    template<typename D> D* get_deleter() const GZ_NoExcept
    {
        return GZptr::detail::basic_get_deleter<D>( deleter_ );
    }*/

    template< class T> void operator()( T* )
    {
        GZ_fSpAssert( deleter_.use_count() <= 1 );
        deleter_.reset();
    }
};

} // namespace detail
/*
template<class D, class T> D * get_deleter( gzSp<T> const & p ) GZ_NoExcept
{
    D *del = GZptr::detail::basic_get_deleter<D>(p);

    if(del == 0)
    {
        GZptr::detail::esft2_deleter_wrapper *del_wrapper = GZptr::detail::basic_get_deleter<GZptr::detail::esft2_deleter_wrapper>(p);
// The following get_deleter method call is fully qualified because
// older versions of gcc (2.95, 3.2.3) fail to compile it when written del_wrapper->get_deleter<D>()
        if(del_wrapper) del = del_wrapper->GZptr::detail::esft2_deleter_wrapper::get_deleter<D>();
    }

    return del;
}
*/

// hash_value
template< class T > struct hash;

template< class T > gzUIntX hash_value( gzSp<T> const & p ) GZ_NoExcept
{
    return GZptr::hash< T* >()( p.get() );
}

} // namespace GZptr




#endif  // #ifndef GZ_SMART_PTR_gzSp_HPP_INCLUDED
