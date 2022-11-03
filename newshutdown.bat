echo off
set /a starttime = 15
cls
start play.vbs

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
shutdown -s -t 0
