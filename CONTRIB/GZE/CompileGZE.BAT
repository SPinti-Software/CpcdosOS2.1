@echo off

set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

rem [FR] Si vous utilisez un IDE qui utilise les chemin absolue, utilisez ceci :
rem [EN] If you use a IDE, and it uses absolute path, please use this :
rem cd %....DIRECTORY....%\Cpcdos SDK\CONTRIB\GZE

rem [FR] Supprimer les anciens fichiers
rem [EN] Delete older files

echo  ------------ GZE is in compile progress ----------------------

gpp @MainDemo.args -c MainDemo_BuildAll.cpp -o GZE_ENGN.o

echo  ---------------------------------------------------------------

if not exist GZE_ENGN.o pause



echo * MainDemo_BuildAll.cpp - OK


copy GZE_ENGN.o ..\obj\GZE_ENGN.OBJ



echo.
echo [FR] Operation termine! / [EN] Operations ended!

cd..
