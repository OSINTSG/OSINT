@echo off
set source_folder=C:\Abc\OSIREPO\Data
set destination_folder=C:\Abc\Data
PAUSE

mkdir "C:\Abc\Data\User.InI"
set source_folder=C:\Abc\OSIREPO\Data\User.InI
set destination_folder=C:\Abc\Data\User.InI
PAUSE

mkdir "C:\Abc\Data\User.InI\LIB"
set source_folder=C:\Abc\OSIREPO\Data\User.InI\LIB
set destination_folder=C:\Abc\Data\User.InI\LIB
PAUSE

mkdir "C:\Abc\Data\User.InI\LIB\Compile"
set source_folder=C:\Abc\OSIREPO\Data\User.InI\LIB\Compile
set destination_folder=C:\Abc\Data\User.InI\LIB\Compile
PAUSE

mkdir "C:\Abc\Data\User.InI\LIB\KEY"
set source_folder=C:\Abc\OSIREPO\Data\User.InI\LIB\KEY
set destination_folder=C:\Abc\Data\User.InI\LIB\KEY

rem Ensure the destination folder exists
mkdir %destination_folder% 2>nul

rem Copy all files from source to destination
copy "%source_folder%\*" "%destination_folder%"

echo Files copied successfully!
pause
