;Connect to APM API
MOV     AX,5301h
XOR     BX,BX
INT     15h

;Try to set APM version (to 1.2)
MOV     AX,530Eh
XOR     BX,BX
MOV     CX,0102h
INT     15h

;Turn off the system
MOV     AX,5307h
MOV     BX,0001h
MOV     CX,0003h
INT     15h

;Exit (for good measure and in case of failure)
RET