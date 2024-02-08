@echo off
set /p "searchQuery=Enter your Google search query: "
set "filePath=C:\OSINT\Data\User.InI\LIB\Injin.txt"

mkdir "C:\OSINT\Data\User.InI\LIB" 2>nul

echo %searchQuery% | find /i "Tiwari" > nul
if %errorlevel% equ 0 (
    echo %searchQuery% >> "%filePath%"
)

start chrome.exe --incognito "https://www.google.com/search?q=%searchQuery%"

pause
