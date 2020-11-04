@echo off
set BASE_PATH=C:\DJGPP\
if exist C:\CPCDOS\Cpcdos-DEV\DJGPP\ set BASE_PATH=C:\CPCDOS\Cpcdos-DEV\DJGPP\

set PATH=%BASE_PATH%\bin;%PATH%
set DJGPP=%BASE_PATH%\djgpp.env

make.exe re