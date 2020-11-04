@echo off

set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

gpp -c dos_goal.CPP -o ..\obj\mesatest.obj -m32 -std=c++17 -Wall -W -O3 -march=i486 -s -Imesa -lmesa -lOSMesa -lGLU
copy ..\obj\mesatest.obj ..\..\mesa.o /y
pause