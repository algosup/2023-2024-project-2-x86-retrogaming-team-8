# 2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8

## Functional Specifications

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>📖 Table of content</summary>

- [2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8](#2023-2024---project-2---x86-retrogaming---team---8)
  - [Functional Specifications](#functional-specifications)
    - [**1. Introduction:**](#1-introduction)
    - [**2. Project Overview**](#2-project-overview)
      - [**3. Personas \& Use Case**](#3-personas--use-case)
        - [Use Case](#use-case)
        - [Title: Play Pac-Man Game](#title-play-pac-man-game)
        - [Actors: Player](#actors-player)
        - [Goals](#goals)
        - [Main Success Scenario](#main-success-scenario)
          - [Initiation](#initiation)
          - [Maze Setup](#maze-setup)
          - [Player Movement](#player-movement)
          - [Eat Foods](#eat-foods)
          - [Avoid Ghosts](#avoid-ghosts)
          - [Power Pellets](#power-pellets)
          - [Clearing the Maze](#clearing-the-maze)
          - [Level Completion](#level-completion)
          - [Game Over](#game-over)
          - [Score](#score)
          - [Preconditions](#preconditions)
          - [Post-conditions](#post-conditions)
      - [**4. Functionality**](#4-functionality)
      - [**5. Milestones**](#5-milestones)
      - [**6. Interfaces**](#6-interfaces)
      - [**7. Risk \& Assumption**](#7-risk--assumption)
      - [**8. Non-Functional**](#8-non-functional)
      - [**9. Evaluation Criteria**](#9-evaluation-criteria)
      - [**10. Conclusion**](#10-conclusion)
    - [**References**](#references)
    - [**Glossary**](#glossary)

</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

### **1. Introduction:**

- **Brief history of Pac-Man:**

    Pac-Man is a game that was **created by Namco and directed by Toru Iwatani.** The project started in the 1970s and was implemented in an arcade in 1980 with the name of **“Puck Man”.** Then the name of the game was changed to the one we all know nowadays when it was imported into the US. After that, Pac-Man started to become popular, and more than 100,000 units were sold. In 1981 in the US, it was the turn of Ms. Pac-Man, which is the same as the preceding game but with a feminine character and an alternating maze design system. Next, in 1982, is Super Pac-Man that was created in Japan. Its goal was the same, but with some differences because the main character has to eat keys to open doors and then eat fruits that were behind. After that, many Pac-Man games were created, and for some of them, they were re-adapted over the years.

    ![Alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYKgZAO-K5yrvdLq9pz355DYI8TxcM4gI5A&usqp=CAU)

- **Description of Pac-man as a game:**

  It can be a wrong question, but we need to know, “What is Pac-Man?” This video game is an arcade game with simple rules. We have a main character named “Pac-Man” that refers to an image of a pizza with a slice removed and ghosts who are the enemies of the main character. Pac-Man's gameplay is centered on strategy and quick reflexes. Players must navigate the maze and avoid the ghosts, each of which has its pursuit pattern. Then the player needs to eat every little cube without being touched by the ghosts to have access to the next level. However, there are specific cubes that are bigger than the others; these cubes allow Pac-man to attack the ghost and take them out for a short time, giving points for a better score and to have access to the next level.

### **2. Project Overview**

- **1. Project Scope:**
  We've been tasked by ALGOSUP to undertake a project that must be completed within a tight two-month deadline. The primary goal of this project is to recreate the classic game Pac-Man while paying meticulous attention to replicating its visual representation just as it appeared on its original release date, which was May 22, 1980.
- **2. Objective:**
  Reproduce the game Pac-man in assembly programming language, Keeping its old visual graphics, that is in the year it was published 1980.

- Replicate classic Pac-Man in x86 processor.
- Enhance randomness and the score system.
- Add some new features.
- The program should run and execute on DosBox.
- Should be completed within 2 months.

#### **3. Personas & Use Case**

![Alt text](../../Images/Philippebourseillerfixed.jpg)

![Alt text](../../Images/Lisaescofferfixed.jpg)

![Alt text](../../Images/Ethanbergerfixed.jpg)

##### Use Case

##### Title: Play Pac-Man Game

##### Actors: Player

##### Goals

- Moving Pac-Man through the maze.
- Eat the food to score points.
- Run away from ghosts to stay alive.
- Clear the entire maze.

##### Main Success Scenario

###### Initiation

The player launches Pac-Man.

###### Maze Setup

The program loads the game maze with foods and ghosts.

Pac-Man appears in a precise starting position.

###### Player Movement

The player uses arrow keys to move Pac-Man with the following functions: up, down, left, or right.

Pac-Man's position is updated accordingly.

###### Eat Foods

As Pac-Man moves, it consumes pellets in its path.
Each pellet eaten contributes to the player's score.

###### Avoid Ghosts

The player must move Pac-Man every time to avoid contact with ghosts.
If Pac-Man collides with a ghost, the player loses a life.

###### Power Pellets

When Pac-Man eats a power pellet, the ghosts turn blue. That indicates their vulnerability for a short time.
Pac-Man can now eat the vulnerable ghosts for additional points.

###### Clearing the Maze

The player continues navigating Pac-Man through the maze, eating foods, and avoiding ghosts.
The game level is considered complete when all the food is consumed.

###### Level Completion

If the player clears the entire maze, they will be redirected to the next level.
The system resets the maze, increases the game difficulty, and awards bonus points.

###### Game Over

If Pac-Man loses all lives (due to ghost collisions), the game ends.
The system displays the player's final score and offers an option to restart or exit the game.

###### Score

- Every 10,000 points, the player earns an extra life.

###### Preconditions

- The game software is properly installed and functioning.
- The player has launched the Pac-Man game.

###### Post-conditions

- The player has completed a game level and earned points.
- The game is ready for the next level or has ended with the player's final score displayed.

#### **4. Functionality**

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

- _Sounds and music_:

  - Add the sound effect of the original Pac-man and add remixed music adapted for the 8-bit system.

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Intro.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Intro".</figcaption>
  </figure>

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Ghost.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Ghost".</figcaption>
  </figure>

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Fruit.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Fruit".</figcaption>
  </figure>

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Extra.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Extra".</figcaption>
  </figure>

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Death.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Death".</figcaption>
  </figure>

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Cutscene.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Cutscene".</figcaption>
  </figure>

  <figure>
    <audio controls>
      <source src="../Specifications/sound_files/Chomp.mp3" type="audio/mp3">
    </audio>
    <figcaption>Click play to hear the sound "Chomp".</figcaption>
  </figure>

- _Identity_:
  - Display a text box that allows the player to input their name before starting the game.

![Alt text](https://i.guim.co.uk/img/media/8152f8ea7f06fd8ef5c68a3a594e6ac35dfd774b/0_342_800_480/master/800.jpg?width=465&dpr=1&s=none)

#### **5. Milestones**

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

#### **6. Interfaces**

- _Graphical User Interface (GUI)_:

  - The code will be executed and will run on DosBox.

- _Menu System_:

  - At the beginning of the game, a Menu option should be displaying, showing information like start and Option.

- _HUD (Heads-Up Display)_:

  - Information such as the player's score, lives remaining, and level number should be displaying on the screen during the gameplay process.

- _Gameplay Mechanics_:
  - We should have a top-down view perspective, which is a 2D view.

#### **7. Risk & Assumption**

**Risks:**

- _Technical Risks_:

  - Some potential technical challenges related to x86 assembly programming and DOSBox compatibility. For example, difficulties in optimizing performance or handling low-level hardware interactions.

- _Scope Risks_:

  - The risk of feature creep, where additional features or requirements may be introduced during the project, potentially affecting the project's timeline.

- _Testing Risks_:

  - Potential challenges in testing the game, especially in an emulator environment, and the need for thorough quality assurance.

- _Performance Risks_:

  - We have to consider the risk of performance bottlenecks or slow gameplay on less powerful systems when running in DOSBox.

- _Legal and Intellectual Property Risks_:
  - Before publishing the game, we have to consider the copyright issues related to Pac-Man's intellectual property.

**Assumptions:**

- _Hardware and Software Assumptions_:

  - We will create a Package that contains all necessary files that will be needed to run the game in DOSBox no matter the system.

- _Project Timeline Assumptions_:

  - Understanding the Assembly programming language (1 week):
    Spend focused time studying the programming language and understand how it works, more precisely x86 processor.

  - Planning and Design (1 week):
    Quickly outline the key components and design the structure of your assembly implementation.

  - Setting Up Development Environment (1 week):
    Swiftly set up your assembly development environment, ensuring it's ready for coding.

  - Game Loop, Basic Graphics and prototype (1-2 weeks):
    Prioritize implementing the core game loop and basic graphics. Focus on displaying the maze and Pac-Man and completed prototype.

  - Input Handling and Minimal Collision (1 week):
    Implement basic input handling for Pac-Man's movement and minimal collision detection.

  - Testing and Debugging (1 week):
    Start testing early and debug as you go. Identify major issues and fix them promptly.

  - Finalization and Documentation (1 week):
    Wrap up the project, make sure everything works, and document your code. Prepare a simple readme file.

- _Resource Assumptions_:
  - Use project planning tools or documents to outline your project's scope and tasks.
  - Consider using collaboration tools for communication and sharing resources.
  - Find or create simple sound effects for eating pellets, movement, and other game events.
  - Online documentation: Access relevant documentation for your chosen assembly language.
  - Assembly language tutorials: Utilize tutorials and guides to enhance your understanding.
  - Choose a suitable assembly language and set up the necessary tools for coding (NASM for x86 assembly).
- _Emulator Assumptions_:

  - Use the more previous version of DOSBox for its new features and latest improvement.

- _Testing Assumptions_:

  - Create test cases for each function to ensure the program works properly.
  - Unit tests will be conducted for

- **Testing Assumptions**:

  - Create a test case for each function to ensure the program works properly.
  - Unit tests will be conducted for independent components, such as the game loop, input handling, and collision detection.

- **Game Design Assumptions**:
  - The primary goal is to preserve the classic Pac-Man gameplay experience.
  - The focus will be on a single-player experience without incorporating multiplayer features.
  - Player input will be limited to keyboard controls to simplify development.
  - A straightforward scoring system will be implemented without complex scoring mechanics.

#### **8. Non-Functional**

1. Performance Requirements:

   - Response Time: The input is very reactive and fast, immediately as the user initiates an action.
   - Frame Rate: The game needs a minimum frame rate of 60fps.
   - Loading Time: The game has to be very fast when loading, with a short time delay during loading and game starting.

2. Compatibility:

   - The game doesn't have any platform or system preference; it runs smoothly on all systems.

3. Documentation:

   - Functional and technical documents will be required by developers to work on the project.
   - A useful user manual will be provided for end-users to understand complete details on how the game functions and how to play it.

4. Performance on Low-End Systems:
   - The game should properly work on all types of systems in terms of performance, whether high or low performance.

#### **9. Evaluation Criteria**

- The game has to be as entertaining as possible.
- Evaluate the graphic visual design and audio of the game.
- No crashes detected during the gameplay session.
- Reasonable levels, no impossible levels.
- New features added.
- Speed of the Game.
- All functionalities present and well-presented.
- The game has to satisfy those who are playing (the "User") and the customer.
- Robustness of the program.

#### **10. Conclusion**

To conclude, the game has to be significant, entertaining, and presentable, and should be completed within 2 months.

### **References**

Pacman Game: [Pacman](https://www.toupty.com/jeupacman.html)

Pacman Document: [Information](https://fr.wikipedia.org/wiki/Pac-Man)

### **Glossary**

**HUD**: In video gaming, the HUD (heads-up display) or status bar is the method by which information is visually relayed to the player as part of a game's user interface. It takes its name from the head-up displays used in modern aircraft.

**Fruits**: There are different types of fruits in Pac-Man.
