# 2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8

## Functional Specifications

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>Table of Content</summary>

- [2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8](#2023-2024---project-2---x86-retrogaming---team---8)
  - [Functional Specifications](#functional-specifications)
  - [**1. Introduction:**](#1-introduction)
  - [**2. Project Overview**](#2-project-overview)
  - [**3. Personas \& Use Case**](#3-personas--use-case)
    - [Use Cases](#use-cases)
      - [Use Case 1: Initiate Pac-Man Game](#use-case-1-initiate-pac-man-game)
      - [Use Case 2: Navigate Pac-Man Through the Maze](#use-case-2-navigate-pac-man-through-the-maze)
      - [Use Case 3: End Pac-Man Game](#use-case-3-end-pac-man-game)
    - [**4. Functionalities**](#4-functionalities)
      - [Gameplay Mechanics](#gameplay-mechanics)
    - [**5. Nice to have**](#5-nice-to-have)
    - [**6. Milestones**](#6-milestones)
    - [**7. Interfaces**](#7-interfaces)
    - [**8. Risk \& Assumption**](#8-risk--assumption)
    - [**9. Non-Functional**](#9-non-functional)
    - [**10. Evaluation Criteria**](#10-evaluation-criteria)
    - [**References**](#references)
    - [**Glossary**](#glossary)

</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## **1. Introduction:**

- **Brief history of Pac-Man:**

  Pac-Man is a game that was **created by Namco and directed by Toru Iwatani.** The project started in the 1970s and was implemented in an arcade in 1980 with the name of **“Puck Man”.** Then the name of the game was changed to the one we all know nowadays when it was imported into the US. After that, Pac-Man started to become popular, and more than 100,000 units were sold. In 1981 in the US, it was the turn of Ms. Pac-Man, which is the same as the preceding game but with a feminine character and an alternating maze design system. Next, in 1982, Super Pac-Man was created in Japan. Its goal was the same, but with some differences because the main character has to eat keys to open doors and then eat fruits that were behind compared to the original one. After that, many Pac-Man games were created, and some of them were re-adapted over the years.

  ![Alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYKgZAO-K5yrvdLq9pz355DYI8TxcM4gI5A&usqp=CAU)

- **Description of Pac-Man as a game:**

  What is Pac-Man? This video game is an arcade game with simple rules. We have a main character named “Pac-Man” that refers to an image of a pizza with a slice removed and ghosts who are the enemies of the main character. Pac-Man's gameplay is centered on strategy and quick reflexes. Players must navigate the maze and avoid the ghosts, each of which has its pursuit pattern. Then the player needs to eat every pellet on the maze without being touched by the ghosts to complete the level. However, there are specific pellets known as Power Pellets they have a distinct trait which is being bigger than the others; these pellets allow Pac-Man to attack the ghosts and take them out for a short time, giving points for a better score.

## **2. Project Overview**

- **1. Project Scope:**
  We've been tasked by ALGOSUP to undertake a project that must be completed within a tight 7 week deadline. The primary goal of this project is to recreate the classic game Pac-Man by replicating its visual representation just as it appeared on its original release date, which was May 22, 1980.
- **2. Objective:**
  The main objective of the project is to reproduce the game Pac-Man in assembly programming language, Keeping its old visual graphics, which were the graphics it had in 1980.

- Replicate classic Pac-Man in x86 processor.
- The program should run and execute on DosBox.
- Should be completed within 7 weeks.

## **3. Personas & Use Case**

![Alt text](../../Images/Philippebourseillerfixed.jpg)

![Alt text](../../Images/Lisaescofferfixed.jpg)

![Alt text](../../Images/Ethanbergerfixed.jpg)

### Use Cases

#### Use Case 1: Initiate Pac-Man Game

**Actors:** Player

**Goals:**

- Launch the Pac-Man game.

**Main Success Scenario:**

1. The player launches the Pac-Man game.
2. The game initializes, showing the main menu.
3. The player starts a new game.
4. The initial level is loaded with Pac-Man, ghosts, and maze.
5. The gameplay begins, and the player controls Pac-Man.

**Preconditions:**

- The game software is properly installed and functioning.

**Exit Condition:**

- The game is in a playable state with the player controlling Pac-Man.

#### Use Case 2: Navigate Pac-Man Through the Maze

**Actors:** Player

**Goals:**

- Move Pac-Man through the maze.
- Eat the fruits to score points.
- Run away from ghosts to stay alive.
- Clear the entire maze.

**Main Success Scenario:**

1. The player presses the start button to begin the game.
2. The game initializes and loads the level.
3. Pac-Man appears in a precise starting position.
4. The player uses arrow keys to move Pac-Man with the following functions: up, down, left, or right.
5. Pac-Man's position is updated accordingly.
6. As Pac-Man moves, it consumes pellets in its path.
7. Each pellet eaten contributes to the player's score.
8. The player must move Pac-Man every time to avoid contact with ghosts.
9. If Pac-Man collides with a ghost, the player loses a life.
10. When Pac-Man eats a power pellet, the ghosts turn blue, indicating their vulnerability for a short time.
11. Pac-Man can now eat the vulnerable ghosts for additional points.
12. The player continues navigating Pac-Man through the maze, eating fruits, and avoiding ghosts.
13. The game level is considered complete when all the fruit is consumed.

**Score:**

- Every 10,000 points, the player earns an extra life.

**Preconditions:**

- The player has initiated the Pac-Man game.

**Exit Condition:**

- The player has completed a game level, earned points, and the game is ready for the next level or has ended with the player's final score displayed.

---

#### Use Case 3: End Pac-Man Game

**Actors:** Player

**Goals:**

- End the Pac-Man game.

**Main Success Scenario:**

1. If Pac-Man loses all lives (due to ghost collisions), the game ends.
2. The system displays the player's final score.
3. The system offers an option to restart or exit the game.

**Preconditions:**

- The player has completed a game level and earned points.

**Exit Condition:**

- The player has chosen to restart or exit the game.

### **4. Functionalities**

#### Gameplay Mechanics

- **Basic Gameplay:**

  - Navigate Pac-Man through a maze using the four directional keys, eating pellets while avoiding four ghosts:
    - **Blinky (Red)**
    - **Pinky (Pink)**
    - **Inky (Light Blue)**
    - **Clyde (Orange)**
    <p align="center"><img src="https://thereader.mitpress.mit.edu/wp-content/uploads/2020/11/pacman-lead-graphic.jpg" alt="Pac-Man Gameplay" width="400"></p>

- **Pellet Collection:**

  - Clear the maze of 244 pellets, including 240 small pellets worth 10 points each and four large, flashing power pellets worth 50 points each.
  <p align="center"><img src="https://pbs.twimg.com/media/D2NUyD6VAAAI5pl.jpg" alt="Pellet Collection" width="400"></p>

- **Score Boosters:**

  - Increase your score by turning ghosts vulnerable with power pellets, earning points for each ghost eaten, and collecting bonus symbols (fruits or collectibles).

- **Fruits and Collectibles:**

  - In addition to pellets and power pellets, various fruits and collectibles appear in the maze, providing bonus points:
    - **Cherry:** 100 points
    - **Strawberry:** 300 points
    - **Orange:** 500 points
    - **Apple:** 700 points
    - **Melon:** 1000 points
    - **Galaxian Spaceship:** 2000 points
    - **Bell:** 3000 points
    - **Key:** 5000 points
    <p align="center"><img src="https://static.wikia.nocookie.net/pacman/images/2/25/Fruits_Points.png/revision/latest/scale-to-width-down/256?cb=20210921001546" alt="Fruits and Collectibles" width="400"></p>

- **Ghosts' Behavior:**

  - Ghosts switch between chase, scatter, and frightened modes. Each ghost exhibits unique behavior during the chase.
    - **Blinky (Red):** Aggressive and hard to shake once behind you.
    - **Pinky (Pink):** Prefers getting in front of Pac-Man and cutting him off.
    - **Inky (Light Blue):** Unpredictable and the least foreseeable in their actions.
    - **Clyde (Orange):** Often seems to do his own thing and stays out of the way.
    <p align="center"><img src="https://wallpapers.com/images/hd/pacman-2560-x-1440-d5yj0fug2f7amq51.jpg" alt="Ghosts' Behavior" width="400"></p>

- **Mode Alternation:**

  - Ghosts alternate between chase and scatter modes at predetermined intervals. Players can use scatter periods to clear pellets from dangerous areas.

- **Frightened Mode:**

  - Pac-Man can turn the tables by consuming power pellets, making ghosts vulnerable and earning extra points. Frightened ghosts wander aimlessly, flashing before returning to normal.
  <p align="center"><img src="https://i0.wp.com/perfectpacman.com/wp-content/uploads/2022/11/Patterns-07-Frightened-mode.png?resize=403%2C204&ssl=1" alt="Frightened Mode" width="400"></p>

- **Speed Dynamics:**

  - Pac-Man's speed changes based on levels and actions. Ghosts' speed is influenced by tunnels, frightened mode, and game progression.

- **Cornering Technique:**

  - The cornering technique is used to navigate turns faster than ghosts, gaining an advantage for survival in higher levels.

- **Ghost House Dynamics:**

  - The ghost house, or monster pen, is a safe zone for ghosts. The Ghosts will reappear from this zone during the game if they are eaten in frightened mode.

- _Sounds and music_:

  - Add the sound effect of the original Pac-Man and add remixed music adapted for the 8-bit system.
  - **Intro Sound:**

    - [Intro.mp3](../Specifications/sound_files/Intro.mp3) - The sound effect for the original Pac-Man intro.

  - **Ghost Sound:**

    - [Ghost.mp3](../Specifications/sound_files/Ghost.mp3) - The iconic sound when encountering ghosts.

  - **Fruit Sound:**

    - [Fruit.mp3](../Specifications/sound_files/Fruit.mp3) - The sound of collecting fruits.

  - **Extra Sound:**

    - [Extra.mp3](../Specifications/sound_files/Extra.mp3) - The sound indicating an extra life.

  - **Death Sound:**

    - [Death.mp3](../Specifications/sound_files/Death.mp3) - The dramatic sound of Pac-Man's demise.

  - **Cutscene Sound:**

    - [Cutscene.mp3](../Specifications/sound_files/Cutscene.mp3) - The sound associated with in-game cutscenes.

  - **Chomp Sound:**
    - [Chomp.mp3](../Specifications/sound_files/Chomp.mp3) - The satisfying chomping sound.

### **5. Nice to have**

- _Better randomness_:

  - Improve the ghost movement algorithm and their different modes:

    - Chase → A ghost’s objective in chase mode is to find and capture Pac-Man by hunting him.
    - Scatter → In scatter mode, the ghosts give up the chase for a few seconds and head for their respective home corners. It’s a brief rest; soon, they will revert to chase mode and be after Pac-Man again.
    - Frightened → Ghosts enter frightened mode whenever Pac-Man eats one of the four energizers located in the far corners of the maze.

<p align="center">
  <img src="https://wallpapers.com/images/hd/pacman-2560-x-1440-d5yj0fug2f7amq51.jpg" alt="assembly" width="200" height="150">
</p>

- _Adding More Mechanics_:

  - Adding a limited two-times score bonus.

- _Difficulties levels_:

  - Adding different difficulty levels "Easy, Normal, and Hard," like a harder maze for faster gameplay.

- _Score management_:

  - Calculate the score depending on the items the player takes.

- _High scores_:

  - Placing the high score on the top of the screen during the game is part of the new feature to be implemented in case deadlines are not meeting.

### **6. Milestones**

- Deadlines:

<div align="center">

|  Dates   |  Time   |           Deliverables            |
| :------: | :-----: | :-------------------------------: |
| 11-13-23 | 1:30 pm | Functional specification deadline |
| 11-27-23 | 1:30 pm | Technical specification deadline  |
| 12-08-23 |  5 pm   |        Test plan deadline         |
| 12-11-23 |  5 pm   |    Working prototype deadline     |
| 12-21-23 |  5 pm   |      Final product deadline       |

</div>

### **7. Interfaces**

- **Graphical User Interface (GUI):**

  - The GUI encompasses various elements to enhance the player's experience.

  - **Menu System:**

    - Displays options such as start and settings at the beginning of the game.

  - **HUD (Heads-Up Display):**
    - During gameplay, important information like the player's score, remaining lives, and level number is presented on-screen.

- **Gameplay Mechanics:**
  - The game adopts a top-down, 2D perspective to provide a comprehensive view of the action.

### **8. Risk & Assumption**

**Risks:**

- **Technical Risks:**

  - Potential challenges in x86 assembly programming and ensuring compatibility with DOSBox.
    - Examples include difficulties in optimizing performance or managing low-level hardware interactions.

- **Scope Risks:**

  - Risk of feature creep, with the introduction of additional features impacting the project timeline.

- **Testing Risks:**

  - Challenges in testing the game, particularly in an emulator environment, necessitating thorough quality assurance.

- **Performance Risks:**

  - Consideration of the risk of performance bottlenecks or slow gameplay on less powerful systems when running in DOSBox.

- **Legal and Intellectual Property Risks:**
  - Evaluation of copyright issues related to Pac-Man's intellectual property before publishing the game.

**Assumptions:**

- **Hardware and Software Assumptions:**

  - Creation of a package containing all necessary files to run the game in DOSBox, ensuring system independence.

- **Resource Assumptions:**

  - Utilization of project planning tools such as Notion for outlining project scope and tasks.
  - Deployment of collaboration tools such as Slack for effective communication and resource sharing.
  - Acquisition of simple sound effects for game events.
  - Reference to online documentation and assembly language tutorials.

- **Emulator Assumptions:**

  - Utilization of the latest version of DOSBox for its features and improvements.

- **Testing Assumptions:**

  - Creation of test cases for each function.
  - Conducting unit tests for independent components, including the game loop, input handling, and collision detection.

- **Game Design Assumptions:**
  - Preservation of the classic Pac-Man gameplay experience.
  - Focus on a single-player experience, excluding multiplayer features.
  - Restriction of player input to keyboard controls for development simplicity.
  - Implementation of a straightforward scoring system without complex mechanics.

### **9. Non-Functional**

1. **Performance Requirements:**

   - **Response Time:** The input should have a maximum response time of 50 milliseconds.
   - **Frame Rate:** The game should maintain a minimum frame rate of 60fps.
   - **Loading Time:** The game must load within 5 seconds, with a short time delay during loading and game starting.

2. **Compatibility:**

   - The game is designed to run seamlessly on all major operating systems without any platform or system preference.

3. **Documentation:**

   - Developers will be provided with comprehensive functional and technical documents for project development.
   - End-users will receive a user manual offering detailed information on game functionality and instructions on gameplay.

4. **Performance on Low-End Systems:**
   - The game is expected to function optimally on both high-performance and low-performance systems.

### **10. Evaluation Criteria**

- **Enjoyability:**

  - Captures the classic Pac-Man experience with intuitive controls.
  - Well-designed level that balances challenges and fairness.
  - Engaging gameplay that maintains player attention.
  - High-quality audio and visual elements contributing to immersion.
  - User satisfaction with the overall gaming experience.

- **Game Performance:**

  - No crashes detected during gameplay sessions.
  - Smooth gameplay (60 fps) for an enjoyable experience.
  - All advertised functionalities are present and well-presented.

- **Customer Satisfaction:**
  - The game meets the expectations of both players and the customer.
  - Robustness of the program ensures a reliable gaming experience.

### **References**

Pac-Man Game: [Pacman](https://www.toupty.com/jeupacman.html)

Pac-Man Document: [Information](https://fr.wikipedia.org/wiki/Pac-Man)

### **Glossary**

**DOSBox**:
DOSBox is an open-source emulator that enables the emulation of MS-DOS (Microsoft Disk Operating System) on modern computer systems. It allows users to run and play software designed for MS-DOS, including classic video games and applications, on contemporary platforms. DOSBox provides a virtual environment that replicates the functionality of MS-DOS, allowing users to experience and interact with legacy software that was originally developed for DOS-based systems.

**HUD**: In video gaming, the HUD (heads-up display) or status bar is the method by which information is visually relayed to the player as part of a game's user interface. It takes its name from the head-up displays used in modern aircraft.

**Fruits**: There are different types of fruits in Pac-Man. These items appear in the maze and serve as bonus points for the player when consumed. Each fruit has a specific point value, adding an extra layer of challenge and reward to the gameplay.

**Power Pellets**: These are special pellets in Pac-Man that grant Pac-Man the ability to turn the tables on ghosts. When Pac-Man consumes a power pellet, ghosts turn blue and become vulnerable for a short period. During this time, Pac-Man can eat the frightened ghosts, earning additional points.

**Scatter Mode**: A behavior exhibited by ghosts in Pac-Man. During scatter mode, ghosts temporarily retreat to their home corners, providing players with a strategic opportunity to navigate the maze more safely.

**Chase Mode**: The default behavior of ghosts where they actively pursue Pac-Man throughout the maze. Each ghost has a unique chasing pattern, adding complexity to the gameplay.

**Frightened Mode**: A state induced by Power Pellets where ghosts become vulnerable, changing color and wandering aimlessly. In this mode, Pac-Man can earn extra points by consuming the frightened ghosts.

**Frame Rate**: The number of frames per second (fps) at which the game is designed to run. A higher frame rate contributes to smoother and more enjoyable gameplay.

**Response Time**: The time it takes for the game to register and respond to user inputs, contributing to the overall responsiveness of the gameplay.

**Enjoyability Criteria**: The qualitative aspects of the game that contribute to the player's enjoyment. This includes intuitive controls, well-designed levels, engaging gameplay, high-quality audio, and visual elements that enhance the gaming experience.
