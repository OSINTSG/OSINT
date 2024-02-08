@echo off
start chrome "https://www.google.com"
timeout /t 5 /nobreak >nul
echo What is C?| clip
start chrome "https://chat.openai.com/c/a8b9e54d-e3ea-428a-978d-a453dc5090da"


