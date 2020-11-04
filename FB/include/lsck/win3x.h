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
    win3x.h - Windows 3.x functions
    Written by Richard Dawe
*/

#ifndef __libsocket_win3x_h__
#define __libsocket_win3x_h__

#include <lsck/if.h>

#ifdef __cplusplus
extern "C"
{
#endif

extern LSCK_IF_ADDR_TABLE * __win3x_getaddrtable            (void);

extern char *               __win3x_systemini_gethostname   (void);
extern char *               __win3x_systemini_getdomainname (void);
extern char **              __win3x_systemini_getdnsaddrs   (void);
extern char **              __win3x_systemini_getinterfaces (void);

extern int __win3x_systemini_getinterfaceaddr (char * /* interface */,
					       char * /* keyname */,
                                               struct in_addr * /* addr */);

extern int __win3x_systemini_getipaddr  (char *           /* interface */,
					 struct in_addr * /* addr */);

extern int __win3x_systemini_getnetmask (char *           /* interface */,
					 struct in_addr * /* addr */);

extern int __win3x_systemini_getgwaddr  (char *           /* interface */,
					 struct in_addr * /* addr */);

extern int __win3x_systemini_getdnsaddr (char *           /* interface */,
					 int              /* n */,
                                         struct in_addr * /* addr */);

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_win3x_h__ */
