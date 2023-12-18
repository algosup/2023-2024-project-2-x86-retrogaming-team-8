section .text          ; Set up the video mode

call beginPacMan

    gameLoops:
    ; Wait for keypress
    mov ah, 01h
    int 16h
    jz gameLoops
    mov ah, 00h
    int 16h
    ; If the key "UParrow" is pressed then jump to MoveUp label
    cmp ah, 48h 
    je collisionUp
    ; If the key "LEFTarrow" is pressed then jump to MoveLeft label
    cmp ah, 4Bh 
    je collisionLeft
    ; If the key "RIGHTarrow" is pressed then jump to MoveRight label
    cmp ah, 4Dh 
    je collisionRight
    ; If the key "DOWNarrow" is pressed then jump to Movedown label
    cmp ah, 50h 
    je collisionDown

    
    
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
collisionLeft:
    mov dx, 1
    mov ax, [position]
    add ax, 959
    mov bx, 320         ; nb of pixels in a row
    div bx              ; division to calculate the x and y position of the pixel where we test the collision
    mov bx, ax          
    mov ah, 0Dh         ; int to read the pixel color
    mov cx, dx          ; remainder goes to x position
    mov dx, bx          ; quotient goes to y position
    int 10h
    cmp al, 0x20
    je stopPacLeft
    jmp moveLeft

moveLeft:
    call clearPacMan
    mov si, pacmanChompLeft1
    sub word [position], 1
    call drawPacMan 
    jmp gameLoops

stopPacLeft:
    call clearPacMan
    mov si, pacmanDefault
    call drawPacMan
    jmp gameLoop

; Change the movement to the right by calculating the position

collisionRight:
    mov dx, 1
    mov ax, [position]
    add ax, 970
    mov bx, 320         
    div bx              
    mov bx, ax          
    mov ah, 0Dh         
    mov cx, dx          
    mov dx, bx          
    int 10h
    cmp al, 0x20
    je stopPacRight
    jmp moveRight

moveRight:
    call clearPacMan
    mov si, pacmanChompRight1
    add word [position], 1
    call drawPacMan
    jmp gameLoops

stopPacRight:
    call clearPacMan
    mov si, pacmanDefault
    call drawPacMan
    jmp gameLoop

; Change the movement to go up by calculating the position
    collisionUp:
        mov dx, 1
        mov ax, [position]
        sub ax, 315
        mov bx, 320         
        div bx              
        mov bx, ax          
        mov ah, 0Dh         
        mov cx, dx          
        mov dx, bx          
        int 10h
        cmp al, 0x20
        je stopPacUp
        jmp moveUp
moveUp:
    call clearPacMan
    mov si, pacmanChompUp1
    sub word [position], 320
    call drawPacMan
    jmp gameLoops

stopPacUp:
    call clearPacMan
    mov si, pacmanDefault
    call drawPacMan
    jmp gameLoop

; Change the movement to go down by calculating the position

collisionDown:
    mov dx, 1
    mov ax, [position]
    add ax, 320
    mov bx, 320         
    div bx              
    mov bx, ax          
    mov ah, 0Dh         
    mov cx, dx          
    mov dx, bx          
    int 10h
    cmp al, 0x20
    je stopPacDown
    jmp moveDown

moveDown:
    call clearPacMan
    mov si, pacmanChompDown1
    add word [position], 320
    call drawPacMan
    jmp gameLoops

stopPacDown:
    call clearPacMan
    mov si, pacmanDefault
    call drawPacMan
    jmp gameLoop
 
; Clear the ancient pacman sprite by using the emptyspace sprite
clearPacMan:
    mov di, [position]
    mov si, emptySpot
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