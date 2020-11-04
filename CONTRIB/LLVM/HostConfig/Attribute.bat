llvm-tblgen ..\src\include\llvm\IR\Attributes.td -gen-attrs -I ..\src\include -o llvm\IR\Attributes.inc
llvm-tblgen ..\src\lib\IR\AttributesCompatFunc.td -gen-attrs -I ..\src\include -o AttributesCompatFunc.inc
pause