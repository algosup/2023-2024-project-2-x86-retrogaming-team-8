@echo off
set "ROOT_DIR=%~dp0"
set "BIN_DIR=%ROOT_DIR%bin"
set "DOSBOX_BIN=%ProgramFiles(x86)%\DOSBox-0.74-3\DOSBox.exe"
set "CONFIG_LOC=%ROOT_DIR%"

convert "%ROOT_DIR%icon.ico" "%ROOT_DIR%icon.png"
nasm -f bin "%ROOT_DIR%icon.asm" -o "%BIN_DIR%icon.bin"

"%DOSBOX_BIN%" -c "MOUNT c %BIN_DIR%" -c "c:" -c "main.com"