
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

; mov instruction
; mov AL, 7 this will move 7 to the AL register
;MOV AL, 5  ; AL = 5
;MOV BL, 10
   
   
; add instruction
; add AL, 10 this will add 10 to register AL
; operand 1 = operand 1 + operand 2
;ADD AL, -3 ; AL = 2 

;mov ax, 9    ;ax = 9
;mov bx, 3    ;bx = 3
;add ax, bx   ;ax + bx = 12 = C
;add ax, 5    ;ax = 11h


; sub instruction
; operand 1 = operand 1 - operand 2
; mov al, 5
; sub AL, 1 ; al=4 

;mov al, 10
;sub al, 5


; MUL instruction
; when operand is byte
; ax = al * operand
; RESULT IS STORED IN AX
;mov al, 80
;mov bl, 70
;mul bl


; when operand is a word
; (DX AX) = AX * operand 
; RESULT IS DX AX
; OR DH DL AH AL
;mov ax, 800 ;more than 8 bits use ax
;mov bx, 700
;mul bx
; Result = 00 08 8B 80
;          DH DL AH AL

; IMUL for signed mulitply
;mov al, -2
;mov bl, -4
;imul bl



;DIV instruction
; when operand is byte
; AL = AX / operand
; AH = remainder
;mov ax, 203
;mov bl, 4
;div bl

; when operand is a word
; AX = (DX AX) / operand
; DX = remainder
;mov dx, 80
;mov ax, 40
;mov bx, 20
;div bx

; these two will be in different registers

;IDIV instruction
;mov ax, -203
;mov bl, 4
;idiv bl 

;HLT instruction
;stops the system
ret




