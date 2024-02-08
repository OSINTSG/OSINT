@echo off

echo Compiling C++ program...
g++ p3.cpp -o your_program.exe

if %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b %errorlevel%
)

echo Running the compiled program...
your_program.exe

echo Program execution completed.
