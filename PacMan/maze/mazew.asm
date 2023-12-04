;print a sprite 8 x 8 bytes on the screen

BASE_MAZE:  equ 16*X_OFFSET + 32
pos1:  equ BASE_MAZE + 21 * 8 * X_OFFSET

X_OFFSET:   equ 0x0140
MAZE_COLOR:     equ 0x37


section .data

sprite:
       db 0x00, 0x42, 0xe7, 0xe7, 0xff, 0xff, 0xe7, 0x3c
       db 0x3c, 0x7e, 0xfc, 0xf0, 0xf0, 0xfc, 0x7e, 0x3c
       db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff ; maze
       db 0x3c, 0x7e, 0xff, 0xff, 0xe7, 0xe7, 0x42, 0x00
       db 0x3c, 0x7e, 0xff, 0xff, 0xff, 0xff, 0x7e, 0x3c
       db 0x3c, 0x7e, 0xdb, 0xdb, 0xff, 0xff, 0xff, 0xa5
       db 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00
       db 0x3c, 0x7e, 0x3f, 0x0f, 0x0f, 0x3f, 0x7e, 0x3c

maze:
     dw  0b0000_0000_0000_0000
     dw  0b0111_1111_1111_1110
     dw  0b0000_0000_0000_0010
     dw  0b0000_0000_0000_0010
     dw  0b0000_0000_0000_1111
     dw  0b0000_0000_0000_0000
     dw  0b0000_0000_0000_1110
     dw  0b0000_0000_0000_0010
     dw  0b0000_0000_0000_1111
     dw  0b0000_0000_0000_0000
     dw  0b0000_0000_0000_0000
     dw  0b0000_0000_0000_1111
     dw  0b0000_0000_0000_0000
     dw  0b0000_0000_0000_1110
     dw  0b0000_0000_0000_0010
     dw  0b0000_0000_0000_1111
     dw  0b0000_0000_0000_0000
     dw  0b0000_0000_0000_1110
     dw  0b0000_0000_0000_0010
     dw  0b0000_0000_0000_1111
     dw  0b0000_0000_0000_0000

    mov ax, 0x0013      ; set mode 0x13
    int 0x10 ; call BIOS
    cld
    mov ax, 0xa000
    mov ds, ax
    mov es, ax
    mov si, maze
    mov di, BASE_MAZE

draw_maze_row:
    cs lodsw
    xchg ax, cx
    mov bx, 30 * 8

draw_maze_col:
    shl cx, 1
    mov ax, MAZE_COLOR * 0x0100 + 0x18
    jnc dm1