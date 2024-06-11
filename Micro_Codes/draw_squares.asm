.MODEL SMALL
.DATA

start_position  db  50

.CODE
MACRO draw_square color, X_start_position, Y_start_position, length, load, column_to_print_load

LOCAL loop1
LOCAL loop2
     


mov al,color  ;color
mov ah,0ch

mov cx,X_start_position    ; start position
mov dx,Y_start_position    ; start position

loop1:      ; outer loop to draw the lines
int 10h
mov bx,cx   ; store the start position to return to it after drawing the line


loop2:      ; inner loop to draw the pixels of each line
inc cx
int 10h

mov si,X_start_position ; si = start positon + length
add si,length

cmp cx,si   ; loop until the last pixel of the line  
JNE loop2

mov cx,bx   ; assign the start of the next line to cx
inc dx      ; increment the y_position

mov si,Y_start_position ; si = start positon + length
add si,length

cmp dx,si   ; loop until the last line of the square
JLE loop1   ; less or equal to draw the last line


;print the load

mov  dl, column_to_print_load   ;Column
mov  dh, 20   ;Row
mov  bh, 0    ;Display page
mov  ah, 02h  ;SetCursorPosition
int  10h

mov  al, load
add  al,30h
mov  bl, 0Ch  ;Color is red
mov  bh, 0    ;Display page
mov  ah, 0Eh  ;Teletype
int  10h

    

ENDM   


MACRO draw_squares
     
     mov al,12h
     mov ah,0
     int 10h
     
     
     draw_square 9h , 50 , 70, 25, 1, 7
     draw_square 0ch, 90 , 70, 25, 2, 12
     draw_square 0eh, 130, 70, 25, 3, 17
     draw_square 3h , 170, 70, 25, 4, 22
     draw_square 2h , 210, 70, 25, 5, 27
     
     
    
ENDM


MAIN PROC FAR
     
     draw_squares
    
END MAIN
ENDP MAIN







