/* sock_type used for socket io */
typedef union {
    udp_Socket udp;
    tcp_Socket tcp;
} sock_type;

/*
 *  94.04.20 by MF
 *  fds - file descriptor
 *  lds - listen file descriptor
 */
typedef struct {
  sock_type s;
  word type;
  word port;
  int fds, lds;
} _ext_socket;

#define SYSSOCK 1
