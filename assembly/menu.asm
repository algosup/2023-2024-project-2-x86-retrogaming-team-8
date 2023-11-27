org 100h

section .data
    buttonX dw 100          ; X-coordinate of the button
    buttonY dw 100          ; Y-coordinate of the button
    buttonWidth dw 80       ; Width of the button
    buttonHeight dw 40      ; Height of the button

section .text
    global _start

_start:
    ; Wait for a key press
    mov ah, 0
    int 16h

    ; AH register now contains the ASCII code of the pressed key
    ; You can use AH for further processing or printing

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 80h

title:

draw_button1:
mov ax, 0013h
int 10

draw_button2:

draw_button3:

