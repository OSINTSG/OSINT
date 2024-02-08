@echo off
start https://www.dwsamplefiles.com/download-sh-sample-files/

$output = "Download Sample1.SH"

Invoke-WebRequest -Uri $url -OutFile $output
