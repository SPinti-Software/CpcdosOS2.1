/*
 *  libsocket - BSD socket like library for DJGPP
 *  Copyright 1997, 1998 by Indrek Mandre
 *  Copyright 1997-2000 by Richard Dawe
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

#ifndef _SYS_UN_H
#define _SYS_UN_H

#include <lsck/bsdtypes.h>

#ifdef __cplusplus
extern "C"
{
#endif

#ifndef __libsocket_sa_family_t
typedef unsigned short sa_family_t;
#define __libsocket_sa_family_t
#endif	/* __libsocket_sa_family_t */

struct sockaddr_un {
    sa_family_t sun_family    __attribute__((packed));
    u_char      sun_path[108] __attribute__((packed));
};

#ifdef __cplusplus
}
#endif

#endif  /* _SYS_UN_H */
