@echo off
setlocal EnableDelayedExpansion

rem Hardcoded username and password for demonstration purposes
set "correctUsername=user123"
set "correctPassword=pass456"

rem Get username from the user
set /p "enteredUsername=Enter your username: "

rem Get password from the user
set /p "enteredPassword=Enter your password: "

rem Check if the entered username and password match the correct ones
if "!enteredUsername!" equ "!correctUsername!" (
    if "!enteredPassword!" equ "!correctPassword!" (
        echo Login successful! Welcome, !enteredUsername!
    ) else (
        echo Login failed. Invalid username or password.
    )
) else (
    echo Login failed. Invalid username or password.
)

endlocal
