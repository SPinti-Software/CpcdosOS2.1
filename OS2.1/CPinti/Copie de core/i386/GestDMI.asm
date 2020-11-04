; *** Gestion du multi-core ***
; En developpement / Adaptation par Sebatien FAVIER
; 24-07-2015
; Maj : 27-10-2015
; 
; Remerciements a Chourdakis Michael
;-------------------------------------------------------------------------------------------

FORMAT MZ 
ENTRY CODE16:Start16
STACK STACK16:sseg16

; Definition des macro
macro sleep16 Ginette_La_Voisine
	{
	; Important s'il on veut laisser les autres coeurs se reveiller
	push ax
	mov al,0x30
	out 0x43,al
	
	mov ax,Ginette_La_Voisine
	
	; Envoyer 1 petit octet
	out 0x40, al
	xchg al,ah
	
	; Et un plus gros
	out 0x40, al
	
	; et on verifie
	local .lchk1
	.lchk1:
	
	mov al,0xE2
	out 0x43,al
	in al,0x40
	mov ah,al
	in al,0x40
	xchg al,ah
	cmp ax,0
	jnz .lchk1
	
	
	; ** CRASH **
	;	bt ax,7
	;	jnc .lchk1
	; ***********
	pop ax
	}
	
macro lock16 trg,del = -1
	{
	push ds
	push di
	push ecx
	MOV DI,DATA16
	MOV DS,DI
	MOV DI,trg
	mov ecx,del
	call far CODE16:MutexLock16f
	pop ecx
	pop di
	pop ds
	}

macro lock32 trg,del = -1
	{
	push ds
	push di
	push ecx
	MOV DI,pm_sel_mydata16
	MOV DS,DI
	MOV DI,trg
	mov ecx,del
	db 066h
	db 09ah
	dw MutexLock16f
	dw pm_sel_mycode16
	pop ecx
	pop di
	pop ds
	}

; --> push ad, eax
macro pushadeax
	{
	push ebx
	push ecx
	push edx
	push esi
	push edi
	push ebp
	}
	
; --> pop ad, eax
macro popadeax
	{
	pop ebp
	pop edi
	pop esi
	pop edx
	pop ecx
	pop ebx
	}
macro spin v
	{
	push ecx
	mov ecx,v
	local .l1
	local .l2
	.l1:
	pause
	dec ecx
	jecxz .l2
	jmp .l1
	.l2:
	pop ecx
	}
	

macro linear reg,trg,seg = DATA16
	{
;	xor reg,reg
	mov reg,seg
	shl reg,4
	add reg,trg
	}

macro lock64 trg,del = -1
	{
	push rcx
	push rdi
	mov ecx,del
	linear rdi,trg
	call MutexLock64
	pop rdi
	pop rcx
	}
	
macro unlock16 trg
	{
	push ds
	push di
	MOV DI,DATA16
	MOV DS,DI
	MOV DI,trg
	call far CODE16:MutexFree16f
	pop di
	pop ds
	}
	
macro unlock32 trg
	{
	push ds
	push di
	MOV DI,pm_sel_mydata16
	MOV DS,DI
	MOV DI,trg
	db 066h
	db 09ah
	dw MutexFree16f
	dw pm_sel_mycode16
	pop di
	pop ds
	}

macro unlock64 trg
	{
	push rdi
	linear rdi,trg
	call MutexFree64
	pop rdi
	}
	
;-------------------------------------------------------------------------------------------
; Structure Definitions
;-------------------------------------------------------------------------------------------
struc A_CPU a,b,c,d
        {
                .acpi   dd a
                .apic   dd b
                .flags  dd c
				.handle dd d
        }


struc GDT_STR s0_15,b0_15,b16_23,flags,access,b24_31
        {
		.s0_15   dw s0_15
		.b0_15   dw b0_15
		.b16_23  db b16_23
		.flags   db flags
		.access  db access
		.b24_31  db b24_31
        }

        
struc IDT_STR o0_15,se0_15,zb,flags,o16_31
        {
		.o0_15   dw o0_15
		.se0_15  dw se0_15
		.zb      db zb
		.flags   db flags
		.o16_31  dw o16_31
        }

struc IDT_STR64 o0_15,se0_15,zb,flags,o16_31,o32_63,zr
        {
		.o0_15   dw o0_15
		.se0_15  dw se0_15
		.zb      db zb
		.flags   db flags
		.o16_31  dw o16_31
		.o32_63  dd o32_63
		.zr      dd zr
        }


;-------------------------------------------------------------------------------------------
; data segment 
;-------------------------------------------------------------------------------------------
SEGMENT DATA16 USE16
ORG 0

; Messages
m1 db "Interface multicore pour CPinti Core.",0dh,0ah,"$"
m2 db "DMMI installe!.",0dh,0ah,"$"
m3 db "DMMI desinstalle.",0dh,0ah,"$"
testr db 0
page1gb equ 1

IntCompleted db 0

null1 db 100 dup (0)
intf1called db 0
null2 db 100 dup (0)

real_regs dw 10 dup (0); ax,bx,cx,dx,si,di,ds,es,int,flags

null3 db 100 dup (0)

; ACPI compatible, Lenovo B590, et certains ASUS -> Adresse a chercher!
tester_mutex db 0xFF
mut_ipi db 0xFF
mut_f1 db 0xFF
maxmutex = 128
mutexs db maxmutex dup (254)
numcpus db 0
somecpu A_CPU 0,0,0,0
cpusstructize = $-(somecpu)
CpusOfs:
cpus db cpusstructize*64 dup(0)
MainCPUAPIC db 0
LocalApic dd 0xFEE00000
XsdtAddress dq 0
StartSipiAddrOfs dw 0
StartSipiAddrSeg dw 0
ProcedureStart dd 0
RealIDT db 6 dup (0)


; GDT
pm_sel_mycode32 = 0x08
pm_sel_mycode16 = 0x10
pm_sel_mydata32 = 0x18
pm_sel_mydata16 = 0x20
pm_sel_rcode32 = 0x28
pm_sel_rcode16 = 0x30
pm_sel_rdata32 = 0x38
pm_sel_rdata16 = 0x40
pm_sel_rcode64 = 0x48
pm_sel_rdata64 = 0x50

; Full GDT
gdt_start dw gdt_size
gdt_ptr dd 0
dummy_descriptor GDT_STR 0,0,0,0,0,0
mycode32_descriptor  GDT_STR 0ffffh,0,0,9ah,0cfh,0 ; 4GB 32-bit code
mycode16_descriptor  GDT_STR 0ffffh,0,0,9ah,0,0    ; 64k 16-bit code
mydata32_descriptor  GDT_STR 0ffffh,0,0,92h,0cfh,0 ; 4GB 32-bit data
mydata16_descriptor  GDT_STR 0ffffh,0,0,92h,0,0    ; 64k 16-bit data
rcode32_descriptor  GDT_STR 0ffffh,0,0,9ah,0cfh,0 ; 4GB 32-bit code
rcode16_descriptor  GDT_STR 0ffffh,0,0,9ah,0,0    ; 64k 16-bit code
rdata32_descriptor  GDT_STR 0ffffh,0,0,92h,0cfh,0 ; 4GB 32-bit data
rdata16_descriptor  GDT_STR 0ffffh,0,0,92h,0,0    ; 64k 16-bit data
code64_descriptor  GDT_STR 0ffffh,0,0,9ah,0afh,0 ; 16TB 64-bit code, 08cfh access = 01001111b = Big,64bit (0), 1111 more size
data64_descriptor  GDT_STR 0ffffh,0,0,92h,0afh,0 ; 16TB 64-bit data, 08cfh access = 10001111b = Big,64bit (0), 1111 more size
gdt_size = $-(dummy_descriptor)



; Mode GDT (non reel)
gdt_startUNR dw gdt_sizeUNR
gdt_ptrUNR dd 0
dummy_descriptorUNR GDT_STR 0,0,0,0,0,0
code16_descriptorUNR  GDT_STR 0ffffh,0,0,9ah,0,0
data32_descriptorUNR  GDT_STR 0ffffh,0,0,92h,0cfh,0
gdt_sizeUNR = $-(dummy_descriptorUNR)



; IDT protege
idt_PM_start      dw             idt_size
idt_PM_ptr dd 0
interruptsall db 2048 dup (0)
idt_size=$-(interruptsall)

; IDT long
lidt_PM_start      dw             lidt_size
lidt_PM_ptr dq 0
linterruptsall db 4096 dup (0)
lidt_size=$-(linterruptsall)

LONGPAGEABS dd 0


;-------------------------------------------------------------------------------------------
; 16 bit stack segment 
;-------------------------------------------------------------------------------------------
SEGMENT STACK16 USE16
ORG 0
sseg16 dw 2048 dup (?)
stack16_end:
		

		
;-------------------------------------------------------------------------------------------
; Segment to store page entries 
;-------------------------------------------------------------------------------------------
SEGMENT PAGEFORLONG USE16
dummy dd 10000 dup (0)

		
;-------------------------------------------------------------------------------------------
; 16 bit stack segment for sipi
;-------------------------------------------------------------------------------------------
SEGMENT STACK16S USE16
ORG 0
sseg16s dw 2048 dup (?)
stack16s_end:
		


;-------------------------------------------------------------------------------------------
; 16 bit code segment 
;-------------------------------------------------------------------------------------------
SEGMENT CODE16 USE16
ORG 0h
	
	OldIntF0 dd 0
	OrgPSP DW 0
	OldIntF1 dd 0
	OldIntF2 dd 0
	OldInt21 dd 0
	
	;-------------------------------------------------------------------------------------------
	; RealCall 
	;-------------------------------------------------------------------------------------------
	RealCall:
	
		pushf
		push cs
		call f0real
		retf
	
	;-------------------------------------------------------------------------------------------
	; Interrupt 0x21 
	;-------------------------------------------------------------------------------------------
	rd21:
	
		
		push ax
		push ds
		push bx
		mov ax,DATA16
		mov ds,ax
		call far CODE16:GetMyApic16f
		cmp bl,0
		jz .GoOld
		
		pop bx
		pop ds
		pop ax
		
		
		mov bp,ax
		mov ax,0x0421
		int 0xF0
		iret
		
		.GoOld:
		pop bx
		pop ds
		pop ax
		jmp far [cs:OldInt21]
		
		
		
	
	;-------------------------------------------------------------------------------------------
	; Interrupt 0xF0 : 
	;-------------------------------------------------------------------------------------------
	f0real:

		jmp .a00
		
		db 'dmmi'
		db 'dmmi'

		
		.a00:
		
;		push ax
;		mov al,0x20
;		out 0x20,al
;		pop ax
		
		
		.a0:

			; ah = 0, init
			cmp ah,0
			jnz .ea0
			push ds
			mov ax,DATA16
			mov ds,ax
			xor bx,bx
			mov bl,[ds:numcpus]

			call far CODE16:FindFreeCPU16

			xor eax,eax
			push esi
			mov esi,cpus
			xor cx,cx
			mov cl,[ds:numcpus]
			dec cx
			mov ax,0
			add esi,cpusstructize ; bypass first cpu
			.l1:
			cmp dword [esi + 12],0	
			jnz .l4
			inc ax
			.l4:
			dec cx
			add esi,cpusstructize
			jcxz .l2
			jmp .l1
			.l2:
			mov ecx,eax
			pop esi
			mov ax,DATA16

			mov dx,cpus

			mov dx,pm_sel_mycode32
			mov gs,dx
			mov dx,CODE16
			mov es,dx
			mov dx,RealCall
			mov esi,ProtectedCall
			mov edi,LongCall
			xchg cx,bx
			
			pop ds
			iret
		
		.ea0:
		
		cmp ah,0x01
		jz .a0100
		jmp .a2
		
		.a0100:
			
			; REAL mode thread
			; Start Real mode thread
			; EDX seg:ofs (or if bit 2 of AL is 1, DX ofs, SI seg)
			; BX cpu index, or 0
			bt ax,0
			jc .ea1a0
			bt ax,1
			jc .ea1a0
			bt ax,2

			push ds
			pushf
			xor eax,eax
			mov ax,DATA16
			mov ds,ax
			mov [ds:IntCompleted],0
			mov [ds:ProcedureStart],0
			popf
			jc .prepx
			mov [ds:StartSipiAddrOfs],dx
			shr edx,16
			mov [ds:StartSipiAddrSeg],dx
			jmp .okx
			.prepx:
			; Set a call-one (useful for C)
			mov word [ds:ProcedureStart],dx
			mov word [ds:ProcedureStart + 2],si
			
;			db 0xcc
;			pushad
;			call far [ds:ProcedureStart]
;			popad
			
			mov [ds:StartSipiAddrOfs],PrepRM
			mov [ds:StartSipiAddrSeg],CODE16
			.okx:
			pop ds
			
			cmp bx,0
			jnz .bxn0
			
			call far CODE16:FindFreeCPU16
			cmp ax,0
			jnz .cont
			
			.ef:
			mov ax,0
			iret
			
			.bxn0:
			mov eax,ebx
			
			.cont:
			push ebx
			push eax
			pop ebx

			; save handle
			call GetLinearCPUPtr16
			mov [fs:eax + 12],ebx
			
			push ds
			mov ax,DATA16
			mov ds,ax
			call far CODE16:SendSIPIf
			pop ds
			pop eax ;keep ebx, handle
			mov eax,ebx

			; iii Loop for completion of interrupt
			
			push ax
			push ds
			mov ax,DATA16
			mov ds,ax
			.iii:
				jecxz .liii
				cmp ecx,-1
				jz .nliii
				dec ecx
				.nliii:
				pause
				cmp [ds:IntCompleted],1
				jnz .iii
			.liii:
			pop ds
			pop ax
			.endiii:
			
			iret
		
		.ea1a0:
		.a1a2:
		
			; Start Protected mode thread
			; Low AL 2 bits = 1
			; edx,esi,edi 
			; starts from org 0 segnent esi
			; BX cpu index, or 0
			bt ax,0
			jnc .ea1a2
			bt ax,1
			jc .ea1a2

			call CODE16:GDTInitF
			xor eax,eax
			push ds
			mov ax,DATA16
			mov ds,ax
			mov [ds:IntCompleted],0
			mov [ds:StartSipiAddrOfs],PrepPM
			mov [ds:StartSipiAddrSeg],CODE16
			pop ds
			
			cmp bx,0
			jnz .bxn1
			
			call far CODE16:FindFreeCPU16
			cmp ax,0
			jnz .cont1
			
			.ef2:
			mov ax,0
			iret
			
			.bxn1:
			mov eax,ebx
			
			.cont1:
			push ebx
			push eax
			pop ebx

			; save handle
			call GetLinearCPUPtr16
			mov [fs:eax + 12],ebx

			call far CODE16:SendSIPIf
			pop eax ;keep ebx, handle
			mov eax,ebx

			; iii Loop for completion of interrupt
			push ax
			push ds
			mov ax,DATA16
			mov ds,ax
			.iii2:
				jecxz .liii2
				cmp ecx,-1
				jz .nliii2
				dec ecx
				.nliii2:
				pause
				cmp [ds:IntCompleted],1
				jnz .iii2
			.liii2:
			pop ds
			pop ax
			.endiii2:
			
			iret

		.ea1a2:
		.a1a3:
		
			; Start Long x64 mode thread
			; starts from physcal esi
			; BX cpu index, or 0
			bt ax,0
			jc .ea1a3
			bt ax,1
			jnc .ea1a3

			
			; Linear Start
			push ds
			mov ax,CODE64
			mov ds,ax
			mov [ds:PutLinearStart64X],esi
			pop ds

	
			call CODE16:GDTInitF
			xor eax,eax
			push ds
			mov ax,DATA16
			mov ds,ax
			mov [ds:IntCompleted],0
			mov [ds:StartSipiAddrOfs],PrepLM
			mov [ds:StartSipiAddrSeg],CODE16
			pop ds

			
			cmp bx,0
			jnz .bxn2
			
			call far CODE16:FindFreeCPU16
			cmp ax,0
			jnz .cont2
			
			.ef3:
			mov ax,0
			iret
			
			.bxn2:
			mov eax,ebx

			
			.cont2:
			push ebx
			push eax
			pop ebx


			; save handle
			call GetLinearCPUPtr16
			mov [fs:eax + 12],ebx

			call far CODE16:SendSIPIf
			pop eax ;keep ebx, handle
			mov eax,ebx

			; iii Loop for completion of interrupt
			push ax
			push ds
			mov ax,DATA16
			mov ds,ax
			.iii3:
				jecxz .liii3
				cmp ecx,-1
				jz .nlii3
				dec ecx
				.nlii3:
				pause
				cmp [ds:IntCompleted],1
				jnz .iii3
			.liii3:
			pop ds
			pop ax
			.endiii3:

			iret



		
		
		.ea1a3:

		
		.a2:


			; End thread
			cmp ah,0x02
			jnz .ea2
			

			push ds
			mov ax,DATA16
			mov ds,ax
			call far CODE16:GetMyApic16f
			
			mov eax,ebx
			call FAR CODE16:CPUIndexFromAPIC16f
			mov ebx,eax

			; remove handle
			call GetLinearCPUPtr16
			mov dword [fs:eax + 12],0
	
			; Wake CPU 
			xor ebx,ebx
			mov ECX,0F2h
			MOV bp,DATA16
			MOV ds,BP
;			call FAR CODE16:SendIPIF
		
			.s1:
			cli
			hlt
			jmp .s1
			
			iret
		
		.ea2:

		.a3:


			; Wait for CPU
			cmp ah,0x03
			jnz .ea3
			
			
			cmp al,0x1
			jnz .NoHLT
			
			; Wait using int 0xF2
			mov byte [cs:f2wake],0
			
			.LoopF2:
			HLT
			cmp byte [cs:f2wake],0
			jnz .EndLoopF2
			jmp .LoopF2
			.EndLoopF2:
			
			
			iret
			
			.NoHLT:

			pushad

			; save handle
			call GetLinearCPUPtr16

			.wft:
			pause
			cmp dword [fs:eax + 12],0
			jnz .wft

			popad
			iret
		
		.ea3:

		.a400: ; Call Interrupt
			cmp ah,0x04
			jnz .ea4
			; BP = AX 
			; AL = INT N
		
		
			PUSH DS
			PUSHAD
			
			;lock
			lock16 mut_f1

			mov ax,bp
			
			; put them
			mov bp,DATA16
			mov ds,bp
			MOV BP,real_regs
			mov [ds:bp + 0],ax
			mov [ds:bp + 2],bx
			mov [ds:bp + 4],cx
			mov [ds:bp + 6],dx
			mov [ds:bp + 8],si
			mov [ds:bp + 10],di

			popad
			pop ds
			push ds
			pop di
			push ds
			pushad

			MOV bp,DATA16
			MOV ds,BP
			MOV BP,real_regs
			mov [ds:bp + 12],di
			mov [ds:bp + 14],es
			POPAD
			PUSHAD
			mov ah,0
			push bp
			MOV BP,real_regs
			mov [ds:bp + 16],ax
			pop bp
			
			; call
			call far CODE16:GetMyApic16f
			mov eax,ebx
			call FAR CODE16:CPUIndexFromAPIC16f
			mov ebx,eax

			
			mov [ds:intf1called],0
			
;			cmp ebx,0
;			jnz .nlocal

;			int 0xf1
;			jmp .ecall
			
			.nlocal:



			
			; send ipi
			xor ebx,ebx
			mov ECX,0F1h
			push bp
			MOV bp,DATA16
			MOV ds,BP;
			pop bp
			call FAR CODE16:SendIPIF

			MOV bp,DATA16
			MOV ds,BP


			.rtr:
			pause
			cmp byte [ds:intf1called],0
			jz .rtr
			
			.ecall:


	
			;lock
			
			; restore regs
			POPad
			POP ds
			MOV bp,DATA16
			MOV ds,BP
			MOV BP,real_regs
			
			mov ax,[ds:bp]
			mov bx,[ds:bp + 2]
			mov cx,[ds:bp + 4]
			mov dx,[ds:bp + 6]
			mov si,[ds:bp + 8]
			mov di,[ds:bp + 10]
			push ax
			push bx
			mov ax,[ds:bp + 12]
			mov bx,[ds:bp + 14]
			mov bp,[ds:bp + 18]
			mov ds,ax
			mov es,bx
			pop bx
			pop ax
			push bp
			popf

			PUsh ds
			PUshad
			
			;unlock
			unlock16 mut_f1
			
			POPad
			POP ds
			iret
			
		.ea4:


		.a500: ; Mutex Alloc, returns in bX
			cmp ax,0x0500
			jnz .ea500
			
			push ds
			push si
			
			mov ax,DATA16
			mov ds,ax
			mov si,0
			
			.lx1:
			cmp byte [ds:mutexs + si],0xFE
			jz .freefound
			inc si
			cmp si,maxmutex
			jae .nofreefound
			jmp .lx1
			
			.nofreefound:
			mov bx,0
			mov ax,0
			jmp .mlend
			.freefound:
			mov bx,si
			mov ax,1
			mov byte [ds:mutexs + si],0xFF
			
			.mlend:
			pop si
			pop ds
			iret
			
		.ea500:

		.a501: ; Mutex Free. BX = mut
			cmp ax,0x0501
			jnz .ea501
			
			push ds
			push si
			
			mov ax,DATA16
			mov ds,ax
			mov si,bx
			mov ax,0
			
			cmp byte [ds:mutexs + si],0xFF
			jnz .freefail
			mov byte [ds:mutexs + si],0xFE
			mov ax,1
			
			.freefail:

			pop si
			pop ds
			iret
			
		.ea501:

		.a502: ; Mutex Lock. BX = mut
			cmp ax,0x0502
			jnz .ea502
			
			push ds
			push si
			
			mov ax,DATA16
			mov ds,ax
			mov si,bx
			mov ax,0
			
			cmp byte [ds:mutexs + si],0xFE
			jz .lockfail

			push di
			mov di,mutexs
			add di,si
			call far CODE16:MutexLock16f
			pop di
			mov ax,1
			
			.lockfail:

			pop si
			pop ds
			iret
			
		.ea502:

		.a503: ; Mutex Unlock. BX = mut
			cmp ax,0x0503
			jnz .ea503
			
			push ds
			push si
			
			mov ax,DATA16
			mov ds,ax
			mov si,bx
			mov ax,0
			
			cmp byte [ds:mutexs + si],0xFE
			jz .unlockfail
			cmp byte [ds:mutexs + si],0xFF
			jz .unlockfail

			push di
			mov di,mutexs
			add di,si
			call far CODE16:MutexFree16f
			pop di
			mov ax,1
			
			.unlockfail:

			pop si
			pop ds
			iret
			
		.ea503:

		.a504: ; Mutex wait free. BX = mut
			cmp ax,0x0504
			jnz .ea504
			
			mov eax,-1
			push edi
			linear edi, mutexs
			add di,bx

			cmp byte [fs:edi],0xFE
			jz .lockfail4
			.Loop1:		
			CMP byte [fs:edi],0xff
			JZ .OutLoop1
			cmp ecx,-1
			jz .nox
			dec ecx
			jecxz .lockfail4
			.nox:
			pause 
			JMP .Loop1
			
			.OutLoop1:
			mov ax,1
			.lockfail4:

			pop edi
			iret
			
		.ea504:
		
		.a6:
			; Wake CPU 
			cmp ah,0x06
			jnz .ea6
			mov ECX,0F2h
			MOV bp,DATA16
			MOV ds,BP
			call FAR CODE16:SendIPIF
			iret
		.ea6:
		
		.a7: ; Thread initilized and running
			cmp ax,0x0700
			jnz .ea7
			push ax
			push ds
			mov ax,DATA16
			mov ds,ax
			mov [ds:IntCompleted],1
			pop ds
			pop ax
			iret
		.ea7:
		
		.a99:
			cmp ah,0x99
			jnz .ea99
			

			; Free interrupts
			push cs
			call FreeInterrupts
	
			; Free memory
			mov ax,[cs:OrgPSP]
			mov es,ax
			mov ax,0x4900
			int 21h

			; Goodbye :)
			mov  ax,4C00h
			int  21h     
			
			iret
			
		.ea99:
		
		iret

	;-------------------------------------------------------------------------------------------
	; Interrupt 0xF2 : 
	;-------------------------------------------------------------------------------------------
	f2wake db 0 
	f2real:
		mov byte [cs:f2wake],1
		iret
		
	;-------------------------------------------------------------------------------------------
	; Interrupt 0xF1 : 
	;-------------------------------------------------------------------------------------------
;	trs db 0
	f1real:

	if 0
		cmp byte [cs:trs],0
		jz .fx
;		db 0xcc
		.fx:
		mov byte [cs:trs],1
		mov dl,0x31
		mov ax,0x0200
		int 21h
;		mov al,0x20
;		out 0x20,al
		iret
	end if

	
	PUSH DS
	push es
		PUSHAD

		

		
		MOV DI,DATA16
		MOV DS,DI

		;lock
		
		MOV DI,DATA16
		MOV DS,DI
		MOV BP,real_regs
		mov ax,[ds:bp]
		
		
		mov bx,[ds:bp + 2]
		mov cx,[ds:bp + 4]
		mov dx,[ds:bp + 6]
		mov si,[ds:bp + 8]
		mov di,[ds:bp + 10]
		push ax
		push bx
		mov ax,[ds:bp + 12]
		mov bx,[ds:bp + 14]
		mov bp,[ds:bp + 16]
		
		mov ds,ax
		mov es,bx
		pop bx
		mov ax,4
		push dx
		mul bp
		pop dx
		mov bp,ax
		pop ax


		; call interrupt
		push ds
		push di
		MOV di,DATA16
		MOV DS,di
		mov di,word [ds:RealIDT + 4];
		mov gs,di
		mov di,word [ds:RealIDT + 2]; ; gs:di now interrupt vector
		add bp,di
		pop di

		pop ds

		pushf
		call far [gs:bp]

		pushf
		; restore regs
		push ds
		MOV BP,DATA16
		MOV DS,BP
		MOV BP,real_regs
		mov [ds:bp],ax
		mov [ds:bp + 2],bx
		mov [ds:bp + 4],cx
		mov [ds:bp + 6],dx
		mov [ds:bp + 8],si
		mov [ds:bp + 10],di
		pop ds
		push ds
		pop ax
		MOV BP,DATA16
		MOV DS,BP
		MOV BP,real_regs
		mov [ds:bp + 12],ax
		push es
		pop ax
		mov [ds:bp + 14],ax
		pop ax
		mov [ds:bp + 18],ax
		
		MOV DI,DATA16
		MOV DS,DI
		mov [ds:intf1called],1
		
		; End of it :)
		call SendEOI

		POPAD
		pop es
		POP DS
		iret		

	;-------------------------------------------------------------------------------------------
	; GetLinearCPUPtr16 : EBX : index
	;-------------------------------------------------------------------------------------------
	GetLinearCPUPtr16: ; In EAX
		push edx
		push ebx
		xor eax,eax
		mov eax,ebx
		mov dx,cpusstructize
		mul dx
		add eax,cpus
		mov ebx,DATA16
		shl ebx,4
		add ebx,eax
		xchg eax,ebx
		pop ebx
		pop edx
		ret
		

	;-------------------------------------------------------------------------------------------
	; BackFromLong : Back from long mode, switch to RM before HLT
	;-------------------------------------------------------------------------------------------
	BackFromLong:
	
		; Switch back to real mode
		mov eax, cr0 ; Read CR0.
		and eax,7ffffffeh ; Set PE=0.
		mov cr0, eax ; Write CR0.

		; Deactivate Long Mode
		mov ecx, 0c0000080h ; EFER MSR number. 
		rdmsr ; Read EFER.
		btc eax, 8 ; Set LME=0.
		wrmsr ; Write EFER.

		; Disable PAE
		mov eax, cr4
		btc eax, 5
		btc eax, 4
		mov cr4, eax
		
		; Halt
		.fx:
		CLI
		HLT
		jmp .fx
		
	
		
	;-------------------------------------------------------------------------------------------
	; InitPageTable: Initialize Page  
	;-------------------------------------------------------------------------------------------
	InitPageTable:
		pushad
        push ds
        push es
        linear eax,0,PAGEFORLONG
		mov ECX,0
			.L1:
			TEST EAX,0xFFF
			JZ .L2
			INC EAX
			INC ECX
			JMP .L1
			.L2:
		mov [DS:LONGPAGEABS],EAX
		mov esi,eax
		mov edi,eax

		; Zero the memory 
		xor     eax, eax
		mov     edi,ebp
		mov     ecx,03000h
		.lx2:
		mov byte [fs:esi],0
		inc esi
		loop .lx2
		sub esi,0x3000

		
		if page1gb eq 1
			; 4 Levels: PML4T (512) -> PDPT (512) -> PDT (512) -> PT (512) 4KB page
			; We will stop at PDPT with S = 1, to create 1GB pages 
			
			; Put the PML4T to 0x0000, these are 512 entries, so it takes 0x1000 bytes
			; We only want the first PML4T 
			mov eax,esi
			add eax,0x1000 ; point it to the first PDPT
			or eax,3 ; Present, Readable/Writable
			mov [fs:esi + 0x0000],eax
			
			mov ecx,4 ; Map 4GB (512*1GB).  
			mov eax,0x83 ; Also bit 7
			mov edi,esi
			add edi,0x1000
			.lxf1:
			mov     [fs:edi],eax
			add     eax,1024*1024*1024
			add edi,8
			loop .lxf1
		else
			; 4 Levels: PML4T (512) -> PDPT (512) -> PDT (512) -> PT (512) 4KB page
			; In PAE, we will stop at PDT with S = 1, to create 2MB pages 
			
			; Put the PML4T to 0x0000, these are 512 entries, so it takes 0x1000 bytes
			; We only want the first PML4T 
			mov eax,esi
			add eax,0x1000 ; point it to the first PDPT
			or eax,3 ; Present, Readable/Writable
			mov [fs:esi + 0x0000],eax
			
			; Put the PDPT to 0x1000, these are 512 entries, it takes 0x1000 bytes
			; We only want the first PDPT 
			mov eax,esi
			add eax,0x2000 ; point it to the first PDT
			or eax,3 ; Present, Readable/Writable
			mov [fs:esi + 0x1000],eax
			
			if 0
				; We would use this to map 4KB pages
				; Put the PDT to 0x2000, these are 512 entries, it takes 0x1000 bytes
				; We only want the first PDT 
				mov eax,esi
				add eax,0x3000 ; point it to the first PT
				or eax,3 ; Present, Readable/Writable
				mov [fs:esi + 0x2000],eax

				; The 512 PT entries now at 0x3000
				mov ecx,512 ; Map 2MB (512*4K) 
				mov eax,0x3
				mov edi,esi
				add edi,0x3000
				.lxf1:
				mov     [fs:edi],eax
				add     eax,0x1000
				add edi,8
				loop .lxf1
			end if	

			
			if 1
				mov ecx,511 ; Map 1GB (512*2MB) - 2MB (reserved to map the APIC later) 
				mov eax,0x83 ; Also bit 7
				mov edi,esi
				add edi,0x2000
				.lxf1:
				mov     [fs:edi],eax
				add     eax,1024*1024*2
				add edi,8
				loop .lxf1
			end if
	
			; We also want to map the Local APIC because we want to access it from long mode
			; We will write at [fs:edi], which is 1GB - 2MB 
				mov eax,0x83
				add eax,[ds:LocalApic]
				mov [fs:edi],eax
			end if
				
		pop es
		pop ds
		popad
		ret
		

	;-------------------------------------------------------------------------------------------
	; GDTInitF: Initialize GDT for stuff 
	;-------------------------------------------------------------------------------------------
	GDTInitF: ; // edx upper = 16bit cs, dx = 16bit ds, esi = 32bit physical cs, edi = 32 bit physical ds  
		push ds
		mov ax,DATA16
		mov ds,ax

		linear eax,0,CODE32
		mov     [ds:mycode32_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:mycode32_descriptor.b16_23],ah

		linear eax,0,CODE16
		mov     [ds:mycode16_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:mycode16_descriptor.b16_23],ah

		xor eax,eax
		mov     [ds:mydata32_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:mydata32_descriptor.b16_23],ah

		linear eax,0,DATA16
		mov     [ds:mydata16_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:mydata16_descriptor.b16_23],ah

		mov eax,esi
		mov     [ds:rcode32_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:rcode32_descriptor.b16_23],ah

		xor eax,eax
		mov     eax,edx
		shr 	eax,16
		shl     eax,4           ; make a physical address
		mov     [ds:rcode16_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:rcode16_descriptor.b16_23],ah

		mov eax,edi
		mov     [ds:rdata32_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:rdata32_descriptor.b16_23],ah

		xor eax,eax
		mov     ax,dx
		shl     eax,4           ; make a physical address
		mov     [ds:rdata16_descriptor.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:rdata16_descriptor.b16_23],ah


		XOR eax,eax
		mov     [ds:code64_descriptor.b0_15],ax ; store it in the dscr
		mov     [ds:code64_descriptor.b16_23],ah

		XOR eax,eax
		mov     [ds:data64_descriptor.b0_15],ax ; store it in the dscr
		mov     [ds:data64_descriptor.b16_23],ah

		linear eax,dummy_descriptor
		mov     [gdt_ptr],eax
		pop ds
		retf

	;-------------------------------------------------------------------------------------------
	; IDTInitF: Initialize IDT for stuff 
	;-------------------------------------------------------------------------------------------
	IDTInitF:
		xor edx,edx
		add edx,f0pm
		mov eax,edx
		mov di,interruptsall
		add di,0xf0*8
		mov word [di],ax ; lower
		add di,2
		mov word [di],pm_sel_mycode32; sel
		add di,2
		mov byte [di],0
		add di,1
		mov byte [di],08Eh; 
		add di,1
		mov eax,edx
		shr eax,16
		mov word [di],ax ; upper

		; Set idt ptr
		linear eax,interruptsall
		mov     [idt_PM_ptr],eax
		retf

	;-------------------------------------------------------------------------------------------
	; IDTInit64F: Initialize IDT for 64 stuff 
	;-------------------------------------------------------------------------------------------
	IDTInit64f:
		linear edx,f0lm,CODE64

		mov ecx,256
		mov di,linterruptsall

		.l1:
		mov eax,edx
		;add di,0xf0*16
		mov word [di],ax ; lower
		add di,2
		mov word [di],pm_sel_rcode64; sel
		add di,2
		mov byte [di],0
		add di,1
		mov byte [di],08Eh; 
		add di,1
		mov eax,edx
		shr eax,16
		mov word [di],ax ; upper
		add di,2
		mov dword [di],0; 
		add di,8
		loop .l1

		; Set idt ptr
		linear eax,linterruptsall
		mov     dword [lidt_PM_ptr],eax
		mov     dword [lidt_PM_ptr + 4],0

		retf


	;-------------------------------------------------------------------------------------------
	; Function CPUIndexFromAPIC16f : EAX -> EAX
	;-------------------------------------------------------------------------------------------		
	CPUIndexFromAPIC16f:

		mov edx,eax
		mov esi,0
		xor ebx,ebx
		call GetLinearCPUPtr16
		; EAX = linear ptr to cpu index array
		
		push ds
		push edx
		xor ecx,ecx
		mov dx,DATA16
		mov ds,dx
		pop edx
		mov cl,[ds:numcpus]
		pop ds
		
		.l1z:
		cmp [fs:eax + 4],edx
		jz .found
		dec ecx
		add eax,cpusstructize
		inc esi
		jecxz .nfound
		jmp .l1z
	
		.nfound:
		mov eax,-1
		retf
		
		.found:
		mov eax,esi
		retf
		
		

	;-------------------------------------------------------------------------------------------
	; Function FindFreeCPU16 : AX CPU idx
	;-------------------------------------------------------------------------------------------		
	FindFreeCPU16:

		push esi
		push ecx
		push ds
		mov cx,DATA16
		mov ds,cx
		mov esi,cpus
		xor cx,cx
		mov cl,[ds:numcpus]
		dec cx
		mov ax,1
		add esi,cpusstructize ; bypass first cpu
		
		.l1:
		
		cmp dword [ds:esi + 12],0	
		jnz .l4
		jmp .l3
		.l4:
		dec cx
		inc ax
		add esi,cpusstructize
		jcxz .l2
		jmp .l1
		.l2:
		mov ax,0
		.l3:
		
		pop ds
		pop ecx
		pop esi
		retf
		
	;-------------------------------------------------------------------------------------------
	; Function MutexLock16f : DS:DI Mutex to lock
	;-------------------------------------------------------------------------------------------		
	MutexLock16f: ; DS:DI mutex to lock
		CMP byte [DS:DI],0xFE
		JNZ .np1
		retf
		.np1:

		pushadeax
		PUSH CS
		CALL GetMyApic16f ; BL has the APIC
		MOV AL,0xFF
		
		.Loop1:		
		CMP [DS:DI],BL
		JZ .OutLoop2
		CMP [DS:DI],AL
		JZ .OutLoop1
		pause 
		cmp ecx,-1
		jz .nox
		dec ecx
		jecxz .locktimeout
		.nox:
		JMP .Loop1
		
		.locktimeout:
		mov eax,-1
		popadeax
		retf
		
		.OutLoop1:

		; Lock is free, can we grab it?
		MOV AL,0xFF
		LOCK CMPXCHG [DS:DI],bl
		JNZ .Loop1 ; Write failed
		mov eax,1
		.OutLoop2: ; Lock Acquired

		popadeax
		RETF


	;-------------------------------------------------------------------------------------------
	; Function MutexFree16f : DS:DI Mutex to free
	;-------------------------------------------------------------------------------------------		
	MutexFree16f: ; DS:DI mutex to lock
		CMP byte [DS:DI],0xFE
		JNZ .np1
		retf
		.np1:
		PUSHAD
		PUSH CS
		CALL GetMyApic16f ; BL has the APIC
		CMP [DS:DI],BL
		JNZ .Exit
		mov AL,0xFF
		MOV [DS:DI],AL
		.Exit:
		POPAD
		RETF



	;-------------------------------------------------------------------------------------------
	; Function GetMyApic16f : EBX = APIC
	;-------------------------------------------------------------------------------------------		
	GetMyApic16f:
		push eax
		push ecx
		push edx
		mov eax,1
		cpuid
		and ebx,0xff000000
		shr ebx,24
		pop edx
		pop ecx
		pop eax
		retf
		
	;-------------------------------------------------------------------------------------------
	; Function SendSIPIf : Sends SIPI. EBX = CPU Index
	;-------------------------------------------------------------------------------------------		
	SendSIPIf:
		PUSHAD
		PUSH DS
		mov cx,DATA16
		mov ds,cx
		
		XOR ECX,ECX
		; Spurious
		MOV EDI,[DS:LocalApic]
		ADD EDI,0x0F0
		MOV EDX,[FS:EDI]
		OR EDX,0x1FF
		MOV [FS:EDI],EDX
		; Vector
		linear eax,SipiStart,CODE16
		.L1:
		MOV ECX,EAX
		TEST EAX,0xFFF
		JZ .L2
		INC EAX
		JMP .L1
		.L2:
		MOV ESI,EAX
		SHR ESI,12
		; Init
		MOV ECX,0x04500
		OR ECX,ESI
		push cs
		call SendIPIF
		; Delay 10 ms  = 0,01 s = (100 Hz)
		; 1193182/100
;		sleep16 11931
		MOV AH,86H
		MOV CX,0
		MOV DX,10*1000 ;10 ms
		INT 15H
		; SIPI 1
		MOV ECX,0x05600
		OR ECX,ESI
		push cs
		call SendIPIF
		; Delay 200 us = 0,2 ms = 0,0002 s = (5000 Hz)
		; 1193182/5000
;		sleep16 238
		MOV AH,86H
		MOV CX,0
		MOV DX,200 ; 200us
		INT 15H
		; SIPI 2
		MOV ECX,0x05600
		OR ECX,ESI
		push cs
		call SendIPIF
		POP DS
		POPAD
		RETF
		

	;-------------------------------------------------------------------------------------------
	; Function SendIPIf : Sends IPI. EBX = CPU Index, ECX = IPI
	;-------------------------------------------------------------------------------------------		
	SendIPIF: ; EBX = CPU INDEX, ECX = IPI
		PUSHAD
		; Lock Mutex	
		lock16 mut_ipi

		
		; Write it to 0x310
		; EBX is CPU INDEX
		; MAKE IT APIC ID
		xor eax,eax
		mov ax,cpusstructize
		mul bx
		add ax,cpus
		mov di,ax
		add di,4
		mov bl,[ds:di]
		MOV EDI,[DS:LocalApic]
		ADD EDI,0x310
		MOV EDX,[FS:EDI]
		AND EDX,0xFFFFFF
		XOR EAX,EAX
		MOV AL,BL
		SHL EAX,24
		OR EDX,EAX
		MOV [FS:EDI],EDX
		
		
		; Write it to 0x300
;		MOV EDI,0xFEE00000
		MOV EDI,[DS:LocalApic]
		ADD EDI,0x300
		MOV [FS:EDI],ECX
		; Verify it got delivered
		.Verify:
		PAUSE
		MOV EAX,[FS:EDI];
		SHR EAX,12
		TEST EAX,1
		JNZ .Verify
		; Write it to 0xB0 (EOI)
;		MOV EDI,0xFEE00000
;		MOV EDI,[DS:LocalApic]
;		ADD EDI,0xB0
;		MOV dword [FS:EDI],0
		
		; Release Mutex
		unlock16 mut_ipi
		POPAD
		RETF


	;-------------------------------------------------------------------------------------------
	; Function SendEOI : Sends EOI
	;-------------------------------------------------------------------------------------------		
	SendEOI: 
		PUSH EDI
		PUSH DS
		mov di,DATA16
		mov ds,di
		; Write it to 0xB0 (EOI)
;		MOV EDI,0xFEE00000
		MOV EDI,[DS:LocalApic]
		ADD EDI,0xB0
		MOV dword [FS:EDI],0
		POP DS
		POP EDI
		RET
		
	;-------------------------------------------------------------------------------------------
	; Function ChecksumValid : Check the sum. EDI physical addr, ECX count
	;-------------------------------------------------------------------------------------------		
	ChecksumValid:
		PUSH ECX
		PUSH EDI
		XOR EAX,EAX
		.St:
		ADD EAX,[FS:EDI]
		INC EDI
		DEC ECX
		JECXZ .End
		JMP .St
		.End:
		TEST EAX,0xFF
		JNZ .F
		MOV EAX,1
		.F:
		POP EDI
		POP ECX
		RETF
	
	;-------------------------------------------------------------------------------------------
	; Function FillACPI : Fills ACPI information
	;-------------------------------------------------------------------------------------------		
	FillACPI:
		PUSHAD
		push es
		mov es,[fs:040eh]
		xor edi,edi
		mov di,[es:0]
		pop es
		mov edi, 0x000E0000	
		.s:
		cmp edi, 0x000FFFFF	; 
		jge .noACPI			; Fail.
		mov eax,[fs:edi]
		add edi,4
		mov edx,[fs:edi]
		add edi,4
		cmp eax,0x20445352
		jnz .s
		cmp edx,0x20525450
		jnz .s
		jmp .found
		.noACPI:
		POPAD
		mov ah,04ch
		int 21h
		RETF
		.found:
		; Found at EDI
		sub edi,8
		mov esi,edi
		; 36 bytes for ACPI 2
		mov ecx,36
		push cs
		call ChecksumValid
		cmp eax,1
		jnz .noACPI2
		mov eax,[fs:edi + 24]
		mov dword [ds:XsdtAddress],eax
		mov eax,[fs:edi + 28]
		mov dword [ds:XsdtAddress + 4],eax
		mov edi,dword [ds:XsdtAddress]
		mov eax,[fs:edi]
		cmp eax, 'XSDT'			; Valid?
		jnz .noACPI2
		POPAD
		RETF
		.noACPI2:
		mov edi,esi
		mov ecx,20
		push cs
		call ChecksumValid
		cmp eax,1
		jnz .noACPI
		mov eax,[fs:edi + 16]
		mov dword [ds:XsdtAddress],eax
		mov edi,dword [ds:XsdtAddress]
		mov eax,[fs:edi]
		cmp eax, 'RSDT'			; Valid?
		jnz .noACPI
		POPAD
		RETF
		
	;-------------------------------------------------------------------------------------------
	; Function FindACPITable : Finds EAX Table
	;-------------------------------------------------------------------------------------------		
	FindACPITable:
		; EAX = sig
		push edi
		push ebx
		push edx
		mov edi,dword [ds:XsdtAddress]
		.l1:
		mov ebx,[fs:edi]
		mov edx,[fs:edi + 4]
		cmp edx,0
		jnz .ok1
		mov ah,04ch
		int 21h
		.ok1:
		cmp ebx,eax
		jz .f1
		add edi,edx
		jmp .l1
		.f1:
		mov eax,edi
		pop edx
		pop ebx
		pop edi
		RETF
	
	;-------------------------------------------------------------------------------------------
	; Function DumpMadt : Fills from  EAX MADT
	;-------------------------------------------------------------------------------------------		
	DumpMadt: ; EAX
		
		pushad
		mov edi,eax
		mov [ds:numcpus],0

		mov ecx,[fs:edi + 4] ; length
		mov eax,[fs:edi + 0x24] ; Local APIC 
		mov [ds:LocalApic],eax

		add edi,0x2C
		sub ecx,0x2C
		.l1:
			
			xor ebx,ebx
			mov bl,[fs:edi + 1] ; length
			cmp bl,0
			jz .end ; duh
			sub ecx,ebx
			
			mov al,[fs:edi] ; type
			cmp al,0
			jnz .no0
			
			; This is a CPU!
			xor eax,eax
			mov al,[ds:numcpus]
			inc [ds:numcpus]
			mov edx,cpusstructize
			mul edx
			xor esi,esi
			mov si,cpus
			add esi,eax
			mov al,[fs:edi + 2]; ACPI id
			mov byte [ds:si],al
			mov al,[fs:edi + 3]; APIC id
			mov byte [ds:si + 4],al
			
			.no0:
			
			add edi,ebx
		
		jecxz .end
		jmp .l1
		.end:
		
		popad
		RETF
		
		
	;-------------------------------------------------------------------------------------------
	; Function CheckF0 : Checks if DMMI is installed. Returns AX = 0xFACE on success
	;-------------------------------------------------------------------------------------------
	CheckF0:
		mov ax,35f0h
		int 21h
		; es:bx
		add bx,2
		mov eax,[es:bx]
		cmp eax,'dmmi'
		jnz .f
		add bx,4
		mov eax,[es:bx]
		cmp eax,'dmmi'
		jnz .f
		mov ax,0xface
		retf
		.f:
		mov ax,0
		retf


	;-------------------------------------------------------------------------------------------
	; Function EnableA20 : Enables A20 line
	;-------------------------------------------------------------------------------------------
		WaitKBC:
		mov cx,0ffffh
		A20L:
		in al,64h
		test al,2
		loopnz A20L
		retf
		EnableA20:
		push cs
		call WaitKBC
		mov al,0d1h
		out 64h,al
		push cs
		call WaitKBC
		mov al,0dfh
		out 60h,al
		retf
		

	;-------------------------------------------------------------------------------------------
	; Function QuickEnterUnreal
	;-------------------------------------------------------------------------------------------
	QuickEnterUnreal:
		PUSH DS
		MOV AX,DATA16	
		MOV DS,AX
		mov bx,gdt_startUNR
		lgdt [ds:bx]
		mov eax,cr0
		or al,1
		mov cr0,eax 
		JMP $+2
		mov ax,10h
		mov fs,ax
		mov ds,ax
		mov     eax,cr0         
		and     al,not 1        
		mov     cr0,eax         
		POP DS
		xor ax,ax
		mov fs,ax
		RETF
		
	;-------------------------------------------------------------------------------------------
	; Function EnterUnreal : Release int 0xf1 and 0xf0
	;-------------------------------------------------------------------------------------------
	EnterUnreal:
		PUSHAD
		PUSH DS
		MOV AX,DATA16	
		MOV DS,AX
		linear eax,0,CODE16
		mov     [ds:code16_descriptorUNR.b0_15],ax ; store it in the dscr
		shr     eax,8
		mov     [ds:code16_descriptorUNR.b16_23],ah
		XOR eax,eax
		mov     [ds:data32_descriptorUNR.b0_15],ax ; store it in the dscr
		mov     [ds:data32_descriptorUNR.b16_23],ah
		; Set gdt ptr
		linear eax,dummy_descriptorUNR
		mov     [gdt_ptrUNR],eax
		mov bx,gdt_startUNR
		lgdt [ds:bx]
		mov eax,cr0
		or al,1
		mov cr0,eax 
		JMP $+2
		mov ax,10h
		mov fs,ax
		mov ds,ax
		mov     eax,cr0         
		and     al,not 1        
		mov     cr0,eax         
		POP DS
		xor ax,ax
		mov fs,ax
		POPAD	
		RETF
		
	;-------------------------------------------------------------------------------------------
	; Function FreeInterrupts : Release int 0xf1 and 0xf0
	;-------------------------------------------------------------------------------------------
	FreeInterrupts:
		mov ax,DATA16
		mov ds,ax
		mov ax,2521h
		lds dx,[cs:OldInt21]
		int 21h
		mov ax,DATA16
		mov ds,ax
		mov ax,25f2h
		lds dx,[cs:OldIntF2]
		int 21h
		mov ax,DATA16
		mov ds,ax
		mov ax,25f1h
		lds dx,[cs:OldIntF1]
		int 21h
		mov ax,DATA16
		mov ds,ax
		mov ax,25f0h
		lds dx,[cs:OldIntF0]
		int 21h
		retf
		
	;-------------------------------------------------------------------------------------------
	; Function SetupInterrupts : Setup int 0xf1 and 0xf0
	;-------------------------------------------------------------------------------------------
	SetupInterrupts:
		push ds
		mov ax,35f0h
		int 21h
		mov word [cs:OldIntF0],bx
		mov word [cs:OldIntF0 + 2],es
		mov ax,35f1h
		int 21h
		mov word [cs:OldIntF1],bx
		mov word [cs:OldIntF1 + 2],es
		mov ax,35f2h
		int 21h
		mov word [cs:OldIntF2],bx
		mov word [cs:OldIntF2 + 2],es
		mov ax,3521h
		int 21h
		mov word [cs:OldInt21],bx
		mov word [cs:OldInt21 + 2],es
		mov ax,25f0h
		push cs
		pop ds
		mov dx,f0real
		int 21h
		mov ax,25f1h
		push cs
		pop ds
		mov dx,f1real
		int 21h
		mov ax,25f2h
		push cs
		pop ds
		mov dx,f2real
		int 21h
		mov ax,2521h
		push cs
		pop ds
		mov dx,rd21
		int 21h
		pop ds
		retf
	
	;-------------------------------------------------------------------------------------------
	; Function Start16 : Starts here
	;-------------------------------------------------------------------------------------------
	Start16:
		cli
		mov ax,DATA16
		mov ds,ax
		mov ax,STACK16
		mov ss,ax
		mov sp,stack16_end
		sti
	
		; Save IDT
		sidt fword [ds:RealIDT]

		; Save PSP
		mov ax,es
		mov [cs:OrgPSP],ax

		; Show hello
		mov ah,9
		mov dx,m1
		int 21h
		
		; Setup GDT
		call CODE16:IDTInitF
		call CODE16:IDTInit64f

		
		

		; Exists?
		push cs
		call CheckF0
		cmp ax,0xface
		jnz .inst
		mov ax,DATA16
		mov ds,ax
		mov ah,9
		mov dx,m3
		int 21h
		
		; Free memory and exit
		mov ax,9900h
		int 0xF0
		

		.inst:

		; A20
		push cs
		call EnableA20
		
		; Unreal
		CLI
		call FAR CODE16:EnterUnreal 		
		STI
		
		; Setup interrupts
		push cs
		call SetupInterrupts

		; Prepare ACPI
		push cs
		call GetMyApic16f
		mov [ds:MainCPUAPIC],bl

		push cs
		call FillACPI
		mov eax,'APIC'
		push cs
		call FindACPITable
		push cs
		call DumpMadt

		; Page Table
		call InitPageTable

		; Linear Start
		push ds
		mov ax,CODE16
		mov ds,ax
		
		linear esi,LStart,CODE64
		mov [ds:PutLinearStart64h],esi
		pop ds

		
		cmp [ds:testr],1
		jnz .ntestrun
		jmp testrun
		.ntestrun: 


		; Message
		mov ax,DATA16
		mov ds,ax
		mov ah,9
		mov dx,m2
		int 21h

		xor edx,edx
		mov dx,ENDALLSEG
		sub dx,DATA16
		add  dx,17                   ; add 16 paras for PSP + 1 extra
		mov  ax,3100h                ; terminate and stay resident
		int  21h         
		; end



		h1 dw ?
		h2 dw ?
		rcall dd ?

		
		testrun:

		sti
		mov ax,0000
		int 0xf0
		mov word [cs:rcall],dx
		mov word [cs:rcall + 2],es
		mov ax,RUN64
		push ds
		mov ds,ax
		mov dword [ds:lcall],edi
		mov dword [ds:lcall + 4],0
		pop ds

		; run real mode seg
		if 1
		mov ecx,-1
		mov dx,RUN16
		shl edx,16
		mov dx,r1
		mov bx,0
		mov ax,0x0100
		call far [cs:rcall];
		mov ax,0x0300
		call far [cs:rcall];
		end if

		if 1
		; run pm mode seg
		mov ecx,-1
		mov ebx,0
		mov dx,CODE16
		shl edx,16
		mov dx,DATA16
		linear esi,0,RUN32
		mov edi,0
		mov ax,0x0101
		call far [cs:rcall];
		mov ax,0x0300
		call far [cs:rcall];
		end if

		if 1
		; run long mode seg
		mov ecx,-1
		mov bx,0
		linear esi,Begin64,RUN64
		mov ax,0x0102
		call far [cs:rcall];
		mov ax,0x0300
		call far [cs:rcall];
		end if
		
		
		; Run some with mutex
		mov ax,DATA16
		mov ds,ax


		; NOTE THESE ASSUME MUTEX HANDLES 0 and 1 FOR SIMPLICITY
	
		; Alloc Mutex
		mov ax,0x0500
		call far [cs:rcall];

		; Alloc Mutex
		mov ax,0x0500
		call far [cs:rcall];

		; Lock Mutex
		mov ebx,0
		mov ecx,-1
		mov ax,0x0502
		call far [cs:rcall];

		; Lock Mutex
		mov ebx,1
		mov ecx,-1
		mov ax,0x0502
		call far [cs:rcall];

		linear ebx,tester_mutex
		mov byte [fs:ebx],0x0

		
if 1
		; Start Thread
		mov ecx,-1
		mov bx,0
		linear esi,Begin64Mutex1,RUN64
		mov ax,0x0102
		call far [cs:rcall];
		mov [cs:h1],ax
		
		; Start Thread
		mov ecx,-1
		mov bx,0
		linear esi,Begin64Mutex2,RUN64
		mov ax,0x0102
		call far [cs:rcall];
		mov [cs:h2],ax

		; Unlock Mutex so thread can continue
		mov ebx,0
		mov ax,0x0503
		call far [cs:rcall];

		; Wait for thread
		mov ax,0x0300
		mov bx,[cs:h1]
		call far [cs:rcall];
		
		; Unlock Mutex so thread can continue
		mov ebx,1
		mov ax,0x0503
		call far [cs:rcall];

		; Wait for thread
		mov ax,0x0300
		mov bx,[cs:h2]
		call far [cs:rcall];
		
		

end if


		; Destroy Mutex
		mov ebx,0
		mov ax,0x0501
		call far [cs:rcall];

		; Destroy Mutex
		mov ebx,1
		mov ax,0x0501
		call far [cs:rcall];
		
		; End testing
		; Free memory and exit
		mov ax,9900h
		int 0xF0


	;-------------------------------------------------------------------------------------------
	; Function PrepRM : IPI Starts here to prepare real mode
	;-------------------------------------------------------------------------------------------
	RealStack dw 2048

	PrepRM:
		CLI
		mov ax,CODE16
		mov ss,ax
		mov sp,RealStack
		mov ax,DATA16
		mov ds,ax
		STI
		
		mov ax,0x0700
		int 0xF0
		
		call far [ds:ProcedureStart]
		
		mov ax,0x0200
		int 0xF0

		
	
	;-------------------------------------------------------------------------------------------
	; Function PrepLM : IPI Starts here to prepare long mode
	;-------------------------------------------------------------------------------------------
	PrepLM:
		CLI
		mov bx,DATA16
		mov ds,bx
		mov bx,gdt_start
		lgdt [ds:bx]


			
		mov bx,DATA16
		mov ds,bx
		mov bx,lidt_PM_start
		lidt [ds:bx]

		; page table
		mov eax,[DS:LONGPAGEABS]
		mov cr3,eax

		

		; Enable PAE
		mov eax, cr4
		bts eax, 5
		bts eax, 4 ; And PSE
		mov cr4, eax

		; Enable Long Mode
		mov ecx, 0c0000080h ; EFER MSR number. 
		rdmsr ; Read EFER.
		bts eax, 8 ; Set LME=1.
		wrmsr ; Write EFER.


		; Enable Paging to activate Long Mode
		mov eax, cr0 ; Read CR0.
		or eax,80000001h ; Set PE=1.
		mov cr0, eax ; Write CR0.


		db 066h
		db 0eah
		PutLinearStart64h dd 0
		dw pm_sel_rcode64


		
	;-------------------------------------------------------------------------------------------
	; Function PrepPM : IPI Starts here to prepare protected mode
	;-------------------------------------------------------------------------------------------

	PrepPM:

		CLI
		mov bx,DATA16
		mov ds,bx
		mov bx,gdt_start
		lgdt [ds:bx]
		mov bx,idt_PM_start
		lidt [ds:bx]
		mov eax,cr0
		or al,1
		mov cr0,eax 
		mov ax,pm_sel_rcode16
		mov gs,ax
		mov ax,pm_sel_rdata16
		mov ds,ax
		mov ax,pm_sel_rdata32
		mov es,ax
		mov ss,ax
		mov ax,0
		mov fs,ax

		db 066h
		db 0eah
		dd 0
		dw pm_sel_rcode32
		 

		
	;-------------------------------------------------------------------------------------------
	; Function SipiStart : IPI Starts here
	;-------------------------------------------------------------------------------------------
		SipiStart:
		db 4096 dup (144) ; // fill NOPs
		
		
		
		; Load IDT
		CLI
		mov di,DATA16
		mov ds,di
		lidt fword [ds:RealIDT]

		mov ax,STACK16S
		mov ss,ax
		mov sp,stack16s_end
		
		; A20
		call FAR CODE16:EnableA20

		; Quick Enter Unrel		
		call FAR CODE16:QuickEnterUnreal

		; Spurious, APIC		
		MOV EDI,[DS:LocalApic]
		ADD EDI,0x0F0
		MOV EDX,[FS:EDI]
		OR EDX,0x1FF
		push dword 0
		pop fs
		MOV [FS:EDI],EDX

		MOV EDI,[DS:LocalApic]
		ADD EDI,0x0B0
		MOV dword [FS:EDI],0

		; JMP to starting address
		mov di,StartSipiAddrOfs
		jmp far [ds:di]




;-------------------------------------------------------------------------------------------
; 32 bit code segment 
;-------------------------------------------------------------------------------------------
SEGMENT CODE32 USE32

	;-------------------------------------------------------------------------------------------
	; ProtectedCall 
	;-------------------------------------------------------------------------------------------
	ProtectedCall:
	
		pushfd
		push cs
		call f0pm
		retf

	;-------------------------------------------------------------------------------------------
	; Interrupt 0xF0 : 
	;-------------------------------------------------------------------------------------------
	f0pm:

		.a2:
			; End thread
			cmp ah,0x02
			jnz .ea2
			
			push ds
			mov ax,pm_sel_mydata16
			mov ds,ax
		
			db 066h
			db 09ah
			dw GetMyApic16f
			dw pm_sel_mycode16

			mov eax,ebx
			call CPUIndexFromAPIC32
			mov ebx,eax
			

			call GetLinearCPUPtr32
			push fs
			mov dx,pm_sel_mydata32
			mov fs,dx
			mov dword [fs:eax + 12],0
			pop fs

			; Wake CPU 
			xor ebx,ebx
			MOV bp,pm_sel_mydata16
			MOV ds,BP
			MOV bp,pm_sel_mydata32
			MOV fs,BP
			mov ECX,0F2h
;			call pm_sel_mycode32:SendIPI32F
			
			.s1:
			cli
			hlt
			jmp .s1
			iretd
		.ea2:

		.a400: ; Call Interrupt
		
			cmp ah,0x04
			jnz .ea4
			; BP = AX 
			; AL = INT N
			PUSH DS
			PUSHAD
			
			;lock
			lock32 mut_f1
			
			
			mov ax,bp
			
			; put them
			MOV bp,pm_sel_mydata16
			MOV ds,BP
			MOV BP,real_regs
			mov word [ds:bp + 0],ax
			mov [ds:bp + 2],bx
			mov [ds:bp + 4],cx
			mov [ds:bp + 6],dx
			mov [ds:bp + 8],si
			mov [ds:bp + 10],di

			POPAD
			PUSHAD


			MOV bp,pm_sel_mydata16
			MOV ds,BP
			mov ah,0
			MOV BP,real_regs
			mov [ds:bp + 16],ax

			shr esi,16
			mov [ds:bp + 12],si
			shr edi,16
			mov [ds:bp + 14],di
			

			
			; send ipi
			MOV bp,pm_sel_mydata16
			MOV ds,BP
			MOV bp,pm_sel_mydata32
			MOV fs,BP
			xor ebx,ebx
			mov ECX,0F1h
			call pm_sel_mycode32:SendIPI32F
			
			MOV bp,pm_sel_mydata16
			MOV ds,BP
			.rtr:
			cmp [ds:intf1called],0
			jz .rtr

			
			; restore regs
			POPad
			POP ds
			
			
			MOV bp,pm_sel_mydata16
			MOV ds,BP
			MOV BP,real_regs
			
			mov ax,[ds:bp]
			mov bx,[ds:bp + 2]
			mov cx,[ds:bp + 4]
			mov dx,[ds:bp + 6]
			mov si,[ds:bp + 8]
			mov di,[ds:bp + 10]
			push ax
			push bx
			mov ax,[ds:bp + 12]
			mov bx,[ds:bp + 14]
			mov bp,[ds:bp + 18]
			
			push si
			xor esi,esi
			mov si,ax
			shl esi,16
			pop si

			push di
			xor edi,edi
			mov di,bx
			shl edi,16
			pop di
			
			pop bx
			pop ax

			
			push ebp
			popfd
			

			PUsh ds
			PUshad
			
			;unlock
			unlock32 mut_f1

			POPad
			POP ds

			iretd
			
		.ea4:

		.a502: ; Mutex Lock. BX = mut
			cmp ax,0x0502
			jnz .ea502
			
			push ds
			push si
			
			mov ax,pm_sel_mydata16
			mov ds,ax
			mov si,bx
			mov ax,0
			
			cmp byte [ds:mutexs + si],0xFE
			jz .lockfail

			push di
			mov di,mutexs
			add di,si
			
			db 066h
			db 09ah
			dw MutexLock16f
			dw pm_sel_mycode16

			pop di
			mov ax,1
			
			.lockfail:

			pop si
			pop ds
			iretd
			
		.ea502:

		.a503: ; Mutex Unlock. BX = mut
			cmp ax,0x0503
			jnz .ea503
			
			push ds
			push si
			
			mov ax,pm_sel_mydata16
			mov ds,ax
			mov si,bx
			mov ax,0
			
			cmp byte [ds:mutexs + si],0xFE
			jz .unlockfail
			cmp byte [ds:mutexs + si],0xFF
			jz .unlockfail

			push di
			mov di,mutexs
			add di,si

			db 066h
			db 09ah
			dw MutexFree16f
			dw pm_sel_mycode16
		
			pop di
			mov ax,1
			
			.unlockfail:

			pop si
			pop ds
			iretd
			
		.ea503:

		.a504: ; Mutex wait free. BX = mut
			cmp ax,0x0504
			jnz .ea504
			
			mov eax,-1
			push edi
			linear edi, mutexs
			add di,bx

			cmp byte [fs:edi],0xFE
			jz .lockfail4
			.Loop1:		
			CMP byte [fs:edi],0xff
			JZ .OutLoop1
			cmp ecx,-1
			jz .nox
			dec ecx
			jecxz .lockfail4
			.nox:
			pause 
			JMP .Loop1
			
			.OutLoop1:
			mov ax,1
			.lockfail4:

			pop edi
			iret
			
		.ea504:
		
		.a6:
			; Wake CPU 
			cmp ah,0x06
			jnz .ea6
			MOV bp,pm_sel_mydata16
			MOV ds,BP
			MOV bp,pm_sel_mydata32
			MOV fs,BP
			mov ECX,0F2h
			call pm_sel_mycode32:SendIPI32F
			iretd
		.ea6:

		.a7: ; Thread initilized and running
			cmp ax,0x0700
			jnz .ea7
			push ax
			push ds
			mov ax,pm_sel_mydata16
			mov ds,ax
			mov [ds:IntCompleted],1
			pop ds
			pop ax
			iretd
		.ea7:
		
	
		iretd


	;-------------------------------------------------------------------------------------------
	; GetLinearCPUPtr32 : EBX : index
	;-------------------------------------------------------------------------------------------
	GetLinearCPUPtr32: ; In EAX
		push edx
		push ebx
		xor eax,eax
		mov eax,ebx
		mov dx,cpusstructize
		mul dx
		add eax,cpus
		mov ebx,DATA16
		shl ebx,4
		add ebx,eax
		xchg eax,ebx
		pop ebx
		pop edx
		ret
		
		
	;-------------------------------------------------------------------------------------------
	; Function CPUIndexFromAPIC32 : EAX -> EAX
	;-------------------------------------------------------------------------------------------		
	CPUIndexFromAPIC32:

		mov edx,eax
		mov esi,0
		xor ebx,ebx
		call GetLinearCPUPtr32
		; EAX = linear ptr to cpu index array
		
		push ds
		push edx
		xor ecx,ecx
		mov dx,pm_sel_mydata16
		mov ds,dx
		pop edx
		mov cl,[ds:numcpus]
		pop ds
		
		push fs
		push dx
		mov dx,pm_sel_mydata32
		mov fs,dx
		pop dx
		
		.l1z:
		cmp [fs:eax + 4],edx
		jz .found
		dec ecx
		add eax,cpusstructize
		inc esi
		jecxz .nfound
		jmp .l1z
	
		.nfound:
		pop fs
		mov eax,-1
		ret
		
		.found:
		pop fs
		mov eax,esi
		ret
		
	;-------------------------------------------------------------------------------------------
	; Function SendIPI32f : Sends IPI. EBX = CPU Index, ECX = IPI
	;-------------------------------------------------------------------------------------------		
	SendIPI32F: ; EBX = CPU INDEX, ECX = IPI
		PUSHAD
		push ds
		mov ax,pm_sel_mydata16
		mov ds,ax
		
		; Lock Mutex 0
		lock32 mut_ipi

		; Write it to 0x310
		; EBX is CPU INDEX
		; MAKE IT APIC ID
		xor eax,eax
		mov ax,cpusstructize
		mul bx
		add ax,cpus
		mov di,ax
		add di,4
		mov bl,[ds:di]
		MOV EDI,[DS:LocalApic]
		ADD EDI,0x310
		MOV EDX,[FS:EDI]
		AND EDX,0xFFFFFF
		XOR EAX,EAX
		MOV AL,BL
		SHL EAX,24
		OR EDX,EAX
		MOV [FS:EDI],EDX
		
		
		; Write it to 0x300
		MOV EDI,[DS:LocalApic]
		ADD EDI,0x300
		MOV [FS:EDI],ECX
		; Verify it got delivered
		.Verify:
		MOV EAX,[FS:EDI];
		SHR EAX,12
		TEST EAX,1
		JNZ .Verify
		; Write it to 0xB0 (EOI)
		MOV EDI,[DS:LocalApic]
		ADD EDI,0xB0
		MOV dword [FS:EDI],0

		
		; Release Mutex 0
		unlock32 mut_ipi
		pop ds
		POPAD
		RETF


;-------------------------------------------------------------------------------------------
; 64 bit code segment 
;-------------------------------------------------------------------------------------------
SEGMENT CODE64 USE64

	;-------------------------------------------------------------------------------------------
	; LongCall 
	;-------------------------------------------------------------------------------------------
	LongCall:
	
		pushfq
		mov bp,cs
		push bp
		call f0lm
		ret

	;-------------------------------------------------------------------------------------------
	; Interrupt 0xF0 : 
	;-------------------------------------------------------------------------------------------
	f0lm:
	
		.a2:
			; End thread
			cmp ah,0x02
			jnz .ea2

			call GetMyApic64
			
			mov eax,ebx
			call CPUIndexFromAPIC64
			mov ebx,eax

			; remove handle
			call GetLinearCPUPtr64
			mov dword [eax + 12],0
			
			; Wake cpu
			xor rbx,rbx
			mov RCX,0F2h
;			call SendIPI64

			; Go back to 16 bit with retf trick
			.gb:
			push pm_sel_mycode16
			xor rcx,rcx
			mov ecx,BackFromLong
			push rcx
			retf

		.ea2:
	
		.a400: ; Call Interrupt
		
			cmp ah,0x04
			jnz .ea4
			; BP = AX 
			; AL = INT N
			
			
			;lock
			push rax
			lock64 mut_f1
			pop rax
			
			push rax
			push rcx
			push rdx
			push rbx
			push rbp
			push rsi
			push rdi
			
			mov ax,bp
			
			; put them
			linear rbp,real_regs
			mov word [rbp + 0],ax
			mov [rbp + 2],bx
			mov [rbp + 4],cx
			mov [rbp + 6],dx
			mov [rbp + 8],si
			mov [rbp + 10],di

			pop rdi
			pop rsi
			pop rbp
			pop rbx
			pop rdx
			pop rcx
			pop rax

			push rax
			push rcx
			push rdx
			push rbx
			push rbp
			push rsi
			push rdi

			linear rbp,real_regs
			mov ah,0
			mov [rbp + 16],ax

			shr esi,16
			mov [rbp + 12],si
			shr edi,16
			mov [rbp + 14],di
			


			; send ipi
			linear rbp,intf1called
			mov byte [rbp],0
			
			xor rbx,rbx
			mov RCX,0F1h
			call SendIPI64
			
			
			linear rbp,intf1called
			.rtr:
			pause
			cmp byte [rbp],0
			jz .rtr
			
			; restore regs
			pop rdi
			pop rsi
			pop rbp
			pop rbx
			pop rdx
			pop rcx
			pop rax
			
			
			linear rbp,real_regs
			
			mov ax,[rbp]
			mov bx,[rbp + 2]
			mov cx,[rbp + 4]
			mov dx,[rbp + 6]
			mov si,[rbp + 8]
			mov di,[rbp + 10]
			push ax
			push bx
			mov ax,[rbp + 12]
			mov bx,[rbp + 14]
			mov bp,[rbp + 18]
			
			push si
			xor esi,esi
			mov si,ax
			shl esi,16
			pop si

			push di
			xor edi,edi
			mov di,bx
			shl edi,16
			pop di
			
			pop bx
			pop ax

			
			push rbp
			popfq
			

			push rax
			push rcx
			push rdx
			push rbx
			push rbp
			push rsi
			push rdi
			
			;unlock
			unlock64 mut_f1

			pop rdi
			pop rsi
			pop rbp
			pop rbx
			pop rdx
			pop rcx
			pop rax
			
			iretq
			
		.ea4:

		.a502: ; Mutex Lock. BX = mut
			cmp ax,0x0502
			jnz .ea502
			
			mov rax,0
			push rdi
			linear rdi,mutexs
			add di,bx
			
			cmp byte [rdi],0xFE
			jz .lockfail

			call MutexLock64
			
			.lockfail:
			
			pop rdi
			iretq
			
		.ea502:

		.a503: ; Mutex Unlock. BX = mut
			cmp ax,0x0503
			jnz .ea503
			
			push rdi
			linear rdi, mutexs
			add di,bx
			
			cmp byte [rdi],0xFE
			jz .unlockfail
			cmp byte [rdi],0xFF
			jz .unlockfail

			call MutexFree64
			mov ax,1
			
			.unlockfail:

			pop rdi
			iretq
			
		.ea503:

		.a504: ; Mutex wait free. BX = mut
			cmp ax,0x0504
			jnz .ea504
			
			mov rax,0
			push rdi
			linear rdi, mutexs
			add di,bx

				
			cmp byte [rdi],0xFE
			jz .lockfail4
			.Loop1:		
			CMP byte [RDI],0xff
			JZ .OutLoop1
			pause 
			cmp ecx,-1
			jz .nox
			dec ecx
			jecxz .lockfail4
			.nox:
			JMP .Loop1
			.OutLoop1:
			mov ax,1
			.lockfail4:

			pop rdi
			iretq
			
		.ea504:
		
		.a6:
			; Wake CPU 
			cmp ah,0x06
			jnz .ea6
			mov RCX,0F2h
			call SendIPI64
			iretq
		.ea6:
	
		.a7: ; Thread initilized and running
			cmp ax,0x0700
			jnz .ea7
			push rax
			linear rax,IntCompleted
			mov byte [rax],1
			pop rax
			iretq
		.ea7:
	
		iretq

	;-------------------------------------------------------------------------------------------
	; GetLinearCPUPtr64 : EBX : index
	;-------------------------------------------------------------------------------------------
	GetLinearCPUPtr64: ; In EAX
		push rdx
		push rbx
		xor rax,rax
		mov eax,ebx
		mov dx,cpusstructize
		mul dx
		add eax,cpus
		mov ebx,DATA16
		shl ebx,4
		add ebx,eax
		xchg eax,ebx
		pop rbx
		pop rdx
		ret
		
		
	;-------------------------------------------------------------------------------------------
	; Function CPUIndexFromAPIC64 : RAX -> RAX
	;-------------------------------------------------------------------------------------------		
	CPUIndexFromAPIC64:

		mov rdx,rax
		mov rsi,0
		xor rbx,rbx
		call GetLinearCPUPtr64
		; RAX = linear ptr to cpu index array

		push rdx
		xor rdx,rdx
		mov dx,DATA16
		shl rdx,4
		add rdx,numcpus
		xor rcx,rcx
		mov cl,[rdx]
		pop rdx
				
		
		.l1z:
		cmp [rax + 4],edx
		jz .found
		dec rcx
		add rax,cpusstructize
		inc rsi
		jecxz .nfound
		jmp .l1z
	
		.nfound:
		mov rax,-1
		ret
		
		.found:
		mov rax,rsi
		ret
		
	;-------------------------------------------------------------------------------------------
	; GetLongLinearCPUPtr : 
	;-------------------------------------------------------------------------------------------
	GetLongLinearCPUPtr:
		; We can't call 16-bit code
		push rax
		push rcx
		push rdx
		mov eax,1
		cpuid
		and ebx,0xff000000
		shr ebx,24
		pop rdx
		pop rcx
		pop rax
		mov rax,0
		mov eax,ebx
		mov dx,cpusstructize
		mul dx
		add eax,cpus
		push rax
		pop rbx
		xor rax,rax
		mov ax,DATA16
		shl rax,4
		add rax,rbx
		ret

	;-------------------------------------------------------------------------------------------
	; Function GetMyApic64 : EAX = APIC
	;-------------------------------------------------------------------------------------------		
	GetMyApic64:		
		push rax
		push rcx
		push rdx
		mov eax,1
		cpuid
		and ebx,0xff000000
		shr rbx,24
		pop rdx
		pop rcx
		pop rax
		ret
		
	;-------------------------------------------------------------------------------------------
	; Function MutexLock64 : RDI Mutex to lock
	;-------------------------------------------------------------------------------------------		
	MutexLock64:
		CMP byte [RDI],0xFE
		JNZ .np1
		ret
		.np1:

		
		PUSH RBX
		
		CALL GetMyApic64 ; BL has the APIC
		MOV AL,0xFF
		.Loop1:		
		CMP [RDI],BL
		JZ .OutLoop2
		CMP [RDI],AL
		JZ .OutLoop1
		pause 
		cmp ecx,-1
		jz .nox
		dec ecx
		jecxz .locktimeout
		.nox:
		JMP .Loop1

		.locktimeout:
		mov eax,-1
		pop rbx
		ret
		
		.OutLoop1:

		; Lock is free, can we grab it?
		MOV AL,0xFF
		LOCK CMPXCHG [RDI],bl
		JNZ .Loop1 ; Write failed
		
		mov eax,1
		.OutLoop2: ; Lock Acquired

		POP RBX
		RET


	;-------------------------------------------------------------------------------------------
	; Function MutexFree64 : RDI Mutex to free
	;-------------------------------------------------------------------------------------------		
	MutexFree64: ; RDI mutex to lock
		CMP byte [RDI],0xFE
		JNZ .np1
		retf
		.np1:
		PUSH RAX
		PUSH RBX

		CALL GetMyApic64 ; BL has the APIC
		CMP [RDI],BL
		JNZ .Exit
		mov AL,0xFF
		MOV [RDI],AL
		.Exit:
		POP RBX
		POP RAX
		RET

	;-------------------------------------------------------------------------------------------
	; Function GetLongAPIC : 
	;-------------------------------------------------------------------------------------------		
	GetLongAPIC: 
		xor rdi,rdi
		if page1gb eq 1
			mov rdi,0xFEE00000
		else
			mov rdi,0x40000000 ; 1GB
			sub rdi,0x200000 ; 2MB
		end if
		ret
		
		
	;-------------------------------------------------------------------------------------------
	; Function SendEOI64 : Sends EOI
	;-------------------------------------------------------------------------------------------		
	SendEOI64: 
		PUSH RDI
		call GetLongAPIC
		; Write it to 0xB0 (EOI)
		ADD RDI,0xB0
		MOV dword [RDI],0
		POP RDI
		RET
		
	;-------------------------------------------------------------------------------------------
	; Function SendIPI64 : Sends IPI. RBX = CPU Index, ECX = IPI
	;-------------------------------------------------------------------------------------------		
	SendIPI64: ; RBX = CPU INDEX, ECX = IPI
	
	
		push rax
		push rcx
		push rdx
		push rbx
		push rbp
		push rsi
		push rdi


		mov ax,pm_sel_rdata64
		mov ds,ax
		mov es,ax
		
		; Lock Mutex 0
		push rax
		lock64 mut_ipi
		pop rax
		
		; Write it to 0x310
		; EBX is CPU INDEX
		; MAKE IT APIC ID
		xor rax,rax
		mov rax,cpusstructize
		mul bx
		add rax,CpusOfs ; BANG
		xor rdi,rdi
		mov di,DATA16
		shl rdi,4
		add rdi,rax
		add rdi,4
		mov bl,[rdi]


		call GetLongAPIC
		ADD RDI,0x310
		MOV EDX,[RDI] ; BANG
		AND RDX,0xFFFFFF
		XOR RAX,RAX
		MOV AL,BL
		SHL RAX,24
		OR RDX,RAX

		MOV [RDI],EDX
		; Write it to 0x300
		call GetLongAPIC
		ADD EDI,0x300
		MOV [RDI],ECX
		; Verify it got delivered
		.Verify:
		MOV EAX,[RDI];
		SHR EAX,12
		TEST EAX,1
		JNZ .Verify
		; Write it to 0xB0 (EOI)
		call GetLongAPIC
		ADD RDI,0xB0
		MOV dword [RDI],0

		; Release Mutex 0
		unlock64 mut_ipi
		pop rdi
		pop rsi
		pop rbp
		pop rbx
		pop rdx
		pop rcx
		pop rax
		
		
		RET
		
	;-------------------------------------------------------------------------------------------
	; LStart start IPI long mode 
	;-------------------------------------------------------------------------------------------
	LStart:


	; set idt
		linear rbx,lidt_PM_start
		lidt tbyte [rbx]

		; final jump using the retf trick

		mov ax,pm_sel_rdata64
		mov ss,ax
		mov es,ax
		mov ds,ax
		mov fs,ax
		mov gs,ax

		push pm_sel_rcode64	
		xor rcx,rcx    
		db 0xb9 ; mov ecx,xxxxxxxx
		PutLinearStart64X dd 0
		push rcx
		retf

		

; TESTING STUFF
		SEGMENT RUNSTACK16 USE16
		dw 256 dup (?)
		rs16:
		dw 256 dup (?)
		rs16b:
		msg1 db "Hello real",0dh,0ah,"$"
		msg2 db "Hello protected",0dh,0ah,"$"
		msg3 db "Hello long",0dh,0ah,"$"
	    msg4 db "Hello long Mutex 1",0dh,0ah,"$"
		msg5 db "Hello long Mutex 2",0dh,0ah,"$"
		
		SEGMENT RUN16 USE16
		ORG 0

		r1:

		cli
		mov ax,RUNSTACK16
		mov ss,ax
		mov sp,rs16
		mov ds,ax
		STI

		mov ax,0x0700
		int 0xF0

if 0
		mov bp,0x0900
		mov dx,msg1
		mov ax,RUNSTACK16
		mov ds,ax
		mov ax,0x0421
		int 0xf0
end if
if 1
		; We can do it as well with redirected int 0x21
		mov dx,msg1
		mov ax,RUNSTACK16
		mov ds,ax
		mov ax,0x0900
		int 0x21
end if
		mov ah,2
		xor ebx,ebx
		int 0xf0

		


		

		SEGMENT RUNDATA32 USE32
		dd 256 dup (?)
		rs32:


		SEGMENT RUN32 USE32
		ORG 0


		cli
		linear esp,256,RUNDATA32
		mov ax,pm_sel_rdata32
		mov ss,ax
		sti

		mov ax,0x0700
		int 0xF0

		mov bp,0x0900
		mov dx,msg2
		xor esi,esi
		mov si,RUNSTACK16
		shl esi,16
		mov ax,0x0421
		int 0xf0

		mov ah,2
		xor bx,bx
		int 0xf0


		
		SEGMENT RUNDATA64 USE64
		dq 1024 dup (?)

		SEGMENT RUN64 USE64
		ORG 0
		
		lcall dq 0

		Begin64:

		cli
		linear rsp,256,RUNDATA64
		sti
		
		mov ax,0x0700
		int 0xF0
		
		mov bp,0x0900
		mov dx,msg3
		xor esi,esi
		mov si,RUNSTACK16
		shl esi,16
		mov ax,0x0421
		int 0xf0

		mov ax,0x0200
		xor ebx,ebx
		int 0xf0

		
		Begin64Mutex1:

		cli
		linear rsp,512,RUNDATA64
		sti

		mov ax,0x0700
		int 0xF0

		; Wait Mutex
		mov rbx,0
		mov ecx,-1
		mov ax,0x0504
		int 0xf0

		mov bp,0x0900
		mov dx,msg4
		xor esi,esi
		mov si,RUNSTACK16
		shl esi,16
		mov ax,0x0421
		int 0xf0

		mov ax,0x0200
		xor ebx,ebx
		int 0xf0

	Begin64Mutex2:
		cli
		linear rsp,1024,RUNDATA64
		sti

		mov ax,0x0700
		int 0xF0
		
		; Lock Mutex
		mov rbx,1
		mov ecx,-1
		mov ax,0x0502
		int 0xf0
		
		mov bp,0x0900
		mov dx,msg5
		xor esi,esi
		mov si,RUNSTACK16
		shl esi,16
		mov ax,0x0421
		int 0xf0

		; Unlock mutex
		mov rbx,1
		mov ax,0x0503
		int 0xf0

		mov ax,0x0200
		xor ebx,ebx
		int 0xf0


		
		

SEGMENT ENDALLSEG USE16
		
