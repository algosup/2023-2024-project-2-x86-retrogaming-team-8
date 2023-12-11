org 100h

%include "sprite.asm"
;getting the code of the sprite bitmaps
section .data

             emptyspace db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
;sprite that have the same size as the pacman sprite that will pass behind pacman and so used as an eraser of old position sprite

;Default position
position dw 23000


section .text

;initialization
mov al, 13h ;graphic mode in with a window size of 340x200 pixels.
mov ah, 00h
int 10h

call clearScreen

gameLoop:
    call waitLoop
    mov ah, 01h
    int 16h
    jz gameLoop
    mov ah, 00h
    int 16h ; Wait for keypress
    cmp ah, 48h ; If the key "UParrow" is pressed then jump to MoveUp label
    je moveUp
    cmp ah, 4Bh ; If the key "LEFTarrow" is pressed then jump to MoveLeft label
    je moveLeft
    cmp ah, 4Dh ; If the key "RIGHTarrow" is pressed then jump to MoveRight label
    je moveRight
    cmp ah, 50h ; If the key "DOWNarrow" is pressed then jump to Movedown label
    je moveDown

clearScreen: 
    mov ax, 0xA000
    mov es, ax
    mov di, 0
    mov cx, 320*200
    rep stosb
    ret
    ; Clear the screen

clearPacMan:
    mov di, [position]
    mov si, emptyspace
    call DrawPacMan
    ret
    ; Clear the ancient pacman sprite by using the emptyspace sprite
drawPacMan:
    mov di, [position]
    mov dx, 10

          eachline:
          mov cx, 10
          rep movsb
          add di, 320-10
          dec dx
          jnz eachLine
          ret
    ; Printing line by line the PacMan using the postion

moveLeft:
    call clearPacMan
    mov si, pacmanChompLeft1
    sub word [position], 1*2
    call drawPacMan 
    jmp gameLoop
    ; Change the movement to the left by calculating the position

moveRight:
    call clearPacMan
    mov si, pacmanChompRight1
    add word [position], 1*2
    call drawPacMan
    jmp gameLoop
    ; Change the movement to the right by calculating the position

moveUp:
    call clearPacMan
    mov si, pacmanChompUp1
    sub word [position], 320*2
    call drawPacMan
    jmp gameLoop
    ; Change the movement to go up by calculating the position

moveDown:
    call clearPacMan
    mov si, pacmanChompDown1
    add word [position], 320*2
    call drawPacMan
    jmp gameLoop
    ; Change the movement to go down by calculating the position

waitLoop:
    loop waitLoop
    ret