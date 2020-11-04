@echo off
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\BIN;%path%
del cpcldr.exe
cd CONTRIB
call _CLEAN.BAT
cd ..\OS2.1
CLEAN