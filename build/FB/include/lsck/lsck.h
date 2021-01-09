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
    lsck.h
    General include file for libsocket
*/

#ifndef __libsocket_lsck_h__
#define __libsocket_lsck_h__

/* --- Stuff from the old "basket" file, ws.h --- */

#include <lsck/errno.h>
#include <lsck/domname.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* --- Functions --- */

/* Start-up & shutdown */
extern int  __lsck_init (void) __attribute__((constructor));
extern void __lsck_uninit (void);

/* Configuration */
extern char *__lsck_config_getdir (void);
extern char *__lsck_config_setdir (char * /* newdir */);
extern char *__lsck_config_getfile (void);
extern char *__lsck_config_setfile (char * /* newfile */);

/* DNS address(es) */
extern char *  __lsck_getdnsaddr (void);
extern char ** __lsck_getdnsaddrs (void);

/* Error fudging */
/* These are now obsolete. */
/*extern void lsck_perror (char *s);
extern char *lsck_strerror (int errnum);*/

/* Just define macros instead. */
#define lsck_perror perror
#define lsck_strerror strerror

/* File descriptor tests */
extern int __fd_is_socket (int /* fd */);
extern int __fd_is_valid (int /* fd */);

/* Debugging */
#define LSCK_DEBUG_OFF		0
#define LSCK_DEBUG_ON		LSCK_DEBUG_NORMAL
#define LSCK_DEBUG_NORMAL	1
#define LSCK_DEBUG_VERBOSE	2

extern void __lsck_debug_setlevel (int /* level */);
extern int  __lsck_debug_getlevel (void);
extern void __lsck_debug_enable   (void);
extern void __lsck_debug_disable  (void);
extern int  __lsck_debug_enabled  (void);

#ifdef __cplusplus
}
#endif

#endif /* __libsocket_lsck_h__ */
