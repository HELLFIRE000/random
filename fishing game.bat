@echo off
title Fishing Mini-Game

:Start
cls
echo Welcome to the Fishing Mini-Game!
echo.
echo Press Enter to cast your line...
pause >nul

rem Generate a random number between 1 and 10
set /a randomNumber=%random% %% 10 + 1

rem Determine if you catch a fish (1 in 3 chance)
if %randomNumber% lss 4 (
    echo Congratulations! You caught a fish!
) else (
    echo Oh no! You didn't catch any fish this time.
)

echo.
echo Would you like to cast your line again? (Y/N)
set /p choice="> "
if /i "%choice%"=="Y" goto Start

echo Thanks for playing! Goodbye!
pause