@echo off
title "ScriptWINg: Kernel Tune"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

bcdedit /set tpmbootentropy ForceEnable 
bcdedit /set useplatformclock no
bcdedit /set x2apicpolicy enable
bcdedit /set hypervisoruselargevtlb yes

echo "    - Enhanced TSC Synchronization Policy"
echo "Avoid using this for older systems which may not be compatible."
set /P c="Type 'Y' to continue, or 'N' to skip: "
if /I "%c%" EQU "N" goto End

bcdedit /set tscsyncpolicy Enhanced

:End
cls
exit /b 0
