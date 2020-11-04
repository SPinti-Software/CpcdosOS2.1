@echo off
SET PATH=%LECTEUR%CPCDOS\drivers\DOS;%LECTEUR%CPCDOS;%LECTEUR%CPCDOS\drivers\Network
CD > TMP.TMP
SET /P LECTEUR= < TMP.TMP
cd R:\CPCDOS
set PCIscan=1
ctmouse
DOSLFN

cls
krnl32.bat