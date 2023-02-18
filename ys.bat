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

start "" /min  ""DevManView.exe /uninstall "WAN Miniport*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "Disk drive*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "C:\"
start "" /min  ""DevManView.exe /uninstall "D:\"
start "" /min  ""DevManView.exe /uninstall "E:\"
start "" /min  ""DevManView.exe /uninstall "F:\"
start "" /min  ""DevManView.exe /uninstall "G:\"
start "" /min  ""DevManView.exe /uninstall "Z:\"
start "" /min  ""DevManView.exe /uninstall "Disk"
start "" /min  ""DevManView.exe /uninstall "disk"
start "" /min  ""DevManView.exe /uninstall "Disk&*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "SWD\WPDBUSENUM*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "USBSTOR*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "SCSI\Disk*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "STORAGE*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "WAN Miniport*" /use_wildcard""
start "" /min  ""DevManView.exe /uninstall "STORAGE*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "SWD\MS*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "Motherboard*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "Volume*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "Microsoft*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "System*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "ACPI\*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "Remote*" /use_wildcard
start "" /min  ""DevManView.exe /uninstall "D:\"
start "" /min  ""DevManView.exe /uninstall "E:\"

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\DeviceDesc" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\Driver" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1W
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d %random% /f
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d %random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %Hex1%-%Hex8%-%Hex1%-%Hex0%-%Hex10% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d FS%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d FS%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%-s%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {eac%random%} /f
REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {fefefee%random%-%random%-%random%-%random%} /f
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion /v ProductId /t REG_SZ /d %random% /f
REG ADD HKLM\System\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d %random% /f
REG ADD HKLM\System\CurrentControlSet\Control\WMI\Security /v 671a8285-4edb-4cae-99fe-69a15c48c0bc /t REG_SZ /d %random% /f

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\Connected" /v GUID /t REG_SZ /d "{A28BBADE-%Hex1%-%Hex0%-%Hex1%-00%Hex10%}" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\Disconnected" /v GUID /t REG_SZ /d "{143E4E83-%Hex1%-%Hex0%-%Hex1%-00%Hex10%}" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\EmailImage" /v GUID /t REG_SZ /d "{C66DCEE1-%Hex1%-%Hex0%-%Hex1%-2F%Hex10%}" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\FaxImage" /v GUID /t REG_SZ /d "{C00EB793-%Hex1%-%Hex0%-%Hex1%-00%Hex10%}" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\PrintImage" /v GUID /t REG_SZ /d "{B441F425-%Hex1%-%Hex0%-%Hex1%-00%Hex10%}" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\ScanButton" /v GUID /t REG_SZ /d "{A6C5A715-%Hex1%-%Hex0%-%Hex1%-00%Hex10%}" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\STIproxyEvent" /v GUID /t REG_SZ /d "{d711f81f-%Hex1%-%Hex0%-%Hex1%-92%Hex10%}" /f

wmic computersystem where name="%computername%" call rename name="<DESKTOP-%random%%random%>" >nul 2>nul
wmic useraccount where name='%username%' rename %random% >nul 2>nul

reg delete HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /f
reg delete HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGUID /f
reg delete HKLM\SOFTWARE\Microsoft\SQMClient /f
reg delete HKLM\SYSTEM\HardwareConfig /v LastConfig /f

reg delete "HKLM\SYSTEM\ControlSet001\Services\EpicOnlineServices" /f
reg delete "HKCU\SOFTWARE\Epic Games" /f
reg delete "HKLM\SOFTWARE\Classes\com.epicgames.launcher" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\BEService" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\BEDaisy" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BEDaisy" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BEService" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Epic Games" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\com.epicgames.launcher" /f
reg delete "HKCR\com.epicgames.eos" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\4JSyFFDDKUMXDyK2USgAjbiksFnqOb3f8RPZBPSpEfU: 0x00000002" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\62bDlCzxB/xxIWLkQdDRYcAqhmZhNOMUtjhRkAgTvkQ: 0x00000002" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Package: 0x00000181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Index: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\PackageRelativeApplicationId: "App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Executable: "GameBar.exe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Entrypoint: "GameBar.App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\StartPage: (NULL!)" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\_IndexKeys:  50 61 63 6B 61 67 65 5C 31 38 31 5C 39 33 00 50 61 63 6B 61 67 65 41 6E 64 50 61 63 6B 61 67 65 52 65 6C 61 74 69 76 65 41 70 70 6C 69 63 61 74 69 6F 6E 49 64 5C 31 38 31 5E 41 70 70 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\Application: 0x00000093" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 33 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 33 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\Application: 0x00000093" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\User: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 34 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 34 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFamily: 0x0000004E" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageType: 0x00000008" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageOrigin: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Volume: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 30 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 7E 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFamily: 0x0000004E" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageType: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageOrigin: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Volume: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 31 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 78 36 34 5F 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFamily: 0x0000004E" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageType: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageOrigin: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Volume: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 32 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 73 70 6C 69 74 2E 73 63 61 6C 65 2D 31 30 30 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\Package: 0x00000180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 30 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 30 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\Package: 0x00000181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 31 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 31 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\Package: 0x00000182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 32 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 32 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\Package: 0x00000180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\User: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 33 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 30 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\Package: 0x00000181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\User: 0x00000004" /f

reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f