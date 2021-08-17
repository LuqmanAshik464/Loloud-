@echo off

echo. Loloud Powershell 2021 release.                                                                                                     
echo.                                                                                                                                                                                                            

title LOLOUD.LUQMAN.ADMIN.POWERSHELL
set jarvisver=LUQMAN
set boydude=RELEASE 1.0
set speech=start scripts\nircmd.exe speak text
VER | findstr /i "5.1." > nul
IF %ERRORLEVEL% EQU 0 set version=xp
VER | findstr /i "6.1." > nul
IF %ERRORLEVEL% EQU 0 set version=w7
color a
setlocal
:: /STARTUP
:restart
echo.  
echo.
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%
::echo The current time is %time% sir | clip
::start scripts\nircmd.exe speak text ~$clipboard$
echo echo Hey! you can type windows commands too!
echo Code 0
echo.                                                                              
echo.                                                              
echo.                                   %timeminute% :%timehour%  
echo.                                                              
echo.                 L       O       L       O        U        D 
echo.                                                              
echo.                                                            
echo.                                                                                                                                                                 
:newvoice
echo.
:startonwake5:03 AM 5/25/2021
echo Greetings!
%speech% "Greetings %username%, how may I be of assistance?"
:start
echo.
set /p C=Please type/say: 
echo.
if "%C%"=="winpowershell" powershell
if "%C%"=="hello there LOLOUD" goto loloud
if "%C%"=="loloud " goto loloud
if "%C%"=="introduce" goto introduce
if "%C%"=="mute" goto mute
if "%C%"=="unmute" goto unmute
if "%C%"=="shutdown" goto shutdown
if "%C%"=="killtask" goto killtask
if "%C%"=="volumeup" goto volup
if "%C%"=="volumedown" goto voldown
if "%C%"=="volumemax" up goto volmax
if "%C%"=="help" goto help
if "%C%"=="self destruct" goto autodelete
if "%C%"=="suicide" goto killabort
if "%C%"=="cmd" goto cmd
if "%C%"=="time" goto time
if "%C%"=="date" goto %version%date
if "%C%"=="time and date" goto :startonwake5:03 AM 5/25/2021
if "%C%"=="program" goto program
if "%C%"=="tasklist" goto tasklist
if "%C%"=="alarm" goto alarm
if "%C%"=="spotify" goto Spotify
if "%C%"=="playlists" goto playlists
if "%C%"=="mos" goto mos
if "%C%"=="lock" goto lock
if "%C%"=="msnstat" goto msnstat
if "%C%"=="sendim" goto sendim
if "%C%"=="msnbrowse" goto msnbrowse
if "%C%"=="close" goto close
if "%C%"=="off out" goto offout
if "%C%"=="im back" goto imback
if "%C%"=="killmos" goto killmos
if "%C%"=="thankyou" goto thankyou2
if "%C%"=="voice" goto voicemode
if "%C%"=="speak" goto speak
if "%C%"=="version" goto version
if "%C%"=="reset -ac" goto start
if "%C%"=="new" start jarvis.exe && goto start
if "%C%"=="weather" goto weather
if "%C%"=="screen off" goto screenoff
if "%C%"=="screensaver" goto screensaver
if "%C%"=="dim" goto dim
if "%C%"=="dim stop" goto dimstop
if "%C%"=="forecast" goto forecast
if "%C%"=="news" goto news
if "%C%"=="contact us" (echo Please email us at: "eniacs4luqman@gmail.com" to ask us any questions!) && goto start
if "%C%"=="restart" cls && call jarvis.bat
if "%C%"=="set" %speech% Security breach detected. Access denied. && goto start
if "%C%"=="set " %speech% Security breach detected. Access denied. && goto start
if "%C%"=="goto suicide" %speech% Security flaw detected. Access denied. && goto start
if "%C%"=="Open Roblox" goto open_roblox
if "%C%"=="Chrometime" goto chrome
if "%C%"=="Camera" goto cctv
if "%C%"=="take a rest" goto restarttwo
if "%C%"=="Matrix" goto matrix
if "%C%"=="Start MAT" goto start-mat
::WHEN ADDING NEW COMMAND IT MUST START: if "%C%"=="command"
%C%
goto start

:cctv
C:\Users\ENIACS-Luqman\Desktop\MAT\camera\cam.html
goto start

:matrix
C:\Users\ENIACS-Luqman\Desktop\MAT\Matrix-effect\Mat.html
echo pls set the file that downloaded in the dowloads menu if already in the downloads menu
dowloads menu location 
%speeh% "pls set the file that downloaded in the dowloads menu if already in the downloads menu
dowloads menu location." 
goto start


:start-mat
screensaver
goto start



:restarttwo
C:\Users\ENIACS-Luqman\Desktop\MAT\ALERT.bat

:open_roblox
C:\Users\ENIACS-Luqman\AppData\Local\Roblox\Versions\version-0137f7d4848f436a\RobloxPlayerBeta.exe"
%speech% Opening...
echo Opening...
&& %speech% Ok %username% have a nice gameplay!
goto start

:chrometime
C:\Users\ENIACS-Luqman\Desktop\Google_Chrme.lnk
%speech% "ok chrome  ha ha"
goto start

:loloud
echo Yes, %username?%
%speech% "Yes, %username%?"
goto start

:mute
call scripts\nircmd.exe mutesysvolume 2
echo Volume has now been muted, sir.
goto start

:unmute
call scripts\nircmd.exe mutesysvolume 2
echo Volume has now been restored to its original state, sir.
%speech% "Volume has now been restored to its original state, sir."
goto start

:introduce
echo Greetings acquaintance, my name is LOLOUD. I am created by Luqman. My main function is to assist the user in any way possible to make ones daily life easier.
%speech% "Greetings acquaintance, my name is LOLOUD. I am created by Luqman. My main function is to assist the user in any way possible to make ones daily life easier. Oh did i mention fun?"
goto start

:shutdown
echo Bye, %username%.
%speech% "Bye, %username%."
shutdown -s -t 20
echo.
pause
EXIT

:killtask
echo Please specify the name of the process you wish to kill. (name.exe)
set /p procname=
taskkill /IM %procname%
echo Selected process has now been killed, sir.
goto start

:volup
start scripts\nircmd.exe changesysvolume 13107
echo Volume has increased 20%, sir.
goto start

:voldown
start scripts\nircmd.exe changesysvolume -13107
echo Volume has decreased by 20%, sir.
goto start

:volmax
start scripts\nircmd.exe setsysvolume 65535
echo Volume has been set to its maximum level, sir.
goto start
echo.

:help
echo Available commands:
echo jarvis (also "hello there jarvis"
echo introduce
echo mute
echo unmute
echo killtask
echo shutdown
echo volumeup
echo volumedown
echo volumemax
echo help
echo self destruct (also "suicide")
echo spitshine
echo cmd
echo time
echo date
echo time and date
echo program
echo tasklist
echo alarm
echo spotify
echo playlists
echo mos
echo lock
echo msnstat
echo msnbrowse
echo sendim
echo close (also exit)
echo off out
echo im back
echo killmos
echo thankyou
echo voice
echo speak
echo version
echo new
echo news
echo weather
echo forecast
echo screen off
echo screensaver
echo dim
echo dim stop
echo contact us
echo restart
echo Open roblox (to open roblox)
echo ChromeTime
echo.
echo For more information please read the readme file.
goto start

:autodelete
echo Are you sure sir? I don't particularly like the idea of killing myself.
%speech% "Are you sure sir? I don't particularly like the idea of killing myself."
:killconfirm
echo.
set /p killpri=Enter your authorization code: 
if "%killpri%"=="Kim Pi 1 1 0" echo Code accepted. && echo. && (set /p killsec=Does the second commanding officer agree? ) && goto killsec
if "%killpri%"=="Paris Pi 1 1 0" echo Code accepted. && echo. && (set /p killsec=Does the second commanding officer agree? ) && goto killsec
if "%killpri%"=="abort" goto :killabort

echo.
echo Authorization code rejected.
goto start

:killsec
if "%killsec%"=="password" echo. && goto suicide
if "%killsec%"=="password 2" echo. && goto suicide
if "%killpri%"=="abort" goto :killabort
echo.
echo Authorization code rejected.
goto start

:suicide
echo Authorization code accepted.
echo.
::start %play%killselfyes.wav
echo NO.
::echo Goodbye %username% :(, it was nice knowing you.
echo. ERROR :(
echo.
echo. JARVIS has crashed please restart the system
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. CODE : 506
echo.
echo
echo.
::cd..
::del JARVIS\ -f
::cd JARVIS

:killabort
echo. NO.
::echo Goodbye %username% :(, it was nice knowing you.
echo. ERROR :(
echo.
echo. JARVIS has crashed please restart the system
echo.
echo.
echo.
echo.
echo.
echo.
echo
echo.
echo. CODE : 506
echo.
echo.
echo.



:cmd
echo Command Prompt has now been opened in a new window, sir.
%speech% "Command Prompt has now been opened in a new window, sir."
start scripts\cmd.bat
goto start


:time
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%
echo It is currently %timeminute% minutes past %timehour%, sir.
%speech% "It is currently %timeminute% minutes past %timehour%, sir."
::echo The current time is %time% sir | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

::date

:w7date
set dateyear=%date:~-4%
if %date:~-7,-5%==01 set datemonth=January
if %date:~-7,-5%==02 set datemonth=February
if %date:~-7,-5%==03 set datemonth=March
if %date:~-7,-5%==04 set datemonth=April
if %date:~-7,-5%==05 set datemonth=May
if %date:~-7,-5%==06 set datemonth=June
if %date:~-7,-5%==07 set datemonth=July
if %date:~-7,-5%==08 set datemonth=August
if %date:~-7,-5%==09 set datemonth=September
if %date:~-7,-5%==10 set datemonth=October
if %date:~-7,-5%==11 set datemonth=November
if %date:~-7,-5%==12 set datemonth=December
set dateday=%date:~-10,-8%

echo It is %dateday% %datemonth% %dateyear%, sir.
%speech% "It is %dateday% %datemonth% %dateyear%, sir."
::echo The current date is %date% sir | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:xpdate
echo It is %date%, sir.
%speech% "It is %date%, sir."
goto start

:w7dat
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%

set dateyear=%date:~-4%
if %date:~-7,-5%==01 set datemonth=January
if %date:~-7,-5%==02 set datemonth=February
if %date:~-7,-5%==03 set datemonth=March
if %date:~-7,-5%==04 set datemonth=April
if %date:~-7,-5%==05 set datemonth=May
if %date:~-7,-5%==06 set datemonth=June
if %date:~-7,-5%==07 set datemonth=July
if %date:~-7,-5%==08 set datemonth=August
if %date:~-7,-5%==09 set datemonth=September
if %date:~-7,-5%==10 set datemonth=October
if %date:~-7,-5%==11 set datemonth=November
if %date:~-7,-5%==12 set datemonth=December
set dateday=%date:~-10,-8%

echo It is currently %timeminute% minutes past %timehour% on %dateday% %datemonth% %dateyear%, sir.
%speech% "It is currently %timeminute% minutes past %timehour% on %dateday% %datemonth% %dateyear%, sir."
::echo The current time and date is %time% on the %date% sir | clip
::start scripts\nircmd.exe speak text ~$clipboard$
goto start

:xpdat
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%

echo It is currently %timeminute% minutes past %timehour% on %date%, sir.
%speech% "It is currently %timeminute% minutes past %timehour% on %date%, sir."
goto start

:program
set /p program=What program would you like to start?
if %program%==firefox goto openfirefox
if %program%==msn goto openMSN
if %program%==spotify goto openspotify
if %program%==notepad goto opennotepad
if %program%==other goto openother
else Unknown program. Please try again.
goto program

:openfirefox
start firefox.exe
echo Firefox has now opened, sir.
goto start

:openMSN
start "C:\program files\windows live\messenger\msnmsgr.exe"
echo Windows Live Messenger should now have opened, sir.
goto start

:openspotify
start "C:\program files\spotify\spotify.exe"
echo Spotify should now have opened, sir.
goto start

:opennotepad
start notepad.exe
echo Notepad should now have opened, sir.
goto start

:openother
echo.
echo Please type the directory of the program, sir.
set /p progdir=
start %progdir%
echo The program you requested should now have opened, sir.
goto start

:tasklist
echo Current running processes are now been displayed on my screen, sir.
tasklist
goto start

::ALARM

:alarm
echo What time will you be getting up tomorrow, sir? (H:MM)
%speech% "What time will you be getting up tomorrow, sir?"
set /p alarmtime=(Current time is %time:~0,-6%) : 
echo Anything else you wish me to add to your wakeup for motivational purposes, sir?
%speech% "Anything else you wish me to add to your wakeup for motivational purposes, sir?"
set /p extramsg=Extra message (if not, leave empty):
echo.
echo Options:
echo 'No resume' (no)
echo 'Turn screen off' (off)
echo 'Dim the screen' (dim)
echo 'Start screensaver' (screen) 
set /p alarmoption=Choose an option:  
%speech% "Alarm set sir, goodnight.
echo.
echo Alarm set, sir. Goodnight. && echo.
echo Sleeping in 3...
ping 123.45.67.89 -n 1 -w 1000 > nul
echo Sleeping in 2...
ping 123.45.67.89 -n 1 -w 1000 > nul
echo Sleeping in 1...
ping 123.45.67.89 -n 1 -w 1000 > nul
if "%alarmoption%"=="dim" start scripts\dimscreen.exe
if "%alarmoption%"=="off" start scripts\nircmd.exe monitor off
if "%alarmoption%"=="screen" start scripts\nircmd.exe screensaver
cls
         ----------------------- 
echo  CODE : 0                                             /-----------------------------| 
echo.                                                     /  Logged in as: %username%   |
echo.                                                    /-----------------------------|
echo.
echo.                                                           -----------------                                                  
echo.                                                              | LOLOUD | 
echo.                                                        -----------------             
echo.                                                           ------------------
echo.                                                            [%boydude%]
echo.                                                     -------------------
echo.
echo.
echo.
echo.         ____     ___                                                  
echo.        /\  _`\  /\_ \                          __                     
echo.        \ \ \ \_\\//\ \      __     __   _____ /\_\    ___      __     
echo.         \/_\__ \  \ \ \   / __ \ / __ \/\  __ \/\ \ /  _  \  / _  \   
echo.           /\ \ \ \ \_\ \_/\  __//\  __/\ \ \ \ \ \ \/\ \/\ \/\ \ \ \  
echo.           \ `\____\/\____\ \____\ \____\\ \  __/\ \_\ \_\ \_\ \____ \ 
echo.            \/_____/\/____/\/____/\/____/ \ \ \/  \/_/\/_/\/_/\/____\ \...
echo.                                           \ \_\                /\____/
echo.                                            \/_/                \_/__/ 
::if %alarmtime:~2,1% NEQ : (set alarmtime=0%alarmtime%)
:alarmcheck
if %time:~0,5%==%alarmtime% goto alarmplay
ping 123.45.67.89 -n 1 -w 60000 > nul
goto alarmcheck

:alarmplay
if %time:~0,-9% GTR 12 (set /a timehour=%time:~0,-9%-12) else set timehour=%time:~0,-9%
if %time:~3,1%==0 (set timeminute=%time:~4,1%) else set timeminute=%time:~3,2%
echo Good morning, sir. It is currently %timeminute% minutes past %timehour%. I would recommend getting out of bed now, sir. %extramsg%
%speech% "Good morning, sir. It is currently %timeminute% minutes past %timehour%. I would recommend getting out of bed now, sir. %extramsg%"
if "%alarmoption%"=="screen" start scripts\nircmd.exe monitor on
if "%alarmoption%"=="dim" taskkill /F /IM dimscreen.exe > nul
if "%alarmoption%"=="no" EXIT
set alarmoption=
cls
echo  CODE : 0                                             /-----------------------------| 
echo.                                                     /  Logged in as: %username%   |
echo.                                                    /-----------------------------|
echo.
echo.                                                           -----------------                                                  
echo.                                                              | LOLOUD | 
echo.                                                        -----------------             
echo.                                                           ------------------
echo.                                                            [%boydude%]
echo.                                                     -------------------
echo.
echo.
goto startonwake

:: Music

:Playlists
tree playlists /f
goto start

:mos
echo Buffering Ministry of Sound Radio now, sir.
start playlists\mos.vbs
goto start

:: /Music

:voicemode
echo Available voice profiles:
echo Windows (Default) [type "windows"]
echo LOLOUD [type "loloud"]
set /p voiceprofile=Please choose a voice profile:
if %voiceprofile%==windows set speech=scripts\nircmd.exe speak text
if %voiceprofile%==loloud set speech=scripts\speech\swift.exe -d scripts\speech\lawrence -p speech/pitch/shift=0.8
echo Active Voice profile changed to %voiceprofile%.
goto newvoice

:Spotify
echo What would you like me to tell Spotify to do, sir? (experimental)
echo.
set /p spcom=
if %spcom%==play start scripts\spotify\spplaypause
if %spcom%==next start scripts\spotify\spnext
if %spcom%==previous start scripts\spotify\spprevious
if %spcom%==mute start scripts\spotify\spmute
if %spcom%==unmute start scripts\spotify\spmute
if %spcom%==jarvis goto jarvis
goto start

:lock
echo Locking my doors now, sir.
%speech% "Locking my doors now, sir."
set /a delay = %1 + 3
ping -n %delay% localhost > nul
rundll32.exe user32.dll, LockWorkStation
goto start

:msnstat
echo What would you like to set your messenger status to, sir?
echo (Choices are: available, busy, away or invisible)
echo.
set /p msnstatus=Set status to: 
if %msnstatus%==busy goto msnbusy
if %msnstatus%==available goto msnavail
if %msnstatus%==away goto msnaway
if %msnstatus%==invisible goto msninvis
pause

:msnbusy
echo.
"C:\program files\windows live\messenger\msnmsgr.exe" /busy
echo Your MSN status has now been changed to busy, sir.
goto start

:msnavail
echo.
"C:\program files\windows live\messenger\msnmsgr.exe" /available
echo Your MSN status has now been changed to available, sir.
goto start

:msnaway
echo.
"C:\program files\windows live\messenger\msnmsgr.exe" /away
echo Your MSN status has now been changed to away, sir.
goto start

:msninvis
echo.
"C:\program files\windows live\messenger\msnmsgr.exe" /invisible
echo Your MSN status has now been changed to invisible, sir.
goto start

:sendim
"C:\program files\windows live\messenger\msnmsgr.exe" /sendim
echo Instant Messenger window opened, sir.
goto start

:msnbrowse
start "C:\program files\windows live\messenger\msnmsgr.exe"
echo Instant Messenger contacts browser has been opened, sir.
goto start

:offout
echo Okay, sir. Have fun.
%speech% "Okay, sir. Have fun."
start scripts\dimscreen.exe
goto start

:imback
echo Hello again, sir. I hope you had a good time.
%speech% "Hello again, sir. I hope you had a good time."
taskkill /F /IM dimscreen.exe > nul
goto start

:killmos
taskkill /F /IM wmplayer.exe > nul
IF %ERRORLEVEL% EQU 0 echo Ministry of sound was successfully stopped.
echo.
goto start

:thankyou2
echo.
echo My pleasure, sir.
%speech% "My pleasure, sir."
goto start

:close
exit

:speak
set /p speechinput=Type a phrase to speak: 
if "%speechinput%"=="stop" goto start
echo %speechinput%
%speech% "%speechinput%"
goto speak

:version
VER | findstr /i "5.1." > nul
IF %ERRORLEVEL% EQU 0 %speech% You are running Windows 7, sir.
VER | findstr /i "6.1." > nul
IF %ERRORLEVEL% EQU 0 %speech% You are running Windows 10, sir.
goto start

:screenoff
start scripts\nircmd.exe cmdwait 2000 monitor off
goto start

:screensaver
start scripts\nircmd.exe screensaver
goto start

:dim
start scripts\dimscreen.exe
goto start

:dimstop
taskkill /IM dimscreen.exe
goto start

:weather
set /p wlocation= <scripts\weather\location.txt
start scripts\xml\getxml.exe -N --directory-prefix=%temp% %wlocation%
:weathercheck
if NOT EXIST %temp%\Next3DaysRSS.xml (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto weathercheck
)
start scripts\weather\parsetoday.vbs
ping 123.45.67.89 -n 1 -w 500 > nul.
:weatherxmlparsecheck
if NOT EXIST %temp%\mintemp.txt (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto weatherxmlparsecheck
)
set /p maxtemp= <%temp%\maxtemp.txt
set /p mintemp= <%temp%\mintemp.txt
set /p condition= <%temp%\condition.txt
echo.
echo The forecast for today is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees, sir.
%speech% "The forecast for today is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees, sir."
del %temp%\Next3DaysRSS.xml
del %temp%\forecast.txt
del %temp%\today.txt
del %temp%\condition.txt
del %temp%\maxtemp.txt
del %temp%\mintemp.txt
goto start

:forecast
set /p wlocation= <scripts\weather\location.txt
start scripts\xml\getxml.exe -N --directory-prefix=%temp% %wlocation%
:forecastcheck
if NOT EXIST %temp%\Next3DaysRSS.xml (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto forecastcheck
)
start scripts\weather\parseforecast.vbs
ping 123.45.67.89 -n 1 -w 500 > nul.
:forecastxmlparsecheck
if NOT EXIST %temp%\mintemp2.txt (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto forecastxmlparsecheck
)
set /p maxtemp= <%temp%\maxtemp.txt
set /p mintemp= <%temp%\mintemp.txt
set /p condition= <%temp%\condition.txt
set /p maxtemp2= <%temp%\maxtemp2.txt
set /p mintemp2= <%temp%\mintemp2.txt
set /p condition2= <%temp%\condition2.txt
set /p forecastday= <%temp%\day.txt
recho.
echo The forecast for tomorrow is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees, and for %forecastday% the forecast is %condition2% with highs of %maxtemp2:~10% and lows of %mintemp2:~10% degrees, sir.
%speech% "The forecast for tomorrow is %condition% with highs of %maxtemp:~10% and lows of %mintemp:~10% degrees, and for %forecastday% the forecast is %condition2% with highs of %maxtemp2:~10% and lows of %mintemp2:~10% degrees, sir."
del %temp%\Next3DaysRSS.xml
del %temp%\forecast.txt
del %temp%\tomorrow.txt
del %temp%\condition.txt
del %temp%\maxtemp.txt
del %temp%\mintemp.txt
del %temp%\aftertomorrow.txt
del %temp%\day.txt
del %temp%\condition2.txt
del %temp%\maxtemp2.txt
del %temp%\mintemp2.txt
goto start

:news
start scripts\xml\getxml.exe -N --directory-prefix=%temp% http://feeds.bbci.co.uk/news/rss.xml
:newscheck
if NOT EXIST %temp%\rss.xml (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto newscheck
)
start scripts\news\parsebbcnews.vbs
ping 123.45.67.89 -n 1 -w 500 > nul.
:newsxmlparsecheck
if NOT EXIST %temp%\bbcnews.txt (
ping 123.45.67.89 -n 1 -w 500 > nul.
goto newsxmlparsecheck
)
set /p headline= <%temp%\bbcnews.txt
echo %headline%
%speech% "%headline%"
del %temp%\rss.xml
del %temp%\bbcnews.txt
goto start                                                                                                                                                                                     

