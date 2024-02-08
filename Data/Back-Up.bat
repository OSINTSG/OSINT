@echo off
setlocal enabledelayedexpansion

REM Set the folder paths
set "sourceFolder4=C:\OSINT\Store Data"
set "sourceFolder1=C:\OSINT"
set "sourceFolder2=C:\OSINT\Data"
set "sourceFolder3=C:\OSINT\package"

set "backupFolder=C:\Backup"  REM Change this to your desired backup location
set "timestamp=%date:~-4,4%%date:~-7,2%%date:~-10,2%"

REM Create the timestamped backup folder on the C drive
set "timestampedBackupFolder=%backupFolder%\Backup_%timestamp%"

REM Check if the timestamped backup folder already exists
if not exist "%timestampedBackupFolder%" (
    mkdir "%timestampedBackupFolder%"
    
    REM Copy the contents of the source folders to the timestamped backup folder
    robocopy "%sourceFolder4%" "%timestampedBackupFolder%" /E /MIR /W:0 /R:0
    robocopy "%sourceFolder1%" "%timestampedBackupFolder%" /E /MIR /W:0 /R:0
    robocopy "%sourceFolder2%" "%timestampedBackupFolder%" /E /MIR /W:0 /R:0
    robocopy "%sourceFolder3%" "%timestampedBackupFolder%" /E /MIR /W:0 /R:0
   

    echo Backup completed successfully!
) else (
    echo Backup already exists for today. Skipping backup.
)

pause
exit
