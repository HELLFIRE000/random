@echo off
setlocal enabledelayedexpansion

:MENU
cls
echo ===============================
echo          -BLOOD DREAM-
echo ===============================
echo 1. Code Fishing
echo 2. Code Cracking
echo 3. Mini-Games
echo 4. Penetration Testing
echo 5. Random Website Generator
echo 6. Exit
echo ===============================
set /p choice=Choose an option (1-6):

if "%choice%"=="1" goto CODE_FISHING
if "%choice%"=="2" goto CODE_CRACKING
if "%choice%"=="3" goto MINI_GAMES
if "%choice%"=="4" goto PENETRATION_TESTING
if "%choice%"=="5" goto RANDOM_WEBSITE_GENERATOR
if "%choice%"=="6" goto EXIT

goto MENU

:CODE_FISHING
echo Code Fishing: Generate a random number (simulated as a "code").
set /a code=%random% %% 10000
echo Your generated code is: %code%
pause
goto MENU

:CODE_CRACKING
echo Code Cracking: Enter a code to decode.
set /p input_code=Enter code:
call :decode_code %input_code%
pause
goto MENU

:decode_code
set code=%1
set "decoded_message=Unknown code"
if "%code%"=="1234" set "decoded_message=Hello, World!"
if "%code%"=="5678" set "decoded_message=Batch File Master!"
if "%code%"=="9012" set "decoded_message=Simple Decoder Activated!"
echo Decoded message: %decoded_message%
goto :eof

:MINI_GAMES
echo Mini-Games: Guess a number between 1 and 10.
set /a secret=%random% %% 10 + 1
set /p guess=Enter your guess:
if "%guess%"=="%secret%" (
    echo Correct! You guessed the number.
) else (
    echo Incorrect. The number was %secret%.
)
pause
goto MENU

:PENETRATION_TESTING
echo Penetration Testing: Simulating a basic check.
echo Checking for open ports... (Simulated)
echo All ports are closed (Simulated result).
pause
goto MENU

:RANDOM_WEBSITE_GENERATOR
echo Random Website Generator: Generating a random website.
set /a site_num=%random% %% 5
if "%site_num%"=="0" set site=example.com
if "%site_num%"=="1" set site=google.com
if "%site_num%"=="2" set site=github.com
if "%site_num%"=="3" set site=bing.com
if "%site_num%"=="4" set site=stackoverflow.com
echo Visit: http://%site%
pause
goto MENU

:EXIT
echo Are you sure you want to exit? (Y/N)
set /p confirm=Choose (Y/N):
if /I "%confirm%"=="Y" exit
goto MENU
