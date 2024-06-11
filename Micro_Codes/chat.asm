
.MODEL small
.STACK 64
.DATA
XS DB 0
XR DB 0

YR DB 12
YS DB 1

VALUE DB 0

user_name           db  'Ali:$'
the_other_name      db  'ahmed:$'
nofication_bar_msg  db  'Press F3 to end chat $'

.CODE

clear_screen macro
    
mov ah,2
mov dl,0
mov dh,0
int 10h
clear:        ; no scroll

mov ah,2
mov dl,' '
int 21h
mov dl,cl

mov ah,3h
mov bh,0h
int 10h

cmp dh,23
JBE clear

mov ah,2
mov dl,0
mov dh,0
int 10h 
    
    
endm


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

start:
; intialization
clear_screen
mov XS,0    
mov XR,0
mov YS,1
mov YR,12 



; print user name 
mov ah,2
mov dl,0
mov dh,0
int 10h

mov ah, 9
mov dx, offset user_name
int 21h

; print the dashed line ( in center of the screen ) 

mov ah,2
mov dl,0
mov dh,10
int 10h


mov ah,9 ;Display
mov bh,0 ;Page 0
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h


; print user name 2
mov ah,2
mov dl,0
mov dh,11
int 10h

mov ah, 9
mov dx, offset the_other_name
int 21h 


; print the notification Bar  

mov ah,2
mov dl,0
mov dh,22
int 10h


mov ah,9 ;Display
mov bh,0 ;Page 0
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h

mov ah,2
mov dl,0
mov dh,23
int 10h

mov ah, 9
mov dx, offset nofication_bar_msg
int 21h

mov ah,2
mov dl,0            
mov dh,1       ; position to write msg
int 10h


LOOP1:

 SEND:
 
 ;Check that Transmitter Holding Register is Empty
 mov dx , 3FDH ; Line Status Register
AGAIN: In al , dx ;Read Line Status
test al , 00100000b
JZ RECIVE

; get key pressed
MOV AH,1
INT 16H
JZ RECIVE


cmp ah,03DH       ; scan code of F3
JE endChat
JNE complete
endChat: hlt    ; will be changed to jump to the main page

complete:
MOV AH,0
INT 16H
MOV VALUE,AL
CMP AH,28       ; scan code of enter
JE enter_pressed
JNE here


enter_pressed:
inc YS
mov XS,0
inc YR
mov XR,0 
        ; check if the screen need to be cleared 
CMP YS,10
JE startAgain
JNE here 

startAgain:
jmp start

here:
CMP VALUE,0
JE RECIVE

; set position to print
mov ah,2
MOV BH,0
mov dL,XS
mov dH,YS
int 10h

; display the character sent by the other user
MOV AH,2
MOV DL,VALUE
INT 21H

; get cursor position
 mov ah,3
int 10h
; update the new cursor
mov XS,DL
mov YS,DH

; put the VALUE in Transmit data register

mov dx , 3F8H ; Transmit data register
mov al,VALUE
out dx , al

MOV VALUE,0   ; why ?
 

RECIVE:
;Check that Data Ready
mov dx , 3FDH ; Line Status Register
CHK: in al , dx
test al , 1
JZ SEND
;If Ready read the VALUE in Receive data register
mov dx , 03F8H
in al , dx
mov VALUE,AL


; set cursor to print
mov ah,2
MOV BH,0
mov dL,XR
mov dH,YR
int 10h

; display char
MOV AH,2
MOV DL,VALUE
INT 21H

; get cursor position
 mov ah,3
int 10h


; re-new the cursor position
mov XR,DL
mov YR,DH




MOV VALUE,0     ; ??


JMP LOOP1
hlt
    MAIN ENDP
END MAIN

ret




