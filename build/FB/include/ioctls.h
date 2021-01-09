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

#ifndef __libsocket_ioctls_h__
#define __libsocket_ioctls_h__

#include <sys/socket.h>
#include <net/if.h>

#ifdef __cplusplus
extern "C" {
#endif 

/* These are from Linux and are implemented internally by libsocket. */

/* These constants *aren't* the same numerically as Linux, but the Linux
   #define's didn't work. I think this is the way they should be defined,
   and it seems to work. */
#define SIOCGIFNAME     _IOR('s', 0x10, char *)
#define SIOCGIFFLAGS    _IOR('s', 0x13, struct ifreq *) /* Faked */
#define SIOCGIFADDR     _IOR('s', 0x15, struct ifreq *)
#define SIOCGIFDSTADDR  _IOR('s', 0x17, struct ifreq *)
#define SIOCGIFBRDADDR  _IOR('s', 0x19, struct ifreq *) /* Faked */
#define SIOCGIFNETMASK  _IOR('s', 0x1B, struct ifreq *)
#define SIOCGIFMETRIC   _IOR('s', 0x1D, struct ifreq *) /* Faked */
#define SIOCGIFMEM      _IOR('s', 0x1F, struct ifreq *) /* Faked */
#define SIOCGIFMTU      _IOR('s', 0x21, struct ifreq *) /* Faked */
#define SIOCGHWADDR     _IOR('s', 0x27, struct ifreq *) /* Faked */

#ifdef __cplusplus
}
#endif 

#endif  /* __libsocket_ioctls_h__ */
