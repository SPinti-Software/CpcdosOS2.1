#ifndef _SOCKDEFS_H_
#define _SOCKDEFS_H_

#include <time.h>

#ifdef __cplusplus
extern "C" {
#endif

  char *sock_strerror(int i_nErrNo);
  int socket(int i_nAf, int i_nType, int i_nProtocol);
  int ioctl(int i_nSocket, int i_nRequest, int *io_pParam);
  int close_socket(int i_nSocket); 
  int bind(int i_nSocket, struct sockaddr_in * i_pServer, int i_nSize);
  int listen(int i_nSocket, int i_nMaxConn);
  int connect( int i_nSocket, struct sockaddr * i_pAddr, int i_nAddrSize);
  int gethostname(char *o_pHost, int i_nHostMaxLen);
  int sendto(int i_nSocket, char *i_pMessage, int i_nMsgSize, int i_nFlags, struct sockaddr *i_pAddr, int i_nAddrSize);
  int driver_exit(int i_nTmp);
  int select(int i_nFdsNum, 
             fd_set * i_pReadFds, 
             fd_set * i_pWriteFds, 
             fd_set * i_pExceptFds,
             struct timeval * i_pTimeout);
  int recv(int i_nSocket, char *o_pMsg, int i_nMsgSize, int i_nFlags);
  int accept(int i_nSocket, struct sockaddr *i_pAddr, int *i_nAddrSize);
  int send(int i_nSocket, char *i_pMessage, int i_nMsgSize, int i_nFlags);

  unsigned long inet_addr (const char *addr);
  char * inet_ntoa (struct in_addr addr);

#ifdef __cplusplus
}
#endif

#endif
