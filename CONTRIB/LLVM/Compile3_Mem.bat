rem IMPORTANT
set path=C:\CPCDOS\Cpcdos-DEV\DJGPP\bin;%path%

gcc @a -c src\lib\Support\Memory.cpp -o ..\obj\Memory.obj
gcc @a -c src\lib\EE\MCJIT\MCJIT.cpp -o ..\obj\MCJIT.obj
gcc @a -c src\lib\EE\SectionMemoryManager.cpp -o ..\obj\SectionMemoryManager.obj
pause