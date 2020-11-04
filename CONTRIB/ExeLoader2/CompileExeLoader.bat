@echo off
rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

echo Compilation du ExeLoader Win32 module for Cpcdos OSx
echo.

Echo * Chargeur PE
gpp @a -c ExeLoader.cpp -o ..\obj\ExeLoader.obj
echo.
Echo * Module memoire
gpp @a -c MemoryModule.cpp -o ..\obj\MemoryModule.obj
echo.
echo Termine.
pause
