
section .bss
    freeSegment resw 1


section .text

heap_init:
    mov ax, cs
    add ax, 1000h
    mov [cs:freeSegment], ax
    ret

; AX (number of paragraph to allocate)
; return:
; AX will be the allocated base address
heap_allocate:
    mov bx, [cs:freeSegment]
    mov cx, bx
    add cx, ax
    mov [cs:freeSegment], cx
    mov ax, bx
    ret