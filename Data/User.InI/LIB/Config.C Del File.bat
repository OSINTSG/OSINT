@echo off
set "folderPath=C:\OSINT\Store Data"
set "specialFileName=.c"

:menu
cls
echo 1. Search and Delete Specific File
echo 2. Delete All .c Files
echo 3. Exit

set /p "choice=Enter your choice (1, 2, or 3): "

if "%choice%" equ "1" (
    call :searchAndDelete
    goto menu
) else if "%choice%" equ "2" (
    call :deleteAllCFiles
    goto menu
) else if "%choice%" equ "3" (
    exit /b
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto menu
)

:searchAndDelete
cls
echo Enter the name of the file to search and delete:
set /p "searchFileName="
set "fileToDelete=%folderPath%\%searchFileName%"

if exist "!fileToDelete!" (
    del /q "!fileToDelete!"
    echo File "!searchFileName!" deleted in %folderPath%
) else (
    echo File "!searchFileName!" not found in %folderPath%
)

pause
goto :eof

:deleteAllCFiles
cls
if exist "%folderPath%\*.c" (
    del /s /q "%folderPath%\*.c"
    echo .c files deleted in %folderPath%
) else (
    echo No .c files found in %folderPath%
)

pause
goto :eof
