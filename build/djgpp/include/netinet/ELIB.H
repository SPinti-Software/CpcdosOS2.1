void outch( char ch );		/* print character to stdio */
void outs( char *s);		/* print a ASCIIZ string to stdio */
void outhex( char ch );
void outhexes( char *ch, int n );

char *itoa (int val, char *buf, int radix);

unsigned long set_timeout( unsigned short seconds );
unsigned long set_ttimeout( unsigned long ticks );
int chk_timeout( unsigned long timeout );

unsigned long intel( unsigned long );
unsigned short intel16( unsigned short );
unsigned short inchksum( void *ptr, int len);	/* IP checksum */
