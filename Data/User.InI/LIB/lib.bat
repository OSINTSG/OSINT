@echo off
setlocal enabledelayedexpansion

set "folderPath=C:\OSINT\Data\User.InI\LIB\script"
set "password=sumit"

:login
cls
echo Enter the password to access the folder:
set /p "userInput="
if "%userInput%" neq "%password%" (
    echo Incorrect password! Try again.
    timeout /nobreak /t 2 >nul
    goto login
)

:menu
cls
echo 1. Open Folder
echo 2. Exit

set /p "choice=Enter your choice (1 or 2): "
if "%choice%" equ "1" (
    start "" "%folderPath%"
) else if "%choice%" equ "2" (
    exit /b
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto menu
)
