@echo off
setlocal enabledelayedexpansion
echo Enter any name or password

set "userFile=user.ini"
set "hiddenFolder=C:\OSINT\Data\LIB"

echo [UserInformation]> "%userFile%"

set /p "username=Enter your username: "
set /p "password=Enter your password: "

echo Username=!username!>> "%userFile%"
echo Password=!password!>> "%userFile%"


echo User.ini file created successfully.

:: Unhide the folder
attrib +h "%hiddenFolder%" >nul

:: Open the LIB folder
start "" "%hiddenFolder%"

pause
