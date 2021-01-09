/*
 *  libsocket - BSD socket like library for DJGPP
 *  Copyright (C) 1997, 1998 by Indrek Mandre
 *  Copyright (C) 1997-2000 by Richard Dawe
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

#ifndef __libsocket_win9x_h__
#define __libsocket_win9x_h__

#include <netinet/in.h>
#include <lsck/if.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* --- Main --- */

extern LSCK_IF_ADDR_TABLE *__win9x_getaddrtable (void);

/* --- DHCP --- */

/* - Defines - */

/* DHCP vendor extensions - see RFC 2132. */
#define DHCP_OPT_PAD                0x00
#define DHCP_OPT_SUBNET             0x01
#define DHCP_OPT_ROUTER             0x03
#define DHCP_OPT_NAME_SERVER        0x05    /* IEN name server    */
#define DHCP_OPT_DNS                0x06    /* Domain name server */
#define DHCP_OPT_HOST_NAME          0x0C
#define DHCP_OPT_DOMAIN_NAME        0x0F
#define DHCP_OPT_BROADCAST_ADDRESS  0x1C
#define DHCP_OPT_END                0xFF 
/* - Functions - */
extern char * __win9x_dhcp_getkeyvalue (int    /* n */,
					char * /* valuename */,
					int *  /* valuesize */);

extern int __win9x_dhcp_getkeyaddr (int              /* n */,
				    char *           /* valuename */,
				    struct in_addr * /* addr */);

extern int __win9x_dhcp_getoptaddrs (int              /* opt */,
				     int              /* n */,
				     struct in_addr * /* ip */,
				     int              /* ip_max */);

extern int __win9x_dhcp_getipaddr (int /* n */, struct in_addr * /* addr */);

extern int __win9x_dhcp_getnetmask (int /* n */, struct in_addr * /* addr */);

extern int __win9x_dhcp_getgwaddr (int /* n */, struct in_addr * /* addr */);

extern int __win9x_dhcp_getdnsaddrs (int              /* n */,
				     struct in_addr * /* dns */,
				     int              /* dns_max */);

extern int __win9x_dhcp_gethwaddr (int    /* n */,
				   char * /* hw_addr */,
				   int *  /* hw_addrlen */);

extern int __win9x_dhcp_gethostname (int    /* n */,
				     char * /* buffer */,
				     int *  /* bufferlen */);

extern int __win9x_dhcp_getdomainname (int    /* n */,
				       char * /* buffer */,
				       int *  /* bufferlen */);

/* --- MSTCP --- */
extern int     __win9x_mstcp_dnsenabled (void);
extern char ** __win9x_mstcp_getdnsaddrs (void);
extern char *  __win9x_mstcp_gethostname (void);
extern char *  __win9x_mstcp_getdomainname (void);

/* --- RAS = Remote Access Service --- */

typedef struct _RAS_DATA {
    int ip_fixed;               /* Local IP addr. fixed? 1 = yep, 0 = nope */
    struct in_addr ip_machine;  /* Machine's IP address                    */
    int ip_dns_specified;       /* DNS IP addr. spec'd? 1 = yep, 0 = nope  */
    int ip_dns_count;           /* No. DNS IP addr. spec'd                 */
    struct in_addr ip_dns[2];   /* DNS IP addresses                        */
} RAS_DATA;

extern int    __win9x_ras_active (void);
extern char  *__win9x_ras_getdefaultphonebook (void);
extern int    __win9x_ras_getdata (RAS_DATA * /* ras_data */);
extern char **__win9x_ras_getdnsaddrs (void);

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_win9x_h__ */
