#ifndef _SOCKET_H
#define _SOCKET_H

#include <stdarg.h>
#include <sys\uio.h>
#include <sys\time.h>
#include <telnet.h>

#include "sockaddr.h"

#ifndef WATTCPF
#include "wattcp.h"
#endif
#include "osdep.h"

/* Local IP wildcard address */
#define INADDR_ANY      0x0L

/* IP protocol numbers */
/* now in internet.h */

/* TCP port numbers */
#define IPPORT_ECHO     7       /* Echo data port */
#define IPPORT_DISCARD  9       /* Discard data port */
#define IPPORT_FTPD     20      /* FTP Data port */
#define IPPORT_FTP      21      /* FTP Control port */
#define IPPORT_TELNET   23      /* Telnet port */
#define IPPORT_SMTP     25      /* Mail port */
#define IPPORT_FINGER   79      /* Finger port */
#define IPPORT_TTYLINK  87      /* Chat port */
#define IPPORT_POP      109     /* pop2 port */
#define IPPORT_NNTP     119     /* Netnews port */

/* UDP port numbers */
#define IPPORT_DOMAIN   53
#define IPPORT_BOOTPS   67
#define IPPORT_BOOTPC   68
#define IPPORT_RIP      520
#define IPPORT_REMOTE   1234    /* Pulled out of the air */

#define AF_UNSPEC       0
#define AF_INET         1
#define AF_AX25         2
#define AF_NETROM       3
#define AF_LOCAL        4

#define SOCK_STREAM     0
#define SOCK_DGRAM      1
#define SOCK_RAW        2
#define SOCK_SEQPACKET  3

/* Socket flag values - controls newline mapping */
#define SOCK_BINARY     0       /* socket in raw (binary) mode */
#define SOCK_ASCII      1       /* socket in cooked (newline mapping) mode */
#define SOCK_QUERY      2       /* Return setting without change */

#define EAFNOSUPPORT    EINVAL
#define EOPNOTSUPP      EINVAL
#define EFAULT          EINVAL
#define EISCONN         EINVAL
#define ECONNREFUSED    EIO
#define EPROTONOSUPPORT EINVAL
#define ENOBUFS         ENOMEM

extern int tcp_tick(void *);
void SocketInit();
void SocketClose();
int accept (int s,struct sockaddr *peername,int *peernamelen);
int bind (int s,struct sockaddr *name,int namelen);
int close_s (int s);
int connect (int s,struct sockaddr *peername,int peernamelen);
int listen (int s,int backlog);
int socket (int af,int type,int protocol);
int recvfrom (int s,char *buf,int len,int flags,struct sockaddr *from,int *fromlen);
int sendto (int s,char *buf,int len,int flags,struct sockaddr *to,int tolen);
int select(int,fd_set *,fd_set *,fd_set *,struct timeval *timeout);
int writev_s (int s, struct iovec *iov, int iovcnt);
int write_s (int s, char *buf, int nbyte);
int read_s (int s, char *buf, int nbyte);
int getpeername_s (int s,struct sockaddr *peername, int *peerlen);

#endif  /* _SOCKET_H */
