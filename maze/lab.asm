section .data
    ; Définition du labyrinthe (5x8)
    labyrinth db 1, 1, 1, 1, 0, 1, 1, 1
              db 1, 0, 0, 0, 0, 0, 1, 1
              db 1, 0, 1, 1, 1, 0, 1, 1
              db 1, 0, 0, 0, 1, 0, 0, 1
              db 1, 1, 1, 1, 1, 1, 1, 1
    width   equ 8
    height  equ 5

section .text
global _start

_start:
    mov esi, labyrinth          ; Pointeur vers le début du labyrinthe
    mov ecx, height             ; Compteur pour les lignes

print_labyrinth:
    push ecx                    ; Sauvegarde le compteur de ligne
    mov ecx, width              ; Réinitialise le compteur de colonne pour chaque ligne

print_line:
    lodsb                       ; Charge la tuile actuelle dans AL et incrémente ESI
    cmp al, 0                   ; Vérifie si la tuile est un chemin
    je is_path
    mov al, '#'                 ; Tuile de mur
    jmp print_char

is_path:
    mov al, '   '                 ; Tuile de chemin

print_char:
    call print                  ; Affiche le caractère
    loop print_line             ; Continue jusqu'à la fin de la ligne

    ; Alignement pour la prochaine ligne du labyrinthe, pas besoin de dec esi ici
    call newline                ; Passe à la ligne suivante
    pop ecx                     ; Restaure le compteur de ligne
    loop print_labyrinth        ; Continue jusqu'à la fin du labyrinthe

    ; Sortie du programme
    mov eax, 1                  ; Syscall pour exit
    xor ebx, ebx                ; Status 0
    int 0x80

; Sous-routine d'affichage
print:
    mov ah, 0x0e                ; Fonction d'affichage Teletype
    int 0x10                    ; Interruption pour afficher le caractère
    ret

; Sous-routine pour passer à la ligne suivante
newline:
    mov al, 10                  ; Caractère de saut de ligne
    call print
    mov al, 13                  ; Caractère de retour chariot
    call print
    ret
