org 100h

%include "sprite.asm"

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

;Default position
position dw 23000


section .text

;initialization
mov al, 13h
mov ah, 00h
int 10h

call clearScreen

gameLoop:
call waitLoop
mov ah, 01h
int 16h
jz gameLoop
mov ah, 00h
int 16h
cmp ah, 48h
je moveUp
cmp ah, 4Bh
je moveLeft
cmp ah, 4Dh
je moveRight
cmp ah, 50h
je moveDown

clearScreen:
mov ax, 0xA000
mov es, ax
mov di, 0
mov cx, 320*200
rep stosb
ret

clearPacMan:
mov di, [position]
mov si, emptyspace
call drawPacMan
ret

drawPacMan:
mov di, [position]
mov dx, 10

          eachLine:
          mov cx, 10
          rep movsb
          add di, 320-10
          dec dx
          jnz eachLine
          ret


moveLeft:
call clearPacMan
mov si, pacmanChompLeft1
sub word [position], 1*2
call drawPacMan 
jmp gameLoop


moveRight:
call clearPacMan
mov si, pacmanChompRight1
add word [position], 1*2
call drawPacMan
jmp gameLoop

moveUp:
call clearPacMan
mov si, pacmanChompUp1
sub word [position], 320*2
call drawPacMan
jmp gameLoop

moveDown:
call clearPacMan
mov si, pacmanChompDown1
add word [position], 320*2
call drawPacMan
jmp gameLoop

waitLoop:
loop waitLoop
ret
