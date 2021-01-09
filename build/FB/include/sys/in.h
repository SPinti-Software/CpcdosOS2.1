
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

/*
 * RD: Constructed by comparison with netinet/in.h from Cygwin beta 20.1.
 * Made all functions externs.
 */

#ifndef _NETINET_IN_H
#define _NETINET_IN_H

#ifndef __libsocket_netinet_in_h__
#define __libsocket_netinet_in_h__

#include <lsck/errno.h>

#ifdef __cplusplus
extern "C"
{
#endif

enum {
  IPPROTO_IP = 0,               /* Dummy protocol for TCP               */
  IPPROTO_ICMP = 1,             /* Internet Control Message Protocol    */
  IPPROTO_IGMP = 2,             /* Internet Gateway Management Protocol */
  IPPROTO_IPIP = 4,             /* IPIP tunnels (older KA9Q tunnels use 94) */
  IPPROTO_TCP = 6,              /* Transmission Control Protocol        */
  IPPROTO_EGP = 8,              /* Exterior Gateway Protocol            */
  IPPROTO_PUP = 12,             /* PUP protocol                         */
  IPPROTO_UDP = 17,             /* User Datagram Protocol               */
  IPPROTO_IDP = 22,             /* XNS IDP protocol                     */

  IPPROTO_RAW = 255,            /* Raw IP packets                       */
  IPPROTO_MAX
};

/* Standard well-known ports.  */
enum
  {
    IPPORT_ECHO = 7,            /* Echo service.  */
    IPPORT_DISCARD = 9,         /* Discard transmissions service.  */
    IPPORT_SYSTAT = 11,         /* System status service.  */
    IPPORT_DAYTIME = 13,        /* Time of day service.  */
    IPPORT_NETSTAT = 15,        /* Network status service.  */
    IPPORT_FTP = 21,            /* File Transfer Protocol.  */
    IPPORT_TELNET = 23,         /* Telnet protocol.  */
    IPPORT_SMTP = 25,           /* Simple Mail Transfer Protocol.  */
    IPPORT_TIMESERVER = 37,     /* Timeserver service.  */
    IPPORT_NAMESERVER = 42,     /* Domain Name Service.  */
    IPPORT_WHOIS = 43,          /* Internet Whois service.  */
    IPPORT_MTP = 57,

    IPPORT_TFTP = 69,           /* Trivial File Transfer Protocol.  */
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,         /* Finger service.  */
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,         /* SUPDUP protocol.  */


    IPPORT_EXECSERVER = 512,    /* execd service.  */
    IPPORT_LOGINSERVER = 513,   /* rlogind service.  */
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,

    /* UDP ports.  */
    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,

    /* Ports less than this value are reserved for privileged processes.  */
    IPPORT_RESERVED = 1024,

    /* Ports greater this value are reserved for (non-privileged) servers.  */
    IPPORT_USERRESERVED = 5000
  };

/* Fundamental Internet types */
#ifndef __libsocket_in_port_t
typedef unsigned short in_port_t;
#define __libsocket_in_port_t
#endif	/* __libsocket_in_port_t */

#ifndef __libsocket_in_addr_t
typedef unsigned long in_addr_t;
#define __libsocket_in_addr_t
#endif	/* __libsocket_in_addr_t */

#ifndef __libsocket_sa_family_t
typedef unsigned short sa_family_t;
#define __libsocket_sa_family_t
#endif	/* __libsocket_sa_family_t */

/* Internet address. */
#ifndef __libsocket_in_addr
#define __libsocket_in_addr
struct in_addr {
        in_addr_t s_addr __attribute__((packed));
};
#endif	/* __libsocket_in_addr */

/* Structure describing an Internet (IP) socket address. */
#define __SOCK_SIZE__   16              /* sizeof(struct sockaddr) */
struct sockaddr_in {
	sa_family_t    sin_family __attribute__((packed)); /* Address family */
	in_port_t      sin_port   __attribute__((packed)); /* Port number    */
	struct in_addr sin_addr   __attribute__((packed)); /* Internet addr. */

	/* Pad to size of `struct sockaddr'. */
	unsigned char  __pad[__SOCK_SIZE__
			    - sizeof(sa_family_t) -
			    sizeof(in_port_t)
			    - sizeof(struct in_addr)] __attribute__((packed));
}; /* RD: Pack it for transmission/usage! */
#define sin_zero __pad /* for BSD UNIX comp. -FvK      */

/*
 * Definitions of the bits in an Internet address integer.
 * On subnets, host and network parts are found according
 * to the subnet mask, not these masks.
 */
#define IN_CLASSA(a)            ((((long int) (a)) & 0x80000000) == 0)
#define IN_CLASSA_NET           0xff000000
#define IN_CLASSA_NSHIFT        24
#define IN_CLASSA_HOST          (0xffffffff & ~IN_CLASSA_NET)
#define IN_CLASSA_MAX           128

#define IN_CLASSB(a)            ((((long int) (a)) & 0xc0000000) == 0x80000000)
#define IN_CLASSB_NET           0xffff0000
#define IN_CLASSB_NSHIFT        16
#define IN_CLASSB_HOST          (0xffffffff & ~IN_CLASSB_NET)
#define IN_CLASSB_MAX           65536

#define IN_CLASSC(a)            ((((long int) (a)) & 0xe0000000) == 0xc0000000)
#define IN_CLASSC_NET           0xffffff00
#define IN_CLASSC_NSHIFT        8
#define IN_CLASSC_HOST          (0xffffffff & ~IN_CLASSC_NET)

#define IN_CLASSD(a)            ((((long int) (a)) & 0xf0000000) == 0xe0000000)
#define IN_MULTICAST(a)         IN_CLASSD(a)
#define IN_MULTICAST_NET        0xF0000000

#define IN_EXPERIMENTAL(a)      ((((long int) (a)) & 0xe0000000) == 0xe0000000)
#define IN_BADCLASS(a)          ((((long int) (a)) & 0xf0000000) == 0xf0000000)

/* Address to accept any incoming messages. */
#define INADDR_ANY              ((unsigned long int) 0x00000000)

/* Address to send to all hosts. */
#define INADDR_BROADCAST        ((unsigned long int) 0xffffffff)

/* Address indicating an error return. */
#define INADDR_NONE             0xffffffff

/* Network number for local host loopback. */
#define IN_LOOPBACKNET          127

/* Address to loopback in software to local host.  */
#define INADDR_LOOPBACK         0x7f000001      /* 127.0.0.1   */
#define IN_LOOPBACK(a)          ((((long int) (a)) & 0xff000000) == 0x7f000000)

/* Defines for Multicast INADDR */
#define INADDR_UNSPEC_GROUP     0xe0000000      /* 224.0.0.0   */
#define INADDR_ALLHOSTS_GROUP   0xe0000001      /* 224.0.0.1   */
#define INADDR_MAX_LOCAL_GROUP  0xe00000ff      /* 224.0.0.255 */

/*
 * Structure used to describe IP options.
 * Used to store options internally, to pass them to a process,
 * or to restore options retrieved earlier.
 * The ip_dst is used for the first-hop gateway when using a source route
 * (this gets put into the header proper).
 */

/* Ugly hack for g++ 2.95.x */

#if defined(__cplusplus) && defined(__GNUC__) && defined(__GNUC_MINOR__)
#if (__GNUC__ == 2) && (__GNUC_MINOR__ == 95)
#define __libsocket_netinet_in_ugly_hack__
#endif /* (__GNUC__ == 2) && (__GNUC_MINOR__ == 95) */
#endif /* __cplusplus && __GNUC__ && __GNUC_MINOR__ */

#ifndef __libsocket_netinet_in_ugly_hack__
struct ip_opts {
       struct  in_addr ip_dst;         /* first hop, 0 w/o src rt */
       char    ip_opts[40];            /* actually variable in size */
     };
#else /* !__libsocket_netinet_in_ugly_hack__ */
#warning struct ip_opts not defined as work-around for g++ 2.95.x bug
#endif /* __libsocket_netinet_in_ugly_hack__ */

#undef __libsocket_netinet_in_ugly_hack__

/*
 * Options for use with [gs]etsockopt at the IP level.
 * First word of comment is data type; bool is stored in int.
 */
#define	IP_OPTIONS		1    /* buf/ip_opts; set/get IP options */
#define	IP_HDRINCL		2    /* int; header is included with data */
#define	IP_TOS			3    /* int; IP type of service and preced. */
#define	IP_TTL			4    /* int; IP time to live */
#define	IP_RECVOPTS		5    /* bool; receive all IP opts w/dgram */
#define	IP_RECVRETOPTS		6    /* bool; receive IP opts for response */
#define	IP_RECVDSTADDR		7    /* bool; receive IP dst addr w/dgram */
#define	IP_RETOPTS		8    /* ip_opts; set/get IP options */
#define	IP_MULTICAST_IF		9    /* u_char; set/get IP multicast i/f  */
#define	IP_MULTICAST_TTL	10   /* u_char; set/get IP multicast ttl */
#define	IP_MULTICAST_LOOP	11   /* u_char; set/get IP multicast loopback */
#define	IP_ADD_MEMBERSHIP	12   /* ip_mreq; add an IP group membership */
#define	IP_DROP_MEMBERSHIP	13   /* ip_mreq; drop an IP group membership */
#define IP_MULTICAST_VIF	14   /* set/get IP mcast virt. iface */
#define IP_RSVP_ON		15   /* enable RSVP in kernel */
#define IP_RSVP_OFF		16   /* disable RSVP in kernel */
#define IP_RSVP_VIF_ON		17   /* set RSVP per-vif socket */
#define IP_RSVP_VIF_OFF		18   /* unset RSVP per-vif socket */
#define IP_PORTRANGE		19   /* int; range to choose for unspec port */
#define	IP_RECVIF		20   /* bool; receive reception if w/dgram */

#define IP_FW_ADD     		50   /* add a firewall rule to chain */
#define IP_FW_DEL    		51   /* delete a firewall rule from chain */
#define IP_FW_FLUSH   		52   /* flush firewall rule chain */
#define IP_FW_ZERO    		53   /* clear single/all firewall counter(s) */
#define IP_FW_GET     		54   /* get entire firewall rule chain */
#define IP_NAT			55   /* set/get NAT opts */

/*
 * Defaults and limits for options
 */
#define	IP_DEFAULT_MULTICAST_TTL  1	/* normally limit m'casts to 1 hop  */
#define	IP_DEFAULT_MULTICAST_LOOP 1	/* normally hear sends if a member  */
#define	IP_MAX_MEMBERSHIPS	20	/* per socket */

/*
 * Argument structure for IP_ADD_MEMBERSHIP and IP_DROP_MEMBERSHIP.
 */
struct ip_mreq {
	struct	in_addr imr_multiaddr;	/* IP multicast address of group */
	struct	in_addr imr_interface;	/* local IP address of interface */
};

/*
 * Argument for IP_PORTRANGE:
 * - which range to search when port is unspecified at bind() or connect()
 */
#define	IP_PORTRANGE_DEFAULT	0	/* default range */
#define	IP_PORTRANGE_HIGH	1	/* "high" - request firewall bypass */
#define	IP_PORTRANGE_LOW	2	/* "low" - vouchsafe security */

/* Constants to help with inet_pton(), inet_ntop(). */
#define INET_ADDRSTRLEN		16
#define INET6_ADDRSTRLEN	46

/* Bind a socket to a privileged IP port */
extern int bindresvport (int __sockfd, struct sockaddr_in *sin);

/* Byte-order conversions */
extern unsigned long  htonl(unsigned long _val);
extern unsigned long  ntohl(unsigned long _val);
extern unsigned short htons(unsigned short _val);
extern unsigned short ntohs(unsigned short _val);

#ifdef __cplusplus
}
#endif

#endif  /* __libsocket_netinet_in_h__ */

#endif	/* _NETINET_IN_H */
