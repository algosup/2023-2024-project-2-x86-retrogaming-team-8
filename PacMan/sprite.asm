org 100h

section .data

;Items

;Fruits
        ;Strawberry
strawberry db 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
           db 0x00, 0x00, 0x06, 0x06, 0x0F, 0x06, 0x06, 0x00, 0x00,
           db 0x00, 0x00, 0x28, 0x06, 0x06, 0x06, 0x28, 0x00, 0x00,
           db 0x00, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00,
           db 0x00, 0x00, 0x28, 0x0F, 0x28, 0x0F, 0x28, 0x00, 0x00,
           db 0x00, 0x00, 0x28, 0x28, 0x28, 0x28, 0x28, 0x00, 0x00,
           db 0x00, 0x00, 0x28, 0x0F, 0x28, 0x0F, 0x28, 0x00, 0x00,
           db 0x00, 0x00, 0x00, 0x28, 0x28, 0x28, 0x00, 0x00, 0x00,
           db 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00,
           db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,




; Pellet
        ;superPellet
        superPellet db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    db 0x00, 0x57, 0x57, 0x57, 0x57, 0x00,
                    db 0x57, 0x57, 0x57, 0x57, 0x57, 0x57,
                    db 0x57, 0x57, 0x57, 0x57, 0x57, 0x57,
                    db 0x57, 0x57, 0x57, 0x57, 0x57, 0x57,
                    db 0x57, 0x57, 0x57, 0x57, 0x57, 0x57,
                    db 0x00, 0x57, 0x57, 0x57, 0x57, 0x00,
                    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

        ;pellet
        pellet      db 0x57, 0x57
                    db 0x57, 0x57


;Animation's for Pac-Man
        ;Default Pac-Man
        pacmanDefault   db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

        ;Move Down
      pacmanChompDown1  db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 

      pacmanChompDown2  db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

        ;Move Up
        pacmanChompUp1  db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

        pacmanChompUp2  db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

        ;Move Left                
     pacmanChompLeft1   db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

     pacmanChompLeft2   db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                        db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

        ;Move Right
     pacmanChompRight1  db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                        db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

     pacmanChompRight2 db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                       db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                       db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                       db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                       db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                       db 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                       db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                       db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                       db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                       db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,

;Death Animation's
  pacmanDeath1  db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmanDeath2   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmanDeath3   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00,
                db 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmanDeath4   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmanDeath5   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmanDeath6   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmanDeath7   db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

  pacmanDeath8  db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C,
                db 0x00, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,


  pacmanDeath9  db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,


 pacmanDeath10  db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

 pacmandeath11  db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x00, 0x2C, 0x00, 0x2C, 0x00, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x2C, 0x00, 0x2C, 0x00, 0x00,
                db 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,


;Maze Sprites

   wallBasic1    db 0x00,0x00,0x00,0x00,0x00,0x00 ;1
                 db 0x00,0x00,0x00,0x00,0x00,0x00
                 db 0x00,0x00,0x00,0x00,0x00,0x00
                 db 0x20,0x20,0x20,0x20,0x20,0x20
                 db 0x00,0x00,0x00,0x00,0x00,0x00
                 db 0x00,0x00,0x00,0x00,0x00,0x00

    wallBasic2   db 0x00,0x00,0x00,0x00,0x00,0x00 ;2
                 db 0x00,0x00,0x00,0x00,0x00,0x00
                 db 0x20,0x20,0x20,0x20,0x20,0x20
                 db 0x00,0x00,0x00,0x00,0x00,0x00
                 db 0x00,0x00,0x00,0x00,0x00,0x00
                 db 0x00,0x00,0x00,0x00,0x00,0x00
             
    wallBasic3   db 0x00,0x00,0x20,0x00,0x00,0x00 ;3
                 db 0x00,0x00,0x20,0x00,0x00,0x00
                 db 0x00,0x00,0x20,0x00,0x00,0x00
                 db 0x00,0x00,0x20,0x00,0x00,0x00
                 db 0x00,0x00,0x20,0x00,0x00,0x00
                 db 0x00,0x00,0x20,0x00,0x00,0x00

    wallBasic4   db 0x00,0x00,0x00,0x20,0x00,0x00 ;4
                 db 0x00,0x00,0x00,0x20,0x00,0x00
                 db 0x00,0x00,0x00,0x20,0x00,0x00
                 db 0x00,0x00,0x00,0x20,0x00,0x00
                 db 0x00,0x00,0x00,0x20,0x00,0x00
                 db 0x00,0x00,0x00,0x20,0x00,0x00
    
    ; Basic angles backwards

    angleBasic1 db 0x00,0x00,0x00,0x00,0x00,0x00 ;5
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x20
                db 0x00,0x00,0x00,0x00,0x20,0x00
                db 0x00,0x00,0x00,0x20,0x00,0x00

    angleBasic2 db 0x00,0x00,0x00,0x00,0x00,0x00 ;6
                db 0x00,0x00,0x00,0x00,0x00,0x00 
                db 0x00,0x00,0x00,0x00,0x00,0x00 
                db 0x20,0x00,0x00,0x00,0x00,0x00 
                db 0x00,0x20,0x00,0x00,0x00,0x00 
                db 0x00,0x00,0x20,0x00,0x00,0x00 

    angleBasic3 db 0x00,0x00,0x20,0x00,0x00,0x00 ;7
                db 0x00,0x20,0x00,0x00,0x00,0x00
                db 0x20,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00

    angleBasic4 db 0x00,0x00,0x00,0x20,0x00,0x00 ;8
                db 0x00,0x00,0x00,0x00,0x20,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x20
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00

    ; Basic angles forward

    angleBasic5 db 0x00,0x00,0x00,0x00,0x00,0x00 ;9
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x20,0x20
                db 0x00,0x00,0x00,0x20,0x00,0x00
                db 0x00,0x00,0x20,0x00,0x00,0x00
                db 0x00,0x00,0x20,0x00,0x00,0x00

    angleBasic6 db 0x00,0x00,0x00,0x00,0x00,0x00 ;10
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x20,0x20,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x20,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x20,0x00,0x00
                db 0x00,0x00,0x00,0x20,0x00,0x00

    angleBasic7 db 0x00,0x00,0x00,0x20,0x00,0x00 ;11
                db 0x00,0x00,0x00,0x20,0x00,0x00
                db 0x00,0x00,0x20,0x00,0x00,0x00
                db 0x20,0x20,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00

    angleBasic8 db 0x00,0x00,0x20,0x00,0x00,0x00 ;12
                db 0x00,0x00,0x20,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x20,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x20,0x20
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
    
    ; Double Wall

    doubleWall1 db 0x20,0x20,0x20,0x20,0x20,0x20 ;13
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x20,0x20,0x20,0x20,0x20,0x20
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00

    doubleWall2 db 0x00,0x00,0x00,0x00,0x00,0x00 ;14
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x20,0x20,0x20,0x20,0x20,0x20
                db 0x00,0x00,0x00,0x00,0x00,0x00
                db 0x20,0x20,0x20,0x20,0x20,0x20

    doubleWall3 db 0x00,0x00,0x00,0x20,0x00,0x20 ;15
                db 0x00,0x00,0x00,0x20,0x00,0x20
                db 0x00,0x00,0x00,0x20,0x00,0x20
                db 0x00,0x00,0x00,0x20,0x00,0x20
                db 0x00,0x00,0x00,0x20,0x00,0x20
                db 0x00,0x00,0x00,0x20,0x00,0x20

    doubleWall4 db 0x20,0x00,0x20,0x00,0x00,0x00 ;16
                db 0x20,0x00,0x20,0x00,0x00,0x00
                db 0x20,0x00,0x20,0x00,0x00,0x00
                db 0x20,0x00,0x20,0x00,0x00,0x00
                db 0x20,0x00,0x20,0x00,0x00,0x00
                db 0x20,0x00,0x20,0x00,0x00,0x00
    
    ; Angle double Wall

angleDoubleWall1 db 0x00,0x00,0x00,0x20,0x20,0x20 ;17
                 db 0x00,0x00,0x20,0x00,0x00,0x00 
                 db 0x00,0x20,0x00,0x00,0x20,0x20 
                 db 0x20,0x00,0x00,0x20,0x00,0x00 
                 db 0x20,0x00,0x20,0x00,0x00,0x00 
                 db 0x20,0x00,0x20,0x00,0x00,0x00 

angleDoubleWall2 db 0x20,0x20,0x20,0x00,0x00,0x00 ;18
                 db 0x00,0x00,0x00,0x20,0x00,0x00
                 db 0x20,0x20,0x00,0x00,0x20,0x00
                 db 0x00,0x00,0x20,0x00,0x00,0x20
                 db 0x00,0x00,0x00,0x20,0x00,0x20
                 db 0x00,0x00,0x00,0x20,0x00,0x20

angleDoubleWall3 db 0x00,0x00,0x00,0x20,0x00,0x20 ;19
                 db 0x00,0x00,0x00,0x20,0x00,0x20
                 db 0x00,0x00,0x20,0x00,0x00,0x20
                 db 0x20,0x20,0x00,0x00,0x20,0x00
                 db 0x00,0x00,0x00,0x20,0x00,0x00
                 db 0x20,0x20,0x20,0x00,0x00,0x00

angleDoubleWall4 db 0x20,0x00,0x20,0x00,0x00,0x00 ;20
                 db 0x20,0x00,0x20,0x00,0x00,0x00
                 db 0x20,0x00,0x00,0x20,0x00,0x00
                 db 0x00,0x20,0x00,0x00,0x20,0x20
                 db 0x00,0x00,0x20,0x00,0x00,0x00
                 db 0x00,0x00,0x00,0x20,0x20,0x20
    
    ; Other double angle wall

otherAngleDoubleWall1 db 0x20,0x20,0x20,0x20,0x20,0x20 ;21
                      db 0x00,0x00,0x00,0x00,0x00,0x00 
                      db 0x20,0x20,0x00,0x00,0x00,0x00 
                      db 0x00,0x00,0x20,0x00,0x00,0x00 
                      db 0x00,0x00,0x00,0x20,0x00,0x00 
                      db 0x00,0x00,0x00,0x20,0x00,0x00 
    
otherAngleDoubleWall2 db 0x20,0x20,0x20,0x20,0x20,0x20 ;22 
                      db 0x00,0x00,0x00,0x00,0x00,0x00
                      db 0x00,0x00,0x00,0x00,0x20,0x20
                      db 0x00,0x00,0x00,0x20,0x00,0x00
                      db 0x00,0x00,0x20,0x00,0x00,0x00
                      db 0x00,0x00,0x20,0x00,0x00,0x00

otherAngleDoubleWall3 db 0x20,0x00,0x00,0x00,0x00,0x00 ;23
                      db 0x20,0x00,0x00,0x00,0x00,0x00
                      db 0x20,0x00,0x00,0x00,0x20,0x20
                      db 0x20,0x00,0x00,0x20,0x00,0x00
                      db 0x20,0x00,0x20,0x00,0x00,0x00
                      db 0x20,0x00,0x20,0x00,0x00,0x00

otherAngleDoubleWall4 db 0x20,0x00,0x20,0x00,0x00,0x00 ;24
                      db 0x20,0x00,0x20,0x00,0x00,0x00
                      db 0x20,0x00,0x00,0x20,0x00,0x00
                      db 0x20,0x00,0x00,0x00,0x20,0x20
                      db 0x20,0x00,0x00,0x00,0x00,0x00
                      db 0x20,0x00,0x00,0x00,0x00,0x00

otherAngleDoubleWall5 db 0x00,0x00,0x00,0x20,0x00,0x20 ;25
                      db 0x00,0x00,0x00,0x20,0x00,0x20
                      db 0x00,0x00,0x20,0x00,0x00,0x20
                      db 0x20,0x20,0x00,0x00,0x00,0x20
                      db 0x00,0x00,0x00,0x00,0x00,0x20
                      db 0x00,0x00,0x00,0x00,0x00,0x20

otherAngleDoubleWall6 db 0x00,0x00,0x00,0x00,0x00,0x20 ;26
                      db 0x00,0x00,0x00,0x00,0x00,0x20
                      db 0x20,0x20,0x00,0x00,0x00,0x20
                      db 0x00,0x00,0x20,0x00,0x00,0x20
                      db 0x00,0x00,0x00,0x20,0x00,0x20
                      db 0x00,0x00,0x00,0x20,0x00,0x20
    
    ; Door double wall

    doorDoubleWall1 db 0x00,0x00,0x00,0x00,0x00,0x00 ;27
                    db 0x00,0x00,0x00,0x00,0x00,0x00
                    db 0x00,0x00,0x00,0x00,0x00,0x00
                    db 0x20,0x20,0x20,0x20,0x20,0x20
                    db 0x00,0x00,0x00,0x00,0x00,0x20
                    db 0x20,0x20,0x20,0x20,0x20,0x20

    doorDoubleWall2 db 0x00,0x00,0x00,0x00,0x00,0x00 ;28
                    db 0x00,0x00,0x00,0x00,0x00,0x00
                    db 0x00,0x00,0x00,0x00,0x00,0x00
                    db 0x20,0x20,0x20,0x20,0x20,0x20
                    db 0x20,0x00,0x00,0x00,0x00,0x00
                    db 0x20,0x20,0x20,0x20,0x20,0x20
    
    ; Double straight angle

   doubleStraightAngle1  db 0x00,0x00,0x00,0x00,0x00,0x00 ;29
                         db 0x00,0x00,0x00,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x20,0x20,0x20
                         db 0x00,0x00,0x00,0x20,0x00,0x00
                         db 0x00,0x00,0x00,0x20,0x00,0x20

    doubleStraightAngle2 db 0x00,0x00,0x00,0x00,0x00,0x00 ;30
                         db 0x00,0x00,0x00,0x00,0x00,0x00 
                         db 0x00,0x00,0x00,0x00,0x00,0x00 
                         db 0x20,0x20,0x20,0x00,0x00,0x00 
                         db 0x00,0x00,0x20,0x00,0x00,0x00 
                         db 0x20,0x00,0x20,0x00,0x00,0x00 

    doubleStraightAngle3 db 0x20,0x00,0x20,0x00,0x00,0x00 ;31
                         db 0x00,0x00,0x20,0x00,0x00,0x00
                         db 0x20,0x20,0x20,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x00,0x00,0x00

    doubleStraightAngle4 db 0x00,0x00,0x00,0x20,0x00,0x20 ;32
                         db 0x00,0x00,0x00,0x20,0x00,0x00
                         db 0x00,0x00,0x00,0x20,0x20,0x20
                         db 0x00,0x00,0x00,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x00,0x00,0x00
                         db 0x00,0x00,0x00,0x00,0x00,0x00
    
    ; Ghost Room

    ghostRoom db 0x00,0x00,0x00,0x00,0x00,0x00 ;33
              db 0x00,0x00,0x00,0x00,0x00,0x00
              db 0x00,0x00,0x00,0x00,0x00,0x00
              db 0x00,0x00,0x00,0x00,0x00,0x00
              db 0x54,0x54,0x54,0x54,0x54,0x54
              db 0x00,0x00,0x00,0x00,0x00,0x00

    ;Empty Space
    emptySpace db 0x00,0x00,0x00,0x00,0x00,0x00 ;0
               db 0x00,0x00,0x00,0x00,0x00,0x00
               db 0x00,0x00,0x00,0x00,0x00,0x00
               db 0x00,0x00,0x00,0x00,0x00,0x00
               db 0x00,0x00,0x00,0x00,0x00,0x00       
               db 0x00,0x00,0x00,0x00,0x00,0x00