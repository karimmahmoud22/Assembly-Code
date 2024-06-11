.MODEL SMALL
.STACK 64
.DATA
STRING1 DB "PLEASE, ENTER YOUR NAME :  $"  
STRING2 DB "INTIAL POINTS :  $"  
STRING3 DB "PRESS ENTER KEY TO CONTINUE   $"  

NEWLINE DB 10,13,'$'

INDATA LABEL BYTE
SIZE DB 16
ACTUALSIZE DB 15
INS DB ,16 DUP (?)

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
    MOV BH,0
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,0
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
    
    MYLOOP:
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
                 CMP INS,DL
                 JNE NOOP
                 JE OO
                
            POOP:
                 INC DH
                 CMP DH,7AH
                 JZ HOOP
                 CMP INS,DH
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
                 JMP MYLOOP   
                   
    OO: 
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
    
    
    PP:
    MOV AH,0
    INT 16H
    CMP AL,0DH      ;;;;;;;;;;;;START PLAY ( 0D ASCII FOR ENTER KEY )
    JNE PP

    opp:
    MOV AH,0  
    MOV BH,1
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,1
    MOV AL,12H
    INT 10H
    
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
        cmp ah,60       ; must be changed to the scan code of f1 = 59
        JE endLabel
     
     
    check_F2:
        cmp ah,60
        JE endLabel       ; NOTE : This will be changed to the chat page 
     
     
    check_Esc:cmp al,27
        JE endLabel
        JNE endLabel  
    
    endLabel:hlt
    LL: 
       HLT
            
    MAIN ENDP
END MAIN


