@echo off

rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

rem [FR] Si vous utilisez un IDE qui utilise les chemin absolue, utilisez ceci :
rem [EN] If you use a IDE, and it uses absolute path, please use this :
rem cd VOTRE_REPERTOIRE\CpcdosSDK\CONTRIB\VOTRE_PROJET

rem [FR] Supprimer les anciens fichiers
rem [EN] Delete older files

del *.o
del *.a

echo [FR] Compilation de EXAMPLE1 en cours / [EN] EXAMPLE1 is in compile progress
gpp @example1.args -c example1.cpp -o example1.o
echo example1.o - OK

rem [FR] Inclure le fichier objet dans le projet
rem [EN] Include object file in project
copy example1.o ..\obj\example1.obj

echo.
echo [FR] Operation termine! / [EN] Operations ended!
pause

