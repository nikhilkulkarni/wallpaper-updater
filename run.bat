@echo off

set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%

set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
set day=%date:~0,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%
set year = %date:~-4%

set datetimef=%year%_%month%%day%_%hour%%min%%secs%

move $Image Galery$"\new-download\*.jpg $Image Galery$\random%datetimef%.jpg

wget --trust-server-names http://source.unsplash.com/random

for /f "tokens=1,2,3,4,5,6,7 delims=&@=" %%a in ('dir /b') do (
REM set ext = %%c
REM echo %ext% AHGSH
echo %%a
IF NOT [%%g] == [] ren %%a* %%a.jpg
)
