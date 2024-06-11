.MODEL SMALL 
.STACK 64
.DATA

Msg1 DB   "Start Chat press F1$"
Msg2 DB   "Start Game press F2$"
Msg3 DB   "Exit press Esc$"

notification_position DB 21
VALUE22                 DB 0
has_invitation        DB 0      ; 1 --> chat, 2--> game


chat_invitation_sent    DB  'You sent a chat invitation',10,13,'$'
game_invitation_sent    DB  'You sent a game invitation',10,13,'$'

chat_invitation_receive DB  'You have a chat invitation, to accept press F1',10,13,'$'
game_invitation_receive DB  'You have a game invitation, to accept press F2'10,13,'$'

PAGE_NUMBER DB  9

invitation_accepted     DB  0   ; 1 --> chat, 2--> game 
NEWLINE DB 10,13,'$'

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
     mov ax,@data
     mov ds,ax
     
     
    MOV AH,0  
    MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    MOV AL,12H
    INT 10H
    
    ;MOV AH,0  
    ;MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    ;MOV AL,12H
    ;INT 10H
    
    ;MOV AH,0  
    ;MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    ;MOV AL,12H
    ;INT 10H



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
    ;clear_screen
; print functionalities
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,10
    ;MOV AL,12H
    ;INT 10h
    
    mov cx,10
    
    newLines:
        MOV AH,9
        LEA DX,NEWLINE
        INT 21H
    loop newLines
    
    
    LEA DX,Msg1
    MOV AH,9
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,10
    ;INT 10h


    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
     
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,12
    ;MOV AL,12H
    ;INT 10h

    
    LEA DX,Msg2
    MOV AH,9
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,10
    ;INT 10h


    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,14
    ;MOV AL,12H
    ;INT 10h
    
    LEA DX,Msg3
    MOV AH,9
    INT 21H
           
    ;MOV AH,2
   ; MOV DL,20
   ; MOV DH,10
    ;INT 10h


    mov cx,10
    newLines_2:
        MOV AH,9
        LEA DX,NEWLINE
        INT 21H
    loop newLines_2


; print the notification Bar  

;mov ah,2
;mov dl,0
;mov dh,20
;MOV AL,12H
;int 10h


mov ah,9 ;Display
mov bh,2 ;Page 0
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h

MOV AH,9
LEA DX,NEWLINE
INT 21H
        
;mov ah,2
;mov dl,0
;mov dh,23
;MOV AL,12H
;int 10h

 
;mov ah,2
;mov dx,0
;MOV AL,12H
;int 10h

ASDLOOP1:

 SENDQWE:
 
 ;Check that Transmitter Holding Register is Empty
 mov dx , 3FDH ; Line Status Register
AGAINWE: In al , dx ;Read Line Status
test al , 00100000b
JZ goTo_receive
JNZ complete_code

goTo_receive:
JMP RECIVEQWE
; get key pressed
complete_code:
MOV AH,1
INT 16H
JZ goTo_receive

MOV AH,0
INT 16H
MOV VALUE22,AL

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
JE  chat_pageER                     
JNE resume

chat_pageER:
        MOV VALUE22, 1      ; 1 means that chat invitation is accepted
        MOV PAGE_NUMBER,3   ;==>>>> MEANS CHAT PAGE
        JMP here

;JMP chat       ; just for testing, will be changed to --> JMP page_chat

resume:

mov VALUE22, 03BH       

;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

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
        MOV VALUE22, 2       ; 2 means that game invitation is accepted
        ;MOV PAGE_NUMBER,3   ;==>>>> GAME PAGE
        JMP here

complete:
mov VALUE22, 03CH       

;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,game_invitation_sent
INT 21H
    
inc notification_position      ; for the next notification
JMP here

ESC_pressed:
JMP endProgram


here:
CMP VALUE22,0
JE RECIVEQWE


; put the VALUE22 in Transmit data register

mov dx , 3F8H ; Transmit data register
mov al,VALUE22
out dx , al

CMP VALUE22, 1                      ; check if the chat invitation is accepted
JE RET_LABEL                       

CMP VALUE22, 2                      ; check if the game invitation is accepted
JE RET_LABEL                       
JNE DONT_RETURN                    

RET_LABEL:
JMP start            

DONT_RETURN:
MOV VALUE22,0   
 

RECIVEQWE:
;Check that Data Ready
mov dx , 3FDH ; Line Status Register
CHKER: in al , dx
test al , 1
JZ goTo_send
JNZ complete_prog

goTo_send:
JMP SENDQWE


complete_prog:
;If Ready read the VALUE22 in Receive data register
mov dx , 03F8H
in al , dx
mov VALUE22,AL


; check if there is any invitation
CMP VALUE22,03BH            
JE  chat


CMP VALUE22,03CH           
JE  game

CMP VALUE22,1           ;   the other user accepted the chat invitation           
JE  chat_accepted
JNE complete_compare

chat_accepted:
MOV PAGE_NUMBER,3   ;==>>>> MEANS CHAT PAGE
RET

complete_compare:
CMP VALUE22,2           ;   the other user accepted the game invitation           
JE  game_accepted
JNE jmpLoop1

game_accepted:
;MOV PAGE_NUMBER,3   ;==>>>> PAGE NUMBER
RET



jmpLoop1:
MOV VALUE22,0
jmp ASDLOOP1


chat:
mov has_invitation, 1
;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,chat_invitation_receive
INT 21H
    
inc notification_position      ; for the next notification
MOV VALUE22,0
jmp ASDLOOP1

game:
mov has_invitation, 2
;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,game_invitation_receive
INT 21H
    
inc notification_position      ; for the next notification
MOV VALUE22,0
jmp ASDLOOP1

MOV VALUE22,0     ; ??


JMP ASDLOOP1    
    
   
endProgram:
hlt
    
MAIN ENDP 
END MAIN