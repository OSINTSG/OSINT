@echo off
set download_url=https://code.visualstudio.com/docs/?dv=win64user/package.zip
set download_path=C:\OSINT\package

:: Create download directory if not exists
if not exist "%download_path%" mkdir "%download_path%"

:: Download the package using curl
curl -o "%download_path%\package.zip" %download_url%
curl -o "%download_path%\filename.html" %download_url%

echo Download complete!
