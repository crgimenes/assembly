ORG 100h

	lea dx, [msg]
    mov ah,9
    int 21h
    mov ax, 4c00h
    int 21h

	msg: DB 'HELLO WORLD$'
