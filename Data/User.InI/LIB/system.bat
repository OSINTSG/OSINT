@echo off
ver | find "10." > nul
if %errorlevel% neq 0 goto checkWindows11
set OS_Version=Windows 10
goto collectInfo

:checkWindows11
ver | find "11." > nul
if %errorlevel% neq 0 goto checkWindows12
set OS_Version=Windows 11
goto collectInfo

:checkWindows12
ver | find "12." > nul
if %errorlevel% neq 0 goto unsupportedOS
set OS_Version=Windows 12
goto collectInfo

:unsupportedOS
echo This package is only supported on Windows 10, Windows 11, and Windows 12.
goto end

:collectInfo
systeminfo > SystemRequirements.txt

:end
