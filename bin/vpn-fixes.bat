@echo off
title "ScriptWINg: VPN Fixes"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Beginning registry changes"
1>NUL reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v "AssumeUDPEncapsulationContextOnSendRule" /t REG_DWORD /d 2 /f
1>NUL reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan\Parameters" /v "DisableIKENameEkuCheck" /t REG_DWORD /d 1 /f
1>NUL reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan\Parameters" /v "NegotiateDH2048_AES256" /t REG_DWORD /d 2 /f

cls
exit /b 0
