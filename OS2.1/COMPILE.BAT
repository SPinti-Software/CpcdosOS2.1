@echo off
echo.
echo *-*-*-*-*-*-*-* Compilation generale *-*-*-*-*-*-*-*
echo.
cd CPinti
call CPINTI.BAT
cd ..
echo ------------------------------------------------------------------
echo ------------------------------------------------------------------
cd CPCDOS
call CPCDOS.BAT
cd ..
echo.
echo Copie dans le SDK...
call CpcdosSDK.BAT