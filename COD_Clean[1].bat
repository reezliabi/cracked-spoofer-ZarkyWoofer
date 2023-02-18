@echo off


IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)


REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"

:main 
cls
echo.
echo.
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b 																							
set /a num= 5																																	
color %num%	

powershell write-host -fore Red [+]  1. Clean All Traces
powershell write-host -fore Red [+]  2. Spoof NIC Address
set /a num= 4																																	
color %num%	
set /p do=Value:
if %do%== 1 goto Spoofer
if %do%== 1 goto Cleaner00
echo.
echo Invalid value = %do%
echo.
pause
goto main

:Cleaner00
cls
echo What do you think of You re gonna get everything for free! 
pause
goto main

:Spoofer
cls
taskkill /IM Agent.exe /F
taskkill /IM Battle.net.exe /F
echo.
echo.
echo.
echo [+] Select the mode of cleaning:
echo [+] 1.Only MW
echo [+] 2.Only CW
echo [+] 3.Both MW/CW

:OPT0
set /p dad= HERE::
if %dad%== 1 goto 1
if %dad%== 2 goto 2
if %dad%== 3 goto 1
echo.
echo Invalid value = %do%
goto OPT0


:1
echo [+] Press A to Select MW Directory..
echo.
:OPT1
set /p do=Value:
if %do%== A goto mw
if %do%== a goto mw
echo.
echo Invalid value = %do%
goto OPT1
echo.
:mw
setlocal
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose MW folder.',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion
echo.
if %dad% == 1 goto cleanupp
echo.
endlocal


:2
echo [+] Press B to Select CW Directory..
echo.
:OPT1
set /p do=Value:
if %do%== B goto cw
if %do%== b goto cw
echo.
echo Invalid value = %do%
goto OPT2
echo.
:cw
setlocal
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose CW folder.',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "cwfolder=%%I"

setlocal enabledelayedexpansion
echo.
if %dad% == 2 goto cwcleanupp
echo.
endlocal


:cleanupp
echo.
echo DONE!! NOW WAIT FOR CLEANUP TO FINISH.
pause
echo.
echo.

del /s /f "<Add you battlenet loction i can't add 10 lines for single dir>\Battle.net\Cache\index"
del /s /f "%folder%\Data\config"
del /s /f "%folder%\Data\data\shmem"
del /s /f "%folder%\Data\indices"
del /s /f "%folder%\main\data0.dcache"
del /s /f "%folder%\main\data1.dcache"
del /s /f "%folder%\main\toc0.dcache"
del /s /f "%folder%\main\toc1.dcache"
del /s /f "%folder%\main\recipes\cmr_hist"
del /s /f "%folder%\xpak_cache"
del /s /f "%folder%\telescopeCache"
del /s /f "%folder%\BlizzardBrowser"
del /s /f "C:\ProgramData\NVIDIA Corporation\NV_Cache"

:cwcleanup
del /s /f "%cwfolder%\telescopeCache\telescope_index.bat"
del /s /f "%cwfolder%\Data\data\shmen"

rmdir ".\main\recipes\cmr_hist" /s /q
rmdir "%userprofile%\documents\Call of Duty Modern Warfare" /s /q
rmdir "%localappdata%\Battle.net" /s /q
rmdir "%localappdata%\Blizzard Entertainment" /s /q
rmdir "%appdata%\Battle.net" /s /q
rmdir "%programdata%\Battle.net" /s /q
rmdir "%programdata%\Blizzard Entertainment" /s /q


del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\archive"
del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\players"
del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\report"
del /s /f "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War"


del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Account\802259981"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Account\802299369"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Account\803619482"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3.dcache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Cache"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\Logs"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\WidevineCdm"
del /s /f "C:\Users\%username%\AppData\Local\Battle.net\CachedData"
del /s /f "C:\Users\%username%\AppData\Local\Blizzard Entertainment"
del /s /f "C:\Users\%username%\AppData\Roaming\Battle.net"
del /s /f "C:\ProgramData\Battle.net"
del /s /f "C:\ProgramData\Blizzard Entertainment"



reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\InstallTime" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\" /f
reg delete "HKEY_CLASSES_ROOT\battlenet" /f
reg delete "HKEY_CLASSES_ROOT\blizzard" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Battlenet" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Blizzard" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Heroes" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.SC2" /f
reg delete "HKEY_CLASSES_ROOT\heroes" /f
reg delete "HKEY_CLASSES_ROOT\starcraft" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\DirectInput" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ActivityDataModel" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\battlenet" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\blizzard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.Battlenet" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.Blizzard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.Heroes" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Blizzard.URI.SC2" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\heroes" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\starcraft" /f


echo CLEANUP COMPLETED!
pause
goto main
pause


