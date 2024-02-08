REM lib.bat

@echo off
setlocal

REM Set the folder path you want to convert
set "folderPath=C:\OSINT\Data"

REM Call the PowerShell script
powershell.exe -File "Converter.ps1" -folderPath "%folderPath%"

endlocal
