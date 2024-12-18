
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Lab Practise
;Q1 find result 10+20 then store result in AL 
;mov al, 10  ;al = 0A
;add al, 20  ;al = 1E
 
;Q2 5+9+7
;mov al, 5   ;al = 05
;add al, 9   ;al = 0E
;add al, 7   ;al = 15

;Q3 20-10
;mov al, 20
;sub al, 10

;Q4 (8-5)+7
;mov ax, 8
;sub ax, 5
;add ax, 7

;Q5 12*10
;mov al, 12
;mov dl, 10
;mul dl

;Q6 (8*10)+12
;mov al, 8
;mov bl, 10
;mul bl
;add al,12

;Q7 (10+9)*5
;mov al, 10
;add al, 9
;mov bl, 5
;mul bl

;Q8 205/3
;mov ax, 205
;mov bl, 3
;div bl

;Q9 32bits by 8 bits data
mov Dx, 300
mov Ax, 400
mov bl, 10
div bl


ret




