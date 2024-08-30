@echo off
echo Running System Check...
echo ---------------------
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
