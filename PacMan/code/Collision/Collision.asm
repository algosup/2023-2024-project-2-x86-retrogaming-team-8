org 100h

colorToAvoid equ 0x20
; check if pacman is in contact with a wall
block:
    cmp byte [si], colorToAvoid
    jmz stop

; If it's the case the pacman will check in wich direction he goes
stop:



%include "../Map/Map.asm"
%include "../Sprite/Sprite.asm"
%include "../Sprite/SpriteList.asm"

