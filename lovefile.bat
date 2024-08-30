@echo off
setlocal enabledelayedexpansion

:loop
cls
set "chars="
for /L %%i in (1,1,500) do (
    set /a "rand=!random! %% 62"
    if !rand! lss 10 (
        set "char=!rand!"
    ) else if !rand! lss 36 (
        set /a "char=rand + 55"
        cmd /c exit /b !char!
        set "char=!exitcode!"
    ) else (
        set /a "char=rand + 61"
        cmd /c exit /b !char!
        set "char=!exitcode!"
    )
    set "chars=!chars!!char!"
)
echo !chars!
ping -n 1 127.0.0.1 >nul
goto loop
