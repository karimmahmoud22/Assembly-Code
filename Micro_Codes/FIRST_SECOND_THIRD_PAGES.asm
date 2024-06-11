.MODEL SMALL
.STACK 64
.DATA


position_1          db  1
position_2          db  12
nofication_bar_msg  db  'Press F3 to end chat $'  
user_name           db  'Ali:$'
the_other_name      db  'ahmed:$'
user_1_msg          db  160,?,dup($)  
user_2_msg          db  160,?,dup($)



STRING1 DB "PLEASE, ENTER YOUR NAME :  $"  
STRING2 DB "INTIAL POINTS :  $"  
STRING3 DB "PRESS ENTER KEY TO CONTINUE   $"  

NEWLINE DB 10,13,'$'

INDATA LABEL BYTE
SIZE DB 16
ACTUALSIZE DB 15
NAMEE DB ,16 DUP (?)

INDATA22 LABEL BYTE
SIZE22 DB 3
ACTUALSIZE22 DB ?
INTIAL_POINTS DB 2 DUP (?)

Msg1 DB   "Start Chat press F1$"
Msg2 DB   "Start Game press F2$"
Msg3 DB   "Exit press Esc$"





.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,0  
    MOV BH,1          ;;;FIRST PAGE ==> PAGE 1
    MOV AL,12H
    INT 10H
        
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H  
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    FIRST_PAGE:
            
    MOV AH,2
    MOV DL,10
    MOV DH,10
    MOV AL,12H
    INT 10H
             
            
            MOV DX,OFFSET STRING1  
            MOV AH,9
            INT 21H
                   
            MOV DX,OFFSET INDATA  
            MOV AH,0AH
            INT 21H 
            
            MOV DX,OFFSET NEWLINE
            MOV AH,9
            INT 21H
            MOV DL,40H
            MOV DH,60H
            NOOP:
                 INC DL
                 CMP DL,91H
                 JZ POOP
                 CMP NAMEE,DL
                 JNE NOOP
                 JE CORRECT_NAME
                
            POOP:
                 INC DH
                 CMP DH,7AH
                 JZ HOOP
                 CMP NAMEE,DH
                 JNE POOP
            
            HOOP:
                 MOV AH,0  
                 MOV BH,0
                 MOV AL,12H
                 INT 10H 
                 
                 MOV AH,0  
                 MOV BH,0
                 MOV AL,12H
                 INT 10H 
                 JMP FIRST_PAGE   
                   
    CORRECT_NAME: 
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H  
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,10
    MOV DH,10
    MOV AL,12H
    INT 10H
 
    
    MOV DX,OFFSET STRING2  
    MOV AH,9
    INT 21H
                   
    MOV DX,OFFSET INDATA22   

    MOV AH,0AH
    INT 21H
    
    SUB INTIAL_POINTS,30H       ;;;;1DIGIT ONLY  ( UPDATE IT LATELLLLLLLLLLLLLLLY )
   
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
            
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H  
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET STRING3  
    MOV AH,9
    INT 21H
    
    
    TILL_PRESS_ENTER:
    MOV AH,0
    INT 16H
    CMP AL,0DH      ;;;;;;;;;;;;START PLAY ( 0D ASCII FOR ENTER KEY )
    JNE TILL_PRESS_ENTER 
    
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
    
    
    SECOND_PAGE:
    MOV AH,0  
    MOV BH,2     ;;;SECOND PAGE ==> PAGE 2
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,2
    MOV AL,12H
    INT 10H
    
        MOV CX,1
    MOV DX,410
    MOV AL,15
    MOV AH,0CH
    BACK76:
         INT 10H
         INC CX
         CMP CX,630
         JNZ BACK76          

    
    MOV AH,2
    MOV DL,30
    MOV DH,10
    INT 10h


    MOV AH,9
    LEA DX,Msg1
    INT 21H 
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,30
    MOV DH,14
    INT 10h


    MOV AH,9
    LEA DX,Msg2
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,30
    MOV DH,18
    INT 10h
    
    MOV AH,9
    LEA DX,Msg3
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    
    mov cx,1
    page1_Loop:
    mov cx,1    ;infinite loop until the user press a valid choice
    mov ah,0
    int 16h
    
        
    check_F1:
        cmp ah,20H       ; must be changed to the scan code of f1 = 59
        JE LOOP123
        JNE  SECOND_PAGE
     
    check_F2:
        cmp ah,2EH
        JE  startChat      ; NOTE : This will be changed to the GAME PAGE 
        JNE  SECOND_PAGE
     
    check_Esc:cmp aH,01H
        JE endLabel
        JNE  SECOND_PAGE 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
LOOP123:    
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

MOV VALUE,AH

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

CMP VALUE,20H
;;;;;;;;;;;;;;;

MOV VALUE,0


    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
        
    startChat:
    
    MOV AH,0  
    MOV BH,2
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,2
    MOV AL,12H
    INT 10H
    
    
    mov position_1,1
    mov position_2,12

    
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
        
        
    
    
    mainUser_msg:
    mov ah,2
    mov dl,0            
    mov dh,position_1       ; position to write msg
    int 10h
    
    
        
    mov ah,0AH
    mov dx,offset user_1_msg
    int 21h
    
    inc position_1          ; for the next msg
    
    
    mov bx, offset user_1_msg+1         ; size of msg
    mov al, [bx]
    mov ah,0
    mov bx, offset user_1_msg+2
    add bx,ax
    mov [bx],'$'
    
     
    
    anotheUser_msg:
    mov ah,2
    mov dl,0            
    mov dh,position_2       ; position to write msg
    int 10h
    
    
        
    mov ah,0AH
    mov dx,offset user_2_msg
    int 21h
    
    inc position_2          ; for the next msg
    
    
    mov bx, offset user_2_msg+1         ; size of msg
    mov al, [bx]
    mov ah,0
    mov bx, offset user_2_msg+2
    add bx,ax
    mov [bx],'$'
    
    cmp position_1,10       ; to not overlap the dashed line in the center
    JNE mainUser_msg 
    JE startChat

    endLabel:HLT
    
    MAIN ENDP
END MAIN


