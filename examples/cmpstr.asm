    lea si, string1
    lea di, string2
    dec di                                    
 
lab1:
    inc di          ;ds:di -> next character in string2
    lodsb           ;load al with next char from string 1
                    ;note: lodsb increments si automatically
    cmp [di], al    ;compare characters
    jne NotEqual    ;jump out of loop if they are not the same 

    cmp al, 0       ;they are the same, but end of string?
    jne lab1        ;no - so go round loop again
 
;-----------------------------------------------------------------------------
;end of string, and the "jne NotEqual" instruction hasn't been executed so they're equal
;-----------------------------------------------------------------------------
 
    lea dx, msg1    ;point ds:dx at message to say so
    mov ah, 9       ;print message
    int 21h
    jmp lab2        ;continue with rest of program
 
NotEqual:
    lea dx, msg2    ;not equal, so point ds:dx at appropriate message
    mov ah, 9       ;print message
    int21h
 
lab2:
 
;rest of prog here
 
mov ax, 4c00h
int 21h
 
db  msg1  'Strings are equal$'
db  msg2  'Strings are not equal$'