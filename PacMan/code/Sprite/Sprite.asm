section .text          ; Set up the video mode

    gameLoops:
    ; Wait for keypress
    mov ah, 01h
    int 16h
    jz gameLoops
    mov ah, 00h
    int 16h
    call beginPacMan 
    ; If the key "UParrow" is pressed then jump to MoveUp label
    cmp ah, 48h 
    je moveUp
    ; If the key "LEFTarrow" is pressed then jump to MoveLeft label
    cmp ah, 4Bh 
    je moveLeft
    ; If the key "RIGHTarrow" is pressed then jump to MoveRight label
    cmp ah, 4Dh 
    je moveRight
    ; If the key "DOWNarrow" is pressed then jump to Movedown label
    cmp ah, 50h 
    je moveDown

    
    
        ; clearScreen:    ; Clears the screen by writing zeros to the video memory segment.
        ; mov ax, 0xA000
        ; mov es, ax
        ; mov di, 0
        ; mov cx, 320*200
        ; rep stosb
        ; ret 

       beginPacMan:
       mov si, pacmanChompLeft1
       call drawPacMan
       ret


; Printing line by line the PacMan using the postion
    drawPacMan:
    mov di, [position]
    mov dx, 10

          eachline:
          mov cx, 10
          rep movsb
          add di, 320-10
          dec dx
          jnz eachline
          ret


; Change the movement to the left by calculating the position
moveLeft:
        .collisionLeft:
            mov ax, [position]
            sub ax, 2
            mov cx, 320
            div cx
            mov bx,ax
            mov ah, 20h
            mov cx, dx 
            mov dx, bx
            int 10h
            cmp al, 0x20
            je stopPacLeft
    call clearPacMan
    mov si, pacmanChompLeft1
    sub word [position], 1*2
    call drawPacMan 
    jmp gameLoops

; Change the movement to the right by calculating the position
moveRight:
        .collisionRight:
            mov ax, [position]
            add ax, 12
            mov cx, 320
            div cx
            mov bx,ax
            mov ah, 20h
            mov cx, dx 
            mov dx, bx
            int 10h
            cmp al, 0x20
            je stopPacRight
    call clearPacMan
    mov si, pacmanChompRight1
    add word [position], 1*2
    call drawPacMan
    jmp gameLoops


; Change the movement to go up by calculating the position
moveUp:
    .collisionUp:
        mov ax, [position]
        add ax, 2
        mov cx, 200
        div cx
        mov bx,ax
        mov ah, 20h
        mov cx, dx 
        mov dx, bx
        int 10h
        cmp al, 0x20
        je stopPacUp
    call clearPacMan
    mov si, pacmanChompUp1
    sub word [position], 320*2
    call drawPacMan
    jmp gameLoops


; Change the movement to go down by calculating the position
moveDown:
    .collisionDown:
        mov ax, [position]
        sub ax, 12
        mov cx, 200
        div cx
        mov bx,ax
        mov ah, 20h
        mov cx, dx 
        mov dx, bx
        int 10h
        cmp al, 0x20
        je stopPacDown

    call clearPacMan
    mov si, pacmanChompDown1
    add word [position], 320*2
    call drawPacMan
    jmp gameLoops
    
            ; Clear the ancient pacman sprite by using the emptyspace sprite
clearPacMan:
    mov di, [position]
    mov si, emptyspace
    call drawPacMan
    ret

waitLoop:
    loop waitLoop
    ret

    ; drawPacMan:
    ; mov ax, 0xA000
    ; mov es, ax
    ; mov dx, 10
    ;      eachline:
    ;       mov cx, 10
    ;       rep movsb
    ;       add di, 320-10
    ;       dec dx
    ;       jnz eachline
    ;       ret        