@echo off
echo Flushing DNS cache...
ipconfig /flushdns

echo Releasing and renewing IP address...
ipconfig /release
ipconfig /renew

echo Lag fix completed.
exit
