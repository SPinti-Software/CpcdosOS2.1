#include <stdio.h>
#include <stdarg.h>
#include <dos.h>
#pragma hdrstop


extern "C" void EnterUnreal();
extern "C" unsigned char Read8(unsigned long a);
extern "C" unsigned short Read16(unsigned long a);
extern "C" unsigned long Read32(unsigned long a);
extern "C" void ReadX(unsigned long a,unsigned short count,char far* put);

extern "C" void Write8(unsigned long a,unsigned char b);
extern "C" void Write16(unsigned long a,unsigned short b);
extern "C" void Write32(unsigned long a,unsigned long b);

extern "C" void BEEP();
extern "C" void STI();
extern "C" void CLI();
extern "C" void NOP();

extern "C" unsigned long GetEntryPoint1Address();


int printf(const char * format, ... )
	{
		va_list arg;
		int done;
		
		va_start (arg, format);
		done = vfprintf (stdout, format, arg);
		va_end (arg);
		
		return done;
	}

	
void la_set(unsigned long localapic,unsigned long offset,unsigned long mask,unsigned long value)
{
    volatile unsigned long m = (localapic + offset);
	unsigned long reg = Read32(m);
    reg &= ~mask;
    reg |= value;
	Write32(m,reg);
}

	
static unsigned long micro = 1;
void udelay(int usecs)
{
	unsigned long i;
	for (i = 0; i < usecs * micro; i++) {
		asm { nop;
			rep; }
	}
}


// Descriptor typedefs
struct RSDPDescriptor {
 char Signature[8];
 unsigned char Checksum;
 char OEMID[6];
 unsigned char Revision;
 unsigned long RsdtAddress;
};

struct RSDPDescriptor20 {
 RSDPDescriptor firstPart;
 
 unsigned long Length;
 unsigned long long XsdtAddress;
 unsigned char ExtendedChecksum;
 unsigned char reserved[3];
};

#define LAPIC_ICR_LOW       0x0300
#define LAPIC_ICR_HIGH      0x0310

int ChecksumValid(unsigned char* addr,int cnt)
	{
	unsigned long a1 = 0;
	for(int i = 0 ; i < cnt ; i++)
		{
		a1 += *(addr + i);
		}
	if((a1 & 0xFF) == 0)
		return 1;
	return 0;
	}

	
struct APICINFO
	{
	unsigned long FoundAt;
	unsigned long long addr;
	};

	
struct ACPISDTHeader {
  char Signature[4];
  unsigned long Length;
  unsigned char Revision;
  unsigned char Checksum;
  char OEMID[6];
  char OEMTableID[8];
  unsigned long OEMRevision;
  unsigned long CreatorID;
  unsigned long CreatorRevision;
};

int FindApic(struct APICINFO* ai)
	{	
	unsigned long b1 = 0xE0000;	
	for(;;)
		{	
		unsigned long a1 = Read32(b1);
		b1 += 4;
		unsigned long a2 = Read32(b1);
		b1 += 4;
		
		if (a1 == 0x20445352 && a2 == 0x20525450)
			{
			// Validate this entry ACPI1 is 20
			b1 -= 8;
			RSDPDescriptor20 r2;
			ReadX((unsigned long)b1,sizeof(r2),(char far*)&r2);
			int cnt = sizeof(RSDPDescriptor);
			myprintf("Testing ACPI Revision %d Checksum (%d bytes) entry at %lX...",r2.firstPart.Revision + 1,cnt, b1);
			if (ChecksumValid((unsigned char*)&r2,cnt) > 0 && r2.firstPart.Revision >= 1)
				{
				ai->FoundAt = b1;
				ai->addr = r2.XsdtAddress;
				return 1;
				}
			b1 += 8;
			}
		
		b1 += 8;
		if (b1 >= 0xFFFFF)
			break;
		}
	return 0;
	}
	
char* FindTable(APICINFO& ai,const char* sig)
	{
	unsigned long b1 = ai.addr;
	myprintf("Searching from: %lX\r\n",b1);
	ACPISDTHeader p;
	ReadX((unsigned long)b1,sizeof(p),(char far*)&p);

	
	
    for (int i = 0; ; i++)
    {
	
		// Check the actual stuff
		char* a2 = new char[p.Length + 10];
		ReadX((unsigned long)b1,p.Length,(char far*)a2);
		int cs = ChecksumValid((unsigned char*)a2,p.Length);
		if (cs == 0 || p.Length == 0)
			{
			delete[] a2;
			break;
			}
	
		myprintf("Searching for %s, found %c%c%c%c...\r\n",sig,p.Signature[0],p.Signature[1],p.Signature[2],p.Signature[3]);
        if (p.Signature[0] == sig[0] && p.Signature[1] == sig[1] && p.Signature[2] == sig[2] && p.Signature[3] == sig[3])
			{
            myprintf("Found at %lX.\r\n",b1);
			return a2;
			}
		delete[] a2;
		b1 += p.Length;
		ReadX((unsigned long)b1,sizeof(p),(char far*)&p);
	}
 
    // No FACP found
	return 0;
	}
	
extern unsigned long Adresse_controleur_DEPART;
struct A_CPU
	{
	unsigned long AcpiID;
	unsigned long ApicID;
	unsigned long flags;
	};
extern unsigned long IOAPIC;
extern int TotalCPUS;
extern A_CPU cpus[64];
	
void DumpMadt(char* pmadt)
	{
	ACPISDTHeader* madt = (ACPISDTHeader*)pmadt;
	int le = madt->Length;
	myprintf("\tMADT Length: %d\r\n",le);
	
	// Save Local APIC Address
	char* a0 = pmadt + 0x24;
	Adresse_controleur_DEPART = *(unsigned long*)a0;
	myprintf("\tMADT Local APIC Address: %lX\r\n",Adresse_controleur_DEPART);
		
	char* a1 = pmadt + 0x2C; // Go to variable table entries
	le -= 0x2C;
	for(; le > 0 ;)
		{
		char Ty = a1[0];
		char Le = a1[1];
		
		if (Ty == 0)
			{
			A_CPU c;
			c.AcpiID = (char)a1[2];
			c.ApicID = (char)a1[3];
			c.flags = *(unsigned long*)(a1 + 4);
			cpus[TotalCPUS++] = c;
			myprintf("\tMADT Entry Type: %i Local Processor with ACPI ID %d, APIC ID %d, Flags %ld\r\n",Ty,(char)a1[2],(char)a1[3],*(unsigned long*)(a1 + 4));
			}
		
		if (Ty == 1)
			{
			myprintf("\tMADT Entry Type: %i I/O APIC with APIC ID %d, I/O APIC address %lX and Base %lX\r\n",Ty,(char)a1[2],*(unsigned long*)(a1 + 4),*(unsigned long*)(a1 + 8));
			IOAPIC = *(unsigned long*)(a1 + 4);
			}
		if (Ty == 2)
			myprintf("\tMADT Entry Type: %i ISO \r\n",Ty);
			
		le -= Le;
		a1 += Le;
		}
	}

struct R300
	{
	unsigned char VectorNumber;
	unsigned char DestinationMode:3;
	unsigned char DestinationModeType:1;
	unsigned char DeliveryStatus:1;
	unsigned char R1:1;
	unsigned char InitDeAssertClear:1;
	unsigned char InitDeAssertSet:1;
	unsigned char R2:2;
	unsigned char DestinationType:2;
	unsigned short R3:12;
	};
	
	
