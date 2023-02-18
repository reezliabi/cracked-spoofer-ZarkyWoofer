@echo off

if not exist config.bat goto firstlaunch
call config.bat

for %%i in ("%owpath%") do (
set owdir=%%~di%%~pi
)

rem https://stackoverflow.com/a/52517718
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

set uname=overwatch%random%%random%
echo [ ] owpath - %owpath%
echo [ ] owdir - %owdir%
echo [ ] user - %uname%

echo [ ] adding user
net user %uname% 123 /ADD >nul
echo net user %uname% /delete >>cleanup.bat
if %errorlevel% neq 0 goto error
echo [+] user added

echo [ ] setting up user's directories by running a dummy command prompt
powershell Start-Process -ArgumentList '/c exit' -FilePath '%windir%\System32\cmd.exe' -WorkingDirectory '%windir%\System32' -Credential (New-Object System.Management.Automation.PSCredential '%uname%', (ConvertTo-SecureString '123' -AsPlainText -Force))

echo [ ] copying config
robocopy %configdir% C:\Users\%uname%\Documents\Overwatch /E >nul
echo [+] config copied

echo [ ] starting overwatch with powershell
powershell Start-Process -FilePath '%owpath%' -WorkingDirectory '%owdir%' -Credential (New-Object System.Management.Automation.PSCredential '%uname%', (ConvertTo-SecureString '123' -AsPlainText -Force))
echo [+] done have fun :D
goto end

:error
echo [-] there was an error try trying again
goto end

:firstlaunch
echo [ ] please find and drag Overwatch.exe onto this window and press enter
echo [ ] if you haven't changed anything while installing battle.net/overwatch it should be located in 
echo [ ] C:\Program Files (x86)\Overwatch\_retail_
:owexe
set /p owpath=
set owpath=%owpath:"=%

if not exist "%owpath%" (
    echo [-] this path doesn't seem valid
    goto owexe
)

:configs
echo [ ] do you want to copy your current overwatch settings for every new user?
echo [ ] press Y for yes or N for no
choice
set cfg=%errorlevel%
set copycfg=0
if %cfg% equ 1 set copycfg=1

rem save the configuration
echo rem overwatch launcher configuration >config.bat
echo set config=1 >>config.bat
echo set owpath=%owpath% >>config.bat
echo set copycfg=%cfg% >>config.bat
echo set configdir=%userprofile%\Documents\Overwatch >>config.bat

echo [+] configuration saved, if you wish to change any settings manually you can take a look inside config.bat
echo [ ] if you would like to start over please delete config.bat and restart the script
echo [ ] start the script again to start playing

exit

:end
timeout -t 5 >nul
exit