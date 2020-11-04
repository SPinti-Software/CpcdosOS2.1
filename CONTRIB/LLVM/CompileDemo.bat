rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%
rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

gcc @a -c _Demo\Demo.cpp -o ..\obj\llvm_Demo.obj
gcc @a -c _Demo\JitProg.cpp -o ..\obj\llvm_JitProg.obj

pause