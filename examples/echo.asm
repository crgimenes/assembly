;nasm -f bin -o echo.com echo.asm

    org 100h
section .text

start:  mov   cx,[80h]                  ; size of parameter string
        mov     ah, 40h                 ; write
        mov     bx, 1                   ; ... to standard output
        mov     dx, 81h                 ; ... the parameter string
        int     21h                     ; ... by calling DOS
        mov     ah, 4ch
        int     21h

.end

