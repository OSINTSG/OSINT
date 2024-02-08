Set objShell = CreateObject("WScript.Shell")

' Specify the path to GetSystemInfo.bat
batchScriptPath = "C:\OSINT\Data\User.InI\LIB\system.bat"

' Run the batch script
objShell.Run "cmd /c """ & batchScriptPath & """", 1, True

' Read the contents of SystemRequirements.txt
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("C:\OSINT\Data\User.InI\LIB\SystemRequirements.txt", 1)
strContents = objFile.ReadAll()
objFile.Close

' Display system information in a message box
objShell.Popup "Operating System: " & WScript.Echo(Replace(GetLine(strContents, "OS Name"), "OS Name:", "")) & vbCrLf & _
               "Version: " & OS_Version & vbCrLf & _
               "RAM: " & GetLine(strContents, "Total Physical Memory") & vbCrLf & _
               "Processor: " & GetLine(strContents, "Processor(s)") & vbCrLf & _
               "System Type: " & GetLine(strContents, "System Type"), 0, "System Information", 64 + 1

Function GetLine(contents, searchStr)
    Dim lines, line
    lines = Split(contents, vbCrLf)
    For Each line In lines
        If InStr(line, searchStr) > 0 Then
            GetLine = Trim(Mid(line, Len(searchStr) + 1))
            Exit Function
        End If
    Next
    GetLine = "Not Found"
End Function
