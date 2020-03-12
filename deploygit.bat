@echo off

for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set DateTime=%%a

set Yr=%DateTime:~0,4%
set Mon=%DateTime:~4,2%
set Day=%DateTime:~6,2%
set Hr=%DateTime:~8,2%
set Min=%DateTime:~10,2%
set Sec=%DateTime:~12,2%

set UpdateName=%Yr%%Mon%%Day%%Hr%%Min%%Sec%

echo .
echo --------------------------------
echo Publicando site no github ...
cd C:\hugo\sites-public\homelaber
git pull
git add .
git commit -m "%UpdateName% - blog updates automatico"
git push
echo Finalizando publicacao no github ...
cd c:\hugo\sites\homelaber
@echo on
