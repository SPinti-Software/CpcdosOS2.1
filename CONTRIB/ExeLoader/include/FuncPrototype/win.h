/*  -== ExeLoader ==-
 *
 *  Load .exe / .dll from memory and remap functions
 *  Run your binaries on any x86 hardware
 *
 *  @autors
 *   - Maeiky
 *   - Sebastien FAVIER
 *  
 * Copyright (c) 2020 - V·Liance / SPinti-Software. All rights reserved.
 *
 * The contents of this file are subject to the Apache License Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * If a copy of the Apache License Version 2.0 was not distributed with this file,
 * You can obtain one at https://www.apache.org/licenses/LICENSE-2.0.html

* Description:
* 
* Minimal Windows function prototype extracted, for non-Windows based system
*
*/

#ifdef ImWin
#undef _WIN32_WINNT
#define _WIN32_WINNT 0x0600
//#include <windows.h>
#include "full_windows.h"

#define HDEF_Win  //Desactivate following
#else // RealWin

	#ifdef ImWin
	#define STDCALL __stdcall
	#else // CpcDos
	#define STDCALL __attribute__((stdcall))
	#endif
	#define NTAPI STDCALL
	#define CALLBACK STDCALL

	#ifdef ImWin
	#undef CDECL
	#define CDECL  __cdecl
	#else // CpcDos
	#define CDECL __attribute__((cdecl))
	#endif

	#ifndef HDEF_Win
	#define HDEF_Win


	#define WINAPI STDCALL

	#include <stdlib.h>
	#include <string.h>

	#define BOOL bool
	#define FALSE false
	#define TRUE true

	#define CONST const
	#define VOID void

	#ifndef __SIZE_TYPE__
	#  ifdef _WIN64
	#    define __SIZE_TYPE__ long long unsigned int
	#  else
	#    define __SIZE_TYPE__ long unsigned int
	#  endif
	#endif
	  typedef int INT;
	  typedef unsigned int UINT;
	  typedef unsigned int *PUINT;

	#ifndef _LPCVOID_DEFINED
	#define _LPCVOID_DEFINED
	  typedef CONST void *LPCVOID;
	#endif

	#ifdef _WIN64
	  __MINGW_EXTENSION typedef __int64 INT_PTR,*PINT_PTR;
	  __MINGW_EXTENSION typedef unsigned __int64 UINT_PTR,*PUINT_PTR;
	  __MINGW_EXTENSION typedef __int64 LONG_PTR,*PLONG_PTR;
	  __MINGW_EXTENSION typedef unsigned __int64 ULONG_PTR,*PULONG_PTR;
	#define __int3264 __int64
	#else
	  typedef int INT_PTR,*PINT_PTR;
	  typedef unsigned int UINT_PTR,*PUINT_PTR;
	  typedef long LONG_PTR,*PLONG_PTR;
	  typedef unsigned long ULONG_PTR,*PULONG_PTR;
	#define __int3264 int
	#endif


	typedef ULONG_PTR SIZE_T,*PSIZE_T;
	typedef LONG_PTR SSIZE_T,*PSSIZE_T;

	#define UNREFERENCED_PARAMETER(P) {(P) = (P);}


#ifndef __LP64__	/* 32 bit target, 64 bit Mingw target */
#define __LONG32 long
#else			/* 64 bit Cygwin target */
#define __LONG32 int
#endif

	typedef char CHAR;
	typedef CHAR *NPSTR,*LPSTR,*PSTR;
	typedef unsigned char BYTE;
	typedef void *PVOID;
	typedef void *PVOID64;
	typedef PVOID HANDLE;
	typedef void *LPVOID;


	typedef unsigned short WORD;
	typedef unsigned __LONG32 DWORD;
	typedef float FLOAT;
	typedef FLOAT *PFLOAT;
	typedef BYTE *PBYTE;
	typedef BYTE *LPBYTE;
	typedef int *PINT;
	typedef int *LPINT;
	typedef WORD *PWORD;
	typedef WORD *LPWORD;
	typedef __LONG32 *LPLONG;
	typedef DWORD *PDWORD;
	typedef DWORD *LPDWORD;
	

#ifdef _WIN64
#define MAX_NATURAL_ALIGNMENT sizeof(ULONGLONG)
#define MEMORY_ALLOCATION_ALIGNMENT 16
#else
#define MAX_NATURAL_ALIGNMENT sizeof(DWORD)
#define MEMORY_ALLOCATION_ALIGNMENT 8
#endif

#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x502
#endif


#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long

   typedef __int64 LONGLONG;
   typedef unsigned __int64 ULONGLONG;

#define MAXLONGLONG (0x7fffffffffffffffll)

  typedef LONGLONG *PLONGLONG;
  typedef ULONGLONG *PULONGLONG;
  typedef LONGLONG USN;


	#define _DWORDLONG_
  typedef ULONGLONG DWORDLONG;
  typedef DWORDLONG *PDWORDLONG;
  
	  
    typedef struct _RTL_SRWLOCK { PVOID Ptr; } RTL_SRWLOCK,*PRTL_SRWLOCK;
    typedef struct _RTL_CONDITION_VARIABLE { PVOID Ptr; } RTL_CONDITION_VARIABLE,*PRTL_CONDITION_VARIABLE;
  typedef RTL_CONDITION_VARIABLE CONDITION_VARIABLE, *PCONDITION_VARIABLE;
  
		 typedef void *HMEMORYMODULE;

	#define DECLARE_HANDLE(name) typedef HANDLE name
	  DECLARE_HANDLE (HINSTANCE);

	  typedef CONST CHAR *LPCSTR,*PCSTR;

	#define UNALIGNED
	  //typedef HINSTANCE HMODULE;
	  typedef unsigned short WORD;
	  typedef void *HANDLE;
	typedef unsigned long DWORD;
	typedef DWORD *LPDWORD;

		typedef struct _IMAGE_BASE_RELOCATION {
		  DWORD VirtualAddress;
		  DWORD SizeOfBlock;
		} IMAGE_BASE_RELOCATION;
		typedef IMAGE_BASE_RELOCATION UNALIGNED *PIMAGE_BASE_RELOCATION;

			typedef struct _IMAGE_FILE_HEADER {
		  WORD Machine;
		  WORD NumberOfSections;
		  DWORD TimeDateStamp;
		  DWORD PointerToSymbolTable;
		  DWORD NumberOfSymbols;
		  WORD SizeOfOptionalHeader;
		  WORD Characteristics;
		} IMAGE_FILE_HEADER,*PIMAGE_FILE_HEADER;

		typedef struct _IMAGE_DATA_DIRECTORY {
		  DWORD VirtualAddress;
		  DWORD Size;
		} IMAGE_DATA_DIRECTORY,*PIMAGE_DATA_DIRECTORY;


	#define IMAGE_NUMBEROF_DIRECTORY_ENTRIES 16
		 typedef struct _IMAGE_OPTIONAL_HEADER {

		  WORD Magic;
		  BYTE MajorLinkerVersion;
		  BYTE MinorLinkerVersion;
		  DWORD SizeOfCode;
		  DWORD SizeOfInitializedData;
		  DWORD SizeOfUninitializedData;
		  DWORD AddressOfEntryPoint;
		  DWORD BaseOfCode;
		  DWORD BaseOfData;
		  DWORD ImageBase;
		  DWORD SectionAlignment;
		  DWORD FileAlignment;
		  WORD MajorOperatingSystemVersion;
		  WORD MinorOperatingSystemVersion;
		  WORD MajorImageVersion;
		  WORD MinorImageVersion;
		  WORD MajorSubsystemVersion;
		  WORD MinorSubsystemVersion;
		  DWORD Win32VersionValue;
		  DWORD SizeOfImage;
		  DWORD SizeOfHeaders;
		  DWORD CheckSum;
		  WORD Subsystem;
		  WORD DllCharacteristics;
		  DWORD SizeOfStackReserve;
		  DWORD SizeOfStackCommit;
		  DWORD SizeOfHeapReserve;
		  DWORD SizeOfHeapCommit;
		  DWORD LoaderFlags;
		  DWORD NumberOfRvaAndSizes;
		  IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
		} IMAGE_OPTIONAL_HEADER32,*PIMAGE_OPTIONAL_HEADER32;

			  typedef struct _IMAGE_NT_HEADERS {
		  DWORD Signature;
		  IMAGE_FILE_HEADER FileHeader;
		  IMAGE_OPTIONAL_HEADER32 OptionalHeader;
		} IMAGE_NT_HEADERS32,*PIMAGE_NT_HEADERS32;

		typedef IMAGE_NT_HEADERS32 IMAGE_NT_HEADERS;
		typedef PIMAGE_NT_HEADERS32 PIMAGE_NT_HEADERS;




		#define IMAGE_SIZEOF_SHORT_NAME 8

		typedef struct _IMAGE_SECTION_HEADER {
		  BYTE Name[IMAGE_SIZEOF_SHORT_NAME];
		  union {
		DWORD PhysicalAddress;
		DWORD VirtualSize;
		  } Misc;
		  DWORD VirtualAddress;
		  DWORD SizeOfRawData;
		  DWORD PointerToRawData;
		  DWORD PointerToRelocations;
		  DWORD PointerToLinenumbers;
		  WORD NumberOfRelocations;
		  WORD NumberOfLinenumbers;
		  DWORD Characteristics;
		} IMAGE_SECTION_HEADER,*PIMAGE_SECTION_HEADER;

		#    define __MSABI_LONG(x) x
	#define GENERIC_READ (__MSABI_LONG(0x80000000))
	#define GENERIC_WRITE (__MSABI_LONG(0x40000000))
	#define GENERIC_EXECUTE (__MSABI_LONG(0x20000000))
	#define GENERIC_ALL (__MSABI_LONG(0x10000000))

	#define OPEN_EXISTING 3
	#define FILE_ATTRIBUTE_NORMAL 0x00000080
	
  typedef __LONG32 LONG;

	typedef struct _IMAGE_DOS_HEADER {
		  WORD e_magic;
		  WORD e_cblp;
		  WORD e_cp;
		  WORD e_crlc;
		  WORD e_cparhdr;
		  WORD e_minalloc;
		  WORD e_maxalloc;
		  WORD e_ss;
		  WORD e_sp;
		  WORD e_csum;
		  WORD e_ip;
		  WORD e_cs;
		  WORD e_lfarlc;
		  WORD e_ovno;
		  WORD e_res[4];
		  WORD e_oemid;
		  WORD e_oeminfo;
		  WORD e_res2[10];
		  LONG e_lfanew;
		} IMAGE_DOS_HEADER,*PIMAGE_DOS_HEADER;

	  typedef unsigned long ULONG_PTR,*PULONG_PTR;
	  #define FIELD_OFFSET(Type, Field) ((LONG) __builtin_offsetof(Type, Field))
		#define IMAGE_FIRST_SECTION(ntheader) ((PIMAGE_SECTION_HEADER) ((ULONG_PTR)ntheader + FIELD_OFFSET(IMAGE_NT_HEADERS,OptionalHeader) + ((PIMAGE_NT_HEADERS)(ntheader))->FileHeader.SizeOfOptionalHeader))

	#define IMAGE_DIRECTORY_ENTRY_EXPORT 0
	#define IMAGE_DIRECTORY_ENTRY_IMPORT 1
	#define IMAGE_DIRECTORY_ENTRY_RESOURCE 2
	#define IMAGE_DIRECTORY_ENTRY_EXCEPTION 3
	#define IMAGE_DIRECTORY_ENTRY_SECURITY 4
	#define IMAGE_DIRECTORY_ENTRY_BASERELOC 5
	#define IMAGE_DIRECTORY_ENTRY_DEBUG 6
	#define IMAGE_DIRECTORY_ENTRY_ARCHITECTURE 7
	#define IMAGE_DIRECTORY_ENTRY_GLOBALPTR 8
	#define IMAGE_DIRECTORY_ENTRY_TLS 9
	#define IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG 10
	#define IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT 11
	#define IMAGE_DIRECTORY_ENTRY_IAT 12
	#define IMAGE_DIRECTORY_ENTRY_DELAY_IMPORT 13
	#define IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR 14


	#define PAGE_NOACCESS 0x01
	#define PAGE_READONLY 0x02
	#define PAGE_READWRITE 0x04
	#define PAGE_WRITECOPY 0x08
	#define PAGE_EXECUTE 0x10
	#define PAGE_EXECUTE_READ 0x20
	#define PAGE_EXECUTE_READWRITE 0x40
	#define PAGE_EXECUTE_WRITECOPY 0x80
	#define PAGE_GUARD 0x100
	#define PAGE_NOCACHE 0x200
	#define PAGE_WRITECOMBINE 0x400
	#define MEM_COMMIT 0x1000
	#define MEM_RESERVE 0x2000
	#define MEM_DECOMMIT 0x4000
	#define MEM_RELEASE 0x8000
	#define MEM_FREE 0x10000
	#define MEM_PRIVATE 0x20000
	#define MEM_MAPPED 0x40000
	#define MEM_RESET 0x80000
	#define MEM_TOP_DOWN 0x100000
	#define MEM_WRITE_WATCH 0x200000
	#define MEM_PHYSICAL 0x400000
	#define MEM_ROTATE 0x800000
	#define MEM_LARGE_PAGES 0x20000000
	#define MEM_4MB_PAGES 0x80000000
	#define SEC_FILE 0x800000
	#define SEC_IMAGE 0x1000000
	#define SEC_PROTECTED_IMAGE 0x2000000
	#define SEC_RESERVE 0x4000000
	#define SEC_COMMIT 0x8000000
	#define SEC_NOCACHE 0x10000000
	#define SEC_WRITECOMBINE 0x40000000
	#define SEC_LARGE_PAGES 0x80000000



	  typedef unsigned __LONG32 ULONG;
	  typedef CHAR *PCHAR,*LPCH,*PCH;
	# define __C89_NAMELESS

		  typedef struct _IMAGE_IMPORT_DESCRIPTOR {

		  __C89_NAMELESS union {
			DWORD Characteristics;
			DWORD OriginalFirstThunk;
		  } ;

		  DWORD TimeDateStamp;

		  DWORD ForwarderChain;
		  DWORD Name;
		  DWORD FirstThunk;
		} IMAGE_IMPORT_DESCRIPTOR;
		
		typedef IMAGE_IMPORT_DESCRIPTOR UNALIGNED *PIMAGE_IMPORT_DESCRIPTOR;
		typedef struct _IMAGE_IMPORT_BY_NAME {
		  WORD Hint;
		  BYTE Name[1];
		} IMAGE_IMPORT_BY_NAME,*PIMAGE_IMPORT_BY_NAME;

	#define IMAGE_REL_BASED_ABSOLUTE 0
	#define IMAGE_REL_BASED_HIGH 1
	#define IMAGE_REL_BASED_LOW 2
	#define IMAGE_REL_BASED_HIGHLOW 3
	#define IMAGE_REL_BASED_HIGHADJ 4
	#define IMAGE_REL_BASED_MIPS_JMPADDR 5
	#define IMAGE_REL_BASED_ARM_MOV32 5
	#define IMAGE_REL_BASED_THUMB_MOV32 7
	#define IMAGE_REL_BASED_MIPS_JMPADDR16 9
	#define IMAGE_REL_BASED_IA64_IMM64 9
	#define IMAGE_REL_BASED_DIR64 10

	#ifndef _TCHAR_DEFINED
	#define _TCHAR_DEFINED
	  typedef char TCHAR, *PTCHAR;
	  typedef unsigned char TBYTE, *PTBYTE;
	#endif
	#ifndef __WCHAR_DEFINED
	#define __WCHAR_DEFINED
	  typedef wchar_t WCHAR;
	#endif
	  typedef WCHAR *NWPSTR,*LPWSTR,*PWSTR;
	  typedef LPWSTR PTSTR,LPTSTR;
	  typedef CONST WCHAR *LPCWSTR,*PCWSTR;
	#ifdef _WIN64
	  typedef INT_PTR (WINAPI *FARPROC) ();
	  typedef INT_PTR (WINAPI *NEARPROC) ();
	  typedef INT_PTR (WINAPI *PROC) ();
	#else
	  typedef int (WINAPI *FARPROC) ();
	  typedef int (WINAPI *NEARPROC) ();
	  typedef int (WINAPI *PROC) ();
	#endif
	  typedef  char* LPCTSTR;

	#define IMAGE_SCN_CNT_CODE 0x00000020
	#define IMAGE_SCN_CNT_INITIALIZED_DATA 0x00000040
	#define IMAGE_SCN_CNT_UNINITIALIZED_DATA 0x00000080
	#define IMAGE_SCN_LNK_OTHER 0x00000100
	#define IMAGE_SCN_LNK_INFO 0x00000200
	#define IMAGE_SCN_LNK_REMOVE 0x00000800
	#define IMAGE_SCN_LNK_COMDAT 0x00001000
	#define IMAGE_SCN_NO_DEFER_SPEC_EXC 0x00004000
	#define IMAGE_SCN_GPREL 0x00008000
	#define IMAGE_SCN_MEM_FARDATA 0x00008000
	#define IMAGE_SCN_MEM_PURGEABLE 0x00020000
	#define IMAGE_SCN_MEM_16BIT 0x00020000
	#define IMAGE_SCN_MEM_LOCKED 0x00040000
	#define IMAGE_SCN_MEM_PRELOAD 0x00080000

	#define IMAGE_SCN_ALIGN_1BYTES 0x00100000
	#define IMAGE_SCN_ALIGN_2BYTES 0x00200000
	#define IMAGE_SCN_ALIGN_4BYTES 0x00300000
	#define IMAGE_SCN_ALIGN_8BYTES 0x00400000
	#define IMAGE_SCN_ALIGN_16BYTES 0x00500000
	#define IMAGE_SCN_ALIGN_32BYTES 0x00600000
	#define IMAGE_SCN_ALIGN_64BYTES 0x00700000
	#define IMAGE_SCN_ALIGN_128BYTES 0x00800000
	#define IMAGE_SCN_ALIGN_256BYTES 0x00900000
	#define IMAGE_SCN_ALIGN_512BYTES 0x00A00000
	#define IMAGE_SCN_ALIGN_1024BYTES 0x00B00000
	#define IMAGE_SCN_ALIGN_2048BYTES 0x00C00000
	#define IMAGE_SCN_ALIGN_4096BYTES 0x00D00000
	#define IMAGE_SCN_ALIGN_8192BYTES 0x00E00000

	#define IMAGE_SCN_ALIGN_MASK 0x00F00000

	#define IMAGE_SCN_LNK_NRELOC_OVFL 0x01000000
	#define IMAGE_SCN_MEM_DISCARDABLE 0x02000000
	#define IMAGE_SCN_MEM_NOT_CACHED 0x04000000
	#define IMAGE_SCN_MEM_NOT_PAGED 0x08000000
	#define IMAGE_SCN_MEM_SHARED 0x10000000
	#define IMAGE_SCN_MEM_EXECUTE 0x20000000
	#define IMAGE_SCN_MEM_READ 0x40000000
	#define IMAGE_SCN_MEM_WRITE 0x80000000

	#define IMAGE_SCN_SCALE_INDEX 0x00000001

	   typedef struct _IMAGE_TLS_DIRECTORY32 {
		  DWORD StartAddressOfRawData;
		  DWORD EndAddressOfRawData;
		  DWORD AddressOfIndex;
		  DWORD AddressOfCallBacks;
		  DWORD SizeOfZeroFill;
		  DWORD Characteristics;
		} IMAGE_TLS_DIRECTORY32;
		typedef IMAGE_TLS_DIRECTORY32 *PIMAGE_TLS_DIRECTORY32;

		typedef struct _IMAGE_THUNK_DATA32 {
		  union {
		DWORD ForwarderString;
		DWORD Function;
		DWORD Ordinal;
		DWORD AddressOfData;
		  } u1;
		} IMAGE_THUNK_DATA32;
		typedef IMAGE_THUNK_DATA32 *PIMAGE_THUNK_DATA32;


	#ifdef _WIN64
	#define IMAGE_ORDINAL_FLAG IMAGE_ORDINAL_FLAG64
	#define IMAGE_ORDINAL(Ordinal) IMAGE_ORDINAL64(Ordinal)
		typedef IMAGE_THUNK_DATA64 IMAGE_THUNK_DATA;
		typedef PIMAGE_THUNK_DATA64 PIMAGE_THUNK_DATA;
	#define IMAGE_SNAP_BY_ORDINAL(Ordinal) IMAGE_SNAP_BY_ORDINAL64(Ordinal)
		typedef IMAGE_TLS_DIRECTORY64 IMAGE_TLS_DIRECTORY;
		typedef PIMAGE_TLS_DIRECTORY64 PIMAGE_TLS_DIRECTORY;
	#else  /* _WIN64 */
	#define IMAGE_ORDINAL_FLAG IMAGE_ORDINAL_FLAG32
	#define IMAGE_ORDINAL(Ordinal) IMAGE_ORDINAL32(Ordinal)
		typedef IMAGE_THUNK_DATA32 IMAGE_THUNK_DATA;
		typedef PIMAGE_THUNK_DATA32 PIMAGE_THUNK_DATA;
	#define IMAGE_SNAP_BY_ORDINAL(Ordinal) IMAGE_SNAP_BY_ORDINAL32(Ordinal)
		typedef IMAGE_TLS_DIRECTORY32 IMAGE_TLS_DIRECTORY;
		typedef PIMAGE_TLS_DIRECTORY32 PIMAGE_TLS_DIRECTORY;
	#endif /* _WIN64 */
		typedef VOID (NTAPI *PIMAGE_TLS_CALLBACK)(PVOID DllHandle,DWORD Reason,PVOID Reserved);


		#define DLL_PROCESS_ATTACH 1
	#define DLL_THREAD_ATTACH 2
	#define DLL_THREAD_DETACH 3
	#define DLL_PROCESS_DETACH 0
	#define DLL_PROCESS_VERIFIER 4


	#define IMAGE_ORDINAL_FLAG64 0x8000000000000000ull
	#define IMAGE_ORDINAL_FLAG32 0x80000000
	#define IMAGE_ORDINAL64(Ordinal) (Ordinal & 0xffffull)
	#define IMAGE_ORDINAL32(Ordinal) (Ordinal & 0xffff)
	#define IMAGE_SNAP_BY_ORDINAL64(Ordinal) ((Ordinal & IMAGE_ORDINAL_FLAG64)!=0)
	#define IMAGE_SNAP_BY_ORDINAL32(Ordinal) ((Ordinal & IMAGE_ORDINAL_FLAG32)!=0)
	  typedef HINSTANCE HMODULE;

		typedef ULONG_PTR DWORD_PTR,*PDWORD_PTR;
	  #define IMAGE_DOS_SIGNATURE 0x5A4D
	#define IMAGE_OS2_SIGNATURE 0x454E
	#define IMAGE_OS2_SIGNATURE_LE 0x454C
	#define IMAGE_VXD_SIGNATURE 0x454C
	#define IMAGE_NT_SIGNATURE 0x00004550
	typedef struct _SYSTEM_INFO {
		__C89_NAMELESS union {
		  DWORD dwOemId;
		  __C89_NAMELESS struct {
		WORD wProcessorArchitecture;
		WORD wReserved;
		  } ;
		} ;
		DWORD dwPageSize;
		LPVOID lpMinimumApplicationAddress;
		LPVOID lpMaximumApplicationAddress;
		DWORD_PTR dwActiveProcessorMask;
		DWORD dwNumberOfProcessors;
		DWORD dwProcessorType;
		DWORD dwAllocationGranularity;
		WORD wProcessorLevel;
		WORD wProcessorRevision;
	  } SYSTEM_INFO, *LPSYSTEM_INFO;

	#define IMAGE_FILE_MACHINE_I386 0x014c
	#define HEAP_ZERO_MEMORY 0x00000008
	#define IMAGE_FILE_DLL 0x2000


	 typedef struct _IMAGE_EXPORT_DIRECTORY {
		  DWORD Characteristics;
		  DWORD TimeDateStamp;
		  WORD MajorVersion;
		  WORD MinorVersion;
		  DWORD Name;
		  DWORD Base;
		  DWORD NumberOfFunctions;
		  DWORD NumberOfNames;
		  DWORD AddressOfFunctions;
		  DWORD AddressOfNames;
		  DWORD AddressOfNameOrdinals;
		} IMAGE_EXPORT_DIRECTORY,*PIMAGE_EXPORT_DIRECTORY;

		#define MAKEWORD(a,b) ((WORD) (((BYTE) (((DWORD_PTR) (a)) & 0xff)) | ((WORD) ((BYTE) (((DWORD_PTR) (b)) & 0xff))) << 8))
	#define MAKELONG(a, b) ((LONG) (((WORD) (((DWORD_PTR) (a)) & 0xffff)) | ((DWORD) ((WORD) (((DWORD_PTR) (b)) & 0xffff))) << 16))
	#define LOWORD(l) ((WORD) (((DWORD_PTR) (l)) & 0xffff))
	#define HIWORD(l) ((WORD) ((((DWORD_PTR) (l)) >> 16) & 0xffff))
	#define LOBYTE(w) ((BYTE) (((DWORD_PTR) (w)) & 0xff))
	#define HIBYTE(w) ((BYTE) ((((DWORD_PTR) (w)) >> 8) & 0xff))

	#define IMAGE_RESOURCE_NAME_IS_STRING 0x80000000
	#define IMAGE_RESOURCE_DATA_IS_DIRECTORY 0x80000000

		typedef struct _IMAGE_RESOURCE_DIRECTORY_ENTRY {
		  __C89_NAMELESS union {
		__C89_NAMELESS struct {
		  DWORD NameOffset:31;
		  DWORD NameIsString:1;
		} ;
		DWORD Name;
		WORD Id;
		  } ;
		  __C89_NAMELESS union {
		DWORD OffsetToData;
		__C89_NAMELESS struct {
		  DWORD OffsetToDirectory:31;
		  DWORD DataIsDirectory:1;
		} DUMMYSTRUCTNAME2;
		  } DUMMYUNIONNAME2;
		} IMAGE_RESOURCE_DIRECTORY_ENTRY,*PIMAGE_RESOURCE_DIRECTORY_ENTRY;


		#define LANG_NEUTRAL                              0x00
	#define LANG_INVARIANT                            0x7f
	#define MAKELANGID(p,s) ((((WORD)(s)) << 10) | (WORD)(p))
	#define PRIMARYLANGID(lgid) ((WORD)(lgid) & 0x3ff)
	#define SUBLANGID(lgid) ((WORD)(lgid) >> 10)


	#define SUBLANG_NEUTRAL                           0x00
	#define SUBLANG_DEFAULT                           0x01
	#define SUBLANG_SYS_DEFAULT                       0x02
	#define SUBLANG_CUSTOM_DEFAULT                    0x03
	#define SUBLANG_CUSTOM_UNSPECIFIED                0x04
	#define SUBLANG_UI_CUSTOM_DEFAULT                 0x05

		typedef struct _IMAGE_RESOURCE_DIR_STRING_U {
		  WORD Length;
		  WCHAR NameString[1];
		} IMAGE_RESOURCE_DIR_STRING_U,*PIMAGE_RESOURCE_DIR_STRING_U;

		   typedef struct _IMAGE_RESOURCE_DIRECTORY {
		  DWORD Characteristics;
		  DWORD TimeDateStamp;
		  WORD MajorVersion;
		  WORD MinorVersion;
		  WORD NumberOfNamedEntries;
		  WORD NumberOfIdEntries;
		} IMAGE_RESOURCE_DIRECTORY,*PIMAGE_RESOURCE_DIRECTORY;


	# define __MINGW_NAME_AW(func) func##A
		#define IS_INTRESOURCE(_r) ((((ULONG_PTR)(_r)) >> 16)==0)
	#define MAKEINTRESOURCEA(i) ((LPSTR)((ULONG_PTR)((WORD)(i))))
	#define MAKEINTRESOURCEW(i) ((LPWSTR)((ULONG_PTR)((WORD)(i))))
	#define MAKEINTRESOURCE __MINGW_NAME_AW(MAKEINTRESOURCE)



	#define __TEXT(quote) quote
	#define TEXT(quote) __TEXT(quote)
	#define NUL '\0'

	#define IMAGE_RESOURCE_NAME_IS_STRING 0x80000000
	#define IMAGE_RESOURCE_DATA_IS_DIRECTORY 0x80000000



		typedef struct _IMAGE_RESOURCE_DIRECTORY_STRING {
		  WORD Length;
		  CHAR NameString[1];
		} IMAGE_RESOURCE_DIRECTORY_STRING,*PIMAGE_RESOURCE_DIRECTORY_STRING;


		typedef struct _IMAGE_RESOURCE_DATA_ENTRY {
		  DWORD OffsetToData;
		  DWORD Size;
		  DWORD CodePage;
		  DWORD Reserved;
		} IMAGE_RESOURCE_DATA_ENTRY,*PIMAGE_RESOURCE_DATA_ENTRY;



	  typedef BYTE *LPBYTE;
		typedef struct _STARTUPINFO {
	  DWORD  cb;
	  LPTSTR lpReserved;
	  LPTSTR lpDesktop;
	  LPTSTR lpTitle;
	  DWORD  dwX;
	  DWORD  dwY;
	  DWORD  dwXSize;
	  DWORD  dwYSize;
	  DWORD  dwXCountChars;
	  DWORD  dwYCountChars;
	  DWORD  dwFillAttribute;
	  DWORD  dwFlags;
	  WORD   wShowWindow;
	  WORD   cbReserved2;
	  LPBYTE lpReserved2;
	  HANDLE hStdInput;
	  HANDLE hStdOutput;
	  HANDLE hStdError;
	} STARTUPINFO, *LPSTARTUPINFO;

		  typedef LONG (WINAPI *PTOP_LEVEL_EXCEPTION_FILTER) (struct _EXCEPTION_POINTERS *ExceptionInfo);
		  typedef PTOP_LEVEL_EXCEPTION_FILTER LPTOP_LEVEL_EXCEPTION_FILTER;



		  typedef int WINBOOL;

		  typedef struct _SECURITY_ATTRIBUTES {
		DWORD nLength;
		LPVOID lpSecurityDescriptor;
		WINBOOL bInheritHandle;
	  } SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;




	  typedef WORD ATOM;


			typedef struct _FILETIME {
			DWORD dwLowDateTime;
			DWORD dwHighDateTime;
		  } FILETIME,*PFILETIME,*LPFILETIME;


	/*
	//#ifndef CpcDos
				  typedef enum _GET_FILEEX_INFO_LEVELS {
					GetFileExInfoStandard,
					GetFileExMaxInfoLevel
				  } GET_FILEEX_INFO_LEVELS;
				

				#define WINAPI __stdcall
				#define WINBASEAPI
				  typedef struct _WIN32_FILE_ATTRIBUTE_DATA {
					DWORD dwFileAttributes;
					FILETIME ftCreationTime;
					FILETIME ftLastAccessTime;
					FILETIME ftLastWriteTime;
					DWORD nFileSizeHigh;
					DWORD nFileSizeLow;
				  } WIN32_FILE_ATTRIBUTE_DATA, *LPWIN32_FILE_ATTRIBUTE_DATA;
				 extern "C" WINBASEAPI WINBOOL WINAPI GetFileAttributesExW (LPCWSTR lpFileName, GET_FILEEX_INFO_LEVELS fInfoLevelId, LPVOID lpFileInformation);
	//#endif // CpcDos
	*/



	  typedef unsigned long long  ULONGLONG;


	#ifndef _LIST_ENTRY_DEFINED
	#define _LIST_ENTRY_DEFINED

	  typedef struct _LIST_ENTRY {
		struct _LIST_ENTRY *Flink;
		struct _LIST_ENTRY *Blink;
	  } LIST_ENTRY,*PLIST_ENTRY;

	  typedef struct _SINGLE_LIST_ENTRY {
		struct _SINGLE_LIST_ENTRY *Next;
	  } SINGLE_LIST_ENTRY,*PSINGLE_LIST_ENTRY;

	  typedef struct LIST_ENTRY32 {
		DWORD Flink;
		DWORD Blink;
	  } LIST_ENTRY32;
	  typedef LIST_ENTRY32 *PLIST_ENTRY32;

	  typedef struct LIST_ENTRY64 {
		ULONGLONG Flink;
		ULONGLONG Blink;
	  } LIST_ENTRY64;
	  typedef LIST_ENTRY64 *PLIST_ENTRY64;

	#endif /* _LIST_ENTRY_DEFINED */
		typedef struct _RTL_CRITICAL_SECTION_DEBUG {
		  WORD Type;
		  WORD CreatorBackTraceIndex;
		  struct _RTL_CRITICAL_SECTION *CriticalSection;
		  LIST_ENTRY ProcessLocksList;
		  DWORD EntryCount;
		  DWORD ContentionCount;
		  DWORD Flags;
		  WORD CreatorBackTraceIndexHigh;
		  WORD SpareWORD;
		} RTL_CRITICAL_SECTION_DEBUG,*PRTL_CRITICAL_SECTION_DEBUG,RTL_RESOURCE_DEBUG,*PRTL_RESOURCE_DEBUG;


	typedef struct _RTL_CRITICAL_SECTION {
		  PRTL_CRITICAL_SECTION_DEBUG DebugInfo;
		  LONG LockCount;
		  LONG RecursionCount;
		  HANDLE OwningThread;
		  HANDLE LockSemaphore;
		  ULONG_PTR SpinCount;
		} RTL_CRITICAL_SECTION,*PRTL_CRITICAL_SECTION;
	  typedef PRTL_CRITICAL_SECTION LPCRITICAL_SECTION;

	typedef long long LONGLONG;
	typedef union _LARGE_INTEGER {
		 struct {
		  DWORD LowPart;
		  LONG HighPart;
		} DUMMYSTRUCTNAME;
		struct {
		  DWORD LowPart;
		  LONG HighPart;
		} u;

		LONGLONG QuadPart;
	  } LARGE_INTEGER;

	#define SHORT  short int

	  #define _In_
	#define _In_opt_
	#define _Out_
	#define _Inout_

	  typedef struct _COORD {
		SHORT X;
		SHORT Y;
	  } COORD,*PCOORD;

	  typedef struct _SMALL_RECT {
		SHORT Left;
		SHORT Top;
		SHORT Right;
		SHORT Bottom;
	  } SMALL_RECT,*PSMALL_RECT;

	#define DECLARE_HANDLE(name) typedef HANDLE name
	DECLARE_HANDLE (HWND);
	DECLARE_HANDLE (HHOOK);


	  typedef UINT_PTR WPARAM;
	  typedef LONG_PTR LPARAM;
	  typedef LONG_PTR LRESULT;


	DECLARE_HANDLE(HACCEL);
	DECLARE_HANDLE(HBITMAP);
	DECLARE_HANDLE(HBRUSH);
	DECLARE_HANDLE(HCOLORSPACE);
	DECLARE_HANDLE(HDC);
	DECLARE_HANDLE(HGLRC);
	DECLARE_HANDLE(HDESK);
	DECLARE_HANDLE(HENHMETAFILE);
	DECLARE_HANDLE(HFONT);
	DECLARE_HANDLE(HICON);
	DECLARE_HANDLE(HMENU);
	DECLARE_HANDLE(HPALETTE);
	DECLARE_HANDLE(HPEN);
	DECLARE_HANDLE(HMONITOR);
	DECLARE_HANDLE(HWINEVENTHOOK);


	  typedef struct tagRECT {
	  LONG left;
	  LONG top;
	  LONG right;
	  LONG bottom;
	} RECT,*PRECT,*NPRECT,*LPRECT;

	  typedef struct tagPOINT {
	  LONG x;
	  LONG y;
	} POINT,*PPOINT,*NPPOINT,*LPPOINT;

		typedef struct tagMSG {
		HWND hwnd;
		UINT message;
		WPARAM wParam;
		LPARAM lParam;
		DWORD time;
		POINT pt;
	  } MSG,*PMSG,*NPMSG,*LPMSG;
	#endif


	//////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////

	#define MAKEWORD(a,b) ((WORD) (((BYTE) (((DWORD_PTR) (a)) & 0xff)) | ((WORD) ((BYTE) (((DWORD_PTR) (b)) & 0xff))) << 8))
	#define MAKELONG(a, b) ((LONG) (((WORD) (((DWORD_PTR) (a)) & 0xffff)) | ((DWORD) ((WORD) (((DWORD_PTR) (b)) & 0xffff))) << 16))
	#define LOWORD(l) ((WORD) (((DWORD_PTR) (l)) & 0xffff))
	#define HIWORD(l) ((WORD) ((((DWORD_PTR) (l)) >> 16) & 0xffff))
	#define LOBYTE(w) ((BYTE) (((DWORD_PTR) (w)) & 0xff))
	#define HIBYTE(w) ((BYTE) ((((DWORD_PTR) (w)) >> 8) & 0xff))

	typedef HANDLE *SPHANDLE;
	typedef HANDLE *LPHANDLE;
	typedef HANDLE HGLOBAL;
	typedef HANDLE HLOCAL;
	typedef HANDLE GLOBALHANDLE;
	typedef HANDLE LOCALHANDLE;

	#ifndef _HRESULT_DEFINED
	#define _HRESULT_DEFINED
	  typedef LONG HRESULT;
	#endif

	typedef struct tagPIXELFORMATDESCRIPTOR {
	WORD nSize;
	WORD nVersion;
	DWORD dwFlags;
	BYTE iPixelType;
	BYTE cColorBits;
	BYTE cRedBits;
	BYTE cRedShift;
	BYTE cGreenBits;
	BYTE cGreenShift;
	BYTE cBlueBits;
	BYTE cBlueShift;
	BYTE cAlphaBits;
	BYTE cAlphaShift;
	BYTE cAccumBits;
	BYTE cAccumRedBits;
	BYTE cAccumGreenBits;
	BYTE cAccumBlueBits;
	BYTE cAccumAlphaBits;
	BYTE cDepthBits;
	BYTE cStencilBits;
	BYTE cAuxBuffers;
	BYTE iLayerType;
	BYTE bReserved;
	DWORD dwLayerMask;
	DWORD dwVisibleMask;
	DWORD dwDamageMask;
	} PIXELFORMATDESCRIPTOR,*PPIXELFORMATDESCRIPTOR,*LPPIXELFORMATDESCRIPTOR;

	typedef struct tagBITMAPINFOHEADER {
	DWORD biSize;
	LONG biWidth;
	LONG biHeight;
	WORD biPlanes;
	WORD biBitCount;
	DWORD biCompression;
	DWORD biSizeImage;
	LONG biXPelsPerMeter;
	LONG biYPelsPerMeter;
	DWORD biClrUsed;
	DWORD biClrImportant;
	} BITMAPINFOHEADER,*LPBITMAPINFOHEADER,*PBITMAPINFOHEADER;

	typedef struct tagBITMAPCOREHEADER {
	DWORD bcSize;
	WORD bcWidth;
	WORD bcHeight;
	WORD bcPlanes;
	WORD bcBitCount;
	} BITMAPCOREHEADER,*LPBITMAPCOREHEADER,*PBITMAPCOREHEADER;
	typedef struct tagRGBQUAD {
	BYTE rgbBlue;
	BYTE rgbGreen;
	BYTE rgbRed;
	BYTE rgbReserved;
	} RGBQUAD;
	typedef struct tagBITMAPINFO {
	BITMAPINFOHEADER bmiHeader;
	RGBQUAD bmiColors[1];
	} BITMAPINFO,*LPBITMAPINFO,*PBITMAPINFO;
	typedef struct tagRGBTRIPLE {
	BYTE rgbtBlue;
	BYTE rgbtGreen;
	BYTE rgbtRed;
	} RGBTRIPLE;
	typedef struct tagBITMAPCOREINFO {
	BITMAPCOREHEADER bmciHeader;
	RGBTRIPLE bmciColors[1];
	} BITMAPCOREINFO,*LPBITMAPCOREINFO,*PBITMAPCOREINFO;

	typedef HICON HCURSOR;
	typedef DWORD COLORREF;
	typedef FARPROC TIMERPROC;
	typedef FARPROC GRAYSTRINGPROC;
	typedef FARPROC WNDENUMPROC;
	typedef FARPROC HOOKPROC;
	typedef FARPROC SENDASYNCPROC;

	typedef FARPROC EDITWORDBREAKPROCA;
	typedef FARPROC EDITWORDBREAKPROCW;

	typedef FARPROC PROPENUMPROCA;
	typedef FARPROC PROPENUMPROCW;

	typedef FARPROC PROPENUMPROCEXA;
	typedef FARPROC PROPENUMPROCEXW;

	typedef FARPROC DRAWSTATEPROC;


	#define RC_NONE
	#define RC_BITBLT 1
	#define RC_BANDING 2
	#define RC_SCALING 4
	#define RC_BITMAP64 8
	#define RC_GDI20_OUTPUT 0x0010
	#define RC_GDI20_STATE 0x0020
	#define RC_SAVEBITMAP 0x0040
	#define RC_DI_BITMAP 0x0080
	#define RC_PALETTE 0x0100
	#define RC_DIBTODEV 0x0200
	#define RC_BIGFONT 0x0400
	#define RC_STRETCHBLT 0x0800
	#define RC_FLOODFILL 0x1000
	#define RC_STRETCHDIB 0x2000
	#define RC_OP_DX_OUTPUT 0x4000
	#define RC_DEVBITS 0x8000

	#define SB_NONE 0x00000000
	#define SB_CONST_ALPHA 0x00000001
	#define SB_PIXEL_ALPHA 0x00000002
	#define SB_PREMULT_ALPHA 0x00000004

	#define SB_GRAD_RECT 0x00000010
	#define SB_GRAD_TRI 0x00000020

	#define CM_NONE 0x00000000
	#define CM_DEVICE_ICM 0x00000001
	#define CM_GAMMA_RAMP 0x00000002
	#define CM_CMYK_COLOR 0x00000004

	#define DIB_RGB_COLORS 0
	#define DIB_PAL_COLORS 1

	#define SYSPAL_ERROR 0
	#define SYSPAL_STATIC 1
	#define SYSPAL_NOSTATIC 2
	#define SYSPAL_NOSTATIC256 3

	#define CBM_INIT __MSABI_LONG(0x04)

	#define FLOODFILLBORDER 0
	#define FLOODFILLSURFACE 1

	#define CCHDEVICENAME 32

	#define CCHFORMNAME 32

	typedef struct _POINTL {
	  LONG x;
	  LONG y;
	} POINTL,*PPOINTL;


	typedef struct _devicemodeA {
	BYTE dmDeviceName[CCHDEVICENAME];
	WORD dmSpecVersion;
	WORD dmDriverVersion;
	WORD dmSize;
	WORD dmDriverExtra;
	DWORD dmFields;
	__C89_NAMELESS union {
	  __C89_NAMELESS struct {
	short dmOrientation;
	short dmPaperSize;
	short dmPaperLength;
	short dmPaperWidth;
	short dmScale;
	short dmCopies;
	short dmDefaultSource;
	short dmPrintQuality;
	  };
	  struct {
	POINTL dmPosition;
	DWORD dmDisplayOrientation;
	DWORD dmDisplayFixedOutput;
	  };
	};
	short dmColor;
	short dmDuplex;
	short dmYResolution;
	short dmTTOption;
	short dmCollate;
	BYTE dmFormName[CCHFORMNAME];
	WORD dmLogPixels;
	DWORD dmBitsPerPel;
	DWORD dmPelsWidth;
	DWORD dmPelsHeight;
	__C89_NAMELESS union {
	  DWORD dmDisplayFlags;
	  DWORD dmNup;
	};
	DWORD dmDisplayFrequency;
	DWORD dmICMMethod;
	DWORD dmICMIntent;
	DWORD dmMediaType;
	DWORD dmDitherType;
	DWORD dmReserved1;
	DWORD dmReserved2;
	DWORD dmPanningWidth;
	DWORD dmPanningHeight;
	} DEVMODEA,*PDEVMODEA,*NPDEVMODEA,*LPDEVMODEA;

	typedef struct _devicemodeW {
	WCHAR dmDeviceName[CCHDEVICENAME];
	WORD dmSpecVersion;
	WORD dmDriverVersion;
	WORD dmSize;
	WORD dmDriverExtra;
	DWORD dmFields;
	__C89_NAMELESS union {
	  __C89_NAMELESS struct {
	short dmOrientation;
	short dmPaperSize;
	short dmPaperLength;
	short dmPaperWidth;
	short dmScale;
	short dmCopies;
	short dmDefaultSource;
	short dmPrintQuality;
	  };
	  __C89_NAMELESS struct {
	POINTL dmPosition;
	DWORD dmDisplayOrientation;
	DWORD dmDisplayFixedOutput;
	  };
	};
	short dmColor;
	short dmDuplex;
	short dmYResolution;
	short dmTTOption;
	short dmCollate;
	WCHAR dmFormName[CCHFORMNAME];
	WORD dmLogPixels;
	DWORD dmBitsPerPel;
	DWORD dmPelsWidth;
	DWORD dmPelsHeight;
	__C89_NAMELESS union {
	  DWORD dmDisplayFlags;
	  DWORD dmNup;
	};
	DWORD dmDisplayFrequency;
	DWORD dmICMMethod;
	DWORD dmICMIntent;
	DWORD dmMediaType;
	DWORD dmDitherType;
	DWORD dmReserved1;
	DWORD dmReserved2;
	DWORD dmPanningWidth;
	DWORD dmPanningHeight;
	} DEVMODEW,*PDEVMODEW,*NPDEVMODEW,*LPDEVMODEW;

	  typedef struct tagCURSORINFO {
		DWORD cbSize;
		DWORD flags;
		HCURSOR hCursor;
		POINT ptScreenPos;
	  } CURSORINFO,*PCURSORINFO,*LPCURSORINFO;

	#define CURSOR_SHOWING 0x00000001

	typedef const RECT *LPCRECT;
	typedef struct tagTOGGLEKEYS {
		UINT cbSize;
		DWORD dwFlags;
	  } TOGGLEKEYS,*LPTOGGLEKEYS;

	  typedef struct tagMONITORINFO {
		DWORD cbSize;
		RECT rcMonitor;
		RECT rcWork;
		DWORD dwFlags;
	  } MONITORINFO,*LPMONITORINFO;
	  
	  #ifndef FLS_OUT_OF_INDEXES
	#define FLS_OUT_OF_INDEXES ((DWORD)0xffffffff)
	#endif

	#define TLS_OUT_OF_INDEXES ((DWORD)0xffffffff)

	  typedef struct _PROCESS_INFORMATION {
		HANDLE hProcess;
		HANDLE hThread;
		DWORD dwProcessId;
		DWORD dwThreadId;
	  } PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;

	  typedef struct _STARTUPINFOA {
		DWORD cb;
		LPSTR lpReserved;
		LPSTR lpDesktop;
		LPSTR lpTitle;
		DWORD dwX;
		DWORD dwY;
		DWORD dwXSize;
		DWORD dwYSize;
		DWORD dwXCountChars;
		DWORD dwYCountChars;
		DWORD dwFillAttribute;
		DWORD dwFlags;
		WORD wShowWindow;
		WORD cbReserved2;
		LPBYTE lpReserved2;
		HANDLE hStdInput;
		HANDLE hStdOutput;
		HANDLE hStdError;
	  } STARTUPINFOA, *LPSTARTUPINFOA;

	  typedef struct _STARTUPINFOW {
		DWORD cb;
		LPWSTR lpReserved;
		LPWSTR lpDesktop;
		LPWSTR lpTitle;
		DWORD dwX;
		DWORD dwY;
		DWORD dwXSize;
		DWORD dwYSize;
		DWORD dwXCountChars;
		DWORD dwYCountChars;
		DWORD dwFillAttribute;
		DWORD dwFlags;
		WORD wShowWindow;
		WORD cbReserved2;
		LPBYTE lpReserved2;
		HANDLE hStdInput;
		HANDLE hStdOutput;
		HANDLE hStdError;
	  } STARTUPINFOW, *LPSTARTUPINFOW;

	#ifndef VOID
	#define VOID void
	  typedef char CHAR;
	  typedef short SHORT;
	  typedef __LONG32 LONG;
	#if !defined (__WIDL__)
	  typedef int INT;
	#endif
	#endif

	#ifndef __WCHAR_DEFINED
	#define __WCHAR_DEFINED
	  typedef wchar_t WCHAR;
	#endif
	  typedef WCHAR *PWCHAR,*LPWCH,*PWCH;
	  typedef CONST WCHAR *LPCWCH,*PCWCH;
	  typedef WCHAR *NWPSTR,*LPWSTR,*PWSTR;
	  typedef PWSTR *PZPWSTR;
	  typedef CONST PWSTR *PCZPWSTR;
	  typedef WCHAR UNALIGNED *LPUWSTR,*PUWSTR;
	  typedef CONST WCHAR *LPCWSTR,*PCWSTR;
	  typedef PCWSTR *PZPCWSTR;
	  typedef CONST WCHAR UNALIGNED *LPCUWSTR,*PCUWSTR;
	  typedef WCHAR *PZZWSTR;
	  typedef CONST WCHAR *PCZZWSTR;
	  typedef WCHAR UNALIGNED *PUZZWSTR;
	  typedef CONST WCHAR UNALIGNED *PCUZZWSTR;
	  typedef WCHAR *PNZWCH;
	  typedef CONST WCHAR *PCNZWCH;
	  typedef WCHAR UNALIGNED *PUNZWCH;
	  typedef CONST WCHAR UNALIGNED *PCUNZWCH;


	  typedef CHAR *PCHAR,*LPCH,*PCH;
	  typedef CONST CHAR *LPCCH,*PCCH;
	  typedef CHAR *NPSTR,*LPSTR,*PSTR;
	  typedef PSTR *PZPSTR;
	  typedef CONST PSTR *PCZPSTR;
	  typedef CONST CHAR *LPCSTR,*PCSTR;
	  typedef PCSTR *PZPCSTR;
	  typedef CHAR *PZZSTR;
	  typedef CONST CHAR *PCZZSTR;
	  typedef CHAR *PNZCH;
	  typedef CONST CHAR *PCNZCH;
	  
	#ifndef _DEF_WINBOOL_
	#define _DEF_WINBOOL_
	typedef int WINBOOL;
	#pragma push_macro("BOOL")
	#undef BOOL
	#if !defined(__OBJC__) && !defined(__OBJC_BOOL) && !defined(__objc_INCLUDE_GNU) && !defined(_NO_BOOL_TYPEDEF)
	  typedef int BOOL;
	#endif
	#define BOOL WINBOOL
	typedef BOOL *PBOOL;
	typedef BOOL *LPBOOL;
	#pragma pop_macro("BOOL")
	#endif /* _DEF_WINBOOL_ */
	
	#define INVALID_HANDLE_VALUE ((HANDLE) (LONG_PTR)-1)
	

	typedef struct _OVERLAPPED {
    ULONG_PTR Internal;
    ULONG_PTR InternalHigh;
    __C89_NAMELESS union {
      struct {
	DWORD Offset;
	DWORD OffsetHigh;
      } DUMMYSTRUCTNAME;
      PVOID Pointer;
    } DUMMYUNIONNAME;
    HANDLE hEvent;
  } OVERLAPPED, *LPOVERLAPPED;

  typedef struct _OVERLAPPED_ENTRY {
    ULONG_PTR lpCompletionKey;
    LPOVERLAPPED lpOverlapped;
    ULONG_PTR Internal;
    DWORD dwNumberOfBytesTransferred;
  } OVERLAPPED_ENTRY, *LPOVERLAPPED_ENTRY;


	typedef RTL_CRITICAL_SECTION CRITICAL_SECTION;
	typedef PRTL_CRITICAL_SECTION PCRITICAL_SECTION;
	typedef PRTL_CRITICAL_SECTION LPCRITICAL_SECTION;
	typedef RTL_CRITICAL_SECTION_DEBUG CRITICAL_SECTION_DEBUG;
	typedef PRTL_CRITICAL_SECTION_DEBUG PCRITICAL_SECTION_DEBUG;
	typedef PRTL_CRITICAL_SECTION_DEBUG LPCRITICAL_SECTION_DEBUG;

	typedef VOID (WINAPI *LPOVERLAPPED_COMPLETION_ROUTINE) (DWORD dwErrorCode, DWORD dwNumberOfBytesTransfered, LPOVERLAPPED lpOverlapped);

	#define LOCKFILE_FAIL_IMMEDIATELY 0x1
	#define LOCKFILE_EXCLUSIVE_LOCK 0x2
	
	
	typedef DWORD (WINAPI *PTHREAD_START_ROUTINE) (LPVOID lpThreadParameter);
	typedef PTHREAD_START_ROUTINE LPTHREAD_START_ROUTINE;

   typedef struct _MESSAGE_RESOURCE_ENTRY {
      WORD Length;
      WORD Flags;
      BYTE Text[1];
    } MESSAGE_RESOURCE_ENTRY,*PMESSAGE_RESOURCE_ENTRY;

#define SEF_DACL_AUTO_INHERIT 0x01
#define SEF_SACL_AUTO_INHERIT 0x02
#define SEF_DEFAULT_DESCRIPTOR_FOR_OBJECT 0x04
#define SEF_AVOID_PRIVILEGE_CHECK 0x08
#define SEF_AVOID_OWNER_CHECK 0x10
#define SEF_DEFAULT_OWNER_FROM_PARENT 0x20
#define SEF_DEFAULT_GROUP_FROM_PARENT 0x40
#define SEF_MACL_NO_WRITE_UP 0x100
#define SEF_MACL_NO_READ_UP 0x200
#define SEF_MACL_NO_EXECUTE_UP 0x400
#define SEF_AVOID_OWNER_RESTRICTION 0x1000

#define SEF_MACL_VALID_FLAGS (SEF_MACL_NO_WRITE_UP | SEF_MACL_NO_READ_UP | SEF_MACL_NO_EXECUTE_UP)

#define MESSAGE_RESOURCE_UNICODE 0x0001

    typedef struct _MESSAGE_RESOURCE_BLOCK {
      DWORD LowId;
      DWORD HighId;
      DWORD OffsetToEntries;
    } MESSAGE_RESOURCE_BLOCK,*PMESSAGE_RESOURCE_BLOCK;

    typedef struct _MESSAGE_RESOURCE_DATA {
      DWORD NumberOfBlocks;
      MESSAGE_RESOURCE_BLOCK Blocks[1];
    } MESSAGE_RESOURCE_DATA,*PMESSAGE_RESOURCE_DATA;

    typedef struct _OSVERSIONINFOA {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      CHAR szCSDVersion[128];
    } OSVERSIONINFOA,*POSVERSIONINFOA,*LPOSVERSIONINFOA;

    typedef struct _OSVERSIONINFOW {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      WCHAR szCSDVersion[128];
    } OSVERSIONINFOW,*POSVERSIONINFOW,*LPOSVERSIONINFOW,RTL_OSVERSIONINFOW,*PRTL_OSVERSIONINFOW;


    typedef struct _OSVERSIONINFOEXA {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      CHAR szCSDVersion[128];
      WORD wServicePackMajor;
      WORD wServicePackMinor;
      WORD wSuiteMask;
      BYTE wProductType;
      BYTE wReserved;
    } OSVERSIONINFOEXA,*POSVERSIONINFOEXA,*LPOSVERSIONINFOEXA;

    typedef struct _OSVERSIONINFOEXW {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      WCHAR szCSDVersion[128];
      WORD wServicePackMajor;
      WORD wServicePackMinor;
      WORD wSuiteMask;
      BYTE wProductType;
      BYTE wReserved;
    } OSVERSIONINFOEXW,*POSVERSIONINFOEXW,*LPOSVERSIONINFOEXW,RTL_OSVERSIONINFOEXW,*PRTL_OSVERSIONINFOEXW;

	 typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
    COORD dwSize;
    COORD dwCursorPosition;
    WORD wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
  } CONSOLE_SCREEN_BUFFER_INFO,*PCONSOLE_SCREEN_BUFFER_INFO;

	
	
#endif /*ImWin*/
