@echo off


rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\FB;C:\CPCDOS\Cpcdos-DEV\FB\bin\DOS;%path%

Echo Derniere compilation - FreeBasic
FBC.exe @FB\ARGS.CFG > ERR.LOG


echo.
Type ERR.LOG
echo.
echo [FR] Operations termines! [EN] Operations ended!
copy CPCLDR.EXE E:\DOSBOX\FBASIC\BIN
pause