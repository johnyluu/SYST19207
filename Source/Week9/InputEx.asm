
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include "emu8086.inc"
org 100h
PRINTN "Enter firstinteger "
call SCAN_NUM; g e t f i r s t i n t e g e r
mov ax,cx

PRINTN ;new l i n e
PRINTN "Enter second integer "
call SCAN_NUM
add ax,cx

PRINTN ;new l i n e
PRINTN "The sum is "
call PRINT_NUM ; p r i n t contents o f ax
ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
end
