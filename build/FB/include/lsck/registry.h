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
    registry.h
    Created by Richard Dawe for libsocket.

    RegDos Group's registry access functions.
*/

#ifndef __REGDOS_H
#define __REGDOS_H

#ifndef __libsocket_registry_h__
#define __libsocket_registry_h__

#ifdef __cplusplus
extern "C"
{
#endif

/* --- Types --- */
#define CONST           const

typedef long            DWORD;
typedef long *          LPDWORD;
typedef long *          LPLONG;

typedef char            BYTE;
typedef char *          LPBYTE;
typedef char *          LPSTR;
typedef const char *    LPCSTR;

typedef long            HKEY;
typedef HKEY *          PHKEY;

/* --- Defines --- */

#ifndef ERROR_SUCCESS
#define ERROR_SUCCESS       0L
#endif

#ifndef ERROR_MORE_DATA
#define ERROR_MORE_DATA     234L
#endif

#ifndef ERROR_NO_MORE_ITEMS
#define ERROR_NO_MORE_ITEMS 259L
#endif

#ifndef ERROR_CANTREAD
#define ERROR_CANTREAD 1012L
#endif

#define __HKEY_CLASSES_ROOT               ((HKEY)0x80000000)
#define __HKEY_CURRENT_USER               ((HKEY)0x80000001)
#define __HKEY_LOCAL_MACHINE              ((HKEY)0x80000002)
#define __HKEY_USERS                      ((HKEY)0x80000003)
#define __HKEY_PERFORMANCE_DATA           ((HKEY)0x80000004)
#define __HKEY_CURRENT_CONFIG             ((HKEY)0x80000005)

#define HKEY_CLASSES_ROOT                 __HKEY_CLASSES_ROOT
#define HKEY_CURRENT_USER                 __HKEY_CURRENT_USER
#define HKEY_LOCAL_MACHINE                __HKEY_LOCAL_MACHINE
#define HKEY_USERS                        __HKEY_USERS
#define HKEY_PERFORMANCE_DATA             __HKEY_PERFORMANCE_DATA
#define HKEY_CURRENT_CONFIG               __HKEY_CURRENT_CONFIG

/* Reg types */
#define REG_NONE                          (0)
#define REG_SZ                            (1)   /* Unicode */
#define REG_EXPAND_SZ                     (2)   /*  "   " but with environment
                                                   variable expansion */
#define REG_BINARY                        (3)   /* Binary */
#define REG_DWORD                         (4)   /* 32 bit number */
#define REG_DWORD_LITTLE_ENDIAN           (4)
#define REG_DWORD_BIG_ENDIAN              (5)   /* 32-bit number, big end */

extern long __RegOpenKey (HKEY, LPCSTR, HKEY *);

extern long __RegCreateKey (HKEY, LPCSTR, HKEY *);

extern long __RegCloseKey (HKEY);

extern long __RegDeleteKey (HKEY, LPCSTR);

extern long __RegDeleteValue (HKEY, LPCSTR);

extern long __RegQueryValue (HKEY, LPCSTR, LPSTR, LPLONG);

extern long __RegQueryValueEx (HKEY, LPCSTR, LPDWORD, LPDWORD, LPBYTE,
			       LPDWORD);

extern long __RegEnumKey(HKEY, DWORD, LPSTR, DWORD);

extern long __RegEnumValue(HKEY, DWORD, LPSTR, LPDWORD, LPDWORD, LPDWORD,
			   LPBYTE, LPDWORD);

extern long __RegSetValueEx(HKEY, LPCSTR, DWORD, DWORD, LPBYTE, DWORD);

#define RegOpenKey      __RegOpenKey
#define RegCreateKey    __RegCreateKey
#define RegCloseKey     __RegCloseKey
#define RegDeleteKey    __RegDeleteKey
#define RegDeleteValue  __RegDeleteValue
#define RegQueryValue   __RegQueryValue
#define RegQueryValueEx __RegQueryValueEx
#define RegEnumKey      __RegEnumKey
#define RegEnumValue    __RegEnumValue
#define RegSetValueEx   __RegSetValueEx

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_registry_h__ */

#endif  /* __REGDOS_H */
