DRAW1 MACRO
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

ENDM DRAW1



DRAW2 MACRO
LOCAL AGAIN

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
 
ENDM DRAW2




DRAW3 MACRO
LOCAL AGAIN

                                                                        
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
    

ENDM DRAW3




DRAW4 MACRO
LOCAL AGAIN

                                                                        
    MOV CX,400
    MOV DX,100
    MOV AL,14
    MOV AH,0CH
    BACK35:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK35  
    
    
    MOV CX,400
    MOV DX,125
    MOV AL,14
    MOV AH,0CH
    BACK36:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK36     
    
    
    
    MOV CX,500
    MOV DX,100
    MOV AL,14
    MOV AH,0CH
    BACK37:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK37    
    
    MOV CX,500
    MOV DX,125
    MOV AL,14
    MOV AH,0CH
    BACK38:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK38  
         
          
         
    MOV CX,400
    MOV DX,100
    MOV AL,14
    MOV AH,0CH
    BACK39:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK39          
         
    MOV CX,480
    MOV DX,100
    MOV AL,14
    MOV AH,0CH
    BACK40:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK40 

    MOV CX,500
    MOV DX,100
    MOV AL,14
    MOV AH,0CH
    BACK41:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK41 
    
    
    
    MOV CX,580
    MOV DX,100
    MOV AL,14
    MOV AH,0CH
    BACK42:
         INT 10H
         INC DX
         CMP DX,125
         JNZ BACK42 
    

ENDM DRAW4



DRAW5 MACRO
LOCAL AGAIN

                                                                        
                   
    MOV CX,350
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK23:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK23  
    
    
    MOV CX,350
    MOV DX,75
    MOV AL,14
    MOV AH,0CH
    BACK24:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK24     
    
    
    MOV CX,450
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK25:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK25  
    
    
    MOV CX,450
    MOV DX,75
    MOV AL,14
    MOV AH,0CH
    BACK26:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK26    
    
    MOV CX,550
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK27:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK27  
    
    
    MOV CX,550
    MOV DX,75
    MOV AL,14
    MOV AH,0CH
    BACK28:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK28
         
          
         
    MOV CX,350
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK29:
         INT 10H
         INC DX
         CMP DX,75
         JNZ BACK29          
         
    MOV CX,450
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK30:
         INT 10H
         INC DX
         CMP DX,75
         JNZ BACK30 

    MOV CX,550
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK31:
         INT 10H
         INC DX
         CMP DX,75
         JNZ BACK31 
    
    
    
    MOV CX,430
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK32:
         INT 10H
         INC DX
         CMP DX,75
         JNZ BACK32          
         
    MOV CX,530
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK33:
         INT 10H
         INC DX
         CMP DX,75
         JNZ BACK33 

    MOV CX,630
    MOV DX,50
    MOV AL,14
    MOV AH,0CH
    BACK34:
         INT 10H
         INC DX
         CMP DX,75
         JNZ BACK34
    

ENDM DRAW5



DRAW6 MACRO
LOCAL AGAIN

    
                   
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
    

ENDM DRAW6



DRAW7 MACRO
LOCAL AGAIN

                   
    MOV CX,400
    MOV DX,320
    MOV AL,14
    MOV AH,0CH
    BACK67:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK67  
    
    
    MOV CX,400
    MOV DX,345
    MOV AL,14
    MOV AH,0CH
    BACK68:
         INT 10H
         INC CX
         CMP CX,481
         JNZ BACK68     
    
    
    
    MOV CX,500
    MOV DX,320
    MOV AL,14
    MOV AH,0CH
    BACK69:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK69   
    
    MOV CX,500
    MOV DX,345
    MOV AL,14
    MOV AH,0CH
    BACK70:
         INT 10H
         INC CX
         CMP CX,581
         JNZ BACK70  
         
          
         
    MOV CX,400
    MOV DX,320
    MOV AL,14
    MOV AH,0CH
    BACK71:
         INT 10H
         INC DX
         CMP DX,345
         JNZ BACK71          
         
    MOV CX,480
    MOV DX,320
    MOV AL,14
    MOV AH,0CH
    BACK72:
         INT 10H
         INC DX
         CMP DX,345
         JNZ BACK72 

    MOV CX,500
    MOV DX,320
    MOV AL,14
    MOV AH,0CH
    BACK73:
         INT 10H
         INC DX
         CMP DX,345
         JNZ BACK73 
    
    
    
    MOV CX,580
    MOV DX,320
    MOV AL,14
    MOV AH,0CH
    BACK74:
         INT 10H
         INC DX
         CMP DX,345
         JNZ BACK74     
    

ENDM DRAW7




DRAW8 MACRO
LOCAL AGAIN
  
                   
    MOV CX,350
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK55:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK55  
    
    
    MOV CX,350
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK56:
         INT 10H
         INC CX
         CMP CX,431
         JNZ BACK56     
    
    
    MOV CX,450
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK57:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK57  
    
    
    MOV CX,450
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK58:
         INT 10H
         INC CX
         CMP CX,531
         JNZ BACK58    
    
    MOV CX,550
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK59:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK59  
    
    
    MOV CX,550
    MOV DX,300
    MOV AL,14
    MOV AH,0CH
    BACK60:
         INT 10H
         INC CX
         CMP CX,631
         JNZ BACK60
         
          
         
    MOV CX,350
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK61:
         INT 10H
         INC DX
         CMP DX,300
         JNZ BACK61          
         
    MOV CX,450
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK62:
         INT 10H
         INC DX
         CMP DX,300
         JNZ BACK62 

    MOV CX,550
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK63:
         INT 10H
         INC DX
         CMP DX,300
         JNZ BACK63 
    
    
    
    MOV CX,430
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK64:
         INT 10H
         INC DX
         CMP DX,300
         JNZ BACK64          
         
    MOV CX,530
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK65:
         INT 10H
         INC DX
         CMP DX,300
         JNZ BACK65 

    MOV CX,630
    MOV DX,275
    MOV AL,14
    MOV AH,0CH
    BACK66:
         INT 10H
         INC DX
         CMP DX,300
         JNZ BACK66    

ENDM DRAW8



DRAW9 MACRO
LOCAL AGAIN
  
                   
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

ENDM DRAW9



DRAW10 MACRO
LOCAL AGAIN
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

ENDM DRAW10



DRAW11 MACRO
LOCAL AGAIN

    mov  dl, 47   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 48   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

    mov  dl, 60   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,009H
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
    MOV BL,009H
    INT 10H

         

    mov  dl, 72   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H




    mov  dl, 47   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 48   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

     
     
     

    mov  dl, 60   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 5   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,009H
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
    MOV BL,009H
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
    MOV BL,009H
    INT 10H





    mov  dl, 53   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 54   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H



    mov  dl, 66   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 67   ;Column
    mov  dh, 8   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

    
ENDM DRAW11


DRAW12 MACRO
LOCAL AGAIN

    mov  dl, 47   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 65  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 48   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

    mov  dl, 60   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

         

    mov  dl, 72   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 67  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 16   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H




    mov  dl, 47   ;Column
    mov  dh, 19   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 48   ;Column
    mov  dh, 19   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 88  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

     
     
     

    mov  dl, 60   ;Column
    mov  dh, 19   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 61   ;Column
    mov  dh, 19   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

         



    mov  dl, 72   ;Column
    mov  dh, 19   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 68  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 73   ;Column
    mov  dh, 19   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 73  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H





    mov  dl, 53   ;Column
    mov  dh, 22   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 83  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 54   ;Column
    mov  dh, 22   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H



    mov  dl, 66   ;Column
    mov  dh, 22   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 66  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H
    
    mov  dl, 67   ;Column
    mov  dh, 22   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    MOV AH,9
    MOV BH, 0 ;Color is red
    MOV Al, 80  ;Color is red
    MOV CX,1
    MOV BL,009H
    INT 10H

    
ENDM DRAW12




.MODEL SMALL
.STACK 128
.DATA


.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX 
       
    MOV AH,0  
    MOV BH,0   ;;;;;;;;;;;;;;;;PPPPPAAAAAGGGGGEEEE 0 CHANGE IT TO 3
    MOV AL,12H
    INT 10H 
      
      
    DRAW1 
    DRAW2
    DRAW3
    DRAW4
    DRAW5
    DRAW6
    DRAW7
    DRAW8
    DRAW9
    DRAW10
    DRAW11
    DRAW12
            
    MAIN ENDP
END MAIN