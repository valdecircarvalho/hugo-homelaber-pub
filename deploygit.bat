@echo off
echo .
echo --------------------------------
echo Publicando site no github ...
cd C:\hugo\sites-public\homelaber
git pull
git add .
git commit -m "blog updates automatico"
git push
echo Finalizando publicacao no github ...
cd c:\hugo\sites\homelaber
@echo on
