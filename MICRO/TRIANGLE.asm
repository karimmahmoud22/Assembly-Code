.MODEL SMALL
.DATA
shifting_x DW 50 
shifting_Y DW 50 
COUNTER DW  0

.CODE

DRAW_TRIANGLE  PROC FAR  
  ;   shifting_x  shifting_Y
    
    MOV AH,0
    MOV AL,12H
    INT 10H
    
    
    MOV COUNTER,20
    
    MOV CX,shifting_x
    MOV DX,shifting_Y
    MOV BP,shifting_x
    ADD BP,20
    SUB CX,20
    MOV AL,11
    MOV AH,0CH
    BOO1:
         INT 10H
         INC CX
         CMP CX,BP
         JNZ BOO1
    
    BOO3:
        DEC DX
        MOV CX,shifting_x
        MOV BP,shifting_x
        DEC COUNTER
        JZ BOO7
        ADD BP,COUNTER
        SUB CX,COUNTER
        JMP BOO1
       
    BOO7:
         RET
 
  DRAW_TRIANGLE ENDP

END 