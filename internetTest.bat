@echo off
Ping www.google.com -n 1 -w 1000
if errorlevel 1 (goto disconnected) else (goto alwaysConnected)

:disconnected
timeout 10
echo Not connected, attempting again.
Ping www.google.com -n 1 -w 1000
if errorlevel 1 (goto disconnected) else (goto connected)

:connected
echo connected!
start "" https://www.youtube.com/watch?v=wZZ7oFKsKzY
pause >nul

:alwaysConnected
echo There was no internet issues in the first place...
start "" https://www.youtube.com/watch?v=wZZ7oFKsKzY
pause >nul

:end
cmd /k