.MODEL small
.CODE 
MAIN PROC FAR 
        mov ax,0003h ; To Clear screen
        int 10h	

        mov ax,0b800h 
        mov es,ax
        
        mov es:[322], BYTE PTR 'A'      ;(row*80+col)*2
        mov es:[323], BYTE PTR 04Fh    
        
        mov ah,7 ; Wait for key press
        int 21h
 
        mov ax, 0A000h      ; to graphics screen
        mov es, ax      
        
        mov ah,0
        mov al,13h
        int 10h			;switch to 320x200 mode
        
        mov di, 320      ; (row*320+col)
        mov Al,0eH
        mov cx,320        
        rep STOSB
    t:hlt
MAIN ENDP
END MAIN