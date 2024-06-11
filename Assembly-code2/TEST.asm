.MODEL SMALL
.STACK 128
.DATA


.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX 
       
    MOV AH,0  
    MOV BH,3   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 333333333333333
    MOV AL,12H
    INT 10H 
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,350
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK43:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK43  
    
    
    MOV CX,350
    MOV DX,245
    MOV AL,11
    MOV AH,0CH
    BACK44:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK44     

          

     LL: 
       HLT
            
    MAIN ENDP
END MAIN