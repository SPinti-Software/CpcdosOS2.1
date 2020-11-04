@echo off
:start
cls
echo                       ===========
echo                     ===============
echo                   ===================
echo                 =======================
echo        =========**Elie Office System **=========
echo      ===========*   Version 0.6.5     *===========
echo    =============*BackUpXT Utility  0.8*=============
echo      ===========*    MeaxyDOS 1.0     *===========
echo        =========*Meaxy Computer(c)2019*=========
echo                 =======================
echo                   ===================
echo                     ===============
echo                       ===========
echo.                 
echo                Version Meaxy Kernel: 1.0
echo                Version of Terminal: 1.0
echo         ****************************************
echo         *           MENU PRINCIPALE            *
echo         ****************************************
echo         * 1) Creer une backup                  *
echo         * 2) Restaurer une backup              *
echo         ****************************************
set p/ menu = Choisissez une option

if '%menu%'=='1' goto :backup
if '%menu%'=='2' goto :restoxt

:backup
echo __________________________________
echo *                                *
echo *BackUpXT for Elie Office System * 
echo *    Version 0.8.0 Alpha         *
echo * Meaxy Computer 2018-2019       *
echo __________________________________
echo Starting BackUp
cd C:\SYSTEM26\BACKUP
MKDIR OFFICE 
xcopy c:\CPCDOS\OS\OFFICE /E C:\SYSTEM26\BACKUP\OFFICE
echo Processing...
cls
ATTRIB -R /S
echo DONE
exit

:restoxt
echo __________________________________
echo *                                *
echo *   RestorationXT for ElieOS     * 
echo *    Version 0.1.1 Alpha         *
echo * Meaxy Computer 2018-2019       *
echo __________________________________
echo Starting Restauration...
DELTREE /Y C:\CPCDOS\OS\OFFICE
cd C:\CPCDOS\OS
MKDIR OFFICE
xcopy C:\SYSTEM26\BACKUP\OFFICE /E C:\CPCDOS\OS\OFFICE
echo Processing...
cls
ATTRIB -R /S
echo DONE
exit