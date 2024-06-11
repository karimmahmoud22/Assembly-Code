
PUBLIC X_1_CHAR , Y_1_CHAR  , X_2_CHAR , Y_2_CHAR , X_3_CHAR  , Y_3_CHAR , X_4_CHAR ,Y_4_CHAR
PUBLIC AX_REG2,BX_REG2,CX_REG2,DX_REG2, SI_REG2, DI_REG2, SP_REG2,BP_REG2
PUBLIC AX_REG,BX_REG,CX_REG,DX_REG, SI_REG, DI_REG, SP_REG,BP_REG
PUBLIC VALUE, MEMORY, MEMORY2,INS_START
PUBLIC SRC_FLAG,DEST_FLAG,SRC_SIZE,SRC_START
PUBLIC INDATA
PUBLIC INVALID,f,TEMP1_W,TEMP1,POINT2,CARRY2,CARRY,ONCE_CLEAR2,ONCE_CHANGE2,ONCE_CLEAR,ONCE_CHANGE,POINT,FORBIDDEN,FORBIDDEN2

PUBLIC shifting1_x  ,shifting1_Y  ,shifting_x  ,shifting_Y  ,COUNTER  

;;;;;
PUBLIC user_1_msg
PUBLIC user_2_msg
PUBLIC STRING11
PUBLIC NEWLINE
PUBLIC INTIAL_POINTS
PUBLIC position_1
PUBLIC position_2
PUBLIC nofication_bar_msg
PUBLIC user_name
PUBLIC the_other_name
PUBLIC NAMEE
PUBLIC PAGE_NUMBER
PUBLIC Msg1
PUBLIC Msg2
PUBLIC Msg3
PUBLIC INDATA22
PUBLIC STRING1
PUBLIC STRING11

PUBLIC STRING2
PUBLIC STRING3
PUBLIC PLAYER_1_NAME
PUBLIC PLAYER_2_NAME

;;;;


EXTRN DRAW_LETTERS_2_MEMORY:FAR
EXTRN  DRAW_LETTERS_1_MEMORY:FAR
EXTRN DRAW_MEMORY_1:FAR
EXTRN  DRAW_REGISTERS_1_7AND8:FAR
EXTRN  DRAW_REGISTERS_1_5AND6:FAR
EXTRN DRAW_REGISTERS_1_3AND4:FAR
EXTRN  DRAW_REGISTERS_1_1AND2:FAR
EXTRN DRAW_REGISTERS_2_7AND8:FAR
EXTRN  DRAW_REGISTERS_2_5AND6:FAR
EXTRN  DRAW_REGISTERS_2_3AND4:FAR
EXTRN DRAW_REGISTERS_2_1AND2:FAR
EXTRN DRAW_MEMORY_2:FAR
EXTRN DRAW_REGISTERS_NAMES_1:FAR
EXTRN DRAW_REGISTERS_NAMES_2:FAR
EXTRN READ_INST:FAR 
EXTRN SET_DES_SOURCE:FAR
EXTRN CHECK_ERROR:FAR

EXTRN DRAW_SQUARES:FAR
EXTRN DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES:FAR
EXTRN FIRST_PLAYER_COMMAND:FAR
EXTRN SECOND_PLAYER_COMMAND:FAR
EXTRN TAKE_COMMAND_PLAYER_1:FAR
EXTRN TAKE_COMMAND_PLAYER_2:FAR
EXTRN DRAW_NUMBERS_IN_MEMORY_PLAYER_1:FAR
EXTRN DRAW_NUMBERS_IN_MEMORY_PLAYER_2:FAR

EXTRN DRAW1_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1:FAR
EXTRN DRAW1_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1:FAR
EXTRN DRAW2_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2:FAR
EXTRN DRAW2_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2:FAR

EXTRN DRAW_TRIANGLE:FAR
EXTRN DRAW_TRIANGLE2:FAR

;;
EXTRN CHAT_PAGE:FAR
EXTRN FIRST_PAGE:FAR
EXTRN SECOND_PAGE:FAR

;;
 
.MODEL HUGE
.STACK 64
.DATA

STRING1 DB "ENDER THE INSTRUCTION : $"  
NEWLINE DB 10,13,'$'



;NAME1
    
;NAME2

INDATA LABEL BYTE
INS_SIZE DB 40
ACTUALSIZE DB ?
INS_START DB 40 DUP (?)



VALUE DB 16 DUP(0) 
  
  
  

AL_REG LABEL BYTE 
AX_REG DW 0  ;;AX 
AH_REG LABEL BYTE 
       

BL_REG LABEL BYTE 
BX_REG DW 0  ;;BX 
BH_REG LABEL BYTE
        
           

CL_REG LABEL BYTE 
CX_REG DW 0  ;;CX 
CH_REG LABEL BYTE
       
      
DL_REG LABEL BYTE 
DX_REG DW 0  ;;DX 
DH_REG LABEL BYTE
       
       
       
        
BP_REG DW 0  ;;BP
 
DI_REG DW 0  ;;DI
     
      
SI_REG DW 0 ;;SI
    
SP_REG DW 0 ;;SP           

MEMORY DB 16 DUP (0)
    
CARRY DB 0 ;;; CARRY 
      



FORBIDDEN DB ? 
POINT DB 0
ONCE_CLEAR DB 0 
ONCE_CHANGE DB 0   

;#############################################################################################--->ME<---######################################################################                  

AL_REG2 LABEL BYTE 
AX_REG2 DW 0  ;;AX 
AH_REG2 LABEL BYTE 
      

BL_REG2 LABEL BYTE 
BX_REG2 DW 0  ;;BX 
BH_REG2 LABEL BYTE
        
           

CL_REG2 LABEL BYTE 
CX_REG2 DW 0  ;;CX 
CH_REG2 LABEL BYTE
       
      
DL_REG2 LABEL BYTE 
DX_REG2 DW 0  ;;DX 
DH_REG2 LABEL BYTE
       
       
       
        
BP_REG2 DW 0  ;;BP
 
DI_REG2 DW 0  ;;DI
     
      
SI_REG2 DW 0 ;;SI
    
SP_REG2 DW 0 ;;SP           

MEMORY2 DB 16 DUP (0)
    
CARRY2 DB 0 ;;; CARRY


FORBIDDEN2 DB ? 
POINT2 DB 0
ONCE_CLEAR2 DB 0 
ONCE_CHANGE2 DB 0



SRC_FLAG DB 3
DEST_FLAG DB ?
SRC_SIZE DB ?
  


TEMP1_W DW 0
SRC_START DW 0   ;;TEMP TO CARRY THE STRATING BIT FOR THE SOURCE AFTER READING THE DEST
TEMP1 DB 0

f   DB 0

INVALID DB 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

X_1_CHAR DB ?
Y_1_CHAR DB ?
X_2_CHAR DB ?
Y_2_CHAR DB ?

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

X_3_CHAR DB ?
Y_3_CHAR DB ?
X_4_CHAR DB ?
Y_4_CHAR DB ?

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

shifting1_x Dw 68
shifting1_Y Dw 358

shifting_x Dw 68
shifting_Y Dw 148

COUNTER DW 20

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

INDATA2 LABEL BYTE
PLAYER_1_NAME_SIZE DB 40
ACTUALSIZE2 DB ?
PLAYER_1_NAME DB 40 DUP (?)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

INDATA3 LABEL BYTE
PLAYER_2_NAME_SIZE DB 40
ACTUALSIZE3 DB ?
PLAYER_2_NAME DB 40 DUP (?)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PAGE_NUMBER DB 9

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

position_1          db  1
position_2          db  12
nofication_bar_msg  db  'Press F3 to end chat $'  
user_name           db  'Ali:$'
the_other_name      db  'ahmed:$'
user_1_msg          db  160,?,('$')  
user_2_msg          db  160,?,('$')



STRING11 DB "PLEASE, ENTER YOUR NAME :  $"  
STRING2 DB "INTIAL POINTS :  $"  
STRING3 DB "PRESS ENTER KEY TO CONTINUE   $"  


INDATA4 LABEL BYTE
SIZE44 DB 16
ACTUALSIZE4 DB 15
NAMEE DB ,16 DUP (?)


INDATA22 LABEL BYTE
SIZE66 DB 6
ACTUALSIZE22 DB ?
INTIAL_POINTS DB 2 DUP (?)

Msg1 DB   "Start Chat press F1$"
Msg2 DB   "Start Game press F2$"
Msg3 DB   "Exit press Esc$"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.CODE
;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;            ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;                        ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;                             ;;;;;;;;;;;;;;;;;
;;;;;;;                                           ;;;;;;; 
;;;;                                                 ;;;;
;;                                                     ;;
MAIN  PROC FAR

    MOV AX,@DATA
    MOV DS,AX     
    
    CALL FIRST_PAGE
    
    CALL SECOND_PAGE
    
    CMP PAGE_NUMBER,3   ;CHAT
    JE CHAT22
    CMP PAGE_NUMBER,0   ;GAME
    JE MYLOOP
    JMP END_PROGRAM
    
    
    
    CHAT22:
           CALL CHAT_PAGE       ;;KARIM==>WHEN CHAT WILL BE ENDED?
           
    MOV AH,0  
    MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
    MOV AL,12H
    INT 10H 


    MOV AX,0600H
    MOV BH,07
    MOV CX,0
    MOV DX,184FH
    INT 10H
    
    MOV POINT2,200D
      
    MYLOOP:
    

    
    CALL DRAW_LETTERS_1_MEMORY 
    
    CALL DRAW_LETTERS_2_MEMORY
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL DRAW_MEMORY_1
    
    CALL DRAW_MEMORY_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
   CALL  DRAW_REGISTERS_1_7AND8
    
   CALL DRAW_REGISTERS_1_5AND6
    
   CALL DRAW_REGISTERS_1_3AND4
    
    CALL DRAW_REGISTERS_1_1AND2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL DRAW_REGISTERS_2_7AND8
    
    CALL DRAW_REGISTERS_2_5AND6
    
    CALL DRAW_REGISTERS_2_3AND4
    
    CALL DRAW_REGISTERS_2_1AND2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL DRAW_REGISTERS_NAMES_1
    
    CALL DRAW_REGISTERS_NAMES_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL DRAW_SQUARES
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES
      
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL FIRST_PLAYER_COMMAND
    
    CALL SECOND_PLAYER_COMMAND
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    CALL DRAW_NUMBERS_IN_MEMORY_PLAYER_1
    
    CALL DRAW_NUMBERS_IN_MEMORY_PLAYER_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
   CALL  DRAW1_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1
    
   CALL  DRAW1_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    CALL DRAW2_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2
    
    CALL DRAW2_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2
    

    CALL TAKE_COMMAND_PLAYER_1

    ;;;;;;;;;;;STEP 3 EXCUTE THE INSTRUCTION 
    INSTRUCTIONS:
    ;;;;;;;;;;; MOV INSTRUCTIONS
    CMP INS_START,'P'
    JE  ispow1
    jmp NOTPOW
    ispow1:
    CMP INS_START+1,'O'
   JE  ispow2
    jmp NOTPOW
    ispow2:
    CMP INS_START+2,'W'
    JE  ispow3
    jmp NOTPOW
    ispow3:
    MOV AL,INS_START+4
    SUB AL,48D
    MOV VALUE,AL
    CMP VALUE,1
    JE  FIRES
    CMP VALUE,2
    JE SECOND
    CMP VALUE,3
    JE THIRD
    CMP VALUE,4
    JNE POWER_CHECK_SYNTAKS
    JMP FOURTH
    POWER_CHECK_SYNTAKS:
    

    FIRES:CMP POINT2,5D
          JNB FIRES_CHECK_1  
          JMP SORRY
          FIRES_CHECK_1:
         CALL SET_DES_SOURCE
          CALL  CHECK_ERROR
          CMP INVALID,1 
          JNE FIRES_CHECK_1
          JMP MINUS
          FIRES_CHECK_2:
          ADD DI,37D
          CALL READ_INST ;ME 
          SUB POINT2,5D  
          JMP LOOP1 
    
    SECOND:CMP POINT2,3D
          JNB SECOND_CHECK_1  
          JMP SORRY
          SECOND_CHECK_1:   
           CALL  SET_DES_SOURCE
           CALL  CHECK_ERROR
           CMP INVALID,1
           JNE SECOND_CHECK_2
           JMP MINUS
           SECOND_CHECK_2:
           CALL READ_INST ;HIM
           
           ADD DI,36D
          CALL  CHECK_ERROR 
           CMP INVALID,1
           JNE SECOND_CHECK_3
           JMP MINUS
           SECOND_CHECK_3:   
            CALL READ_INST ;ME 
           SUB POINT2,3D
           JMP LOOP1
    
    THIRD:CMP POINT2,8D
          JE SORRY 
          CMP ONCE_CHANGE2,1
          JB D1
          JMP LOOP1
          D1: 
          ADD  ONCE_CHANGE2,1
          MOV AH,0
          INT 16H
          MOV FORBIDDEN,AL 
          SUB POINT2,8D               ;READ NEW FORBIDDEN CHAR
          JMP LOOP1
    
    FOURTH:CMP POINT2,30D
           JE SORRY
           CMP ONCE_CLEAR2,1
           JB DO4
           JMP LOOP1
          DO4:MOV ONCE_CLEAR2,1 
          MOV AX_REG2,0
          MOV BX_REG2,0      
          MOV CX_REG2,0
          MOV DX_REG2,0
          MOV BP_REG2,0
          MOV DI_REG2,0          
          MOV SI_REG2,0     
          MOV SP_REG2,0
          MOV CARRY2,0
          SUB POINT2,30D
          JMP LOOP1
          
    SORRY:JMP LOOP1               
    
    NOTPOW:
     CALL  SET_DES_SOURCE    
     CALL  CHECK_ERROR 
     CMP INVALID,1
     JE MINUS 

     CALL   READ_INST 
           JMP LOOP1
    MINUS:SUB POINT,1D  
          MOV INVALID,0
          JE LOOP1              
    LOOP1:
    
     JMP MYLOOP
    
    LAB1: HLT
    MAIN ENDP    
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;######################### FIREST INSTRUCTION IN HIM ###########################################    
   END_PROGRAM:
    
END MAIN

ret