/*
 *  libsocket - BSD socket like library for DJGPP
 *  Copyright 1997, 1998 by Indrek Mandre
 *  Copyright 1997-2000 by Richard Dawe
 *
 *  Portions of libsocket Copyright 1985-1993 Regents of the University of 
 *  California.
 *  Portions of libsocket Copyright 1991, 1992 Free Software Foundation, Inc.
 *  Portions of libsocket Copyright 1997, 1998 by the Regdos Group.
 *
 *  This library is free software; you can redistribute it and/or modify it
 *  under the terms of the GNU Library General Public License as published
 *  by the Free Software Foundation; either version 2 of the License, or (at
 *  your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Library General Public License for more details.
 * 
 *  You should have received a copy of the GNU Library General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

/*
    bsdtypes.h - BSD types used by some of libsocket's code.
*/

#ifndef __libsocket_bsdtypes_h__
#define __libsocket_bsdtypes_h__

#ifdef __cplusplus
extern "C" {
#endif 

typedef unsigned long int   u_int32_t;
typedef unsigned short      u_int16_t;

typedef unsigned long       u_long;
typedef unsigned int        u_int;
typedef unsigned short      u_short;
typedef unsigned char       u_char;

typedef char *              __caddr_t;
typedef __caddr_t           caddr_t;

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_bsdtypes_h__ */
