@echo off
title BOMB SELECTOR
color 0C
mode con cols=80 lines=25

:bombmenu
cls
echo.
echo    ╔════════════════════════════════════════════════════╗
echo    ║               💣 BOMB SELECTOR MENU 💣             ║
echo    ║         (use only in vms (forked to be better)      ║
echo    ╚════════════════════════════════════════════════════╝
echo.
echo    [1] CALCULATOR BOMB     - spams calc.exe
echo    [2] TASK MANAGER BOMB   - spams taskmgr
echo    [3] EXPLODER BOMB       - spams explorer.exe
echo    [4] NOTEPAD BOMB        - does what is says
echo    [5] COLOR BOMB          - weakest
echo    [6] EXIT
echo.
set /p choice="    Select bomb (1-6): "

if "%choice%"=="1" goto calcbomb
if "%choice%"=="2" goto taskbomb
if "%choice%"=="3" goto exploderbomb
if "%choice%"=="4" goto notepadbomb
if "%choice%"=="5" goto colorbomb
if "%choice%"=="6" exit
goto bombmenu

:calcbomb
cls
echo.
echo (WARNING THIS CAN BREAK EXPLORER DUE TO RAM)
echo calc.exe
echo Press Ctrl+C to stop
:calcloop
start calc.exe
goto calcloop

:taskbomb
cls
echo.
echo ram eater active
echo Opening multiple task managers...
echo Press Ctrl+C to stop
:taskloop
start taskmgr.exe
goto taskloop

:exploderbomb
cls
echo.
echo Oh windows im spamming win + e
echo Opening multiple explorer windows...
echo Press Ctrl+C to stop
:exploderloop
start explorer.exe
goto exploderloop

:notepadbomb
cls
echo.
echo Please enter your notepad 983920432 times
echo Opening multiple notepad windows...
echo Press Ctrl+C to stop
:notepadloop
start notepad.exe
goto notepadloop

:colorbomb
cls
echo.
echo garbage
echo Flashing colors and text...
echo Press Ctrl+C to stop
:colorloop
for %%a in (0 1 2 3 4 5 6 7 8 9 A B C D E F) do (
    color %%a0
    echo B O O M ! ! ! - PRESS CTRL+C TO STOP
    ping -n 1 127.0.0.1 >nul
)
goto colorloop
