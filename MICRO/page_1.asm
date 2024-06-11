
.MODEL small
.STACK 64
.DATA
notification_position DB 21
VALUE                 DB 0
has_invitation        DB 0      ; 1 --> chat, 2--> game

Msg1                    DB  'To start chatting press  F1$'
Msg2                    DB  'To start the game press  F2$'
Msg3                    DB  'To end the program press ESC$'

chat_invitation_sent    DB  'You sent a chat invitation$'
game_invitation_sent    DB  'You sent a game invitation$'

chat_invitation_receive DB  'You have a chat invitation, to accept press F1$'
game_invitation_receive DB  'You have a game invitation, to accept press F2$'

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
clear_screen
 

; print functionalities
    MOV AH,2
    MOV DL,30
    MOV DH,10
    INT 10h


    MOV AH,9
    LEA DX,Msg1
    INT 21H 
    
    MOV AH,2
    MOV DL,30
    MOV DH,12
    INT 10h


    MOV AH,9
    LEA DX,Msg2
    INT 21H
    
    MOV AH,2
    MOV DL,30
    MOV DH,14
    INT 10h
    
    MOV AH,9
    LEA DX,Msg3
    INT 21H



; print the notification Bar  

mov ah,2
mov dl,0
mov dh,20
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

 
mov ah,2
mov dx,0
int 10h

LOOP1:

 SEND:
 
 ;Check that Transmitter Holding Register is Empty
 mov dx , 3FDH ; Line Status Register
AGAIN: In al , dx ;Read Line Status
test al , 00100000b
JZ goTo_receive
JNZ complete_code

goTo_receive:
JMP RECIVE
; get key pressed
complete_code:
MOV AH,1
INT 16H
JZ goTo_receive

MOV AH,0
INT 16H
MOV VALUE,AL

CMP AH,03BH           ; scan code of F1
JE  F1_pressed

CMP AH,03CH           ; scan code of F2
JE  F2_pressed


CMP AH,27           ; scan code of ESC
JE  ESC_pressed
JNE here



F1_pressed:
; check if has chat invitation
CMP has_invitation, 1
JE  chat_page                     
JNE resume

chat_page:
JMP chat       ; just for testing, will be changed to --> JMP page_chat

resume:
mov VALUE, 03BH       

;Print Msg
MOV AH,2
MOV DL,0
MOV DH,notification_position
INT 10h

MOV AH,9
LEA DX,chat_invitation_sent
INT 21H
    
inc notification_position      ; for the next notification
JMP here

F2_pressed:
; check if has game invitation
CMP has_invitation, 2
JE  game_page                     
JNE complete

game_page:
JMP game       ; just for testing, will be changed to --> JMP GAME

complete:
mov VALUE, 03CH       

;Print Msg
MOV AH,2
MOV DL,0
MOV DH,notification_position
INT 10h

MOV AH,9
LEA DX,game_invitation_sent
INT 21H
    
inc notification_position      ; for the next notification
JMP here

ESC_pressed:
JMP endProgram


here:
CMP VALUE,0
JE RECIVE


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
JZ goTo_send
JNZ complete_prog

goTo_send:
JMP SEND


complete_prog:
;If Ready read the VALUE in Receive data register
mov dx , 03F8H
in al , dx
mov VALUE,AL


; check if there is any invitation
CMP VALUE,03BH            
JE  chat


CMP VALUE,03CH           
JE  game
JNE jmpLoop1

jmpLoop1:
MOV VALUE,0
jmp LOOP1


chat:
mov has_invitation, 1
;Print Msg
MOV AH,2
MOV DL,0
MOV DH,notification_position
INT 10h

MOV AH,9
LEA DX,chat_invitation_receive
INT 21H
    
inc notification_position      ; for the next notification
MOV VALUE,0
jmp LOOP1

game:
mov has_invitation, 2
;Print Msg
MOV AH,2
MOV DL,0
MOV DH,notification_position
INT 10h

MOV AH,9
LEA DX,game_invitation_receive
INT 21H
    
inc notification_position      ; for the next notification
MOV VALUE,0
jmp LOOP1

MOV VALUE,0     ; ??


JMP LOOP1
endProgram:
hlt
    MAIN ENDP
END MAIN