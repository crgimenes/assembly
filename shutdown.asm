;connect to apm api
mov     ax, 5301h
xor     bx, bx
int     15h

;try to set apm version (to 1.2)
mov     ax, 530Eh
xor     bx, bx
mov     cx, 0102h
int     15h

;turn off the system
mov     ax, 5307h
mov     bx, 0001h
mov     cx, 0003h
int     15h

;exit (for good measure and in case of failure)
ret