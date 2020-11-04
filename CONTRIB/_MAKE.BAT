@echo off

set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\BIN;%path%

echo * CONTRIB ...
del LIBwrp.a
del CPC_WPR.obj
del _CPC_WPR.obj
make
echo * CONTRIB - OK
copy LIBwrp.a ..\FB\lib\DOS
copy LIBwrp.a ..\djgpp\lib\

if not exist "LIBwrp.a" pause
cd..