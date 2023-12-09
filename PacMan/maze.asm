org 100h ; Don't forget this line :)

%define SCREEN_WIDTH 320
%define SCREEN_HEIGHT 200
%define HB_WIDTH 280
%define HB_HEIGHT 2
%define VB_HEIGHT 53
%define VB_WIDTH 2
%define CMVB_HEIGHT 35
%define CMVB_WIDTH 2
%define SHB_HEIGHT 6
%define SHB_WIDTH 30
%define SVB_HEIGHT 26
%define SVB_WIDTH 12
%define TSVB_HEIGHT 26
%define TSVB_WIDTH 6
%define MVB_HEIGHT 6
%define MVB_WIDTH 20
%define TMVB_HEIGHT 10
%define TMVB_WIDTH 6
%define BHB_HEIGHT 8
%define BHB_WIDTH 30
%define LVL_HEIGHT 30
%define LVL_WIDTH 8
%define MVL_HEIGHT 25
%define MVL_WIDTH 8
%define MHL_HEIGHT 6
%define MHL_WIDTH 43
%define MidV_HEIGHT 40
%define MidV_WIDTH 6
%define MidM_HEIGHT 20
%define MidM_WIDTH 6
%define MidB_HEIGHT 8
%define MidB_WIDTH 6
%define MidHB_HEIGHT 6
%define MidHB_WIDTH 85
%define LLH_HEIGHT 6
%define LLH_WIDTH 60
%define LHB_HEIGHT 26
%define LHB_WIDTH 6
%define EDH_HEIGHT 2
%define EDH_WIDTH 85
%define EDV_HEIGHT 20
%define EDV_WIDTH 2
%define EDN_HEIGHT 2
%define EDN_WIDTH 30
%define LST_HEIGHT 1
%define LST_WIDTH 25







section .data

; Horizontal vertical line to trace the map
    HTB_X dw 10
    HTB_Y dw 15
    HTB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    HBB_X dw 10
    HBB_Y dw 183
    HBB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    FVLB_X dw 10
    FVLB_Y dw 17
    FVLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    SVLB_X dw 10
    SVLB_Y dw 83
    SVLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    TVLB_X dw 10
    TVLB_Y dw 130
    TVLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    FVRB_X dw 288
    FVRB_Y dw 17
    FVRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    SVRB_X dw 288
    SVRB_Y dw 83
    SVRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    TVRB_X dw 288
    TVRB_Y dw 130
    TVRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

; Draw horizontal small lines in the maze to form the inner walls
    S1HLB_X dw 30
    S1HLB_Y dw 28
    S1HLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S2HLB_X dw 30
    S2HLB_Y dw 45
    S2HLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S3HLB_X dw 58
    S3HLB_Y dw 66
    S3HLB db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S4HLB_X dw 30
    S4HLB_Y dw 100
    S4HLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S5HLB_X dw 30
    S5HLB_Y dw 130
    S5HLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S6HLB_X dw 61
    S6HLB_Y dw 147
    S6HLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S7HLB_X dw 10
    S7HLB_Y dw 115
    S7HLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S1HRB_X dw 240
    S1HRB_Y dw 28
    S1HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S2HRB_X dw 240
    S2HRB_Y dw 45
    S2HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S3HRB_X dw 213
    S3HRB_Y dw 66
    S3HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S4HRB_X dw 240
    S4HRB_Y dw 100
    S4HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S5HRB_X dw 240
    S5HRB_Y dw 130
    S5HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S6HRB_X dw 210
    S6HRB_Y dw 147
    S6HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S7HRB_X dw 260
    S7HRB_Y dw 115
    S7HRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

; Draw vertical small lines to complete the small horizontal line and form the inner wall
    S1VLB_X dw 30
    S1VLB_Y dw 45
    S1VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S2VLB_X dw 130
    S2VLB_Y dw 15
    S2VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S3VLB_X dw 54
    S3VLB_Y dw 104
    S3VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S4VLB_X dw 30
    S4VLB_Y dw 147
    S4VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S5VLB_X dw 80
    S5VLB_Y dw 27
    S5VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S6VLB_X dw 103
    S6VLB_Y dw 27
    S6VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S7VLB_X dw 103
    S7VLB_Y dw 50
    S7VLB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S1VRB_X dw 258
    S1VRB_Y dw 45
    S1VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S2VRB_X dw 165
    S2VRB_Y dw 15
    S2VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S3VRB_X dw 240
    S3VRB_Y dw 104
    S3VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S4VRB_X dw 258
    S4VRB_Y dw 147
    S4VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S5VRB_X dw 191
    S5VRB_Y dw 27
    S5VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S6VRB_X dw 215
    S6VRB_Y dw 27
    S6VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    S7VRB_X dw 167
    S7VRB_Y dw 50
    S7VRB  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; Draw the big pixel
    RBHB_X dw 30
    RBHB_Y dw 83
    RBHB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    LBHB_X dw 240
    LBHB_Y dw 83
    LBHB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; draw a long side vertical bar
    LVB_X dw 83
    LVB_Y dw 83
    LVB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    RVB_X dw 210
    RVB_Y dw 83
    RVB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ;  draw a medium vertical line
    LMVB_X dw 83
    LMVB_Y dw 126
    LMVB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    RMVB_X dw 210
    RMVB_Y dw 126
    RMVB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; draw medium horizontal line

    LMHB_X dw 90
    LMHB_Y dw 126
    LMHB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    RMHB_X dw 170
    RMHB_Y dw 126
    RMHB   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; draw a low vertical line  at the bottom
    LHBL_X dw 32
    LHBL_Y dw 167
    LHBL   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    RHBL_X dw 210
    RHBL_Y dw 167
    RHBL   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; draw vertical line at the middel
    TLVBM_X dw 147
    TLVBM_Y dw 25
    TLVBM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    MVBLM_X dw 147
    MVBLM_Y dw 110
    MVBLM  db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    BLVBM_X dw 147
    BLVBM_Y dw 140
    BLVBM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; draw middle horizontal bars
    TLHBM_X dw 109
    TLHBM_Y dw 65
    TLHBM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    MHBLM_X dw 109
    MHBLM_Y dw 110
    MHBLM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    BLHBM_X dw 109
    BLHBM_Y dw 165
    BLHBM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    ; draw middle horizontal bar
    LLHM_X dw 109
    LLHM_Y dw 142
    LLHM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    BBM_X dw 188
    BBM_Y dw 142
    BBM   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

;draw spawn point of enemies

        ; last width form
    SPP_X dw 109
    SPP_Y dw 98
    SPP   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

        ; last height
    LH_X dw 109
    LH_Y dw 80
    LH   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    LRH_X dw 192
    LRH_Y dw 80
    LRH   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

        ; mini width
    MIW_X dw 109
    MIW_Y dw 80
    MIW   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

    RMIW_X dw 163
    RMIW_Y dw 80
    RMIW   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

        ; finally
    IBW_X dw 138
    IBW_Y dw 80
    IBW   db 0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111,0b1111_1111

section .text
    start:
        ; Setup the screen to be 320x200 with 256 colors
        mov ax, 0013h
        int 10h
        mov ax, 0a000h
        mov es, ax

        ; Fill the screen with the maze

HtTB: ; Horizontal top bar
        mov cx, 0  ; Y coordinate
        .loop_y:
            mov bx, 0  ; X coordinate
            .loop_x:
                ; Position on the screen = screen_width * y + x
                mov dx, [HTB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx  ; ax = ax * cx
                add ax, [HTB_X]
                add ax, bx  ; + x
                mov di, ax

                ; Set color for both walls and paths (assuming white color)
                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X
                inc bx
                cmp bx, HB_WIDTH
                jb .loop_x  ; Continue the loop if not at the end of the row

            ; Return to the beginning of the row and increase Y
            inc cx
            cmp cx, HB_HEIGHT
            jb .loop_y  ; Continue the loop if not at the end of the maze

HtBB:   ; horizontal bottom bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_hbb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_hbb:
                ; Calculate screen position
                mov dx, [HBB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [HBB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, HB_WIDTH
                jb .loop_x_hbb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, HB_HEIGHT
            jb .loop_y_hbb

FVtLB:  ;First left corner vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_fvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_fvlb:
                ; Calculate screen position
                mov dx, [FVLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [FVLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, VB_WIDTH
                jb .loop_x_fvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, VB_HEIGHT
            jb .loop_y_fvlb

SVtLB:      ;2nd left corner vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_svlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_svlb:
                ; Calculate screen position
                mov dx, [SVLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [SVLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, CMVB_WIDTH
                jb .loop_x_svlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, CMVB_HEIGHT
            jb .loop_y_svlb

TVtLB:      ; 3rd left corner vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tvlb:
                ; Calculate screen position
                mov dx, [TVLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [TVLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, VB_WIDTH
                jb .loop_x_tvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, VB_HEIGHT
            jb .loop_y_tvlb

FVtRB:       ;First right corner vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_fvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_fvrb:
                ; Calculate screen position
                mov dx, [FVRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [FVRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, VB_WIDTH
                jb .loop_x_fvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, VB_HEIGHT
            jb .loop_y_fvrb

SVtRB:  ;2nd right corner vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_svrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_svrb:
                ; Calculate screen position
                mov dx, [SVRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [SVRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, CMVB_WIDTH
                jb .loop_x_svrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, CMVB_HEIGHT
            jb .loop_y_svrb
TVtRB:  ; 3rd right corner vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tvrb:
                ; Calculate screen position
                mov dx, [TVRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [TVRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, VB_WIDTH
                jb .loop_x_tvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, VB_HEIGHT
            jb .loop_y_tvrb

FSHtLB: ;1rst left small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_fshlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_fshlb:
                ; Calculate screen position
                mov dx, [S1HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S1HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_fshlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_fshlb

SSHtLB:     ;2nd left small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_sshlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_sshlb:
                ; Calculate screen position
                mov dx, [S2HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S2HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_sshlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_sshlb

TSHtLB:         ;3rd left small horizontal bar
        ; Display the emoji sprite at specified positions
        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tshlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tshlb:
                ; Calculate screen position
                mov dx, [S3HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S3HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_tshlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_tshlb

FoSHtLB:    ;4th left small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_4shlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_4shlb:
                ; Calculate screen position
                mov dx, [S4HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S4HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_4shlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_4shlb

FiSHtLB:    ;5th left small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_5shlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_5shlb:
                ; Calculate screen position
                mov dx, [S5HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S5HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_5shlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_5shlb

StSHtLB:    ;6th left small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_6shlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_6shlb:
                ; Calculate screen position
                mov dx, [S6HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S6HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_6shlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_6shlb

SeSHtLB:    ;7th left small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_7shlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_7shlb:
                ; Calculate screen position
                mov dx, [S7HLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S7HLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_7shlb  ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_7shlb


FSHtRB:     ;1rst right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_fshrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_fshrb:
                ; Calculate screen position
                mov dx, [S1HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S1HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_fshrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_fshrb

SSHtRB:     ;2nd right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_sshrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_sshrb:
                ; Calculate screen position
                mov dx, [S2HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S2HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_sshrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_sshrb

TSHtRB:     ;3rd right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tshrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tshrb:
                ; Calculate screen position
                mov dx, [S3HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S3HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_tshrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_tshrb

FoSHtRB:        ;4th right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_4shrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_4shrb:
                ; Calculate screen position
                mov dx, [S4HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S4HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_4shrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_4shrb

FiSHtRB:        ;5th right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_5shrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_5shrb:
                ; Calculate screen position
                mov dx, [S5HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S5HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_5shrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_5shrb

StSHtRB:    ;6th right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_6shrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_6shrb:
                ; Calculate screen position
                mov dx, [S6HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S6HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_6shrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_6shrb

SeSHtRB:    ;7th right small horizontal bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_7shrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_7shrb:
                ; Calculate screen position
                mov dx, [S7HRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S7HRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_7shrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_7shrb

FSVtLB:  ;1rst small left vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_fsvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_fsvlb:
                ; Calculate screen position
                mov dx, [S1VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S1VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SVB_WIDTH
                jb .loop_x_fsvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SVB_HEIGHT
            jb .loop_y_fsvlb

SSVtLB:  ;2nd small left vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_ssvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_ssvlb:
                ; Calculate screen position
                mov dx, [S2VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S2VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TMVB_WIDTH
                jb .loop_x_ssvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TMVB_HEIGHT
            jb .loop_y_ssvlb

TSVtLB:  ;3rd small left vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tsvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tsvlb:
                ; Calculate screen position
                mov dx, [S3VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S3VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TSVB_WIDTH
                jb .loop_x_tsvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TSVB_HEIGHT
            jb .loop_y_tsvlb

FtSVtLB:  ;4th  small left vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_Ftsvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_Ftsvlb:
                ; Calculate screen position
                mov dx, [S4VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S4VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SVB_WIDTH
                jb .loop_x_Ftsvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SVB_HEIGHT
            jb .loop_y_Ftsvlb

FSVtRB:  ;1rst small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_fsvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_fsvrb:
                ; Calculate screen position
                mov dx, [S1VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S1VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SVB_WIDTH
                jb .loop_x_fsvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SVB_HEIGHT
            jb .loop_y_fsvrb

SSVtRB:  ;2nd small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_ssvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_ssvrb:
                ; Calculate screen position
                mov dx, [S2VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S2VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TMVB_WIDTH
                jb .loop_x_ssvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TMVB_HEIGHT
            jb .loop_y_ssvrb

TSVtRB:  ;3rd small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tsvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tsvrb:
                ; Calculate screen position
                mov dx, [S3VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S3VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TSVB_WIDTH
                jb .loop_x_tsvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TSVB_HEIGHT
            jb .loop_y_tsvrb

FtSVtRB:  ;4th small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_Ftsvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_Ftsvrb:
                ; Calculate screen position
                mov dx, [S4VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S4VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SVB_WIDTH
                jb .loop_x_Ftsvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SVB_HEIGHT
            jb .loop_y_Ftsvrb

TMSVtRB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tmsvrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tmsvrb:
                ; Calculate screen position
                mov dx, [S5VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S5VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TSVB_WIDTH
                jb .loop_x_tmsvrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TSVB_HEIGHT
            jb .loop_y_tmsvrb

TMSVtLB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_tmsvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_tmsvlb:
                ; Calculate screen position
                mov dx, [S6VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S6VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TSVB_WIDTH
                jb .loop_x_tmsvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TSVB_HEIGHT
            jb .loop_y_tmsvlb

FTMSVtLB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_ftmsvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_ftmsvlb:
                ; Calculate screen position
                mov dx, [S5VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S5VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TSVB_WIDTH
                jb .loop_x_ftmsvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TSVB_HEIGHT
            jb .loop_y_ftmsvlb


STMSVtLB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_stmsvlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_stmsvlb:
                ; Calculate screen position
                mov dx, [S6VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S6VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, TSVB_WIDTH
                jb .loop_x_stmsvlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, TSVB_HEIGHT
            jb .loop_y_stmsvlb

FTMSHtLB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_ftmshlb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_ftmshlb:
                ; Calculate screen position
                mov dx, [S7VLB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S7VLB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_ftmshlb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_ftmshlb


HSTMSHtRB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_hstmshrb:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_hstmshrb:
                ; Calculate screen position
                mov dx, [S7VRB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [S7VRB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, SHB_WIDTH
                jb .loop_x_hstmshrb ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, SHB_HEIGHT
            jb .loop_y_hstmshrb


BLHB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_BLHB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_BLHB:
                ; Calculate screen position
                mov dx, [LBHB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LBHB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, BHB_WIDTH
                jb .loop_x_BLHB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, BHB_HEIGHT
            jb .loop_y_BLHB

BRHB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_BrHB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_BrHB:
                ; Calculate screen position
                mov dx, [RBHB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [RBHB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, BHB_WIDTH
                jb .loop_x_BrHB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, BHB_HEIGHT
            jb .loop_y_BrHB

LLVB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_lvB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_lvB:
                ; Calculate screen position
                mov dx, [LVB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LVB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LVL_WIDTH
                jb .loop_x_lvB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LVL_HEIGHT
            jb .loop_y_lvB

RRVB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_rvB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_rvB:
                ; Calculate screen position
                mov dx, [RVB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [RVB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LVL_WIDTH
                jb .loop_x_rvB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LVL_HEIGHT
            jb .loop_y_rvB

LLMVB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_lmvB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_lmvB:
                ; Calculate screen position
                mov dx, [LMVB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LMVB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MVL_WIDTH
                jb .loop_x_lmvB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MVL_HEIGHT
            jb .loop_y_lmvB

RRMVB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_rmvB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_rmvB:
                ; Calculate screen position
                mov dx, [RMVB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [RMVB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MVL_WIDTH
                jb .loop_x_rmvB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MVL_HEIGHT
            jb .loop_y_rmvB

LLMHB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_lmhB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_lmvB:
                ; Calculate screen position
                mov dx, [LMHB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LMHB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MHL_WIDTH
                jb .loop_x_lmvB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MHL_HEIGHT
            jb .loop_y_lmhB

RRMHB:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_rmhB:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_rmhB:
                ; Calculate screen position
                mov dx, [RMHB_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [RMHB_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MHL_WIDTH
                jb .loop_x_rmhB ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MHL_HEIGHT
            jb .loop_y_rmhB

LMHBL:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_lmhBl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_lmhBl:
                ; Calculate screen position
                mov dx, [LHBL_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LHBL_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LLH_WIDTH
                jb .loop_x_lmhBl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LLH_HEIGHT
            jb .loop_y_lmhBl

RMHBR:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_rhBl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_rhBl:
                ; Calculate screen position
                mov dx, [RHBL_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [RHBL_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LLH_WIDTH
                jb .loop_x_rhBl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LLH_HEIGHT
            jb .loop_y_rhBl

TMVBML:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_midt:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_midt:
                ; Calculate screen position
                mov dx, [TLVBM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [TLVBM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MidV_WIDTH
                jb .loop_x_midt ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MidV_HEIGHT
            jb .loop_y_midt

MVBLML:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_midm:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_midm:
                ; Calculate screen position
                mov dx, [MVBLM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [MVBLM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MidM_WIDTH
                jb .loop_x_midm ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MidM_HEIGHT
            jb .loop_y_midm

BLVBML:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_midv:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_midv:
                ; Calculate screen position
                mov dx, [BLVBM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [BLVBM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MidB_WIDTH
                jb .loop_x_midv ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MidB_HEIGHT
            jb .loop_y_midv

TMHBML:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_midht:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_midht:
                ; Calculate screen position
                mov dx, [TLHBM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [TLHBM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MidHB_WIDTH
                jb .loop_x_midht ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MidHB_HEIGHT
            jb .loop_y_midht

MHBLML:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_midhm:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_midhm:
                ; Calculate screen position
                mov dx, [MHBLM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [MHBLM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MidHB_WIDTH
                jb .loop_x_midhm ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MidHB_HEIGHT
            jb .loop_y_midhm

BLHBML:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_midhv:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_midhv:
                ; Calculate screen position
                mov dx, [BLHBM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [BLHBM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, MidHB_WIDTH
                jb .loop_x_midhv ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, MidB_HEIGHT
            jb .loop_y_midhv


LLMHL:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_lmhll:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_lmhll:
                ; Calculate screen position
                mov dx, [LLHM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LLHM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LHB_WIDTH
                jb .loop_x_lmhll ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LHB_HEIGHT
            jb .loop_y_lmhll

BBLM:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_bblm:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_bblm:
                ; Calculate screen position
                mov dx, [BBM_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [BBM_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LHB_WIDTH
                jb .loop_x_bblm ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LHB_HEIGHT
            jb .loop_y_bblm

FSPP:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_spp:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_spp:
                ; Calculate screen position
                mov dx, [SPP_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [SPP_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, EDH_WIDTH
                jb .loop_x_spp ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, EDH_HEIGHT
            jb .loop_y_spp

ILH:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_inl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_inl:
                ; Calculate screen position
                mov dx, [LH_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LH_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, EDV_WIDTH
                jb .loop_x_inl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, EDV_HEIGHT
            jb .loop_y_inl

ILHL:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_linl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_linl:
                ; Calculate screen position
                mov dx, [LRH_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [LRH_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, EDV_WIDTH
                jb .loop_x_linl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, EDV_HEIGHT
            jb .loop_y_linl

LMIW:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_miwl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_miwl:
                ; Calculate screen position
                mov dx, [MIW_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [MIW_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, EDN_WIDTH
                jb .loop_x_miwl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, EDN_HEIGHT
            jb .loop_y_miwl

RMIWL:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_riwl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_riwl:
                ; Calculate screen position
                mov dx, [RMIW_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [RMIW_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, EDN_WIDTH
                jb .loop_x_riwl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, EDN_HEIGHT
            jb .loop_y_riwl

LIBW:  ;1st middle small right  vertical bar

        mov cx, 0  ; Y coordinate for the emoji
        .loop_y_ibwl:
            mov bx, 0  ; X coordinate for the emoji
            .loop_x_ibwl:
                ; Calculate screen position
                mov dx, [IBW_Y]
                add dx, cx
                mov ax, SCREEN_WIDTH
                mul dx
                add ax, [IBW_X]
                add ax, bx
                mov di, ax

                mov al, 1  ; Color value for white

                ; Display the pixel
                mov [es:di], al

                ; Increase X for the emoji
                inc bx
                cmp bx, LST_WIDTH
                jb .loop_x_ibwl ; Continue the loop if not at the end of the sprite

            ; Increment Y for the emoji
            inc cx
            cmp cx, LST_HEIGHT
            jb .loop_y_ibwl



      ; Wait for a key press and exit
        mov ah, 0
        int 16h
        ; TODO: Add code to revert back to old screen type & clear screen
        int 20h
