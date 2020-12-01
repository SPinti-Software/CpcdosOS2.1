#ifndef GZ_SMART_PTR_DETAIL_SHARED_COUNT_HPP_INCLUDED
#define GZ_SMART_PTR_DETAIL_SHARED_COUNT_HPP_INCLUDED

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

#include "Lib_GZ/SmartPtr/SpCountedImpl.h"

#define GZ_NO_FUNCTION_TEMPLATE_ORDERING



/*
#define GZ_NO_NORETURN
#define GZ_NORETURN
*/

namespace GZptr
{

namespace detail
{

struct sp_nothrow_tag {};

template< class D > struct sp_inplace_tag
{
};


class weak_count;

class shared_count
{
private:

    sp_counted_base * pi_;



    friend class weak_count;

public:

    shared_count(): pi_(0) // nothrow

    {
    }

    template<class Y> explicit shared_count( Y * p ): pi_( 0 )

    {

        pi_ = new sp_counted_impl_p<Y>( p );

        if( pi_ == 0 )
        {
            //GZptr::checked_delete( p );
            //GZptr::throw_exception( std::bad_alloc() );
        }
    }


    template<class P, class D> shared_count( P p, D d ): pi_(0)
    {

        pi_ = new sp_counted_impl_pd<P, D>(p, d);

        if(pi_ == 0)
        {
            //d(p); // delete p
            //GZptr::throw_exception(std::bad_alloc());
        }

    }

#if !defined( GZ_NO_FUNCTION_TEMPLATE_ORDERING )

    template< class P, class D > shared_count( P p, sp_inplace_tag<D> ): pi_( 0 )

    {
        pi_ = new sp_counted_impl_pd< P, D >( p );

        if( pi_ == 0 )
        {
            //D::operator_fn( p ); // delete p
            //GZptr::throw_exception( std::bad_alloc() );
        }

    }

#endif // !defined( GZ_NO_FUNCTION_TEMPLATE_ORDERING )

    template<class P, class D, class A> shared_count( P p, D d, A a ): pi_( 0 )
    {
        typedef sp_counted_impl_pda<P, D, A> impl_type;

        typedef typename A::template rebind< impl_type >::other A2;

        A2 a2( a );

        pi_ = a2.allocate( 1, static_cast< impl_type* >( 0 ) );

        if( pi_ != 0 )
        {
            ::new( static_cast< void* >( pi_ ) ) impl_type( p, d, a );
        }
        else
        {
            //d( p );
            //GZptr::throw_exception( std::bad_alloc() );
        }
    }



    ~shared_count() // nothrow
    {
        if( pi_ != 0 ) pi_->release();

    }

    shared_count(shared_count const & r): pi_(r.pi_) // nothrow

    {
        if( pi_ != 0 ) pi_->add_ref_copy();
    }

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    shared_count(shared_count && r): pi_(r.pi_) // nothrow
    {
        r.pi_ = 0;
    }
#endif

    explicit shared_count(weak_count const & r); // throws bad_weak_ptr when r.use_count() == 0
    shared_count( weak_count const & r, sp_nothrow_tag ); // constructs an empty *this when r.use_count() == 0

    shared_count & operator= (shared_count const & r) // nothrow
    {
        sp_counted_base * tmp = r.pi_;

        if( tmp != pi_ )
        {
            if( tmp != 0 ) tmp->add_ref_copy();
            if( pi_ != 0 ) pi_->release();
            pi_ = tmp;
        }

        return *this;
    }

    void swap(shared_count & r) // nothrow
    {
        sp_counted_base * tmp = r.pi_;
        r.pi_ = pi_;
        pi_ = tmp;
    }

    long use_count() const // nothrow
    {
        return pi_ != 0? pi_->use_count(): 0;
    }

    bool unique() const // nothrow
    {
        return use_count() == 1;
    }

    bool empty() const // nothrow
    {
        return pi_ == 0;
    }

    friend inline bool operator==(shared_count const & a, shared_count const & b)
    {
        return a.pi_ == b.pi_;
    }
/*
    friend inline bool operator<(shared_count const & a, shared_count const & b)
    {
        return std::less<sp_counted_base *>()( a.pi_, b.pi_ );
    }
    */



    void * get_untyped_deleter() const
    {
        return pi_? pi_->get_untyped_deleter(): 0;
    }
};


class weak_count
{
private:

    sp_counted_base * pi_;



    friend class shared_count;

public:

    weak_count(): pi_(0) // nothrow

    {
    }

    weak_count(shared_count const & r): pi_(r.pi_) // nothrow

    {
        if(pi_ != 0) pi_->weak_add_ref();
    }

    weak_count(weak_count const & r): pi_(r.pi_) // nothrow

    {
        if(pi_ != 0) pi_->weak_add_ref();
    }

// Move support

#if !defined( GZ_NO_CXX11_RVALUE_REFERENCES )

    weak_count(weak_count && r): pi_(r.pi_) // nothrow

    {
        r.pi_ = 0;
    }

#endif

    ~weak_count() // nothrow
    {
        if(pi_ != 0) pi_->weak_release();
    }

    weak_count & operator= (shared_count const & r) // nothrow
    {
        sp_counted_base * tmp = r.pi_;

        if( tmp != pi_ )
        {
            if(tmp != 0) tmp->weak_add_ref();
            if(pi_ != 0) pi_->weak_release();
            pi_ = tmp;
        }

        return *this;
    }

    weak_count & operator= (weak_count const & r) // nothrow
    {
        sp_counted_base * tmp = r.pi_;

        if( tmp != pi_ )
        {
            if(tmp != 0) tmp->weak_add_ref();
            if(pi_ != 0) pi_->weak_release();
            pi_ = tmp;
        }

        return *this;
    }

    void swap(weak_count & r) // nothrow
    {
        sp_counted_base * tmp = r.pi_;
        r.pi_ = pi_;
        pi_ = tmp;
    }

    long use_count() const // nothrow
    {
        return pi_ != 0? pi_->use_count(): 0;
    }

    bool empty() const // nothrow
    {
        return pi_ == 0;
    }

    friend inline bool operator==(weak_count const & a, weak_count const & b)
    {
        return a.pi_ == b.pi_;
    }
/*
    friend inline bool operator<(weak_count const & a, weak_count const & b)
    {
        return std::less<sp_counted_base *>()(a.pi_, b.pi_);
    }
*/

};

inline shared_count::shared_count( weak_count const & r ): pi_( r.pi_ )
{
    if( pi_ == 0 || !pi_->add_ref_lock() )
    {
       // GZptr::throw_exception( GZptr::bad_weak_ptr() );
    }
}

inline shared_count::shared_count( weak_count const & r, sp_nothrow_tag ): pi_( r.pi_ )
{
    if( pi_ != 0 && !pi_->add_ref_lock() )
    {
        pi_ = 0;
    }
}

} // namespace detail

} // namespace GZptr


#endif  // #ifndef GZ_SMART_PTR_DETAIL_SHARED_COUNT_HPP_INCLUDED
