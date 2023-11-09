# 2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8
## Functional Specifications

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>📖 Table of content</summary>

- [2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8](#2023-2024---project-2---x86-retrogaming---team---8)
  - [Functional Specifications](#functional-specifications)
    - [**1. Introduction:**](#1-introduction)
    - [**2. Project Overview:**](#2-project-overview)
      - [**1. Project Scope:**](#1-project-scope)
      - [**2. Objective:**](#2-objective)
      - [**3. Personas \& Use Case**](#3-personas--use-case)
      - [**4. Functionality**](#4-functionality)
      - [**5. Milestones**](#5-milestones)
      - [**6. Interfaces**](#6-interfaces)
      - [**7. Risk \& Assumption**](#7-risk--assumption)
      - [**8. Evaluation criteria**](#8-evaluation-criteria)
      - [**9. Conclusion**](#9-conclusion)
    - [**References**](#references)
    - [**Glossary**](#glossary)

</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)



### **1. Introduction:**
- A. Brief history of Pac-man :

    Pac-Man is a game that was <ins>created by Namco and directed by Toru Iwatani.</ins> The project started in 1970s and was implemented in an arcade in 1980 with the name of <ins>“Puck Man”.</ins> Then the name of the game was changed for the one we all know nowaday when it was imported into the US, after that Pac-Man started to become popular and more than 100 000 units was sold. In 1981 in US it was the turn of Ms. Pac-Man which is the same that de precedent game but with a female character and an alternating maze design system. Next in 1982 is Super Pac-Man that was created in Japan and the goal was the same but with some differences because the main character has to eat keys to open doors and then eat fruits that was behind. After that, many pac-man games were created and for some of them they were re-adapted over the years.

    ![Alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYKgZAO-K5yrvdLq9pz355DYI8TxcM4gI5A&usqp=CAU )
<br></br>
- B. Description of Pac-man as a game :

    It can be a wrong question but we need to know “What is Pac-Man ?”. This video game is an arcade game with simple rules. We have a main character named “Pac-Man” that refer  to an image of a pizza with a slice removed and ghosts which are the enemies of the main character. Pac-Man's gameplay is centered on strategy and quick reflexes. Players must navigate the maze and avoid the ghosts, each of which has its own pursuit pattern. Then the player need to eat every little cubes without be touched by the ghosts to have an access to the next level. However there’s a specific cube that is bigger than the other, this cube allow Pac-man to attack the ghost and take them out for a short time and giving points for a better score and to have access to the next level.

### **2. Project Overview:**

#### **1. Project Scope:**
We've been tasked by ALGOSUP to undertake a project that must be completed within a tight two-month deadline. The primary goal of this project is to recreate the classic game Pac-Man while paying meticulous attention to replicating its visual representation just as it appeared on its original release date, which was May 22, 1980.
#### **2. Objective:**
Reproduce the game pacman in assembly programming language, Keeping it old visual graphique, that is in the year it was published 1980.

- A. Replicate classic Pac-Man in x86 processor.
- B. Enhance randomness and scores system.
- C. Add some new features.
- D. The program should be run and executed on DosBox.
- E. Should be completed within 2 months.

#### **3. Personas & Use Case**


#### **4. Functionality**

- *Better randomness*:
  - We could improve the ghost movement algorithm and their different modes :
    - chase → A ghost’s objective in chase mode, is to find and capture Pac-Man by hunting him
    - scatter → In scatter mode the ghost give up the chase for a few second and head for their respective home corners. It’s a brief rest soon enough, they will revert to chase mode and be after Pac-Man again
    - frightened → Ghosts enter frightened mode whenever Pac-Man eats one of the four energizers located in the far corners of the maze

- *Adding More Mechanics*:
  - For exemple adding a limited 2 times score bonus.

- *Adding Events*:
  - At some moments or if we complete conditions we can have different events that start.

- *Difficulties levels*:
  - We could add different difficulties levels easy to hard, like harder maze or a faster gameplay

- *Score management*:
  - Calculate the score depending on the items the player takes.

- *High scores*:
  - Placing the highscore on the top of the screen during the game.

- *Sounds and music*:
  - We are adding the sound effect of the original Pacman and add remixed music addapted for the 8bit system.


-   *Identity*: 
    - Display a text box that allow the player to put in his name, before starting the game.

![Alt text](https://i.guim.co.uk/img/media/8152f8ea7f06fd8ef5c68a3a594e6ac35dfd774b/0_342_800_480/master/800.jpg?width=465&dpr=1&s=none)

#### **5. Milestones**

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


#### **6. Interfaces**

- *Graphical User Interface (GUI)*:
  - The code will be executed and will run on DosBox.

- *Menu System*:
  - At the begining of the game a Menu option should be display, showing information like start and Option.
   
- *HUD (Heads-Up Display)*:
  - Information such as the player's score, lives remaining, and level number should be display on the screen during the gameplay process.

- *Gameplay Mechanics*:
  - We should have have a top-down view perspective, which is 2D view.

²   
#### **7. Risk & Assumption**

**Risks:**

- *Technical Risks*:
  - Some potential technical challenges related to x86 assembly programming and DOSBox compatibility. For example, difficulties in optimizing performance or handling low-level hardware interactions.

- *Scope Risks*:
  - Note the risk of feature creep, where additional features or requirements may be introduced during the project, potentially affecting the project's timeline.

- *Testing Risks*:
  - Address potential challenges in testing the game, especially in an emulator environment, and the need for thorough quality assurance.

- *Performance Risks*:
  - We have to consider the risk of performance bottlenecks or slow gameplay on less powerful systems when running in DOSBox.

- *Legal and Intellectual Property Risks*:
  - In case we are planning to publish the game we have to consider the copyright issues related to Pac-Man's intellectual property.
  
- *External Dependencies Risks*:
  - Note any dependencies on third-party libraries, tools, or services that could pose risks if they change or become unavailable.

**Assumptions:**

- *Hardware and Software Assumptions*:
  - Specify the hardware and software environments you assume players will use, such as the minimum system requirements for running the game in DOSBox.

- *Development Environment Assumptions*:
  - Describe the assumed development environment, including the development tools, assemblers, and debuggers that the team will use.

- *Project Timeline Assumptions*:
  - State any assumptions regarding project timelines, milestones, and release dates, based on the current project plan.

- *Resource Assumptions*:
  - Clearly outline assumptions related to resource availability, such as the team's availability, skill levels, and access to necessary equipment.

- *Emulator Assumptions*:
  - Assume a specific version or configuration of DOSBox for development and testing purposes unless other emulator versions are considered.

- *Testing Assumptions*:
  - Specify any testing assumptions, such as the availability of a comprehensive test suite and access to test devices or platforms.

- *Game Design Assumptions*:
  - List any design assumptions, including game mechanics, level design, and features that are predefined.

- *Compliance and Licensing Assumptions*:
  - Address any assumptions about the legal and licensing requirements, such as adherence to open-source licenses or intellectual property rights.


#### **8. Evaluation criteria**
- The game has to be entertaining as much as possible.
- Evaluate the graphique visual Design and audio of the game.
- No crash detected during the gameplay session.
- Resonnable level, No impossible level.
- New features added.
- Speed of the Game.
- All functionalities present and well presented.
- The game have to satisfied those who are playing "User" nand the customer.
- Robutness of the program.

#### **9. Conclusion**


### **References**
Pacman Game: [Pacman](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwiVy9nDq7WCAxVfTKQEHcjlCi8QFnoECBAQAQ&url=https%3A%2F%2Fwww.toupty.com%2Fjeupacman.html&usg=AOvVaw3lMU2cnWuQpaJqkbbFAaC9&opi=89978449)

Pacman Document: [Information](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjpkuTLq7WCAxWqcKQEHfsQAM0QFnoECBoQAQ&url=https%3A%2F%2Ffr.wikipedia.org%2Fwiki%2FPac-Man&usg=AOvVaw3O0OVSvLfHCNk6uyz-t3IL&opi=89978449)

### **Glossary**

[^1]: HUD In video gaming, the HUD (heads-up display) or status bar is the method by which information is visually relayed to the player as part of a game's user interface. It takes its name from the head-up displays used in modern aircraft.

