@echo off
:: BatchGotAdmin
:-------------------------------------

REM --> Check for permissions
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
:--------------------------------------
taskkill /IM Agent.exe /F
taskkill /IM Battle.net.exe /F
del "C:\Program Files (x86)\Call of Duty Modern Warfare\main\data0.dcache"
del "C:\Program Files (x86)\Call of Duty Modern Warfare\main\data1.dcache"
del "C:\Program Files (x86)\Call of Duty Modern Warfare\main\toc0.dcache"
del "C:\Program Files (x86)\Call of Duty Modern Warfare\main\toc1.dcache"
del "C:\Program Files (x86)\Call of Duty Modern Warfare\Data\data\shmem"
del "C:\Program Files (x86)\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del /f ".\Data\data\shmem"
del /f ".\main\recipes\cmr_hist"
rmdir ".\main\recipes\cmr_hist" /s /q
rmdir "%userprofile%\documents\Call of Duty Modern Warfare" /s /q
rmdir "%localappdata%\Battle.net" /s /q
rmdir "%localappdata%\Blizzard Entertainment" /s /q
rmdir "%appdata%\Battle.net" /s /q
rmdir "%programdata%\Battle.net" /s /q
rmdir "%programdata%\Blizzard Entertainment" /s /q
rmdir "%Documents%\Call Of Duty Modern Warfare" /s /q
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\InstallTime" /f
taskkill /IM Agent.exe /F
taskkill /IM Battle.net.exe /F
del /f ".\Data\data\shmem"
del /f ".\main\recipes\cmr_hist"
del /f ".\Battle.net\Cache\index"
del /f ".\Call of Duty Black Ops Cold War\telescopeCache\telescope_index.bat"
del "C:\Program Files (x86)\Call of Duty Black Ops Cold War\telescopeCache\telescope_index.bat"
del "C:\Program Files (x86)\Call of Duty Black Ops Cold War\Data\data\shmen"
del "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\archive"
del "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\players"
del "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War\report"
del "C:\Users\%username%\Documents\Call of Duty Black Ops Cold War"
del "C:\Users\%username%\AppData\Local\Battle.net\Account\802259981"
del "C:\Users\%username%\AppData\Local\Battle.net\Account\802299369"
del "C:\Users\%username%\AppData\Local\Battle.net\Account\803619482"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3.dcache"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2"
del "C:\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3"
del "C:\Users\%username%\AppData\Local\Battle.net\Cache"
del "C:\Users\%username%\AppData\Local\Battle.net\Logs"
del "C:\Users\%username%\AppData\Local\Battle.net\WidevineCdm"
del "C:\Users\%username%\AppData\Local\Battle.net\CachedData"
del "C:\Users\%username%\AppData\Local\Blizzard Entertainment"
del "C:\Users\%username%\AppData\Roaming\Battle.net"
del "C:\ProgramData\Battle.net"
del "C:\ProgramData\Blizzard Entertainment"
cls