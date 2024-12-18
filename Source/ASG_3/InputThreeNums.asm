
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
                                                       
printn 'Enter First number: '
CALL scan_num ;gets number into cx
Mov ax,cx


printn 'Enter Second number: '
CALL scan_num
mov bx, cx

printn 'Enter Third number: '
CALL scan_num

add ax, bx
add ax, cx  


printn 'Sum of Three Numbers'
call print_num

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END