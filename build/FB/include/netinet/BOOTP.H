
/*
 * Bootstrap Protocol (BOOTP)
 * Based on RFC 951.
 */


#define BOOTREQUEST 	1	/* bootp.bp_op */
#define BOOTREPLY	2

/*
 * structure for send and receives
 */
typedef struct bootp {
	byte	 bp_op;		/* packet op code / message type. */
	byte	 bp_htype;	/* hardware address type, 1 = 10 mb ethernet */
	byte	 bp_hlen;	/* hardware address len, eg '6' for 10mb eth */
	byte	 bp_hops;	/* client sets to zero, optionally used by
				   gateways in cross-gateway booting. */
	longword bp_xid;	/* transaction ID, a random number */
	word	 bp_secs;	/* filled in by client, seconds elapsed since
				   client started trying to boot. */
	word	 bp_spare;
	longword bp_ciaddr;	/* client IP address filled in by client if known*/
	longword bp_yiaddr;	/* 'your' (client) IP address
				   filled by server if client doesn't know */
	longword bp_siaddr;	/* server IP address returned in bootreply */
	longword bp_giaddr;	/* gateway IP address,
				   used in optional cross-gateway booting. */
	byte	 bp_chaddr[16];	/* client hardware address, filled by client */
	byte	 bp_sname[64];	/* optional server host name, null terminated*/

	byte	 bp_file[128];	/* boot file name, null terminated string
				   'generic' name or null in bootrequest,
				   fully qualified directory-path
				   name in bootreply. */
	byte	 bp_vend[ 64];	/* optional vendor-specific area */
};


extern struct bootp _bootp;
extern word sock_inactive;

/*
 * UDP port numbers, server and client.
 */
#define	IPPORT_BOOTPS		67
#define	IPPORT_BOOTPC		68


/******** the following is stolen from NCSA which came from CUTCP *********/
/* I have not implemented these, but someone may wish to in the future so */
/* I kept them around.                                                    */
/**************************************************************************/

/*
 * "vendor" data permitted for Stanford boot clients.
 */
struct vend {
	byte 	 v_magic[4];	/* magic number */
	longword v_flags;	/* flags/opcodes, etc. */
	byte 	 v_unused[56];	/* currently unused */
};

#define	VM_STANFORD	"STAN"	/* v_magic for Stanford */
#define VM_RFC1048      "\143\202\123\143"

/* v_flags values */
#define	VF_PCBOOT	1	/* an IBMPC or Mac wants environment info */
#define	VF_HELP		2	/* help me, I'm not registered */
#define TAG_BOOTFILE_SIZE       13     /* tag used by vend fields rfc 1048 */


