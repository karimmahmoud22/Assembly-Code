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
ACTUALSIZE22 DB 2
INTIAL_POINTS DB 2 DUP (?)

.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
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
    
    MOV AH,0
    INT 16H
    
    CMP AL,0DH      ;;;;;;;;;;;;START PLAY ( 0D ASCII FOR ENTER KEY )
   
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    LL: 
       HLT
            
    MAIN ENDP
END MAIN