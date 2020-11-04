
#include "GzMem.h"
#include "utf8.h"

static const gzUInt32 offsetsFromUTF8[6] = {
    0x00000000UL, 0x00003080UL, 0x000E2080UL,
    0x03C82080UL, 0xFA082080UL, 0x82082080UL
};

//static const char trailingBytesForUTF8[256] = {
  char trailingBytesForUTF8[] = {
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2, 3,3,3,3,3,3,3,3,4,4,4,4,5,5,5,5
};

/* returns length of next utf-8 sequence */
int u8_seqlen(char *s)
{
    return trailingBytesForUTF8[(unsigned int)(unsigned char)s[0]] + 1;
}


static const int halfShift  = 10; /* used for shifting by 10 bits */

static const gzUInt32 halfBase = 0x0010000UL;
static const gzUInt32 halfMask = 0x3FFUL;
#define UNI_SUR_HIGH_START  (gzUInt32)0xD800
#define UNI_SUR_HIGH_END    (gzUInt32)0xDBFF
#define UNI_SUR_LOW_START   (gzUInt32)0xDC00
#define UNI_SUR_LOW_END     (gzUInt32)0xDFFF



 gzUInt16* NewConvertUTF8toUTF16 ( const gzUInt8* source) {

    gzUInt32 _sSize = 0;
    const gzUInt8* _sSrcCt = source;
    ///////// Calculate target size ////////////
    while (*_sSrcCt != 0){
        gzUInt32 ch = 0;
        unsigned short extraBytesToRead = trailingBytesForUTF8[*_sSrcCt];
        switch (extraBytesToRead) {
            case 5: ch += *_sSrcCt++; ch <<= 6; //Not UTF-8
            case 4: ch += *_sSrcCt++; ch <<= 6; //Not UTF-8
            case 3: ch += *_sSrcCt++; ch <<= 6;
            case 2: ch += *_sSrcCt++; ch <<= 6;
            case 1: ch += *_sSrcCt++; ch <<= 6;
            case 0: ch += *_sSrcCt++;
        }
        ch -= offsetsFromUTF8[extraBytesToRead];
        if (ch > UNI_MAX_BMP && ch <= UNI_MAX_UTF16) { //Range 0xFFFF - 0x10FFFF
             _sSize +=2;
        } else { //Normal / Error
            _sSize ++;
        }
    }
    ///////////////////////////////////////////
   gzUInt16* sResult = (gzUInt16*)GZ_fMalloc(_sSize + 1, sizeof(gzUInt16) );
    ConvertUTF8toUTF16(source, sResult);
    return sResult;
 }

int ConvertUTF8toUTF16 ( const gzUInt8* source,  gzUInt16* target) {
    while (*source != 0 ) {

        gzUInt32 ch = 0;
        unsigned short extraBytesToRead = trailingBytesForUTF8[*source];

        switch (extraBytesToRead) {
            case 5: ch += *source++; ch <<= 6; //Not UTF-8
            case 4: ch += *source++; ch <<= 6; //Not UTF-8
            case 3: ch += *source++; ch <<= 6;
            case 2: ch += *source++; ch <<= 6;
            case 1: ch += *source++; ch <<= 6;
            case 0: ch += *source++;
        }
        ch -= offsetsFromUTF8[extraBytesToRead];

        if (ch <= UNI_MAX_BMP) { // Target is a character <= 0xFFFF
            if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_LOW_END) {
                *target++ = UNI_REPLACEMENT_CHAR; //Char Error
            } else {
                *target++ = (gzUInt16)ch; // Normal case
            }
        } else if (ch > UNI_MAX_UTF16) {
                *target++ = UNI_REPLACEMENT_CHAR; //Char Error
        } else {
            // target is a character in range 0xFFFF - 0x10FFFF. Have anoter char following
            ch -= halfBase;
            *target++ = (gzUInt16)((ch >> halfShift) + UNI_SUR_HIGH_START);
            *target++ = (gzUInt16)((ch & halfMask) + UNI_SUR_LOW_START);
        }
    }
    *target = 0;
    return 1;
}

////////////////////////////////////////////////
//////////////////////////////////////////////////

gzUInt8* NewConvertUTF16toUTF8 ( const gzUInt16* source){

    gzUInt32 _sSize = 0;
    const gzUInt16* _sSrcCt = source;
    ///////// Calculate target size ////////////

   while (*_sSrcCt != 0 ) {

        gzUInt32 ch = 0;

        const gzUInt32 byteMask = 0xBF;
        const gzUInt32 byteMark = 0x80;
        ch = *_sSrcCt++;
        gzUInt32 ch2 = *_sSrcCt;
        /* If we have a surrogate pair, convert to UTF32 first. */
        if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_HIGH_END) {
            gzUInt32 ch2 = *source;
            /* If it's a low surrogate, convert to UTF32. */
            if (ch2 >= UNI_SUR_LOW_START && ch2 <= UNI_SUR_LOW_END) {
                ch = ((ch - UNI_SUR_HIGH_START) << halfShift)
                    + (ch2 - UNI_SUR_LOW_START) + halfBase;
                ++source;
            }
        }
        /* Figure out how many bytes the result will require */
        if (ch < (gzUInt32)0x80) {      _sSize += 1;
        } else if (ch < (gzUInt32)0x800) {     _sSize += 2;
        } else if (ch < (gzUInt32)0x10000) {   _sSize += 3;
        } else if (ch < (gzUInt32)0x110000) {  _sSize += 4;
        } else {                           _sSize += 3;

        }
    }

    ///////////////////////////////////////////
   gzUInt8* _sResult = (gzUInt8*)GZ_fMalloc(_sSize + 2, sizeof(gzUInt8) );
    ConvertUTF16toUTF8(source, _sResult + 1);
    _sResult[0] = _sSize+1;
    _sResult[_sSize + 1] = 0;
    return _sResult;
 }
static const gzUInt8 firstByteMark[7] = { 0x00, 0x00, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC };
int ConvertUTF16toUTF8 ( const gzUInt16* source,  gzUInt8* target) {

    while (*source != 0 ) {

        gzUInt32 ch = 0;

        unsigned short bytesToWrite = 0;
        const gzUInt32 byteMask = 0xBF;
        const gzUInt32 byteMark = 0x80;

        ch = *source++;
        /* If we have a surrogate pair, convert to UTF32 first. */
        if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_HIGH_END) {
            gzUInt32 ch2 = *source;
            /* If it's a low surrogate, convert to UTF32. */
            if (ch2 >= UNI_SUR_LOW_START && ch2 <= UNI_SUR_LOW_END) {
                ch = ((ch - UNI_SUR_HIGH_START) << halfShift)
                    + (ch2 - UNI_SUR_LOW_START) + halfBase;
                ++source;
            }
        }

        /* Figure out how many bytes the result will require */
        if (ch < (gzUInt32)0x80) {      bytesToWrite = 1;
        } else if (ch < (gzUInt32)0x800) {     bytesToWrite = 2;
        } else if (ch < (gzUInt32)0x10000) {   bytesToWrite = 3;
        } else if (ch < (gzUInt32)0x110000) {  bytesToWrite = 4;
        } else {                            bytesToWrite = 3;
                                            ch = UNI_REPLACEMENT_CHAR;
        }

        target += bytesToWrite;

        switch (bytesToWrite) {
            case 4: *--target = (gzUInt8)((ch | byteMark) & byteMask); ch >>= 6;
            case 3: *--target = (gzUInt8)((ch | byteMark) & byteMask); ch >>= 6;
            case 2: *--target = (gzUInt8)((ch | byteMark) & byteMask); ch >>= 6;
            case 1: *--target =  (gzUInt8)(ch | firstByteMark[bytesToWrite]);
        }
        target += bytesToWrite;
    }

    return 1;
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////



 gzUInt8* u8_fNewUtf32ToUtf8(gzUInt32 _nChar){

    if (_nChar < 0x80) {
         gzUInt8* _sDest = (gzUInt8*)GZ_fMalloc(3, sizeof(gzUInt8) );
        _sDest[0] = 2;
        _sDest[1] = (gzUInt8)_nChar;
        _sDest[2] = 0;
        return _sDest;

    }else if (_nChar < 0x800) {
        gzUInt8* _sDest = (gzUInt8*)GZ_fMalloc(4, sizeof(gzUInt8) );
        _sDest[0] = 3;
        _sDest[1] = (_nChar >> 6) | 0xC0;
        _sDest[2] = (_nChar & 0x3F) | 0x80;
        _sDest[3] = 0;
        return _sDest;

    }else if (_nChar < 0x10000) {
        gzUInt8* _sDest = (gzUInt8*)GZ_fMalloc(5, sizeof(gzUInt8) );
        _sDest[0] = 4;
        _sDest[1] = (_nChar >> 12) | 0xE0;
        _sDest[2] = ((_nChar >> 6) & 0x3F) | 0x80;
        _sDest[3] = (_nChar & 0x3F) | 0x80;
        _sDest[4] = 0;
        return _sDest;

    }else if (_nChar < 0x110000) { //UNI_MAX_LEGAL_UTF32 0x0010FFFF ?
        gzUInt8* _sDest = (gzUInt8*)GZ_fMalloc(6, sizeof(gzUInt8) );
        _sDest[0] = 5;
        _sDest[1] = (_nChar >> 18) | 0xF0;
        _sDest[2] = ((_nChar >> 12) & 0x3F) | 0x80;
        _sDest[3] = ((_nChar >> 6) & 0x3F) | 0x80;
        _sDest[4] = (_nChar & 0x3F) | 0x80;
        _sDest[5] = 0;
        return _sDest;
    }else{
        return 0; //Error?
    }

}


gzInt32 u8_fGetChar(gzUInt8* _sSrc){

    gzUInt32 ch = 0;
   // const gzUInt8* _sSrc = s;
    unsigned short extraBytesToRead = trailingBytesForUTF8[*_sSrc];
    switch (extraBytesToRead) {
        case 0:
            ch += *_sSrc;        break;
        case 1:
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++;        break;
        case 2:
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++;
        break;
        case 3:
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++;
        break;
        case 4:
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++;
        break;
        case 5:
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++;
        break;
        case 6:
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++; ch <<= 6;
            ch += *_sSrc++;
        break;
    }
    ch -= offsetsFromUTF8[extraBytesToRead];
    return ch;
}



gzInt32 u8_nextchar(char *s, int *i)
{
    gzInt32 ch = 0;
    int sz = 0;

    do {
        ch <<= 6;
        ch += (unsigned char)s[(*i)++];
        sz++;
    } while (s[*i] && !isutf(s[*i]));
    ch -= offsetsFromUTF8[sz-1];

    return ch;
}


gzUInt8 u8_next(gzUInt8* _sSrc) {
    return trailingBytesForUTF8[*_sSrc] + 1;
}

gzInt8 u8_prev(gzUInt8* _sSrc) {
    int i = 0;
    (void)(isutf(_sSrc[--i]) || isutf(_sSrc[--i]) ||
           isutf(_sSrc[--i]) || --i);
    return i;
}

void u8_inc(char *s, int *i)
{
    (void)(isutf(s[++(*i)]) || isutf(s[++(*i)]) ||
           isutf(s[++(*i)]) || ++(*i));
}

void u8_dec(char *s, int *i)
{
    (void)(isutf(s[--(*i)]) || isutf(s[--(*i)]) ||
           isutf(s[--(*i)]) || --(*i));
}

