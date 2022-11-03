echo off
TIMEOUT /T 5
set /a starttime = 10
cls
start play.vbs
shutdown -s -t 15
:looped
echo Shutting down in %starttime% seconds
set /a starttime = %starttime% - 1
timeout 1 /nobreak >null
if %starttime% == 3 (
start bsod.hta
)
if %starttime% == 0 (
goto ending
)

goto looped

:ending
