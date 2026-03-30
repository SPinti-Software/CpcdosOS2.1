@echo off
Echo Copy to the monted VM

rem path for vs code compatibilities
@cd OS2.1

@del ..\bin\ldopt.tmp

rem You can modifiy here your path
xcopy /E /Y /R "..\bin" "C:\CPCDOS\VM\PUBLIC Cpcdos OSx-disk1_Mount\CPCDOS"

@del "C:\CPCDOS\VM\PUBLIC Cpcdos OSx-disk1_Mount\*.cwClean"


echo.
echo Ok !
