
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; MACRO
include "emu8086.inc"
MyMacro MACRO p1,p2,p3
    mov ax, p1
    mov bx, p2
    mov cx, p3
ENDM

SIZE EQU 20

org 100h

;1 define variables
mov al, var1
mov bx, var2
;2 change variables
mov var1, 8
mov var2, 0ABCDh
mov al, var1
mov bx, var2
 
 
;3 video display memory program
;mov ax, 0xB800
;mov ds, ax
;mov cl, 'A'
;mov ch, 00001111b
;mov bx, 0000h
;mov [bx], cx
  
  
;4 macros
MyMacro 1,2,3
MyMacro 4,5,dx
 
 
;5 program that inputs two numbers from keyboard then find sum
PRINTN "Enter first integer"
call SCAN_NUM ;get first integer
mov ax,cx
PRINTN ;new line
PRINTN "Enter second integer"
call SCAN_NUM
add ax,cx
PRINTN ;new line
PRINTN "The sum is"
call PRINT_NUM ; print contents of ax


;6
printn "Enter a string"
lea di,buffer
mov dx,SIZE
call get_string
printn
printn "Original string is"
mov si,di
call print_string
printn

printn "Another way to print (first two letters only)"
mov bx,di
mov ah,0Eh
mov al,[bx]
int 10h
inc bx
mov al,[bx]
int 10h 
   
ret
var1 DB 7
var2 DW 1234h
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
buffer DB SIZE DUP(?)
define_get_string
define_print_string
