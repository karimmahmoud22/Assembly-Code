EXTRN INDATA:BYTE
EXTRN X_1_CHAR:BYTE
EXTRN Y_1_CHAR:BYTE
EXTRN X_2_CHAR:BYTE
EXTRN Y_2_CHAR:BYTE
EXTRN X_3_CHAR:BYTE 
EXTRN Y_3_CHAR:BYTE
EXTRN X_4_CHAR:BYTE
EXTRN Y_4_CHAR:BYTE

EXTRN AX_REG:WORD  ;;AX 
EXTRN BX_REG:WORD  ;;BX 
        
           

EXTRN CX_REG:WORD  ;;CX 
       
      
EXTRN DX_REG:WORD  ;;DX 
       
EXTRN BP_REG:WORD  ;;BP
EXTRN DI_REG:WORD  ;;DI
EXTRN SI_REG:WORD ;;SI   
EXTRN SP_REG:WORD ;;SP           
EXTRN MEMORY:BYTE
EXTRN FORBIDDEN1:BYTE
EXTRN FORBIDDEN2:BYTE
EXTRN POINT1:BYTE



;;;;;; PLAYER 2
EXTRN AX_REG2:WORD  ;;AX 
       

EXTRN BX_REG2:WORD  ;;BX 
         
           

EXTRN CX_REG2:WORD  ;;CX 
        
      
EXTRN DX_REG2:WORD  ;;DX 
        
       
       
        
EXTRN BP_REG2:WORD  ;;BP
EXTRN DI_REG2:WORD  ;;DI 
EXTRN SI_REG2:WORD ;;SI  
EXTRN SP_REG2:WORD ;;SP           
EXTRN MEMORY2:BYTE
EXTRN CARRY2:BYTE ;;; CARRY
;EXTRN FORBIDDEN:BYTE 
;EXTRN FORBIDDEN1:BYTE 

EXTRN FOBIDONE:BYTE
EXTRN FOBIDTWO:BYTE
 
EXTRN POINT2:BYTE

EXTRN shifting1_x:WORD
EXTRN shifting1_Y:WORD
EXTRN shifting_x:WORD  
EXTRN shifting_Y:WORD  
EXTRN COUNTER:WORD  

EXTRN MSG_OF_FORBIDDEN_CHAR_1:BYTE
EXTRN MSG_OF_FORBIDDEN_CHAR_2:BYTE 
 

EXTRN PLAYER_2_NAME:BYTE  
EXTRN PLAYER_1_NAME:BYTE  


EXTRN position_1:BYTE  
EXTRN position_2:BYTE  
EXTRN nofication_bar_msg:BYTE  
EXTRN user_name:BYTE  
EXTRN the_other_name:BYTE  
EXTRN user_1_msg:BYTE  
EXTRN user_2_msg:BYTE  
EXTRN STRING1:BYTE  
EXTRN STRING11:BYTE  

EXTRN STRING2:BYTE  
EXTRN STRING3:BYTE  
EXTRN NEWLINE:BYTE  
EXTRN Msg1:BYTE  
EXTRN Msg2:BYTE  
EXTRN Msg3:BYTE  
EXTRN VALUE:BYTE  
EXTRN PAGE_NUMBER:BYTE
;EXTRN PAGE_NUMBER_2:BYTE

;EXTRN INDATA22:BYTE
;EXTRN INDATA33:BYTE
EXTRN POINT1:BYTE
EXTRN POINT2:BYTE

EXTRN INDATA2:BYTE
EXTRN INDATA3:BYTE

EXTRN ACTUALSIZE2:BYTE
EXTRN ACTUALSIZE3:BYTE


EXTRN notification_position:BYTE 
EXTRN VALUE22:BYTE                
EXTRN has_invitation:BYTE        

EXTRN chat_invitation_sent:BYTE    
EXTRN game_invitation_sent:BYTE    

EXTRN chat_invitation_receive:BYTE 
EXTRN game_invitation_receive:BYTE 
EXTRN invitation_accepted:BYTE 

;**************************
EXTRN XS:BYTE 
EXTRN XR:BYTE 
EXTRN YR:BYTE 
EXTRN YS:BYTE 
EXTRN VALUE_CHAT:BYTE
EXTRN user_name:BYTE      
EXTRN the_other_name:BYTE      
EXTRN nofication_bar_msg:BYTE  
EXTRN outMessage:BYTE          

EXTRN PLAYER:BYTE  
EXTRN MASTER:BYTE          

;**************************
EXTRN NAMEE:BYTE
EXTRN NAME1:BYTE
EXTRN NAME2:BYTE
EXTRN SIZEE:BYTE

;;;;;;;

EXTRN SIZE_MAD1:BYTE 
EXTRN SIZE_MAD2:BYTE 
EXTRN MAX_SIZE:BYTE  
EXTRN ACTUAL_SIZE:BYTE 

;;;;;;;;


PUBLIC   DRAW_LETTERS_2_MEMORY , DRAW_LETTERS_1_MEMORY
PUBLIC DRAW_MEMORY_1 , DRAW_REGISTERS_1_7AND8 , DRAW_REGISTERS_1_5AND6
PUBLIC DRAW_REGISTERS_1_3AND4 , DRAW_REGISTERS_1_1AND2
PUBLIC DRAW_REGISTERS_2_7AND8 , DRAW_REGISTERS_2_5AND6 , DRAW_REGISTERS_2_3AND4
PUBLIC DRAW_REGISTERS_2_1AND2,DRAW_MEMORY_2,DRAW_REGISTERS_NAMES_1,DRAW_REGISTERS_NAMES_2


PUBLIC  DRAW_SQUARES,DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES,FIRST_PLAYER_COMMAND
PUBLIC SECOND_PLAYER_COMMAND , TAKE_COMMAND_PLAYER_1,TAKE_COMMAND_PLAYER_2
PUBLIC DRAW_NUMBERS_IN_MEMORY_PLAYER_1,DRAW_NUMBERS_IN_MEMORY_PLAYER_2
PUBLIC DRAW1_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1
PUBLIC DRAW1_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1
PUBLIC DRAW2_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2
PUBLIC DRAW2_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2

PUBLIC FORBIDDEN_CHAR_S_R

PUBLIC WRITE_PLAYER_1_NAME
PUBLIC WRITE_PLAYER_2_NAME

PUBLIC CHAT_PAGE
PUBLIC F1_F2_F3_PAGES
PUBLIC FIRST_PAGE

PUBLIC DISPLAY_PLAYERS_NAMES
PUBLIC DISPLAY_FORBIDDEN_CHAR

EXTRN VAR:BYTE
EXTRN CARRY_ASCII:BYTE

EXTRN SENDING_DATA:FAR
EXTRN RECIEVING_ASCII:FAR


PUBLIC SEND_R_NAMES
PUBLIC SEND_R_CARACTERS
PUBLIC SEND_S_CARACTERS





PUBLIC S_R_NAMES
PUBLIC SEND_REC

         

.MODEL HUGE
.CODE

;;;;;;;;;;;;;;;;;;;;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;            ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;                        ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;                             ;;;;;;;;;;;;;;;;;
;;;;;;;                                           ;;;;;;; 
;;;;                                                 ;;;;
;;                                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SEND_R_NAMES PROC  FAR


    CMP PLAYER,1
    JE IAM_PLAYER_1_NAME
    JMP IAM_PLAYER_2_NAME
    IAM_PLAYER_1_NAME:

    MOV SI,OFFSET NAMEE
    MOV DI,OFFSET NAME1
    RRRR:
    MOV DL,BYTE PTR [SI]
    MOV AH,2
    ;INT 21H
    CMP BYTE PTR [SI],"$"
    JE GO_OUT_1
    MOV AL,[SI]
    MOV [DI],AL
    INC SIZE_MAD1
    INC SI
    INC DI
    JMP RRRR
    GO_OUT_1:


    
DEC SIZE_MAD1




    mov dx , 3FDH ; Line Status Register
    AGAIN_S: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,SIZE_MAD1
    out dx , al

    mov dx , 3FDH ; Line Status Register
    CHKS: in al , dx
    test al , 1
    JZ CHKS
    mov dx , 03F8H
    in al , dx
  ;  mov VALUE , al



    ;;;; RECIVE FROM 2
    mov dx , 3FDH ; Line Status Register
    CHK_4: in al , dx
    test al , 1
    JZ CHK_4 ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    mov SIZE_MAD2 , al


    mov dx , 3FDH ; Line Status Register
    AGAINS_3: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAINS_3 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,5
    out dx , al

    RET
;;;;;;;;;;;;;;;;;;;;;;;;; FINISH EXCHANGE THE SIZE
    IAM_PLAYER_2_NAME:
    MOV SI,OFFSET NAMEE
    MOV DI,OFFSET NAME2
    RRRR2:
    CMP BYTE PTR [SI],"$"
    JE GO_OUT_2
    MOV AL,[SI]
    MOV [DI],AL
    INC SIZE_MAD2
    INC SI
    INC DI
    JMP RRRR2
    GO_OUT_2:
DEC SIZE_MAD2
;;;;;;; RECIVE FROM 1
    mov dx , 3FDH ; Line Status Register
    CHKS2: in al , dx
    test al , 1
    JZ CHKS2 ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    mov SIZE_MAD1 , al


    mov dx , 3FDH ; Line Status Register
    AGAIN_S2: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S2 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,5
    out dx , al

    MOV CX,100
    WITHPUT_PENIFIT:
    LOOP WITHPUT_PENIFIT

    mov dx , 3FDH ; Line Status Register
    AGAIN_S4: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S4 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,SIZE_MAD2
    out dx , al



    mov dx , 3FDH ; Line Status Register
    CHK_S4: in al , dx
    test al , 1
    JZ CHK_S4 ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    ;mov VALUE , al
    RET
    SEND_R_NAMES ENDP


SEND_R_CARACTERS PROC    FAR
    CMP PLAYER,1
    JE IAM_PLAYER_1_NAME2
    JMP IAM_PLAYER_2_NAME2
    IAM_PLAYER_1_NAME2:

    MOV CL,SIZE_MAD1
    MOV CH,0
    MOV SI,OFFSET NAMEE
    SEND_PLAYER1:
    CMP CX,0
    JA SSSSS
    JMP OUT_SSSSS
    SSSSS:
    PUSH CX
    PUSH SI

    mov dx , 3FDH ; Line Status Register
    AGAIN_S_CH: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S_CH ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,[SI]
    out dx , al



    mov dx , 3FDH ; Line Status Register
    CHK_S_CH: in al , dx
    test al , 1
    JZ CHK_S_CH ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx

    POP SI
    POP CX
    INC SI
    DEC CX
    JMP SEND_PLAYER1
    OUT_SSSSS:
    RET

    IAM_PLAYER_2_NAME2:
    MOV CL,SIZE_MAD1
    MOV CH,0
    MOV SI,OFFSET NAME1
    RECIVE_CHR:
    CMP CX,0
    JA ENTER_RECIVE
    JMP OUT_REIVE
    ENTER_RECIVE:
    PUSH CX
    PUSH SI

    mov dx , 3FDH ; Line Status Register
    CHK_RECI: in al , dx
    test al , 1
    JZ CHK_RECI ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    mov BYTE PTR [SI] , al


    mov dx , 3FDH ; Line Status Register
    AGAIN_S5: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S5 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,5
    out dx , al

    POP SI
    POP CX
    INC SI
    DEC CX
    JMP RECIVE_CHR
    OUT_REIVE:
    RET
    SEND_R_CARACTERS ENDP



SEND_S_CARACTERS PROC      FAR
    CMP PLAYER,2
    JE IAM_PLAYER_1_NAME22
    JMP IAM_PLAYER_2_NAME22
    IAM_PLAYER_1_NAME22:

    MOV CL,SIZE_MAD2
    MOV CH,0
    MOV SI,OFFSET NAMEE
    SEND_PLAYER12:
    CMP CX,0
    JA SSSSS2
    JMP OUT_SSSSS2
    SSSSS2:
    PUSH CX
    PUSH SI

    mov dx , 3FDH ; Line Status Register
    AGAIN_S_CH2: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S_CH2 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,[SI]
    out dx , al



    mov dx , 3FDH ; Line Status Register
    CHK_S_CH2: in al , dx
    test al , 1
    JZ CHK_S_CH2 ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx

    POP SI
    POP CX
    INC SI
    DEC CX
    JMP SEND_PLAYER12
    OUT_SSSSS2:
    RET

    IAM_PLAYER_2_NAME22:
    MOV CL,SIZE_MAD2
    MOV CH,0
    MOV SI,OFFSET NAME2
    RECIVE_CHR2:
    CMP CX,0
    JA ENTER_RECIVE2
    JMP OUT_REIVE2
    ENTER_RECIVE2:
    PUSH CX
    PUSH SI

    mov dx , 3FDH ; Line Status Register
    CHK_RECI2: in al , dx
    test al , 1
    JZ CHK_RECI2 ;Not Ready
    ;If Ready read the VALUE in Receive data register
    mov dx , 03F8H
    in al , dx
    mov BYTE PTR [SI] , al


    mov dx , 3FDH ; Line Status Register
    AGAIN_S52: In al , dx ;Read Line Status
    test al , 00100000b
    JZ AGAIN_S52 ;Not empty
    ;If empty put the VALUE in Transmit data register
    mov dx , 3F8H ; Transmit data register
    mov al,5
    out dx , al

    POP SI
    POP CX
    INC SI
    DEC CX
    JMP RECIVE_CHR2
    OUT_REIVE2:
    RET
    SEND_S_CARACTERS ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SEND_REC PROC FAR
    
    CMP PLAYER,1
    JE EVB
    JMP E2VB
    EVB:
      
        MOV SI,OFFSET NAMEE
        MOV CL,SIZEE
        MOV CH,0
        
        SEND_INITIALVB:
            ;Sending a value
            ;Check that Transmitter Holding Register is Empty
            mov dx , 3FDH ; Line Status Register
            AGAINAVB: In al , dx ;Read Line Status
            test al , 00100000b
            JZ AGAINAVB ;Not empty
            ;If empty put the VALUE in Transmit data register
            mov dx , 3F8H ; Transmit data register
            mov al,[SI]
            out dx , al
            INC SI
            DEC CX
            CMP CX,0
            JNZ SEND_INITIALVB



            MOV CL,SIZEE
            MOV CH,0
            MOV SI,OFFSET NAME2
            RECIVING_DATAVB:
                ;Receiving a value
                ;Check that Data is Ready
                mov dx , 3FDH ; Line Status Register
                CHKAVB: in al , dx
                test al , 1
                JZ CHKAVB ;Not Ready
                ;If Ready read the VALUE in Receive data register
                mov dx , 03F8H
                in al , dx
                mov [SI] , al
                INC SI
                DEC CX
                CMP CX,0
                JNZ RECIVING_DATAVB
            RET
    E2VB:
        MOV CL,SIZEE
        MOV CH,0
        MOV SI,OFFSET NAME1
        RECIVING_DATA1VB:
            ;Receiving a value
            ;Check that Data is Ready
            mov dx , 3FDH ; Line Status Register
            CHK2VB: in al , dx
            test al , 1
            JZ CHK2VB ;Not Ready
            ;If Ready read the VALUE in Receive data register
            mov dx , 03F8H
            in al , dx
            mov [SI] , al
            INC SI
            DEC CX
            CMP CX,0
            JNZ RECIVING_DATA1VB

         
        MOV SI,OFFSET NAMEE
        MOV CL,SIZEE
        MOV CH,0
        SEND_INITIAL1VB:
            ;Sending a value
            ;Check that Transmitter Holding Register is Empty
            mov dx , 3FDH ; Line Status Register
            AGAIN0VB: In al , dx ;Read Line Status
            test al , 00100000b
            JZ AGAIN0VB ;Not empty
            ;If empty put the VALUE in Transmit data register
            mov dx , 3F8H ; Transmit data register
            mov al,[SI]
            out dx , al
            INC SI
            DEC CX
            CMP CX,0
            JNZ SEND_INITIAL1VB

SEND_REC ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

S_R_NAMES PROC FAR
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        CMP PLAYER,2
        JE TYU
        JMP UIO
        
        TYU:
        MOV SI,OFFSET NAMEE
        MOV DI,OFFSET NAME2
        DEC SI
        DEC DI
        MOV CL,SIZEE
        MOV CH,0
        SEND_INITIAL1IO:
            INC SI
            INC DI
            ;Sending a value
            ;Check that Transmitter Holding Register is Empty
            mov dx , 3FDH ; Line Status Register
            AGAIN0IO: In al , dx ;Read Line Status
            test al , 00100000b
            JZ AGAIN0IO ;Not empty
            ;If empty put the VALUE in Transmit data register
            mov dx , 3F8H ; Transmit data register
            mov al,[SI]
            out dx , al
            
            MOV [DI],AL
            PUSH DI
            PUSH SI
            PUSH CX
            
            mov dx , 3FDH ; Line Status Register
            CHKRTIOP: in al , dx
            test al , 1
            JZ CHKRTIOP ;Not Ready
            
            POP CX
            POP SI
            POP DI
            
            DEC CX
            CMP CX,0
            JNZ SEND_INITIAL1IO
        
          
        MOV SI,OFFSET NAME1
        DEC SI
        MOV CL,SIZEE
        MOV CH,0
        RECIVING_DATA1IO:
            
            INC SI
            ;Receiving a value
            ;Check that Data is Ready
            mov dx , 3FDH ; Line Status Register
            CHK2IO: in al , dx
            test al , 1
            JZ CHK2IO ;Not Ready
           ;If Ready read the VALUE in Receive data register
            mov dx , 03F8H
            in al , dx
            mov [SI] , al
            
            PUSH CX
            PUSH SI
            
            MOV VAR,5
            CALL SENDING_DATA
            
            POP SI
            POP CX
            
            DEC CX
            CMP CX,0
            JNZ RECIVING_DATA1IO
   
            RET
;;;;;;;;;;;;;
            
            UIO:
            
            MOV SI,OFFSET NAME2
            DEC SI
            MOV CL,SIZEE
            MOV CH,0
            RECIVING_DATATY:
                INC SI
                ;Receiving a value
                ;Check that Data is Ready
                mov dx , 3FDH ; Line Status Register
                CHKATY: in al , dx
                test al , 1
                JZ CHKATY ;Not Ready
                ;If Ready read the VALUE in Receive data register
                mov dx , 03F8H
                in al , dx
                mov [SI] , al
                
                PUSH CX
                PUSH SI
               
                MOV VAR,5
                CALL SENDING_DATA
            
                POP SI
                POP CX
                
                DEC CX
                CMP CX,0
                JNZ RECIVING_DATATY
          
        
          
          MOV SI , OFFSET NAMEE
          MOV DI,OFFSET NAME1
          DEC SI
          DEC DI
          MOV CL,SIZEE
          MOV CH,0
        SEND_INITIALTY:
            INC DI
            INC SI
            ;Sending a value
            ;Check that Transmitter Holding Register is Empty
            mov dx , 3FDH ; Line Status Register
            AGAINATY: In al , dx ;Read Line Status
            test al , 00100000b
            JZ AGAINATY ;Not empty
            ;If empty put the VALUE in Transmit data register
            mov dx , 3F8H ; Transmit data register
            mov al,[SI]
            out dx , al
            
            MOV [DI],AL
            
            PUSH DI
            PUSH SI
            PUSH CX
            
            mov dx , 3FDH ; Line Status Register
            CHKRTYUIOP: in al , dx
            test al , 1
            JZ CHKRTYUIOP ;Not Ready

            POP CX
            POP SI
            POP DI
            
            DEC CX
            CMP CX,0
            JNZ SEND_INITIALTY
            
            RET
;;;;;;;;;;;

S_R_NAMES ENDP

DISPLAY_PLAYERS_NAMES PROC FAR
    
    ; diplay first player name
    MOV AH,2
    MOV DL,33
    MOV DH,9
    mov CX,DX       ; MUSTAFA --> I NEED THIS POSITION LATER IN THE CODE
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    
    MOV SI, OFFSET NAME1
    MOV CL,SIZE_MAD1
    MOV CH,0
    HOHOI:
   
    MOV AH,2
    MOV DL,BYTE PTR [SI]
    INT 21H
    INC SI
    DEC CX
    JNZ HOHOI
    ;CMP BYTE PTR [SI],28D
    ;JE JIJI
    ;JMP HOHOI 
     
     JIJI: 
     
     MOV DX,OFFSET NEWLINE
    MOV AH,9    
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
     
     
     
    ;;;;;;;;;;;;;;;;
    
     MOV CL,1

     MOV X_1_CHAR,45
     MOV Y_1_CHAR,9

     MOV X_2_CHAR,46
     MOV Y_2_CHAR,9

     MOV AL,POINT1
     MOV AH,0
     MOV SI,1
     MOMO:
          ;;;;;;;;;;;;;;;;;;;;

     mov bl,10
     div bl
     mov dl,al
     push ax
     add dl,30h
     ;CMP DL,57D
     ;JBE NOTLETTERQQW
     ;LETTERQQW:
              ;ADD DL,7D
     
     ;NOTLETTERQQW:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     POP DX
     mov ah,02h
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h

     pop ax
     mov dl,ah
     add dl,30h
     ;CMP BX,57D
     ;JBE NOTLETTERQQW1
     ;LETTERQQW1:
              ;ADD BX,7D
     
     ;NOTLETTERQQW1:
     
     PUSH DX

     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     POP DX
     mov ah,02h
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h
          
          DEC CL
          JNZ MOMO
          
    ;;;;;;;;;;;;;;;;
    ;Print points for player 1
    ;###### KARIM
    
    
    ; diplay second player name
    MOV AH,2
    MOV DL,33
    MOV DH,22
    mov CX,DX       ; MUSTAFA --> I NEED THIS POSITION LATER IN THE CODE
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
  
    MOV SI, OFFSET NAME2
    MOV CL,SIZE_MAD2
    MOV CH,0
    HOHOIAA:
    MOV AH,2
    MOV DL,BYTE PTR [SI]
    INT 21H
    INC SI
  ;  CMP BYTE PTR [SI],28D
   ; JE JIJIAA
    ;JMP HOHOIAA 
     DEC CX
     JNZ HOHOIAA
     JIJIAA: 
     
     MOV DX,OFFSET NEWLINE
     MOV AH,9    
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 21H
    
     ;;;;;;;;;;;;;;;;;;;;   
        
     MOV CL,1

     MOV X_1_CHAR,45
     MOV Y_1_CHAR,22

     MOV X_2_CHAR,46
     MOV Y_2_CHAR,22

     MOV AL,POINT2
     MOV AH,0
     MOV SI,1
     MOMOR:
          ;;;;;;;;;;;;;;;;;;;;

     mov bl,10
     div bl
     mov dl,al
     push ax
     add dl,30h
     ;CMP DL,57D
     ;JBE NOTLETTERQQWR
     ;LETTERQQWR:
      ;        ADD DL,7D
     
     ;NOTLETTERQQWR:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     POP DX
     mov ah,02h
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h

     pop ax
     mov dl,ah
     add dl,30h
     ;CMP BX,57D
     ;JBE NOTLETTERQQW1R
     ;LETTERQQW1R:
      ;        ADD BX,7D
     
     ;NOTLETTERQQW1R:
     
     PUSH DX

     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     POP DX
     mov ah,02h
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h
          
          DEC CL
          JNZ MOMOR
  RET
    ;;;;;;;;;;;;;;;;;;;;;;;
DISPLAY_PLAYERS_NAMES ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DISPLAY_FORBIDDEN_CHAR PROC FAR
     
     ; for player 1
     ;MOV AL,FORBIDDEN
     ;MOV MSG_OF_FORBIDDEN_CHAR_1[21],AL
     ;MOV MSG_OF_FORBIDDEN_CHAR_1[22],'$'
      
     MOV AH,2
     MOV DL,33
     MOV DH,11
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     
     mov ah, 9
     mov dx, offset MSG_OF_FORBIDDEN_CHAR_1
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h
     
     ; get position
     mov ah,3h
     mov bh,0h
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 10h
    
     mov ah,2
     mov dl,FORBIDDEN1           
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h
     
     
     ; for player 2
     ;MOV AL,FORBIDDEN2
     ;MOV MSG_OF_FORBIDDEN_CHAR_2[21],AL
     ;MOV MSG_OF_FORBIDDEN_CHAR_2[22],'$'
     
     MOV AH,2
     MOV DL,33
     MOV DH,24    
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     
     mov ah, 9
     mov dx, offset MSG_OF_FORBIDDEN_CHAR_2
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEEE
     int 21h
     
     ; get position
     mov ah,3h
     mov bh,0h                             
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 10h
    
     mov ah,2
     mov dl,FORBIDDEN2                     
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h


RET
DISPLAY_FORBIDDEN_CHAR ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CHAT_PAGE PROC FAR   
    MOV AX,@DATA
    MOV DS,AX
    


                        ;;;;;;PAGE NUMBER 3

mov dx,3fbh ; Line Control Register
mov al,10000000b ;Set Divisor Latch Access Bit
out dx,al

mov dx,3f8h
mov al,0ch
out dx,al


mov dx,3f9h
mov al,00h
out dx,al

mov dx,3fbh
mov al,00011011b                              
out dx,al

startYU:
; intialization

    MOV AH,0  
    MOV AL,12H
    MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    MOV AH,0  
    MOV BH,3          ;;;FIRST PAGE ==> PAGE 1
    MOV AL,12H                          
    ;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    
;CALL clear_screen

mov XS,0    
mov XR,0
mov YS,1
mov YR,15 



; print user name 
mov ah,2
mov dl,0
mov dh,0    
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
int 10h
     CMP PLAYER,1
     JE LOKL

     MOV SI, OFFSET NAME2
     MOV CL,SIZE_MAD2
    MOV CH,0
     JMP HOHOIAAA
     LOKL:
     MOV SI, OFFSET NAME1
    MOV CL,SIZE_MAD1
    MOV CH,0
    HOHOIAAA:
    MOV AH,2
    MOV DL,BYTE PTR [SI]
    INT 21H
    INC SI
  ;  CMP BYTE PTR [SI],28D
   ; JE JIJIAA
    ;JMP HOHOIAA 
     DEC CX
     JNZ HOHOIAAA
     
   
; print the dashed line ( in center of the screen ) 

mov cx,13
newLinesLoop:
    MOV DX,OFFSET NEWLINE
    MOV AH,9    
    MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    loop newLinesLoop

mov ah,2
mov dl,0
mov dh,10
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
int 10h


mov ah,9 ;Display
MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h


;mov cx,5
;newLinesLoop_0:
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
 ;   loop newLinesLoop_0
    
; print user name 2
;mov ah,2
;mov dl,0
;mov dh,11
;int 10h
     CMP PLAYER,1
     JE LOKL2

     MOV SI, OFFSET NAME1
     MOV CL,SIZE_MAD1
    MOV CH,0
     JMP HOHOIAAAS
     LOKL2:
 MOV SI, OFFSET NAME2
    MOV CL,SIZE_MAD2
    MOV CH,0
    HOHOIAAAS:
    MOV AH,2
    MOV DL,BYTE PTR [SI]
    INT 21H
    INC SI
  ;  CMP BYTE PTR [SI],28D
   ; JE JIJIAA
    ;JMP HOHOIAA 
     DEC CX
     JNZ HOHOIAAAS
   

mov cx,14
newLinesLoop_2:
    MOV DX,OFFSET NEWLINE
    MOV AH,9    
    MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    loop newLinesLoop_2
    
; print the notification Bar  

;mov ah,2
;mov dl,0
;mov dh,22
;int 10h


mov ah,9 ;Display
MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h

;mov ah,2
;mov dl,0
;mov dh,23
;int 10h

MOV DX,OFFSET NEWLINE
    MOV AH,9
    ;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
mov ah, 9
mov dx, offset nofication_bar_msg
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
int 21h



LOOP1:

 SEND:
 
 ;Check that Transmitter Holding Register is Empty
 mov dx , 3FDH ; Line Status Register
AGAIN: In al , dx ;Read Line Status
test al , 00100000b
JZ goToReceive
JMP dontGo

goToReceive:
JMP RECIVE 

; get key pressed
dontGo:
MOV AH,1
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 16H
JZ goToReceive


cmp ah,03DH         ; scan code of F3
JE endChat              
JNE completeYU

endChat:
 MOV VALUE_CHAT, 5       ;   5 is a flag for me to left the chat
 JMP Transmit


completeYU:
MOV AH,0 
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 16H
MOV VALUE_CHAT,AL
CMP AH,28       ; scan code of enter
JE enter_pressed
JNE hereYU


enter_pressed:
inc YS
mov XS,0
mov VALUE_CHAT, 28       ; scan code of enter
 
; check if the screen need to be cleared

CMP YS,13
JE startAgain
JNE hereYU 

startAgain:
jmp startYU

hereYU:
CMP VALUE_CHAT,0
JE RECIVE

; set position to print
mov ah,2
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
mov dL,XS
mov dH,YS     
int 10h

; display the character
CMP VALUE_CHAT, 28              ; DONT PRINT ENTER 
JE dontPrintEnter
MOV AH,2
MOV DL,VALUE_CHAT
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H

; get cursor position
dontPrintEnter:
mov ah,3                             
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
int 10h
; update the new cursor
mov XS,DL
mov YS,DH

; put the VALUE_CHAT in Transmit data register
Transmit:
mov dx , 3F8H ; Transmit data register
mov al,VALUE_CHAT
out dx , al

; check if the user need to left the chat ?
CMP VALUE_CHAT,5
JE  endChat_2              ; here we will put the number of the main page
JMP dontEnd 

endChat_2:
JMP endProgramYU

dontEnd:
MOV VALUE_CHAT,0   
 

RECIVE:
;Check that Data Ready
mov dx , 3FDH ; Line Status Register
CHK: in al , dx
test al , 1
JZ Zero
JMP NOT_Zero 

Zero:
JMP SEND
;If Ready read the VALUE_CHAT in Receive data register
NOT_Zero:
mov dx , 03F8H
in al , dx
mov VALUE_CHAT,AL

cmp VALUE_CHAT, 28       ; check if the other user pressed enter or not --> to increment the YR
JE inc_YR
JNE cmp_again

inc_YR:
inc YR
mov XR,0

cmp_again:
CMP VALUE_CHAT,5         ; check if the other user left or not ?
JZ printLeftMsg  
JMP dont_inc

printLeftMsg:
MOV VALUE_CHAT,0

mov ah,2
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
mov dL,XR
mov dH,YR
int 10h  

mov ah, 9
MOV dx, offset outMessage
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
int 21h
inc YR
mov XR,0
JMP come_here

; set cursor to print
dont_inc:
mov ah,2
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
mov dL,XR
mov dH,YR
int 10h

; display char
MOV AH,2
MOV DL,VALUE_CHAT
;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H

; get cursor position
 mov ah,3               
 ;MOV BH,3  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
int 10h

; check if the screen need to be cleared
CMP DH,28
JE startAgain_2
JNE come_here

startAgain_2:
JMP startYU

come_here:
; re-new the cursor position
mov XR,DL
mov YR,DH

MOV VALUE_CHAT,0     ; ??

JMP LOOP1
endProgramYU:
           MOV PAGE_NUMBER,2
           RET
           
    CHAT_PAGE ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

F1_F2_F3_PAGES PROC FAR     ;;;;;;PAGE NUMBER 2
     
    MOV AH,0  
    MOV AL,12H 
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    MOV AH,0  
    MOV AL,12H                            
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    ;MOV AH,0  
    ;MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    ;MOV AL,12H
    ;INT 10H
    
    ;MOV AH,0  
    ;MOV BH,2          ;;;FIRST PAGE ==> PAGE 1
    ;MOV AL,12H
    ;INT 10H



mov dx,3fbh ; Line Control Register
mov al,10000000b ;Set Divisor Latch Access Bit
out dx,al

mov dx,3f8h
mov al,0ch
out dx,al


mov dx,3f9h
mov al,00h
out dx,al

mov dx,3fbh
mov al,00011011b                              
out dx,al

start:
    ;clear_screen
; print functionalities
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,10
    ;MOV AL,12H
    ;INT 10h
    
    mov cx,10
    
    newLines:
        MOV AH,9
        LEA DX,NEWLINE
        MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
        INT 21H
    loop newLines
    
    
    LEA DX,Msg1
    MOV AH,9 
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,10
    ;INT 10h


    MOV AH,9
    LEA DX,NEWLINE      
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
     
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,12
    ;MOV AL,12H
    ;INT 10h

    
    LEA DX,Msg2
    MOV AH,9                              
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,10
    ;INT 10h


    MOV AH,9
    LEA DX,NEWLINE                        
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,20
    ;MOV DH,14
    ;MOV AL,12H
    ;INT 10h
    
    LEA DX,Msg3
    MOV AH,9                            
    MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
           
    ;MOV AH,2
   ; MOV DL,20
   ; MOV DH,10
    ;INT 10h


    mov cx,10
    newLines_2:
        MOV AH,9
        LEA DX,NEWLINE 
        MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
        INT 21H
    loop newLines_2


; print the notification Bar  

;mov ah,2
;mov dl,0
;mov dh,20
;MOV AL,12H
;int 10h


mov ah,9 ;Display
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h

MOV AH,9
LEA DX,NEWLINE        
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H
        
;mov ah,2
;mov dl,0
;mov dh,23
;MOV AL,12H
;int 10h

 
;mov ah,2
;mov dx,0
;MOV AL,12H
;int 10h

ASDLOOP1:

 SENDQWE:
 
 ;Check that Transmitter Holding Register is Empty
 mov dx , 3FDH ; Line Status Register
AGAINWE: In al , dx ;Read Line Status
test al , 00100000b
JZ goTo_receive
JNZ complete_code

goTo_receive:
JMP RECIVEQWE
; get key pressed
complete_code:
MOV AH,1
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 16H
JZ goTo_receive

MOV AH,0      
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 16H
MOV VALUE22,AL

CMP AH,03BH           ; scan code of F1
JE  F1_pressed

CMP AH,03CH           ; scan code of F2
JE  F2_pressed


CMP AH,27           ; scan code of ESC
JE  ESC_pressed
JNE here



F1_pressed:
; check if has chat invitation
CMP has_invitation, 1
JE  chat_pageER                     
JNE resume

chat_pageER:
        MOV VALUE22,1      ; 1 means that chat invitation is accepted
        MOV PAGE_NUMBER,3   ;==>>>> MEANS CHAT PAGE
        MOV PLAYER,2   ;==>>>> GAME PAGE
        MOV MASTER,1
        JMP here

;JMP chat       ; just for testing, will be changed to --> JMP page_chat

resume:

mov VALUE22, 03BH       

;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,chat_invitation_sent
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H
    
inc notification_position      ; for the next notification
JMP here

F2_pressed:
; check if has game invitation
CMP has_invitation, 2
JE  game_page                     
JNE complete

game_page:
        MOV VALUE22, 2       ; 2 means that game invitation is accepted
        MOV PAGE_NUMBER,0   ;==>>>> GAME PAGE
        MOV PLAYER,2   ;==>>>> GAME PAGE
        MOV MASTER,1
        JMP here

complete:
mov VALUE22, 03CH       

;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,game_invitation_sent  
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H
    
inc notification_position      ; for the next notification
JMP here

ESC_pressed:
JMP endProgram


here:
CMP VALUE22,0
JE RECIVEQWE


; put the VALUE22 in Transmit data register

mov dx , 3F8H ; Transmit data register
mov al,VALUE22
out dx , al    

   
   
   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CMP VALUE22, 1                      ; check if the chat invitation is accepted
JE RET_LABEL                       

CMP VALUE22, 2                      ; check if the game invitation is accepted
JE RET_LABEL                       
JNE DONT_RETURN                    

RET_LABEL:      ;THE PLAYER WHO RECIEVA AN INVITATION ( HE ACCEPTS IT )

RET
;JMP start            

DONT_RETURN:
MOV VALUE22,0   
 

RECIVEQWE:
;Check that Data Ready
mov dx , 3FDH ; Line Status Register
CHKER: in al , dx
test al , 1
JZ goTo_send
JNZ complete_prog

goTo_send:
JMP SENDQWE


complete_prog:
;If Ready read the VALUE22 in Receive data register
mov dx , 03F8H
in al , dx
mov VALUE22,AL


; check if there is any invitation
CMP VALUE22,03BH            
JE  chat


CMP VALUE22,03CH           
JE  game

CMP VALUE22,1           ;   the other user accepted the chat invitation           
JE  chat_accepted
JNE complete_compare

chat_accepted:
MOV PAGE_NUMBER,3   ;==>>>> MEANS CHAT PAGE
MOV PLAYER,1
MOV MASTER,0

RET

complete_compare:
CMP VALUE22,2           ;   the other user accepted the game invitation           
JE  game_accepted
JNE jmpLoop1

game_accepted:
MOV PAGE_NUMBER,0   ;==>>>> PAGE NUMBER
MOV PLAYER,1
MOV MASTER,0


RET


jmpLoop1:
MOV VALUE22,0
jmp ASDLOOP1


chat:
mov has_invitation, 1
;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,chat_invitation_receive
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H
    
inc notification_position      ; for the next notification
MOV VALUE22,0
jmp ASDLOOP1

game:
mov has_invitation, 2
;Print Msg
;MOV AH,2
;MOV DL,0
;MOV DH,notification_position
;MOV AL,12H
;INT 10h

MOV AH,9
LEA DX,game_invitation_receive 
MOV BH,2  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
INT 21H
    
inc notification_position      ; for the next notification
MOV VALUE22,0
jmp ASDLOOP1

MOV VALUE22,0     ; ??


JMP ASDLOOP1    
    
   
endProgram:
            MOV PAGE_NUMBER,55  ; THE PLAYER WANTS TO END PROGRAM
            RET
    
F1_F2_F3_PAGES ENDP    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FORBIDDEN_CHAR_S_R PROC FAR
    
    MOV AH,0  
    MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    MOV AL,12H
    INT 10H      
          
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9   
    MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV AH,2
    MOV DL,10
    MOV DH,14
    MOV AL,12H                            
    MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    MOV DX,OFFSET FOBIDONE
    MOV AH,9                              
    MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
          
          
          CMP PLAYER,2
          JNE RECIVE_FORBIDENTY
          
          
          CALL RECIEVING_ASCII
          MOV AL,CARRY_ASCII
          MOV FORBIDDEN2,AL   
          
          MOV AH,0
          MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
          INT 16H
          MOV FORBIDDEN1,AL  
          MOV VAR,AL
          MOV AH,2
          MOV DL,AL   
          MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
          INT 21H
          
          CALL SENDING_DATA
          CALL RECIEVING_ASCII
          MOV AL,CARRY_ASCII
          MOV POINT1,AL
          MOV AL,POINT2
          MOV VAR,AL
          CALL SENDING_DATA
          
           
           
   ;     MOV SI,OFFSET INDATA3+2
   ;     MOV CL,INDATA3+1
   ;     MOV CH,0
   ;     SEND_INITIAL1IO:
   ;         ;Sending a value
   ;         ;Check that Transmitter Holding Register is Empty
   ;         mov dx , 3FDH ; Line Status Register
   ;         AGAIN0IO: In al , dx ;Read Line Status
   ;         test al , 00100000b
   ;         JZ AGAIN0IO ;Not empty
   ;         ;If empty put the VALUE in Transmit data register
   ;         mov dx , 3F8H ; Transmit data register
   ;         mov al,[SI]
   ;         out dx , al
   ;         INC SI
   ;         DEC CX
   ;         CMP CX,0
   ;         JNZ SEND_INITIAL1IO
   ;     
          
   ;     MOV CL,INDATA2+1
   ;     MOV CH,0
   ;     MOV SI,OFFSET INDATA2+2
   ;     RECIVING_DATA1IO:
            ;Receiving a value
            ;Check that Data is Ready
   ;         mov dx , 3FDH ; Line Status Register
   ;         CHK2IO: in al , dx
   ;         test al , 1
   ;         JZ CHK2IO ;Not Ready
           ;If Ready read the VALUE in Receive data register
   ;         mov dx , 03F8H
   ;         in al , dx
   ;         mov [SI] , al
   ;         INC SI
   ;         DEC CX
   ;         CMP CX,0
   ;         JNZ RECIVING_DATA1IO

          
         
          
          RET
          
          RECIVE_FORBIDENTY:
          
          CMP PLAYER,1
          JNE RECIVE_FORBIDEN1TY
          
          
         


          
          MOV AH,0
          MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
          INT 16H
          MOV FORBIDDEN2,AL  
          MOV VAR,AL
          MOV AH,2
          MOV DL,AL   
          MOV BH,8  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
          INT 21H
    
          CALL SENDING_DATA
          ;JMP END_RECIVE_FORBIDEN1
          CALL RECIEVING_ASCII
          ;RECIVE_FORBIDEN1:
          ;CALL RECIEVING_ASCII
          MOV AL,CARRY_ASCII
          
          MOV FORBIDDEN1,AL 
          MOV AL,POINT1
          MOV VAR,AL
          CALL SENDING_DATA
          CALL RECIEVING_ASCII
          MOV AL,CARRY_ASCII
          MOV POINT2,AL
          
         
           
   ;           MOV CL,INDATA3+1
   ;         MOV CH,0
   ;         MOV SI,OFFSET INDATA3+2
   ;         RECIVING_DATATY:
                ;Receiving a value
                ;Check that Data is Ready
   ;             mov dx , 3FDH ; Line Status Register
   ;             CHKATY: in al , dx
   ;             test al , 1
   ;             JZ CHKATY ;Not Ready
                ;If Ready read the VALUE in Receive data register
   ;             mov dx , 03F8H
   ;             in al , dx
   ;             mov [SI] , al
   ;             INC SI
   ;             DEC CX
   ;             CMP CX,0
   ;             JNZ RECIVING_DATATY
          
        
          
   ;       MOV SI , OFFSET INDATA2+2
   ;       MOV CL,INDATA2+1
   ;       MOV CH,0
          
   ;     SEND_INITIALTY:
            ;Sending a value
            ;Check that Transmitter Holding Register is Empty
   ;         mov dx , 3FDH ; Line Status Register
   ;         AGAINATY: In al , dx ;Read Line Status
   ;         test al , 00100000b
   ;         JZ AGAINATY ;Not empty
            ;If empty put the VALUE in Transmit data register
   ;         mov dx , 3F8H ; Transmit data register
   ;         mov al,[SI]
   ;         out dx , al
   ;         INC SI
   ;         DEC CX
   ;         CMP CX,0
   ;         JNZ SEND_INITIALTY

          
          RECIVE_FORBIDEN1TY:
                              RET

FORBIDDEN_CHAR_S_R ENDP          

FIRST_PAGE PROC FAR
                           ; ==>>>>> PAGE NUMBER 1  MOV BH,1
    
    MOV AH,0  
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    MOV AL,12H
    INT 10H
    
    MOV AH,0  
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    MOV AL,12H
    INT 10H

    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H  
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9           
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    FIRST_PAGE22:
            
    MOV AH,2
    MOV DL,10
    MOV DH,10
    MOV AL,12H
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
             
            
            MOV DX,OFFSET STRING11  
            MOV AH,9                     
            MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
            INT 21H
                   
            ;MOV DX,OFFSET INDATA2  
            ;MOV AH,0AH                            
            ;MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
            ;INT 21H 
            
            MOV SI,OFFSET NAMEE
            READ_NAMEEEE:
            MOV AH,0
            INT 16H
            CMP AH,28D
            JE LPLP
            MOV [SI],AL
            MOV AH,2
            MOV DL,AL
            INT 21H
            INC SIZEE
            INC SI
            JMP READ_NAMEEEE
            
            LPLP:
              MOV [SI],AH
            MOV DX,OFFSET NEWLINE
            MOV AH,9                              
            MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
            INT 21H
            MOV DL,40H
            MOV DH,60H
            NOOP:
                 INC DL
                 CMP DL,5BH
                 JZ POOP
                 CMP NAMEE,DL
                 JNE NOOP
                 JE CORRECT_NAME
                
            POOP:
                 INC DH
                 CMP DH,7BH
                 JZ HOOP
                 CMP NAMEE,DH
                 JNE POOP
            
            HOOP:
                 MOV AH,0  
                 MOV AL,12H
                 MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
                 INT 10H 
                 
                 MOV AH,0  
                 MOV AL,12H
                 MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
                 INT 10H 
                 JMP FIRST_PAGE22   
                   
    CORRECT_NAME:  ;HERE NAME IS CORRECT ==> SEND IT
    MOV DX,OFFSET NEWLINE
    MOV AH,9                        
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H  
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9  
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV AH,2
    MOV DL,10
    MOV DH,12
    MOV AL,12H                            
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
 
    
    MOV DX,OFFSET STRING2  
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
                   
    ;MOV DX,OFFSET POINT1   
    ;MOV AH,0AH
    ;INT 21H
    
    ;SUB POINT1,30H       ;;;;1DIGIT ONLY  ( UPDATE IT LATELLLLLLLLLLLLLLLY )
    
    ;;;;;;;;
    
    
    MOV AH,1H   
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    SUB AL,48D
    MOV AH,00H 
    MOV BL,10D
    MUL BL
    
    MOV POINT1,AL 
    
    MOV AH,1H 
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    SUB AL,48D
    MOV AH,00H 
    ADD POINT1,AL
    ;;;;;
    CMP PLAYER,1
    JE YUYU
    MOV AL,POINT1
    MOV POINT2,AL
    
    YUYU:
         
    
    
    ;;;;;;;;;;HERE SEND INTIAL POINTS
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9       
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
            
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H  
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    
    ;MOV AH,2
    ;MOV DL,10
    ;MOV DH,14
    ;MOV AL,12H                            
    ;MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    ;INT 10H
    
    ;MOV DX,OFFSET FOBIDONE
    ;MOV AH,9                              
    ;MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    ;INT 21H
    
    
    ;MOV AH,0H                             
    ;MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    ;INT 16H 
    
          ;CMP PLAYER,2
          ;JNE RECIVE_FORBIDENTY
          ;CALL RECIEVING_ASCII
          ;MOV AL,CARRY_ASCII
          ;MOV FORBIDDEN2,AL   
          
          ;MOV AH,0
          ;INT 16H
          ;MOV FORBIDDEN1,AL  
          ;MOV VAR,AL
          ;MOV AH,2
          ;MOV DL,AL   
          ;MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
          ;INT 21H
          
          ;CALL SENDING_DATA
          
          ;RECIVE_FORBIDENTY:
          
          ;CMP PLAYER,1
          ;JNE RECIVE_FORBIDEN1TY
          ;MOV AH,0
          ;INT 16H
          ;MOV FORBIDDEN2,AL  
          ;MOV VAR,AL
          ;MOV AH,2
          ;MOV DL,AL   
          ;MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
          ;INT 21H
    
          ;CALL SENDING_DATA
          ;JMP END_RECIVE_FORBIDEN1
          ;CALL RECIEVING_ASCII
          ;RECIVE_FORBIDEN1:
          ;CALL RECIEVING_ASCII
          ;MOV AL,CARRY_ASCII
          
          ;MOV FORBIDDEN1,AL   
          ;RECIVE_FORBIDEN1TY:
          
    
    ;MOV FORBIDDEN1 , AL ;;;; 
    
    
    MOV AH,2
    MOV DL,10
    MOV DH,16
    MOV AL,12H                            
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H

    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
     
    
    MOV DX,OFFSET STRING3  
    MOV AH,9                              
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    
    
    TILL_PRESS_ENTER:
    MOV AH,0                             
    MOV BH,1  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 16H
    CMP AL,0DH      ;;;;;;;;;;;;START PLAY ( 0D ASCII FOR ENTER KEY )
    JNE TILL_PRESS_ENTER 
    
    RET

FIRST_PAGE ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

WRITE_PLAYER_1_NAME  PROC FAR 

    MOV AH,2
    MOV DL,20
    MOV DH,10
    MOV AL,12H 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    MOV AH,9
    MOV DX, OFFSET PLAYER_1_NAME          
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H


WRITE_PLAYER_1_NAME  ENDP 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

WRITE_PLAYER_2_NAME  PROC FAR 


    MOV AH,2
    MOV DL,20
    MOV DH,23
    MOV AL,12H      
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    MOV AH,9
    MOV DX, OFFSET PLAYER_2_NAME          
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H
    

WRITE_PLAYER_2_NAME  ENDP 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


DRAW_LETTERS_1_MEMORY  PROC FAR 
;LOCAL AGAIN
    
    mov  dl, 1   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 48  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
    mov  dl, 4   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 49  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 7   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 50  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
    mov  dl, 10   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 51  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H     
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 13   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 52  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
    mov  dl, 16   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 53  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 19   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 54  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H     
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 22   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 55  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 25   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 56  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 28   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 57  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 31   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 35   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 38   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 41   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H  
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    

    mov  dl, 44   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 69  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
        
    mov  dl, 47   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 70  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H   
 RET
DRAW_LETTERS_1_MEMORY ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_LETTERS_2_MEMORY  PROC FAR
;LOCAL AGAIN
    
    mov  dl, 1   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 48  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
    mov  dl, 4   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 49  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 7   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 50  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
    mov  dl, 10   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 51  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H     
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 13   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 52  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
    mov  dl, 16   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 53  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 19   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 54  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H     
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 22   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 55  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 25   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 56  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 28   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 57  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 31   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 35   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 38   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov  dl, 41   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H  
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    

    mov  dl, 44   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 69  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
        
    mov  dl, 47   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 70  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H   
 
 RET
 
DRAW_LETTERS_2_MEMORY ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_MEMORY_1  PROC FAR
;LOCAL AGAIN

                                                                        
    MOV CX,5
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK1:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK1
         
    MOV CX,5
    MOV DX,32
    MOV AL,11
    MOV AH,0CH
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK3:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK3    

            
    MOV CX,5
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK5:
         INT 10H
         INC DX
         CMP DX,32
         JNZ BACK5
         JZ BACK6
    
    BACK6:
         ADD CX,22
         MOV DX,12
         CMP CX,71
         JNZ BACK5


    MOV CX,75
    MOV DX,12
    MOV AL,11
    MOV AH,0CH      
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK445:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK445


    MOV CX,98
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK446:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK446


    MOV CX,123
    MOV DX,12
    MOV AL,11
    MOV AH,0CH      
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK447:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK447



    MOV CX,146
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK448:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK448


    MOV CX,170
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK449:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK449


    MOV CX,195
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK450:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK450

    MOV CX,220
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK451:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK451

    MOV CX,242
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK452:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK452


    MOV CX,268
    MOV DX,12
    MOV AL,11
    MOV AH,0CH  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK453:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK453


    MOV CX,290
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK454:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK454


    MOV CX,315
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK455:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK455

    MOV CX,340
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK456:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK456


    MOV CX,362
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK457:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK457


    MOV CX,387
    MOV DX,12
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK458:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK458
 RET
 
DRAW_MEMORY_1 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_1_7AND8  PROC FAR
;LOCAL AGAIN

                                                                        
    MOV CX,470
    MOV DX,155
    MOV AL,11
    MOV AH,0CH  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK135:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK135  
    
    
    MOV CX,470
    MOV DX,173
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK136:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK136     
       
    
    MOV CX,560
    MOV DX,155
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK137:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK137    
    
    MOV CX,560
    MOV DX,173
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK138:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK138  
         
          
         
    MOV CX,470
    MOV DX,155
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK139:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK139          
         
    MOV CX,520
    MOV DX,155
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK140:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK140 

    MOV CX,560
    MOV DX,155
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK141:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK141 
    
    
    
    MOV CX,610
    MOV DX,155
    MOV AL,11
    MOV AH,0CH 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK142:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK142 
  RET  

DRAW_REGISTERS_1_7AND8 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_1_5AND6  PROC FAR
;LOCAL AGAIN

                                                                        
    MOV CX,470
    MOV DX,107
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK35:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK35  
    
    
    MOV CX,470
    MOV DX,125
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK36:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK36     
       
    
    MOV CX,560
    MOV DX,107
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK37:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK37    
    
    MOV CX,560
    MOV DX,125
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK38:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK38  
         
          
         
    MOV CX,470
    MOV DX,107
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK39:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK39          
         
    MOV CX,520
    MOV DX,107
    MOV AL,11
    MOV AH,0CH     
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK40:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK40 

    MOV CX,560
    MOV DX,107
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK41:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK41 
    
    
    
    MOV CX,610
    MOV DX,107
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK42:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK42 
    
   RET
 
DRAW_REGISTERS_1_5AND6 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_1_3AND4  PROC FAR

                                                                        
    
    
    MOV CX,470
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK25:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK25  
    
    
    MOV CX,470
    MOV DX,77
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK26:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK26    
    
    MOV CX,560
    MOV DX,57
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK27:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK27  
    
    
    MOV CX,560
    MOV DX,77
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK28:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK28
         
          
         
         
    MOV CX,470
    MOV DX,57
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK30:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK30 

    MOV CX,520
    MOV DX,57
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK31:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK31 
    
    
    
         
    MOV CX,560
    MOV DX,57
    MOV AL,11
    MOV AH,0CH  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK33:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK33 

    MOV CX,610
    MOV DX,57
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK34:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK34
    
 RET
 
DRAW_REGISTERS_1_3AND4 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_1_1AND2  PROC FAR

    
    MOV CX,470
    MOV DX,10
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK13:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK13  
    
    
    MOV CX,470
    MOV DX,30
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK14:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK14    
    
    MOV CX,560
    MOV DX,10
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK15:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK15  
    
    
    MOV CX,560
    MOV DX,30
    MOV AL,11
    MOV AH,0CH 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK16:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK16
         
          
         
         
    MOV CX,470
    MOV DX,10
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK18:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK18 

    MOV CX,520
    MOV DX,10
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK19:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK19 
    
             
    MOV CX,560
    MOV DX,10
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK21:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK21 

    MOV CX,610
    MOV DX,10
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK22:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK22
 RET
    

DRAW_REGISTERS_1_1AND2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_2_7AND8  PROC FAR
 
                                                                        
    MOV CX,470
    MOV DX,363
    MOV AL,11
    MOV AH,0CH 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA135:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA135  
    
    
    MOV CX,470
    MOV DX,383
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA136:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA136     
       
    
    MOV CX,560
    MOV DX,363
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA137:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA137    
    
    MOV CX,560
    MOV DX,383
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA138:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA138  
         
          
         
    MOV CX,470
    MOV DX,363
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA139:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA139          
         
    MOV CX,520
    MOV DX,363
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA140:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA140 

    MOV CX,560
    MOV DX,363
    MOV AL,11
    MOV AH,0CH   
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA141:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA141 
    
    
    
    MOV CX,610
    MOV DX,363
    MOV AL,11
    MOV AH,0CH             
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA142:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA142 
    
 RET
 
DRAW_REGISTERS_2_7AND8 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_2_5AND6  PROC FAR

                                                                        
    MOV CX,470
    MOV DX,314
    MOV AL,11
    MOV AH,0CH                           
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA35:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA35  
    
    
    MOV CX,470
    MOV DX,334
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA36:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA36     
       
    
    MOV CX,560
    MOV DX,314
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA37:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA37    
    
    MOV CX,560
    MOV DX,334
    MOV AL,11
    MOV AH,0CH   
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA38:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA38  
         
          
         
    MOV CX,470
    MOV DX,314
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA39:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA39          
         
    MOV CX,520
    MOV DX,314
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA40:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA40 

    MOV CX,560
    MOV DX,314
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA41:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA41 
    
    
    
    MOV CX,610
    MOV DX,314
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA42:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA42 
    
 RET
 
DRAW_REGISTERS_2_5AND6 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_2_3AND4  PROC FAR

                                                                        
    
    
    MOV CX,470
    MOV DX,265
    MOV AL,11
    MOV AH,0CH   
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA25:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA25  
    
    
    MOV CX,470
    MOV DX,285
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA26:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA26    
    
    MOV CX,560
    MOV DX,265
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA27:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA27  
    
    
    MOV CX,560
    MOV DX,285
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA28:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA28
         
          
         
         
    MOV CX,470
    MOV DX,265
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA30:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA30 

    MOV CX,520
    MOV DX,265
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA31:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA31 
    
    
    
         
    MOV CX,560
    MOV DX,265
    MOV AL,11
    MOV AH,0CH 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA33:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA33 

    MOV CX,610
    MOV DX,265
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA34:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA34
    
 RET
 
DRAW_REGISTERS_2_3AND4 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_2_1AND2  PROC FAR

    
    MOV CX,470
    MOV DX,218
    MOV AL,11
    MOV AH,0CH                  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA13:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA13  
    
    
    MOV CX,470
    MOV DX,238
    MOV AL,11
    MOV AH,0CH          
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA14:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA14    
    
    MOV CX,560
    MOV DX,218
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA15:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA15  
    
    
    MOV CX,560
    MOV DX,238
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA16:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA16
         
          
         
         
    MOV CX,470
    MOV DX,218
    MOV AL,11
    MOV AH,0CH  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA18:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA18 

    MOV CX,520
    MOV DX,218
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA19:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA19 
    
             
    MOV CX,560
    MOV DX,218
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA21:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA21 

    MOV CX,610
    MOV DX,218
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACKA22:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA22
    
 RET
 
DRAW_REGISTERS_2_1AND2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_MEMORY_2  PROC FAR
                                                                        
    MOV CX,5
    MOV DX,220
    MOV AL,11
    MOV AH,0CH       
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK111:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK111
         
    MOV CX,5
    MOV DX,240
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK311:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK311    

            
    MOV CX,5
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK511:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK511
         JZ BACK611
    
    BACK611:
         ADD CX,22
         MOV DX,220
         CMP CX,71
         JNZ BACK511

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    MOV CX,75
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK545:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK545


    MOV CX,98
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK546:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK546


    MOV CX,123
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK547:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK547



    MOV CX,146
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK548:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK548


    MOV CX,170
    MOV DX,220
    MOV AL,11
    MOV AH,0CH  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK549:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK549


    MOV CX,195
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK550:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK550

    MOV CX,220
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK551:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK551

    MOV CX,242
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK552:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK552


    MOV CX,268
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK553:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK553


    MOV CX,290
    MOV DX,220
    MOV AL,11
    MOV AH,0CH  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK554:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK554


    MOV CX,315
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK555:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK555

    MOV CX,340
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK556:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK556


    MOV CX,362
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK557:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK557


    MOV CX,387
    MOV DX,220
    MOV AL,11
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK558:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK558


 RET
 
DRAW_MEMORY_2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_NAMES_1  PROC FAR

  
    mov  dl, 60   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
       

    mov  dl, 72   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    
    mov  dl, 73   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
    mov  dl, 60   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H


    mov  dl, 72   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H


    mov  dl, 60   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
       

    mov  dl, 72   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
     
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

    mov  dl, 60   ;Column
    mov  dh, 11   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 11   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H


    mov  dl, 72   ;Column
    mov  dh, 11   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 11   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

 RET
    
DRAW_REGISTERS_NAMES_1 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_REGISTERS_NAMES_2  PROC FAR



    mov  dl, 60   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     

    mov  dl, 72   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 15   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov  dl, 60   ;Column
    mov  dh, 18   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 18   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     

    mov  dl, 72   ;Column
    mov  dh, 18   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 18   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov  dl, 60   ;Column
    mov  dh, 21   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 21   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     

    mov  dl, 72   ;Column
    mov  dh, 21   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 21   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov  dl, 60   ;Column
    mov  dh, 24   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 24   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     

    mov  dl, 72   ;Column
    mov  dh, 24   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 24   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 RET
    
DRAW_REGISTERS_NAMES_2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
DRAW_SQUARES  PROC FAR

     ;;;;;;;@@@@@@@@@@@@@@@  FIX PAGE NUMBER IN THIS PROC
     mov al,1  ;color
     mov ah,0ch

     mov cx,50    ; start position
     mov dx,70    ; start position
     MOV BH, 0 ;@@@@@@PAGE
     loop111:      ; outer loop to draw the lines
     int 10h
     mov BP,cx   ; store the start position to return to it after drawing the line

     MOV BH, 0 ;@@@@@@PAGE
     loop2:      ; inner loop to draw the pixels of each line
     inc cx
     int 10h

     mov si,50 ; si = start positon + length
     add si,25

     cmp cx,si   ; loop until the last pixel of the line  
     JNE loop2

     mov cx,BP   ; assign the start of the next line to cx
     inc dx      ; increment the y_position

     mov si,70 ; si = start positon + length
     add si,25

     cmp dx,si   ; loop until the last line of the square
     JLE  loop111   ; less or equal to draw the last line


;print the load
    mov  dl, 7   ;Column
    mov  dh, 5   ;Row
    MOV BH, 0 ;@@@@@@PAGE
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;@@@@@@PAGE
    MOV Al, 52  ;Color is red
    MOV CX,1
    MOV BL,0F9H
    INT 10H


     mov al,2  ;color
     mov ah,0ch

     mov cx,90    ; start position
     mov dx,70    ; start position
     MOV BH, 0 ;@@@@@@PAGE
     loop1_2:      ; outer loop to draw the lines
     int 10h
     mov BP,cx   ; store the start position to return to it after drawing the line

     MOV BH, 0 ;@@@@@@PAGE
     loop2_2:      ; inner loop to draw the pixels of each line
     inc cx
     int 10h

     mov si,90 ; si = start positon + length
     add si,25

     cmp cx,si   ; loop until the last pixel of the line  
     JNE loop2_2

     mov cx,BP   ; assign the start of the next line to cx
     inc dx      ; increment the y_position

     mov si,70 ; si = start positon + length
     add si,25

     cmp dx,si   ; loop until the last line of the square
     JLE  loop1_2   ; less or equal to draw the last line


;print the load
    mov  dl, 12   ;Column
    mov  dh, 5   ;Row
    MOV BH, 0 ;@@@@@@PAGE
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;@@@@@@PAGE
    MOV Al, 57  ;Color is red
    MOV CX,1
    MOV BL,0F5H
    INT 10H

     mov al,3  ;color
     mov ah,0ch

     mov cx,130    ; start position
     mov dx,70    ; start position
     MOV BH, 0 ;@@@@@@PAGE
     loop1_3:      ; outer loop to draw the lines
     int 10h
     mov BP,cx   ; store the start position to return to it after drawing the line

     MOV BH, 0 ;@@@@@@PAGE
     loop2_3:      ; inner loop to draw the pixels of each line
     inc cx
     int 10h

     mov si,130 ; si = start positon + length
     add si,25

     cmp cx,si   ; loop until the last pixel of the line  
     JNE loop2_3

     mov cx,BP   ; assign the start of the next line to cx
     inc dx      ; increment the y_position

     mov si,70 ; si = start positon + length
     add si,25

     cmp dx,si   ; loop until the last line of the square
     JLE  loop1_3   ; less or equal to draw the last line


;print the load
    mov  dl, 17   ;Column
    mov  dh, 5   ;Row
    MOV BH, 0 ;@@@@@@PAGE
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;@@@@@@PAGE
    MOV Al, 50  ;Color is red
    MOV CX,1
    MOV BL,0CAH
    INT 10H


     mov al,4  ;color
     mov ah,0ch

     mov cx,170    ; start position
     mov dx,70    ; start position
     MOV BH, 0 ;@@@@@@PAGE
     loop1_4:      ; outer loop to draw the lines
     int 10h
     mov BP,cx   ; store the start position to return to it after drawing the line

     MOV BH, 0 ;@@@@@@PAGE
     loop2_4:      ; inner loop to draw the pixels of each line
     inc cx
     int 10h

     mov si,170 ; si = start positon + length
     add si,25

     cmp cx,si   ; loop until the last pixel of the line  
     JNE loop2_4

     mov cx,BP   ; assign the start of the next line to cx
     inc dx      ; increment the y_position

     mov si,70 ; si = start positon + length
     add si,25

     cmp dx,si   ; loop until the last line of the square
     JLE  loop1_4   ; less or equal to draw the last line


;print the load
    mov  dl, 22   ;Column
    mov  dh, 5   ;Row
    MOV BH, 0 ;@@@@@@PAGE
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;@@@@@@PAGE
    MOV Al, 56  ;Color is red
    MOV CX,1
    MOV BL,0F8H
    INT 10H

     mov al,5  ;color
     mov ah,0ch

     mov cx,210    ; start position
     mov dx,70    ; start position
     MOV BH, 0 ;@@@@@@PAGE
     loop1_5:      ; outer loop to draw the lines
     int 10h
     mov BP,cx   ; store the start position to return to it after drawing the line


     loop2_5:      ; inner loop to draw the pixels of each line
     inc cx
     int 10h

     mov si,210 ; si = start positon + length
     add si,25

     cmp cx,si   ; loop until the last pixel of the line  
     JNE loop2_5

     mov cx,BP   ; assign the start of the next line to cx
     inc dx      ; increment the y_position

     mov si,70 ; si = start positon + length
     add si,25

     cmp dx,si   ; loop until the last line of the square
     JLE  loop1_5   ; less or equal to draw the last line


;print the load

    mov  dl, 27   ;Column
    mov  dh, 5   ;Row
    MOV BH, 0 ;@@@@@@PAGE
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;@@@@@@PAGE
    MOV Al, 51  ;Color is red
    MOV CX,1
    MOV BL,0F8H
    INT 10H
 RET
 

DRAW_SQUARES ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES  PROC FAR

    MOV CX,1
    MOV DX,200
    MOV AL,15
    MOV AH,0CH
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK75:
         INT 10H
         INC CX
         CMP CX,630
         JNZ BACK75     
         


    MOV CX,1
    MOV DX,410
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK76Q:
         INT 10H
         INC CX
         CMP CX,630
         JNZ BACK76Q          
 RET
 
DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES  ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FIRST_PLAYER_COMMAND  PROC FAR

    MOV CX,50
    MOV DX,150
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK77:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK77     
         


    MOV CX,50
    MOV DX,185
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK78:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK78
         
         
         
    MOV CX,50
    MOV DX,150
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK79:
         INT 10H
         INC DX
         CMP DX,185
         JNZ BACK79         
         
         
    MOV CX,240
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK80:
         INT 10H
         INC DX
         CMP DX,185
         JNZ BACK80         
                   
 RET
 
FIRST_PLAYER_COMMAND  ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SECOND_PLAYER_COMMAND  PROC FAR

    MOV CX,50
    MOV DX,360
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK81:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK81     
         


    MOV CX,50
    MOV DX,395
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK82:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK82
         
         
         
    MOV CX,50
    MOV DX,360
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK83:
         INT 10H
         INC DX
         CMP DX,395
         JNZ BACK83         
         
         
    MOV CX,240
    MOV DX,360
    MOV AL,15
    MOV AH,0CH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    BACK84:
         INT 10H
         INC DX
         CMP DX,395
         JNZ BACK84         
                   
 RET
 
SECOND_PLAYER_COMMAND  ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

TAKE_COMMAND_PLAYER_1  PROC FAR

    MOV AH,2
    MOV DL,10
    MOV DH,10
    MOV AL,12H 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    
    MOV DX,OFFSET INDATA  
    MOV AH,0AH             
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H 
    
    
 RET
    
TAKE_COMMAND_PLAYER_1  ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


TAKE_COMMAND_PLAYER_2  PROC FAR

    MOV AH,2
    MOV DL,10
    MOV DH,23
    MOV AL,12H                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
    
    
    MOV DX,OFFSET INDATA  
    MOV AH,0AH                            
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 21H 
    
 RET
    
    
TAKE_COMMAND_PLAYER_2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_NUMBERS_IN_MEMORY_PLAYER_1  PROC FAR

     MOV CL,16

     MOV X_1_CHAR,1
     MOV Y_1_CHAR,1

     MOV X_2_CHAR,2
     MOV Y_2_CHAR,1

     MOV AL,BYTE PTR MEMORY[0]
     MOV AH,0
     MOV SI,1
     MOMOYU:
          ;;;;;;;;;;;;;;;;;;;;

     mov bl,10H
     div bl
     mov dl,al
     push ax
     add dl,30h
     CMP DL,57D
     JBE NOTLETTERQQWYU
     LETTERQQWYU:
              ADD DL,7D
     
     NOTLETTERQQWYU:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     POP DX
     mov ah,02h                           
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h

     pop ax
     mov dl,ah
     add dl,30h
     CMP BX,57D
     JBE NOTLETTERQQW1YU
     LETTERQQW1YU:
              ADD BX,7D
     
     NOTLETTERQQW1YU:
     
     PUSH DX

     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H   
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     POP DX
     mov ah,02h                            
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h
          
          ;;;;;;;;;;;;;;;;;;;
          ADD X_1_CHAR,3
          ADD X_2_CHAR,3
          MOV AL,BYTE PTR MEMORY[SI]
          MOV AH,0
          INC SI
          DEC CL
          JNZ MOMOYU
          
 RET
 
DRAW_NUMBERS_IN_MEMORY_PLAYER_1 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_NUMBERS_IN_MEMORY_PLAYER_2  PROC FAR

     MOV CL,16

     MOV X_1_CHAR,1
     MOV Y_1_CHAR,14

     MOV X_2_CHAR,2
     MOV Y_2_CHAR,14

     MOV AL,BYTE PTR MEMORY2[0]
     MOV AH,0
     MOV SI,1
     MOMO22:
          ;;;;;;;;;;;;;;;;;;;;

     mov bl,10H
     div bl
     mov dl,al
     push ax
     add dl,30h
     CMP DL,57D
     JBE NOTLETTERQQW3
     LETTERQQW3:
              ADD DL,7D
     
     NOTLETTERQQW3:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H 
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     POP DX
     mov ah,02h                            
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h

     pop ax
     mov dl,ah
     add dl,30h
     CMP DL,57D
     JBE NOTLETTERQQW4
     LETTERQQW4:
              ADD DL,7D
     
     NOTLETTERQQW4:
     
     PUSH DX

     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H                    
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     POP DX
     mov ah,02h                            
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     int 21h
          
          ;;;;;;;;;;;;;;;;;;;
          ADD X_1_CHAR,3
          ADD X_2_CHAR,3
          MOV AL,BYTE PTR MEMORY2[SI]
          MOV AH,0
          INC SI
          DEC CL
          JNZ MOMO22
 
 RET
          
DRAW_NUMBERS_IN_MEMORY_PLAYER_2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW1_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1  PROC FAR


     MOV CX,4
     MOV X_1_CHAR,60
     MOV Y_1_CHAR,1

     MOV X_2_CHAR,61
     MOV Y_2_CHAR,1

     MOV X_3_CHAR,62
     MOV Y_3_CHAR,1

     MOV X_4_CHAR,63
     MOV Y_4_CHAR,1

     MOV SI,OFFSET AX_REG 
     MOV DX,0000
     MOV AX,[SI]


     PRINT1:
          ;;;;;;;;;;;;;;;;;;;;

     mov bX,1000H
     div bX
     mov BX,aX
     add BX,30h
     
     CMP BX,57D
     JBE NOTLETTERQQAS
     LETTERQQAS:
              ADD BX,7D
     
     NOTLETTERQQAS:
          
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H
     INT 10H

     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3   
     int 21h
     POP DX


     MOV AX,DX
     MOV DX,0000

     mov bX,100H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ
     LETTERQQ:
              ADD BX,7D
     
     NOTLETTERQQ:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H 
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
     POP DX


     MOV AX,DX
     MOV DX,0000

     mov bX,10H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ2
     LETTERQQ2:
              ADD BX,7D
     
     NOTLETTERQQ2:

     PUSH DX
     MOV AH,2
     MOV DL,X_3_CHAR
     MOV DH,Y_3_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3 
     int 21h
     POP DX


     mov BX,DX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ3
     LETTERQQ3:
              ADD BX,7D
     
     NOTLETTERQQ3:
     
     MOV AH,2
     MOV DL,X_4_CHAR
     MOV DH,Y_4_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3  
     int 21h
          
          ;;;;;;;;;;;;;;;;;;;
          ADD Y_1_CHAR,3
          ADD Y_2_CHAR,3
          ADD Y_3_CHAR,3
          ADD Y_4_CHAR,3
          
          INC SI
          INC SI
          MOV DX,0000
          MOV AX,[SI]
          DEC CX
          JZ STOP1
          JMP PRINT1
          
     STOP1:
            RET
 
DRAW1_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW1_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1  PROC FAR

     MOV CX,4
     MOV X_1_CHAR,71
     MOV Y_1_CHAR,1

     MOV X_2_CHAR,72
     MOV Y_2_CHAR,1

     MOV X_3_CHAR,73
     MOV Y_3_CHAR,1

     MOV X_4_CHAR,74
     MOV Y_4_CHAR,1

     MOV SI,OFFSET SI_REG 
     MOV DX,0000
     MOV AX,[SI]


     PRINT:
          ;;;;;;;;;;;;;;;;;;;;

     mov bX,1000H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ4
     LETTERQQ4:
              ADD BX,7D
     
     NOTLETTERQQ4:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     
     int 21h
     POP DX


     MOV AX,DX
     MOV DX,0000

     mov bX,100H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ5
     LETTERQQ5:
              ADD BX,7D
     
     NOTLETTERQQ5:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H                 
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
     POP DX


     MOV AX,DX
     MOV DX,0000

     mov bX,10H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ6
     LETTERQQ6:
               ADD BX,7D
     
     NOTLETTERQQ6:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_3_CHAR
     MOV DH,Y_3_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
     POP DX


     mov BX,DX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ7
     LETTERQQ7:
              ADD BX,7D
     
     NOTLETTERQQ7:

     MOV AH,2
     MOV DL,X_4_CHAR
     MOV DH,Y_4_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
          
          ;;;;;;;;;;;;;;;;;;;
          ADD Y_1_CHAR,3
          ADD Y_2_CHAR,3
          ADD Y_3_CHAR,3
          ADD Y_4_CHAR,3
          
          INC SI
          INC SI
          MOV DX,0000
          MOV AX,[SI]
          DEC CX
          JZ STOP2
          JMP PRINT
          
     STOP2:
            RET
 
DRAW1_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1  ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW2_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2   PROC FAR

     MOV CX,4
     MOV X_1_CHAR,60
     MOV Y_1_CHAR,14

     MOV X_2_CHAR,61
     MOV Y_2_CHAR,14

     MOV X_3_CHAR,62
     MOV Y_3_CHAR,14

     MOV X_4_CHAR,63
     MOV Y_4_CHAR,14

     MOV SI,OFFSET AX_REG2 
     MOV DX,0000
     MOV AX,[SI]


     PRINT3: 
          ;;;;;;;;;;;;;;;;;;;;

     mov bX,1000H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ8
     LETTERQQ8:
              ADD BX,7D
     
     NOTLETTERQQ8:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_1_CHAR
     MOV DH,Y_1_CHAR
     MOV AL,12H  
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
     POP DX


     MOV AX,DX
     MOV DX,0000

     mov bX,100H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ9
     LETTERQQ9:
              ADD BX,7D
     
     NOTLETTERQQ9:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_2_CHAR
     MOV DH,Y_2_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
     POP DX


     MOV AX,DX
     MOV DX,0000

     mov bX,10H
     div bX
     mov BX,aX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ10
     LETTERQQ10:
              ADD BX,7D
     
     NOTLETTERQQ10:
     
     PUSH DX
     MOV AH,2
     MOV DL,X_3_CHAR
     MOV DH,Y_3_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H
     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
     POP DX


     mov BX,DX
     add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ11
     LETTERQQ11:
              ADD BX,7D
     
     NOTLETTERQQ11:

     MOV AH,2
     MOV DL,X_4_CHAR
     MOV DH,Y_4_CHAR
     MOV AL,12H
     MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
     INT 10H

     MOV DX,BX
     mov ah,02h
     MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
     int 21h
          
          ;;;;;;;;;;;;;;;;;;;
          ADD Y_1_CHAR,3
          ADD Y_2_CHAR,3
          ADD Y_3_CHAR,3
          ADD Y_4_CHAR,3
          
          INC SI
          INC SI
          MOV DX,0000
          MOV AX,[SI]
          DEC CX
          JZ STOPASD
          JMP PRINT3
          
     STOPASD:
              RET
 
DRAW2_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2 ENDP 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW2_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2  PROC FAR 
;LOCAL AGAIN

MOV CX,4
MOV X_1_CHAR,71
MOV Y_1_CHAR,14

MOV X_2_CHAR,72
MOV Y_2_CHAR,14

MOV X_3_CHAR,73
MOV Y_3_CHAR,14

MOV X_4_CHAR,74
MOV Y_4_CHAR,14

MOV SI,OFFSET SI_REG2 
MOV DX,0000
MOV AX,[SI]


QWE:
     ;;;;;;;;;;;;;;;;;;;;

mov bX,1000H
div bX
mov BX,aX
add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ12
     LETTERQQ12:
              ADD BX,7D
     
     NOTLETTERQQ12:

PUSH DX
    MOV AH,2
    MOV DL,X_1_CHAR
    MOV DH,Y_1_CHAR
    MOV AL,12H  
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H

MOV DX,BX
mov ah,02h
MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
int 21h
POP DX


MOV AX,DX
MOV DX,0000

mov bX,100H
div bX
mov BX,aX
add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ13
     LETTERQQ13:
              ADD BX,7D
     
     NOTLETTERQQ13:

PUSH DX
    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H
MOV DX,BX
mov ah,02h
MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
int 21h
POP DX

MOV AX,DX
MOV DX,0000

mov bX,10H
div bX
mov BX,aX
add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ14
     LETTERQQ14:
              ADD BX,7D
     
     NOTLETTERQQ14:

PUSH DX
    MOV AH,2
    MOV DL,X_3_CHAR
    MOV DH,Y_3_CHAR
    MOV AL,12H 
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H

MOV DX,BX
mov ah,02h
MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
int 21h
POP DX


mov BX,DX
add BX,30h
     CMP BX,57D
     JBE NOTLETTERQQ15
     LETTERQQ15:
              ADD BX,7D
     
     NOTLETTERQQ15:

    MOV AH,2
    MOV DL,X_4_CHAR
    MOV DH,Y_4_CHAR
    MOV AL,12H
    MOV BH,0  ;@@@@@@@@@@@@@@@@@@@PAGGGEEE
    INT 10H

MOV DX,BX
mov ah,02h
MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
int 21h
     
     ;;;;;;;;;;;;;;;;;;;
     ADD Y_1_CHAR,3
     ADD Y_2_CHAR,3
     ADD Y_3_CHAR,3
     ADD Y_4_CHAR,3
     
     INC SI
     INC SI
     MOV DX,0000
     MOV AX,[SI]
     DEC CX
     JZ STOPQ
     JMP QWE
        
   STOPQ:
         RET
  
DRAW2_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

END
 