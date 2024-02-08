@echo off
setlocal enabledelayedexpansion

set "filePath=C:\OSINT\Data\User.InI\LIB\Twofactor.txt"
set "password=sumit"

:login
cls
echo Enter the password to access the file:
set /p "userInput="
if "%userInput%" neq "%password%" (
    echo Incorrect password! Try again.
    timeout /nobreak /t 2 >nul
    goto login
)

:start
cls
echo 1. View File
echo 2. Exit

set /p "choice=Enter your choice (1 or 2): "
if "%choice%" equ "1" (
    type "%filePath%"
) else if "%choice%" equ "2" (
    exit /b
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto start
)
