@echo off
title "ScriptWINg: Disable STS"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Beginning registry changes"
1>NUL reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\w32time\Config" /v "UtilizeSslTimeData" /t REG_DWORD /d 0 /f

cls
exit /b 0
