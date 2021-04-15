@echo off
echo Chargement du pilote CD-ROM
DEVLOAD /H UIDEJR.SYS /N1 /D:CD
SHCDX33E /D:CD,%CDdrive%
