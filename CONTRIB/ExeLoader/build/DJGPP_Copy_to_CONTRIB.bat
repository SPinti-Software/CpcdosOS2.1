@echo off

echo Copy Exeloader CWC .O output files to CONTRIB OBJ folder ...
xcopy /Y obj\cpp_Debug ..\..\obj\Debug

echo Termine
@pause