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

/* copyrite.h - Copyright information for libsocket
 * This name really sucks, but how else can you get it into 8+3? */

#ifndef __libsocket_copyrite_h__
#define __libsocket_copyrite_h__

#ifdef __cplusplus
extern "C"
{
#endif

extern char *__lsck_get_version (void);
extern char *__lsck_get_copyright (void);

#define LSCK_VERSION_MAJOR    0
#define LSCK_VERSION_MINOR    8
#define LSCK_VERSION_SUBMINOR 0
#define LSCK_VERSION_ALPHA    0
#define LSCK_VERSION_BETA     0
#define LSCK_VERSION_PRE      0
#define LSCK_VERSION_DATE     "2000-11-16"
#define LSCK_VERSION_RELEASED 1

#ifdef __cplusplus
}
#endif

#endif /* __libsocket_copyrite_h__ */
