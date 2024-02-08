@echo off

rem Prompt the user to enter the filename without extension
set /p "filename=Enter the filename (without extension): "

rem Add ".c" extension to the filename
set filenameWithExtension=%filename%.c

rem Specify the path to the folder containing C program source files
set sourceFolder=C:\OSINT\Store Data

rem Specify the path to the compiled C program executable
set executablePath=%sourceFolder%\%filenameWithExtension%



rem Debugging: Display the constructed executable path
echo Executable Path: %executablePath%

rem Check if the specified file exists
if not exist "%executablePath%" (
    echo File not found. Please make sure the file exists.
    pause
    exit /b
)

rem Run the compiled C program
start "" "%executablePath%"

rem Pause to keep the console window open (optional)
pause
