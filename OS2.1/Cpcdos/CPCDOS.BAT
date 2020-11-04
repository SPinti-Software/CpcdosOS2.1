@echo off
echo.
echo ********** Cpcdos OSx **********
echo.
FBC @ARGS.CFG
echo * CPINTI CORE FOR CPCDOS OSX - OK !
Echo.
echo ================= FINALISATION =================

copy LIBcpc.a ..\..\FB\lib\DOS
copy LIBcpc.a ..\..\djgpp\lib\

echo FIN de la compilation de Cpcdos.