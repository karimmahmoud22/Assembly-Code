.MODEL SMALL
.STACK 64
.DATA

position_1          db  1
position_2          db  12
nofication_bar_msg  db  'Press F3 to end chat $'  
user_name           db  'Ali:$'
the_other_name      db  'ahmed:$'
user_1_msg          db  160,?,dup($)  
user_2_msg          db  160,?,dup($)



.CODE
MAIN PROC FAR

MOV DX,@DATA
MOV DS,DX    


startChat:
mov position_1,1
mov position_2,12

; clear the screen
;mov ax,0600h
;mov bh,07
;mov cx,0
;mov dx,184FH
;int 10h



; print user name 
mov ah,2
mov dl,0
mov dh,0
int 10h

mov ah, 9
mov dx, offset user_name
int 21h


; print the dashed line ( in center of the screen ) 

mov ah,2
mov dl,0
mov dh,10
int 10h


mov ah,9 ;Display
mov bh,0 ;Page 0
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h


mov ah,2
mov dl,0
mov dh,11
int 10h

mov ah, 9
mov dx, offset the_other_name
int 21h


; print the notification Bar  

mov ah,2
mov dl,0
mov dh,22
int 10h


mov ah,9 ;Display
mov bh,0 ;Page 0
mov al,'-' ;Letter D
mov cx,80 ;80 times
mov bl,00Ah ;Green (A) on white(F) background
int 10h


mov ah,2
mov dl,0
mov dh,23
int 10h

mov ah, 9
mov dx, offset nofication_bar_msg
int 21h
    
    


mainUser_msg:
mov ah,2
mov dl,0            
mov dh,position_1       ; position to write msg
int 10h


    
mov ah,0AH
mov dx,offset user_1_msg
int 21h

inc position_1          ; for the next msg


mov bx, offset user_1_msg+1         ; size of msg
mov al, [bx]
mov ah,0
mov bx, offset user_1_msg+2
add bx,ax
mov [bx],'$'

 

anotheUser_msg:
mov ah,2
mov dl,0            
mov dh,position_2       ; position to write msg
int 10h


    
mov ah,0AH
mov dx,offset user_2_msg
int 21h

inc position_2          ; for the next msg


mov bx, offset user_2_msg+1         ; size of msg
mov al, [bx]
mov ah,0
mov bx, offset user_2_msg+2
add bx,ax
mov [bx],'$'

cmp position_1,10       ; to not overlap the dashed line in the center
JNE mainUser_msg 
JE startChat
; print the msg entered by user
;mov ah, 9
;mov dx, offset user_1_msg+2

;int 21h
;inc position_1



    







endChat:hlt     ; must be changed to go to the page number 1 (choose play or chat or exit)


    
    
    
    
ENDP MAIN
END MAIN