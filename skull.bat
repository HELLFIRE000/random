@echo off
cls

:: Define frames of the laughing skull
setlocal enabledelayedexpansion

:: Define the frames
set "frame1=                     .ed"""" """$$$$be.                       "
set "frame2=                   -"           ^""**$$$e.                     "
set "frame3=                 ."                   '$$$c                    "
set "frame4=                /                      "4$$b                  "
set "frame5=               d  3                      $$$$                   "
set "frame6=               $  *                   .$$$$$$                   "
set "frame7=              .$  ^c           $$$$$e$$$$$$$$.                 "
set "frame8=              d$L  4.         4$$$$$$$$$$$$$$b                 "
set "frame9=              $$$$b ^ceeeee.  4$$ECL.F*$$$$$$$                 "
set "frame10=  e$""=.      $$$$P d$$$$F $ $$$$$$$$$- $$$$$$                 "
set "frame11= z$$b. ^c     3$$$F ""$$$b   $"$$$$$$$  $$$$*""      .=""$c    "
set "frame12=4$$$$L        $$P"  "$$b   .$ $$$$$...e$$        .=  e$$$.   "
set "frame13=^*$$$$$c  %..   *c    ..    $$ 3$$$$$$$$$$eF     zP  d$$$$$   "
set "frame14=  "**$$$ec   "   %ce""    $$$  $$$$$$$$$$*    .r" =$$$$P""   "
set "frame15=        "*$b.  "c  *$e.    *** d$$$$$""L$$    .d"  e$$***"   "
set "frame16=          ^*$$c ^$c $$$      4J$$$$$% $$$ .e*".eeP"         "
set "frame17=             "$$$$$$"'$=e....$*$$**$cz$$" "..d$*""          "
set "frame18=               "*$$$  *=%4.$ L L$ P3$$$F $$$P"              "
set "frame19=                  "$   "%*ebJLzb$e$$$$$b $P"                "
set "frame20=                    %..      4$$$$$$$$$$ "                  "
set "frame21=                     $$$e   z$$$$$$$$$$%                   "
set "frame22=                      "*$c  "$$$$$$$P"                     "
set "frame23=                       ."""*$$$$$$$$bc                    "
set "frame24=                    .-"    .$***$$$"""*e.                 "
set "frame25=                 .-"    .e$"     "*$c  ^*b.              "
set "frame26=          .=*""""    .e$*"          "*bc  "*$e..       "
set "frame27=        .$"        .z*"               ^*$e.   "*****e.  "
set "frame28=        $$ee$c   .d"                     "*$.        3.   "
set "frame29=        ^*$E")$..$"                         *   .ee==d%   "
set "frame30=           $.d$$$*                           *  J$$$e*    "
set "frame31=            """""                              "$$$"     "

:: Animation loop
:loop
for /l %%i in (1,1,2) do (
    cls
    setlocal enabledelayedexpansion
    echo !frame1!
    echo !frame2!
    echo !frame3!
    echo !frame4!
    echo !frame5!
    echo !frame6!
    echo !frame7!
    echo !frame8!
    echo !frame9!
    echo !frame10!
    echo !frame11!
    echo !frame12!
    echo !frame13!
    echo !frame14!
    echo !frame15!
    echo !frame16!
    echo !frame17!
    echo !frame18!
    echo !frame19!
    echo !frame20!
    echo !frame21!
    echo !frame22!
    echo !frame23!
    echo !frame24!
    echo !frame25!
    echo !frame26!
    echo !frame27!
    echo !frame28!
    echo !frame29!
    echo !frame30!
    echo !frame31!
    timeout /t 0.5 >nul
    endlocal
)
goto :loop
