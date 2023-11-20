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
​
- ***Network Multiplayer:*** Designing the game for multiplayer functionality like battle game competition, network play, and local play.

- ***Advanced Graphics Effects:*** Implementing complex graphics effects beyond the basic requirements, such as advanced shaders or particle effects.

- ***Publishing:*** Publishing the game online for people to play it.

- ***Cross-Platform Compatibility:*** The focus is solely on developing the game for a specific platform, and efforts to make it compatible with other platforms.

### E. Future Goals
​
- ***Enhanced AI:*** Integrate more sophisticated artificial intelligence algorithms to improve the behavior of ghosts in the game.

- ***Additional Levels:*** Currently, the game will be designed with a single levels, and future goals will involve adding more levels to increase complexity.

- ***Sound Effects and Music:*** Implementing sound effects and background music could be considered for a future iteration of the game.

- ***Additional Maze:*** Implementing a new maze for each level of difficulty (Easy, Normal, Hard)

- ***Difficulties level:*** Currently, we will have a simple basic-level Pacman game, and the other levels of difficulty will be considered as feature goals.
​
### F. Assumptions
​
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
​
- ***Assembly Language:***

- ***Plateform:***

- ***Text Editor/IDE and extentsions:***

​
### B. Game Components
​
#### a. Game Board:

#### b. Graphics:

#### c. user Input:

#### e. Game Logic:

#### f. Score and lives

#### G. Game Over and Win Conditions:

​
### C. Debugging and Testing
​
- ***DOSbox debugger:***

- ***Testing:***

​
### D. Documentation
​
- ***Comments:***

- ***Readme:***

​
### E. Future Enhancements
​
- ***Sound effect:***

- ***Levels:***

- ***Graphics Improvements:***


### F. Test Plan
​
- Explanations of how the tests will make sure user requirements are met
- Unit tests
- Integrations tests
- Performance & Reliability tests
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

- ***Resource Limitations:***

- ***Compatibility Issues:***

- ***Learning Curve:***

- ***Debugging Challenges:***

- ***Community and Documentation:***

- ***Project Scope:***