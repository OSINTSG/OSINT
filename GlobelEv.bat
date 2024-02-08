@echo off
set current_folder=C:\OSIREPO
set new_folder_name=OSINT

rem Rename the folder
ren "%current_folder%" "%new_folder_name%"

echo Folder renamed successfully!
pause
