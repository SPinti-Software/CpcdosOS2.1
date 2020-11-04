@echo off
D:
zun zuninit
zun zun_res
if errorlevel==1 goto fin
mmd /D /K /M12
zun ongchk
if errorlevel==5 goto ong6
if errorlevel==4 goto ong5
if errorlevel==3 goto ong4
if errorlevel==2 goto ong3
if errorlevel==1 goto ong2
if errorlevel==0 goto ong1
:ong1
pmd /M8 /V0 /E2 /K 
zun zunsoft.com
op
pmd /R
goto fin
:ong2
pmd /M8 /V0 /E2 /K 
zun zunsoft.com
op 
pmd /R
goto fin
:ong3
pmdb2 /M8 /V0 /E2 /K 
zun zunsoft.com
op
pmdb2 /R
goto fin
:ong4
pmd86 /M8 /V0 /E2 /K 
zun zunsoft.com
op
pmd86 /R
goto fin
:ong5
pmdb2 /M8 /V0 /E2 /K 
zun zunsoft.com
op
pmdb2 /R
goto fin
:ong6
pmd86 /M8 /V0 /E2 /K 
zun zunsoft.com
op
pmd86 /R
goto fin
:fin
mmd /R
zun zuninit -r
zun zun_res -r
ECHO  GAME [ﾘﾀｰﾝ] で、ゲームを始められます。

exit