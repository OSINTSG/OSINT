@echo off
setlocal enabledelayedexpansion

set "scriptPath=%~dp0"
set "passwordFile=%scriptPath\C:\OSINT\Store Data\User Info\_root.txt"

if not exist "%passwordFile%" (
    echo Sorry Do Not Access File Of Any User > "%passwordFile%"
)

set /p "storedPassword=" < "%passwordFile%"

:login
cls
echo Enter the password to delete the folder:
set /p "userInput="
if "!userInput!" neq "!storedPassword!" (
    echo Incorrect password! Try again.
    timeout /nobreak /t 2 >nul
    goto login
)

set "folderName=KEY"

rd /s /q "%folderName%"

echo Folder deleted: %folderName%
pause
