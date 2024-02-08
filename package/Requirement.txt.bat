@echo off
start https://www.dwsamplefiles.com/download-sh-sample-files/ 

if not exist %FILE_PATH% (
    echo This file was created automatically.> %FILE_PATH%
)

rem Add additional commands or programs you want to run here
pause
