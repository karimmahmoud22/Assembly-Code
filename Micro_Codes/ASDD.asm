PUBLIC shifting_x , shifting_Y 

DRAW_LETTERS_1_MEMORY MACRO
LOCAL AGAIN
    
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

ENDM DRAW_LETTERS_1_MEMORY



DRAW_LETTERS_2_MEMORY MACRO
LOCAL AGAIN
    
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
 
ENDM DRAW_LETTERS_2_MEMORY


DRAW_MEMORY_1 MACRO
LOCAL AGAIN

                                                                        
    MOV CX,5
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK1:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK1
         
    MOV CX,5
    MOV DX,32
    MOV AL,11
    MOV AH,0CH
    BACK3:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK3    

            
    MOV CX,5
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    MOV CX,75
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK445:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK445


    MOV CX,98
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK446:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK446


    MOV CX,123
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK447:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK447



    MOV CX,146
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK448:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK448


    MOV CX,170
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK449:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK449


    MOV CX,195
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK450:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK450

    MOV CX,220
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK451:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK451

    MOV CX,242
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK452:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK452


    MOV CX,268
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK453:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK453


    MOV CX,290
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK454:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK454


    MOV CX,315
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK455:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK455

    MOV CX,340
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK456:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK456


    MOV CX,362
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK457:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK457


    MOV CX,387
    MOV DX,12
    MOV AL,11
    MOV AH,0CH
    BACK458:
         INT 10H
         INC DX
         CMP DX,33
         JNZ BACK458

ENDM DRAW_MEMORY_1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


DRAW_REGISTERS_1_7AND8 MACRO
LOCAL AGAIN

                                                                        
    MOV CX,470
    MOV DX,155
    MOV AL,11
    MOV AH,0CH
    BACK135:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK135  
    
    
    MOV CX,470
    MOV DX,173
    MOV AL,11
    MOV AH,0CH
    BACK136:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK136     
       
    
    MOV CX,560
    MOV DX,155
    MOV AL,11
    MOV AH,0CH
    BACK137:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK137    
    
    MOV CX,560
    MOV DX,173
    MOV AL,11
    MOV AH,0CH
    BACK138:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK138  
         
          
         
    MOV CX,470
    MOV DX,155
    MOV AL,11
    MOV AH,0CH
    BACK139:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK139          
         
    MOV CX,520
    MOV DX,155
    MOV AL,11
    MOV AH,0CH
    BACK140:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK140 

    MOV CX,560
    MOV DX,155
    MOV AL,11
    MOV AH,0CH
    BACK141:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK141 
    
    
    
    MOV CX,610
    MOV DX,155
    MOV AL,11
    MOV AH,0CH
    BACK142:
         INT 10H
         INC DX
         CMP DX,173
         JNZ BACK142 
    

ENDM DRAW_REGISTERS_1_7AND8



DRAW_REGISTERS_1_5AND6 MACRO
LOCAL AGAIN

                                                                        
    MOV CX,470
    MOV DX,107
    MOV AL,11
    MOV AH,0CH
    BACK35:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK35  
    
    
    MOV CX,470
    MOV DX,125
    MOV AL,11
    MOV AH,0CH
    BACK36:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK36     
       
    
    MOV CX,560
    MOV DX,107
    MOV AL,11
    MOV AH,0CH
    BACK37:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK37    
    
    MOV CX,560
    MOV DX,125
    MOV AL,11
    MOV AH,0CH
    BACK38:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK38  
         
          
         
    MOV CX,470
    MOV DX,107
    MOV AL,11
    MOV AH,0CH
    BACK39:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK39          
         
    MOV CX,520
    MOV DX,107
    MOV AL,11
    MOV AH,0CH
    BACK40:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK40 

    MOV CX,560
    MOV DX,107
    MOV AL,11
    MOV AH,0CH
    BACK41:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK41 
    
    
    
    MOV CX,610
    MOV DX,107
    MOV AL,11
    MOV AH,0CH
    BACK42:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK42 
    

ENDM DRAW_REGISTERS_1_5AND6



DRAW_REGISTERS_1_3AND4 MACRO
LOCAL AGAIN

                                                                        
    
    
    MOV CX,470
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    BACK25:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK25  
    
    
    MOV CX,470
    MOV DX,77
    MOV AL,11
    MOV AH,0CH
    BACK26:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK26    
    
    MOV CX,560
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    BACK27:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK27  
    
    
    MOV CX,560
    MOV DX,77
    MOV AL,11
    MOV AH,0CH
    BACK28:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK28
         
          
         
         
    MOV CX,470
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    BACK30:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK30 

    MOV CX,520
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    BACK31:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK31 
    
    
    
         
    MOV CX,560
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    BACK33:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK33 

    MOV CX,610
    MOV DX,57
    MOV AL,11
    MOV AH,0CH
    BACK34:
         INT 10H
         INC DX
         CMP DX,77
         JNZ BACK34
    

ENDM DRAW_REGISTERS_1_3AND4



DRAW_REGISTERS_1_1AND2 MACRO
LOCAL AGAIN

    
    MOV CX,470
    MOV DX,10
    MOV AL,11
    MOV AH,0CH
    BACK13:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK13  
    
    
    MOV CX,470
    MOV DX,30
    MOV AL,11
    MOV AH,0CH
    BACK14:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACK14    
    
    MOV CX,560
    MOV DX,10
    MOV AL,11
    MOV AH,0CH
    BACK15:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK15  
    
    
    MOV CX,560
    MOV DX,30
    MOV AL,11
    MOV AH,0CH
    BACK16:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACK16
         
          
         
         
    MOV CX,470
    MOV DX,10
    MOV AL,11
    MOV AH,0CH
    BACK18:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK18 

    MOV CX,520
    MOV DX,10
    MOV AL,11
    MOV AH,0CH
    BACK19:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK19 
    
             
    MOV CX,560
    MOV DX,10
    MOV AL,11
    MOV AH,0CH
    BACK21:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK21 

    MOV CX,610
    MOV DX,10
    MOV AL,11
    MOV AH,0CH
    BACK22:
         INT 10H
         INC DX
         CMP DX,30
         JNZ BACK22
    

ENDM DRAW_REGISTERS_1_1AND2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_REGISTERS_2_7AND8 MACRO
LOCAL AGAIN

                                                                        
    MOV CX,470
    MOV DX,363
    MOV AL,11
    MOV AH,0CH
    BACKA135:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA135  
    
    
    MOV CX,470
    MOV DX,383
    MOV AL,11
    MOV AH,0CH
    BACKA136:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA136     
       
    
    MOV CX,560
    MOV DX,363
    MOV AL,11
    MOV AH,0CH
    BACKA137:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA137    
    
    MOV CX,560
    MOV DX,383
    MOV AL,11
    MOV AH,0CH
    BACKA138:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA138  
         
          
         
    MOV CX,470
    MOV DX,363
    MOV AL,11
    MOV AH,0CH
    BACKA139:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA139          
         
    MOV CX,520
    MOV DX,363
    MOV AL,11
    MOV AH,0CH
    BACKA140:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA140 

    MOV CX,560
    MOV DX,363
    MOV AL,11
    MOV AH,0CH
    BACKA141:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA141 
    
    
    
    MOV CX,610
    MOV DX,363
    MOV AL,11
    MOV AH,0CH
    BACKA142:
         INT 10H
         INC DX
         CMP DX,383
         JNZ BACKA142 
    

ENDM DRAW_REGISTERS_2_7AND8



DRAW_REGISTERS_2_5AND6 MACRO
LOCAL AGAIN

                                                                        
    MOV CX,470
    MOV DX,314
    MOV AL,11
    MOV AH,0CH
    BACKA35:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA35  
    
    
    MOV CX,470
    MOV DX,334
    MOV AL,11
    MOV AH,0CH
    BACKA36:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA36     
       
    
    MOV CX,560
    MOV DX,314
    MOV AL,11
    MOV AH,0CH
    BACKA37:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA37    
    
    MOV CX,560
    MOV DX,334
    MOV AL,11
    MOV AH,0CH
    BACKA38:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA38  
         
          
         
    MOV CX,470
    MOV DX,314
    MOV AL,11
    MOV AH,0CH
    BACKA39:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA39          
         
    MOV CX,520
    MOV DX,314
    MOV AL,11
    MOV AH,0CH
    BACKA40:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA40 

    MOV CX,560
    MOV DX,314
    MOV AL,11
    MOV AH,0CH
    BACKA41:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA41 
    
    
    
    MOV CX,610
    MOV DX,314
    MOV AL,11
    MOV AH,0CH
    BACKA42:
         INT 10H
         INC DX
         CMP DX,334
         JNZ BACKA42 
    

ENDM DRAW_REGISTERS_2_5AND6



DRAW_REGISTERS_2_3AND4 MACRO
LOCAL AGAIN

                                                                        
    
    
    MOV CX,470
    MOV DX,265
    MOV AL,11
    MOV AH,0CH
    BACKA25:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA25  
    
    
    MOV CX,470
    MOV DX,285
    MOV AL,11
    MOV AH,0CH
    BACKA26:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA26    
    
    MOV CX,560
    MOV DX,265
    MOV AL,11
    MOV AH,0CH
    BACKA27:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA27  
    
    
    MOV CX,560
    MOV DX,285
    MOV AL,11
    MOV AH,0CH
    BACKA28:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA28
         
          
         
         
    MOV CX,470
    MOV DX,265
    MOV AL,11
    MOV AH,0CH
    BACKA30:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA30 

    MOV CX,520
    MOV DX,265
    MOV AL,11
    MOV AH,0CH
    BACKA31:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA31 
    
    
    
         
    MOV CX,560
    MOV DX,265
    MOV AL,11
    MOV AH,0CH
    BACKA33:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA33 

    MOV CX,610
    MOV DX,265
    MOV AL,11
    MOV AH,0CH
    BACKA34:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACKA34
    

ENDM DRAW_REGISTERS_2_3AND4



DRAW_REGISTERS_2_1AND2 MACRO
LOCAL AGAIN

    
    MOV CX,470
    MOV DX,218
    MOV AL,11
    MOV AH,0CH
    BACKA13:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA13  
    
    
    MOV CX,470
    MOV DX,238
    MOV AL,11
    MOV AH,0CH
    BACKA14:
         INT 10H
         INC CX
         CMP CX,521
         JNZ BACKA14    
    
    MOV CX,560
    MOV DX,218
    MOV AL,11
    MOV AH,0CH
    BACKA15:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA15  
    
    
    MOV CX,560
    MOV DX,238
    MOV AL,11
    MOV AH,0CH
    BACKA16:
         INT 10H
         INC CX
         CMP CX,611
         JNZ BACKA16
         
          
         
         
    MOV CX,470
    MOV DX,218
    MOV AL,11
    MOV AH,0CH
    BACKA18:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA18 

    MOV CX,520
    MOV DX,218
    MOV AL,11
    MOV AH,0CH
    BACKA19:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA19 
    
             
    MOV CX,560
    MOV DX,218
    MOV AL,11
    MOV AH,0CH
    BACKA21:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA21 

    MOV CX,610
    MOV DX,218
    MOV AL,11
    MOV AH,0CH
    BACKA22:
         INT 10H
         INC DX
         CMP DX,238
         JNZ BACKA22
    

ENDM DRAW_REGISTERS_2_1AND2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_MEMORY_2 MACRO
LOCAL AGAIN
                                                                        
    MOV CX,5
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK111:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK111
         
    MOV CX,5
    MOV DX,240
    MOV AL,11
    MOV AH,0CH
    BACK311:
         INT 10H
         INC CX
         CMP CX,387
         JNZ BACK311    

            
    MOV CX,5
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
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
    BACK545:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK545


    MOV CX,98
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK546:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK546


    MOV CX,123
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK547:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK547



    MOV CX,146
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK548:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK548


    MOV CX,170
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK549:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK549


    MOV CX,195
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK550:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK550

    MOV CX,220
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK551:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK551

    MOV CX,242
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK552:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK552


    MOV CX,268
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK553:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK553


    MOV CX,290
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK554:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK554


    MOV CX,315
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK555:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK555

    MOV CX,340
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK556:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK556


    MOV CX,362
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK557:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK557


    MOV CX,387
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK558:
         INT 10H
         INC DX
         CMP DX,240
         JNZ BACK558



ENDM DRAW_MEMORY_2



DRAW_REGISTERS_NAMES_1 MACRO
LOCAL AGAIN

  
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


   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




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

    
ENDM DRAW_REGISTERS_NAMES_1


DRAW_REGISTERS_NAMES_2 MACRO
LOCAL AGAIN


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


    
ENDM DRAW_REGISTERS_NAMES_2
 
 
 
DRAW_SQUARES MACRO
LOCAL AGAIN


mov al,2h  ;color
mov ah,0ch

mov cx,50    ; start position
mov dx,70    ; start position

loop1:      ; outer loop to draw the lines
int 10h
mov bx,cx   ; store the start position to return to it after drawing the line


loop2:      ; inner loop to draw the pixels of each line
inc cx
int 10h

mov si,50 ; si = start positon + length
add si,25

cmp cx,si   ; loop until the last pixel of the line  
JNE loop2

mov cx,bx   ; assign the start of the next line to cx
inc dx      ; increment the y_position

mov si,70 ; si = start positon + length
add si,25

cmp dx,si   ; loop until the last line of the square
JLE  loop1   ; less or equal to draw the last line


;print the load
    mov  dl, 7   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 52  ;Color is red
    MOV CX,1
    MOV BL,0F9H
    INT 10H


mov al,0ch  ;color
mov ah,0ch

mov cx,90    ; start position
mov dx,70    ; start position

loop1_2:      ; outer loop to draw the lines
int 10h
mov bx,cx   ; store the start position to return to it after drawing the line


loop2_2:      ; inner loop to draw the pixels of each line
inc cx
int 10h

mov si,90 ; si = start positon + length
add si,25

cmp cx,si   ; loop until the last pixel of the line  
JNE loop2_2

mov cx,bx   ; assign the start of the next line to cx
inc dx      ; increment the y_position

mov si,70 ; si = start positon + length
add si,25

cmp dx,si   ; loop until the last line of the square
JLE  loop1_2   ; less or equal to draw the last line


;print the load
    mov  dl, 12   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 57  ;Color is red
    MOV CX,1
    MOV BL,0F5H
    INT 10H

mov al,5h  ;color
mov ah,0ch

mov cx,130    ; start position
mov dx,70    ; start position

loop1_3:      ; outer loop to draw the lines
int 10h
mov bx,cx   ; store the start position to return to it after drawing the line


loop2_3:      ; inner loop to draw the pixels of each line
inc cx
int 10h

mov si,130 ; si = start positon + length
add si,25

cmp cx,si   ; loop until the last pixel of the line  
JNE loop2_3

mov cx,bx   ; assign the start of the next line to cx
inc dx      ; increment the y_position

mov si,70 ; si = start positon + length
add si,25

cmp dx,si   ; loop until the last line of the square
JLE  loop1_3   ; less or equal to draw the last line


;print the load
    mov  dl, 17   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 50  ;Color is red
    MOV CX,1
    MOV BL,0CAH
    INT 10H


mov al,03h  ;color
mov ah,0ch

mov cx,170    ; start position
mov dx,70    ; start position

loop1_4:      ; outer loop to draw the lines
int 10h
mov bx,cx   ; store the start position to return to it after drawing the line


loop2_4:      ; inner loop to draw the pixels of each line
inc cx
int 10h

mov si,170 ; si = start positon + length
add si,25

cmp cx,si   ; loop until the last pixel of the line  
JNE loop2_4

mov cx,bx   ; assign the start of the next line to cx
inc dx      ; increment the y_position

mov si,70 ; si = start positon + length
add si,25

cmp dx,si   ; loop until the last line of the square
JLE  loop1_4   ; less or equal to draw the last line


;print the load
    mov  dl, 22   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 56  ;Color is red
    MOV CX,1
    MOV BL,0F8H
    INT 10H

mov al,02h  ;color
mov ah,0ch

mov cx,210    ; start position
mov dx,70    ; start position

loop1_5:      ; outer loop to draw the lines
int 10h
mov bx,cx   ; store the start position to return to it after drawing the line


loop2_5:      ; inner loop to draw the pixels of each line
inc cx
int 10h

mov si,210 ; si = start positon + length
add si,25

cmp cx,si   ; loop until the last pixel of the line  
JNE loop2_5

mov cx,bx   ; assign the start of the next line to cx
inc dx      ; increment the y_position

mov si,70 ; si = start positon + length
add si,25

cmp dx,si   ; loop until the last line of the square
JLE  loop1_5   ; less or equal to draw the last line


;print the load

    mov  dl, 27   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 51  ;Color is red
    MOV CX,1
    MOV BL,0F8H
    INT 10H


ENDM DRAW_SQUARES


 
DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES MACRO
LOCAL AGAIN

    MOV CX,1
    MOV DX,200
    MOV AL,15
    MOV AH,0CH
    BACK75:
         INT 10H
         INC CX
         CMP CX,630
         JNZ BACK75     
         


    MOV CX,1
    MOV DX,410
    MOV AL,15
    MOV AH,0CH
    BACK76:
         INT 10H
         INC CX
         CMP CX,630
         JNZ BACK76          

ENDM DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES 



FIRST_PLAYER_COMMAND MACRO
LOCAL AGAIN

    MOV CX,50
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    BACK77:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK77     
         


    MOV CX,50
    MOV DX,185
    MOV AL,15
    MOV AH,0CH
    BACK78:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK78
         
         
         
    MOV CX,50
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    BACK79:
         INT 10H
         INC DX
         CMP DX,185
         JNZ BACK79         
         
         
    MOV CX,240
    MOV DX,150
    MOV AL,15
    MOV AH,0CH
    BACK80:
         INT 10H
         INC DX
         CMP DX,185
         JNZ BACK80         
                   

ENDM FIRST_PLAYER_COMMAND 




SECOND_PLAYER_COMMAND MACRO
LOCAL AGAIN

    MOV CX,50
    MOV DX,360
    MOV AL,15
    MOV AH,0CH
    BACK81:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK81     
         


    MOV CX,50
    MOV DX,395
    MOV AL,15
    MOV AH,0CH
    BACK82:
         INT 10H
         INC CX
         CMP CX,240
         JNZ BACK82
         
         
         
    MOV CX,50
    MOV DX,360
    MOV AL,15
    MOV AH,0CH
    BACK83:
         INT 10H
         INC DX
         CMP DX,395
         JNZ BACK83         
         
         
    MOV CX,240
    MOV DX,360
    MOV AL,15
    MOV AH,0CH
    BACK84:
         INT 10H
         INC DX
         CMP DX,395
         JNZ BACK84         
                   

ENDM SECOND_PLAYER_COMMAND 


TAKE_COMMAND_PLAYER_1 MACRO
LOCAL AGAIN

    MOV AH,2
    MOV DL,10
    MOV DH,10
    MOV AL,12H
    INT 10H
    
    
    MOV DX,OFFSET INDATA  
    MOV AH,0AH
    INT 21H 
    
    
    
ENDM TAKE_COMMAND_PLAYER_1 

TAKE_COMMAND_PLAYER_2 MACRO
LOCAL AGAIN

    MOV AH,2
    MOV DL,10
    MOV DH,23
    MOV AL,12H
    INT 10H
    
    
    MOV DX,OFFSET INDATA  
    MOV AH,0AH
    INT 21H 
    
    
    
ENDM TAKE_COMMAND_PLAYER_2


DRAW_NUMBERS_IN_MEMORY_PLAYER_1 MACRO
LOCAL AGAIN

MOV CL,16

MOV X_1_CHAR,1
MOV Y_1_CHAR,1

MOV X_2_CHAR,2
MOV Y_2_CHAR,1

MOV AL,BYTE PTR MEMORY[0]
MOV AH,0
MOV SI,1
MOMO:
     ;;;;;;;;;;;;;;;;;;;;

mov bl,10
div bl
mov dl,al
push ax
add dl,30h
PUSH DX
    MOV AH,2
    MOV DL,X_1_CHAR
    MOV DH,Y_1_CHAR
    MOV AL,12H
    INT 10H
POP DX
mov ah,02h
int 21h

pop ax
mov dl,ah
add dl,30h
PUSH DX

    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    INT 10H

POP DX
mov ah,02h
int 21h
     
     ;;;;;;;;;;;;;;;;;;;
     ADD X_1_CHAR,3
     ADD X_2_CHAR,3
     MOV AL,BYTE PTR MEMORY[SI]
     MOV AH,0
     INC SI
     DEC CL
     JNZ MOMO
     
ENDM DRAW_NUMBERS_IN_MEMORY_PLAYER_1

DRAW_NUMBERS_IN_MEMORY_PLAYER_2 MACRO
LOCAL AGAIN

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

mov bl,10
div bl
mov dl,al
push ax
add dl,30h
PUSH DX
    MOV AH,2
    MOV DL,X_1_CHAR
    MOV DH,Y_1_CHAR
    MOV AL,12H
    INT 10H
POP DX
mov ah,02h
int 21h

pop ax
mov dl,ah
add dl,30h
PUSH DX

    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    INT 10H

POP DX
mov ah,02h
int 21h
     
     ;;;;;;;;;;;;;;;;;;;
     ADD X_1_CHAR,3
     ADD X_2_CHAR,3
     MOV AL,BYTE PTR MEMORY2[SI]
     MOV AH,0
     INC SI
     DEC CL
     JNZ MOMO22
     
ENDM DRAW_NUMBERS_IN_MEMORY_PLAYER_2

DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1 MACRO


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

mov bX,1000
div bX
mov BX,aX
add BX,30h
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

mov bX,100
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
int 21h
POP DX


MOV AX,DX
MOV DX,0000

mov bX,10
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_3_CHAR
    MOV DH,Y_3_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3 
int 21h
POP DX


mov BX,DX
add BX,30h

    MOV AH,2
    MOV DL,X_4_CHAR
    MOV DH,Y_4_CHAR
    MOV AL,12H
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
     
ENDM DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1 MACRO

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

mov bX,1000
div bX
mov BX,aX
add BX,30h
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

mov bX,100
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
   
int 21h
POP DX


MOV AX,DX
MOV DX,0000

mov bX,10
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_3_CHAR
    MOV DH,Y_3_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
   
int 21h
POP DX


mov BX,DX
add BX,30h

    MOV AH,2
    MOV DL,X_4_CHAR
    MOV DH,Y_4_CHAR
    MOV AL,12H
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

ENDM DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2 MACRO
LOCAL AGAIN

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

mov bX,1000
div bX
mov BX,aX
add BX,30h
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

mov bX,100
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
   
int 21h
POP DX


MOV AX,DX
MOV DX,0000

mov bX,10
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_3_CHAR
    MOV DH,Y_3_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
   
int 21h
POP DX


mov BX,DX
add BX,30h

    MOV AH,2
    MOV DL,X_4_CHAR
    MOV DH,Y_4_CHAR
    MOV AL,12H
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
     
ENDM DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2 MACRO
LOCAL AGAIN

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

mov bX,1000
div bX
mov BX,aX
add BX,30h
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

mov bX,100
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_2_CHAR
    MOV DH,Y_2_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
   
int 21h
POP DX

MOV AX,DX
MOV DX,0000

mov bX,10
div bX
mov BX,aX
add BX,30h
PUSH DX
    MOV AH,2
    MOV DL,X_3_CHAR
    MOV DH,Y_3_CHAR
    MOV AL,12H
    INT 10H
MOV DX,BX
mov ah,02h
 MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
   
int 21h
POP DX


mov BX,DX
add BX,30h

    MOV AH,2
    MOV DL,X_4_CHAR
    MOV DH,Y_4_CHAR
    MOV AL,12H
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
          
ENDM DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 DRAW_TRIANGLE MACRO
         shifting_x  shifting_Y  
    
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


ENDM DRAW_TRIANGLE
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.MODEL HUGE
.STACK 128
.DATA



INDATA LABEL BYTE
SIZWE DB 40                   ;;;;;;;;;;;;NEED TO BE UPDATEEEEEEEEEEEEEEEEED
ACTUALSIZE DB ?

MEMORY DB 16 DUP (00)
MEMORY2 DB 16 DUP (00)


AL_REG LABEL BYTE 
AX_REG DW 0000    ;;AX 
AH_REG LABEL BYTE 
       

BL_REG LABEL BYTE 
BX_REG DW 0000    ;;BX 
BH_REG LABEL BYTE
        
           

CL_REG LABEL BYTE 
CX_REG DW 0000    ;;CX 
CH_REG LABEL BYTE
       
      
DL_REG LABEL BYTE 
DX_REG DW 0000    ;;DX 
DH_REG LABEL BYTE       
            
SI_REG DW 0000  ;;SI            
DI_REG DW 0000  ;;DI      
SP_REG DW 0000  ;;SP           
BP_REG DW 0000  ;;BP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

AL_REG2 LABEL BYTE 
AX_REG2 DW 0000    ;;AX 
AH_REG2 LABEL BYTE 
      

BL_REG2 LABEL BYTE 
BX_REG2 DW 0000    ;;BX 
BH_REG2 LABEL BYTE
        
           

CL_REG2 LABEL BYTE 
CX_REG2 DW 0000    ;;CX 
CH_REG2 LABEL BYTE
       
      
DL_REG2 LABEL BYTE 
DX_REG2 DW 0000    ;;DX 
DH_REG2 LABEL BYTE

       
SI_REG2 DW 0000  ;;SI            
DI_REG2 DW 0000  ;;DI      
SP_REG2 DW 0000  ;;SP           
BP_REG2 DW 0000  ;;BP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
shifting_x DW 68
shifting_y DW 145


COUNTER DW 0000

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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


.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX 
       
    MOV AH,0  
    MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
    MOV AL,12H
    INT 10H 
    
       
    DRAW_LETTERS_1_MEMORY 
    
    DRAW_LETTERS_2_MEMORY
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_MEMORY_1
    
    DRAW_MEMORY_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_REGISTERS_1_7AND8
    
    DRAW_REGISTERS_1_5AND6
    
    DRAW_REGISTERS_1_3AND4
    
    DRAW_REGISTERS_1_1AND2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_REGISTERS_2_7AND8
    
    DRAW_REGISTERS_2_5AND6
    
    DRAW_REGISTERS_2_3AND4
    
    DRAW_REGISTERS_2_1AND2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_REGISTERS_NAMES_1
    
    DRAW_REGISTERS_NAMES_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_SQUARES
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_MIDDLE_AND_NOTIFICATION_BAR_LINES
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    FIRST_PLAYER_COMMAND
    
    SECOND_PLAYER_COMMAND
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    TAKE_COMMAND_PLAYER_1
    
    TAKE_COMMAND_PLAYER_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    DRAW_NUMBERS_IN_MEMORY_PLAYER_1
    
    DRAW_NUMBERS_IN_MEMORY_PLAYER_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1
    
    DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2
    
    DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2
    

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


        
    MAIN ENDP
END MAIN
        