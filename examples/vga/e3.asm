;set video mode
mov ah, 00h
mov al, 13h

int 10h

;write pixels on screen
mov ah, 0ch
mov bh, 0
mov dx, 5
mov cx, 5
mov al, 0100b

int 10h
