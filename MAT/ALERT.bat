@echo off

echo CODE : 12
%speech% CODE : 12
echo STOP_CODE :...

%speech% "if option = 1 Logoff"

%speech% "if option = 2 Shutdown"

%speech% "if option = 3 Restart"

%speech% "if option = 4 Hibernate"


IF %option%==1 SHUTDOWN /l
IF %option%==2 shutdown.exe /s /t 00
IF %option%==3 shutdown.exe /r /t 00
IF %option%==4 shutdown.exe /h
