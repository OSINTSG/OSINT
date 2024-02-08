@echo off
echo Welcome to Injin File
echo ---------------------

:menu
echo 1. Search
echo 2. View Protected File
echo 3. Exit

set /p "choice=Enter your choice (1, 2, or 3): "

if "%choice%" equ "1" (
    set /p "searchQuery=Enter your Google search query: "
    start chrome.exe --incognito "https://www.google.com/search?q=!searchQuery!"
    goto menu
) else if "%choice%" equ "2" (
    call Lib0.bat
    goto menu
) else if "%choice%" equ "3" (
    exit /b
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto menu
)
