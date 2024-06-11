.MODEL SMALL
.STACK 64
.DATA


BALL_X DW 0AH
BALL_Y DW 0AH
BALL_SIZE DW 10H

TIME_AUX DB 0 

BALL_VELOCITY DW 05H


.CODE
MAIN PROC FAR

        MOV AX,@DATA
        MOV DS,AX
        
        
        
      CALL CLEAR_SCREEN
      
      
        CHECK_TIME:           
            MOV AH,2CH  ;GRT SYSTEM TIME 
            INT 21H      ;CH->HOUR  CL->MIN  DH->SEC  DL->1/100SEC   
                     
            CMP DL,TIME_AUX 
            JE CHECK_TIME 
                   
        
            MOV TIME_AUX,DL
             
            CALL CLEAR_SCREEN
            
            
            MOV AX,BALL_VELOCITY 
            ADD BALL_X,AX  
                      
            
            CALL DRAWBALL 
    
            JMP CHECK_TIME
         
    HLT     
MAIN ENDP

    
DRAWBALL  PROC
   
    MOV CX,BALL_X ;INITIAL POSITION
    MOV DX,BALL_Y
    
    DRAW:
    
        MOV AH,0CH
        MOV AL,0FH   ;BALL COLOR
        MOV BH,00H        
        INT 10H    
        
        INC CX
        MOV AX,CX
        SUB AX,BALL_X
        CMP AX,BALL_SIZE
        JNG DRAW             ;JUMP NOT GREATER
        
        MOV CX,BALL_X
        INC DX  
        
        MOV AX,DX
        SUB AX,BALL_Y
        CMP AX,BALL_SIZE
        JNG  DRAW
        
        RET
DRAWBALL  ENDP    


CLEAR_SCREEN PROC
    
            MOV AH,00H
            MOV AL,13H
            INT 10H
            
            
          ;  MOV AH,0BH
            MOV BH,00H
            MOV BL,00H
          ;  INT 10 
          
          RET
    
CLEAR_SCREEN ENDP    
END MAIN