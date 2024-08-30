@echo off
title Skull Menu
cls

echo.                      :::!~!!!!!:.
echo.                  .xUHWH!! !!?M88WHX:.
echo.                .X*#M@$!!  !X!M$$$$$$WWx:.
echo.               :!!!!!!?H! :!$!$$$$$$$$$$8X:
echo.              !!~  ~:~!! :~!$!#$$$$$$$$$$8X:
echo.             :!~;;!H!<   ~.U$X!?R$$$$$$$$MM!
echo.             ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!
echo.               !:~~~ .:!M"T#$$$$WX??#MRRMMM!
echo.               ~?WuxiW*`   `"#$$$$8!!!!??!!!
echo.             :X- M$$$$       `"T#$T~!8$WUXU~
echo.            :%`  ~#$$$m:        ~!~ ?$$$$$$
echo.          :!`.-   ~T$$$$8xx.  .xWW- ~""##*"
echo......   -~~:<` !    ~?T#$$@@W@*?$$      /`
echo.W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :
echo.#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`
echo.:::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~
echo..~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `
echo.Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!
echo.$R@i.~~ !     :   ~$$$$$B$$en:``
echo.?MXT@Wx.~    :     ~"##*$$$$M~
echo._____________________ __________ ________  __________       _____  _______      _____  
echo.\_   _____/\______   \\______   \\_____  \ \______   \     /  |  | \   _  \    /  |  | 
echo. |    __)_  |       _/ |       _/ /   |   \ |       _/    /   |  |_/  /_\  \  /   |  |_
echo. |        \ |    |   \ |    |   \/    |    \|    |   \   /    ^   /\  \_/   \/    ^   /
echo./_______  / |____|_  / |____|_  /\_______  /|____|_  /   \____   |  \_____  /\____   | 
echo.        \/         \/         \/         \/        \/         |__|        \/      |__| 
echo *************************
echo *     Welcome to the      *
echo *      Batch File Menu    *
echo *************************
echo * 1. Minigames            *
echo * 2. Mod Menu             *
echo * 3. Random Option 1      *
echo * 4. Random Option 2      *
echo *************************
echo.
set /p choice=Select an option (1-4): 

:: Handle user choice
if "%choice%"=="1" goto minigames
if "%choice%"=="2" goto modmenu
if "%choice%"=="3" goto random1
if "%choice%"=="4" goto random2
goto end

:minigames
cls
echo *** Minigames ***
echo 1. Number Guessing
echo 2. Trivia Quiz
echo 3. Random Joke
echo.
set /p game=Choose a minigame (1-3): 
if "%game%"=="1" goto numberguessing
if "%game%"=="2" goto triviaquiz
if "%game%"=="3" goto randomjoke
goto end

:numberguessing
cls
echo *** Number Guessing Game ***
set /a num=%random% %% 10
echo Guess a number between 0 and 9:
set /p guess=
if "%guess%"=="%num%" echo Correct!
if not "%guess%"=="%num%" echo Incorrect. The number was %num%.
pause
goto minigames

:triviaquiz
cls
echo *** Trivia Quiz ***
echo Question: What is the capital of France?
echo 1. Berlin
echo 2. Madrid
echo 3. Paris
set /p answer=
if "%answer%"=="3" echo Correct!
if not "%answer%"=="3" echo Incorrect. The correct answer is Paris.
pause
goto minigames

:randomjoke
cls
echo *** Random Joke ***
set /a jokeNum=%random% %% 5
if "%jokeNum%"=="0" echo Why don't scientists trust atoms? Because they make up everything!
if "%jokeNum%"=="1" echo What do you get when you cross a snowman and a vampire? Frostbite.
if "%jokeNum%"=="2" echo Why did the scarecrow win an award? Because he was outstanding in his field!
if "%jokeNum%"=="3" echo Why don't skeletons fight each other? They don't have the guts.
if "%jokeNum%"=="4" echo How does a penguin build its house? Igloos it together!
pause
goto minigames

:modmenu
cls
echo *** Mod Menu ***
echo 1. Reverse Phone Number
echo 2. Reverse Email
echo.
set /p mod=Choose a mod option (1-2): 
if "%mod%"=="1" goto reversephone
if "%mod%"=="2" goto reverseemail
goto end

:reversephone
cls
echo *** Reverse Phone Number ***
set /p phone=Enter phone number:
call :GetPhoneInfo %phone%
pause
goto modmenu

:reverseemail
cls
echo *** Reverse Email ***
set /p email=Enter email:
call :GetEmailInfo %email%
pause
goto modmenu

:random1
cls
echo *** Random Option 1 ***
echo This is a placeholder for a random option.
pause
goto end

:random2
cls
echo *** Random Option 2 ***
echo This is another placeholder for a random option.
pause
goto end

:end
cls
echo Exiting...
pause
exit

:GetPhoneInfo
:: Public API example for demonstration purposes
:: Replace with a real API URL if needed
curl -s "https://api.mocki.io/v1/ce5f60e2?phone=%1" > "%temp%\phone_lookup.json"
echo Phone number lookup result:
type "%temp%\phone_lookup.json"
del "%temp%\phone_lookup.json"
exit /b

:GetEmailInfo
:: Public API example for demonstration purposes
:: Replace with a real API URL if needed
curl -s "https://api.mocki.io/v1/ce5f60e2?email=%1" > "%temp%\email_lookup.json"
echo Email lookup result:
type "%temp%\email_lookup.json"
del "%temp%\email_lookup.json"
exit /b
