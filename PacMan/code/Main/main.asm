org 100h

section .text

    mov ah, 00h ; set video mode    
    mov al, 13h ; 320x200 pixels, 256 colors
    int 10h  

    call clearScreen
    call tilemaps

    gameLoop:

    mov si, pacmanChompRight1
    mov di, 4
    call drawPacMan

    jmp end

    %include "../Map/Map.asm"
    %include "../Sprite/Sprite.asm"
    %include "../Sprite/SpriteList.asm"
    %include "../Score/Score.asm"
