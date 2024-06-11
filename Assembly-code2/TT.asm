DRAW_TRIANGLE MACRO  TRI_COLOR1
    LOCAL  BOO1, BOO3,BOO7,BOO5,BOO6,BOO4
    MOV AH,2
    MOV DL,20
    MOV DH,20
    INT 10H
    
    MOV COUNTER,20
    
    MOV CX,shifting_x
    MOV DX,shifting_Y
    MOV BX,shifting_x
    ADD BX,20
    MOV AL,TRI_COLOR1
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
    MOV AL,TRI_COLOR1
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
DRAW_TRIANGLE2 MACRO  TRI_COLOR
    LOCAL  BOO1a, BOO3a,BOO7a,BOO5a,BOO6a,BOO4a
 ;   MOV AH,2
  ;  MOV DL,20
  ; MOV DH,40
   ; INT 10H
    
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


ENDM  DRAW_TRIANGLE2


.MODEL SMALL                                                                
.STACK 64
.DATA

shifting_x Dw 68                ;;;;;;;;;;;;;;;NEED TO BE MODIFIED
shifting_Y Dw 200
;;; VARIABLES TO CHANGE THE POSISITON OF THE GUN IN THE GAME 
shifting1_x Dw 400
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


   ; DRAW_TRIANGLE2 
  ; MOV AL,11H
   ; DRAW_TRIANGLE2 AL
    ;MOV MASTER,1
    CALL GAME_CONTROL

    ;CALL GAME_bullet_CONTROLE

    mov ax,0600h
    mov bh,07
    mov cx,0
    mov dx,184FH
    int 10h

    HLT

    RET
    MAIN ENDP

GAME_CONTROL PROC 
    ;;;;;; FUNC TO PRINT THE TRIANGLE AND CHANGE ITS PSITION
    MOV FINISH_GAME_1,0
    MOV FINISH_GAME_2,0
    

    CALL RANDGEN
    MOV RANDOM_BALL_TYPE,DL
    CMP RANDOM_BALL_TYPE,5
    JNA REACT_USER
    RET
    ;CMP RANDOM_BALL_TYPE,1
    
    REACT_USER:
        CALL GAME_bullet_CONTROLE
        CALL GAME_bullet_CONTROLE_2

        MOV AH,2CH  ;GRT SYSTEM TIME 
        INT 21H      ;CH->HOUR  CL->MIN  DH->SEC  DL->1/100SEC   
                    
        CMP DL,TIME_AUX 
        JE REACT_USER 

        MOV TIME_AUX,DL
        MOV RANDOM_BALL_COLOR,00H
        CALL DRAWBALL 
        CALL MOVE             
        MOV AX,WINDOW_WIDTH 
        SUB AX,BALL_SIZE
        CMP BALL_X,AX                  ;CHECK RIGHT
        JNG  NF 
        JMP FINISH_GAME
        NF:
        ;CHECK FOR COLLISION
        MOV AL,RANDOM_BALL_TYPE
        MOV RANDOM_BALL_COLOR,AL
        CALL DRAWBALL 
            
            
            
    
       ;  JMP REACT_USER 
        

        MOV AL,11
        DRAW_TRIANGLE2 AL ;; DRAW THE TRIANGLE BUT WITH THE CORRECT COLOR
        DRAW_TRIANGLE AL
        TAKE_ACTION:
        MOV AH,1H
        INT 16H 
        JNZ HANGASH
;        CALL GAME_bullet_CONTROLE
        JMP REACT_USER
        HANGASH:
        MOV CARRY_ACTION,AH
        MOV AH,0H
        INT 16H
        


        MOV AL,0
        DRAW_TRIANGLE2 AL ;; DRWA THE TRIANGLE IN BLACK 
        DRAW_TRIANGLE AL
        ;;CHECK IF THE USER PRESS RIGHT ARROW
        RIGHT:CMP CARRY_ACTION,77D ;RIEHT 
        JNE LEFT
        CMP shifting1_x,600D ;; IF IT IS RIGHT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JB LAS1
        JMP REACT_USER
        LAS1:ADD shifting1_x,5
        ;CALL GAME_bullet_CONTROLE
        JMP REACT_USER
        
        ;; IF NOT LEFT THEN CHECK IF IT IS LEFT
        LEFT: CMP CARRY_ACTION,75D ;;LEFT  
        JNE UP 
        CMP shifting1_x,30D ;; IF IT IS LEFT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JA LAS2
        JMP REACT_USER
        LAS2:SUB shifting1_x,5
       ; CALL GAME_bullet_CONTROLE
        JMP REACT_USER
        
        UP: CMP CARRY_ACTION,72D  ;;UP  
        JNE DOWN 
        CMP shifting1_Y,230D ;; IF IT IS LEFT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JA LAS3
        JMP REACT_USER
        LAS3:SUB shifting1_Y,5
        ;CALL GAME_bullet_CONTROLE
        JMP REACT_USER


        DOWN: CMP CARRY_ACTION,80D ;;DOWN  
        JNE NUM_1 
        CMP shifting1_Y,410D ;; IF IT IS LEFT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JNA LAS4
        JMP REACT_USER
        LAS4:ADD shifting1_Y,5
        ;CALL GAME_bullet_CONTROLE
        JMP REACT_USER



        NUM_1:CMP CARRY_ACTION,79D ;NUM_1 ->LEFT 
        JNE NUM_3
        CMP shifting_x,30D ;; IF IT IS LEFT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JA LAS5
        JMP REACT_USER
        LAS5:SUB shifting_x,5
       ; CALL GAME_bullet_CONTROLE
        JMP REACT_USER
        
        ;; IF NOT LEFT THEN CHECK IF IT IS LEFT
        NUM_3: CMP CARRY_ACTION,81D ;;NUM_3 ->RIGHT  
        JNE NUM_7 
        CMP shifting_x,600D ;; IF IT IS RIGHT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JB LAS7
        JMP REACT_USER
        LAS7:ADD shifting_x,5
        ;CALL GAME_bullet_CONTROLE
        JMP REACT_USER
        

        NUM_7: CMP CARRY_ACTION,71D  ;;NUM_7 -> UP  
        JNE NUM_9 
        CMP shifting_Y,30D ;; IF IT IS LEFT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JA LAS8
        JMP REACT_USER
        LAS8:SUB shifting_Y,5
       ; CALL GAME_bullet_CONTROLE
        JMP REACT_USER


        NUM_9: CMP CARRY_ACTION,73D ;;NUM_9 - > DOWN  
        JNE SPACE 
         CMP shifting_Y,200D ;; IF IT IS LEFT PRESS THEN CHECK THE LIMIT THAT WE NEED TO PRINT INSIE IT 
        JNA LAS9
        JMP REACT_USER
        LAS9:ADD shifting_Y,5
        ;CALL GAME_bullet_CONTROLE
        JMP REACT_USER






        SPACE: 
        CMP CARRY_ACTION,39H ;SPACE  
        JNE NUM_5

        MOV IS_BULLIT,1
        JMP REACT_USER
       

        NUM_5:
        CMP CARRY_ACTION,82D ;; NUM 0 -> SPACE
        JNE NUM_6

        MOV IS_BULLIT_2,1
        JMP REACT_USER

        NUM_6:

         FINISH_GAME:RET
    GAME_CONTROL ENDP

GAME_bullet_CONTROLE PROC 
 
    CMP IS_BULLIT,1  ;; CHECK IF THER IS ABULLET IN THE AIR IF NOT THEN GO TO GAME CONTROL OTHER WISE UPDATE THE BULLET POISTION TEHN GO TO GAME CONTROL
    JE ENTER_BULLET_MOVE
    RET
    ENTER_BULLET_MOVE:
    ;;;;;;;;;;;;;;;;;;;;;; CHECK COLLISION
    ;; STEP 1- DECIDE THE INTIAL POSITION OF THE BULLET
    CMP IS_BULLIT_INTIAL,0
    JNE BULLET_LOOP

    MOV AX,shifting1_x
    MOV BULLET_X,AX ;; SET THE INTIAL X POSITION OF THE BULLET

    MOV AX,shifting1_Y
    SUB AX,20D
    MOV BULLET_Y,AX  ;; SET THE INTIAL Y POSITION OF THE BULLET

    MOV IS_BULLIT_INTIAL,1
   
    BULLET_LOOP:
    ;; FIRST STEP IS TO DELETE THE PRIVIOS BALL AND THEN DRAWW THE NEW ONE
    MOV BULLET_COLOR,0H
    CALL DRAW_BULLET

    ;; THEN CHANGE THE Y AND DRAW THE NEW ONE
    SUB BULLET_Y,5D
    CMP BULLET_Y,5D
    JNA END_BULLET

    MOV BULLET_COLOR,0FH
    CALL DRAW_BULLET
    ;JMP BULLET_LOOP
    RET
    ;;DRAW THE BULLET

    ;; START CHANGE THE POSITION BY DECREASING THE Y POSITION UNTIL
    ;1- ACHIVE THE 
    END_BULLET: 
    MOV IS_BULLIT,0
    MOV IS_BULLIT_INTIAL,0
    CALL CHECK_COLLISION
    ;CALL FINISH_GUN_GAME
    RET


GAME_bullet_CONTROLE ENDP



GAME_bullet_CONTROLE_2 PROC 
 
    CMP IS_BULLIT_2,1  ;; CHECK IF THER IS ABULLET IN THE AIR IF NOT THEN GO TO GAME CONTROL OTHER WISE UPDATE THE BULLET POISTION TEHN GO TO GAME CONTROL
    JE ENTER_BULLET_MOVE2
    RET
    ENTER_BULLET_MOVE2:
    ;;;;;;;;;;;;;;;;;;;;;; CHECK COLLISION
    ;; STEP 1- DECIDE THE INTIAL POSITION OF THE BULLET
    CMP IS_BULLIT_INTIAL_2,0
    JNE BULLET_LOOP_2

    MOV AX,shifting_x
    MOV BULLET_X_2,AX ;; SET THE INTIAL X POSITION OF THE BULLET

    MOV AX,shifting_Y
    SUB AX,20D
    MOV BULLET_Y_2,AX  ;; SET THE INTIAL Y POSITION OF THE BULLET

    MOV IS_BULLIT_INTIAL_2,1
   
    BULLET_LOOP_2:
    ;; FIRST STEP IS TO DELETE THE PRIVIOS BALL AND THEN DRAWW THE NEW ONE
    MOV BULLET_COLOR,0H
    CALL DRAW_BULLET_2

    ;; THEN CHANGE THE Y AND DRAW THE NEW ONE
    SUB BULLET_Y_2,5D
    CMP BULLET_Y_2,5D
    JNA END_BULLET_2

    MOV BULLET_COLOR,0FH
    CALL DRAW_BULLET_2
    ;JMP BULLET_LOOP
    RET
    ;;DRAW THE BULLET

    ;; START CHANGE THE POSITION BY DECREASING THE Y POSITION UNTIL
    ;1- ACHIVE THE 
    END_BULLET_2: 
    MOV IS_BULLIT_2,0
    MOV IS_BULLIT_INTIAL_2,0
    CALL CHECK_COLLISION_2
    ;CALL FINISH_GUN_GAME
    RET


GAME_bullet_CONTROLE_2 ENDP




;;;;;; FUNCTION TO DRAW THE BULLET AFTER DECITE ITS POSITION
 DRAW_BULLET  PROC   

   MOV CX,BULLET_X
   MOV DX,BULLET_Y
   
   DRAWBULLET:
            
            mov ah,0CH
            MOV AL,BULLET_COLOR
            MOV BH,00H
            INT 10H
            INC CX 
            NOT_DRAW_LINE:
            MOV AX,CX
            SUB AX,BULLET_X
            CMP AX,BULLET_SIZE
            JNG DRAWBULLET
            MOV CX,BULLET_X
            INC DX
            MOV AX,DX
            SUB AX,BULLET_Y
            CMP AX,BULLET_SIZE
            JNG DRAWBULLET
    RET
    DRAW_BULLET ENDP

DRAW_BULLET_2 PROC
   MOV CX,BULLET_X
   MOV DX,BULLET_Y
   
   DRAWBULLET2:
            
            mov ah,0CH
            MOV AL,BULLET_COLOR
            MOV BH,00H
            INT 10H
            INC CX 
            NOT_DRAW_LINE_2:
            MOV AX,CX
            SUB AX,BULLET_X_2
            CMP AX,BULLET_SIZE
            JNG DRAWBULLET2
            MOV CX,BULLET_X_2
            INC DX
            MOV AX,DX
            SUB AX,BULLET_Y_2
            CMP AX,BULLET_SIZE
            JNG DRAWBULLET2

    RET
    DRAW_BULLET_2 ENDP



DRAWBALL  PROC  
   
    MOV CX,BALL_X ;INITIAL POSITION
    MOV DX,BALL_Y   
    
    DRAW:
    
        MOV AH,0CH
        MOV AL,RANDOM_BALL_COLOR  ;BALL COLOR
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


MOVE  PROC 
    
       MOV AX,BALL_VELOCITY 
       ADD BALL_X,AX
       RET  
MOVE ENDP    

CHECK_COLLISION PROC 
    MOV AX,BULLET_X
    MOV BX,BULLET_X
    ADD BX,BULLET_SIZE

    MOV DX,BALL_X
    MOV CX,BALL_X
    ADD CX,BALL_SIZE

    ;CHECK FOR THE LOWER LIMIT OF THE BULLET
    CMP AX,DX
    JB UPER_LIMIT
    CMP AX,CX
    JA UPER_LIMIT
    CALL ADD_POINT_GAME
    RET

    UPER_LIMIT:
    CMP BX,DX
    JNB CONTINE
    RET
    CONTINE:CMP BX,CX
    JNA CONTINE2
    RET
    CONTINE2:CALL ADD_POINT_GAME
    RET

   RET 
CHECK_COLLISION ENDP
 

 CHECK_COLLISION_2 PROC 
    MOV AX,BULLET_X_2
    MOV BX,BULLET_X_2
    ADD BX,BULLET_SIZE

    MOV DX,BALL_X_2
    MOV CX,BALL_X_2
    ADD CX,BALL_SIZE

    ;CHECK FOR THE LOWER LIMIT OF THE BULLET
    CMP AX,DX
    JB UPER_LIMIT_2
    CMP AX,CX
    JA UPER_LIMIT_2
    CALL ADD_POINT_GAME_2
    RET

    UPER_LIMIT_2:
    CMP BX,DX
    JNB CONTINE_2
    RET
    CONTINE_2:CMP BX,CX
    JNA CONTINE2_2
    RET
    CONTINE2_2:CALL ADD_POINT_GAME_2
    RET

   RET 
CHECK_COLLISION_2 ENDP

ADD_POINT_GAME PROC 

    CMP RANDOM_BALL_TYPE,1
    JE FIRST_TYPE
    CMP RANDOM_BALL_TYPE,2
    JE SECOND_TYPE
    CMP RANDOM_BALL_TYPE,3
    JE THIRD_TYPE
    CMP RANDOM_BALL_TYPE,4
    JE FOURTH_TYPE
    CMP RANDOM_BALL_TYPE,5
    JE FIFTH_TYPE
    RET

    FIRST_TYPE:
    ADD POINT,4
    RET
    SECOND_TYPE:
    ADD POINT,9
    RET
    THIRD_TYPE:
    ADD POINT,2
    RET
    FOURTH_TYPE: 
    ADD POINT,8
    MOV DL,POINT
    RET
    FIFTH_TYPE:
    ADD POINT,3
    INT 21H


    RET
ADD_POINT_GAME ENDP



ADD_POINT_GAME_2 PROC 

    CMP RANDOM_BALL_TYPE,1
    JE FIRST_TYPE_2
    CMP RANDOM_BALL_TYPE,2
    JE SECOND_TYPE_2
    CMP RANDOM_BALL_TYPE,3
    JE THIRD_TYPE_2
    CMP RANDOM_BALL_TYPE,4
    JE FOURTH_TYPE_2
    CMP RANDOM_BALL_TYPE,5
    JE FIFTH_TYPE_2
    RET

    FIRST_TYPE_2:
    ADD POINT2,4
    RET
    SECOND_TYPE_2:
    ADD POINT2,9
    RET
    THIRD_TYPE_2:
    ADD POINT2,2
    RET
    FOURTH_TYPE_2: 
    ADD POINT2,8
   ; MOV DL,POINT2
    RET
    FIFTH_TYPE_2:
    ADD POINT2,3
    ;INT 21H


    RET
ADD_POINT_GAME_2 ENDP




RANDGEN PROC        ; generate a rand no using the system time

    RANDSTART:
    MOV AH, 2Ch  ; interrupts to get system time        
    INT 21H      ; CX:DX now hold number of clock ticks since midnight      
                    ; lets just take the lower bits of DL for a start..
    MOV BH, 5H  ; set limit to 57 (ASCII for 9) 
    MOV AH, DL  
    CMP AH, BH   ; compare with value in  DL,      
    JA RANDSTART ; if more, regenerate. if not, continue... 

    MOV BH, 1  ; set limit to 48 (ASCII FOR 0)
    MOV AH, DL   
    CMP AH, BH   ; compare with value in DL
    JB RANDSTART ; if less, regenerate.   


    ; if not, this is what we need 
    RET
RANDGEN ENDP


GUN_BULLET_SERAILLY PROC

    ;;;;;;;;;;;;;;;;;;;;;;;;; SENDING 
    mov dx , 3FDH
    AGAIN: In al , dx ;Read Line Status
    test al , 00100000b
    JZ RECIVING ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,FINISH_GAME_1
    out dx , al


    ;;;;;;;;;;;;;;;;;;;;RECIVING
    ;Check that Data is Ready
    RECIVING:
    mov dx , 3FDH ; Line Status Register
    CHK: in al , dx
    test al , 1
    JZ SAD ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    mov FINISH_GAME_2 , al


    SAD:RET
    GUN_BULLET_SERAILLY ENDP

FINISH_GUN_GAME PROC
    MOV FINISH_GAME_1,1
    FINISH_LOOP:
        CALL GUN_BULLET_SERAILLY
        CMP FINISH_GAME_2,1
        JNE FINISH_LOOP
    RET
    FINISH_GUN_GAME ENDP

START_GUN_GAME PROC
    cmp MASTER,1
    JE SEND_START
    JMP RECIVE_START

    SEND_START:
    mov dx , 3FDH
    AGAIN1: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN1 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,RANDOM_BALL_TYPE
    out dx , al

    RET
    RECIVE_START:
    mov dx , 3FDH ; Line Status Register
    CHK1: in al , dx
    test al , 1
    JZ CHK1 ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    mov RANDOM_BALL_TYPE , al


    RET 
    START_GUN_GAME ENDP

END MAIN


  