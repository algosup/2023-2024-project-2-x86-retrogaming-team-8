![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details>
<summary>Table of Content</summary>

- [**Pac-Man Test Plan**](#pac-man-test-plan-team-8)
- [**Introduction**](#introduction)
    - [1. Purpose](#1-purpose)
    - [3. Scope](#2-scope)
- [**Test items**](#test-items)
- [**Features to be Tested**](#features-to-be-tested)
- [**Test Environment**](#test-environment)
- [**Test Entry Criteria**](#test-entry-criteria)
- [**Test Exit Criteria**](#test-exit-criteria)
- [**Test Deliverables**](#test-deliverables)
    - [Test cases:](#test-cases)
    - [Defect Tracking:](#defect-tracking)
- [**Test Approaches**](#test-approaches)
- [**Risks and Contingencies**](#risks-and-contingencies)
- [**Review and Approval**](#review-and-approval)
- [**Responsibilities**](#responsibilities)
- [**Glossary**](#glossary)
- [**Appendix**](#appendix)

</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


# Pac-Man Test Plan Team 8

|   Date   |    11/09/2023 - 12/08/2023       |
|----------|----------------------------------|
|   Group  |    Team 8  |
|   Author |    Camille GAYAT   |

### **Introduction**

#### **1. Purpose**

This test plan has a simple goal. It is here to ensure the quality of the game, the performances, the functionalities and also to resume the different problems we encountered, how we resolved them. And so on… all of this about the Pac-Man game implemented in x86 assembly language.

#### **2. Scope**

This aims to prevent the different issues in the game and validate when there are no problems or when a problem is resolved. Also to ensure the performances.

### **Test items**

- [Intro.mp3](../Specifications/sound_files/Intro.mp3) - The sound effect for the original Pac-Man intro.

- Ghost Sound:

- [Ghost.mp3](../Specifications/sound_files/Ghost.mp3) - The iconic sound when encountering ghosts.

- Fruit Sound:

- [Fruit.mp3](../Specifications/sound_files/Fruit.mp3) - The sound of collecting fruits.

- Extra Sound:

- [Extra.mp3](../Specifications/sound_files/Extra.mp3) - The sound indicating an extra life.

- Death Sound:

- [Death.mp3](../Specifications/sound_files/Death.mp3) - The dramatic sound of Pac-Man's demise.

- Cutscene Sound:

- [Cutscene.mp3](../Specifications/sound_files/Cutscene.mp3) - The sound associated with in-game cutscenes.

- Chomp Sound:
- [Chomp.mp3](../Specifications/sound_files/Chomp.mp3) - The satisfying chomping sound.


Small Tutorial to set up DosBox

-Download DosBox 0.74-3 https://www.dosbox.com/

-Download the file given by the team

-Go on Dosbox and mount the folder in your HDD to the emulator with this command :
“mount (C(for windows)) c: /users/**(name of your user)**/desktop/**filename**”

-Then open the hdd on dosbox by doing C: (in DOSBox)

-when entering there you can now launch and run the files inside the folder to do that just put the next command below :
Nasm -f bin -o file.com **filename**.asm

After that put the command below and the game will appear :
**filename**.com

### **Features to be Tested**

There is a list of the different features that need to be tested (more of them will be specified on the test cases) : 

- Game menu
- Player Movement
- Ghost path
- Pellet Consumption
- Power-Up Effects
- Score Calculation
- Game Over Conditions
- Extra life effect

### **Test Environment**

Hardware: To be executed the assembly program needs to be run on windows that we chose for the moment because our programmers use this system. This language was chosen because it is the closest to the computer so it accord better performances and optimization.

Software: The game is executed with DosBox.

**NASM or TASM:**

- NASM (Netwide Assembler):
    - NASM is open-source and actively maintained, making it a good choice for modern development.
    - It's widely used in the Linux and open-source communities.
    - NASM's syntax is somewhat closer to Intel-style assembly language, which may be more familiar to some developers.
    - It's a good choice for cross-platform development and can be used in various operating systems, not just DOS.

- TASM (Turbo Assembler):
    - TASM was developed by Borland and was popular in the MS-DOS era, making it suitable for DOS development.
    - It has a syntax somewhat closer to Borland-style assembly language.
    - If you want to create a very authentic DOS game using the tools that were commonly used during that time, TASM may be a preferred choice for historical accuracy.

(NASM was chosen because it is more adapted to our case)

Configuration: The screen resolution for the game in DOSBox is **320x240**

For this game we decided to use the keyboard arrows (left,right,up,down) to move the main character of the game. These controls were chosen because this is easier to use with this style of game and we also don’t have the problem of “Qwerty” “Azerty”.

### **Test Entry Criteria**

Before the beginning of the test we need to be sure that different conditions are working, the first one is that the Pac-man game is successfully compiled, next we need to verify that all the game assets (graphics,sounds,and so on…) are integrated in the game and last a verification of the configuration files.

When all of this is done we can test the game and report to the developers all the problems we encounter.

### **Test Exit Criteria**

To pass the validation all the features of the game like the bonus or the comportment of the ghosts need to be reviewed. Next we need to be sure that we don’t have big issues or some unexpected features. After that, we look if the different goals and designs respect the origin of the game. And finally the game's performance under different scenarios (varying player interactions, different hardware configurations, and potential load conditions.) and confirming that the game performs adequately under stress conditions.

### **Test Deliverables**

#### - Test cases : 
- There is a link that redirect directly to the test case that is useful for the testers to see the potential bugs : [Test cases](https://docs.google.com/spreadsheets/d/1D_FCKBz-h_U2maWN-Q2S1Az2oQFr1ksrrkZcPiK_t3Q/edit?usp=sharing)

#### - Defect Tracking :
 - 3 categories were created to place a problem in, depending on its level of severity.
        - Low defect : This category is for problems that don't really impact the game.
        - Medium defect : This category is for problems that need to be fixed but it doesn’t really break the game or a little bit.
        - High defect : This category is for problems that really need to be fixed the fastest possible because it slows the game or breaks it completely.

    - There is a link that redirect to the defect tracking : [Defect tracking](https://docs.google.com/document/d/1bZA9nYV4HJPozw40op41qdQ70PylubrQBjvAgbuX0m4/edit?usp=sharing)


### **Test Approaches**

This approach was chosen to test every components present in the game, first we will start with the functional testing :

- Unit testing : This type of test consists of verifying every feature of the game individually of the others and if one part has an error a report will be made at the developers.
- Integration testing : After that if the Unit testing didn’t have an error we gathered all the parts in one and made another test to be sure that it worked together.

Performance testing :
- Stress testing : Stress testing is when we push the game far in its performances to test it, for example we can place a lot of ghosts or a lot of food in the game.

Security testing :
- Code review : This aims to analyze every line of code of the game to be sure that no issues are present because the players can exploit every flaw.
- Input validation testing : This is like testing if the game correctly understands and responds to what we attend to.

### **Risks and Contingencies**

- We have a risk that the game is not compatible with certain DOS emulators.
    - We need to specify a recommended emulator and settings.
- We will certainly have different problems of performance on lower-end hardware.
    - So we need to optimize the code and game assets to solve that. 

### **Review and Approval**

A meet was made with the rest of the team to validate the test plan that was displayed on the TV. After that, the Project manager also approved.

### **Responsibilities**

2 different responsibilities were assigned to the different members of the team
- The first assignment is the “Tester” role that will apply and verify everything that is on the test cases and will write on the defect tracking bugs that they found.
- The second assignment is for the actual developers, they will coding, take a look at the defect tracking document and fix the reported bugs.

### **Glossary**

*x86: This is a family of backward-compatible instruction set architectures.*

*DOS: Disk Operating System, this is a computer operating system.*

### **Appendix**

There is the list of the keyboard controls of the game :
- ← Left arrow is to move pacman at the left
- → Right arrow is to move pacman at the right
- ↓  Down arrow is to move pacman at the bottom
- ↑ Upper arrow is to move pacman up






