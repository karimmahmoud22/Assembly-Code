 
.MODEL HUGE
.STACK 64
.DATA

STRING1 DB "ENDER THE INSTRUCTION : $"  
NEWLINE DB 10,13,'$'
initialax db "AX: $ "
initialbx db "BX: $ "
initialcx db "CX: $ "
initialdx db "DX: $ "
initialbp db "BP: $ "
initialsi db "SI: $ "
initialsp db "SP: $ "
initialdi db "DI: $ "

TARGET DW 105eH 
 
NEWVAL DB "ENTER THE NEW VALUE : $" 

LEVEL DB 0


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
user_1_msg          db  160,?  
user_2_msg          db  160,?



STRING11 DB "PLEASE, ENTER YOUR NAME :  $"  
STRING2 DB "INTIAL POINTS :  $"  
STRING3 DB "PRESS ENTER KEY TO CONTINUE   $"  




INDATA22 LABEL BYTE
SIZE66 DB 6
ACTUALSIZE22 DB ?
INTIAL_POINTS_PLAYER_1 DB 2 DUP (?)

INDATA33 LABEL BYTE
SIZE77 DB 6
ACTUALSIZE66 DB ?
INTIAL_POINTS_PLAYER_2 DB 2 DUP (?)


Msg1 DB   "To start Chat press F1$"
Msg2 DB   "To start Game press F2$"
Msg3 DB   "To exit press Esc$"

;###############################
notification_position DB 21
VALUE22                 DB 0
has_invitation        DB 0      ; 1 --> chat, 2--> game

;###############################


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.CODE
;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;            ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;                        ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;                             ;;;;;;;;;;;;;;;;;
;;;;;;;                                           ;;;;;;; 
;;;;                                                 ;;;;
;;                                                     ;;
FIRST_PAGE_PLAYER_2  PROC FAR

    MOV AX,@DATA
    MOV DS,AX     
    
    MOV AH,0  
    MOV BH,1          ;;;FIRST PAGE ==> PAGE 1
    MOV AL,12H
    INT 10H
    
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
    
    FIRST_PAGE22:
            
    MOV AH,2
    MOV DL,10
    MOV DH,10
    MOV AL,12H
    INT 10H
             
            
            MOV DX,OFFSET STRING11  
            MOV AH,9
            INT 21H
                   
            MOV DX,OFFSET INDATA2  
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
                 CMP PLAYER_1_NAME,DL
                 JNE NOOP
                 JE CORRECT_NAME
                
            POOP:
                 INC DH
                 CMP DH,7AH
                 JZ HOOP
                 CMP PLAYER_1_NAME,DH
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
                 JMP FIRST_PAGE22   
                   
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
    
    SUB INTIAL_POINTS_PLAYER_1,30H       ;;;;1DIGIT ONLY  ( UPDATE IT LATELLLLLLLLLLLLLLLY )
   
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
    
                           ; ==>>>>> PAGE NUMBER 1  MOV BH,1
    
    MOV AH,0  
    MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
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
    
    FIRST_PAGE22Q:
            
    MOV AH,2
    MOV DL,11
    MOV DH,11
    MOV AL,12H
    INT 10H
             
            
            MOV DX,OFFSET STRING11  
            MOV AH,9
            INT 21H
                   
            MOV DX,OFFSET INDATA3  
            MOV AH,0AH
            INT 21H 
            
            MOV DX,OFFSET NEWLINE
            MOV AH,9
            INT 21H
            MOV DL,40H
            MOV DH,60H
            NOOPQ:
                 INC DL
                 CMP DL,91H
                 JZ POOPQ
                 CMP PLAYER_2_NAME,DL
                 JNE NOOPQ
                 JE CORRECT_NAMEQ
                
            POOPQ:
                 INC DH
                 CMP DH,7AH
                 JZ HOOPQ
                 CMP PLAYER_2_NAME,DH
                 JNE POOPQ
            
            HOOPQ:
                 MOV AH,0  
                 MOV BH,0
                 MOV AL,12H
                 INT 10H 
                 
                 MOV AH,0  
                 MOV BH,0
                 MOV AL,12H
                 INT 10H 
                 JMP FIRST_PAGE22Q   
                   
    CORRECT_NAMEQ: 
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
                   
    MOV DX,OFFSET INDATA33   

    MOV AH,0AH
    INT 21H
    
    SUB INTIAL_POINTS_PLAYER_2,30H       ;;;;1DIGIT ONLY  ( UPDATE IT LATELLLLLLLLLLLLLLLY )
   
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
    
    
    TILL_PRESS_ENTERQ:
    MOV AH,0
    INT 16H
    CMP AL,0DH      ;;;;;;;;;;;;START PLAY ( 0D ASCII FOR ENTER KEY )
    JNE TILL_PRESS_ENTERQ 

FIRST_PAGE_PLAYER_2 ENDP
ret
