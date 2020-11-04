@echo off


rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\FB;C:\CPCDOS\Cpcdos-DEV\FB\bin\DOS;C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

cd C:\fbcdos
Call CompileSP.BAT
cd C:\CPCDOS\Cpcdos-DEV

Echo Suppression des informations de debogage 
del DEBUG.LOG
cd OS2.1
call COMPILE
cd ..
CALL COMPIL.BAT %1
if %1 == EXEC KRNL32.BAT
copy NOYAU.EXE x:
pause