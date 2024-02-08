@echo off
mkdir KEY 2>nul
echo MIICXAIBAAKBgQCINY62TXXPYwVULHBdl3Jf2YF7YBNPnln1qLOxftUtXifl > KEY\MyKEY.txt

if exist KEY\MyKEY.txt (
    echo File created successfully!
) else (
    echo Error creating the file.
)
