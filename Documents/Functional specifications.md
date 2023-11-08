# 2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8
## Functional Specifications

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>📖 Table of content</summary>

- [2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8](#2023-2024---project2---x86--retrogaming---team-8)
    - [1. Introduction](#1-introduction)
    - [2. Project & Overview](#2-project-overview)
        - [1. Project Purpose](#1-project-purpose)
        - [2. Objective](#2-objective)
        - [3. Personas & Use Case](#3-personas--use-case)
        - [4. Functionalities](#4-functionalities)
        - [5. Milestones](#5-Milestones)
        - [6. Interface](#6-interface)
        - [7.Risk & Assumption](#7-risk--assumption)
        - [8. Evaluation criteria](#8-evaluation-criteria)
        - [9. Conclusion](#9-conclusion)
    - [Reference](#reference)
    - [Glosary](#glosary)

</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)



### 1. Introduction:
- A. Brief history of Pac-man :

    Pac-Man is a game that was <ins>created by Namco and directed by Toru Iwatani.</ins> The project started in 1970s and was implemented in an arcade in 1980 with the name of <ins>“Puck Man”.</ins> Then the name of the game was changed for the one we all know nowaday when it was imported into the US, after that Pac-Man started to become popular.

    ![Alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYKgZAO-K5yrvdLq9pz355DYI8TxcM4gI5A&usqp=CAU )
<br></br>
- B. Description of Pac-man as a game :

    It can be a wrong question but we need to know “What is Pac-Man ?”. This video game is an arcade game with simple rules. We have a main character named “Pac-Man” that refer  to an image of a pizza with a slice removed and ghosts which are the enemies of the main character. Pac-Man's gameplay is centered on strategy and quick reflexes. Players must navigate the maze and avoid the ghosts, each of which has its own pursuit pattern. Then the player need to eat every little cubes without be touched by the ghosts to have an access to the next level. However there’s a specific cube that is bigger than the other, this cube allow Pac-man to attack the ghost and take them out for a short time and giving points for a better score and to have access to the next level.

### 2. Project Overview:

#### 1. Project Scope:
We've been tasked by ALGOSUP to undertake a project that must be completed within a tight two-month deadline. The primary goal of this project is to recreate the classic game Pac-Man while paying meticulous attention to replicating its visual representation just as it appeared on its original release date, which was May 22, 1980.
#### 2. Objective:
Reproduce the game pacman in assembly programming language, Keeping it old visual graphique, that is in the year it was published 1980.

- A. Replicate classic Pac-Man in x86 processor.
- B. Enhance randomness and scores system.
- C. Add some new features.
- D. The program should be run and executed on DosBox.
- E. Should be completed within 2 months.

#### 3. Personas & Use Case


#### 4. Functionality

- :Better randomness:
  - We could improve the ghost movement algorithm and their different modes :
    - chase → A ghost’s objective in chase mode, is to find and capture Pac-Man by hunting him
    - scatter → In scatter mode the ghost give up the chase for a few second and head for their respective home corners. It’s a brief rest soon enough, they will revert to chase mode and be after Pac-Man again
    - frightened → Ghosts enter frightened mode whenever Pac-Man eats one of the four energizers located in the far corners of the maze

- Adding More Mechanics:
  - For exemple adding a limited 2 times score bonus.

- Adding Events:
  - At some moments or if we complete conditions we can have different events that start.

- Difficulties levels:
  - We could add different difficulties levels easy to hard, like harder maze or a faster gameplay

- Score management:
  - Calculate the score depending on the items the player takes.

- High scores:
  - Placing the highscore on the top of the screen during the game.

- Sounds and music:
  - We are adding the sound effect of the original Pacman and add remixed music addapted for the 8bit system.


-   Identity: 
    - Display a text box that allow the player to put in his name, before starting the game.

![Alt text](https://i.guim.co.uk/img/media/8152f8ea7f06fd8ef5c68a3a594e6ac35dfd774b/0_342_800_480/master/800.jpg?width=465&dpr=1&s=none)

#### 5. Milestones

- Deadlines:

<div align="center">

|Dates | Time | Deliverables|
| :---:| :---:| :---:|
|11-13-23 | 1.30pm | Functional specification deadline|
|11-27-23 | 1.30pm | Technical specification deadline|
|12-08-23 | 5pm | Test plan deadline|
|12-11-23 | 5pm | Working prototype deadline|
|12-21-23 | 5pm | Final product deadline|

</div>


#### 6. Interfaces

- Layout, maze, Pac-Man, ghosts, HUD.
    - We can reorganize the HUD to gather in one place bonus, lives and score.
    - The Pac-man design should be on pixel and the ghosts too


- Menus, settings, controls.
    - For this game, we must implement a start screen with a choice of the levels and some parameters like “mute the sound effect”.
    - The player should only use the four arrows keys to steer Pac-Man movement controls (up, down, left, right).
    - During the game we need a “menu” control to have a pause functionality and a way to reset the game.

#### 7. Risk & Assumption

#### 8. Evaluation criteria
- The game has to be entertaining as much as possible
- Gameplay criteria
- One of the main important thing and that's make a major part of the dificulty is the different walls that makes obstacle for the player and the ghost 
- Also, the level has to change when all the cubes have been taken
- performance criteria
- Adding the score and highscore system add a reason to play the game.
- user satisfaction criteria
#### 9. Conclusion


#### References

#### Glossary
