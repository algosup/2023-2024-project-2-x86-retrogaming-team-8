
org 100h

section .bss
        backBufferSeg resw 1


section .data

yPos dw 0
xPos dw 0
yVelocity dw 0
xVelocity dw 1


        PacManDefault   db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,



section .text

call heap_init
mov ax, 1000h
call heap_allocate
mov [backBufferSeg], ax

mov ax, 13h      ; Set Video Mode 4F02h (VBE mode 101h) - 320x200, 256 colors
;mov bx, 101h    ; VBE mode 101h
int 10h

GameLoop:

mov al, 0FFh
call clearScreen
;call printMaze
mov di, [xPos]
mov si, PacManDefault
call printplayer
call presentBackBuffer
mov bx, [xPos]
add bx, [xVelocity]
mov word [xPos], bx

mov ah, 01h
    int 16h

mov cx, 10000

wait_key_loop:
       cmp ah, 48h ;if button "up arrow" pressed go to the programm MoveUp
       je MoveUp
       cmp ah, 50h ;if button "down arrow" pressed go to the programm MoveDown
       je MoveDown
       cmp ah, 4Bh ;if button "left arrow" pressed go to the programm MoveLeft
       je MoveLeft
       cmp ah, 4Dh ;if button "right arrow" pressed go to the programm MoveRight
       je MoveRight
       jne wait_key_loop

NoKeyPress:
    ; Update Pacman position based on velocity
    mov di, word [yPos]      ; Use yPos for vertical position
    mov si, PacManDefault
    call printplayer
    call presentBackBuffer

    mov bx, word [xPos]
    add bx, word [xVelocity]
    mov word [xPos], bx

    mov bx, word [yPos]
    add bx, word [yVelocity]
    mov word [yPos], bx


WaitLoop:
    ; Check boundaries and change velocity if necessary
    cmp word [xPos], 320-10
    je ChangeVelocityX
    cmp word [xPos], 0
    je ChangeVelocityX

    cmp word [yPos], 200-10
    je ChangeVelocityY
    cmp word [yPos], 0
    je ChangeVelocityY

    jmp GameLoop
;reset the keyboard buffer and then wait for a keypress :
MoveUp:
    add word [yVelocity], 1
    mov word [xVelocity], 0
    jmp NoKeyPress

MoveDown:

    sub word [yVelocity], 1
    mov word [xVelocity], 0
    jmp NoKeyPress

MoveLeft:
    sub word [xVelocity], 1
    mov word [yVelocity], 0
    jmp NoKeyPress

MoveRight:
    add word [xVelocity], 1
    mov word [yVelocity], 0
    jmp NoKeyPress

ChangeVelocityX:
    neg word [xVelocity]
    jmp GameLoop

ChangeVelocityY:
    neg word [yVelocity]
    jmp GameLoop

Exit:
mov ax, 0C01h ; 
int 21h

;dos box default video mode
mov ax, 03h 
int 21h

int 20h ;quit





the_functions:

; need to set the color of filling in al
clearScreen:
mov ax, [cs:backBufferSeg]
mov es, ax
mov di, 0
mov cx, 320*200
mov al, 0xFF
rep stosb
ret 

presentBackBuffer:
push ds
push es
mov ax, [cs:backBufferSeg]
mov ds, ax
mov ax, 0A000h
mov es, ax
xor si, si
xor di, di
mov cx, 320*200
rep movsb
pop es
pop ds
ret


loopy5:
    mov cx, 10
    rep movsb
    add di, 320-10
    dec dx
    jnz loopy5
ret

printplayer:
mov ax, [cs:backBufferSeg]
mov es, ax
mov dx, 10
loopyy:
    mov cx, 10
    rep movsb
    add di, 320-10
    dec dx
    jnz loopyy
ret



%include "seg.inc"