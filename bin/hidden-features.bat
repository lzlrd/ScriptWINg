@echo off
title "ScriptWINg: Hidden Features"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Beginning hidden config changes"
rem Disk Management in Settings
1>NUL "%~dp0ViVeTool.exe" addconfig 23257398 2
rem Windows 10X Touch Keyboard
1>NUL "%~dp0ViVeTool.exe" addconfig 20438551 2
rem Theme-aware Live Tiles
1>NUL "%~dp0ViVeTool.exe" addconfig 23615618 2
rem Media Controls in Volume Flyout
1>NUL "%~dp0ViVeTool.exe" addconfig 23403403 2
1>NUL "%~dp0ViVeTool.exe" addconfig 23674478 2
rem About Page in Settings
1>NUL "%~dp0ViVeTool.exe" addconfig 25175482 2
rem Theme-aware Splashscreens
1>NUL "%~dp0ViVeTool.exe" addconfig 25936164 2
rem Meet Now Integration
1>NUL "%~dp0ViVeTool.exe" addconfig 28170999 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28582629 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28758888 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28622680 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28622690 2
rem GPU Information in Settings About Page
1>NUL "%~dp0ViVeTool.exe" addconfig 27974039 2
rem Split Layout for Windows 10X
1>NUL "%~dp0ViVeTool.exe" addconfig 23881110 2
rem Profile Header in Settings
1>NUL "%~dp0ViVeTool.exe" addconfig 18299130 2
rem Windows 10X OOBE
1>NUL "%~dp0ViVeTool.exe" addconfig 26336822 2
rem App Archival
1>NUL "%~dp0ViVeTool.exe" addconfig 21206371 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28384772 2
rem Advanced Settings for Colour
1>NUL "%~dp0ViVeTool.exe" addconfig 10834416 2
1>NUL "%~dp0ViVeTool.exe" addconfig 12259052 2
rem New UI for the Battery Settings Page
1>NUL "%~dp0ViVeTool.exe" addconfig 27296756 2
rem New UI for the Touch Keyboard
1>NUL "%~dp0ViVeTool.exe" addconfig 23324166 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30024318 2
1>NUL "%~dp0ViVeTool.exe" addconfig 27154708 2
rem Acrylic Blur on the Input Switcher
1>NUL "%~dp0ViVeTool.exe" addconfig 13140185 2
rem Settings Enhancements and Rejuvenation
1>NUL "%~dp0ViVeTool.exe" addconfig 30206630 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31010280 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30204574 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29449858 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30204206 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31197890 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29643556 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30381770 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29734477 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30580687 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30380766 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30030725 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29896902 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31291312 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29739067 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29029980 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30331247 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30832672 2
1>NUL "%~dp0ViVeTool.exe" addconfig 25977668 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31198568 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31199967 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31401318 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31065128 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30095024 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29241208 2
1>NUL "%~dp0ViVeTool.exe" addconfig 29241309 2
1>NUL "%~dp0ViVeTool.exe" addconfig 25810627 2
rem Acrylic Task View in Timeline
1>NUL "%~dp0ViVeTool.exe" addconfig 12520383 2
rem Device Health Improvements
1>NUL "%~dp0ViVeTool.exe" addconfig 30091733 2
rem Modern Animations for Input View
1>NUL "%~dp0ViVeTool.exe" addconfig 29650567 2
rem TLS 1.3 for EAP
1>NUL "%~dp0ViVeTool.exe" addconfig 31308504 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31308502 2
1>NUL "%~dp0ViVeTool.exe" addconfig 31308506 2
rem New Bluetooh Inbound Pairing UI
1>NUL "%~dp0ViVeTool.exe" addconfig 23402385 2
rem Bluetooth Flyout
1>NUL "%~dp0ViVeTool.exe" addconfig 23673487 2
1>NUL "%~dp0ViVeTool.exe" addconfig 19919111 2
rem Display Sleep Power Settings
1>NUL "%~dp0ViVeTool.exe" addconfig 31026792 2

echo "    - DirectX Performance Enhancements"
echo "If you do not wish to have this feature, please skip this section."
set /P c="Type 'Y' to continue, or 'N' to skip: "
if /I "%c%" EQU "N" goto NoDXPerf

rem Deferred Contexts for D3D11on12
1>NUL "%~dp0ViVeTool.exe" 13815251 2
rem DirectX Core System File Mappings
1>NUL "%~dp0ViVeTool.exe" 22765950 2
rem DXGI Buffer Upgrades
1>NUL "%~dp0ViVeTool.exe" 25957903 2
rem DXGI Windowed Swap Effect Upgrades
1>NUL "%~dp0ViVeTool.exe" 23990563 2

:NoDXPerf
echo "    - Enabling News and Interests"
echo "If you do not wish to have this feature, please skip this section."
set /P c="Type 'Y' to continue, or 'N' to skip: "
if /I "%c%" EQU "N" goto NoNewsFeed

rem News and Interests
1>NUL "%~dp0ViVeTool.exe" addconfig 29947361 2
1>NUL "%~dp0ViVeTool.exe" addconfig 27833282 2
1>NUL "%~dp0ViVeTool.exe" addconfig 27368843 2
1>NUL "%~dp0ViVeTool.exe" addconfig 28247353 2
1>NUL "%~dp0ViVeTool.exe" addconfig 27371092 2
1>NUL "%~dp0ViVeTool.exe" addconfig 27371152 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30803283 2
1>NUL "%~dp0ViVeTool.exe" addconfig 30213886 2

:NoNewsFeed
if "%PROCESSOR_ARCHITECTURE%" == "ARM64" (
	rem AMD64 Emulation for ARM64
	1>NUL "%~dp0ViVeTool.exe" addconfig 24819336 2
	1>NUL "%~dp0ViVeTool.exe" addconfig 29359153 2
	1>NUL "%~dp0ViVeTool.exe" addconfig 30022433 2
	rem Windows Sandbox for ARM64
	1>NUL "%~dp0ViVeTool.exe" addconfig 21979176 2
)

echo "    - Beginning registry changes"
rem Windows 10X Boot Animation
1>NUL reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\BootControl" /v BootProgressAnimation /t REG_DWORD /d "1" /f
rem Windows Rounded UI
1>NUL reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search\Flighting" /v ImmersiveSearch /t REG_DWORD /d "1" /f
1>NUL reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\Override" /v ImmersiveSearchFull /t REG_DWORD /d "1" /f
1>NUL reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\Override" /v CenterScreenRoundedCornerRadius /t REG_DWORD /d "9" /f

cls
exit /b 0
