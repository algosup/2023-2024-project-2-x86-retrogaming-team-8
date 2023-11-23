# 2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8
## Technical Specification 

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>📖 Table of content</summary>

- [2023-2024 - PROJECT-2 - x86-RETROGAMING - TEAM - 8](#2023-2024---project-2---x86-retrogaming---team---8)
  - [Technical Specification](#technical-specification)
  - [1. Introduction](#1-introduction)
    - [A. Overview, Problem Description, Summary, or Abstract](#overview-problem-description-summary-or-abstract)
    - [Glossary or Terminology](#glossary-or-terminology)
    - [Functional and Technical Requirements](#functional-and-technical-requirements)
    - [Non-Goals or Out of Scope](#non-goals-or-out-of-scope)
    - [Future Goals](#future-goals)
    - [Assumptions](#assumptions)
  - [2. Solutions](#2-solutions)
    - [Architecture and Tools](#architecture-and-tools)
    - [Game Components](#game-components)
    - [Debugging and Testing](#debugging-and-testing)
    - [Documentation](#documentation)
    - [Future Enhancements](#future-enhancements)
    - [Test Plan](#test-plan)
    - [Resources](#resources)
  - [3. Further Considerations](#3-further-considerations)
    - [Third-party services and platforms considerations](#third-party-services-and-platforms-considerations)
    - [Security considerations](#security-considerations)
    - [Risks](#risks)

</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)



| | |
| ----- | ----- |
| Title | Technical Specification x86-RETROGAMING |
| Author | Tsangue Choungou Vivien Bistrel|
| Team | Team 8 |
| Reviewer | ALGOSUP |
| Created on | 10/11/2023 |
| Last updated | Date |
​
## 1. Introduction
​
### A. Overview, Problem Description, Summary, or Abstract
​
We've been tasked by ALGOSUP to undertake a project that must be completed within a tight 7-week deadline. The primary goal of this project is to recreate the classic game Pac-Man by replicating its visual representation just as it appeared on its original release date, which was May 22, 1980.

The game has to be reproduced in the x86 processor assembly programming language, keeping in mind that its visual representation must be similar to that of its original release date.

### B. Glossary or Terminology
​
New terms you come across as you research your design or terms you may suspect your readers/stakeholders not to know.
​
### C. Functional and Technical Requirements
​
**[a. Functional-specification:](https://github.com/algosup/2023-2024-project-2-x86-retrogaming-team-8/blob/main/Documents/Specifications/Functional%20specifications.md)**
This provides you with all the necessary information to have a global view of the client's needs.

**b. Technical requirements**

- ***Functionality:***
Do a Pacman game in assembly language and add some new features. The primary objective and most crucial one is to make the exact Pacman game, and then within the time frame, with time not knocking at our door, we add new features to the game.

- ***Compatibility:***
The game must be compatible with all system, no system preference(Linux, MacOS, Windows).

- ***Usability:***
The game must be user-friendly and intuitive, a clean and clear User interface(UI) and User experience(UX) to ensure an effective and efficient interaction for the user.

  At the level of the User interface, for the layout and navigation, specify the arrangement of elements on the screen and how users navigate through the interface. This includes menu(Start, High Score, Settings, Quit), navigation buttons for the movements.

  At the level of the User experience, for the efficiency part, define expectations regarding the efficiency of user interactions. This includes minimizing the number of steps needed to accomplish tasks.

### D. Non-Goals or Out of Scope

- ***Network Multiplayer:*** Designing the game for multiplayer functionality like battle game competition, network play, and local play.

- ***Advanced Graphics Effects:*** Implementing complex graphics effects beyond the basic requirements, such as advanced shaders or particle effects.

- ***Publishing:*** Publishing the game online for people to play it.

- ***Cross-Platform Compatibility:*** The focus is solely on developing the game for a specific platform, and efforts to make it compatible with other platforms.

### E. Future Goals

- ***Enhanced AI:*** Integrate more sophisticated artificial intelligence algorithms to improve the behavior of ghosts in the game.

- ***Additional Levels:*** Currently, the game will be designed with a single levels, and future goals will involve adding more levels to increase complexity.

- ***Sound Effects and Music:*** Implementing sound effects and background music could be considered for a future iteration of the game.

- ***Additional Maze:*** Implementing a new maze for each level of difficulty (Easy, Normal, Hard)

- ***Difficulties level:*** Currently, a simple basic-level Pacman game will be produced, and the other levels of difficulty will be considered as feature goals.
​
### F. Assumptions

- ***Development Environment:***
 The development environment includes a suitable x86 assembler and compiler configured for the target architecture.

- ***Hardware Resources:***
The target system for running the Pacman game has sufficient hardware resources (CPU, memory) to execute the assembly code efficiently.​

- ***Input Devices:***
Standard input devices, such as a keyboard, are assumed to be available for user interaction with the Pacman game.

- ***Compatibility with x86 Instruction Set:***
The assembly code is a compatible with the x86 instruction set without reliance on architecture-specific features that might vary between processors.

- ***Development Tools:***
Adequate development tools, including debuggers and profilers compatible with the x86 assembly language, are available for troubleshooting and optimisation.

  NASM, an x86 architecture renowed for its portability, is used as an assembler.

- ***Execution and debugger environment***
  DOSbox x86 assembler emulator, is use to execute and debug the software program.

## 2. Solutions
​
### A. Architecture and Tools
Considering the fact that the game has already been created in all sorts of languages, to make this project innovative, we are going to use assembly language for this project, NASM will be use as assembler to make it unique, DOSbox too will be needed.

- ***Assembly Language:***
Closer to machine language and very efficient as it directly helps us manipulate computer components, it also uses a human-readable programming language and makes use of mnemonics to represent machine instruction. It is a low-level programming language.
 
- ***Assembler:***
NASM uses a simple and clear syntax, making it accessible to both beginners and experienced assembly language programmers. The syntax is designed to be similar to Intel-style assembly language, which is commonly used for x86 architecture.NASM is available for multiple platforms, including Windows, Linux, and macOS, making it a cross-platform assembler. This allows developers to write assembly code on one platform and assemble it for another. The latest version of NASM will be used for the project that is "2.16.02rc5", for each plateform.

      section .data
      hello db 'Hello, World!', 0

      section .text
      global _start

      _start:
      ; write the string to stdout
      mov eax, 4         ; syscall number for sys_write
      mov ebx, 1         ; file descriptor 1 is stdout
      mov ecx, hello     ; pointer to the string
      mov edx, 13        ; length of the string
      int 0x80           ; interrupt to invoke the kernel

      ; exit the program
      mov eax, 1         ; syscall number for sys_exit
      xor ebx, ebx       ; exit code 0
      int 0x80           ; interrupt to invoke the kernel

This code demonstrate a simple program to print out a "Hello, World!".

- ***Plateform:***
The game will be available for multiple platforms, that is, Windows, Linux, and macOS. This allows the users to have access to play the game on any system.

- ***Emulator:***
DOSBox is an open-source, x86 emulator with DOS (Disk Operating System) that allows you to run and debug assembly programming language software and games. It's available for various operating systems, including Windows, Linux, macOS, and others. This cross-platform support allows users to run DOS applications on a wide range of modern machines moreover  it emulates the x86 architecture, which was prevalent in the hardware of the MS-DOS era. This allows it to run software that was written for the original x86 processors.

- ***Text Editor/IDE and extentsions:***
VS Code and Notepad are IDEs that are widely used for programming assembly languages, but for this project, VS-Code will be suitable because of the extension, which is helpful and eases the work. For example, the extension (NASM x86 syntax hightlight), as its name suggests, helps to hightlight our code and easily repair each part during debugging, which is much more useful than having everything either in black or white.

### B. Game Components

#### a. Game Board:
- ***Data Structure:***
Represent the game board using 2D arrays. Define the walls, pallets, power-ups,ghost, Pac-Man.
For exmaple, here under is simple enttity relationship diagram to illustrate how the simple pacman will look like.

<p align="center">

![alt](../../Images/ER_Diagram.png)

</P>

- ***ASCII Characters:***
Use simple ASCII characters to represent different elements on the game board. For example, use '@' for Pac-Man, 'G' for ghosts, '.' for pellets, and '#' for walls.

- ***Graphics:***
For more advanced graphics, explore DOS graphics interrupts (e.g., INT 10h) to display more detailed and visually appealing sprites for Pac-Man, ghosts, and other game elements.

#### b. user Input:
- ***Keyboard Input:***
Use DOS interrupts (e.g., INT 16h) to handle keyboard input. Map specific keys (e.g., arrow keys) for controlling Pac-Man's movement.

- ***Game Loop:***
Implement a game loop that continuously checks for user input. Update Pac-Man's position based on the input.

#### c. Game Logic:
- ***Starting the Game:***
Define the key-press "Enter" to start a game from the game Menu, select the level of difficulties(Easy, Normal, Hard), and start playing the game

- ***Movement Rules:***
Define rules for Pac-Man's movement, ensuring it stays within the boundaries of the game board and reacts appropriately to walls that is enable collision, during contact with the wall.

- ***Pac-Man chasing mode:***
Implement logic for Pac-Man to activate the chasing mode, lasting for 10sec when ever he eat a power-up, making ghosts preys, and him a hunter.

- ***Pellet Consumption:***
Implement logic for Pac-Man to consume pellets and power-ups when moving over them. Update the score accordingly.

- ***Ghost Behavior:***
Define the behavior of ghosts. For example, make them move randomly or implement more sophisticated AI for chasing Pac-Man.

#### d. Score and lives

- ***Score Display:***
Display the player's score on the screen. Update the score each time Pac-Man consumes a pellet or power-up.

- ***Lives System:***
Implement a lives system for Pac-Man. Display the remaining lives on the screen, and decrement the count when Pac-Man is caught by a ghost.
#### e. Game Over and Win Conditions:
- ***Game Over:***
End the game when Pac-Man loses all lives. Display a game-over message and allow the player to restart or exit.

- ***Win Conditions:***
Implement win conditions, such as advancing to the next level when all pellets are consumed. Increase the difficulty with each level.
​
### C. Debugging and Testing​
- ***DOSbox debugger:***
Familiarize yourself with the DOSBox Debugger. Use breakpoints, step-by-step execution, and inspect memory to debug your assembly code effectively.

- ***Testing:***
  - Unit Testing:
  Perform unit testing for individual components, such as Pac-Man movement, collision detection, and scoring logic.
  - Scenario Testing:
  Test the game in different scenarios to ensure it handles various user inputs, collisions, and edge cases robustly.
​
### D. Documentation

- ***Comments:***
Detailed comments throughout the code, explaining the purpose of each section, each line, major functions, and any complex algorithms or calculations from scratch to help other software developer.

- ***Readme:***
Include clear instructions on how to assemble, run, and play the game using DOSBox.
​
### E. Future Enhancements

- ***Sound effect:***
Consider using DOS interrupts (e.g., INT 21h) for simple sound effects to enhance the gaming experience.

      mov ah, 86h     ; Function to play frequency on PC speaker
      mov dx, frequency ; Frequency of the sound
      int 21h         ; Call DOS


- ***Levels:***
Implement multiple levels with increasing difficulty. Design unique maze for each level.

<p align="center">

Current maze:
![alt](https://www.imaginestemacademy.com/wp-content/uploads/2022/09/pacman.jpg)
</p>

<p align="center">

Next level maze:
![alt](https://c4.wallpaperflare.com/wallpaper/854/284/906/pacman-maze-harassment-wallpaper-preview.jpg)
</p>

- ***Graphics Improvements:***
Explore more advanced graphics techniques, such as sprite animation or additional graphics interrupts, for a visually appealing game.
​
### G. Resources
​
​
## 3. Further Considerations
​
### A. Third-party services and platforms considerations

- ***Community Support***

- ***DOS Emulator Compatibility:***
​
### B. Security considerations
​

### C. Risks

- ***Time-Frame:***
  - A good manage of time for the project to ensure proper delivery. An unforeseen challenge in assembly during programming will impact on the project initial delivery date.

- ***Compatibility Issues:***
  - Potential compatibilty issue with DOS emulator, for example:
    - Emulated graphics and sound may differ from real hardware, leading to graphical glitches or issues with sound playback.
    - Emulators, especially those in active development, may have bugs or incomplete features that impact compatibility.

- ***Learning Curve:***
  - Acknowledge that learning x86 Assembly may have a steep learning curve, especially if you are new to low-level programming, and this can cause a subsequent delay in the delivery of the overall project..

- ***Debugging Challenges:***
  - Understand that debugging Assembly code can be challenging. A good part of the time will be invested in debugging and troubleshooting issues that may arise during development.
