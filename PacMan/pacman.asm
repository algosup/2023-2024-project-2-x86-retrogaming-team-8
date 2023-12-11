org 100h

%include "sprite.asm"

section .data

    ; maze array
tilemap  db 26,22,22,22,22,22,22,22,22,22,22,22,22,30,31,22,22,22,22,22,22,22,22,22,22,22,22,27
         db 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,13,12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,24
         db 25, 0,14,10,10,15, 0,14,10,10,10,15, 0,13,12, 0,14,10,10,10,15, 0,14,10,10,15, 0,24
         db 25, 0,13, 0, 0,12, 0,13, 0, 0, 0,12, 0,13,12, 0,13, 0, 0, 0,12, 0,13, 0, 0,12, 0,24
         db 25, 0,17,11,11,16, 0,17,11,11,11,16, 0,17,16, 0,17,11,11,11,16, 0,17,11,11,16, 0,24
         db 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,24
         db 25, 0,14,10,10,15, 0,14,15, 0,14,10,10,10,10,10,10,15, 0,14,15, 0,14,10,10,15, 0,24
         db 25, 0,17,11,11,16, 0,13,12, 0,17,11,11,19,18,11,11,16, 0,13,12, 0,17,11,11,16, 0,24
         db 25, 0, 0, 0, 0, 0, 0,13,12, 0, 0, 0, 0,13,12, 0, 0, 0, 0,13,12, 0, 0, 0, 0, 0, 0,24
         db 29,23,23,23,23,15, 0,13,21,10,10,15, 0,13,12, 0,14,10,10,20,12, 0,14,23,23,23,23,28
         db  0, 0, 0, 0, 0,25, 0,13,18,11,11,16, 0,17,16, 0,17,11,11,19,12, 0,24, 0, 0, 0, 0, 0
         db  0, 0, 0, 0, 0,25, 0,13,12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,13,12, 0,24, 0, 0, 0, 0, 0
         db  0, 0, 0, 0, 0,25, 0,13,12, 0,38,23,36, 1, 1,37,23,39, 0,13,12, 0,24, 0, 0, 0, 0, 0
         db 22,22,22,22,22,16, 0,17,16, 0,24, 0, 0, 0, 0, 0, 0,25, 0,17,16, 0,17,22,22,22,22,22
         db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,24, 0, 0, 0, 0, 0, 0,25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
         db 23,23,23,23,23,15, 0,14,15, 0,24, 0, 0, 0, 0, 0, 0,25, 0,14,15, 0,14,23,23,23,23,23
         db  0, 0, 0, 0, 0,25, 0,13,12, 0,41,22,22,22,22,22,22,40, 0,13,12, 0,24, 0, 0, 0, 0, 0
         db  0, 0, 0, 0, 0,25, 0,13,12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,13,12, 0,24, 0, 0, 0, 0, 0
         db  0, 0, 0, 0, 0,25, 0,13,12, 0,14,10,10,10,10,10,10,15, 0,13,12, 0,24, 0, 0, 0, 0, 0
         db 26,22,22,22,22,16, 0,17,16, 0,17,11,11,19,18,11,11,16, 0,17,16, 0,17,22,22,22,22,27
         db 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,13,12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,24
         db 25, 0,14,10,10,15, 0,14,10,10,10,15, 0,13,12, 0,14,10,10,10,15, 0,14,10,10,15, 0,24
         db 25, 0,17,11,19,12, 0,17,11,11,11,16, 0,17,16, 0,17,11,11,11,16, 0,13,18,11,16, 0,24
         db 25, 0, 0, 0,13,12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,13,12, 0, 0, 0,24
         db 33,10,15, 0,13,12, 0,14,15, 0,14,10,10,10,10,10,10,15, 0,14,15, 0,13,12, 0,14,10,34
         db 32,11,16, 0,17,16, 0,13,12, 0,17,11,11,19,18,11,11,16, 0,13,12, 0,17,16, 0,17,11,35
         db 25, 0, 0, 0, 0, 0, 0,13,12, 0, 0, 0, 0,13,12, 0, 0, 0, 0,13,12, 0, 0, 0, 0, 0, 0,24
         db 25, 0,14,10,10,10,10,20,21,10,10,15, 0,13,12, 0,14,10,10,20,21,10,10,10,10,15, 0,24
         db 25, 0,17,11,11,11,11,11,11,11,11,16, 0,17,16, 0,17,11,11,11,11,11,11,11,11,16, 0,24
         db 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,24
         db 29,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,28
   
    Column dw 28    
    Row dw 31       
    pixelNumber dw 1920 

section .text
    mov ah, 00h     
    mov al, 13h     
    int 10h         

  call clearScreen    

    gameLoop:
    call tileMap

    drawWalls:
        ; draw 1 tile
        mov dx, 6           
        .eachLine:  
            mov cx, 6       
            rep movsb       
            add di, 320-6   
            dec dx          
            jnz .eachLine   
            call nextColumn 
        inc bx              
        ret

    nextColumn:
        mov ax, [Column]   
        dec ax              
        mov [Column], ax    
        cmp ax, 0           
        je nextRow         
        sub di, 1914        
        ret

    nextRow:
        mov ax, [Row]       
        dec ax             
        mov [Row], ax       
        cmp ax, 0           
        je end             
        mov ax, 28          
        mov [Column], ax    
        mov ax, [pixelNumber] 
        mov di, ax          
        add ax, 1920       
        mov [pixelNumber], ax   ;
        ret

    tileMap:
        mov di, 0              
        mov bx, tilemap           
        wallchoice:
            mov al, [bx]       
            cmp al, 0          
            je empty        
            cmp al, 1
            je roomGhost
            cmp al, 10
            je wall1
            cmp al, 11
            je wall2
            cmp al, 12
            je wall3
            cmp al, 13
            je wall4
            cmp al, 14
            je angleWall1
            cmp al, 15
            je angleWall2
            cmp al, 16
            je angleWall3
            cmp al, 17
            je angleWall4
            cmp al, 18
            je angleWall5
            cmp al, 19
            je angleWall6
            cmp al, 20
            je angleWall7
            cmp al, 21
            je angleWall8
            cmp al, 22
            je wallDouble1
            cmp al, 23
            je wallDouble2
            cmp al, 24
            je wallDouble3
            cmp al, 25
            je wallDouble4
            cmp al, 26
            je angleDouble1
            cmp al, 27
            je angleDouble2
            cmp al, 28
            je angleDouble3
            cmp al, 29
            je angleDouble4
            cmp al, 30
            je angleDifDouble1
            cmp al, 31
            je angleDifDouble2
            cmp al, 32
            je angleDifDouble3
            cmp al, 33
            je angleDifDouble4
            cmp al, 34
            je angleDifDouble5
            cmp al, 35
            je angleDifDouble6
            cmp al, 36
            je doubleDoor1
            cmp al, 37
            je doubleDoor2
            cmp al, 38
            je straightDouble1
            cmp al, 39
            je straightDouble2
            cmp al, 40
            je straightDouble3
            cmp al, 41
            je straightDouble4
        ret

    empty:                  
        mov si, emptySpace           
        call drawWalls          
        jmp wallchoice         

    roomGhost:
        mov si, ghostRoom
        call drawWalls
        jmp wallchoice

    wall1:              
        mov si, wallBasic1
        call drawWalls
        jmp wallchoice

    wall2:
        mov si, wallBasic2
        call drawWalls
        jmp wallchoice

    wall3:
        mov si, wallBasic3
        call drawWalls
        jmp wallchoice

    wall4:
        mov si, wallBasic4
        call drawWalls
        jmp wallchoice

    angleWall1:
        mov si, angleBasic1
        call drawWalls
        jmp wallchoice

    angleWall2:
        mov si, angleBasic2
        call drawWalls
        jmp wallchoice

    angleWall3:
        mov si, angleBasic3
        call drawWalls
        jmp wallchoice

    angleWall4:
        mov si, angleBasic4
        call drawWalls
        jmp wallchoice

    angleWall5:
        mov si, angleBasic5
        call drawWalls
        jmp wallchoice

    angleWall6:
        mov si, angleBasic6
        call drawWalls
        jmp wallchoice

    angleWall7:
        mov si, angleBasic7
        call drawWalls
        jmp wallchoice

    angleWall8:
        mov si, angleBasic8
        call drawWalls
        jmp wallchoice

    wallDouble1:
        mov si, doubleWall1
        call drawWalls
        jmp wallchoice

    wallDouble2:
        mov si, doubleWall2
        call drawWalls
        jmp wallchoice

    wallDouble3:
        mov si, doubleWall3
        call drawWalls
        jmp wallchoice

    wallDouble4:
        mov si, doubleWall4
        call drawWalls
        jmp wallchoice

    angleDouble1:
        mov si, angleDoubleWall1
        call drawWalls
        jmp wallchoice

    angleDouble2:
        mov si, angleDoubleWall2
        call drawWalls
        jmp wallchoice

    angleDouble3:
        mov si, angleDoubleWall3
        call drawWalls
        jmp wallchoice

    angleDouble4:
        mov si, angleDoubleWall4
        call drawWalls
        jmp wallchoice

    angleDifDouble1:
        mov si, otherAngleDoubleWall1
        call drawWalls
        jmp wallchoice

    angleDifDouble2:
        mov si, otherAngleDoubleWall2
        call drawWalls
        jmp wallchoice

    angleDifDouble3:
        mov si, otherAngleDoubleWall3
        call drawWalls
        jmp wallchoice

    angleDifDouble4:
        mov si, otherAngleDoubleWall4
        call drawWalls
        jmp wallchoice

    angleDifDouble5:
        mov si, otherAngleDoubleWall5
        call drawWalls
        jmp wallchoice

    angleDifDouble6:
        mov si, otherAngleDoubleWall6
        call drawWalls
        jmp wallchoice

    doubleDoor1:
        mov si, doorDoubleWall1
        call drawWalls
        jmp wallchoice

    doubleDoor2:
        mov si, doorDoubleWall2
        call drawWalls
        jmp wallchoice

    straightDouble1:
        mov si, doubleStraightAngle1
        call drawWalls
        jmp wallchoice
    
    straightDouble2:
        mov si, doubleStraightAngle2
        call drawWalls
        jmp wallchoice

    straightDouble3:
        mov si, doubleStraightAngle3
        call drawWalls
        jmp wallchoice

    straightDouble4:
        mov si, doubleStraightAngle4
        call drawWalls
        jmp wallchoice
    
        clearScreen:
        mov ax, 0xA000
        mov es, ax
        mov di, 0
        mov cx, 320*200
        rep stosb
        ret 

    end:
        