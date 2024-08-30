@echo off
title World Time Zones

:loop
cls

:: Get the current system time (hours, minutes, seconds)
for /f "tokens=1-4 delims=:,." %%a in ("%time%") do (
    set /a h=%%a
    set /a m=%%b
    set /a s=%%c
    set /a ms=%%d
)

:: Display current time in UTC
set /a utc_h=(h-1)
if %utc_h% lss 0 set /a utc_h=utc_h+24
echo UTC Time: %utc_h%:%m%:%s%.%ms%

:: Display current time in New York (Eastern Time, UTC-4 or UTC-5)
set /a est_h=(utc_h-4)
if %est_h% lss 0 set /a est_h=est_h+24
echo New York Time (EST/EDT): %est_h%:%m%:%s%.%ms%

:: Display current time in London (UTC+0)
echo London Time (BST): %utc_h%:%m%:%s%.%ms%

:: Display current time in Paris (Central European Time, UTC+1)
set /a cet_h=(utc_h+1)
if %cet_h% geq 24 set /a cet_h=cet_h-24
echo Paris Time (CET/CEST): %cet_h%:%m%:%s%.%ms%

:: Display current time in Tokyo (Japan Standard Time, UTC+9)
set /a jst_h=(utc_h+9)
if %jst_h% geq 24 set /a jst_h=jst_h-24
echo Tokyo Time (JST): %jst_h%:%m%:%s%.%ms%

:: Display current time in Sydney (Australia Eastern Time, UTC+10)
set /a aest_h=(utc_h+10)
if %aest_h% geq 24 set /a aest_h=aest_h-24
echo Sydney Time (AEST/AEDT): %aest_h%:%m%:%s%.%ms%

:: Wait for approximately 1 second before updating again
timeout /t 1 >nul

goto loop
