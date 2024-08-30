@echo off
setlocal enabledelayedexpansion

:: Set the target website or IP address
set "https://chatgpt.com/"

:: Interval in milliseconds
set "interval=1"

:loop
    echo Pinging %target%...
    ping -n 1 %target% >nul
    timeout /t 0 /nobreak >nul
    ping -n 1 127.0.0.1 >nul
    timeout /t 0 /nobreak >nul
    ping -n 1 127.0.0.1 >nul
    timeout /t 0 /nobreak >nul
    ping -n 1 127.0.0.1 >nul
    timeout /t 0 /nobreak >nul
    ping -n 1 127.0.0.1 >nul
    timeout /t 0 /nobreak >nul
    ping -n 1 127.0.0.1 >nul
    timeout /t 0 /nobreak >nul
    ping -n 1 127.0.0.1 >nul
    timeout /t 0 /nobreak >nul
goto :loop