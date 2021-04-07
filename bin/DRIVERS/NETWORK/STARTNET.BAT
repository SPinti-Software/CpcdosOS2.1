set PROBLEM=0

if not %NETCARD%0==NDIS0 goto NV
SHOWMENU Chargement des pilotes Nvidia/Intel
DEVLOAD %ramd%\NVNDIS2.DOS
if not errorlevel==0 goto Abort
:NV

if exist %ramd%\%NETCARD%.BAT SHOWMENU Execution du NIC Driver
if exist %ramd%\%NETCARD%.BAT call %ramd%\%NETCARD%.BAT

SHOWMENU Initialisation du reseau client
LH %ramd%\net initialize
if not errorlevel==0 goto Abort
SHOWMENU Demarrage NetBind
LH %ramd%\netbind.com
if not errorlevel==0 goto Abort
SHOWMENU Demarrage UMB
LH %ramd%\umb.com
if not errorlevel==0 goto Abort
SHOWMENU Demarrage TCP/IP
LH %ramd%\tcptsr.exe
if not errorlevel==0 goto Abort
SHOWMENU Demarrage TinyRFC
LH %ramd%\tinyrfc.exe
if not errorlevel==0 goto Abort
SHOWMENU Demarrage Ping Support
LH %ramd%\nmtsr.exe
if not errorlevel==0 goto Abort
SHOWMENU Demarrage EMSbfr
LH %ramd%\EMSBFR.EXE
if not errorlevel==0 goto Abort
if not %DNSENABLE%==1 goto NoDNS
SHOWMENU Demarrage DNS
if %DISABLEDHCP%==0 if not "%DNS%"=="" %ramd%\dnr.exe
if not %DISABLEDHCP%==0 %ramd%\dnr.exe
if not errorlevel==0 goto Abort
:NoDNS
SHOWMENU Connexion au reseau
echo.%password%>%temp%\pwd.txt
echo.>>%temp%\pwd.txt
if not %problem%==1 %ramd%\net logon %username% %password% /yes /savepw:no<%temp%\pwd.txt
del %temp%\pwd.txt
goto end
:Abort
Set Problem=1
:end
