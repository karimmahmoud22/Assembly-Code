.MODEL SMALL
.STACK 64
.DATA

NEWLINE DB 10,13,'$'

.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX 
       
    MOV AH,0  
    MOV BH,3   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 333333333333333
    MOV AL,12H
    INT 10H 
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,350
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK43:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK43  
    
    
    MOV CX,350
    MOV DX,245
    MOV AL,14
    MOV AH,0CH
    BACK44:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK44     
    
    
    MOV CX,450
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK45:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK45  
    
    
    MOV CX,450
    MOV DX,245
    MOV AL,14
    MOV AH,0CH
    BACK46:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK46    
    
    MOV CX,550
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK47:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK47  
    
    
    MOV CX,550
    MOV DX,245
    MOV AL,14
    MOV AH,0CH
    BACK48:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK48
         
          
         
    MOV CX,350
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK49:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK49          
         
    MOV CX,450
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK50:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK50 

    MOV CX,550
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK51:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK51 
    
    
    
    MOV CX,430
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK52:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK52         
         
    MOV CX,530
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK53:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK53 

    MOV CX,630
    MOV DX,220
    MOV AL,14
    MOV AH,0CH
    BACK54:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK54

                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,350
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK55:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK55  
    
    
    MOV CX,350
    MOV DX,285
    MOV AL,14
    MOV AH,0CH
    BACK56:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK56     
    
    
    MOV CX,450
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK57:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK57  
    
    
    MOV CX,450
    MOV DX,285
    MOV AL,14
    MOV AH,0CH
    BACK58:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK58    
    
    MOV CX,550
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK59:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK59  
    
    
    MOV CX,550
    MOV DX,285
    MOV AL,14
    MOV AH,0CH
    BACK60:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK60
         
          
         
    MOV CX,350
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK61:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACK61          
         
    MOV CX,450
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK62:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACK62 

    MOV CX,550
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK63:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACK63 
    
    
    
    MOV CX,430
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK64:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACK64          
         
    MOV CX,530
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK65:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACK65 

    MOV CX,630
    MOV DX,260
    MOV AL,14
    MOV AH,0CH
    BACK66:
         INT 10H
         INC DX
         CMP DX,285
         JNZ BACK66

                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,400
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK67:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK67  
    
    
    MOV CX,400
    MOV DX,325
    MOV AL,14
    MOV AH,0CH
    BACK68:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK68     
    
    
    
    MOV CX,500
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK69:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK69   
    
    MOV CX,500
    MOV DX,325
    MOV AL,14
    MOV AH,0CH
    BACK70:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK70  
         
          
         
    MOV CX,400
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK71:
         INT 10H
         INC DX
         CMP DX,325
         JNZ BACK71          
         
    MOV CX,480
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK72:
         INT 10H
         INC DX
         CMP DX,325
         JNZ BACK72 

    MOV CX,500
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK73:
         INT 10H
         INC DX
         CMP DX,325
         JNZ BACK73 
    
    
    
    MOV CX,580
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK74:
         INT 10H
         INC DX
         CMP DX,325
         JNZ BACK74          
                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
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
    
            
    mov  dl, 3   ;Column
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
    
    mov  dl, 6   ;Column
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
        
    mov  dl, 8   ;Column
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
    
    mov  dl, 11   ;Column
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
        
    mov  dl, 14   ;Column
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
    
    mov  dl, 16   ;Column
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
    
    mov  dl, 19   ;Column
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

    mov  dl, 21   ;Column
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
    
    mov  dl, 24   ;Column
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

    mov  dl, 26   ;Column
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
    
    mov  dl, 29   ;Column
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

    mov  dl, 31   ;Column
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

    mov  dl, 34   ;Column
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
        

    mov  dl, 36   ;Column
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
        
        
    mov  dl, 39   ;Column
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
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,350
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK11:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK11  
    
    
    MOV CX,350
    MOV DX,25
    MOV AL,14
    MOV AH,0CH
    BACK12:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK12     
    
    
    MOV CX,450
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK13:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK13  
    
    
    MOV CX,450
    MOV DX,25
    MOV AL,14
    MOV AH,0CH
    BACK14:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK14    
    
    MOV CX,550
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK15:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK15  
    
    
    MOV CX,550
    MOV DX,25
    MOV AL,14
    MOV AH,0CH
    BACK16:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK16
         
          
         
    MOV CX,350
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK17:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK17          
         
    MOV CX,450
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK18:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK18 

    MOV CX,550
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK19:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK19 
    
    
    
    MOV CX,430
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK20:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK20          
         
    MOV CX,530
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK21:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK21 

    MOV CX,630
    MOV DX,1
    MOV AL,14
    MOV AH,0CH
    BACK22:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK22

                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,350
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK23:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK23  
    
    
    MOV CX,350
    MOV DX,65
    MOV AL,14
    MOV AH,0CH
    BACK24:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK24     
    
    
    MOV CX,450
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK25:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK25  
    
    
    MOV CX,450
    MOV DX,65
    MOV AL,14
    MOV AH,0CH
    BACK26:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK26    
    
    MOV CX,550
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK27:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK27  
    
    
    MOV CX,550
    MOV DX,65
    MOV AL,14
    MOV AH,0CH
    BACK28:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK28
         
          
         
    MOV CX,350
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK29:
         INT 10H
         INC DX
         CMP DX,65
         JNZ BACK29          
         
    MOV CX,450
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK30:
         INT 10H
         INC DX
         CMP DX,65
         JNZ BACK30 

    MOV CX,550
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK31:
         INT 10H
         INC DX
         CMP DX,65
         JNZ BACK31 
    
    
    
    MOV CX,430
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK32:
         INT 10H
         INC DX
         CMP DX,65
         JNZ BACK32          
         
    MOV CX,530
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK33:
         INT 10H
         INC DX
         CMP DX,65
         JNZ BACK33 

    MOV CX,630
    MOV DX,40
    MOV AL,14
    MOV AH,0CH
    BACK34:
         INT 10H
         INC DX
         CMP DX,65
         JNZ BACK34

                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
                   
    MOV CX,400
    MOV DX,80
    MOV AL,14
    MOV AH,0CH
    BACK35:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK35  
    
    
    MOV CX,400
    MOV DX,105
    MOV AL,14
    MOV AH,0CH
    BACK36:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK36     
    
    
    
    MOV CX,500
    MOV DX,80
    MOV AL,14
    MOV AH,0CH
    BACK37:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK37    
    
    MOV CX,500
    MOV DX,105
    MOV AL,14
    MOV AH,0CH
    BACK38:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK38  
         
          
         
    MOV CX,400
    MOV DX,80
    MOV AL,14
    MOV AH,0CH
    BACK39:
         INT 10H
         INC DX
         CMP DX,105
         JNZ BACK39          
         
    MOV CX,480
    MOV DX,80
    MOV AL,14
    MOV AH,0CH
    BACK40:
         INT 10H
         INC DX
         CMP DX,105
         JNZ BACK40 

    MOV CX,500
    MOV DX,80
    MOV AL,14
    MOV AH,0CH
    BACK41:
         INT 10H
         INC DX
         CMP DX,105
         JNZ BACK41 
    
    
    
    MOV CX,580
    MOV DX,80
    MOV AL,14
    MOV AH,0CH
    BACK42:
         INT 10H
         INC DX
         CMP DX,105
         JNZ BACK42          
                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                        
    MOV CX,1
    MOV DX,1
    MOV AL,11
    MOV AH,0CH
    BACK1:
         INT 10H
         INC CX
         CMP CX,322
         JNZ BACK1
         
    MOV CX,1
    MOV DX,25
    MOV AL,11
    MOV AH,0CH
    BACK3:
         INT 10H
         INC CX
         CMP CX,322
         JNZ BACK3    

            
    MOV CX,1
    MOV DX,1
    MOV AL,11
    MOV AH,0CH
    BACK5:
         INT 10H
         INC DX
         CMP DX,25
         JNZ BACK5
         JZ BACK6
    
    BACK6:
         ADD CX,20
         MOV DX,1
         CMP CX,341
         JNZ BACK5
                
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    
    mov  dl, 1   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 48  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
            
    mov  dl, 3   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 49  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
    
    mov  dl, 6   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 50  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
        
    mov  dl, 8   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 51  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H    
    
    mov  dl, 11   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 52  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
        
    mov  dl, 14   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 53  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 16   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 54  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H    
    
    mov  dl, 19   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 55  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 

    mov  dl, 21   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 56  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 24   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 57  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H     

    mov  dl, 26   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H
    
    mov  dl, 29   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H     

    mov  dl, 31   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 

    mov  dl, 34   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
        

    mov  dl, 36   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 69  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H 
        
        
    mov  dl, 39   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 70  ;Color is red
    MOV CX,1
    MOV BL,00AH
    INT 10H  
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    MOV CX,1
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK7:
         INT 10H
         INC CX
         CMP CX,322
         JNZ BACK7
     
    MOV CX,1
    MOV DX,245
    MOV AL,11
    MOV AH,0CH
    BACK8:
         INT 10H
         INC CX
         CMP CX,322
         JNZ BACK8    

            
    MOV CX,1
    MOV DX,220
    MOV AL,11
    MOV AH,0CH
    BACK9:
         INT 10H
         INC DX
         CMP DX,245
         JNZ BACK9
         JZ BACK10
    
    BACK10:
         ADD CX,20
         MOV DX,220
         CMP CX,341
         JNZ BACK9
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    
    
    
    
    
    
    
    
    
    
    
    
      
     LL: 
       HLT
            
    MAIN ENDP
END MAIN