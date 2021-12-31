' Contient des fonctions et variables concernant 
' le systeme de Cpcdos

' Par Sebastien FAVIER, merci a netaces2k pour son aide.
' Reecriture le 15/10/2018
' Mise a jour le 15/10/2018

' 15-10-2018	: Adaptation en beta 2.1

#print * CPU

#include once "cpcdos.bi"	' Declaration/Fonctions communs

' =====================================================================================
'   				              	C P U  I D
' =====================================================================================

#print * cpuID
function brval( byval dwordval as uinteger, byval highbit as uinteger, byval lowbit as uinteger ) as uinteger
    dwordval = dwordval shl (31 - highbit)
    dwordval = dwordval shr (31 - highbit + lowbit)
    function = dwordval
end function

#print * Registers eax ebx ecx edx
function cpuid_eax( byval func as uinteger) as uinteger
    asm mov eax, [func]
    asm cpuid
    asm mov [function], eax
end function

function cpuid_ebx( byval func as uinteger) as uinteger
    asm mov eax, [func]
    asm cpuid
    asm mov [function], ebx
end function

function cpuid_ecx( byval func as uinteger) as uinteger
    asm mov eax, [func]
    asm cpuid
    asm mov [function], ecx
end function

function cpuid_edx( byval func as uinteger) as uinteger
    asm mov eax, [func]
    asm cpuid
    asm mov [function], edx
end function

enum cpufeatures
    CPUID = 1
	VME:DE:PSE:TSC:MSR:PAE:MCE:CX8:SEP:DCPL:ACC:TM1:MP
	GPE:SYSE:MTRR:PGE:MCA:CMOV:PAT:PSE36:APIC:MON:NX
	PSN:CLFSH:FXSR:HHT:FPU:DTES:ACPI:MXx:PBE:SSE4:XD
	MMX:SSE:SSE2:SSNP:SSE3:TDNow:TDNow2:X64:IA64:CX16
	VMX:SMX:EST:TM2:CID:XTPR:DCA:RDTSCP:RAZ:SVM:CMP
	AMC8:ABM:SSE4A:maSSE:EXTas:LAHF
end enum

function Recup_InfoCPU( Fonction as uinteger ) as uinteger
	' Cette fonction permet de connaitre les possibilites du CPU en renvoyant TRUE ou FALSE
    select case Fonction
        case CPUID
            ' CPUID est supporte s'il peut definit et nettoyer
            ' ID flag (EFLAGS bit 21).
            asm
                pushfd
                pop edx
                pushfd
                pop eax
                xor eax, &h200000 '' Flip ID flag
                push eax
                popfd
                pushfd
                pop eax
                xor eax, edx
                shr eax, 21
                mov [function], eax
            end asm
        Case FPU                                 
            Return brval( cpuid_edx( 1 ), 0, 0 )
        Case VME 
			' VirtualMachineExt-x86
            Return brval( cpuid_edx( 1 ), 1, 1 )
        Case DE 
			' DebugModeExtension
            Return brval( cpuid_edx( 1 ), 2, 2 )
        Case PSE
			' PageSizeExtension
            Return brval( cpuid_edx( 1 ), 3, 3 )
        Case TSC
			' TimeStampCounters
            Return brval( cpuid_edx( 1 ), 4, 4 )
        Case MSR
			'ModelSpecificRegisters
            Return brval( cpuid_edx( 1 ), 5, 5 )
        Case PAE
			'PhysicalAddressExtension
            Return brval( cpuid_edx( 1 ), 6, 6 )
        Case MCE
			'MachineCheckException
            Return brval( cpuid_edx( 1 ), 7, 7 )
        Case CX8
			'CMPXCHG8B
            Return brval( cpuid_edx( 1 ), 8, 8 )
        Case GPE, APIC 
			'Intel = APIC, AMD = GPE/APIC
            Return brval( cpuid_edx( 1 ), 9, 9 )
        Case SYSE
			'SystemCall (Enter/Exit/Return)
            Return brval( cpuid_edx( 1 ), 11, 11 )
        Case MTRR 
			'MemoryTypeRegisters
            Return brval( cpuid_edx( 1 ), 12, 12 )
        Case PGE
			' PageGlobalExtensions
            Return brval( cpuid_edx( 1 ), 13, 13 )
        Case MCA
			'MachineCheckArchitecture
            Return brval( cpuid_edx( 1 ), 14, 14 )
        Case CMOV 
			'ConditionalMove
            Return brval( cpuid_edx( 1 ), 15, 15 )
        Case PAT 
			'PageAddressTable
            Return brval( cpuid_edx( 1 ), 16, 16 )
        Case PSE36
			'PageSizeExtensions36bit
            Return brval( cpuid_edx( 1 ), 17, 17 )
        Case PSN
			'Intel III Serial Number
            Return brval( cpuid_edx( 1 ), 18, 18 )
        Case CLFSH
			'CLFluSH
            Return brval( cpuid_edx( 1 ), 19, 19 )
        Case MP
			'Multi-Processor Capable(Intel?)
            Return brval( cpuid_eax( 1 ), 19, 19 )
        Case NX, XD  
			'No eXecute/eXecute Diasble
            If cpuid_eax( &h80000000 ) > &h80000000 Then
               Return brval( cpuid_edx( &h80000001), 20, 20 )
            End If
        Case DTES 'DebugStore Trace MSR's
            Return brval( cpuid_edx( 1 ), 21, 21 )
        Case ACPI
			'ACPI
            Return brval( cpuid_edx( 1 ), 22, 22 )
        Case MMX
			'MultiMedia-eXtensions
            Return brval( cpuid_edx( 1 ), 23, 23 )
        Case FXSR
			'FPFastSaveLoad
            Return brval( cpuid_edx( 1 ), 24, 24 )
        Case SSE
            Return brval( cpuid_edx( 1 ), 25, 25 )
        Case SSE2
            Return brval( cpuid_edx( 1 ), 26, 26 )
        Case SSNP 
			'Self-Snoop
            Return brval( cpuid_edx( 1 ), 27, 27 )
        Case HHT 
			'HyperTransport/Threading
            Return brval( cpuid_edx( 1 ), 28, 28 )
        Case TM1 
			'ThermalMonitor1
            Return brval( cpuid_edx( 1 ), 29, 29 )
        Case PBE  
			'PendingBreakEvent
            Return brval( cpuid_edx( 1 ), 31, 31 )
        Case SSE3
            Return brval( cpuid_ecx( 1 ), 0, 0 )
        Case LAHF
			'AMD's LAHF (AMD x64)
            Return brval( cpuid_ecx( 1 ), 0, 0 )
        Case CMP 
			'CoreMuitlProcessorLegacy
            Return brval( cpuid_ecx( 1 ), 1, 1 )
        Case SVM
			'SecureVirtualMachine
            Return brval( cpuid_ecx( 1 ), 2, 2 )
        Case MON  
			'Monitor/WaitSrvc
            Return brval( cpuid_ecx( 1 ), 3, 3 )
        Case EXTas 
			'ExtendedAPICSpace
            Return brval( cpuid_ecx( 1 ), 3, 3 )
        Case DCPL 
			'QualifiedDebugStore (Intel)
            Return brval( cpuid_ecx( 1 ), 4, 4 )
        Case AMC8 
			'AltMovCr8(AMD)
            Return brval( cpuid_ecx( 1 ), 4, 4 )
        Case VMX
			'VirtualMachineExtensions
            Return brval( cpuid_ecx( 1 ), 5, 5 )
        Case ABM 
			'AdvancedBitManipulation
            Return brval( cpuid_ecx( 1 ), 5, 5 )
        Case SMX 
			'SecurityMgmtExtensions
            Return brval( cpuid_ecx( 1 ), 6, 6 )
        Case SSE4a
            Return brval( cpuid_ecx( 1 ), 6, 6 )
        Case maSSE
			'MisAlignedSSE
            Return brval( cpuid_ecx( 1 ), 7, 7 )
        Case EST 
			'EnhancedSpeedStep
            Return brval( cpuid_ecx( 1 ), 7, 7 )
        Case TM2 'ThermalMonitor2
            Return brval( cpuid_ecx( 1 ), 8, 8 )
        Case SSE4
            Return brval( cpuid_ecx( 1 ), 9, 9 )
        Case CID
			'ContextID
            Return brval( cpuid_ecx( 1 ), 10, 10 )
        Case CX16
			'CMPXCHG16B
            Return brval( cpuid_ecx( 1 ), 13, 13 )
        Case XTPR 
			'SendTaskPriorityMsgs
            Return brval( cpuid_ecx( 1 ), 14, 14 )
        Case DCA 
			'DirectCacheAccess
            Return brval( cpuid_ecx( 1 ), 18, 18 )
        Case RDTSCP   
			'RDTSCP (TSC)
            Return brval( cpuid_ecx( 1 ), 27, 27 )
        Case RAZ 
			'ReadAsZero
            Return brval( cpuid_ecx( 1 ), 31, 31 )
        Case MXX 
			'AMD'sMMX+ w/SSE
            If cpuid_eax( &h80000000 ) > &h80000000 Then
               Return brval( cpuid_edx( &h80000001), 22, 22 )
            End If
        Case TDNow
		'AMD's 3DNow!
            If cpuid_eax( &h80000000 ) > &h80000000 Then
               Return brval( cpuid_edx( &h80000001), 31, 31 )
            End If   
        Case TDNow2
		'AMD's 3DNow! 2/Pro
            If cpuid_eax( &h80000000 ) > &h80000000 Then
               Return brval( cpuid_edx( &h80000001), 30, 30 )
            End If
        Case X64 'AMD's x86-64
            If cpuid_eax( &h80000000 ) > &h80000000 Then
               Return brval( cpuid_edx( &h80000001), 29, 29 )
            End If
        Case ACC
			'AccessCodeControl
            If cpuid_eax( &h80000000 ) >&h80000000 Then
               Return brval( cpuid_edx( &h80000001), 29, 29 )
            End If
        Case IA64 'Intel's IA-64 (Itanium)
            If cpuid_eax( &h80000000 ) > &h80000000 Then
               Return brval( cpuid_edx( &h80000001), 30, 30 )
            End If
     Case Else:
		
    End Select
  Exit Function
end function


Function _cpuid_.get_cpuid() as boolean
	' Cette fonction permet de recuperer les informations constructeur du CPU

	dim vendorID as ZString * 13 
	dim TMPNom as zstring * 49   ' (80000002h-4h) AMD

	if Recup_InfoCPU( CPUID ) = 0 then
		this._cpuid = FALSE
		Function = False ' CPUID non supporte
		Exit Function
	Else
		Function = True
		this._cpuid = TRUE
	end if

	this.NombreFonctions = cpuid_eax( 0 )
	
	asm
		xor eax, eax
		cpuid
		' Recuperer les 12 premieres lettres
		mov [vendorID], ebx
		mov [vendorID+4], edx
		mov [vendorID+8], ecx
	end asm

	' Differencier AMD ou INTEL
	IF vendorID = "GenuineIntel" Then 
		this.vendor = this.CPU_Intel
	ElseIF vendorID = "AuthenticAMD" Then
		this.vendor = this.CPU_AMD
	ElseIF vendorID = "CyrixInstead" Then
		this.vendor = this.CPU_CYTRIX
	Else
		this.vendor = this.CPU_Autre
	End if
	
	this.VendorID = vendorID

	if this.NombreFonctions then
		this.signature 		= cpuid_eax( 1 )
		this.identifiant	= brval( this.signature, 3, 0 )
		this.Modele 		= brval( this.signature, 7, 4 )
		this.Famille 		= brval( this.signature, 11, 8 )
		this.Modele_Etendu  = brval( this.signature, 19, 16 )
		this.Famille_Etendu = brval( this.signature, 27, 20 )
		this.MarqueID  		= brval( cpuid_ebx( 1 ), 7, 0 )
		this.cacheTLB       = brval( cpuid_eax( 2 ), 0, 0 )

		' Pour AMD --> Famille et famille etendu uniquement (80000001h si ok)
		if this.vendor = this.CPU_AMD then
			this.NombreFonctions2 = cpuid_eax( &h80000000 )
			if this.NombreFonctions2 > &h80000000 then
				this.Famille = brval( cpuid_eax( &h80000001 ), 11, 8 )
				this.Famille_Etendu = brval( cpuid_eax( &h80000001 ), 27, 20 )
			end if
		end if
	end if
	
	' Le processeur AMD renvoie le nom a partir du K5 Model 1
	if this.vendor = this.CPU_AMD then   
		if this.NombreFonctions2 > &h80000000 then
			this.signature2 = cpuid_eax( &h80000001 )
			if this.NombreFonctions2 > &h80000003 then
				asm
					mov eax, &h80000002
					cpuid
					mov [TMPNom], eax
					mov [TMPNom+4], ebx
					mov [TMPNom+8], ecx
					mov [TMPNom+12], edx
					mov eax, &h80000003
					cpuid
					mov [TMPNom+16], eax
					mov [TMPNom+20], ebx
					mov [TMPNom+24], ecx
					mov [TMPNom+28], edx
					mov eax, &h80000004
					cpuid
					mov [TMPNom+32], eax
					mov [TMPNom+36], ebx
					mov [TMPNom+40], ecx
					mov [TMPNom+44], edx
				end asm
			end if
		end if
	end if

	' Regles intel pour calculer le la famille & modele
	this.Famille_aff = this.Famille
	this.Modele_aff =  this.Modele
	
	' Convertir en decimal au lieu en hexa
	if this.Famille = &hF then this.Famille_aff += this.Famille_Etendu
	if this.Famille = 6 or this.Famille = &hF then this.Modele_aff += this.Modele_Etendu

	if Recup_InfoCPU( CPUID ) 	then _cpuid 	= True
	if Recup_InfoCPU( FPU ) 	then _fpu 		= True
	if Recup_InfoCPU( VME ) 	then _vme 		= True
	if Recup_InfoCPU( DE ) 		then _de		= True
	if Recup_InfoCPU( PSE ) 	then _pse		= True
	if Recup_InfoCPU( TSC ) 	then _tsc 		= True
	if Recup_InfoCPU( MSR ) 	then _msr 		= True
	if Recup_InfoCPU( PAE ) 	then _pae 		= True
	if Recup_InfoCPU( MCE ) 	then _mce 		= True
	if Recup_InfoCPU( CX8 ) 	then _cx8 		= True
	if Recup_InfoCPU( GPE ) 	then _gpe 		= True
	if Recup_InfoCPU( APIC ) 	then _apic 		= True
	if Recup_InfoCPU( SYSE ) 	then _syse		= True
	if Recup_InfoCPU( MTRR ) 	then _mtrr		= True
	if Recup_InfoCPU( PGE ) 	then _pge		= True
	if Recup_InfoCPU( MCA ) 	then _mca		= True
	if Recup_InfoCPU( CMOV ) 	then _cmov 		= True 
	if Recup_InfoCPU( PAT ) 	then _pat 		= True 
	if Recup_InfoCPU( PSE36 ) 	then _pse36 	= True 
	if Recup_InfoCPU( CLFSH ) 	then _clfsh 	= True
	if Recup_InfoCPU( FXSR ) 	then _fxsr 		= True
	if Recup_InfoCPU( HHT ) 	then _hht 		= True
	if Recup_InfoCPU( MP ) 		then _mp 		= True
	if Recup_InfoCPU( MMX ) 	then _mmx 		= True
	if Recup_InfoCPU( SSE ) 	then _sse 		= True 
	if Recup_InfoCPU( SSE2 ) 	then _sse2 		= True
	if Recup_InfoCPU( SSE3 ) 	then _sse3 		= True
	if Recup_InfoCPU( SSE4 ) 	then _sse4		= True
	if Recup_InfoCPU( SSE4a ) 	then _sse4a		= True
	if Recup_InfoCPU( TDNOW ) 	then _3dnow 	= True
	if Recup_InfoCPU( TDNOW2 ) 	then _3dnow2 	= True
	if Recup_InfoCPU( RDTSCP ) 	then _rdtscp 	= True
	if Recup_InfoCPU( SVM ) 	then _svm 		= True
	if Recup_InfoCPU( CMP ) 	then _cmp		= True
	if Recup_InfoCPU( RAZ ) 	then _raz 		= True
	if Recup_InfoCPU( NX ) 		then _nx 		= True
	if Recup_InfoCPU( X64 ) 	then _x64 		= True
	if Recup_InfoCPU( AMC8 ) 	then _amc8 		= True
	if Recup_InfoCPU( ABM ) 	then _abm 		= True
	if Recup_InfoCPU( maSSE ) 	then _masse		= True
	if Recup_InfoCPU( EXTas ) 	then _extas		= True
	if Recup_InfoCPU( LAHF ) 	then _LAHF		= True
	if Recup_InfoCPU( PSN ) 	then _psn		= True
	if Recup_InfoCPU( DTES ) 	then _dtes		= True
	if Recup_InfoCPU( SSNP ) 	then _ssnp		= True
	if Recup_InfoCPU( CX16 ) 	then _cx16		= True
	if Recup_InfoCPU( ACC ) 	then _acc		= True
	if Recup_InfoCPU( TM1 ) 	then _tm1		= True
	if Recup_InfoCPU( TM2 ) 	then _tm2		= True
	if Recup_InfoCPU( EST ) 	then _est		= True
	if Recup_InfoCPU( DCA ) 	then _dca		= True
	if Recup_InfoCPU( VMX ) 	then _vmx		= True
	if Recup_InfoCPU( SMX ) 	then _smx		= True
	if Recup_InfoCPU( XTPR ) 	then _xtpr		= True
	if Recup_InfoCPU( CID ) 	then _cid		= True
	if Recup_InfoCPU( IA64 ) 	then _ia64		= True
	if Recup_InfoCPU( DCPL ) 	then _dcpl		= True
	if Recup_InfoCPU( PBE ) 	then _pbe		= True
	if Recup_InfoCPU( MON ) 	then _mon		= True
	if Recup_InfoCPU( XD ) 		then _xd		= True

	
	' Pour Intel, afficher la marque intel depuis la table.
	'  L'ID de la marque est a zero, donc on se base sur la famille et le modele
	' La table est adapte pour Intel IA-32
	if this.vendor = this.CPU_Intel then
		this.NomProcesseur = "Intel :"
		select case this.MarqueID
			case 0
				this.NomProcesseur += " (Modele recent?)"
				select case this.Famille
					case 4
						this.NomProcesseur += " i468 processor"
					case 5
						if Recup_InfoCPU( MMX ) then
							this.NomProcesseur += " Pentium MMX processor"
						else
							this.NomProcesseur += " Pentium I processor"
						end if
					case 6
						if Recup_InfoCPU( SSE ) then
							this.NomProcesseur += " Pentium III processor"
						elseif Recup_InfoCPU( MMX ) then
							this.NomProcesseur += " Pentium II processor"
						else
							this.NomProcesseur += " Pentium Pro processor"
						end if
				end select
			case 1
				this.NomProcesseur += " Intel(R) Celeron(R) processor"
			case 2
				this.NomProcesseur += "Intel(R) Pentium(R) III processor"
			case 3
				if signature = &h6B1 then	
					this.NomProcesseur += "Intel(R) Celeron(R) processor"
				else
					this.NomProcesseur += "Intel(R) Pentium(R) III Xeon(TM) processor"
				end if
			case 4
				this.NomProcesseur += "Intel(R) Pentium(R) III processor"
			case 6
				this.NomProcesseur += "Mobile Intel(R) Pentium(R) III processor-M"
			case 7
				this.NomProcesseur += "Mobile Intel(R) Celeron(R) processor"
			case 8, 9
				this.NomProcesseur += "Intel(R) Pentium(R) 4 processor"
			case &ha
				this.NomProcesseur += "Intel(R) Celeron(R) processor"
			case &hb
				if signature = &hF13 then
					this.NomProcesseur += "Intel(R) Xeon(TM) processor MP"
				else
					this.NomProcesseur += "Intel(R) Xeon(TM) processor"
				end if
			case &hc
				this.NomProcesseur += "Intel(R) Xeon(TM) processor MP"
			case &he
				if signature = &hF13 then
					this.NomProcesseur += "Intel(R) Xeon(TM) processor"
				else
					this.NomProcesseur += "Mobile Intel(R) Pentium(R) 4 processor-M"
				end if
			case &hf
				this.NomProcesseur += "Mobile Intel(R) Celeron(R) processor"
			case &h13
				this.NomProcesseur += "Mobile Intel(R) Celeron(R) processor"
			case &h16
				this.NomProcesseur += "Intel(R) Pentium(R) M processor"
			case &h17
				this.NomProcesseur += "Mobile Intel(R) Celeron(R) processor"
			case else   
				this.NomProcesseur += this.MarqueID & " ??"
		end select
	end if
	
	' Nom du CPU AMD base sur la famille
	if this.vendor = this.CPU_AMD then
		this.NomProcesseur += "AMD "
		if this.NombreFonctions2 > &h80000003 then
			this.NomProcesseur += TMPNom
		else   
			if this.Famille = 4 Then
				this.NomProcesseur +=  "Am486/Am 5x86 (X5)"
			Elseif this.Famille = 5 Then
				this.NomProcesseur +=  "K5 Family"
			Elseif this.Famille = 6 Then
				this.NomProcesseur +=  "K6 Family"
			Else
				this.NomProcesseur +=  "Unknown/New CPUID : " & this.Famille
			End if
		End if
	End if

	
	Function = TRUE
End Function

#print * loader cpu info
Sub Maj_CPUINFO()
	' Mettre a jour les informations de CPU
	
	Dim CouleurCpuID as integer
	
	DEBUG(" * Recuperation des informations CPU ...", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ACTION, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "") : doevents(500000)
	
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.get_cpuid() = TRUE Then
		
		DEBUG(" Processeur ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		DEBUG(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.VendorID, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		
		
		DEBUG(" " & CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.NomProcesseur, CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		
		DEBUG("  Familly:", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		DEBUG(str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.Famille_aff), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		
		DEBUG(" Model:", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		DEBUG(Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.Modele_aff), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		
		DEBUG(" ID:", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		DEBUG(Str(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid.identifiant), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_OK, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")

	Else
		DEBUG(" Processeur x86 inconnu", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
		DEBUG(" CPUID -> [ERROR]", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	End if
	
	sleep 2000 ' Laisser le temps de voir l'information
	
	DEBUG("  [_cpuid] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cpuid = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cpuid), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	sleep 200 ' Laisser le temps de voir l'information
	
	DEBUG("  [_apic] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._apic = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._apic), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_VirtualMachineExtx86] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._vmx = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._vmx), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_MultiProcessor] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mp = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mp), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_MultiCore] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cmp = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cmp), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_rdtscp] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._rdtscp = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._rdtscp), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	
	sleep 200 ' Laisser le temps de voir l'information
	
	DEBUG("  [_tsc] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._tsc = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._tsc), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_cmov] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cmov = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cmov), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_clfsh] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._clfsh = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._clfsh), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_PageSizeExtension] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._pse = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._pse), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_pae] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._pae = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._pae), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_cmpxchg8b] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cx8 = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._cx8), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	
	DEBUG("  [_fxsr] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._fxsr = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._fxsr), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	
	
	
	DEBUG("  [_hht] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._hht = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._hht), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_PageSizeExtension36bits] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._psn = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._psn), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	sleep 200 ' Laisser le temps de voir l'information
	
	DEBUG("  [_fpu] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._fpu = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._fpu), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_mmx] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mmx = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._mmx), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_sse] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_sse2] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse2 = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse2), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_sse3] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse3 = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse3), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_sse4] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse4 = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse4), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_sse4a] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse4a = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._sse4a), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	sleep 500 ' Laisser le temps de voir l'information
	
	DEBUG("  [_3dnow] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._3dnow = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._3dnow), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_3dnow2] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._3dnow2 = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._3dnow2), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	
	DEBUG("  [_HyperThreading] -> ", CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_SURBRILLE, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.NoCRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	IF CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._hht = TRUE Then CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_Validation Else CouleurCpuID = CPCDOS_INSTANCE.DEBUG_INSTANCE.Couleur_ERREUR 
	DEBUG(STR(CPCDOS_INSTANCE.SYSTEME_INSTANCE.cpuid._hht), CPCDOS_INSTANCE.DEBUG_INSTANCE.Ecran, CPCDOS_INSTANCE.DEBUG_INSTANCE.NonLog, CouleurCpuID, 0, CPCDOS_INSTANCE.DEBUG_INSTANCE.CRLF, CPCDOS_INSTANCE.DEBUG_INSTANCE.SansDate, CPCDOS_INSTANCE.DEBUG_INSTANCE.SIGN_CPCDOS, "")
	

End sub


