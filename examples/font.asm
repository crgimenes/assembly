;nasm -f bin -o font.com font.asm

    org 100h
section .text

start:  
        ;mov  ax,0003h      ; set screen mode to normal
        ;int  10h           ; (80x25) text

	    ;push ds		    ;
    	;pop es			    ; make sure ES = DS
    	mov	bp,font         ;
	    mov	cx,1			; change 1 bitmap
    	mov	dx,0041h		; A 41h = 65
	    mov	bx,1000h		; bh 16 bl 00 -> 16 bytes per char RAM block 00
	    mov	ax,1100h		; change font to our font
	    int	10h			    ; video interrupt
    	mov	ax,4C00h		; exit to DOS
	    int	21h			    ;

section .data
font:	
	    db	00000000b       ; 1
	    db	01111100b       ; 2
	    db	11111110b       ; 3
	    db	11000010b       ; 4
	    db	11000010b       ; 5
	    db	11000010b       ; 6
	    db	11000010b       ; 7
	    db	11111110b       ; 8
	    db	11000010b       ; 9
	    db	11000010b       ; 10
	    db	11000010b       ; 11
	    db	11000010b       ; 12
	    db	11000010b       ; 13
	    db	11000010b       ; 14
	    db	00000000b       ; 15
	    db	00000000b       ; 16


.end
