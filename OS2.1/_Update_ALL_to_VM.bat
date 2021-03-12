@echo off
Echo Copy to the monted VM

rem path for vs code compatibilities
@cd OS2.1

@del ..\bin\ldopt.tmp

rem You can modifiy here your path
xcopy /E /Y "..\bin" "..\..\VM\PUBLIC Cpcdos OSx-disk1_Mount\CPCDOS"

@del "..\..\VM\PUBLIC Cpcdos OSx-disk1_Mount\CPCDOS\*.cwClean"


echo.
echo Ok !
