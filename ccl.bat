@Echo off
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
echo Requesting Admin Perms SinEx.cc Cleaner...
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

TASKKILL /F /IM VALORANT-Win64-Shipping.exe
TASKKILL /F /IM VALORANT.exe
TASKKILL /F /IM RiotClientServices.exe
TASKKILL /F /IM vgc.exe
TASKKILL /F /IM vgtray.exe

del /s /q /f "C:\ProgramData\Riot Games\machine.cfg"
del /s /q /f "C:\Program Files\Riot Vanguard\Logs"
del /s /q /f "C:\Windows\vgkbootstatus.dat"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Riot Games"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\VALORANT"
RMDIR /S /Q "C:\Riot Games\Riot Client\UX\GPUCache"
RMDIR /S /Q "D:\Riot Games\Riot Client\UX\GPUCache"
RMDIR /S /Q "E:\Riot Games\Riot Client\UX\GPUCache"
RMDIR /S /Q "%systemdrive%\$Recycle.bin"

del /f "C:\Windows\win.ini"
del /f "C:\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
del /f "C:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
del /f "C:\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
del /f "C:\Riot Games\Riot Client\UX\icudtl.dat"
del /f "C:\Riot Games\Riot Client\UX\natives_blob.bin"
del /f "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del /f "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
del /f "C:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del /f "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
del /f "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /f "C:\Users\%username%\ntuser.ini"
del /f "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /f "C:\System Volume Information\tracking.log"
del /f "D:\System Volume Information\tracking.log"


exit