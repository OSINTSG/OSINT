@echo off

set fileName=YourExcelFile.csv

echo Header1,Header2,Header3 > %fileName%
echo Data1,Data2,Data3 >> %fileName%
echo Data4,Data5,Data6 >> %fileName%

echo Excel file created: %fileName%
pause
