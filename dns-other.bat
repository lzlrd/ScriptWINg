@echo off
title "ScriptWINg: Clean Desktop"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

echo "    - Beginning changes"
1>NUL netsh dns add global ddr=yes doh=auto dot=yes /f

cls
exit /b 0
