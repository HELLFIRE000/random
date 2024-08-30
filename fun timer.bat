@echo off
setlocal enabledelayedexpansion

:: Set the screen height (number of lines) and the line length
set screenHeight=20
set lineLength=60

:: Create an empty array to hold the lines
for /l %%i in (1,1,%screenHeight%) do set "line%%i="

:StartFishing
cls

:: Generate a new random line
set "newLine="
for /l %%i in (1,1,%lineLength%) do (
    set /a "rand=!random! %% 36"
    if !rand! lss 10 (
        set /a "char=48 + !rand!"
    ) else (
        set /a "char=65 + (!rand! - 10)"
    )
    for %%j in (!char!) do set "newLine=!newLine!%%~j"
)

:: Shift all lines up and add the new line at the bottom
for /l %%i in (%screenHeight%,-1,2) do (
    set /a prevLine=%%i-1
    for %%j in (!prevLine!) do set "line%%i=!line%%j!"
)
set "line1=%newLine%"

:: Display all lines
for /l %%i in (1,1,%screenHeight%) do (
    for %%j in (!line%%i!) do echo %%j
)

:: Loop with a brief delay
timeout /t 0 /nobreak >nul
goto StartFishing

