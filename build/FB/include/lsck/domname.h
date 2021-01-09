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

#ifndef __libsocket_domname_h__
#define __libsocket_domname_h__

#include <sys/param.h>
#include <sys/types.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* Define this constant for later use */
#define MAXGETDOMAINNAME MAXGETHOSTNAME

extern int getdomainname (char * /* name */, size_t /* len */);
extern int setdomainname (const char * /* name */, size_t /* len */);

/* Define lsck_* versions to be the same */
#ifndef __lsck_getdomainname
#define __lsck_getdomainname getdomainname
#endif

#ifndef __lsck_setdomainname
#define __lsck_setdomainname setdomainname
#endif

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_domname_h__ */
