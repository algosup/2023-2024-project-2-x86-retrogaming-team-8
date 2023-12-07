
org 100h

section .data

    %define SCREEN_WIDTH 320
    %define SCREEN_HEIGHT 200
    spritew dw 8
    spriteh dw 8
    %define SPRITEW 8
    %define SPRITEH 8
    backBufferSeg resw 1
    xPos dw 0     ; Initial x position
    yPos dw 0     ; Initial y position
    xVelocity dw 1  ; Initial x velocity
    yVelocity dw 0  ; Initial y velocity
    actualKeystroke dw 4Dh

    Pacman db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF
           db 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF
           db 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x2C, 0x2C, 0x2C, 0x2C, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
           db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
           ;Pacman sprite

section .text

mov ax, 0013h      ; setting the video mode for 640x480 screen and getting 256 colors. screen can be expanded without problem
int 10h

GameLoop:
    mov al, 0FFh
    call clearScreen
    call wait_key_loop


    ; Check for keypress
    mov ah, 01h
    int 16h

; AH = 0 if no key pressed, AH = ASCII code if key pressed
;jz NoKeyPress

; Check for key and update position


read_character_key_was_pressed:
    mov ah, 01h        ; Check if a key has been pressed (non-blocking)
    int 16h
    jz continue_movement ; If no key pressed, continue current movement

    ; Read the keystroke
    mov ah, 00h
    int 16h
    cmp ah, 4Dh
    je update_keystroke
    cmp ah, 4Bh
    je update_keystroke
    cmp ah, 48h
    je update_keystroke
    cmp ah, 50h
    je update_keystroke
    jmp continue_movement

update_keystroke:
    mov [actualKeystroke], ah  ; Store the new direction
    jmp continue_movement

continue_movement:
    mov al, [actualKeystroke]
    cmp al, 4Dh
    je .move_right
    cmp al, 4Bh
    je .move_left
    cmp al, 48h
    je .move_up
    cmp al, 50h
    je .move_down
    ret
    .move_right:
        call move_right
        ret
    .move_left:
        call move_left
        ret
    .move_up:
        call move_up
        ret
    .move_down:
        call move_down
        ret
    ret

move_right:
    mov word [actualKeystroke], 4Dh
    call Pacman   ; animation
    mov bx, [xPos]
    add bx, 3/2
    cmp bx, SCREEN_WIDTH - SPRITEW 
    jae .skip_move_right
    mov [xPos], bx
.skip_move_right:
    ret
move_left:
    mov word [actualKeystroke], 4Bh
    call Pacman   ; animation
    mov bx, [xPos]
    sub bx, 3/2
    cmp bx, 0
    jbe .skip_move_left
    mov [xPos], bx
.skip_move_left:
    ret

move_up:
    mov word [actualKeystroke], 48h
    call Pacman      ; animation
    mov bx, [yPos]
    sub bx, 3/2
    cmp bx, 0
    jbe .skip_move_up
    mov [yPos], bx
.skip_move_up:
    ret

move_down:
    mov word [actualKeystroke], 50h
    call Pacman   ; animation
    mov bx, [yPos]
    add bx, 3/2
    cmp bx, SCREEN_HEIGHT - SPRITEH 
    jae .skip_move_down
    mov [yPos], bx
    
.skip_move_down:
    ret


wait_key_loop:
;       cmp ah, 48h ;if button "up arrow" pressed go to the programm MoveUp
 ;      je MoveUp
  ;     cmp ah, 50h ;if button "down arrow" pressed go to the programm MoveDown
   ;    je MoveDown
    ;   cmp ah, 4Bh ;if button "left arrow" pressed go to the programm MoveLeft
     ;  je MoveLeft
      ; cmp ah, 4Dh ;if button "right arrow" pressed go to the programm MoveRight
       ;je MoveRight
       ;jne wait_key_loop
NoKeyPress:
    ; Update Pacman position based on velocity
    ;mov di, word [yPos]      ; Use yPos for vertical position
    ;mov si, Pacman
    ;call printplayer
    ;call presentBackBuffer

    ;mov bx, word [xPos]
    ;add bx, word [xVelocity]
    ;mov word [xPos], bx

    ;mov bx, word [yPos]
    ;add bx, word [yVelocity]
    ;mov word [yPos], bx

    ; Wait loop
    ;mov cx, 10000

    WaitLoop:
        ;loop WaitLoop

    ; Check boundaries and change velocity if necessary
    ;cmp word [xPos], 320-16
    ;je ChangeVelocityX
    ;cmp word [xPos], 0
    ;je ChangeVelocityX

    ;cmp word [yPos], 200-16
    ;je ChangeVelocityY
    ;cmp word [yPos], 0
    ;je ChangeVelocityY

    ;jmp GameLoop

MoveUp:
    ;add word [yVelocity], 1
    ;jmp NoKeyPress

MoveDown:

    ;sub word [yVelocity], 1
    ;jmp NoKeyPress

MoveLeft:
    ;sub word [xVelocity], 1
    ;jmp NoKeyPress

MoveRight:
    ;add word [xVelocity], 1
    ;jmp NoKeyPress

ChangeVelocityX:
    ;neg word [xVelocity]
    ;jmp GameLoop

ChangeVelocityY:
    ;neg word [yVelocity]
    ;jmp GameLoop

Exit:
    mov ax, 0C01h ; 
    int 21h

    ; DOS box default video mode
    mov ax, 03h 
    int 21h

    int 20h ; Quit





the_functions:

; need to set the color of filling in al
clearScreen: ;this part of the programm will clean with a rapid speed
mov ax, [cs:backBufferSeg]; backbufferSeg is needed for making sure that the cleaning doesn't provoke flickering !
mov es, ax
mov di, 0
mov cx, 320*200
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
op es
pop ds
ret

loopy5:
    mov cx, 16
    rep movsb
    add di, 640-16
    dec dx
    jnz loopy5
ret

printplayer:
    mov ax, [cs:backBufferSeg]
    mov es, ax
    mov dx, 16

    cld  ; Clear direction flag

    loopyy:
        mov cx, 16
        rep movsb
        add di, 320-16
        dec dx
        jnz loopyy
    ret


ChangeVelocity:
neg word [xVelocity]
jmp GameLoop

%include "seg.inc"