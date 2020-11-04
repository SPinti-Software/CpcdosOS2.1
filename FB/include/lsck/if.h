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
    if.h
    Interface include file
*/

#ifndef __libsocket_if_h__
#define __libsocket_if_h__

#include <sys/param.h>
#include <sys/types.h>

#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/un.h>

#include <lsck/domname.h>

#ifdef __cplusplus
extern "C"
{
#endif

/* --- Defines --- */

/* Interfaces */
#define LSCK_IF_LOOPBACK	0	/* Loopback device                   */
#define LSCK_IF_WSOCK		1	/* Via WSOCK.VXD                     */
/* As yet unimplemented */
#define LSCK_IF_WSOCK2		2	/* Via WSOCK2.VXD                    */
#define LSCK_IF_PKTDRV		3	/* Via packet driver                 */
#define LSCK_IF_TCPABI		4	/* Via TCP Applications Binary Int.  */
/* End unimplemented */
#define LSCK_IF_CSOCK		5	/* Via SOCK.VXD from Coda project    */
#define LSCK_IF_UNIX		6	/* Unix domain sockets via mailslots */
#define LSCK_IF_WATT32		7	/* Watt-32 ported to libsocket       */

#define LSCK_MIN_IF		LSCK_IF_LOOPBACK
#define LSCK_MAX_IF		LSCK_IF_WATT32
	
/* Flag constants for LSCK_SOCKET struct */
#define LSCK_FLAG_BLOCKING  1

/* Socket address constants */
#define __SOCKADDR_COMMON_SIZE sizeof(struct sockaddr)
#define __SOCKADDR_MAX_SIZE    sizeof(struct sockaddr_un)
#define __SOCKADDR_PAD_SIZE    (__SOCKADDR_MAX_SIZE - __SOCKADDR_COMMON_SIZE)

/* --- Structures --- */

/* - Socket descriptor */
typedef struct _LSCK_SOCKET {
	/* Basic information */
	int  fd;	/* File descriptor           */
	int  family;	/* Address family / domain   */
	int  type;	/* SOCK_* type               */
	int  protocol;	/* Protocol to use           */
	
	int  errno;	/* Error status, to support SO_ERROR. */
	
	/* Address information */
	/* NB: These need to be padded because the pad should be adjacent to
	 * the sockaddr structure for Unix domain sockets. */

	/* Socket local name */
	struct sockaddr sockname       __attribute__((packed));	
	char pad1[__SOCKADDR_PAD_SIZE] __attribute__((packed));
	size_t socknamelen;

	/* Socket peer name */
	struct sockaddr peername       __attribute__((packed));
	char pad2[__SOCKADDR_PAD_SIZE] __attribute__((packed));		
	size_t peernamelen;

	/* Status information */
	unsigned char bound:1;		/* Socket has been bound     */
	unsigned char accepted:1;	/* Socket has been accepted  */
	unsigned char connected:1;	/* Socket has been connected */
	unsigned char connecting:1;	/* Non-blocking connect()?   */
	unsigned char blocking:1;	/* Socket does blocking I/O  */
	unsigned char outbound:1;	/* Socket outbound allowed   */
	unsigned char inbound:1;	/* Socket inbound allowed    */
	unsigned char listening:1;	/* Socket is listening       */
	int backlog;			/* listen() backlog          */
	int send_timeout;		/* send() timeout            */
	int recv_timeout;		/* recv() timeout            */
	int urgent_pid;			/* Send SIGURG to this pid   */

	/* Interface information */
	struct _LSCK_IF *interface;	/* Interface info table      */
	void            *idata;		/* Interface data            */	
} LSCK_SOCKET;

/* Interface address list constants */
#define LSCK_IF_ADDR_INET_DNS_MAX           4   /* 4 is probably enough */
#define LSCK_IF_ADDR_INET_HW_ADDRLEN_MAX    16

/* Interface descriptor */
typedef struct _LSCK_IF_ADDR_INET {
	struct in_addr addr;
	struct in_addr netmask;
	int            gw_present;
	struct in_addr gw;
	struct in_addr dns[LSCK_IF_ADDR_INET_DNS_MAX];
	unsigned char  fixed:1;
	unsigned char  hw_type:4;
	unsigned char  pad:3;
	unsigned char  hw_addr[LSCK_IF_ADDR_INET_HW_ADDRLEN_MAX];
	int            hw_addrlen;
	char           hostname[MAXGETHOSTNAME];
	char           domainname[MAXGETDOMAINNAME];
} LSCK_IF_ADDR_INET;

/* Hardware types */
#define LSCK_IF_HW_TYPE_NONE        0   /* Loopback, virtual devices */
#define LSCK_IF_HW_TYPE_VIRTUAL     LSCK_IF_HW_TYPE_NONE
#define LSCK_IF_HW_TYPE_ETHERNET    1   /* Ethernet                  */
#define LSCK_IF_HW_TYPE_DIALUP      2   /* PPP, etc.                 */

/* Hardware address lengths */
#define LSCK_IF_HW_ADDRLEN_ETHERNET	6

/* Actual table includes space for NULL */
#define LSCK_IF_ADDR_TABLE_MAX 16

typedef struct _LSCK_IF_ADDR {
	int family;	/* One of the AF_* constants */

	union {
		LSCK_IF_ADDR_INET *inet[LSCK_IF_ADDR_TABLE_MAX + 1];
	} table;
} LSCK_IF_ADDR_TABLE;

typedef struct _LSCK_IF_ROUTE_INET {
	struct in_addr netaddr;
	struct in_addr netmask;
	struct in_addr gw;
	struct in_addr addr;
	int metric;
} LSCK_IF_ROUTE_INET;

/* Actual table includes space for NULL */
#define LSCK_IF_ROUTE_TABLE_MAX 64

typedef struct _LSCK_IF_ROUTE {
	union {
		LSCK_IF_ROUTE_INET *inet[LSCK_IF_ROUTE_TABLE_MAX + 1];
	} table;
} LSCK_IF_ROUTE_TABLE;

/* Interface flags */
#define IF_FLAG_HAS_NONBLOCKING	0x0001	/* Can perform non-blocking ops */
#define IF_FLAG_HAS_MSG_PEEK	0x0002	/* Can recv() with MSG_PEEK     */
#define IF_FLAG_HAS_MSG_WAITALL	0x0004	/* Can recv() with MSG_WAITALL  */

typedef struct _LSCK_IF {
	/* Interface information */
	char                *name;      /* Interface name      */
	int                  flags;	/* Capabilities        */
	LSCK_IF_ADDR_TABLE  *addr;      /* Address information */
	LSCK_IF_ROUTE_TABLE *route;     /* Routing information */

	/* Interface management functions */
	int (*preinit) (void);
	struct _LSCK_IF * (*init) (void);
	int (*preuninit) (void);
	int (*uninit) (void);

	/* General functions */
        int (*socket) (LSCK_SOCKET * /* lsd */);
        int (*socketpair) (LSCK_SOCKET * /* lsd */ [2]);
        int (*close) (LSCK_SOCKET * /* lsd */);
	
        int (*proto_check) (int /* domain */,
			    int /* type */,
			    int /* protocol */);

        int (*addrlen_check) (LSCK_SOCKET * /* lsd */, size_t /* addrlen */);
	/* TODO: route_check */

        int (*bind) (LSCK_SOCKET *     /* lsd */,
		     struct sockaddr * /* addr */,
		     size_t            /* addrlen */);

        int (*listen) (LSCK_SOCKET * /* lsd */, int /* backlog */);

        int (*accept) (LSCK_SOCKET *     /* lsd */,
		       LSCK_SOCKET *     /* nsd */,
		       struct sockaddr * /* addr */,
		       size_t *          /* addrlen */);
	
        int (*connect) (LSCK_SOCKET *     /* lsd */,
			struct sockaddr * /* addr */,
			size_t            /* addrlen */);

        ssize_t (*recv) (LSCK_SOCKET * /* lsd */,
			 void *        /* buf */,
			 size_t        /* len */,
			 unsigned int  /* flags */);

        ssize_t (*recvfrom) (LSCK_SOCKET *     /* lsd */,
			     void *            /* buf */,
			     size_t            /* len */,
			     unsigned int      /* flags */,
			     struct sockaddr * /* from */,
			     size_t *          /* fromlen */);

        ssize_t (*send) (LSCK_SOCKET * /* lsd */,
			 void *        /* buf */,
			 size_t        /* len */,
			 unsigned int  /* flags */);

        ssize_t (*sendto) (LSCK_SOCKET *     /* lsd */,
			   void *            /* buf */,
			   size_t            /* len */,
			   unsigned int      /* flags */,
			   struct sockaddr * /* to */,
			   size_t            /* tolen */);

        int (*getsockname) (LSCK_SOCKET * /* lsd */,
			    struct sockaddr * /* name */,
			    size_t * /* namelen */);

        int (*getpeername) (LSCK_SOCKET *     /* lsd */,
			    struct sockaddr * /* name */,
			    size_t *          /* namelen */);

        int (*getsockopt) (LSCK_SOCKET * /* lsd */,
			   int *         /* rv */,
			   int           /* level */,
			   int           /* optname */,
			   void *        /* optval */,
			   size_t *      /* optlen */);

        int (*setsockopt) (LSCK_SOCKET * /* lsd */,
			   int *         /* rv */,
			   int           /* level */,
			   int           /* optname */,
			   const void *  /* optval */,
			   size_t        /* optlen */);

        int (*shutdown) (LSCK_SOCKET * /* lsd */, int /* how */);

	/* I/O control functions */
        int (*fcntl) (LSCK_SOCKET * /* lsd */,
		      int *         /* rv */,
		      int           /* command */,
		      int           /* request */);

        int (*ioctl) (LSCK_SOCKET * /* lsd */,
		      int *         /* rv */,
		      int           /* request */,
		      int *         /* param */);

        int (*select) (LSCK_SOCKET * /* lsd */, int /* event */);
        int (*nonblocking_check) (LSCK_SOCKET * /* lsd */);
        int (*sockatmark) (LSCK_SOCKET * /* lsd */);
} LSCK_IF;

/* --- Functions --- */

extern LSCK_SOCKET *__fd_to_lsd (int /* fd */);

extern LSCK_IF_ADDR_INET *__lsck_if_addr_inet_loopback (void);
extern LSCK_IF_ADDR_INET *__lsck_if_addr_inet_getconfig (char * /* section */);

/* --- Global variables --- */

/* Socket descriptors */
#ifndef __LSCK_NUM_SOCKET
#define __LSCK_NUM_SOCKET 256
#endif

/* Interface information */
extern LSCK_IF __wsock_interface;
extern LSCK_IF __csock_interface;
extern LSCK_IF __unix_interface;

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_if_h__ */
