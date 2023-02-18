@echo off
title  
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

C:\Windows\system32\AMIDEWINx64.EXE /bs %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /su auto
C:\Windows\system32\AMIDEWINx64.EXE /ss %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /cs %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /psn %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /bsh %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SM %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SV %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SK %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SF %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BM %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BP %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BV %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BT %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BLC %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /PAT %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /PPN %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /IVN %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /IV %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /ID %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SM %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SP %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SS %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BTH 2 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /ID %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SF %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /BLCH 2 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CM %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CV %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CA %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CSK %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CMH 3 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CVH 3 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CSH 3 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CAH 3 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /CSKH 3 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 1 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 2 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 4 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 5 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 6 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 7 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /OS 8 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SCO 1 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SCO 2 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /bsh 2 %random%%random%%random%
C:\Windows\system32\AMIDEWINx64.EXE /SCO 4 %random%%random%%random%
