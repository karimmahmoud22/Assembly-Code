.MODEL SMALL
.DATA
.CODE
MAIN PROC FAR
         
     mov al,12h
     mov ah,0
     int 10h


mov al,9h  ;color
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
int  10h

mov  al, 1
add  al,30h
mov  bl, 0Ch  ;Color is red
mov  bh, 0    ;Display page
mov  ah, 0Eh  ;Teletype
int  10h


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
int  10h

mov  al, 1
add  al,30h
mov  bl, 0Ch  ;Color is red
mov  bh, 0    ;Display page
mov  ah, 0Eh  ;Teletype
int  10h


mov al,0eh  ;color
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
mov  dh, 5  ;Row
mov  bh, 0    ;Display page
mov  ah, 02h  ;SetCursorPosition
int  10h

mov  al, 1
add  al,30h
mov  bl, 0Ch  ;Color is red
mov  bh, 0    ;Display page
mov  ah, 0Eh  ;Teletype
int  10h


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
int  10h

mov  al, 1
add  al,30h
mov  bl, 0Ch  ;Color is red
mov  bh, 0    ;Display page
mov  ah, 0Eh  ;Teletype
int  10h


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
int  10h

mov  al, 1
add  al,30h
mov  bl, 0Ch  ;Color is red
mov  bh, 0    ;Display page
mov  ah, 0Eh  ;Teletype
int  10h
   
END MAIN
ENDP MAIN