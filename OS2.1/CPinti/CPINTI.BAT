@echo off


set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\BIN;C:\CPCDOS\Cpcdos-DEV\DJGPP\LIB;%path%


echo.
echo ********** CPinti Core **********
Echo.



echo ====== CORE - Multi-Threading =======
cd core
make
cd ..
if NOT EXIST OBJ/core.O goto probleme
echo * CORE - OK !
echo.

echo =========== DEBUG =============
cd debug
make
cd ..
if NOT EXIST OBJ\debug.O goto probleme
echo * DEBUG - OK !
echo.




echo =========== RESEAU =============
cd Network
make
cd ..
if NOT EXIST OBJ\ping.O goto probleme
echo * RESEAU - OK !
echo.



echo ============ IO ================
cd IO
make
cd ..
if NOT EXIST OBJ\lecture.O goto probleme
echo * IO - OK !
echo.

goto saut


echo ============ MODULES ================
REM cd MODULES
REM make
REM cd ..
REM if NOT EXIST OBJ\PNG.O goto probleme
REM echo * MODULES - OK !
REM echo.

:saut
echo ========== CPINTI CORE FOR CPCDOS OSX ==========
make
if NOT EXIST LIBCPNTI.A goto probleme
echo * CPINTI CORE FOR CPCDOS OSX - OK !
Echo.
echo ================= FINALISATION =================
copy LIBcpnti.a ..\..\FB\lib\DOS
copy LIBcpnti.a ..\..\djgpp\lib\
goto fin

:probleme
Echo !! Probleme pendant la compilation !!
pause
:fin
echo FIN de la compilation de CPinti Core for Cpcdos OSx.
echo.
