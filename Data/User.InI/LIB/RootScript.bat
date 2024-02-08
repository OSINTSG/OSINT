@echo off

:start
cls
echo 1. Access Protected File
echo 2. Exit

set /p "choice=Enter your choice (1 or 2): "

if "%choice%" equ "1" (
    call ProtectedScript.bat
) else if "%choice%" equ "2" (
    exit /b
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto start
)
