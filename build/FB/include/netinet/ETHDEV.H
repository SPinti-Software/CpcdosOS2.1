/*
 *
 * Ethernet Interface
 */
#define pack __attribute__ ((packed))

extern byte *_eth_FormatPacket(), *_eth_WaitPacket();

typedef struct ether {
    byte	dest[6] pack;
    byte	src[6] pack;
    word	type pack;
    byte	data[ 1500 ] pack;
};


#define ETH_MIN	60              /* Minimum Ethernet packet size */
