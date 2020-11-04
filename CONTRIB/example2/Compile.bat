@echo off

rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

rem [FR] Si vous utilisez un IDE qui utilise les chemin absolue, utilisez ceci :
rem [EN] If you use a IDE, and it uses absolute path, please use this :
rem cd REPERTOIRE\Cpcdos SDK\CONTRIB\REPERTOIRE

rem [FR] Supprimer les anciens fichiers
rem [EN] Delete older files

del *.o
del *.a

echo [FR] Compilation de EXAMPLE2 en cours / [EN] EXAMPLE2 is in compile progress
gpp @example2.args -c example2.cpp -o example2.o
echo example2.o - OK

copy example2.o ..\obj\example2.obj

echo.
echo [FR] Operation termine! / [EN] Operations ended!
pause

