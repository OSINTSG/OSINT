@echo off
title Login Popup

REM Set text color to bright white on blue background
color 1F

echo ╔════════════════════════════╗
echo ║                              ║
echo ║          Login Page          ║
echo ║                              ║
echo ║    Enter your credentials:   ║
echo ║                              ║
echo ╚════════════════════════════╝

set /p username=Username: 
set /p password=Password: 

REM Set text color to bright yellow on green background
color E2

echo.
echo Logging in...
timeout /nobreak /t 2 >nul

echo.
REM Set text color to bright white on green background
color 2F

echo ╔════════════════════════════╗
echo ║                              ║
echo ║      Login Successful!      ║
echo ║                              ║
echo ║   Welcome, %username%!     ║
echo ║                              ║
echo ╚════════════════════════════╝

timeout /nobreak /t 7 >nul

REM Reset to default text color
color 07


:create_user
cls
echo Creating a new user...
set /p new_username=Enter a new username: 
set /p new_password=Enter a new password: 

set "baseFolder=C:\OSINT\Store Data\User Info\"

if not exist "%baseFolder%" mkdir "%baseFolder%"

echo New user created!
echo User: %new_username% >> "%baseFolder%\your_info.txt"
echo Password: %new_password% >> "%baseFolder%\your_info.txt"
echo OSINT Pass Key:: MIICXAIBAAKBgQCINY62TXXPYwVULHBdl3Jf2YF7YBNPnln1qLOxftUtXifl >> "%baseFolder%\your_info.txt"
pause
goto end