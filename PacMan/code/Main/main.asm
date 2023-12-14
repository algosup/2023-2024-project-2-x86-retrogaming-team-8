org 100h

section .text

    mov ah, 00h     
    mov al, 13h     
    int 10h  

    call clearScreen
    call tilemaps

    gameLoop:

    mov si, pacmanChompDown1
    mov di, 4
    call drawPacMan

    jmp end

    %include "../Map/Map.asm"
    %include "../Sprite/Sprite.asm"
    %include "../Sprite/SpriteList.asm"
    %include "../Collision/Collision.asm"