@echo off

echo [FR] Compilation en cours / [EN] Compile in progress
cd CONTRIB
call _MAKE.bat
echo.

rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\FB;C:\CPCDOS\Cpcdos-DEV\FB\bin\dos\;C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

Echo Derniere compilation - FreeBasic
FBC.EXE @FB\ARGS.CFG > ERR.LOG

echo.
echo [FR] Operations termines! [EN] Operations ended!
copy NOYAU.EXE E:\DOSBOX\FBASIC\BIN

if %1 == EXEC krnl32.bat
if %1 == COPYVM Echo Copie en cours...
if %1 == COPYVM Copy cpcldr.EXE x:
pause