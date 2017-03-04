;nasm -f bin -o font.com font.asm

    org 100h
section .text

start:
	push	ds		;
	pop	es			; make sure ES = DS
	
	;mov ah,00h
	;mov al,0Eh
	;int 10h

    ;mov  ax,0003h   ; set screen mode to normal
    ;int  10h        ;  (80x25) text


	mov	bp, OurFont;
	mov	cx,02			; we'll change just 2 of them
	mov	dl,65			;   A and B --> our A and B
	xor dh,dh
	mov	bh,16			; 16 bytes per char
	mov	bl,0			; RAM block
	mov	ax,1100h		; change font to our font
	int	10h			; video interrupt
	mov	ax,4C00h		; exit to DOS
	int	21h			;

section .data
OurFont:	
	db	00000000b
	db	11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b
    db  00000000b
    db  11111111b

section .bss 

        ; put uninitialized data here


.end				; End of assembly code

