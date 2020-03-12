@echo off
echo .
cls
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set DateTime=%%a

set Yr=%DateTime:~0,4%
set Mon=%DateTime:~4,2%
set Day=%DateTime:~6,2%
set Hr=%DateTime:~8,2%
set Min=%DateTime:~10,2%
set Sec=%DateTime:~12,2%

set LogName=%Yr%%Mon%%Day%%Hr%%Min%%Sec%

echo --------------------------------
echo Gerando nova versao site ...
hugo --destination c:\hugo\sites-public\homelaber\ --logFile c:\hugo\sites\homelaber\%LogName%_hugo.log --minify
echo --------------------------------
echo Site gerado ...
@echo on