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

loop111:      ; outer loop to draw the lines
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
JLE  loop111   ; less or equal to draw the last line


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
MOV DX,[SI]
MOV AX,0000


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


MOV AX,0000
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


MOV AX,0000
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
     MOV DX,[SI]
     MOV AX,0000
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
MOV DX,[SI]
MOV AX,0000


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


MOV AX,0000
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


MOV AX,0000
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
     MOV DX,[SI]
     MOV AX,0000
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
MOV DX,[SI]
MOV AX,0000


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


MOV AX,0000
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


MOV AX,0000
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
     MOV DX,[SI]
     MOV AX,0000
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
MOV DX,[SI]
MOV AX,0000


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


MOV AX,0000
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

MOV AX,0000
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
     MOV DX,[SI]
     MOV AX,0000
     DEC CX
     JZ STOPQ
     JMP QWE
        
   STOPQ:
          
ENDM DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


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
INS_START DB ,40 DUP (?)



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

.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX     
    
           
    MOV AH,0  
    MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
    MOV AL,12H
    INT 10H 
    
    MOV POINT2,200D
      
    MYLOOP:
    
    MOV AX,0600H
    MOV BH,07
    MOV CX,0
    MOV DX,184FH
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
    
    
    DRAW_NUMBERS_IN_MEMORY_PLAYER_1
    
    DRAW_NUMBERS_IN_MEMORY_PLAYER_2
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_1
    
    DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_1
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    DRAW_NUMBERS_IN_REGISTERS_AX_BX_CX_DX_PLAYER_2
    
    DRAW_NUMBERS_IN_REGISTERS_SI_DI_SP_BP_PLAYER_2
    
    ;CALL READ_INS_FROM_USER

    TAKE_COMMAND_PLAYER_1

          
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
          SET_DES_SOURCE
           CHECK_ERROR
          CMP INVALID,1 
          JNE FIRES_CHECK_1
          JMP MINUS
          FIRES_CHECK_2:
          ADD DI,37D
           READ_INST ;ME 
          SUB POINT2,5D  
          JMP LOOP1 
    
    SECOND:CMP POINT2,3D
          JNB SECOND_CHECK_1  
          JMP SORRY
          SECOND_CHECK_1:   
            SET_DES_SOURCE
            CHECK_ERROR
           CMP INVALID,1
           JNE SECOND_CHECK_2
           JMP MINUS
           SECOND_CHECK_2:
            READ_INST ;HIM
           
           ADD DI,36D
            CHECK_ERROR 
           CMP INVALID,1
           JNE SECOND_CHECK_3
           JMP MINUS
           SECOND_CHECK_3:   
            READ_INST ;ME 
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
      SET_DES_SOURCE    
      CHECK_ERROR 
     CMP INVALID,1
     JE MINUS 

       READ_INST 
           JMP LOOP1
    MINUS:SUB POINT,1D  
          MOV INVALID,0
          JE LOOP1              
    LOOP1:JMP MYLOOP
    LAB1: HLT
    MAIN ENDP    
    
    
;#################################################### FIREST INSTRUCTION IN HIM ##############################################################################    
    
READ_INST        MACRO 
    
    
    mov f,0
    
    CMP INS_START,'M'
    JNE ADD1
    CMP INS_START+1,'O'
    JNE ADD1
    CMP INS_START+2,'V'
    JNE ADD1
    ;;;;;;;;;; IF IT IS MOV THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;  
    
    ;-------------------------------------------------------------------
    cmp DEST_FLAG,1          ;hosny,7          ;hosny
    je movlow
    cmp DEST_FLAG,0          ;hosny
    je memo
    MOV Al,VALUE+1
    MOV [DI],Al 
    mov al,VALUE
    inc di
    mov [di],al
    JMP RETURN  
    
    movlow:mov al,VALUE
           mov [di],al
           jmp RETURN
    
    memo:mov cl,SRC_SIZE 
    mov ch,0
    calc: mov si,offset VALUE
          add si,cx
          sub si,1 
          mov dl,[si]
          mov [di],dl
          inc di
          dec cx
          jnz  calc ;;;HOSNY HANAKA EBN EL  
          jmp RETURN
    ;-------------------------------------------------------------------             
    ADD1:;;;;;;;;;;; ADD INSTRUCTIONS   
    CMP INS_START,'A'
    JNE SUB1
    CMP INS_START+1,'D'
    JNE SUB1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS_START+2,'D'
    JNE SUB1
    
    
    ;;;;;;;;;; IF IT IS ADD  ;;;;;;;;;;;;;;;;;;;;;;;;; 
    clc
    cmp DEST_FLAG,1          ;hosny
    je movlowadd
    cmp DEST_FLAG,0          ;hosny
    je memoadd
    mov Al,VALUE+1
    add [DI],Al 
    mov al,VALUE
    inc di
    adc [di],al
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    JMP RETURN  
         
    movlowadd:mov al,VALUE
              add [di],al
              pushf
              pop ax
              and ax,1d
              mov CARRY,al
              jmp RETURN
    
   memoadd:mov cl,SRC_SIZE 
    mov ch,0
           
    calcadd:mov si,offset VALUE
           add si,cx
           sub si,1
           
           mov dl,[si]
           adc [di],dl
           inc di
           dec cx
           jnz calcadd
                
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    jmp RETURN
    
    ;-----------------------------------------------------------
    SUB1:;;;;;;;;;;; SUB INSTRUCTIONS
    CMP INS_START,'S'
    JNE ADC1
    CMP INS_START+1,'U'
    JNE ADC1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS_START+2,'B'
    JNE ADC1
     ;;;;;;;;;; IF IT IS SUB  ;;;;;;;;;;;;;;;;;;;;;;;;;  
    clc  
    cmp DEST_FLAG,1          ;hosny
    je movlowsub
    cmp DEST_FLAG,0          ;hosny
    je memosub
    mov Al,VALUE+1
    sub [DI],Al 
    mov al,VALUE
    inc di
    sbb [di],al
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    JMP RETURN  
         
    movlowsub:mov al,VALUE
              sub [di],al
              pushf
              pop ax
              and ax,1d
              mov CARRY,al
              jmp RETURN
    
    memosub:mov cl,SRC_SIZE 
    mov ch,0 
           
    calcsub:mov si,offset VALUE
            add si,cx
            sub si,1 
            mov dl,[si]
            sbb [di],dl
            inc di
            dec cx
            jnz calcadd
                
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    jmp RETURN
   ;------------------------------------------------------------ 
    ADC1:;;;;;;;;;;; ADC INSTRUCTIONS
    CMP INS_START,'A'
    JNE ROR1
    CMP INS_START+1,'D'  
    JNE ROR1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS_START+2,'C'
    JNE ROR1
    ;;;;;;;;;; IF IT IS ADC  ;;;;;;;;;;;;;;;;;;;;;;;;;
    cmp CARRY,0
    je set
    mov al,0ffh
    add al,1
    jmp bra
    set:clc
    bra:   
    PUSHF
    cmp DEST_FLAG,1          ;hosny
    je movlowadc
    cmp DEST_FLAG,0          ;hosny
    je memoadc 
    POPF
    mov Al,VALUE+1
    adc [DI],Al 
    mov al,VALUE
    inc di
    adc [di],al
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    JMP RETURN  
         
    movlowadc:POPF
              mov al,VALUE
              adc [di],al
              pushf
              pop ax
              and ax,1d
              mov CARRY,al
              jmp RETURN
    
    memoadc:POPF
    mov cl,SRC_SIZE 
    mov ch,0
    calcadc:mov si,offset VALUE
            add si,cx
            sub si,1
            mov dl,[si]
            adc [di],dl
            inc di
            dec cx
            jnz calcadc
                
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    jmp RETURN       
    ;------------------------------------------------------
    ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
              
    ;;;;;;;;;;;ROTATE RIGHT 
    ROR1:                          
         CMP INS_START,'R'
         JNE ROL1
         CMP INS_START+1,'O'
         JNE ROL1
         CMP INS_START+2,'R'
         JNE ROL1
    ;;;;;;;;;; IF IT IS ROR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROR    
         CMP DEST_FLAG,2
         JZ  ROR_16BITS
    ROR_8BITS:
         MOV BL,[DI]
         ROR BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    ROR_16BITS:
         MOV Bl,[DI] 
         inc di
         mov bh,[di]
         dec di
         ROR BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh  ;;;;;;;;;;;;;;;;;;;;;;SOMETIMES CARRYFLAG WILL BE ONE AS IT TAKE MOST SIGIFIGANT BIT WHILE ROTATIOG
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    
    MAKE_IT_16_OR_BELOW_ROR:
         SUB CX,16D
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROR
         JBE ROR1           
    ;;;;;;;;;;;;;;END OF ROTATE RIGHT
    
    ;;;;;;;;;;;ROTATE LEFT              
    ROL1:                        
         CMP INS_START,'R'
         JNE RCL1
         CMP INS_START+1,'O'
         JNE RCL1
         CMP INS_START+2,'L'
         JNE RCL1
    ;;;;;;;;;; IF IT IS ROL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         CMP Cl,16D
         JA MAKE_IT_16_OR_BELOW_ROL    
         CMP DEST_FLAG,2
         JZ  ROL_16BITS
    ROL_8BITS:
         MOV BL,[DI]
         ROL BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    ROL_16BITS:
         MOV Bl,[DI]
         inc di
         mov bh,[di]
         dec di
         ROL BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh     ;;;;;;;;;;;;;;;;;;;;;;SOMETIMES CARRYFLAG WILL BE ONE AS IT TAKE MOST SIGIFIGANT BIT WHILE ROTATIOG
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    MAKE_IT_16_OR_BELOW_ROL:
         SUB CX,16D
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROL
         JBE ROL1           
    ;;;;;;;;;;;;;;END OF ROTATE LEFT
    
    ;;;;;;;;;;;ROTATE LEFT WITH CARRY              
    RCL1:                            
         CMP INS_START,'R'
         JNE RCR1
         CMP INS_START+1,'C'
         JNE RCR1
         CMP INS_START+2,'L'
         JNE RCR1
    ;;;;;;;;;; IF IT IS RCL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         
         CMP CX,17D 
         
         JA MAKE_IT_17_OR_BELOW_RCL    
         CMP CARRY,1
         JZ SET_CARRY
         JC CLEAR_CARRY 
    RCL_9BITS:
         MOV BL,[DI]
         RCL BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    RCL_17BITS:
         MOV Bl,[DI]
         inc di
         mov bh,[di]
         dec di
         RCL BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    SET_CARRY:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         STC
         JZ  RCL_17BITS
         JMP RCL_9BITS
    CLEAR_CARRY:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         CLC
         JZ  RCL_17BITS
         JMP RCL_9BITS
         
    MAKE_IT_17_OR_BELOW_RCL:
         SUB CX,17D
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCL
         JBE RCL1           
    ;;;;;;;;;;;;;;END OF ROTATE LEFT WITH CARRY
    
    ;;;;;;;;;;;ROTATE RIGHT WITH CARRY              
    RCR1:                         
         CMP INS_START,'R'
         JNE SHL1
         CMP INS_START+1,'C'
         JNE SHL1
         CMP INS_START+2,'R'
         JNE SHL1
    ;;;;;;;;;; IF IT IS RCR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCR    
         CMP CARRY,1
         JZ SET_CARRY_RCR
         JC CLEAR_CARRY_RCR 
    RCR_9BITS:
         MOV BL,[DI]
         RCR BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    RCR_17BITS:
         MOV Bl,[DI]
         inc di
         mov bh,[di]
         dec di
         RCR BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    SET_CARRY_RCR:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         STC
         JZ  RCR_17BITS
         JMP RCR_9BITS
    CLEAR_CARRY_RCR:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         CLC
         JZ  RCR_17BITS
         JMP RCR_9BITS
         
    MAKE_IT_17_OR_BELOW_RCR:
         SUB CX,17D
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCR
         JBE RCR1           
    ;;;;;;;;;;;;;;END OF ROTATE RIGHT WITH CARRY    
    
    ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& END OF KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    
    SHL1:;;;;;;;;;;; SHL INSTRUCTIONS
    CMP INS_START,'S'
    JNE SHR1
    CMP INS_START+1,'H'
    JNE SHR1
    CMP INS_START+2,'L'
    JNE SHR1

    AND VALUE,000000011111B    ; take the first 5 bits only
    mov ch,0
    MOV Cl,VALUE 
    
    
    
    cmp DEST_FLAG,2
    je shl2byte
    SHL BYTE PTR [DI],CL
    
    ;store the carry flag
    PUSHF
    POP AX
    AND AL,1    
    MOV CARRY,AL     
     
    JMP RETURN
              
    shl2byte:mov al,[di]
             inc di
             mov ah,[di]
             dec di
             shl ax,cl
             pushf
             pop bx
             and bx,1d
             mov CARRY,bl
             mov [di],al 
             inc di
             mov [di],ah
             JMP RETURN          
    SHR1:;;;;;;;;;;; SHR INSTRUCTIONS   
    CMP INS_START,'S'
    JNE NOP1
    CMP INS_START+1,'H'
    JNE NOP1
    CMP INS_START+2,'R'
    JNE NOP1
    
    AND VALUE,000000011111B    ; take the first 5 bits only
    mov ch,0
    MOV Cl,VALUE 
    
    
    
    cmp DEST_FLAG,2
    je shr2byte
    SHR BYTE PTR [DI],CL
    
    ;store the carry flag
    PUSHF
    POP AX
    AND AL,1    
    MOV CARRY,AL     
     
    JMP RETURN
              
    shr2byte:mov al,[di]
             inc di
             mov ah,[di]
             dec di
             shr ax,cl
             pushf
             pop bx
             and bx,1d
             mov CARRY,bl
             mov [di],al 
             inc di
             mov [di],ah
             JMP RETURN
                          
    ;----------------------------------------------------------------                      
    NOP1:;;;;;;;;;;;; NOP INSTRUCTIONS
    CMP INS_START,'N'
    JNE CLC1
    CMP INS_START+1,'O'
    JNE CLC1
    CMP INS_START+2,'P'
    JNE CLC1 
    ret
    ;---------------------------------------------------------------
    
    
    CLC1:;;;;;;;;;;;;;;; CLC INSTRUCTIONS
    
    CMP INS_START,'C'
    JNE INC1
    CMP INS_START+1,'L'
    JNE INC1
    CMP INS_START+2,'C' 
    JNE INC1
    
    ;AND FLAGS_REG,1111111111111110B
    
    MOV CARRY,0
    
    JMP RETURN 
    
    
    ;-------------------------------------------------------------------------
    
    INC1:;;;;;;;;;;; INC INSTRUCTION
    
    
    CMP INS_START,'I'
    JNE DEC1
    CMP INS_START+1,'N'
    JNE DEC1
    CMP INS_START+2,'C'
    JNE DEC1
    ;;;;;;;;;; IF IT IS INC THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
   ; CMP [DI],0FFFFH
   ; JE  INCCARRY 
    INC BYTE PTR [DI]
    JMP RETURN
   ; INCCARRY: MOV CARRY,1
   ;           INC [DI]
   ;           JMP LOOP1   
    ;-------------------------------------------------------------------------          
    DEC1:;;;;;;;;;;;;; DEC INSTRUCTION
    
    CMP INS_START,'D'
    JNE AND1
    CMP INS_START+1,'E'
    JNE AND1
    CMP INS_START+2,'C'
    JNE AND1
    ;;;;;;;;;; IF IT IS DEC THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    ;CMP [DI],0000H
    ;JE DECCARRY
    DEC BYTE PTR [DI]
    JMP RETURN
    ;DECCARRY: MOV CARRY,1
    ;          DEC [DI]
    ;          JMP LOOP1
   ;--------------------------------------------------------------------------- 
    
    AND1: ;;;;;;;;;;;;;;; AND INSTRUCTION
    
    CMP INS_START,'A'
    JE FIND_FIRST_CAHR_AND
     JMP XOR1
    FIND_FIRST_CAHR_AND:

    CMP INS_START+1,'N'
    JE FIND_SECOND_CAHR_AND
     JMP XOR1
    FIND_SECOND_CAHR_AND:

    CMP INS_START+2,'D'
   JE FIND_THIRD_CAHR_AND
     JMP XOR1
    FIND_THIRD_CAHR_AND:
    ;;;;;;;;;; IF IT IS AND THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    cmp DEST_FLAG,1          ;hosny
    je movlowand
    cmp DEST_FLAG,0          ;hosny
    je memoand
    mov Al,VALUE+1
    and [DI],Al
    cmp BYTE PTR [di],0
    je new 
    mov al,VALUE
    inc di
    and [di],al
    JMP RETURN  
    new:inc f
        mov al,VALUE
        inc di
        and [di],al
        cmp BYTE PTR [di],0
        je new1 
        JMP RETURN
    new1:inc f
        cmp f,2
        je cleer
        JMP LOOP1      
    movlowand:mov al,VALUE
              and [di],al
              cmp BYTE PTR [di],0
              je cleer
              jmp RETURN
    
   memoand:mov cl,SRC_SIZE 
    mov ch,0
    calcand:mov si,offset VALUE
          add si,cx
          sub si,1
          mov dl,[si]
          and [di],dl 
          cmp BYTE PTR [di],0
          je zero
          inc di
          dec cx
          jnz calcand
          zero: inc f
                inc di
                dec cx
                jnz calcand  
                
   mov cL,SRC_SIZE             
   cmp f,cL
   je cleer
   jmp RETURN
   cleer:mov CARRY,0
             jmp RETURN
   ;---------------------------------------------------------------------------          
             
  
    XOR1:;;;;;;;;;;;;;;;; XOR INSTRUCTION
    CMP INS_START,'X'
     JE FIND_FIRST_CAHR_XOR
     MOV INVALID,1
     RET
     FIND_FIRST_CAHR_XOR:

     CMP INS_START+1,'O'
    JE FIND_SECOND_CAHR_XOR
     MOV INVALID,1
     RET
     FIND_SECOND_CAHR_XOR:

    CMP INS_START+2,'R'
    JE FIND_THIRD_CAHR_XOR
     MOV INVALID,1
     RET
     FIND_THIRD_CAHR_XOR:
    ;;;;;;;;;; IF IT IS AND THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
   cmp DEST_FLAG,1          ;hosny
    je movlowxor
    cmp DEST_FLAG,0          ;hosny
    je memoxor
    mov Al,VALUE+1
    xor [DI],Al
    cmp BYTE PTR [di],0
    je newxor 
    mov al,VALUE
    inc di
    xor [di],al
    JMP RETURN  
    newxor:inc f
        mov al,VALUE
        inc di
        xor [di],al
        cmp BYTE PTR [di],0
        je newxor2 
        JMP RETURN
    newxor2:inc f
        cmp f,2
        je cleer
        JMP RETURN      
    movlowxor:mov al,VALUE
              xor [di],al
              cmp BYTE PTR [di],0
              je cleer
              jmp RETURN
    
    memoxor:mov cl,SRC_SIZE 
    mov ch,0
    calcxor:mov si,offset VALUE
          add si,cx
          sub si,1
          mov dl,[si]
          xor [di],dl
          cmp BYTE PTR [di],0
          je zeroxor
          inc di
          dec cx
          jnz calcxor
          zeroxor: inc f
                inc di
                dec cx
                jnz calcxor  
                
   mov cL,SRC_SIZE             
   cmp f,cL
   jNe  RETURN
    mov CARRY,0
  
  RETURN: ret
        
 ENDM READ_INST           
                 
    
;#########################################################################################################################    
    
    
SET_DES_SOURCE     MACRO
    

    
    
    
     MOV SRC_START,7D
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK AX
    CMP  INS_START+4,'A'
    JNE SECOND1
    
    CMP  INS_START+5,'X'
    JNE HIGHER1 
    MOV DEST_FLAG,2H ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET AX_REG   
    JMP SOURCE_PROCESS 
       
    HIGHER1:CMP  INS_START+5,'H'
    JNE LOWER1
    MOV DI,OFFSET AX_REG+1 
    MOV DEST_FLAG,1
    JMP SOURCE_PROCESS
    
    LOWER1:CMP  INS_START+5,'L'
    JE DEST_FIND_AL 
    JMP DES_MEMORY
    DEST_FIND_AL:
    MOV DI,OFFSET AX_REG
    MOV DEST_FLAG,1   
    JMP SOURCE_PROCESS
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK BX   
    SECOND1: CMP  INS_START+4,'B'
    JNE SECOND2
    
    CMP  INS_START+5,'X'
    JNE HIGHER2 
    MOV DEST_FLAG,2 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET BX_REG   
    JMP SOURCE_PROCESS 
    
    HIGHER2:CMP  INS_START+5,'H'
    JNE LOWER2
    MOV DEST_FLAG,1
    MOV DI,OFFSET BX_REG+1
    JMP SOURCE_PROCESS
    
    LOWER2:CMP  INS_START+5,'L'
    JE DEST_FIND_BL
    JMP SECOND4
    DEST_FIND_BL:
    MOV DEST_FLAG,1 
    MOV DI,OFFSET BX_REG
    JMP SOURCE_PROCESS
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK CX
    SECOND2: CMP  INS_START+4,'C'
    JNE SECOND3
    
    CMP  INS_START+5,'X'
    JNE HIGHER3 
    MOV DEST_FLAG,2 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET CX_REG   
    JMP SOURCE_PROCESS 
    
    HIGHER3: CMP  INS_START+5,'H'
    JNE LOWER3
    MOV DEST_FLAG,1
    MOV DI,OFFSET CX_REG+1
    JMP SOURCE_PROCESS
    
    LOWER3:CMP  INS_START+5,'L'

     JE DEST_FIND_CL 
    JMP DES_MEMORY
    DEST_FIND_CL:

     MOV DEST_FLAG,1 
    MOV DI,OFFSET CX_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK DX
    SECOND3: CMP  INS_START+4,'D'
    JNE SECOND4   
    
    CMP  INS_START+5,'X'
    JNE HIGHER4 
    MOV DEST_FLAG,2 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET DX_REG   
    JMP SOURCE_PROCESS 
    
    HIGHER4:CMP  INS_START+5,'H'
    JNE LOWER4
    MOV DEST_FLAG,1
    MOV DI,OFFSET DX_REG+1
    JMP SOURCE_PROCESS
    
    LOWER4:CMP  INS_START+5,'L'
    JNE SECOND5
    MOV DEST_FLAG,1 
    MOV DI,OFFSET DX_REG 
    JMP SOURCE_PROCESS                      
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; CHECK BP
    SECOND4: CMP INS_START+4,'B'
    JNE SECOND5
    
    CMP INS_START+5,'P'
     JE DEST_FIND_BP
    JMP DES_MEMORY
    DEST_FIND_BP:
     MOV DEST_FLAG,2
    MOV DI,OFFSET BP_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;; CHECK DI 
    SECOND5: CMP INS_START+4,'D'
    JNE SECOND6
    
    CMP INS_START+5,'I'
    JE DEST_FIND_DI 
    JMP DES_MEMORY
    
    DEST_FIND_DI:
    MOV DEST_FLAG,2
    MOV DI,OFFSET DI_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK SI
    
    SECOND6: CMP INS_START+4,'S'
    JNE SECOND7
    
    CMP INS_START+5,'I'
    JNE SECOND7
    MOV DEST_FLAG,2
    MOV DI,OFFSET SI_REG
    JMP SOURCE_PROCESS              
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK SP
    
    SECOND7: CMP INS_START+4,'S'
    JNE DES_MEMORY
    
    CMP INS_START+5,'P'
   JE DEST_FIND_SP 
    MOV INVALID,1
    RET
    DEST_FIND_SP:

    MOV DEST_FLAG,2
    MOV DI,OFFSET SP_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK MEMORY FOR DESTENETION
    DES_MEMORY:
   
    MOV DEST_FLAG,0
    CMP INS_START+4,'['
    JE MEMORY_START_FIND
    JMP DES_NUMBERS_ONLY
    MEMORY_START_FIND:MOV SRC_START,9
    ;;;;;;;;;;;CHECK [BX]
    CMP  INS_START+5,'B'
    JNE DES_MEMORY_SECOND1
    
    CMP INS_START+6,'X'
    JNE DES_MEMORY_SECOND1
    MOV DI,OFFSET MEMORY   
    ADD DI,BX_REG 
    JMP SOURCE_PROCESS 
    ;;;;;;;;;;;;;;;CHECK [SI]
    DES_MEMORY_SECOND1:
    CMP  INS_START+5,'S'
    JNE DES_MEMORY_SECOND2
    
    CMP INS_START+6,'I'
    JNE DES_MEMORY_SECOND2
    MOV DI,OFFSET MEMORY   
    ADD DI,SI_REG 
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;CHECK [DI]
    DES_MEMORY_SECOND2:
    CMP  INS_START+5,'D'
    JNE CHECK_NUMBER_IN_MEMRY_FOR_DEST
    
    CMP INS_START+6,'I'
    JNE CHECK_NUMBER_IN_MEMRY_FOR_DEST
    MOV DI,OFFSET MEMORY   
    ADD DI,DI_REG
    JMP SOURCE_PROCESS

    ;;;;;;;;;;;;;;CHECK INVALID MODE
    ;;; IF ITNT ONE OF THE ABOVE REGESTERS THEN IT HAS TWO options
    ;;; 1- [--]THEN ITS INVALID MODE
     ;;; 2- [-]VALID OR NOT ACCORDIND TO WHAT BETWEEN []
     CHECK_NUMBER_IN_MEMRY_FOR_DEST:CMP INS_START+7,']'
     JNE DES_MEMORY_SECOND3
     ;;HERE WE SAID THAT TER IS 2 DIGIT BETWEEN [] AND ISNT ONE OF THE 3VALID REGESTERS
     MOV INVALID,1
     RET
    ;;;;;;;;;;;;CHECK FOR [3]
    DES_MEMORY_SECOND3:
    MOV SRC_START,8
    MOV AL,INS_START+5
    CMP AL,48D
    JNB DEST_MEMPRY_NOT_BLOW_THE_RANGE;AND FLAGS_REG,1111111111111110B
    MOV INVALID,1
    RET
    DEST_MEMPRY_NOT_BLOW_THE_RANGE:
    CMP AL,70D
    JNA DEST_MEMPRY_NOT_ABOVE_THE_RANGE1
     MOV INVALID,1
    RET

    DEST_MEMPRY_NOT_ABOVE_THE_RANGE1:
    CMP AL,65D
    JNB DES_MEMOY_NUMERS_1
   
    CMP AL,57D
    JNA DES_MEMOY_NUMERS_BELOW
     MOV INVALID,1
     RET

    DES_MEMOY_NUMERS_BELOW:SUB AL,48D 
    JMP DES_MEMOY_NUMERS_2
        
    DES_MEMOY_NUMERS_1:
    SUB AL,55D         
    
    DES_MEMOY_NUMERS_2:
    MOV DI,OFFSET MEMORY 
    MOV AH,0  
    ADD DI,AX  
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;CHECK FOR MOV 3,12
    DES_NUMBERS_ONLY: 
    MOV AL,INS_START+5
    CMP AL,','
    JE DEST_NUMBERS_ONLY_IS_ONE_DIGID  
    MOV INVALID,1
    RET
   DEST_NUMBERS_ONLY_IS_ONE_DIGID: MOV SRC_START,6
    ;;;;
    MOV AL,INS_START+4


    CMP AL,48D
    JNB DEST_MEMPRY_NOT_BLOW_THE_RANGE_NUMBERS_ONLY;AND FLAGS_REG,1111111111111110B
    MOV INVALID,1
    RET
    DEST_MEMPRY_NOT_BLOW_THE_RANGE_NUMBERS_ONLY:
    CMP AL,70D
    JNA D1EST_MEMPRY_NOT_ABOVE_THE_RANGE_NUMBERS_ONLY1
     MOV INVALID,1
    RET

    D1EST_MEMPRY_NOT_ABOVE_THE_RANGE_NUMBERS_ONLY1:
    CMP AL,65D
    JNB DES_MEMOY_NUMERS_1_NUMBERS_ONLY
   
    CMP AL,57D
    JNA DES_MEMOY_NUMERS_BELOW_NUMBERS_ONLY
     MOV INVALID,1
     RET

    DES_MEMOY_NUMERS_BELOW_NUMBERS_ONLY:SUB AL,48D 
    JMP DES_MEMOY_NUMERS_4
        
    DES_MEMOY_NUMERS_1_NUMBERS_ONLY:
    SUB AL,55D 



    DES_MEMOY_NUMERS_4:
    MOV DI,OFFSET MEMORY 
    MOV AH,0  
    ADD DI,AX
    JMP SOURCE_PROCESS
    ;;;;;;;;;;;;;;;;;;;;;;                  STEP 2         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;FIND THE VALUE  (WORK WITH THE SOURCE AFTER FINISH THE DESTNITION) 
    SOURCE_PROCESS:  
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER AX ;;;;;;;;;;;
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP BYTE PTR[SI],'['
    JNE SOURCE_NOT_MEMORY ;;;; IF ITS MEMORY THEN GO DIECTLY TO SOURCE MEMORY
    JMP SOURCE_MEMORY
    
    
    SOURCE_NOT_MEMORY:
    CMP  BYTE PTR[SI],'A'
    JNE SOURCE_SECOND1
    
    CMP  BYTE PTR[SI+1],'X'
    JNE SOURCE_HIGHER 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET AX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER:CMP  BYTE PTR [SI+1],'H'
    JNE SOURCE_LOWER 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET AX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER:
    CMP  BYTE PTR [SI+1],'L'
    JE SORCE_FIND_AL 
    JMP PREREQUIRE
    SORCE_FIND_AL:
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET AX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET  
    
    
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER BX ;;;;;;;;;;;
    SOURCE_SECOND1:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP  BYTE PTR [SI],'B'
    JNE SOURCE_SECOND2
    
    CMP  BYTE PTR[SI+1],'X'
    JNE SOURCE_HIGHER1 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET BX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER1:CMP  BYTE PTR[SI+1],'H'
    JNE SOURCE_LOWER1 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET BX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER1:CMP BYTE PTR [SI+1],'L'
    JNE SOURCE_SECOND_HALF 
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET BX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET 
    
    ;;;;;;;; CHECK BP AFTER B 
    SOURCE_SECOND_HALF:CMP BYTE PTR [SI+1],'P' 
    JE SORCE_FIND_BP
    JMP PREREQUIRE
    SORCE_FIND_BP:
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET BP_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
    
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER CX ;;;;;;;;;;;
    SOURCE_SECOND2:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP BYTE PTR [SI],'C'
    JNE SOURCE_SECOND3
    
    CMP BYTE PTR [SI+1],'X'
    JNE SOURCE_HIGHER2 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET CX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER2:CMP  BYTE PTR [SI+1],'H'
    JNE SOURCE_LOWER2 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET CX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER2:CMP BYTE PTR [SI+1],'L'
    JE SORCE_FIND_CL 
    JMP PREREQUIRE
    SORCE_FIND_CL:
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET CX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET 
    
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER DX ;;;;;;;;;;;
    SOURCE_SECOND3:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP  BYTE PTR [SI],'D'
    JNE SOURCE_SECOND4
    
    CMP  BYTE PTR [SI+1],'X'
    JNE SOURCE_HIGHER3 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET DX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER3:CMP BYTE PTR  [SI+1],'H'
    JNE SOURCE_LOWER3 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET DX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER3:CMP BYTE PTR [SI+1],'L'
    JNE SOURCE_SECOND_HALF1 
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET DX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET 
    
    ;;;;;;;;;;;;; CHECK DI AFTER D
    SOURCE_SECOND_HALF1:CMP BYTE PTR [SI+1],'I' 
    JE SOURCE_FIND_DI 
    JMP PREREQUIRE
   SOURCE_FIND_DI:
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET DI_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
     ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER DX ;;;;;;;;;;;
    SOURCE_SECOND4:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP  BYTE PTR [SI],'S'
    JNE SOURCE_MEMORY
    
    CMP  BYTE PTR [SI+1],'I'
    JNE  SOURCE_SECOND_HALF2
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET SI_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
    
    
    ;;;;;;;CHECK SP AFTER S
    SOURCE_SECOND_HALF2:
    CMP  BYTE PTR [SI+1],'P'
    JE SOURCE_FIND_SP
    JMP PREREQUIRE
   SOURCE_FIND_SP:
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET SP_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
    
    ;;;;;;;;;;;;;;;;;;;;;;; IF WE ACHIVE HERE ITS MEAN THAT IT ISNT REGESTER BUT MEMORY OR IMMIDIATE
    SOURCE_MEMORY:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP BYTE PTR [SI],'['
    JE SOURCE_FIND_MEMORY
    JMP PREREQUIRE
   SOURCE_FIND_MEMORY:
    ;;;;;; IF ACHIVED HERE THEN ITS MEMORY 
    MOV SRC_FLAG,0
    MOV AL,DEST_FLAG
    MOV SRC_SIZE,AL 
    
     ;;;;;;;;;;;CHECK [BX]     IN THE SOURCE
    CMP BYTE PTR [SI+1],'B'
    JNE SRC_MEMORY_SECOND1
    
    CMP BYTE PTR [SI+2],'X'
    JNE SRC_MEMORY_SECOND1 
    
    MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    ADD BX,BX_REG 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE1
    MOV AL,[BX]
    MOV VALUE,AL
     RET
    
    MEMORY_SOURCE_2BYTE1: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
     RET 
    ;;;;;;;;;;;;;;;CHECK [SI]   IN THE SOURCE
    SRC_MEMORY_SECOND1:
    CMP BYTE PTR [SI+1],'S'
    JNE SRC_MEMORY_SECOND2
    
    CMP BYTE PTR [SI+2],'I'
    JNE SRC_MEMORY_SECOND2 
    
    MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    ADD BX,SI_REG 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE2
    MOV AL,[BX]
    MOV VALUE,AL
    RET
    
    MEMORY_SOURCE_2BYTE2: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
    RET 
    ;;;;;;;;;;;;;;;CHECK [DI]  IN THE SOURCE
    SRC_MEMORY_SECOND2:
    CMP BYTE PTR [SI+1],'D'
    JNE SRC_MEMORY_NUMBERS
    
    CMP BYTE PTR [SI+2],'I'
    JNE SRC_MEMORY_NUMBERS
    
    MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    ADD BX,DI_REG 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE3
    MOV AL,[BX]
    MOV VALUE,AL
    RET
    
    MEMORY_SOURCE_2BYTE3: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
    RET
    
    CMP BYTE PTR [SI+2],"]"
    JE SRC_MEMORY_NUMBERS
    MOV INVALID,1
    RET
    ;;;;;;;;;;;;;;;CHECK [3] IN THE SOURCE 
    SRC_MEMORY_NUMBERS: 
    MOV AL,[SI+1]
    
    CMP AL,48D
    JNB NOT_BELOOW_ASSCI_0
     MOV INVALID,1
     RET
    NOT_BELOOW_ASSCI_0:
    CMP AL,57D
    JA SOURCE_NUMBERS1
    SUB AL,48D
        
    MOV AH,1
    JMP SRC_FIND 
        
    SOURCE_NUMBERS1:CMP AL,65D
    JNB NOT_BELOOW_ASSCI_A
     MOV INVALID,1
     RET
    NOT_BELOOW_ASSCI_A:
        
    CMP AL,70D
    JNA NOT_ABOVE_ASSCI_F
     MOV INVALID,1
     RET
    NOT_ABOVE_ASSCI_F:
    SUB AL,55D
        
    SRC_FIND:
     MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    MOV AH,0
    ADD BX,AX 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE4
    MOV AL,[BX]
    MOV VALUE,AL
    RET
    
    MEMORY_SOURCE_2BYTE4: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
    RET   
    ;;;;;;;;;;;;;BEFORE ENTER THE SOURCE WE NEED TO SAVE THE VALUE OF THE BEGGING ACORDING TO DES MODE
    ;;;;;;;;;;;;;;; INTIALY WE COULD WORK WITH INS+7 
    
    PREREQUIRE:
    MOV CX,16
    CLEAR_VALUE:
        MOV BX,OFFSET  VALUE 
        ADD BX,CX
        DEC BX
        MOV BYTE PTR [BX],0
        LOOP CLEAR_VALUE     
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    MOV CL,0 ;; COUNTER TO TELL US HOW MANY DIGITS THAT USER ENTERS 
    MOV CH,0  ;;;COUNTER TO TELL US HOW MANY BYTS
    MOV SRC_SIZE,0H
    FIND1:
        CMP CH,2D
        JNE MAD_1
        SUB CH,2
        INC SRC_SIZE
              
        MAD_1:MOV AL,[SI]
        MOV AH,0H 
        
        CMP AL,48D
        JB PREREQUIRE2
        CMP AL,57D
        JA MID
        SUB AL,48D
        
        MOV AH,1
        JMP FIND2 
        
        MID:CMP AL,65D
        JB PREREQUIRE2 
        
        CMP AL,70D
        JA PREREQUIRE2
        SUB AL,55D
        
        
        
        FIND2:
        INC CH 
        INC SI
        INC CL
     JMP FIND1
      
               
    PREREQUIRE2:
    ;;PUT THE NUMBER INTO THE ARRAY VALUE AFTER COUNTION ITS DIGITS
    
    CMP CH,1
    JNE SRC_PRE1
    INC SRC_SIZE
    
    SRC_PRE1:
    CMP DEST_FLAG,2
    JNE SRC_PRE2
    
    CMP SRC_SIZE,2
    JNB SRC_PRE2
    MOV SRC_SIZE,2
    
   SRC_PRE2: MOV AL,SRC_SIZE
    MOV  TEMP1,AL
    
    MOV BH,0 ;;COUNTER TO DETERMINE IF WE NEED TO MUL THE NUMBER BY 10 OR NOT          
    SOURCE_PUT_VALUE:
    ;;;RESTART BH IF IT ACHIVE 2
    CMP BH,2D
    JNE MAD_2
    SUB BH,2
    DEC TEMP1
    
    MAD_2:
    MOV CH,0                                       
    MOV SI,OFFSET INS_START          ;;;; SET SI TO THE CORRECT DEGIT
    ADD SI,SRC_START
    ADD SI,CX
    DEC SI
    
    
    MOV AL,[SI]  ;;;;; SET THE VALUE OF THE DIGID IN THE AL
    MOV AH,0H 
        
    CMP AL,48D
    JB MLTIEND1
    CMP AL,57D
    JA MID1
    SUB AL,48D
        
    MOV AH,1
    JMP FIND3 
        
    MID1:CMP AL,65D
    JB MLTIEND1 
        
    CMP AL,70D
    JA MLTIEND1
    SUB AL,55D
        
        
        
    FIND3:MOV AH,0H  
        MOV BL,10H 
        
        CMP BH,1
        JNE MAD_3
        MUL BL
        MAD_3: 
        ;;;; SET THE POSITION WE WANT TO GET VALUE FROM IT 
        MOV SI,OFFSET  VALUE     
        MOV DH,0
        MOV DL,TEMP1
       
        ADD SI,DX
        DEC SI
        ADD [SI],AL
   
    INC BH
    DEC CL
    JNZ SOURCE_PUT_VALUE
    
    MLTIEND1:  ;;ERROR
    RET
 ENDM SET_DES_SOURCE  
    
    
 CHECK_ERROR  MACRO 
      CMP src_flag,0                 ; src is memory
     JE src_0
     
     CMP src_flag,1                 ; src is 1 byte reg
     JE src_1
     
     CMP src_flag,2                 ; src is 2 byte reg
     JE src_2
     JNE src_3                      ; src is a value  
     
     
;#################################### <-( source is memory )-> ############################
     src_0:
          
     CMP dest_flag, 0               ; dest is memory  ( NOT Valid )
     JE memory_to_memory_err
     JNE dest_1_0 
     memory_to_memory_err:
     MOV INVALID,1
      RET 
      
     dest_1_0:                      ;example --> mov al,[0]    ( valid )
     CMP dest_flag, 1
     ;JE Execute_Instruction        
     JNE dest_2_0
     
     dest_2_0:                      ;example --> mov ax,[0]    ( valid )
     CMP dest_flag, 2
     ;JE Execute_Instruction        
     JNE dest_3_0       
     
     dest_3_0:                      ;example --> mov 2,[0]   ( NOT Valid )
     CMP dest_flag, 3
     JE memory_to_memory_err        
     
;#################################### <-( source is 1 byte reg )-> ############################
     src_1:
     
     CMP dest_flag, 0               ;example --> mov [5],al    ( valid ) ### check that location of memory <=15 
     ;JE Execute_Instruction        
     JNE dest_1_1 
      
     dest_1_1:                      ;example --> mov bl,al    ( valid )
     CMP dest_flag, 1
     ;JE Execute_Instruction        
     JNE dest_2_1
     
     dest_2_1:                      ;example --> mov ax,al    ( NOT Valid  )
     CMP dest_flag, 2
     JE size_mismatch_err           
     JNE dest_3_1                   
     size_mismatch_err:
     MOV INVALID,1
     RET 
     
     dest_3_1:                      ;example --> mov 4,al    ( Valid if memory location <= 15  )   ;;ALREDY DONE 
     CMP dest_flag, 3
     JE check_memory_location
     check_memory_location:
     CMP BYTE PTR [DI],15                    ; memory form 0 - F
     JA  invalid_memory_location 
     ;JNAE Execute_instruction    
     invalid_memory_location:
     MOV INVALID,1
      RET 
     
;#################################### <-( source is 2 byte reg )-> ############################
     src_2:
     
     CMP dest_flag, 0               ;example --> mov [5],ax    ( valid ) ### check that location of memory <=15
     ;JE Execute_Instruction        
     JNE dest_1_2 
      
     dest_1_2:                      ;example --> mov al,ax    ( NOT Valid )
     CMP dest_flag, 1
     JE size_mismatch_err           
     JNE dest_2_2
     
     dest_2_2:                      ;example --> mov bx,ax    ( Valid  )
     CMP dest_flag, 2
     ;JE Execute_Instruction        
     JNE dest_3_2
     
     
     
     dest_3_2:                      ;example --> mov 5,ax    ( Valid if memory location <= 15  )
     CMP dest_flag, 3
     JE check_memory_location
     
;#################################### <-( source is a value )-> ############################
     src_3:
     
     CMP dest_flag, 0                    ;example --> mov [2],value    ( valid )      ### check that location of memory <=15
     ;JE Execute_Instruction             
     JNE dest_1_3 
      
     dest_1_3:                           ;example --> mov al,value    ( Valid )
     CMP dest_flag, 1
     JE check_value_size_is_1Byte        
     JNE dest_2_3
     check_value_size_is_1Byte:
     CMP src_size,1
     JA  size_mismatch_err
     ;JNAE Execute_instruction
     
     
     dest_2_3:                           ;example --> mov ax,value    ( Valid )
     CMP dest_flag, 2
     JE check_value_size_is_2Byte        
     JNE dest_3_3
     check_value_size_is_2Byte:
     CMP src_size,2
     JA  size_mismatch_err
     ;JNA Execute_instruction
     
     
     
     
     dest_3_3:                          ;example --> mov 2,2   ( Valid for memory location <= 15 )
     CMP dest_flag, 3
     JE check_memory_location
     RET           
ENDM CHECK_ERROR       

READ_INS_FROM_USER MACRO 
     MOV DX,OFFSET STRING1
    MOV AH,9
    INT 21H
    

           
    MOV DX,OFFSET INDATA  
    MOV AH,0AH
    INT 21H 
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    RET
ENDM READ_INS_FROM_USER 
    
END MAIN

ret