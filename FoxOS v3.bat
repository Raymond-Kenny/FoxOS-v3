@echo off && title PreSetup2
@echo off
:: Start maximized
if not "%1" == "max" start /MAX /wait cmd /c %0 max & exit/b
@REM mode 800
setlocal enabledelayedexpansion
title FoxOS W11 Post-Install Tweaks

set "CMDLINE=RED=[31m,S_GRAY=[90m,S_RED=[91m,S_GREEN=[92m,S_YELLOW=[93m,S_MAGENTA=[95m,S_WHITE=[97m,B_BLACK=[40m,B_YELLOW=[43m,UNDERLINE=[4m,_UNDERLINE=[24m"
set "%CMDLINE:,=" & set "%"
:: Credits to Artanis for colors

color C
echo.                                                                                               
echo.                                                                                               
echo.                                                                                         
echo.                                :~:                                                                
echo.                             .*?7??.                                                                
echo.                          .*7??7?J?                                                                 
echo.                        *????* *?J~                                                                 
echo.                     .~7J7*.   :?J~                                                                 
echo.                   .~?J??.     .???.                                                                
echo.                 .~?J??????777??7???                                                                
echo.                *?J????????????J????~                                                               
echo.              .7J???????????????????J?.                                                             
echo.             :?J???????????????????????~.                                                           
echo.            *?????????????????????????JJ??:                         .:*~??777??~:.                  
echo.           *???????????????????JJ???777?7JJ7~:.                 .:~7???7??~~??7???7?:               
echo.          :????????????????J?7?~*:..     :~7?J?7?*:.          :???J?~:          .*??J7*             
echo.          7????????????J???*.               .:~?7????7?.    .??J??????7~:          .~?J7:           
echo.        *J??????????J??:.                      :??J?~.    *?J?????????J?7~.         .???*          
echo.        7?????????J?~.                    .:*??J??*.     *???????????????J?*.:*??77777?JJ*         
echo.        .??????????~.              ...:*~?7?J?7?*.       :??????????????????J???7?~~~~~~???         
echo.        :???????J7:              :7??????7?~*.           7????????????????J??*.                     
echo.        :??????J7.             .?????:...               .?????????????????~.                        
echo.        .?????J7              :?J????~                  .????????????????.                          
echo.         7????7.             *???????J7*                 7??????????????                            
echo.         ~J???*             :???????????7:               *?????????????.                            
echo.         .???7             .??????????????7*              ?J?????????J?                             
echo.          *JJ*             ~J???????????????7~:           .7???????????                             
echo.           ?J:            .??????????????????J?7~:.        :???????????.                            
echo.            ?.            :?????????????????????J???*.      :?????????J~                            
echo.                          *J???????????????????????JJ?~.     :??????????*                           
echo.                          :???????????????????????????J?*     *??????????.                          
echo.                          .??????????????????????????????~     ~J???????J7                          
echo.                           7?????????????????????????????J*    .??????????:                         
echo.                           *???????????????????????????????.    ?????????J*                         
echo.                            ~J?????????????????????????????.    ?J??????J?.                         
echo.                             ~???????????????????????????J?    .7?????J?7.                          
echo.                              *7J???????????????????????J7.    ?J?JJ???:                            
echo.                                *7?J?????????????????J?7*    :7??7?~:.                              
echo.                                  :~7???JJJJ???JJJ??7?:     :*:..                                   
echo.                                     .:**~??????~~*.       ..                                           
echo.
echo.                                                                                               
echo.
echo.
echo.                                                                                                                                                                                                                                                                                                                                                                                                


echo.
echo.
echo 	!S_WHITE!The ISO was made by CatGamerOP on Discord.
echo 	The ISO is free and is NOT for sale.
echo 	You can download it from the official FoxOS Discord Server: !S_MAGENTA!https://discord.gg/4Gg8n6WhPN
timeout 4 >NUL 2>&1
echo.
echo.
echo 	!S_GRAY!Applying Windows Tweaks...

echo 	Installing Required Dependencies
	reg add "HKLM\SYSTEM\CurrentControlSet\services\Dhcp" /v "Start" /t REG_DWORD /d "2" /f >NUL 2>&1
	cd /d "C:\Windows\APIs" >NUL 2>&1
	echo 	!S_GREEN!Installing Visual C++
	start /min /wait VisualC\install_all.bat >NUL 2>&1
	echo 	Installing DirectX
	start /min /wait DirectX\#install.bat >NUL 2>&1
	echo 	Installing 7-Zip
	start /wait 7z.exe /S >NUL 2>&1
	regedit /s "7ZIP.reg" >NUL 2>&1

echo 	!S_GRAY!Importing Power Plan
	powercfg -import "%windir%\APIs\Cat10IdleOn.pow" 69420228-6969-6969-6969-694202281337 >NUL 2>&1
	powercfg -import "%windir%\APIs\Cat10IdleOff.pow" 70420228-6969-6969-6969-694202281337 >NUL 2>&1
	powercfg -setactive 69420228-6969-6969-6969-694202281337 >NUL 2>&1
	powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e >NUL 2>&1
	:: powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >NUL 2>&1
	powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a >NUL 2>&1

echo 	Setting Colors
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "StartColorMenu" /t REG_DWORD /d "4284394495" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentColorMenu" /t REG_DWORD /d "4286102015" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentPalette" /t REG_BINARY /d "FFE5CEFFFFD3ABFFFEC691FFFFB978FFFFAB5EFFFF9E44FFFE8C21FF88179800" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AccentColor" /t REG_DWORD /d "4286102015" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "3305093496" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationAfterglow" /t REG_DWORD /d "3305093496" /f >NUL 2>&1
	reg add "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "StartColorMenu" /t REG_DWORD /d "4284394495" /f >NUL 2>&1
	reg add "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentColorMenu" /t REG_DWORD /d "4286102015" /f >NUL 2>&1
	reg add "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentPalette" /t REG_BINARY /d "FFE5CEFFFFD3ABFFFEC691FFFFB978FFFFAB5EFFFF9E44FFFE8C21FF88179800" /f >NUL 2>&1
	reg add "HKU\.DEFAULT\Software\Microsoft\Windows\DWM" /v "AccentColor" /t REG_DWORD /d "4286102015" /f >NUL 2>&1
	reg add "HKU\.DEFAULT\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "3305093496" /f >NUL 2>&1
	reg add "HKU\.DEFAULT\Software\Microsoft\Windows\DWM" /v "ColorizationAfterglow" /t REG_DWORD /d "3305093496" /f >NUL 2>&1

echo 	Setting Win32 Priority to 18 hex
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "24" /f >NUL 2>&1

echo 	Setting Nlasvc dependency
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "DependOnService" /t REG_MULTI_SZ /d "NSI\0RpcSs\0TcpIp" /f >NUL 2>&1

echo 	Registry Cleanup
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\HotStart" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Sidebar" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Telephony" /f >NUL 2>&1
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers" /f >NUL 2>&1
	reg delete "HKCU\Printers" /f >NUL 2>&1
	reg delete "HKLM\SYSTEM\ControlSet001\Control\Print" /f >NUL 2>&1
	reg delete "HKLM\SYSTEM\ControlSet002\Control\Print" /f >NUL 2>&1

echo 	Disabling Spectre and Meltdown patches...
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "33554435" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f >NUL 2>&1
	:: 23-06
	reg add "HKLM\Software\Microsoft\Ole\AppCompat" /v "RequireIntegrityActivationAuthenticationLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
	powershell set-ProcessMitigation -System -Disable DEP, StrictHandle, SEHOP >NUL 2>&1

echo 	Applying Power Settings
	powercfg -h off >NUL 2>&1
	:: 23-06
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "AwayModeEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

echo 	Autoplay Tweaks
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\CameraAlternate\ShowPicturesOnArrival" /ve /t REG_SZ /d "MSTakeNoAction" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlersDefaultSelection\StorageOnArrival" /ve /t REG_SZ /d "MSTakeNoAction" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\CameraAlternate\ShowPicturesOnArrival" /ve /t REG_SZ /d "MSTakeNoAction" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\UserChosenExecuteHandlers\StorageOnArrival" /ve /t REG_SZ /d "MSTakeNoAction" /f >NUL 2>&1

echo 	Disabling Remote Terminal Services Logons to the Server
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "WinStationsDisabled" /t REG_SZ /d "1" /f >NUL 2>&1

@REM echo 	Disabling Remote Font Boot Cache
@REM 	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\GRE_Initialize" /v "DisableRemoteFontBootCache" /t REG_DWORD /d "1" /f >NUL 2>&1
@REM 	reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows NT\CurrentVersion\GRE_Initialize" /v "DisableRemoteFontBootCache" /t REG_DWORD /d "1" /f >NUL 2>&1
@REM 	reg add "HKLM\SYSTEM\CurrentControlSet\Control\MUI\StringCacheSettings" /v "StringCacheGeneration" /t REG_DWORD /d "0" /f >NUL 2>&1

echo 	Disabling Null Session (restrictanonymous)
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "disabledomaincreds" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "restrictanonymous" /t REG_DWORD /d "1" /f >NUL 2>&1

echo 	Disabling Component Based Servicing Logs and DCOM
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableLog" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableDpxLog" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableLog" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Component Based Servicing" /v "EnableDpxLog" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f >NUL 2>&1

echo 	Storage Tweaks
	:: Disable HIPM and DIPM, HDD Parking
	FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "EnableHIPM"^| FINDSTR /V "EnableHIPM"') DO (
		REG ADD "%%a" /F /V "EnableHIPM" /T REG_DWORD /d 0 >NUL 2>&1
		REG ADD "%%a" /F /V "EnableDIPM" /T REG_DWORD /d 0 >NUL 2>&1
		REG ADD "%%a" /F /V "EnableHDDParking" /T REG_DWORD /d 0 >NUL 2>&1

		FOR /F "tokens=*" %%z IN ("%%a") DO (
			SET STR=%%z
			SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\=!
			ECHO 	Disabling HIPM and DIPM in !STR!
		)
	)

	:: Set all IoLatencyCaps to 0
	FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
		REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1

		FOR /F "tokens=*" %%z IN ("%%a") DO (
			SET STR=%%z
			SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
			SET STR=!STR:\Parameters=!
			ECHO 	Setting IoLatencyCap to 0 in !STR!
		)
	)

	:: Disable StorPort idle
	for /f "tokens=*" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do Reg add "%%s" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f >NUL 2>&1

	:: Disable NTFS Last Access Timestamp
	fsutil behavior set disablelastaccess 1 >NUL 2>&1
	fsutil repair set C: 0 > NUL 2>&1
	fsutil behavior set disablespotcorruptionhandling 1 > NUL 2>&1
	fsutil behavior set quotanotify 86400 > NUL 2>&1
	@REM reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f >NUL 2>&1

	:: Disable Write Cache Buffer
	for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum\SCSI"^| findstr "HKEY"') do (
		for /f "tokens=*" %%a in ('reg query "%%i"^| findstr "HKEY"') do reg add "%%a\Device Parameters\Disk" /v "CacheIsPowerProtected" /t REG_DWORD /d "1" /f > NUL 2>&1
	)
	@REM for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum\SCSI"^| findstr "HKEY"') do (
	@REM 	for /f "tokens=*" %%a in ('reg query "%%i"^| findstr "HKEY"') do reg add "%%a\Device Parameters\Disk" /v "UserWriteCacheSetting" /t REG_DWORD /d "1" /f > NUL 2>&1
	@REM )

echo 	Setting CSRSS Priority to High Priority
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >NUL 2>&1
	reg add "HKCU\Control Panel\Desktop" /v "Wallpaper" /t REG_SZ /d "C:\Windows\System32\Fox.png" /f >NUL 2>&1

echo 	Network Tweaks
	for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do reg add "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f >nul 2>&1
	for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do reg add "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f >nul 2>&1
	for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do reg add "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /t REG_DWORD /d "1" /f >nul 2>&1
	powershell Set-NetAdapterBinding -Name * -ComponentID ms_msclient, ms_server -Enabled $false >nul 2>&1

echo 	Disabling USB Idle
	for %%a in (
		EnhancedPowerManagementEnabled
		AllowIdleIrpInD3
		EnableSelectiveSuspend
		DeviceSelectiveSuspended
		SelectiveSuspendEnabled
		SelectiveSuspendOn
		EnumerationRetryCount
		ExtPropDescSemaphore
		WaitWakeEnabled
		D3ColdSupported
		WdfDirectedPowerTransitionEnable
		EnableIdlePowerManagement
		IdleInWorkingState
		IoLatencyCap
	) do for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%a" ^| findstr "HKEY"') do reg add "%%b" /v "%%a" /t REG_DWORD /d "0" /f > NUL 2>&1

echo 	GPU Tweaks
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "TdrLimitTime" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "TdrLimitCount" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers" /v "DisableBadDriverCheckForHwProtection" /t REG_DWORD /d "1" /f >NUL 2>&1

echo 	Disabling Gamebar, Fullscreen Optimization
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MaximumRecordLength" /t REG_QWORD /d "0x00d088c310000000" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "SystemAudioGain" /t REG_QWORD /d "0x1027000000000000" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneGain" /t REG_QWORD /d "0x1027000000000000" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "KGLRevision" /t REG_DWORD /d "1824" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "KGLToGCSUpdatedRevision" /t REG_DWORD /d "1824" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioEncodingBitrate" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingBitrate" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingHeight" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingWidth" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLength" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLengthUnit" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnBatteryAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnWirelessDisplayAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingBitrateMode" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingResolutionMode" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingFrameRateMode" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "EchoCancellationEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleGameBar" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleGameBar" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKSaveHistoricalVideo" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMSaveHistoricalVideo" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecording" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecording" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKTakeScreenshot" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMTakeScreenshot" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecordingIndicator" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecordingIndicator" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleMicrophoneCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleMicrophoneCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleCameraCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleCameraCapture" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleBroadcast" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleBroadcast" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >NUL 2>&1
	reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1 
	reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >NUL 2>&1
	reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg delete "HKCU\System\GameConfigStore\Children" /f >NUL 2>&1
	reg delete "HKCU\System\GameConfigStore\Parents" /f >NUL 2>&1
	reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >NUL 2>&1
	reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >NUL 2>&1
	reg add "HKEY_USERS\.DEFAULT\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg delete "HKEY_USERS\.DEFAULT\System\GameConfigStore\Children" /f >NUL 2>&1
	reg delete "HKEY_USERS\.DEFAULT\System\GameConfigStore\Parents" /f >NUL 2>&1
	reg add "HKLM\Software\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f >NUL 2>&1

	reg add "HKEY_USERS\S-1-5-18\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKEY_USERS\S-1-5-18\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKEY_USERS\S-1-5-19\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1 
	reg add "HKEY_USERS\S-1-5-19\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKEY_USERS\S-1-5-20\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >NUL 2>&1 
	reg add "HKEY_USERS\S-1-5-20\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >NUL 2>&1

echo 	Disabling DMA Remapping
	reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\pci\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Services\pci\Parameters" /v "DmaRemappingOnHiberPath" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\storahci\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Services\storahci\Parameters" /v "DmaRemappingOnHiberPath" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\stornvme\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\ControlSet001\Services\stornvme\Parameters" /v "DmaRemappingOnHiberPath" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\USBXHCI\Parameters" /v "DmaRemappingCompatibleSelfhost" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\USBXHCI\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >NUL 2>&1
	:: for /f "tokens=1" %%i in ('driverquery') do reg add "HKLM\SYSTEM\CurrentControlSet\Services\%%i\Parameters" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticecaption" /t REG_SZ /d "Welcome to FoxOS, Custom Windows for Gaming. The ISO Was Made by CatGamerOP" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "legalnoticetext" /t REG_SZ /d "The ISO is free and is NOT for sale. You can download it from the official FoxOS Discord Server https://discord.gg/4Gg8n6WhPN. IF YOU PAID FOR THIS ISO, YOU WERE SCAMMED, DEMAND A REFUND." /f >NUL 2>&1

echo 	BCDedit Tweaks
	bcdedit /set {globalsettings} custom:16000067 true >NUL 2>&1
	bcdedit /set {globalsettings} custom:16000068 true >NUL 2>&1
	bcdedit /set {globalsettings} custom:16000069 true >NUL 2>&1
	bcdedit /set {current} description "FoxOS W11" >NUL 2>&1
	bcdedit /set bootmenupolicy legacy >NUL 2>&1
	bcdedit /set quietboot Yes >NUL 2>&1
	bcdedit /set bootux Disabled >NUL 2>&1
	bcdedit /set bootlog no >NUL 2>&1
	bcdedit /timeout 10 >NUL 2>&1

	:: bcdedit /set useplatformtick yes >NUL 2>&1
	:: Makes polling rate worse
	:: bcdedit /set tscsyncpolicy legacy >NUL 2>&1
	:: Kept Windows Default
	bcdedit /set disabledynamictick Yes >NUL 2>&1

	bcdedit /event off >NUL 2>&1
	bcdedit /bootdebug off >NUL 2>&1
	bcdedit /set debug No >NUL 2>&1
	
	bcdedit /set ems No >NUL 2>&1
	bcdedit /set bootems No  >NUL 2>&1
	
	bcdedit /set hypervisorlaunchtype Off >NUL 2>&1
	bcdedit /set vsmlaunchtype Off >NUL 2>&1

	bcdedit /set tpmbootentropy ForceDisable >NUL 2>&1
	bcdedit /set nx alwaysoff >NUL 2>&1
	bcdedit /set integrityservices disable >NUL 2>&1
	bcdedit /set allowedinmemorysettings 0 >NUL 2>&1
	bcdedit /set perfmem 0 >NUL 2>&1
	bcdedit /set isolatedcontext No >NUL 2>&1

	bcdedit /set recoveryenabled No >NUL 2>&1

	bcdedit /deletevalue useplatformclock >NUL 2>&1
	bcdedit /deletevalue usefirmwarepcisettings >NUL 2>&1

echo 	Deleting Obsolete Autoruns Entries
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Font Drivers" /v "Adobe Type Manager" /f >NUL 2>&1
	reg delete "HKLM\System\ControlSet001\Control\Terminal Server\Wds\rdpwd" /v "StartupPrograms" /f >NUL 2>&1

echo 	Services Tweaks
	reg add "HKLM\SYSTEM\CurrentControlSet\services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\services\Themes" /v "Start" /t REG_DWORD /d "4" / >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\services\WSearch" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1

echo 	Drivers Tweaks
	reg add "HKLM\SYSTEM\CurrentControlSet\services\Beep" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\services\npsvctrig" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\services\vwififlt" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\services\wanarp" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\services\Wanarpv6" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
	sc config luafv start= disabled >NUL 2>&1

echo 	Restoring Default Photo Viewer
	for %%i in (tif tiff bmp dib gif jfif jpe jpeg jpg jxr png) do (
        reg add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".%%~i" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f) >NUL 2>&1
	for %%a in (tif tiff bmp dib gif jfif jpe jpeg jpg jxr png) do (
		reg add "HKCU\SOFTWARE\Classes.%%~a" /ve /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f) >NUL 2>&1

echo 	Deleting Devices in Device Manager
	DevManView /disable "Microsoft Radio Device Enumeration Bus" >NUL 2>&1
	DevManView /disable "Microsoft RRAS Root Enumerator" >NUL 2>&1
	DevManView /disable "Microsoft Device Association Root Enumerator" >NUL 2>&1
	DevManView /uninstall "Composite Bus Enumerator" >NUL 2>&1
	DevManView /uninstall "NDIS Virtual Network Adapter Enumerator" >NUL 2>&1
	DevManView /uninstall "UMBus Root Bus Enumerator" >NUL 2>&1
	DevManView /uninstall "Microsoft Virtual Drive Enumerator Driver" >NUL 2>&1
	DevManView /uninstall "File as Volume Driver" >NUL 2>&1
	DevManView /uninstall "Microsoft Kernel Debug Network Adapter" >NUL 2>&1
	sc delete CompositeBus >NUL 2>&1
	sc delete NdisVirtualBus >NUL 2>&1
	sc delete umbus >NUL 2>&1

echo 	Disabling Unnecessary Scheduled Tasks
	for %%i in ("Application Experience\Microsoft Compatibility Appraiser" "Application Experience\ProgramDataUpdater"
	"Application Experience\StartupAppTask" "Customer Experience Improvement Program\Consolidator"
	"Customer Experience Improvement Program\KernelCeipTask" "Customer Experience Improvement Program\UsbCeip"
	"Customer Experience Improvement Program\Uploader" "Autochk\Proxy" "CloudExperienceHost\CreateObjectTask"
	"DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" "DiskFootprint\Diagnostics"
	"UpdateOrchestrator\Schedule Scan" "WindowsUpdate\Scheduled Start" "Servicing\StartComponentCleanup" 
    "Recovery Environment\VerifyWinRE" "EDP\StorageCardEncryption Task" "BitLocker\BitLocker Encrypt All Drives" 
    "BitLocker\BitLocker MDM policy Refresh" "ApplicationData\DsSvcCleanup" "International\Synchronize Language Settings") do schtasks /change /tn "\Microsoft\Windows\%%~i" /disable >NUL 2>&1

echo 	Disabling Unnecessary Scheduled Tasks 2
	for %%i in ("Application Experience\SdbinstMergeDbTask" "InstallService\ScanForUpdates" "InstallService\ScanForUpdatesAsUser" "InstallService\SmartRetry"
	"PI\SecureBootEncodeUEFI" "PI\Secure-Boot-Update" "PI\Sqm-Tasks" "Registry\RegIdleBackup" "Shell\ThemesSyncedImageDownload"
	"SoftwareProtectionPlatform\SvcRestartTask") do schtasks /change /tn "\Microsoft\Windows\%%~i" /disable >NUL 2>&1
	schtasks /delete /tn "\Microsoft\Windows\Application Experience\AitAgent" /f >NUL 2>&1

echo 	Disabling Unnecessary Scheduled Tasks 3
	for %%i in ("ApplicationData\appuriverifierdaily" "ApplicationData\appuriverifierinstall" "AppxDeploymentClient\Pre-staged app cleanup"
	"CertificateServicesClient\UserTask-Roam" "DUSM\dusmtask" "Data Integrity Scan\Data Integrity Scan for Crash Recovery"
	"Data Integrity Scan\Data Integrity Scan" "Diagnosis\Scheduled" "DiskCleanup\SilentCleanup" "DiskFootprint\StorageSense"
	"License Manager\TempSignedLicenseExchange" "Location\WindowsActionDialog" "Management\Provisioning\Logon"
	"NlaSvc\WiFiTask" "RetailDemo\CleanupOfflineContent" "Shell\FamilySafetyRefreshTask" "Shell\IndexerAutomaticMaintenance"
	"SoftwareProtectionPlatform\SvcRestartTaskLogon" "SoftwareProtectionPlatform\SvcRestartTaskNetwork" "SpacePort\SpaceAgentTask"
	"Speech\SpeechModelDownloadTask" "WCM\WiFiTask" "WDI\ResolutionHost" "WOF\WIM-Hash-Management" "WOF\WIM-Hash-Validation"
	"Windows Filtering Platform\BfeOnServiceStartTypeChange" "StateRepository\MaintenanceTasks" "MemoryDiagnostic\ProcessMemoryDiagnosticEvents"
	"MemoryDiagnostic\RunFullMemoryDiagnostic" "Ras\MobilityManager" "PushToInstall\LoginCheck" "Time Synchronization\SynchronizeTime"
	"Time Synchronization\ForceSynchronizeTime" "Time Zone\SynchronizeTimeZone" "Wininet\CacheTask") do schtasks /change /tn "\Microsoft\Windows\%%~i" /disable >NUL 2>&1

echo 	Disabling Unnecessary Scheduled Tasks 4
	schtasks /change /tn "MicrosoftEdgeUpdateTaskMachineCore" /disable >NUL 2>&1
	schtasks /change /tn "MicrosoftEdgeUpdateTaskMachineUA" /disable >NUL 2>&1
	for %%i in ("WindowsUpdate\Refresh Group Policy Cache" "WaasMedic\PerformRemediation" "UpdateOrchestrator\UUS Failover Task"
	"UpdateOrchestrator\StartOobeAppsScanAfterUpdate" "UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" "UpdateOrchestrator\Start Oobe Expedite Work"
	"UpdateOrchestrator\Schedule Work" "UpdateOrchestrator\Schedule Scan Static Task" "UpdateOrchestrator\Schedule Scan"
	"UpdateOrchestrator\Report policies") do schtasks /change /tn "\Microsoft\Windows\%%~i" /disable >NUL 2>&1

echo 	Renaming Partition
	label C:FoxOS W11 >NUL 2>&1

echo 	Removing Optional Features
	DISM /Online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0 /norestart /quiet >NUL 2>&1
	DISM /Online /Remove-Capability /CapabilityName:MathRecognizer~~~~0.0.1.0 /norestart /quiet >NUL 2>&1
	DISM /Online /Remove-Capability /CapabilityName:Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0 /norestart /quiet >NUL 2>&1
	DISM /Online /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0 /norestart /quiet >NUL 2>&1

echo 	Windows 11 Stuff
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f >NUL 2>&1
	@REM reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d "0" /f >NUL 2>&1 breaks the Finals
	:: Changing Context Menu to W10
	reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f >NUL 2>&1

echo 	Disabling Visual Effects
	reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f >NUL 2>&1
	reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f >NUL 2>&1
	reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f >NUL 2>&1

echo 	Deleting UserAssist Hashes (TrackProgs)
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecommendations" /t REG_DWORD /d "0" /f >NUL 2>&1

	for /f "tokens=*" %%k in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist"') do (
		reg delete "%%k" /f >NUL 2>&1
	)

echo 	Disabling Reserved Storage (amitxv)
	DISM /Online /Set-ReservedStorageState /State:Disabled >NUL 2>&1

echo 	Disabling Scheduled Defrag
	@REM reg add "HKLM\Software\Microsoft\Dfrg\TaskSettings" /v "fAllVolumes" /t REG_DWORD /d "1" /f >NUL 2>&1
	@REM reg add "HKLM\Software\Microsoft\Dfrg\TaskSettings" /v "fExclude" /t REG_DWORD /d "0" /f >NUL 2>&1
	@REM reg add "HKLM\Software\Microsoft\Dfrg\TaskSettings" /v "Volumes" /t REG_SZ /d " " /f >NUL 2>&1
	@REM reg add "HKLM\Software\Microsoft\Dfrg\TaskSettings" /v "TaskFrequency" /t REG_DWORD /d "3" /f >NUL 2>&1
	@REM reg add "HKLM\Software\Microsoft\Dfrg\TaskSettings" /v "fDeadlineEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1
	schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable >NUL 2>&1
	:: NOT APPLIED

@REM echo 	Removing Microcode Patches TEST ICACLS
@REM takeown /f "%SystemRoot%\System32\mcupdate_GenuineIntel.dll" >NUL 2>&1
@REM 	takeown /f "%SystemRoot%\System32\mcupdate_AuthenticAMD.dll" >NUL 2>&1
@REM icacls "%SystemRoot%\System32\mcupdate_GenuineIntel.dll" /grant "%USERNAME%":F /t >NUL 2>&1
@REM 	icacls "%SystemRoot%\System32\mcupdate_AuthenticAMD.dll" /grant "%USERNAME%":F /t >NUL 2>&1
@REM del /s /q /f "%SystemRoot%\System32\mcupdate_GenuineIntel.dll" >NUL 2>&1
@REM 	del /s /q /f "%SystemRoot%\System32\mcupdate_AuthenticAMD.dll" >NUL 2>&1

echo 	Disabling Firewall
	reg add "HKLM\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "DisableNotifications" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "DisableNotifications" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d "0" /f >NUL 2>&1
	NetSh Advfirewall set allprofiles state off >NUL 2>&1

echo 	Disabling LogPages
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Windows\Win32kWPP\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Windows\Win32kWPP\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Windows\Win32knsWPP\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Windows\Win32knsWPP\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\USBHUB3\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\System\ControlSet001\Services\USBHUB3\Parameters\Wdf" /v "LogPages" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "LogPages" /t REG_DWORD /d "0" /f >nul 2>&1

	@REM echo 	Disabling GamebarPresenceWriter
	@REM 	takeown /f "C:\Windows\System32\GameBarPresenceWriter.exe" >NUL 2>&1
	@REM 	icacls "C:\Windows\System32\GameBarPresenceWriter.exe" /grant "%USERNAME%:F" >NUL 2>&1
	@REM 	move C:\Windows\System32\GameBarPresenceWriter.exe C:\Windows >NUL 2>&1
	@REM subinacl /regkey HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter /setowner=%Username%
	@REM reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f >NUL 2>&1
	:: NOT APPLIED

echo 	Windows Hardening
	:: Disabling RPC usage from a remote asset interacting with scheduled tasks
	reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule" /v DisableRpcOverTcp /t REG_DWORD /d 1 /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v RestrictAnonymousSAM /t REG_DWORD /d 1 /f >NUL 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v RestrictAnonymous /t REG_DWORD /d 1 /f >NUL 2>&1
	:: Disabling RPC usage from a remote asset interacting with services
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v DisableRemoteScmEndpoints /t REG_DWORD /d 1 /f >NUL 2>&1
	:: Prevent sharing of local drives via Remote Desktop Session Hosts
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableCdm /t REG_DWORD /d 1 /f >NUL 2>&1
	:: Disable solicited remote assistance
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fAllowToGetHelp /t REG_DWORD /d 0 /f >NUL 2>&1
	:: Disable Client connectivity
	Change Logon /Disable >NUL 2>&1
	:: Disable Terminal server https://learn.microsoft.com/ru-ru/troubleshoot/azure/virtual-machines/windows/troubleshoot-rdp-general-error
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v TSEnabled /t REG_DWORD /d 0 /f >NUL 2>&1


echo 	Removing Edge Startup Items
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MicrosoftEdgeAutoLaunch_C09E690C3F322367E058F9F0FC90C11A" /f >NUL 2>&1
	reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /f >NUL 2>&1
	schtasks /delete /tn \MicrosoftEdgeUpdateBrowserReplacementTask /F >NUL 2>&1
	schtasks /delete /tn \MicrosoftEdgeUpdateTaskMachineCore /F >NUL 2>&1
	schtasks /delete /tn \MicrosoftEdgeUpdateTaskMachineUA /F >NUL 2>&1
	sc delete edgeupdate >NUL 2>&1
	sc delete edgeupdatem >NUL 2>&1
	sc delete MicrosoftEdgeElevationService >NUL 2>&1
	reg delete "HKLM\System\ControlSet001\Services\edgeupdate" /f >NUL 2>&1
	reg delete "HKLM\System\ControlSet001\Services\edgeupdatem" /f >NUL 2>&1
	reg delete "HKLM\System\ControlSet001\Services\MicrosoftEdgeElevationService" /f >NUL 2>&1
	powershell Remove-AppxPackage Microsoft.Windows.Ai.Copilot.Provider_1.0.3.0_neutral__8wekyb3d8bbwe -AllUsers >NUL 2>&1
	@REM dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Windows.Ai.Copilot.Provider_1.0.3.0_neutral__8wekyb3d8bbwe /AllUsers >NUL 2>&1

	:: Edge Telemetry
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "DiagnosticData" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "TrackingPrevention" /t REG_DWORD /d "3" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "AddressBarMicrosoftSearchInBingProviderEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "PromotionalTabsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main" /v "DoNotTrack" /t REG_DWORD /d "1" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d "0" /f >NUL 2>&1

	reg add "HKCU\Software\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKCU\Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary" /v "EnableExtendedBooksTelemetry" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary" /v "EnableExtendedBooksTelemetry" /t REG_DWORD /d "0" /f >NUL 2>&1

	:: Remove updates
	rmdir /S /Q "C:\Program Files (x86)\Microsoft\EdgeUpdate" >NUL 2>&1

echo 	Disabling Telemetry WINEVT
	reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience/Steps-Recorder" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience/Program-Telemetry" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience/Program-Inventory" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience/Program-Compatibility-Troubleshooter" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Kernel-EventTracing/Admin" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

	set "WinEvtKeys=Cellcore DefenderApiLogger DefenderAuditLogger Diagtrack-Listener ReFSLog"
	for %%K in (%WinEvtKeys%) do (
		set "WinEvtPath=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\WMI\Autologger\%%K"
		reg query "!WinEvtPath!" >NUL 2>&1

		if !errorlevel! equ 0 (
			reg add "!WinEvtPath!" /v Start /t REG_DWORD /d 0 /f >NUL 2>&1
		)
	)

echo 	Disabling Background App Diagnostic Log
	powershell Disable-AppBackgroundTaskDiagnosticLog >NUL 2>&1

echo 	Disabling Media Player Usage Tracking
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d 0 /f >NUL 2>&1

echo 	Track Only Important Events (Auditpol)
	Auditpol /set /subcategory:"Process Termination" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"RPC Events" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"Filtering Platform Connection" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"DPAPI Activity" /success:disable /failure:disable >NUL 2>&1
	Auditpol /set /subcategory:"IPsec Driver" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"Other System Events" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"Security State Change" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"Security System Extension" /success:disable /failure:enable >NUL 2>&1
	Auditpol /set /subcategory:"System Integrity" /success:disable /failure:enable >NUL 2>&1

echo 	Setting Powershell Policy Unrestricted
	powershell Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Force >NUL 2>&1
	powershell Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force >NUL 2>&1

echo 	Disabling Scheduled Diagnostics
	reg add "HKLM\Software\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f >NUL 2>&1


echo 	Rebooting...
	shutdown /r -t 5 >NUL 2>&1