@echo off
setlocal enabledelayedexpansion

set "outputFolder=C:\OSINT\Store Data"
set "onlineCompilerURL=https://www.tutorialspoint.com/compile_c_online.php"

set /p "filename=Enter the desired filename (without extension): "
set "outputFile=!outputFolder!\!filename!.c"
set "executableFile=!outputFolder!\!filename!.exe"

echo Please start typing your C program. Press Ctrl + Z then Enter to save and compile.

:inputLoop
set /p "line="
if not defined line goto :compileAndRun

echo !line!>> "!outputFile!"
goto :inputLoop

:compileAndRun
:: Compile the C program
gcc "!outputFile!" -o "!executableFile!"

:: Check if compilation was successful
if %errorlevel% neq 0 (
    echo Compilation failed. Please check your C program for errors.
    pause
    exit /b
)

:: Run the compiled program
echo Running the compiled program...
"!executableFile!"

:: Open the Tutorialspoint online compiler URL
echo Opening the online compiler...
start "" "!onlineCompilerURL!"

pause
