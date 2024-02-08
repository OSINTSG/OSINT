@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://auth0.openai.com/u/signup/identifier?state=hKFo2SBQeTFhTUMyTmJMdll2a0RLM3hhRllTR0VNbXNtVm9Ob6Fur3VuaXZlcnNhbC1sb2dpbqN0aWTZIFJDUDFxdmJRUHREaldkTnVzaWZYRkR4ZFZtcmg5LUxUo2NpZNkgVGRKSWNiZTE2V29USHROOTVueXl3aDVFNHlPbzZJdEc"
rem the script only works if the application in question is the active window. Set a 
timer to wait for it to load!
timeout /t 5
rem use the tab key to move the cursor to the login and password inputs. Most htmls 
interact nicely with the tab key being pressed to access quick links.
rem %SendKeys% "{TAB}"
rem now you can have it send the actual username/password to input box
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "username"
%SendKeys% "{TAB}"
%SendKeys% "password"
%SendKeys% "{ENTER}"

goto :EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));