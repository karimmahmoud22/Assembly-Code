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




RECIEVE MACRO
LOCAL AGAIN


mov dx , 3FDH ; Line Status Register
CHK: in al , dx
test al , 1
JZ CHK ;Not Ready
mov dx , 03F8H
in al , dx
mov VALUE , al


    mov ah,2
    mov dl,VALUE
    int 21h
    


ENDM RECIEVE


VALUE DB 'A'

.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
    CONNECT
    HALV
    RECIEVE
    
    
    MAIN ENDP
END MAIN


    