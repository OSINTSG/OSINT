@if (@CodeSection == @Batch) @then


@echo off

rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://auth0.openai.com/u/login/identifier?state=hKFo2SBhb3FzVno5ejIyQkZnSUIwc080NHBOZXRtZEZsRlU3Y6Fur3VuaXZlcnNhbC1sb2dpbqN0aWTZIF9rOU5HbmRMbGlvM2J6OWRRMmpTbnRSQVgxQ2dVemtpo2NpZNkgVGRKSWNiZTE2V29USHROOTVueXl3aDVFNHlPbzZJdEc"

rem the script only works if the application in question is the active window. Set a 
timer to wait for it to load!
timeout /t 0

rem use the tab key to move the cursor to the login and password inputs. Most htmls 
interact nicely with the tab key being pressed to access quick links.
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"

rem now you can have it send the actual email, username, and password to input boxes
%SendKeys% "alfaflex@gmail.com"
%SendKeys% "{TAB}"
%SendKeys% "alfa"
%SendKeys% "{TAB}"
%SendKeys% "aflaflex"
%SendKeys% "{ENTER}"
