@echo off
echo.
del testmesa.exe
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

FB\FBC.EXE  -x TestMesa.EXE Testmesa.BAS @TestMesa.ARGS mesa.o

copy TestMesa.exe x:

pause