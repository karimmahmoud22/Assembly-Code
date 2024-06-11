.MODEL SMALL
.STACK 64
.DATA

NEWLINE DB 10,13,'$'

.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX 
       
    MOV AH,0  
    MOV BH,3
    MOV AL,12H
    INT 10H 
    
    
    mov  dl, 1   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '0'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h
            
    mov  dl, 3   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '1'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 
    
    mov  dl, 6   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '2'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 
        
    mov  dl, 8   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '3'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h     
    
    mov  dl, 11   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '4'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 
        
    mov  dl, 14   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '5'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 
    
    mov  dl, 16   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '6'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h     
    
    mov  dl, 19   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '7'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 

    mov  dl, 21   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '8'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 
    
    mov  dl, 24   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, '9'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h     

    mov  dl, 26   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, 'A'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h 
    
    mov  dl, 29   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, 'B'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h     

    mov  dl, 31   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, 'C'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h  

    mov  dl, 34   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, 'D'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h  
        

    mov  dl, 36   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, 'E'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h  
        
        
    mov  dl, 39   ;Column
    mov  dh, 2   ;Row
    mov  bh, 0    ;Display page
    mov  ah, 02h  ;SetCursorPosition
    int  10h
    
    mov  al, 'F'
    mov  bl, 0Ch  ;Color is red
    mov  bh, 0    ;Display page
    mov  ah, 0Eh  ;Teletype
    int  10h  
                

                                                                        
    MOV CX,1
    MOV DX,1
    MOV AL,6
    MOV AH,0CH
    BACK1:
         INT 10H
         INC CX
         CMP CX,322
         JNZ BACK1
         
    MOV CX,1
    MOV DX,25
    MOV AL,6
    MOV AH,0CH
    BACK3:
         INT 10H
         INC CX
         CMP CX,322
         JNZ BACK3    

            
    MOV CX,1
    MOV DX,1
    MOV AL,6
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
    
            
      
     LL: 
       HLT
            
    MAIN ENDP
END MAIN