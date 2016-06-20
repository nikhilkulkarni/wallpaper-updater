@echo off
set Date=%date:~10,4%%date:~4,2%%date:~7,2%
move F:\"Image Library"\new-download\*.jpg F:\"Image Library"\random%Date%.jpg

wget --trust-server-names http://source.unsplash.com/random

for /f "tokens=1,2,3,4,5,6,7 delims=&@=" %%a in ('dir /b') do (
REM set ext = %%c
REM echo %ext% AHGSH
echo %%a
IF NOT [%%g] == [] ren %%a* %%a.jpg
)