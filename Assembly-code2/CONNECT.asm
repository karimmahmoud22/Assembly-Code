.MODEL SMALL
.STACK 64
.DATA


CONNECT MACRO
LOCAL AGAIN
 
mov dx,3fbh             ; Line Control Register
mov al,10000000b            ;Set Divisor Latch Access Bit
out dx,al               ;Out it
mov dx,3f8h
mov al,0ch
out dx,al
mov dx,3f9h
mov al,00h
out dx,al
mov dx,3fbh
mov al,00011011b
out dx,al

ENDM CONNECT


HALV MACRO
LOCAL AGAIN
 
mov ah,6 ; function 6
mov al,1 ; scroll by 1 line
mov bh,7 ; normal video attribute
mov ch,0 ; upper left Y
mov cl,0 ; upper left X
mov dh,12 ; lower right Y
mov dl,79 ; lower right X
int 10h

ENDM HALV


SEND MACRO
LOCAL AGAIN

MOV AH,07
INT 21H
MOV VALUE,AL
 
mov dx , 3FDH ; Line Status Register
AGAIN: In al , dx ;Read Line Status
test al , 00100000b
JZ AGAIN ;Not empty
mov dx , 3F8H ; Transmit data register

mov al,VALUE
out dx , al

ENDM SEND



VALUE DB 'A'

.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
    CONNECT
    HALV
    PP:
    SEND
    JMP PP
   
    MAIN ENDP
END MAIN


    