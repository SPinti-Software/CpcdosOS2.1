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

echo [FR] Compilation de EXAMPLE4 en cours / [EN] EXAMPLE4 is in compile progress
gpp @example4.args -c example4.cpp -o example4.o
echo example4.o - OK

copy example4.o ..\obj\example4.obj

echo.
echo [FR] Operation termine! / [EN] Operations ended!
pause

