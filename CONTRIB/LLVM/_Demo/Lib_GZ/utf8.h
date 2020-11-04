
#include "Lib_GZ/GzTypes.h"

/* is c the start of a utf8 sequence? */
#define isutf(c) (((c)&0xC0)!=0x80)

/* Some fundamental constants */
#define UNI_REPLACEMENT_CHAR (gzUInt32)0x0000FFFD
#define UNI_MAX_BMP (gzUInt32)0x0000FFFF
#define UNI_MAX_UTF16 (gzUInt32)0x0010FFFF
#define UNI_MAX_UTF32 (gzUInt32)0x7FFFFFFF
#define UNI_MAX_LEGAL_UTF32 (gzUInt32)0x0010FFFF

gzUInt16* NewConvertUTF8toUTF16 ( const gzUInt8* source);
gzUInt8* NewConvertUTF16toUTF8 ( const gzUInt16* source);
int ConvertUTF8toUTF16 ( const gzUInt8* source,  gzUInt16* target);
int ConvertUTF16toUTF8 ( const gzUInt16* source,  gzUInt8* target);

gzUInt8* u8_fNewUtf32ToUtf8(gzUInt32 _nChar);


//void u8_fUtf32ToUtf8(gzUInt32 _nChar, gzUInt8* _sDest);

gzInt32 u8_fGetChar(gzUInt8* _sSrc);

/* convert UTF-8 data to wide character */
int u8_toucs(gzInt32 *dest, int sz, char *src, int srcsz);

/* the opposite conversion */
int u8_toutf8(char *dest, int sz, gzInt32 *src, int srcsz);

/* single character to UTF-8 */
int u8_wc_toutf8(char* dest, gzInt32 ch);

/* character number to byte offset */
int u8_offset(char *str, int charnum);

/* byte offset to character number */
int u8_charnum(char *s, int offset);

/* return next character, updating an index variable */

gzInt32 u8_nextchar(char *s, int *i);
gzUInt8 u8_next(gzUInt8* _sSrc);
gzInt8 u8_prev(gzUInt8* _sSrc);
//void u8_next( gzUInt8* _sSrc);

/* move to next character */
void u8_inc(char *s, int *i);

/* move to previous character */
void u8_dec(char *s, int *i);

/* returns length of next utf-8 sequence */
int u8_seqlen(char *s);

/* assuming src points to the character after a backslash, read an
   escape sequence, storing the result in dest and returning the number of
   input characters processed */
int u8_read_escape_sequence(char *src, gzInt32 *dest);

/* given a wide character, convert it to an ASCII escape sequence stored in
   buf, where buf is "sz" bytes. returns the number of characters output. */
int u8_escape_wchar(char *buf, int sz, gzInt32 ch);

/* convert a string "src" containing escape sequences to UTF-8 */
int u8_unescape(char *buf, int sz, char *src);

/* convert UTF-8 "src" to ASCII with escape sequences.
   if escape_quotes is nonzero, quote characters will be preceded by
   backslashes as well. */
int u8_escape(char *buf, int sz, char *src, int escape_quotes);

/* 
// utility predicates used by the above 
int octal_digit(char c);
int hex_digit(char c);

//return a pointer to the first occurrence of ch in s, or NULL if not
   found. character index of found character returned in *charn. 
char *u8_strchr(char *s, gzInt32 ch, int *charn);

same as the above, but searches a buffer of a given size instead of
   a NUL-terminated string. */
//char *u8_memchr(char *s, gzInt32 ch, size_t sz, int *charn);
/*
// count the number of characters in a UTF-8 string 
int u8_strlen(char *s);


int u8_is_locale_utf8(char *locale);

// printf where the format string and arguments may be in UTF-8.
//   you can avoid this function and just use ordinary printf() if the current
 //  locale is UTF-8.
int u8_vprintf(char *fmt, va_list ap);
int u8_printf(char *fmt, ...);
*/