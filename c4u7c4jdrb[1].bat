reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgk\Security" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgk" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgc\Security" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgc" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Riot Vangard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\VALORANT-Win64-Shipping.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{FA99DFC7-6AC2-453A-A5E2-5E2AFF4507BD}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F2A1CB5A-E3CC-4A2E-AF9D-505A7009D442}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CAA59E3C-4792-41A5-9909-6A6A8D32490E}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{BCB48336-4DDD-48FF-BB0B-D3190DACB3E2}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{B267E3AD-A825-4A09-82B9-EEC22AA3B847}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{A3D53349-6E61-4557-8FC7-0028EDCEEBF6}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{9E04CAB2-CC14-11DF-BB8C-A2F1DED72085}\Count" /f
reg delete "HKEY_CLASSES_ROOT\riotclient" /f
RMDIR /S /Q "C:\Users\%username%\AppData\Local\VALORANT"
RMDIR /S /Q "C:\Riot Games"
RMDIR /S /Q "C:\ProgramData\Riot Games"
RMDIR /S /Q "C:\ProgramData\Application Data\Riot Games"
RMDIR /S /Q "C:\Program Files\Riot Vangard"
RMDIR /S /Q "C:\Program Files\Riot Games"
RMDIR /S /Q "C:\Documents and Settings\All Users\Riot Games"
RMDIR /S /Q "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Riot Games"
RMDIR /S /Q "C:\Users\%username%\Local Settings\Riot Games"
del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\VALORANT.lnk"
del "C:\Riot Games\VALORANT\live\Manifest_NonFSFiles_Win64.txt" /f /q
del "C:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icdtl.dat" /f /q
del "C:\Riot Games\Riot Client\X\natives_blob.bin" /f /q
del "C:\Riot Games\Riot Client\X\icdtl.dat" /f /q
del "C:\Riot Games\Riot Client\X\Plgins\plgin-manifest.json" /f /q
del /s /q "C:\Windows\vgkbootstats.dat"
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
del /s /q /f "%systemdrive%\$Recycle.bin"
del /s /q "D:\System Volume Information\tracking.log"
del /s /q "C:\Windows\win.ini"
del /s /q "C:\Windows\memory.dmp"
del /s /q "C:\Windows\WindowsUpdate.log"
del /s /q "C:\Windows\System32\LogFiles\WMI\Wifi.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\RadioMgr.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\NtfsLog.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\NetCore.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\LwtNetLog.etl"
del /s /q "C:\Windows\UserviceProfiles\NetworkService\NTSER.DAT"
del /s /q "C:\Windows\UserviceProfiles\LocalService\AppData\Local\Microsoft\Windows\qwavecache.dat"
del /s /q "C:\Windows\Logs\DISM\dism.log"
del /s /q "C:\Windows\DirectX.log"
del /s /q "C:\Users\Public\Desktop\VALORANT.lnk"
del /s /q "C:\Users\%username%\ntser.dat.LOG2"
del /s /q "C:\Users\%username%\ntser.dat.LOG1"
del /s /q "C:\Users\%username%\\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /s /q "C:\Users\%username%\NTSER.DAT"
del /s /q "C:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del /s /q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /s /q "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del /s /q "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfigration.ini"
del /s /q "C:\Users\%username%\AppData\Local\IconCache.db"
del /s /q "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
del /s /q "C:\System Volume Information\tracking.log"
del /s /q "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /s /q "C:\Config.Msi"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
RMDIR /S /Q "C:\Windows\logs\CBS"
RMDIR /S /Q "C:\Windows\Temp"
RMDIR /S /Q "C:\Windows\System32\config\systemprofile\AppData\Local\ScreenTime"
RMDIR /S /Q "C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Vault\UserProfileRoaming"
RMDIR /S /Q "C:\Windows\System32\config\systemprofile\AppData\Local\D3DSCache"
RMDIR /S /Q "C:\Windows\System32\config\TxR"
RMDIR /S /Q "C:\Windows\System32\WDI\LogFiles\StartpInfo"
RMDIR /S /Q "C:\Windows\System32\WDI\LogFiles"
RMDIR /S /Q "C:\Windows\SoftwareDistribution\"
RMDIR /S /Q "C:\Windows\UserviceProfiles\NetworkService\AppData\Local\Microsoft\Windows\deliveryOptimization\Logs"
RMDIR /S /Q "C:\Windows\UserviceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\State"
RMDIR /S /Q "C:\Users\%username%\AppData\Roaming\Microsoft\Protect"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\VirtalStore"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\UnrealEngine"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Temp"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\DeviceSearchCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\ConstraintIndex"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\WebCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\WER"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCookies"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\IEDownloadHistory"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\IECompataCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\IECompatCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\Caches"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Terminal Server Client\Cache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\CacheStorage"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\D3DSCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\CrashDmps"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\ConnectedDevicesPlatform"
RMDIR /S /Q "C:\ProgramData\NVIDIA Corporation\NV_Cache"
RMDIR /S /Q "C:\ProgramData\NVIDIA Corporation\Drs\nvAppTimestamps"
RMDIR /S /Q "C:\ProgramData\Microsoft\Windows\WER"
RMDIR /S /Q "C:\PerfLogs"
RMDIR /S /Q "C:\Documents and Settings\%username%\AppData\Local\Application Data\Microsoft\Windows\Caches"
RMDIR /S /Q "%localappdata%\Microsoft\Windows\Caches"
del /s /q "C:\Windows\System32\restore\MachineGuid.txt"
del /s /q "%systemdrive%\Users\Public\Libraries\collection.dat"
RMDIR /S /Q "%systemdrive%\System Volume Information\IndexerVolumeGuid"
del /s /q "%systemdrive%\System Volume Information\WPSettings.dat"
del /s /q "%systemdrive%\System Volume Information\tracking.log"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Windows\WER"
RMDIR /S /Q "%systemdrive%\Users\Public\Shared Files"
del /s /q "%systemdrive%\Windows\INF\setpapi.dev.log"
del /s /q "%systemdrive%\Windows\INF\setpapi.setp.log"
RMDIR /S /Q "%systemdrive%\Users\Public\Libraries"
RMDIR /S /Q "%systemdrive%\MSOCache"
del /s /q "%systemdrive%\ProgramData\ntser.pol"
del /s /q "%systemdrive%\Users\Defalt\NTSER.DAT"
del /s /q "%systemdrive%\Recovery\ntser.sys"
del /s /q "%systemdrive%\desktop.ini"
netsh winsock reset