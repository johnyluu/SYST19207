org 100h ; Set starting address for the program

; Data segment
string db "HELLO, WORLD!", 0 ; Input string ending with null terminator

; Code segment
mov si, offset string ; Load address of the string into SI
mov di, si            ; Copy SI to DI for end finding

; Find the end of the string
find_end:
    cmp byte ptr [di], 0 ; Check if current character is null
    je start_reverse     ; If null, end is found
    inc di               ; Move to the next character
    jmp find_end

start_reverse:
    dec di               ; Point DI to the last character (before null)

reverse_loop:
    cmp si, di           ; Check if SI has crossed DI
    jge display_characters ; If yes, reversing is complete

    ; Swap characters at SI and DI
    mov al, [si]         ; Load character from SI into AL
    mov bl, [di]         ; Load character from DI into BL
    mov [si], bl         ; Store character from BL to SI
    mov [di], al         ; Store character from AL to DI

    ; Increment SI and decrement DI
    inc si
    dec di
    jmp reverse_loop

display_characters:
    mov si, offset string ; Reload address of the reversed string

print_loop:
    mov al, [si]         ; Load current character
    cmp al, 0            ; Check for null terminator
    je done              ; If null, end the loop
    mov dl, al           ; Load character into DL for printing
    mov ah, 02h          ; DOS function to print character
    int 21h              ; Print the character
    inc si               ; Move to the next character
    jmp print_loop

done:
    ; Program end - infinite loop
    hlt
