;print a sprite 8 x 8 bytes on the screen

org 100h

section .data

sprite db 0x10, 0x9F, 0x0F, 0x5A, 0xBB, 0x64, 0x38, 0x01
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
       db 0x00, 0xFF, 0x0F, 0xAA, 0xBB, 0x64, 0x88, 0x11
	   
maze db 1, 0, 1, 1, 0, 1, 1, 1
     db 1, 0, 0, 1, 0, 0, 0, 1
	 
mazeWidth equ 8  ; Largeur du labyrinthe (nombre de cellules)
mazeHeight equ 2 ; Hauteur du labyrinthe (ajustez en fonction de votre labyrinthe)

section .text

mov ah, 00h ; set video mode requirement
mov al, 13h ; set video mode option o 320 x 200 256 colors
int 10h

mov al, 0FFh
call clearScreen
call printSprite



;reset the keyboard buffer and then wait for a keypress :
mov ax, 0C01h ; 
int 21h

;dos box default video mode
mov ax, 03h 
int 21h

int 20h ;quit

the_functions:

; need to set the color of filling in al
clearScreen:
mov ax, 0xA000
mov es, ax
mov di, 0
mov cx, 200*320
rep stosb
ret 

printSprite:
mov ax, 0xA000
mov es, ax
mov di, 0
mov si, sprite
mov dx, 8
       eachLine:
       mov cx, 8
       rep movsb
       add di, 320-8
       dec dx
       jnz eachLine
	   
printMaze:
    mov ax, 0xA000
    mov es, ax
    mov si, maze  ; Pointeur vers le début du labyrinthe

    mov bx, 0     ; Position Y
    mazeLoopY:
        mov cx, mazeWidth
        mov di, bx
        mazeLoopX:
            lodsb         ; Charge la valeur actuelle du labyrinthe
            cmp al, 0     ; Compare si c'est un mur
            je drawWall   ; Si c'est un mur, dessine un mur
            jmp nextCell

            drawWall:
                ; Code pour dessiner un mur (par exemple, un sprite de mur)
                ; Vous pouvez utiliser le code de printSprite ici avec des modifications

            nextCell:
                add di, 8  ; Avance de la largeur d'une cellule
            loop mazeLoopX
        add bx, 320 * 8  ; Avance à la ligne suivante du labyrinthe
        dec mazeHeight
    jnz mazeLoopY

ret