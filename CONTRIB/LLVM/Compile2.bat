rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

gcc @a -c src\lib\EE\RuntimeDyld\RuntimeDyld.cpp -o ..\obj\RuntimeDyld.obj
pause