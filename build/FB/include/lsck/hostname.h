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
    hostname.h - Functions for obtaining the computer's name.
*/

#ifndef __libsocket_hostname_h__
#define __libsocket_hostname_h__

#include <unistd.h>
#include <sys/param.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* For backwards compatibility */
#define __lsck_gethostname gethostname
#define __lsck_sethostname sethostname

/* gethostname() is defined in unistd.h */
/*extern int gethostname (char *buf, int size);*/
extern int sethostname (char * /* buf */ , int /* size */);

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_hostname_h__ */
