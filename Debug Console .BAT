@echo off
setlocal
set DEBUG=1

if defined DEBUG (
    echo Debug mode is enabled.
    echo ---------------------
    rem Add your debug statements here
    echo Running System Check...
    echo ---------------------
) else (
    echo Debug mode is disabled.
)

rem Your existing script code below

echo Hostname: %COMPUTERNAME%
echo IP Address: 
ipconfig | findstr IPv4
echo ---------------------
systeminfo | findstr /C:"OS Name" /C:"OS Version" /C:"System Manufacturer" /C:"System Model"
echo ---------------------
wmic cpu get name, maxclockspeed
echo ---------------------
wmic memorychip get capacity
echo ---------------------
echo System check completed.
pause

endlocal
