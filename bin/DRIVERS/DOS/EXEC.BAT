@echo off
SET PATH=%LECTEUR%CPCDOS\drivers\DOS;%LECTEUR%CPCDOS;%LECTEUR%CPCDOS\drivers\Network
CD > TMP.TMP
SET /P LECTEUR= < TMP.TMP
cd C:\CPCDOS
set PCIscan=1
KEYB FR
ctmouse
XMSDSK 262144 /y
DOSLFN

cls
echo.
echo =====================================================
echo ========= SPinti Software(tm) - Cpcdos OSx ==========
echo =====================================================
echo.
echo  * NETINST    [EN] Install network drivers.                  
echo               [FR] Installer les pilotes reseau.
echo.
echo  * KRNL32     [EN] Start Cpcdos OSx kernel.
echo               [FR] Demarrer le kernel Cpcdos OSx.
echo.
echo  * ExecRAM d: [EN] Copy all files to d RAM drive AND execute KRNL32.
echo               [FR] TOUT copier en RAM d et ex‚cuter KRNL32.
echo.
echo  * EDIT       [EN] Edit files
echo               [FR] Editer les fichier.
echo.
echo You are in DOS mode. Good job ! ;-)
echo.

rem Uncomment this if you want run automatically
rem call netinst

rem call krnl32.bat


