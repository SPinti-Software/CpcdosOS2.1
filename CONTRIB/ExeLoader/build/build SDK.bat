@echo off
set BASE_PATH=C:\DJGPP\
if exist C:\CPCDOS\Cpcdos-DEV\DJGPP\ set BASE_PATH=C:\CPCDOS\Cpcdos-DEV\DJGPP\

set PATH=%BASE_PATH%\bin;%PATH%
set DJGPP=%BASE_PATH%\djgpp.env

make.exe


rem [FR] Inclure le fichier objet dans le projet
rem [EN] Include object file in project
copy obj\ExeLoader.obj ..\..\obj\ExeLoader.obj
copy obj\MemoryModule.obj ..\..\obj\MemoryModule.obj
copy obj\ManagedAlloc.obj ..\..\obj\ManagedAlloc.obj

echo.
echo [FR] Operation termine! / [EN] Operations ended!

pause