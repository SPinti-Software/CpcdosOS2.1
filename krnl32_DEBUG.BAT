@echo off
del DEBUG.LOG
CPCLDR.EXE /LOGALL "/CCP:SYS/ /DEBUG = 2" "%1" "%2" "%3" "%4" "%5"
