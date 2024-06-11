
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL LARGE
.STACK 64
.DATA
XS DB 0
XR DB 0

YR DB 12
YS DB 0

VALUE DB 0
.CODE
MAIN PROC FAR   
    MOV AX,@DATA
    MOV DS,AX
    


    mov dx,3fbh ; Line Control Register
mov al,10000000b ;Set Divisor Latch Access Bit
out dx,al

mov dx,3f8h
mov al,0ch
out dx,al


mov dx,3f9h
mov al,00h
out dx,al

mov dx,3fbh
mov al,00011011b
out dx,al


mov ax,0600h
mov bh,07
mov cx,0
mov dx,184FH
int 10h

LOOP1:

 SEND:
 mov dx , 3FDH ; Line Status Register
AGAIN: In al , dx ;Read Line Status
test al , 00100000b
JZ RECIVE




MOV AH,1
INT 16H
JZ RECIVE
MOV AH,0
INT 16H
MOV VALUE,AL

CMP VALUE,0
JE RECIVE


mov ah,2
MOV BH,0
mov dL,XS
mov dH,YS
int 10h

MOV AH,2
MOV DL,VALUE
INT 21H

 mov ah,3
int 10h
mov XS,DL
mov YS,DH

mov dx , 3F8H ; Transmit data register
mov al,VALUE
out dx , al

MOV VALUE,0

RECIVE:
mov dx , 3FDH ; Line Status Register
CHK: in al , dx
test al , 1
JZ SEND
;If Ready read the VALUE in Receive data register
mov dx , 03F8H
in al , dx
mov VALUE,AL




mov ah,2
MOV BH,0
mov dL,XR
mov dH,YR
int 10h

MOV AH,2
MOV DL,VALUE
INT 21H

 mov ah,3
int 10h
mov XR,DL
mov YR,DH




MOV VALUE,0



JMP LOOP1
    HLT
    MAIN ENDP
END MAIN

ret




