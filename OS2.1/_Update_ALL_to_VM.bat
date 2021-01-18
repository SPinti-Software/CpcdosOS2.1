@echo off
Echo Copy to the monted VM

@del ..\bin\ldopt.tmp

rem You can modifiy here your path
xcopy /S /Y "..\bin" "C:\CPCDOS\VM\Cpcdos OSx-disk1_Mount\CPCDOS"

@del "C:\CPCDOS\VM\Cpcdos OSx-disk1_Mount\CPCDOS\*.cwClean"

echo.
echo Ok !