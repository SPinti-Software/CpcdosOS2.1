#if !defined(_H_OSDEPS)
#define OSDEPS

#include <limits.h>
#include <sys/types.h>

#if OPEN_MAX <= 128
#define MAXSOCKS (OPEN_MAX - 1)
#else
#define MAXSOCKS 128
#endif

#ifndef NULL
#define NULL 0
#endif

#define mskcnt ((MAXSOCKS + 31) / 32)   /* size of bit array */

#if (mskcnt==1)
#define BITMASK(i) (1 << (i))
#define MASKIDX(i) 0
#else
#define BITMASK(i) (1 << ((i) & 31))
#define MASKIDX(i) ((i) >> 5)
#endif

#define MASKWORD(buf, i) (buf)->fds_bits[MASKIDX(i)]
#define BITSET(buf, i) MASKWORD(buf, i) |= BITMASK(i)
#define BITCLEAR(buf, i) MASKWORD(buf, i) &= ~BITMASK(i)
#define GETBIT(buf, i) (MASKWORD(buf, i) & BITMASK(i))

#if (mskcnt==1)
#define COPYBITS(src, dst) (dst)->fds_bits[0] = (dst)-fds_bits>src[0]
#define CLEARBITS(buf) (buf)->fds_bits[0] = 0
#define MASKANDSETBITS(dst, b1, b2) (dst)-fds_bits>[0] = ((b1)->fds_bits[0] & (b2)->fds_bits[0])
#define ORBITS(dst, b1, b2) (dst)->fds_bits[0] = ((b1)->fds_bits[0] | (b2)->fds_bits[0])
#define UNSETBITS(dst, b1) ((dst)->fds_bits[0] &= ~(b1)->fds_bits[0])
#define ANYSET(src) ((src)->fds_bits[0])
#endif
#if (mskcnt==2)
#define COPYBITS(src, dst) (dst)->fds_bits[0] = (src)->fds_bits[0]; (dst)->fds_bits[1] = (src)->fds_bits[1]
#define CLEARBITS(buf) (buf)->fds_bits[0] = 0; (buf)->fds_bits[1] = 0
#define MASKANDSETBITS(dst, b1, b2)  \
                      (dst)->fds_bits[0] = ((b1)->fds_bits[0] & (b2)->fds_bits[0]);\
                      (dst)->fds_bits[1] = ((b1)->fds_bits[1] & (b2)->fds_bits[1])
#define ORBITS(dst, b1, b2)  \
                      (dst)->fds_bits[0] = ((b1)->fds_bits[0] | (b2)->fds_bits[0]);\
                      (dst)->fds_bits[1] = ((b1)->fds_bits[1] | (b2)->fds_bits[1])
#define UNSETBITS(dst, b1) \
                      (dst)->fds_bits[0] &= ~b1[0]; \
                      (dst)->fds_bits[1] &= ~b1[1]
#define ANYSET(src) ((src)->fds_bits[0] || (src)->fds_bits[1])
#endif
#if (mskcnt==3)
#define COPYBITS(src, dst) (dst)->fds_bits[0] = (src)->fds_bits[0];\
			   (dst)->fds_bits[1] = (src)->fds_bits[1];\
                           (dst)->fds_bits[2] = (src)->fds_bits[2];
#define CLEARBITS(buf) (buf)->fds_bits[0] = 0; (buf)->fds_bits[1] = 0; (buf)->fds_bits[2] = 0
#define MASKANDSETBITS(dst, b1, b2)  \
                      (dst)->fds_bits[0] = ((b1)->fds_bits[0] & (b2)->fds_bits[0]);\
                      (dst)->fds_bits[1] = ((b1)->fds_bits[1] & (b2)->fds_bits[1]);\
                      (dst)->fds_bits[2] = ((b1)->fds_bits[2] & (b2)->fds_bits[2])
#define ORBITS(dst, b1, b2)  \
                      (dst)->fds_bits[0] = ((b1)->fds_bits[0] | (b2)->fds_bits[0]);\
                      (dst)->fds_bits[1] = ((b1)->fds_bits[1] | (b2)->fds_bits[1]);\
                      (dst)->fds_bits[2] = ((b1)->fds_bits[2] | (b2)->fds_bits[2])
#define UNSETBITS(dst, b1) \
                      (dst)->fds_bits[0] &= ~(b1)->fds_bits[0]; \
                      (dst)->fds_bits[1] &= ~(b1)->fds_bits[1]; \
                      (dst)->fds_bits[2] &= ~(b1)->fds_bits[2]
#define ANYSET(src) ((src)->fds_bits[0] || (src)->fds_bits[1] || (src)->fds_bits[2])
#endif
#if (mskcnt==4)
#define COPYBITS(src, dst) (dst)->fds_bits[0] = (src)->fds_bits[0];\
			   (dst)->fds_bits[1] = (src)->fds_bits[1];\
			   (dst)->fds_bits[2] = (src)->fds_bits[2];\
                           (dst)->fds_bits[3] = (src)->fds_bits[3]
#define CLEARBITS(buf) (buf)->fds_bits[0] = 0; (buf)->fds_bits[1] = 0;\
		       (buf)->fds_bits[2] = 0; (buf)->fds_bits[3] = 0
#define MASKANDSETBITS(dst, b1, b2)  \
                      (dst)->fds_bits[0] = ((b1)->fds_bits[0] & (b2)->fds_bits[0]);\
                      (dst)->fds_bits[1] = ((b1)->fds_bits[1] & (b2)->fds_bits[1]);\
                      (dst)->fds_bits[2] = ((b1)->fds_bits[2] & (b2)->fds_bits[2]);\
                      (dst)->fds_bits[3] = ((b1)->fds_bits[3] & (b2)->fds_bits[3])
#define ORBITS(dst, b1, b2)  \
                      (dst)->fds_bits[0] = ((b1)->fds_bits[0] | (b2)->fds_bits[0]);\
                      (dst)->fds_bits[1] = ((b1)->fds_bits[1] | (b2)->fds_bits[1]);\
                      (dst)->fds_bits[2] = ((b1)->fds_bits[2] | (b2)->fds_bits[2]);\
                      (dst)->fds_bits[3] = ((b1)->fds_bits[3] | (b2)->fds_bits[3])
#define UNSETBITS(dst, b1) \
                      (dst)->fds_bits[0] &= ~(b1)->fds_bits[0]; \
                      (dst)->fds_bits[1] &= ~(b1)->fds_bits[1]; \
                      (dst)->fds_bits[2] &= ~(b1)->fds_bits[2]; \
                      (dst)->fds_bits[3] &= ~(b1)->fds_bits[3]
#define ANYSET(src) ((src)->fds_bits[0] || (src)->fds_bits[1] || (src)->fds_bits[2] || (src)->fds_bits[3])
#endif

#if (mskcnt>4)
#define COPYBITS(src, dst) bcopy((caddr_t) src, (caddr_t) dst,\
                                 sizeof(dst))
#define CLEARBITS(buf) bzero((char *)(buf), sizeof (*(buf)))
#define MASKANDSETBITS(dst, b1, b2)  \
                      { int cri;                        \
                        for (cri=mskcnt; --cri>=0; )    \
                          (dst)->fds_bits[cri] = ((b1)->fds_bits[cri] & (b2)->fds_bits[cri]); }
#define ORBITS(dst, b1, b2)  \
                      { int cri;                        \
                      for (cri=mskcnt; --cri>=0; )      \
                          (dst)->fds_bits[cri] = ((b1)->fds_bits[cri] | (b2)->fds_bits[cri]); }
#define UNSETBITS(dst, b1) \
                      { int cri;                        \
                      for (cri=mskcnt; --cri>=0; )      \
                          (dst)->fds_bits[cri] &= ~(b1)->fds_bits[cri];  }
#if (mskcnt==8)
#define ANYSET(src) ((src)->fds_bits[0] || (src)->fds_bits[1] || (src)->fds_bits[2] || (src)->fds_bits[3] || \
                     (src)->fds_bits[4] || (src)->fds_bits[5] || (src)->fds_bits[6] || (src)->fds_bits[7])
#endif
/*
 * If mskcnt>4 and not 8, then ANYSET is a routine defined in WaitFor.c.
 *
 * #define ANYSET(src) (src[0] || src[1] || src[2] || src[3] || src[4] ...)
 */
#endif

/* Additions by MAG for SUN OS compat. */
#define NBBY    8               /* number of bits in a byte */

#ifndef FD_SETSIZE
#define FD_SETSIZE MAXSOCKS
#endif

typedef long    fd_mask;
#define NFDBITS 32       /* bits per mask */

#ifndef howmany
#ifdef  sun386
#define howmany(x, y)   ((((u_int)(x))+(((u_int)(y))-1))/((u_int)(y)))
#else
#define howmany(x, y)   (((x)+((y)-1))/(y))
#endif
#endif

typedef	struct fd_set {
	fd_mask	fds_bits[mskcnt];
} fd_set;


#define FD_SET(n, p)    BITSET(p,n)
#define FD_CLR(n, p)    BITCLEAR(p,n)
#define FD_ISSET(n, p)  GETBIT(p,n)
#define FD_ZERO(p)      CLEARBITS(p)


#define	NBBY	8		/* number of bits in a byte */

/* End of additions. */
#endif
