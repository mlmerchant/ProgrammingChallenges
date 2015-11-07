@echo off
CLS
:: Entry for DailyProgrammer Challenge #239: A Game of Threes
:: https://www.reddit.com/r/dailyprogrammer/comments/3r7wxz/20151102_challenge_239_easy_a_game_of_threes/

SETLOCAL ENABLEDELAYEDEXPANSION
set NUMBER=%RANDOM%
:top
    if %NUMBER% EQU 1 goto:QUIT    
   set /a NUMBER_PLUS=(%NUMBER%+1) %% 3
   set /a NUMBER_MINUS=(%NUMBER%-1) %% 3
   if 0 EQU %NUMBER_PLUS% (
   set /a NUMBER=%NUMBER%+1
        echo %NUMBER% + 1 
    )
   if 0 EQU %NUMBER_MINUS% (
       echo %NUMBER% - 1 
       set /a NUMBER=%NUMBER%-1
   )
    echo %NUMBER%
   echo %NUMBER% / 3
    set /a NUMBER=%NUMBER% / 3
   echo %NUMBER%
goto:top
:QUIT
PAUSE
