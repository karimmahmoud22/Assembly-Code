            
.MODEL SMALL                                                                
.STACK 64
.DATA

shifting_x Dw 68                ;;;;;;;;;;;;;;;NEED TO BE MODIFIED
shifting_Y Dw 200
;;; VARIABLES TO CHANGE THE POSISITON OF THE GUN IN THE GAME 
shifting1_x Dw 250
shifting1_Y Dw 353
CARRY_ACTION DB 0

;; VALRIALE TO CONTROL THE POSITION OF THE bullet FROM THE GUN AFTER PRSS SPACE  
BULLET_X DW 0AH
BULLET_Y DW 0AH

BULLET_X_2 DW 0AH
BULLET_Y_2 DW 0AH


BULLET_SIZE DW 5H
BULLET_COLOR DB 0FH

COUNTER DW 0000

;;;;;;;;;;;;;;;;;;;;;
;;;;;; VARIABLES TO DETERMINE THE WAY TO DRAW THE BALL

WINDOW_WIDTH DW 630D
WINDOW_HIGHT DW 0C8H
  
BALL_X DW 00H
BALL_Y DW 0AH

BALL_X_2 DW 00H
BALL_Y_2 DW 0AH


BALL_SIZE DW 15H
RANDOM_BALL_COLOR  DB 0FH
RANDOM_BALL_TYPE DB 0

TIME_AUX DB 0 

BALL_VELOCITY DW 2H

;;;;;;;;;;;;;;;;;;;;;;; VARIABLES TO CONTROL  THE GAME BETWEEN TWO PLAYERS
FINISH_GAME_1 DB 0
FINISH_GAME_2 DB 0
IS_BULLIT DB 0
IS_BULLIT_INTIAL DB 0

IS_BULLIT_2 DB 0
IS_BULLIT_INTIAL_2 DB 0

MASTER DB 0

POINT DB 0
POINT2 DB 0

TRI_COLOR DB 7H
.CODE
MAIN PROC  FAR
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,0
    MOV AL,12H
    MOV BH,0
    INT 10H
    
  ;  DRAW_TRIANGLE 
 
    MOV COUNTER,20
    
    MOV CX,shifting1_x
    MOV DX,shifting1_Y
    MOV BX,shifting1_x
    ADD BX,20
    MOV AL,TRI_COLOR
    MOV AH,0CH
    BOO1a:
         INT 10H
         INC CX
         CMP CX,BX
         JNZ BOO1a
    
    
    BOO3a:
    
        DEC DX
        MOV CX,shifting1_x
        MOV BX,shifting1_x
        DEC COUNTER
        JZ BOO7a
        ADD BX,COUNTER
        JMP BOO1a
    
    
    BOO7a:
    MOV COUNTER,20
    
    MOV CX,shifting1_x
    MOV DX,shifting1_Y
    MOV BX,shifting1_x
    SUB BX,20
    MOV AL,TRI_COLOR
    MOV AH,0CH
    BOO5a:
         INT 10H
         DEC CX
         CMP CX,BX
         JNZ BOO5a
    
    
    BOO6a:
    
        DEC DX
        MOV CX,shifting1_x
        MOV BX,shifting1_x
        DEC COUNTER
        JZ BOO4a
        SUB BX,COUNTER
        JMP BOO5a
    
    BOO4a:

    RET
    MAIN ENDP


END MAIN