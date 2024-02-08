@echo off

set fileName=Requirements.bat
set data=https://desktop.replit.com/download/windows

(
  echo @echo off
  echo start "" %data%
) > %fileName%

echo Batch file created: %fileName%
call %fileName%
