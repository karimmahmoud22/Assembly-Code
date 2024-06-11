DRAW_TRIANGLE MACRO  shifting_x  shifting_Y
    
    MOV AH,2
    MOV DL,20
    MOV DH,20
    INT 10H
    
    MOV COUNTER,20
    
    MOV CX,shifting_x
    MOV DX,shifting_Y
    MOV BX,shifting_x
    ADD BX,20
    MOV AL,11
    MOV AH,0CH
    BOO1:
         INT 10H
         INC CX
         CMP CX,BX
         JNZ BOO1
    
    
    BOO3:
    
        DEC DX
        MOV CX,shifting_x
        MOV BX,shifting_x
        DEC COUNTER
        JZ BOO7
        ADD BX,COUNTER
        JMP BOO1
    
    
    BOO7:
    MOV COUNTER,20
    
    MOV CX,shifting_x
    MOV DX,shifting_Y
    MOV BX,shifting_x
    SUB BX,20
    MOV AL,11
    MOV AH,0CH
    BOO5:
         INT 10H
         DEC CX
         CMP CX,BX
         JNZ BOO5
    
    
    BOO6:
    
        DEC DX
        MOV CX,shifting_x
        MOV BX,shifting_x
        DEC COUNTER
        JZ BOO4
        SUB BX,COUNTER
        JMP BOO5
    
    BOO4:


ENDM  DRAW_TRIANGLE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_TRIANGLE2 MACRO  shifting1_x  shifting1_Y
    
    MOV AH,2
    MOV DL,20
    MOV DH,40
    INT 10H
    
    MOV COUNTER,20
    
    MOV CX,shifting_x
    MOV DX,shifting_Y
    MOV BX,shifting_x
    ADD BX,20
    MOV AL,11
    MOV AH,0CH
    BOO1a:
         INT 10H
         INC CX
         CMP CX,BX
         JNZ BOO1a
    
    
    BOO3a:
    
        DEC DX
        MOV CX,shifting_x
        MOV BX,shifting_x
        DEC COUNTER
        JZ BOO7a
        ADD BX,COUNTER
        JMP BOO1a
    
    
    BOO7a:
    MOV COUNTER,20
    
    MOV CX,shifting_x
    MOV DX,shifting_Y
    MOV BX,shifting_x
    SUB BX,20
    MOV AL,11
    MOV AH,0CH
    BOO5a:
         INT 10H
         DEC CX
         CMP CX,BX
         JNZ BOO5a
    
    
    BOO6a:
    
        DEC DX
        MOV CX,shifting_x
        MOV BX,shifting_x
        DEC COUNTER
        JZ BOO4a
        SUB BX,COUNTER
        JMP BOO5a
    
    BOO4a:


ENDM  DRAW_TRIANGLE2


.MODEL SMALL                                                                
.STACK 64
.DATA

shifting_x Dw 68                ;;;;;;;;;;;;;;;NEED TO BE MODIFIED
shifting_Y Dw 200

shifting1_x Dw 68
shifting1_Y Dw 353


COUNTER DW 0000
.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,0
    MOV AL,12H
    INT 10H
    
    DRAW_TRIANGLE 50 50

    DRAW_TRIANGLE2 100 100




lll:hlt

    
    MAIN ENDP
END MAIN


  