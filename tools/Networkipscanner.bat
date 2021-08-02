GOTO :MAIN

:FINDIP
FOR /F %%i IN (tmpArp.txt) DO (CALL :SPLIT_IP " %%i")
GOTO:eof

:SPLIT_IP
SETLOCAL EnableDelayedExpansion
SET f=%~1
SET f=%f%..
SET l2=%f:*.=%
SET l3=%l2:*.=%
SET l4=%l3:*.=%
SET l1=!f:.%l2%=!
SET l2=!l2:.%l3%=!
SET l3=!l3:.%l4%=!
SETLOCAL DisableDelayedExpansion
ECHO %l1%.%l2%.%l3% >> tmpip.txt
GOTO:eof

:NUMBER
SET v=%~1 
(ECHO %v% | FINDSTR /r "[0-9]" >nul) && (ECHO %v% >> tmpList.txt) 
GOTO:eof

:CLEAN
FOR /F %%k IN (tmpip.txt) DO (CALL :NUMBER " %%k")
GOTO:eof

:SORTIP
TYPE nul>Tmpunique.txt
SETLOCAL enabledelayedexpansion
FOR /F "tokens=*" %%i IN (tmplist.txt) DO (
    FIND "%%i" tmpunique.txt 1>nul
    IF !errorlevel! NEQ 0 (
        ECHO %%i>>tmpunique.txt
    )
)
SETLOCAL DisableDelayedExpansion
GOTO:eof

:FINDMAC
FOR /F %%l IN (Tmpunique.txt) DO (CALL :SCANIP " %%l")
GOTO:eof

:SCANIP
SET v=%~1
SET v=%v: =%
SET i=%v:~0,3%
SET i=%i:.=%
IF %i% LSS 200 (
	FOR /L %%M IN (1,1,254) DO (CALL :PINGIP "%v%.%%M") 
)
GOTO:eof

:PINGIP
SET vars=%~1
START PING -n 1 -w -4 %vars%
GOTO:eof

:MAIN
ECHO off
CLS
ARP -a > tmpArp.txt
CALL :FINDIP
CALL :CLEAN
CALL :SORTIP
CALL :FINDMAC
DEL tmpArp.txt
DEL tmpip.txt
DEL tmpList.txt
DEL tmpUnique.txt
TIMEOUT 10 > NUL
ARP -a > tmpArpList.txt
NOTEPAD tmpArpList.txt
DEL tmpArpList.txt
ECHO on