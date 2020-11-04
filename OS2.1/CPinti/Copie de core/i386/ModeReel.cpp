#include <stdio.h>
#include <stdarg.h>
#include <dos.h> // A supprimer!
#pragma hdrstop

int _cdecl printf(const char * format, ... );

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
extern "C" unsigned long GetEntryPoint1Address2();

volatile extern char CHECK_BYTE1;
volatile extern char CHECK_BYTE2;

// Structures ACPI

struct APICINFO
	{
	unsigned long FoundAt;
	unsigned long long addr;
	};

// routines lecture / ecriture d'APIC
void la_set(unsigned long localapic,unsigned long offset,unsigned long mask,unsigned long value);
void udelay(int usecs);
int ChecksumValid(unsigned char* addr,int cnt);	
int FindApic(struct APICINFO* ai);

// Chercher les adresses
char* FindTable(APICINFO& ai,const char* sig);
unsigned long Adresse_controleur_DEPART = 0;

struct A_CPU
	{
	unsigned long AcpiID;
	unsigned long ApicID;
	unsigned long flags;
	};
	
// Problemes compatibilité, checker les deux manuellement

unsigned long IOAPIC = 0xFEC00000;
//unsigned long IOAPIC = 0xFEE00000;


int TotalCPUS = 0;
A_CPU cpus[64]; // Since Turbo C++ do not support std::vector, we will use a static array for now
void DumpMadt(char* pmadt);

	
#define LAPIC_ICR_LOW       0x0300
#define LAPIC_ICR_HIGH      0x0310
	
void VerifyLoop()
	{
	// Verifier si le message a ete envoye!
	for	(;;)
		{
		unsigned long res = Read32(Adresse_controleur_DEPART + LAPIC_ICR_LOW);
		res >>= 12; 
		if ((res & 1) == 0)
			break;
		}
	}
	
int main()
	{
		// NON TERMINE ! A des fins de tests seulement!!!
		
	unsigned long  SMP_FRAME = 0x88;
	printf("Test en mode reel.\r\n");
		
	EnterUnreal();
	APICINFO a;
	if (!FindApic(&a))
		{
		printf("APIC non trouve..\r\n",a.FoundAt,a.addr);
		return 0;
		}
	printf("APIC -> %lx, Adresse physique XSDT = %lX \r\n",a.FoundAt,a.addr);
	
	// Trouver "APIC" et le descipteur "MADT" 
	char* pmadt = FindTable(a,"APIC");
	if (!pmadt)
		return 0;
	DumpMadt(pmadt);
		
	delete[] pmadt;

	// << 12 Obtenir la table
	
	unsigned long EP2 = GetEntryPoint1Address2();
	unsigned long offs = EP2 & 0xFFFF;
	unsigned long seg = EP2 >> 16;
	unsigned long EP1 = (seg << 4) + offs;
	printf("Copie des points d'entre %lX to %lX \r\n",EP1,(SMP_FRAME << 12));
	unsigned long TRG1 = (SMP_FRAME << 12)	;
	for(int i = 0 ; i < 100 ; i++)
		{		
		unsigned char b = Read8(EP1 + i);
		Write8(TRG1 + i,b);
		}

		
	#define LAPIC_REG_SPURIOUS  0x00F0
	unsigned long spu = Read32(Adresse_controleur_DEPART + LAPIC_REG_SPURIOUS);
	spu |= 0x1FF;
	Write32(Adresse_controleur_DEPART + LAPIC_REG_SPURIOUS,spu);
	
	
	// Deactivate PIC
	CLI();
//	outportb(0xA1, 0xFF);
//	outportb(0x21, 0xFF);

	// Send IPI to CPU # 1
	int UseCPU = 1;
	// INIT
	Write32(Adresse_controleur_DEPART + LAPIC_ICR_HIGH, (unsigned long)cpus[UseCPU].ApicID << 24);
    Write32(Adresse_controleur_DEPART + LAPIC_ICR_LOW,  (unsigned long)  (0x4500) | SMP_FRAME);
	VerifyLoop();
	
	// Some delay ...
	udelay(10*1000); // 10ms      

	// First SIPI
	Write32(Adresse_controleur_DEPART + LAPIC_ICR_HIGH, (unsigned long)cpus[UseCPU].ApicID <<24);
    Write32(Adresse_controleur_DEPART + LAPIC_ICR_LOW,  (unsigned long)  (0x5600) | SMP_FRAME);
	VerifyLoop();
		
	// Some delay ...
	udelay(200); // 20us      
		
	// Second SIPI
	Write32(Adresse_controleur_DEPART + LAPIC_ICR_HIGH, (unsigned long)cpus[UseCPU].ApicID <<24);
	Write32(Adresse_controleur_DEPART + LAPIC_ICR_LOW,  (unsigned long)  (0x5600) | SMP_FRAME);
	VerifyLoop();
		
	// Some delay ...
	STI();
	sleep(2);

	for(unsigned long i5 = 0 ; i5 < 100 ; i5++)
		{
		if (CHECK_BYTE1 != 0)
			printf("CheckByte: %d\r\n",CHECK_BYTE1);
		}
	CHECK_BYTE2 = 1;
	return 0;
	}
	
	
	