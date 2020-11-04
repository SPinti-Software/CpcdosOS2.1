@echo off
D:
rem
rem	　　　　　「東方怪綺談」　起動用バッチファイル
rem	Ｃａｎｂｅで起動する場合は、GAMACB.BATで起動してください。
rem
zun -g
zun -m
if errorlevel==255 goto err
zun -s
if errorlevel==1 goto fin
zun -i
zun -o
if errorlevel==5 goto ong6
if errorlevel==4 goto ong5
if errorlevel==3 goto ong4
if errorlevel==2 goto ong3
if errorlevel==1 goto ong2
if errorlevel==0 goto ong1

:ong1
:ong2
pmd /M8 /V0 /E2 /K /N /P
op
pmd /R
goto fin

:ong3
pmdb2 /M8 /V0 /E2 /K /N- /P
op
pmdb2 /R
goto fin

:ong4
pmd86 /M8 /V0 /E2 /K /N- /P
op
pmd86 /R
goto fin

:ong5
pmdb2 /M8 /V0 /E2 /K /N- /P
op
pmdb2 /R
goto fin

:ong6
pmd86 /M8 /V0 /E2 /K /N- /P
op
pmd86 /R
goto fin

:fin
zun -i -r
zun -s -r
ECHO  GAME [ﾘﾀｰﾝ] で、ゲームを始められます。
exit