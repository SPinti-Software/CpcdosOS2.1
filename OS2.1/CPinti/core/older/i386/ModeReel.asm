
; *** Gestion du multi-core ***
; En developpement / Adaptation par Sebatien FAVIER
; 24-07-2015
; Maj : 27-10-2015
; 
; Remerciements a Chourdakis Michael
;-------------------------------------------------------------------------------------------
IDEAL
P586


struc GDT_STR
        
                s0_15   dw ?
                b0_15   dw ?
                b16_23  db ?
                flags   db ?
                access  db ?
                b24_31  db ?
ENDS

SEGMENT CODE16 USE16 PUBLIC
ASSUME CS:CODE16

; Check Byte
_CHECK_BYTE1 db 0
_CHECK_BYTE2 db 0
PUBLIC _CHECK_BYTE1
PUBLIC _CHECK_BYTE2

; GDT definitions
gdt_start dw gdt_size
gdt_ptr dd 0
dummy_descriptor GDT_STR <0,0,0,0,0,0>
code16_descriptor  GDT_STR <0ffffh,0,0,9ah,0,0>    ; 64k 16-bit code
data32_descriptor  GDT_STR <0ffffh,0,0,92h,0cfh,0> ; 4GB 32-bit data,   92h = 10010010b = Presetn , DPL 00, No System, Data Read/Write
gdt_size = $-(dummy_descriptor)

dummy_idx       = 0h    ; dummy selector
code16_idx      =       08h             ; offset of 16-bit code segment in GDT
data32_idx      =       10h             ; offset of 32-bit data  segment in GDT


PUBLIC _EnterUnreal
PROC _EnterUnreal FAR

	PUSHAD
	PUSH DS

	PUSH CS
	POP DS
	
	mov     ax,CODE16 ; get 16-bit code segment into AX
	shl     eax,4           ; make a physical address
	mov     [ds:code16_descriptor.b0_15],ax ; store it in the dscr
	shr     eax,8
	mov     [ds:code16_descriptor.b16_23],ah

	XOR eax,eax
    mov     [ds:data32_descriptor.b0_15],ax ; store it in the dscr
    mov     [ds:data32_descriptor.b16_23],ah

	
	; Set gdt ptr
	xor eax,eax
	mov     ax,CODE16
	shl     eax,4
	add     ax,offset dummy_descriptor
	mov     [gdt_ptr],eax

	
	cli
	mov bx,offset gdt_start
	lgdt [ds:bx]
	mov eax,cr0
	or al,1
	mov cr0,eax 
	
	mov ax,data32_idx
	mov fs,ax
	
	mov     eax,cr0         
    and     al,not 1        
    mov     cr0,eax         
 

	MOV AX,0
	MOV FS,AX
	POP DS
	POPAD	
	
	RETF

ENDP

PUBLIC _Write8
PROC _Write8 FAR
	PUSH BP
	MOV BP,SP
	XOR EAX,EAX
	MOV EAX,[BP + 6]
	MOV DL,[BP + 10]
	PUSH EDI
	MOV EDI,EAX

	MOV [FS:EDI],DL
	
	POP EDI
	POP BP
	RETF
ENDP


PUBLIC _Read8
PROC _Read8 FAR
	PUSH BP
	MOV BP,SP
	XOR EAX,EAX
	MOV EAX,[BP + 6]
	PUSH EDI
	MOV EDI,EAX

	MOV AL,[FS:EDI]
	
	POP EDI
	POP BP
	RETF
ENDP

PUBLIC _Read16
PROC _Read16 FAR
	PUSH BP
	MOV BP,SP
	XOR EAX,EAX
	MOV EAX,[BP + 6]
	PUSH EDI
	MOV EDI,EAX

	MOV AX,[FS:EDI]
	
	POP EDI
	POP BP
	RETF
ENDP


PUBLIC _Write16
PROC _Write16 FAR
	PUSH BP
	MOV BP,SP
	XOR EAX,EAX
	MOV EAX,[BP + 6]
	MOV DX,[BP + 10]
	PUSH EDI
	MOV EDI,EAX

	MOV [FS:EDI],DX
	
	POP EDI
	POP BP
	RETF
ENDP

PUBLIC _Read32
PROC _Read32 FAR
	
	PUSH BP
	MOV BP,SP
	XOR EAX,EAX
	MOV EAX,[BP + 6]
	PUSH EDI
	MOV EDI,EAX

	MOV EAX,[FS:EDI]
	PUSH EAX
	POP EDX
	SHR EDX,16
	
	POP EDI
	POP BP
	RETF
ENDP


PUBLIC _Write32
PROC _Write32 FAR
	
	PUSH BP
	MOV BP,SP
	XOR EAX,EAX
	MOV EAX,[BP + 6]
	MOV EDX,[BP + 10]
	PUSH EDI
	MOV EDI,EAX

	MOV [FS:EDI],EDX
	
	POP EDI
	POP BP
	RETF
ENDP



PUBLIC _ReadX
PROC _ReadX FAR
	PUSH BP
	MOV BP,SP
	PUSH ESI
	PUSH EDI
	PUSH ES
	
	; Read from Address
	MOV ESI,[BP + 6]
	
	; Count
	XOR CX,CX
	MOV CX,[BP + 10];
	
	; Far pointer to store result
	MOV DI,[BP + 12];
	MOV DX,[BP + 14];
	
	MOV ES,DX
	
	; We read from FS:[ESI]
	; And store to ES:[DI]
	; BYTE COUNT CX
	
	L1R:
	
		or cx,cx
		jz L1REnd
		mov al,[fs:esi];
		mov [es:di],al
		inc esi
		inc di
		dec ecx
		jmp L1R
	L1REnd:
	
	POP ESI
	POP EDI
	POP ES
	POP BP
	RETF
ENDP

PUBLIC _WriteX
PROC _WriteX FAR
	PUSH BP
	MOV BP,SP
	PUSH ESI
	PUSH EDI
	PUSH ES
	
	; Write to Address
	MOV EDI,[BP + 6]
	
	; Count
	XOR CX,CX
	MOV CX,[BP + 10];
	
	; Far pointer to read result
	MOV SI,[BP + 12];
	MOV DX,[BP + 14];
	
	MOV ES,DX
	
	; We read from ES:[SI]
	; And store to FS:[EDI]
	; BYTE COUNT CX
	
	L1W:
	
		or cx,cx
		jz L1WEnd
		mov al,[es:si];
		mov [fs:edi],al
		inc si
		inc edi
		dec ecx
		jmp L1W
	L1WEnd:
	
	POP ESI
	POP EDI
	POP ES
	POP BP
	RETF
ENDP

PUBLIC _HasAPIC
PROC _HasAPIC FAR

	PUSH EDX
	MOV EAX,1
	CPUID
	XOR EAX,EAX
	TEST EDX,9
	JZ __NoApic
	MOV EAX,1
	__NoApic:
	POP EDX
	RETF
ENDP

PUBLIC _CLI
PROC _CLI FAR

	CLI
	RETF

ENDP


PUBLIC _STI
PROC _STI FAR

	STI
	RETF

ENDP


PUBLIC _NOPI
PROC _NOPI

	NOP
	

ENDP


PUBLIC _NOP
PROC _NOP FAR

	NOP
	RETF

ENDP

PUBLIC _GetEntryPoint1Address
PROC _GetEntryPoint1Address FAR

	INT 3
	XOR EAX,EAX
	MOV AX,CODE16
	SHL EAX,4
	XOR EDX,EDX
	MOV DX,OFFSET _ENTRYPOINT1
	ADD EAX,EDX
	
	PUSH EAX
	POP EDX
	SHR EDX,16
	
	RETF
ENDP

PUBLIC _GetEntryPoint1Address2
PROC _GetEntryPoint1Address2 FAR

	INT 3
	MOV DX,CODE16
	MOV AX,OFFSET _ENTRYPOINT1
	
	RETF
ENDP


; ----------------------
; Entry point for Core 1
; ----------------------
PUBLIC _BEEP
PROC _BEEP FAR
	mov ah,02h
	mov dl,07h
		
	int 21h
	RETF
ENDP





PUBLIC _ENTRYPOINT1
PROC _ENTRYPOINT1

ap_1:
	MOV AX,CODE16
	MOV GS,AX
	INC [gs:_CHECK_BYTE1]
	CMP [gs:_CHECK_BYTE2],1
	JNE ap_1
	HLT
	JMP ap_1 ; In case of a NMI			
 


ENDP


ENDS

END