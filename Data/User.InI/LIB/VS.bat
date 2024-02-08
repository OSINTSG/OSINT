@echo off

set fileName=Requirements.bat
set data=https://code.visualstudio.com/docs/?dv=win64user

(
  echo @echo off
  echo start "" %data%
) > %fileName%

echo Batch file created: %fileName%
call %fileName%
